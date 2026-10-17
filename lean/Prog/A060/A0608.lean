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
import Seq.B000.C034
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
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A060800: a(n) = p^2 + p + 1 where p runs through the primes.

The programs for A060800, the canonical program `A060800.P2009094709202359605` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060800 has offset 1).

The definition of A060800 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036690, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A060800.P2009094709202359605

`A036690(n+1)+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A060800

/-- `A036690(n+1)+1` -/
def P2009094709202359605.Spec : Prop :=
  ∀ n, P2009094709202359605.a n = A060800 (n + 1)

theorem P2009094709202359605.correct : P2009094709202359605.Spec := by
  intro n
  simp only [A060800, Nat.add_sub_cancel]

end A060800

/-! ## A060800.P17346409510302440484

`(A030078(n+1)-1)/A006093(n+1)`
-/

namespace A060800.P17346409510302440484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030078 (n + 1) - 1 : ℚ) / (A006093 (n + 1) : ℚ)

end

end A060800.P17346409510302440484

namespace A060800

/-- `(A030078(n+1)-1)/A006093(n+1)` -/
def P17346409510302440484.Spec : Prop :=
  ∀ n, P17346409510302440484.a n = (A060800 (n + 1) : ℚ)

end A060800

/-! ## A060800.P13614072527506257704

`A319597(n+1)+2`
-/

namespace A060800.P13614072527506257704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319597 (n + 1) + 2

end

end A060800.P13614072527506257704

namespace A060800

/-- `A319597(n+1)+2` -/
def P13614072527506257704.Spec : Prop :=
  ∀ n, P13614072527506257704.a n = A060800 (n + 1)

end A060800

/-! ## A060800.P8261992540183367502

`2*A034953(n+1)+1`
-/

namespace A060800.P8261992540183367502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034953 (n + 1) + 1

end

end A060800.P8261992540183367502

namespace A060800

/-- `2*A034953(n+1)+1` -/
def P8261992540183367502.Spec : Prop :=
  ∀ n, P8261992540183367502.a n = A060800 (n + 1)

end A060800

/-! ## A060800.P2805288712814595908

`A367573(n+1)/2+1`
-/

namespace A060800.P2805288712814595908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367573 (n + 1) : ℚ) / 2 + 1

end

end A060800.P2805288712814595908

namespace A060800

/-- `A367573(n+1)/2+1` -/
def P2805288712814595908.Spec : Prop :=
  ∀ n, P2805288712814595908.a n = (A060800 (n + 1) : ℚ)

end A060800

/-! ## A060800.P8990285118772123686

`A066872(n+1)+Δ[A007504(n)]`
-/

namespace A060800.P8990285118772123686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) + (f1 (n + 1) - f1 n)

end

end A060800.P8990285118772123686

namespace A060800

/-- `A066872(n+1)+Δ[A007504(n)]` -/
def P8990285118772123686.Spec : Prop :=
  ∀ n, P8990285118772123686.a n = A060800 (n + 1)

end A060800

/-! ## A060800.P1988041329373498018

`A110833(n+1)-Δ[A007504(n)]`
-/

namespace A060800.P1988041329373498018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110833 (n + 1) - (f1 (n + 1) - f1 n)

end

end A060800.P1988041329373498018

namespace A060800

/-- `A110833(n+1)-Δ[A007504(n)]` -/
def P1988041329373498018.Spec : Prop :=
  ∀ n, P1988041329373498018.a n = A060800 (n + 1)

end A060800

/-! ## A060800.P2842896307693179483

`A005722(n+1)+A001748(n+1)`
-/

namespace A060800.P2842896307693179483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005722 (n + 1) + A001748 (n + 1)

end

end A060800.P2842896307693179483

namespace A060800

/-- `A005722(n+1)+A001748(n+1)` -/
def P2842896307693179483.Spec : Prop :=
  ∀ n, P2842896307693179483.a n = A060800 (n + 1)

end A060800

/-! ## A060800.P1239522809017099553

`A008864(n+1)+A001248(n+1)`
-/

namespace A060800.P1239522809017099553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A001248 (n + 1)

end

end A060800.P1239522809017099553

namespace A060800

/-- `A008864(n+1)+A001248(n+1)` -/
def P1239522809017099553.Spec : Prop :=
  ∀ n, P1239522809017099553.a n = A060800 (n + 1)

end A060800

/-! ## A060800.P2444623760265844390

`A066872(n+1)+A000040(n+1)`
-/

namespace A060800.P2444623760265844390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) + A000040 (n + 1)

end

end A060800.P2444623760265844390

namespace A060800

/-- `A066872(n+1)+A000040(n+1)` -/
def P2444623760265844390.Spec : Prop :=
  ∀ n, P2444623760265844390.a n = A060800 (n + 1)

end A060800

/-! ## A060800.P18333136293229970545

`A061725(n+1)+A006093(n+1)`
-/

namespace A060800.P18333136293229970545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061725 (n + 1) + A006093 (n + 1)

end

end A060800.P18333136293229970545

namespace A060800

/-- `A061725(n+1)+A006093(n+1)` -/
def P18333136293229970545.Spec : Prop :=
  ∀ n, P18333136293229970545.a n = A060800 (n + 1)

end A060800

/-! ## A060800.P1574745395058377921

`A072055(n+1)+A036689(n+1)`
-/

namespace A060800.P1574745395058377921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) + A036689 (n + 1)

end

end A060800.P1574745395058377921

namespace A060800

/-- `A072055(n+1)+A036689(n+1)` -/
def P1574745395058377921.Spec : Prop :=
  ∀ n, P1574745395058377921.a n = A060800 (n + 1)

end A060800

/-! ## A060800.P9023481813339635497

`A084920(n+1)+A052147(n+1)`
-/

namespace A060800.P9023481813339635497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) + A052147 (n + 1)

end

end A060800.P9023481813339635497

namespace A060800

/-- `A084920(n+1)+A052147(n+1)` -/
def P9023481813339635497.Spec : Prop :=
  ∀ n, P9023481813339635497.a n = A060800 (n + 1)

end A060800

/-! ## A060800.P16277479625333664759

`A092949(n+1)+A062235(n+1)`
-/

namespace A060800.P16277479625333664759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1) + A062235 (n + 1)

end

end A060800.P16277479625333664759

namespace A060800

/-- `A092949(n+1)+A062235(n+1)` -/
def P16277479625333664759.Spec : Prop :=
  ∀ n, P16277479625333664759.a n = A060800 (n + 1)

end A060800

/-! ## A060800.P2156267696931022109

`A113935(n+1)+A049001(n+1)`
-/

namespace A060800.P2156267696931022109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) + A049001 (n + 1)

end

end A060800.P2156267696931022109

namespace A060800

/-- `A113935(n+1)+A049001(n+1)` -/
def P2156267696931022109.Spec : Prop :=
  ∀ n, P2156267696931022109.a n = A060800 (n + 1)

end A060800

/-! ## A060800.P9320724152506293278

`A119959(n+1)+A100484(n+1)`
-/

namespace A060800.P9320724152506293278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119959 (n + 1) + A100484 (n + 1)

end

end A060800.P9320724152506293278

namespace A060800

/-- `A119959(n+1)+A100484(n+1)` -/
def P9320724152506293278.Spec : Prop :=
  ∀ n, P9320724152506293278.a n = A060800 (n + 1)

end A060800

/-! ## A060800.P12794468278958030460

`A271511(n+1)+A008837(n+1)`
-/

namespace A060800.P12794468278958030460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271511 (n + 1) + A008837 (n + 1)

end

end A060800.P12794468278958030460

namespace A060800

/-- `A271511(n+1)+A008837(n+1)` -/
def P12794468278958030460.Spec : Prop :=
  ∀ n, P12794468278958030460.a n = A060800 (n + 1)

end A060800

/-! ## A060800.P7422065782537510065

`A175222(n+1)+A166010(n+1)`
-/

namespace A060800.P7422065782537510065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175222 (n + 1) + A166010 (n + 1)

end

end A060800.P7422065782537510065

namespace A060800

/-- `A175222(n+1)+A166010(n+1)` -/
def P7422065782537510065.Spec : Prop :=
  ∀ n, P7422065782537510065.a n = A060800 (n + 1)

end A060800

/-! ## A060800.P833225290983686025

`A306190(n+1)+A089241(n+1)`
-/

namespace A060800.P833225290983686025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306190 (n + 1) + A089241 (n + 1)

end

end A060800.P833225290983686025

namespace A060800

/-- `A306190(n+1)+A089241(n+1)` -/
def P833225290983686025.Spec : Prop :=
  ∀ n, P833225290983686025.a n = A060800 (n + 1)

end A060800

/-! ## A060800.P3372152115759948574

`A110833(n+1)-A000040(n+1)`
-/

namespace A060800.P3372152115759948574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110833 (n + 1) - A000040 (n + 1)

end

end A060800.P3372152115759948574

namespace A060800

/-- `A110833(n+1)-A000040(n+1)` -/
def P3372152115759948574.Spec : Prop :=
  ∀ n, P3372152115759948574.a n = A060800 (n + 1)

end A060800

/-!
# A060801: Invert transform of odd numbers: a(n) = Sum_{k=1..n} (2*k+1)*a(n-k), a(0)=1.

The programs for A060801, the canonical program `A060801.P10041296958221191850` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060801 has offset 0).

The definition of A060801 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060801.P10041296958221191850

`5*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=3, a(2)=14`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060801

/-- `5*a(n-1)-2*a(n-2)` -/
def P10041296958221191850.Spec : Prop :=
  ∀ n, P10041296958221191850.a n = A060801 n

theorem P10041296958221191850.correct : P10041296958221191850.Spec := by
  intro n
  simp only [A060801]

end A060801

/-! ## A060801.P2902806606856231317

`Δ[floor(A147722(n)/2)]`
-/

namespace A060801.P2902806606856231317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A147722 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060801.P2902806606856231317

namespace A060801

/-- `Δ[floor(A147722(n)/2)]` -/
def P2902806606856231317.Spec : Prop :=
  ∀ n, P2902806606856231317.a n = A060801 n

end A060801

/-! ## A060801.P15252837845830569086

`(A204091(n)+A052913(n))/2`
-/

namespace A060801.P15252837845830569086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204091 n + A052913 n : ℚ) / 2

end

end A060801.P15252837845830569086

namespace A060801

/-- `(A204091(n)+A052913(n))/2` -/
def P15252837845830569086.Spec : Prop :=
  ∀ n, P15252837845830569086.a n = (A060801 n : ℚ)

end A060801

/-! ## A060801.P13540107146524579289

`A107839(n)-floor(A052913(n)/2)`
-/

namespace A060801.P13540107146524579289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 n - ⌊(A052913 n : ℚ) / 2⌋

end

end A060801.P13540107146524579289

namespace A060801

/-- `A107839(n)-floor(A052913(n)/2)` -/
def P13540107146524579289.Spec : Prop :=
  ∀ n, P13540107146524579289.a n = A060801 n

end A060801

/-! ## A060801.P6488508918833372682

`Δ[A147722(n)]/A000032(C(2, n+2))`
-/

namespace A060801.P6488508918833372682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147722 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000032 (Nat.choose 2 (n + 2)) : ℚ)

end

end A060801.P6488508918833372682

namespace A060801

/-- `Δ[A147722(n)]/A000032(C(2, n+2))` -/
def P6488508918833372682.Spec : Prop :=
  ∀ n, P6488508918833372682.a n = (A060801 n : ℚ)

end A060801

/-! ## A060801.P1880796316062236795

`Δ[A147722(n)]/A020639(A008574(n))`
-/

namespace A060801.P1880796316062236795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147722 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A020639 (A008574 n).toNat : ℚ)

end

end A060801.P1880796316062236795

namespace A060801

/-- `Δ[A147722(n)]/A020639(A008574(n))` -/
def P1880796316062236795.Spec : Prop :=
  ∀ n, P1880796316062236795.a n = (A060801 n : ℚ)

end A060801

/-! ## A060801.P16515662607171425828

`Δ[A147722(n)]/A020639(A103517(n))`
-/

namespace A060801.P16515662607171425828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147722 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A020639 (A103517 n).toNat : ℚ)

end

end A060801.P16515662607171425828

namespace A060801

/-- `Δ[A147722(n)]/A020639(A103517(n))` -/
def P16515662607171425828.Spec : Prop :=
  ∀ n, P16515662607171425828.a n = (A060801 n : ℚ)

end A060801

/-! ## A060801.P15615350691127603445

`record[A181308(∑[n])]`
-/

namespace A060801.P15615350691127603445
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181308 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060801.P15615350691127603445

namespace A060801

/-- `record[A181308(∑[n])]` -/
def P15615350691127603445.Spec : Prop :=
  ∀ n, P15615350691127603445.a n = A060801 n

end A060801

/-!
# A060802: To weigh from 1 to n, make the heaviest weight as small as possible, under the condition of using fewest pieces of different, single weights; a(n) = weight of the heaviest weight.

The programs for A060802, there is no canonical definition to state claims against.
-/

/-! ## A060802.P679157105691782497

`A004197(A156953(n))+round(sqrt(2*n+1))`
-/

namespace A060802.P679157105691782497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (A156953 n).toNat + SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))

end

end A060802.P679157105691782497

/-! ## A060802.P14172523799957488106

`A193592(A156953(n))+A003056(n)`
-/

namespace A060802.P14172523799957488106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A156953 n).toNat + A003056 n

end

end A060802.P14172523799957488106

/-! ## A060802.P11391076430276667733

`A193592(A156953(n))+A117707(n)`
-/

namespace A060802.P11391076430276667733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A156953 n).toNat + A117707 n

end

end A060802.P11391076430276667733

/-! ## A060802.P16402765243984158611

`A123578(n+1)+A004197(A156953(n))`
-/

namespace A060802.P16402765243984158611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (n + 1) + A004197 (A156953 n).toNat

end

end A060802.P16402765243984158611

/-! ## A060802.P8986600886122697027

`A002024(n+1)+A193592(A156953(n))-1`
-/

namespace A060802.P8986600886122697027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A193592 (A156953 n).toNat - 1)

end

end A060802.P8986600886122697027

/-!
# A060803: a(n) = Sum_{k=0..n} 2^(2^k).

The programs for A060803, there is no canonical definition to state claims against.
-/

/-! ## A060803.P4187980201613914953

`∑[2^2^n]`
-/

namespace A060803.P4187980201613914953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ 2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060803.P4187980201613914953

/-! ## A060803.P9335913318301957177

`∑{d}[2^n, 2^#]`
-/

namespace A060803.P9335913318301957177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), 2 ^ d

end

end A060803.P9335913318301957177

/-! ## A060803.P16390092467096765228

`floor(∑[a(n-1)²])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A060803.P16390092467096765228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060803.P16390092467096765228

/-! ## A060803.P8906586066400022564

`ceil(∑[a(n-1)²])` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A060803.P8906586066400022564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060803.P8906586066400022564

/-! ## A060803.P5422600660780096459

`round(∑[a(n-1)²])` with `a(0)=2`

`round` is left out, it is the identity on integers.
-/

namespace A060803.P5422600660780096459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060803.P5422600660780096459

/-!
# A060805: Numerators of special continued fraction for 2*zeta(3).

The programs for A060805, the canonical program `A060805.P1394850094581464072` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060805 has offset 1).

The definition of A060805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060805.P18377663644692913438

`a(n-2)+a(n-2)/floor(sqrt(a(n-2)))` with `a(0)=2, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A060805.P18377663644692913438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1, 2, 1] fun n a =>
  a (n - 2) + a (n - 2) / (⌊Real.sqrt (a (n - 2) : ℝ)⌋ : ℚ)

end

end A060805.P18377663644692913438

namespace A060805

/-- `a(n-2)+a(n-2)/floor(sqrt(a(n-2)))` -/
def P18377663644692913438.Spec : Prop :=
  ∀ n, P18377663644692913438.a n = (A060805 (n + 1) : ℚ)

end A060805

/-! ## A060805.P14638549438162511118

`A008733(n)+char[1-n²]`
-/

namespace A060805.P14638549438162511118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A060805.P14638549438162511118

namespace A060805

/-- `A008733(n)+char[1-n²]` -/
def P14638549438162511118.Spec : Prop :=
  ∀ n, P14638549438162511118.a n = A060805 (n + 1)

end A060805

/-! ## A060805.P1394850094581464072

`A008642(A014681(abs(1-n)))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060805

/-- `A008642(A014681(abs(1-n)))` -/
def P1394850094581464072.Spec : Prop :=
  ∀ n, P1394850094581464072.a n = A060805 (n + 1)

theorem P1394850094581464072.correct : P1394850094581464072.Spec := by
  intro n
  simp only [A060805, Nat.add_sub_cancel]

end A060805

/-! ## A060805.P10819615520575261914

`A076921(A052938(abs(1-n)))`
-/

namespace A060805.P10819615520575261914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076921 (A052938 |1 - (n : ℤ)|.toNat).toNat

end

end A060805.P10819615520575261914

namespace A060805

/-- `A076921(A052938(abs(1-n)))` -/
def P10819615520575261914.Spec : Prop :=
  ∀ n, P10819615520575261914.a n = A060805 (n + 1)

end A060805

/-! ## A060805.P675234652328638651

`A019590(n+1)+A008733(n)`
-/

namespace A060805.P675234652328638651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) + A008733 n

end

end A060805.P675234652328638651

namespace A060805

/-- `A019590(n+1)+A008733(n)` -/
def P675234652328638651.Spec : Prop :=
  ∀ n, P675234652328638651.a n = A060805 (n + 1)

end A060805

/-! ## A060805.P14132010289623201660

`A000007(n)+A008733(n)+A000007(A008733(n))`
-/

namespace A060805.P14132010289623201660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A008733 n + A000007 (A008733 n).toNat)

end

end A060805.P14132010289623201660

namespace A060805

/-- `A000007(n)+A008733(n)+A000007(A008733(n))` -/
def P14132010289623201660.Spec : Prop :=
  ∀ n, P14132010289623201660.a n = A060805 (n + 1)

end A060805

/-! ## A060805.P5099440999359086254

`A002265((A028242(n)+1)²)+char[A272380(n)]`
-/

namespace A060805.P5099440999359086254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272380 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ((A028242 n + 1) ^ 2).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A060805.P5099440999359086254

namespace A060805

/-- `A002265((A028242(n)+1)²)+char[A272380(n)]` -/
def P5099440999359086254.Spec : Prop :=
  ∀ n, P5099440999359086254.a n = A060805 (n + 1)

end A060805

/-!
# A060806: Denominators of special continued fraction for 2*zeta(3).

The programs for A060806, the canonical program `A060806.P14650607044815625078` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060806 has offset 1).

The definition of A060806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060806.P15591187375463670094

`∑[3-2^and(2, n)]`
-/

namespace A060806.P15591187375463670094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (2 ^ Nat.land 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060806.P15591187375463670094

namespace A060806

/-- `∑[3-2^and(2, n)]` -/
def P15591187375463670094.Spec : Prop :=
  ∀ n, P15591187375463670094.a n = A060806 (n + 1)

end A060806

/-! ## A060806.P14650607044815625078

`∑[3-and(2, n)!²]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060806

/-- `∑[3-and(2, n)!²]` -/
def P14650607044815625078.Spec : Prop :=
  ∀ n, P14650607044815625078.a n = A060806 (n + 1)

theorem P14650607044815625078.correct : P14650607044815625078.Spec := by
  intro n
  simp only [A060806, Nat.add_sub_cancel]

end A060806

/-! ## A060806.P1329750764344580456

`∑[1-a(n-2)]` with `a(0)=2, a(1)=2`
-/

namespace A060806.P1329750764344580456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  1 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060806.P1329750764344580456

namespace A060806

/-- `∑[1-a(n-2)]` -/
def P1329750764344580456.Spec : Prop :=
  ∀ n, P1329750764344580456.a n = A060806 (n + 1)

end A060806

/-! ## A060806.P15600318975562231288

`∑[gcd(2, C(n, 2))²-2]`
-/

namespace A060806.P15600318975562231288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (Nat.choose n 2) ^ 2 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060806.P15600318975562231288

namespace A060806

/-- `∑[gcd(2, C(n, 2))²-2]` -/
def P15600318975562231288.Spec : Prop :=
  ∀ n, P15600318975562231288.a n = A060806 (n + 1)

end A060806

/-! ## A060806.P2916596837282635462

`∑[2-floor(ϕ*and(2, n))]`
-/

namespace A060806.P2916596837282635462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌊Real.goldenRatio * (Nat.land 2 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060806.P2916596837282635462

namespace A060806

/-- `∑[2-floor(ϕ*and(2, n))]` -/
def P2916596837282635462.Spec : Prop :=
  ∀ n, P2916596837282635462.a n = A060806 (n + 1)

end A060806

/-! ## A060806.P14396526669346599584

`a(n-4)+2` with `a(0)=2, a(1)=4, a(2)=3, a(3)=2`
-/

namespace A060806.P14396526669346599584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 3, 2] fun n a =>
  a (n - 4) + 2

end

end A060806.P14396526669346599584

namespace A060806

/-- `a(n-4)+2` -/
def P14396526669346599584.Spec : Prop :=
  ∀ n, (P14396526669346599584.a n : ℤ) = A060806 (n + 1)

end A060806

/-! ## A060806.P17395731305981996478

`3-(a(n-2)-n)` with `a(0)=2, a(1)=4`
-/

namespace A060806.P17395731305981996478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  3 - (a (n - 2) - (n : ℤ))

end

end A060806.P17395731305981996478

namespace A060806

/-- `3-(a(n-2)-n)` -/
def P17395731305981996478.Spec : Prop :=
  ∀ n, P17395731305981996478.a n = A060806 (n + 1)

end A060806

/-! ## A060806.P9738780825165133884

`∑[floor(1/(and(2, n+2)-ϕ))]`
-/

namespace A060806.P9738780825165133884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / ((Nat.land 2 (n + 2) : ℝ) - Real.goldenRatio)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060806.P9738780825165133884

namespace A060806

/-- `∑[floor(1/(and(2, n+2)-ϕ))]` -/
def P9738780825165133884.Spec : Prop :=
  ∀ n, P9738780825165133884.a n = A060806 (n + 1)

end A060806

/-! ## A060806.P10842558258867337985

`∑[∑[∑[3*(-1)^∑[n]]]-1]`
-/

namespace A060806.P10842558258867337985
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (-1) ^ (∑ j ∈ Finset.range (n + 1), f4 j)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060806.P10842558258867337985

namespace A060806

/-- `∑[∑[∑[3*(-1)^∑[n]]]-1]` -/
def P10842558258867337985.Spec : Prop :=
  ∀ n, P10842558258867337985.a n = A060806 (n + 1)

end A060806

/-! ## A060806.P16407407746521362722

`2-A215415(n)+n`
-/

namespace A060806.P16407407746521362722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A215415 n + (n : ℤ)

end

end A060806.P16407407746521362722

namespace A060806

/-- `2-A215415(n)+n` -/
def P16407407746521362722.Spec : Prop :=
  ∀ n, P16407407746521362722.a n = A060806 (n + 1)

end A060806

/-! ## A060806.P9528218616963508153

`A016789(A004525(n))-n`
-/

namespace A060806.P9528218616963508153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A004525 n).toNat - (n : ℤ)

end

end A060806.P9528218616963508153

namespace A060806

/-- `A016789(A004525(n))-n` -/
def P9528218616963508153.Spec : Prop :=
  ∀ n, P9528218616963508153.a n = A060806 (n + 1)

end A060806

/-! ## A060806.P12006374898289884890

`A263449(n)+1-A004525(n)`
-/

namespace A060806.P12006374898289884890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263449 n + (1 - A004525 n)

end

end A060806.P12006374898289884890

namespace A060806

/-- `A263449(n)+1-A004525(n)` -/
def P12006374898289884890.Spec : Prop :=
  ∀ n, P12006374898289884890.a n = A060806 (n + 1)

end A060806

/-! ## A060806.P10609438605536601509

`A159966(n)+2-A004525(n)`
-/

namespace A060806.P10609438605536601509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 n + (2 - A004525 n)

end

end A060806.P10609438605536601509

namespace A060806

/-- `A159966(n)+2-A004525(n)` -/
def P10609438605536601509.Spec : Prop :=
  ∀ n, P10609438605536601509.a n = A060806 (n + 1)

end A060806

/-! ## A060806.P13383607325096513850

`A138191(n+1)+A121496(n+1)`
-/

namespace A060806.P13383607325096513850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138191 (n + 1) + A121496 (n + 1)

end

end A060806.P13383607325096513850

namespace A060806

/-- `A138191(n+1)+A121496(n+1)` -/
def P13383607325096513850.Spec : Prop :=
  ∀ n, P13383607325096513850.a n = A060806 (n + 1)

end A060806

/-! ## A060806.P3948423155934865989

`A047578(n+1)-A047273(n+1)`
-/

namespace A060806.P3948423155934865989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047578 (n + 1) - A047273 (n + 1)

end

end A060806.P3948423155934865989

namespace A060806

/-- `A047578(n+1)-A047273(n+1)` -/
def P3948423155934865989.Spec : Prop :=
  ∀ n, P3948423155934865989.a n = A060806 (n + 1)

end A060806

/-! ## A060806.P17033255715157372468

`abs(∑[A134430(n+1)])`
-/

namespace A060806.P17033255715157372468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A060806.P17033255715157372468

namespace A060806

/-- `abs(∑[A134430(n+1)])` -/
def P17033255715157372468.Spec : Prop :=
  ∀ n, P17033255715157372468.a n = A060806 (n + 1)

end A060806

/-! ## A060806.P1137874094073539588

`A110657(n+1)+A030451(A030451(n+1))`
-/

namespace A060806.P1137874094073539588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (n + 1) + A030451 (A030451 (n + 1)).toNat

end

end A060806.P1137874094073539588

namespace A060806

/-- `A110657(n+1)+A030451(A030451(n+1))` -/
def P1137874094073539588.Spec : Prop :=
  ∀ n, P1137874094073539588.a n = A060806 (n + 1)

end A060806

/-! ## A060806.P11737295235970947633

`A028242(n+1)+A271324(n+1)-A271324(n)`
-/

namespace A060806.P11737295235970947633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (n + 1) + (A271324 (n + 1) - A271324 n)

end

end A060806.P11737295235970947633

namespace A060806

/-- `A028242(n+1)+A271324(n+1)-A271324(n)` -/
def P11737295235970947633.Spec : Prop :=
  ∀ n, P11737295235970947633.a n = A060806 (n + 1)

end A060806

/-!
# A060807: Numerators of ordinary continued fraction convergents for 2*zeta(3).

The programs for A060807, there is no canonical definition to state claims against.
-/

/-! ## A060807.P16965433487054866973

`filter[A094717(n), A193496(#)]`
-/

namespace A060807.P16965433487054866973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A193496 (f1 j).toNat = 1) n)

end

end A060807.P16965433487054866973

/-!
# A060808: Denominators of ordinary continued fraction convergents for 2*zeta(3).

The programs for A060808, there is no canonical definition to state claims against.
-/

/-! ## A060808.P6126017002416161542

`A165675(A026756(n))`
-/

namespace A060808.P6126017002416161542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165675 (A026756 n).toNat

end

end A060808.P6126017002416161542

/-!
# A060810: Numbers whose squares have their digits in strictly increasing order.

The programs for A060810, there is no canonical definition to state claims against.
-/

/-! ## A060810.P1673010077083388690

`sqrt(A122683(n+1))`
-/

namespace A060810.P1673010077083388690
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A122683 (n + 1) : ℝ)

end

end A060810.P1673010077083388690

/-! ## A060810.P7651057411453926210

`A122683(n+1)^(A060576(n)/2)`
-/

namespace A060810.P7651057411453926210
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A122683 (n + 1) : ℝ) ^ ((A060576 n : ℚ) / 2 : ℝ)

end

end A060810.P7651057411453926210

/-! ## A060810.P11765084600539952241

`∩[A028819(n+1), A050741(n+1)]`
-/

namespace A060810.P11765084600539952241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060810.P11765084600539952241

/-! ## A060810.P8483945866130556572

`∩[A028819(n+1), A052061(n+1)]`
-/

namespace A060810.P8483945866130556572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060810.P8483945866130556572

/-! ## A060810.P728847256421470465

`A122683(n+1)^(A000027(n+1)/(2*(n+1)))`
-/

namespace A060810.P728847256421470465
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A122683 (n + 1) : ℝ) ^ ((A000027 (n + 1) : ℚ) / (2 * (n + 1) : ℚ) : ℝ)

end

end A060810.P728847256421470465

/-!
# A060811: Numbers whose square has a majority of one digit.

The programs for A060811, there is no canonical definition to state claims against.
-/

/-! ## A060811.P8461778202187359439

`sqrt(A182020(n+1))`
-/

namespace A060811.P8461778202187359439
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A182020 (n + 1) : ℝ)

end

end A060811.P8461778202187359439

/-! ## A060811.P16144313827448727823

`A182020(n+1)^((n+1)/A005843(n+1))`
-/

namespace A060811.P16144313827448727823
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A182020 (n + 1) : ℝ) ^ ((n + 1 : ℚ) / (A005843 (n + 1) : ℚ) : ℝ)

end

end A060811.P16144313827448727823

/-! ## A060811.P4314278979605328756

`A182020(n+1)^(1/A040001(A005843(n)))`
-/

namespace A060811.P4314278979605328756
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A182020 (n + 1) : ℝ) ^ (1 / (A040001 (A005843 n).toNat : ℚ) : ℝ)

end

end A060811.P4314278979605328756

/-! ## A060811.P5036256141546183119

`A182020(n+1)^2^A008683(A046389(n+1))`
-/

namespace A060811.P5036256141546183119
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A182020 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A008683 (A046389 (n + 1)).toNat : ℤ) : ℝ)

end

end A060811.P5036256141546183119

/-! ## A060811.P8700464331276542346

`A182020(n+1)^(A003415(A000040(n+1))/2)`
-/

namespace A060811.P8700464331276542346
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A182020 (n + 1) : ℝ) ^ ((A003415 (A000040 (n + 1)).toNat : ℚ) / 2 : ℝ)

end

end A060811.P8700464331276542346

/-!
# A060812: Numbers whose square has a majority of one digit and does not end in 0.

The programs for A060812, there is no canonical definition to state claims against.
-/

/-! ## A060812.P2804994960459624896

`∩[A060811(n+1), A067251(n+1)]`
-/

namespace A060812.P2804994960459624896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060812.P2804994960459624896

/-! ## A060812.P12101214587189250049

`record[A004151(A060811(n+2))]`
-/

namespace A060812.P12101214587189250049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A060811 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060812.P12101214587189250049

/-! ## A060812.P9233463404300116478

`filter[A060811(n+1), A168184(#)]`
-/

namespace A060812.P9233463404300116478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A060812.P9233463404300116478

/-! ## A060812.P18134739926124353950

`∩[A060811(n+1), A277061(n+1)]`
-/

namespace A060812.P18134739926124353950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060812.P18134739926124353950

/-! ## A060812.P14926351318116096832

`A016070(n+4)%A007749(A331788(n+1))`
-/

namespace A060812.P14926351318116096832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016070 (n + 4)) (A007749 (A331788 (n + 1)).toNat)

end

end A060812.P14926351318116096832

/-!
# A060814: Numbers whose cubes contain more than half the same digit and do not end in 0.

The programs for A060814, there is no canonical definition to state claims against.
-/

/-! ## A060814.P8185867574551710834

`∑[A272904(n^3+1-n)]`
-/

namespace A060814.P8185867574551710834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272904 ((n ^ 3 : ℤ) + (1 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060814.P8185867574551710834

/-!
# A060815: Powers of 2 with each digit a power of 2 (only digits 0,1,2,4,8 are used).

The programs for A060815, there is no canonical definition to state claims against.
-/

/-! ## A060815.P2283749520359815405

`2^eq[1, xor(6, n)%(n+1)]`
-/

namespace A060815.P2283749520359815405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 n % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060815.P2283749520359815405

/-!
# A060816: a(0) = 1; a(n) = (5*3^(n-1) - 1)/2 for n > 0.

The programs for A060816, the canonical program `A060816.P7165518551279609164` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060816 has offset 0).

The definition of A060816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060816.P7165518551279609164

`3*a(n-1)+1` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060816

/-- `3*a(n-1)+1` -/
def P7165518551279609164.Spec : Prop :=
  ∀ n, (P7165518551279609164.a n : ℤ) = A060816 n

theorem P7165518551279609164.correct : P7165518551279609164.Spec := by
  intro n
  simp only [A060816]

end A060816

/-! ## A060816.P16722675224292319740

`a(n-1)+A005030(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A060816.P16722675224292319740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + A005030 (n - 2)

end

end A060816.P16722675224292319740

namespace A060816

/-- `a(n-1)+A005030(n-2)` -/
def P16722675224292319740.Spec : Prop :=
  ∀ n, P16722675224292319740.a n = A060816 n

end A060816

/-! ## A060816.P7306324610028373611

`A017209(a(n-2))` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A060816.P7306324610028373611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  A017209 (a (n - 2)).toNat

end

end A060816.P7306324610028373611

namespace A060816

/-- `A017209(a(n-2))` -/
def P7306324610028373611.Spec : Prop :=
  ∀ n, P7306324610028373611.a n = A060816 n

end A060816

/-! ## A060816.P17633329882580703371

`round(∑[5*3^(n-2)])`
-/

namespace A060816.P17633329882580703371
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060816.P17633329882580703371

namespace A060816

/-- `round(∑[5*3^(n-2)])` -/
def P17633329882580703371.Spec : Prop :=
  ∀ n, P17633329882580703371.a n = A060816 n

end A060816

/-! ## A060816.P3708478662372644515

`lcm(3, a(n-1))+1` with `a(0)=1, a(1)=2`
-/

namespace A060816.P3708478662372644515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lcm 3 (a (n - 1)) + 1

end

end A060816.P3708478662372644515

namespace A060816

/-- `lcm(3, a(n-1))+1` -/
def P3708478662372644515.Spec : Prop :=
  ∀ n, (P3708478662372644515.a n : ℤ) = A060816 n

end A060816

/-! ## A060816.P8508398403712223836

`∑[3*a(n-1)]` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A060816.P8508398403712223836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 5] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060816.P8508398403712223836

namespace A060816

/-- `∑[3*a(n-1)]` -/
def P8508398403712223836.Spec : Prop :=
  ∀ n, (P8508398403712223836.a n : ℤ) = A060816 n

end A060816

/-! ## A060816.P7600116819318880979

`or(2, 3*a(n-1)-1)` with `a(0)=1`
-/

namespace A060816.P7600116819318880979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 2 (3 * a (n - 1) - 1)

end

end A060816.P7600116819318880979

namespace A060816

/-- `or(2, 3*a(n-1)-1)` -/
def P7600116819318880979.Spec : Prop :=
  ∀ n, P7600116819318880979.a n = A060816 n

end A060816

/-! ## A060816.P1580499292523733435

`4-3*(1-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A060816.P1580499292523733435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 - 3 * (1 - a (n - 1))

end

end A060816.P1580499292523733435

namespace A060816

/-- `4-3*(1-a(n-1))` -/
def P1580499292523733435.Spec : Prop :=
  ∀ n, P1580499292523733435.a n = A060816 n

end A060816

/-! ## A060816.P16179120099550016675

`a(n-1)/(1-2/3)+1` with `a(0)=1, a(1)=2`
-/

namespace A060816.P16179120099550016675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) / (1 - (2 : ℚ) / 3) + 1

end

end A060816.P16179120099550016675

namespace A060816

/-- `a(n-1)/(1-2/3)+1` -/
def P16179120099550016675.Spec : Prop :=
  ∀ n, P16179120099550016675.a n = (A060816 n : ℚ)

end A060816

/-! ## A060816.P6766932010842999619

`1-a(n-1)/(2/3-1)` with `a(0)=1, a(1)=2`
-/

namespace A060816.P6766932010842999619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - a (n - 1) / ((2 : ℚ) / 3 - 1)

end

end A060816.P6766932010842999619

namespace A060816

/-- `1-a(n-1)/(2/3-1)` -/
def P6766932010842999619.Spec : Prop :=
  ∀ n, P6766932010842999619.a n = (A060816 n : ℚ)

end A060816

/-! ## A060816.P1588115415765943370

`a(n-1)+a(n-1)+a(n-1)+1` with `a(0)=1, a(1)=2`
-/

namespace A060816.P1588115415765943370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + 1))

end

end A060816.P1588115415765943370

namespace A060816

/-- `a(n-1)+a(n-1)+a(n-1)+1` -/
def P1588115415765943370.Spec : Prop :=
  ∀ n, (P1588115415765943370.a n : ℤ) = A060816 n

theorem P1588115415765943370.correct : P1588115415765943370.Spec := by
  intro n
  simp only [A060816, Nat.add_sub_cancel, A060816.P1588115415765943370.a, A060816.P7165518551279609164.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A060816

/-! ## A060816.P2523260688426042681

`2-floor(1-a(n-1)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A060816.P2523260688426042681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 - (1 - a (n - 1) - a (n - 1) - a (n - 1))

end

end A060816.P2523260688426042681

namespace A060816

/-- `2-floor(1-a(n-1)-a(n-1)-a(n-1))` -/
def P2523260688426042681.Spec : Prop :=
  ∀ n, P2523260688426042681.a n = A060816 n

end A060816

/-! ## A060816.P17143261491647402055

`A120463(2*n)+1`
-/

namespace A060816.P17143261491647402055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120463 (2 * n) + 1

end

end A060816.P17143261491647402055

namespace A060816

/-- `A120463(2*n)+1` -/
def P17143261491647402055.Spec : Prop :=
  ∀ n, P17143261491647402055.a n = A060816 n

end A060816

/-! ## A060816.P7998165245320663016

`A198645(n-2)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A060816.P7998165245320663016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A198645 (n - 2) - a (n - 1)

end

end A060816.P7998165245320663016

namespace A060816

/-- `A198645(n-2)-a(n-1)` -/
def P7998165245320663016.Spec : Prop :=
  ∀ n, P7998165245320663016.a n = A060816 n

end A060816

/-! ## A060816.P2505820526303553012

`A181655(A004273(n))`
-/

namespace A060816.P2505820526303553012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181655 (A004273 n).toNat

end

end A060816.P2505820526303553012

namespace A060816

/-- `A181655(A004273(n))` -/
def P2505820526303553012.Spec : Prop :=
  ∀ n, P2505820526303553012.a n = A060816 n

end A060816

/-! ## A060816.P18442789291052116429

`A133494(n)+A003462(n)`
-/

namespace A060816.P18442789291052116429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n + A003462 n

end

end A060816.P18442789291052116429

namespace A060816

/-- `A133494(n)+A003462(n)` -/
def P18442789291052116429.Spec : Prop :=
  ∀ n, P18442789291052116429.a n = A060816 n

end A060816

/-! ## A060816.P2493921527206961054

`A261547(n)+A140429(n)`
-/

namespace A060816.P2493921527206961054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261547 n + A140429 n

end

end A060816.P2493921527206961054

namespace A060816

/-- `A261547(n)+A140429(n)` -/
def P2493921527206961054.Spec : Prop :=
  ∀ n, P2493921527206961054.a n = A060816 n

end A060816

/-! ## A060816.P17034188810725898793

`A083313(n)-A000392(n)`
-/

namespace A060816.P17034188810725898793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083313 n - A000392 n

end

end A060816.P17034188810725898793

namespace A060816

/-- `A083313(n)-A000392(n)` -/
def P17034188810725898793.Spec : Prop :=
  ∀ n, P17034188810725898793.a n = A060816 n

end A060816

/-!
# A060817: Size of the automorphism group of the alternating group A_n.

The programs for A060817, there is no canonical definition to state claims against.
-/

/-! ## A060817.P10721119973404596903

`and(-5, A060249(n+1))`
-/

namespace A060817.P10721119973404596903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A060249 (n + 1))

end

end A060817.P10721119973404596903

/-! ## A060817.P5346067153609459048

`gcd(A060249(n+1), A326938(A057340(n+1)))`
-/

namespace A060817.P5346067153609459048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060249 (n + 1)) (A326938 (A057340 (n + 1)).toNat)

end

end A060817.P5346067153609459048

/-! ## A060817.P9117590329846176385

`A060249(n+1)%A071099(Δ[A007504(n)])`
-/

namespace A060817.P9117590329846176385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060249 (n + 1)) (A071099 (f1 (n + 1) - f1 n).toNat)

end

end A060817.P9117590329846176385

/-! ## A060817.P13499458922122938356

`A060249(n+1)%Δ[A307661(n)]`
-/

namespace A060817.P13499458922122938356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060249 (n + 1)) (f1 (n + 1) - f1 n)

end

end A060817.P13499458922122938356

/-! ## A060817.P16189864976425022177

`A060249(n+1)/A178764(A330109(3*n+2))`
-/

namespace A060817.P16189864976425022177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060249 (n + 1) : ℚ) / (A178764 (A330109 (3 * n + 2)).toNat : ℚ)

end

end A060817.P16189864976425022177

/-!
# A060818: a(n) = 2^(n - HammingWeight(n)) = 2^(n - BitCount(n)) = 2^(n - A000120(n)).

The programs for A060818, the canonical program `A060818.P15252789731358603356` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060818 has offset 0).

The definition of A060818 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060818.P15252789731358603356

`2^A011371(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060818

/-- `2^A011371(n)` -/
def P15252789731358603356.Spec : Prop :=
  ∀ n, P15252789731358603356.a n = (A060818 n : ℚ)

end A060818

/-! ## A060818.P15152462292876898180

`2^(n-A000120(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A060818.P15152462292876898180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A000120 n : ℤ)

end

end A060818.P15152462292876898180

namespace A060818

/-- `2^(n-A000120(n))` -/
def P15152462292876898180.Spec : Prop :=
  ∀ n, P15152462292876898180.a n = (A060818 n : ℚ)

end A060818

/-! ## A060818.P15680886668473012709

`n!*A063079(n+1)/A334907(n)`
-/

namespace A060818.P15680886668473012709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * A063079 (n + 1) : ℚ) / (A334907 n : ℚ)

end

end A060818.P15680886668473012709

namespace A060818

/-- `n!*A063079(n+1)/A334907(n)` -/
def P15680886668473012709.Spec : Prop :=
  ∀ n, P15680886668473012709.a n = (A060818 n : ℚ)

end A060818

/-! ## A060818.P6850477044139514623

`2^∑[∑{e}[and(n, -n), #]]`
-/

namespace A060818.P6850477044139514623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060818.P6850477044139514623

namespace A060818

/-- `2^∑[∑{e}[and(n, -n), #]]` -/
def P6850477044139514623.Spec : Prop :=
  ∀ n, (P6850477044139514623.a n : ℤ) = A060818 n

end A060818

/-! ## A060818.P12802639489585746877

`2^∑[∑{e}[or(n, -n), #]]`
-/

namespace A060818.P12802639489585746877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060818.P12802639489585746877

namespace A060818

/-- `2^∑[∑{e}[or(n, -n), #]]` -/
def P12802639489585746877.Spec : Prop :=
  ∀ n, (P12802639489585746877.a n : ℤ) = A060818 n

end A060818

/-! ## A060818.P8338624109958469500

`and(n, -n)*a(n-1)` with `a(0)=1`
-/

namespace A060818.P8338624109958469500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (n : ℤ) (-(n : ℤ)) * a (n - 1)

end

end A060818.P8338624109958469500

namespace A060818

/-- `and(n, -n)*a(n-1)` -/
def P8338624109958469500.Spec : Prop :=
  ∀ n, P8338624109958469500.a n = A060818 n

end A060818

/-! ## A060818.P10473354521797486422

`2^val(n, 2)*a(n-1)` with `a(0)=1`
-/

namespace A060818.P10473354521797486422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 ^ SequenceMachineLib.valuation n 2 * a (n - 1)

end

end A060818.P10473354521797486422

namespace A060818

/-- `2^val(n, 2)*a(n-1)` -/
def P10473354521797486422.Spec : Prop :=
  ∀ n, (P10473354521797486422.a n : ℤ) = A060818 n

end A060818

/-! ## A060818.P6205097882692494758

`abs(or(n, -n))*a(n-1)` with `a(0)=1`
-/

namespace A060818.P6205097882692494758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |Int.lor (n : ℤ) (-(n : ℤ))| * a (n - 1)

end

end A060818.P6205097882692494758

namespace A060818

/-- `abs(or(n, -n))*a(n-1)` -/
def P6205097882692494758.Spec : Prop :=
  ∀ n, P6205097882692494758.a n = A060818 n

end A060818

/-! ## A060818.P7141801457923387468

`-or(n, -n)*a(n-1)` with `a(0)=1`
-/

namespace A060818.P7141801457923387468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -(Int.lor (n : ℤ) (-(n : ℤ)) * a (n - 1))

end

end A060818.P7141801457923387468

namespace A060818

/-- `-or(n, -n)*a(n-1)` -/
def P7141801457923387468.Spec : Prop :=
  ∀ n, P7141801457923387468.a n = A060818 n

end A060818

/-! ## A060818.P12246971619363593478

`(n-and(n, n-1))*a(n-1)` with `a(0)=1`
-/

namespace A060818.P12246971619363593478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - Int.land (n : ℤ) ((n : ℤ) - 1)) * a (n - 1)

end

end A060818.P12246971619363593478

namespace A060818

/-- `(n-and(n, n-1))*a(n-1)` -/
def P12246971619363593478.Spec : Prop :=
  ∀ n, P12246971619363593478.a n = A060818 n

end A060818

/-! ## A060818.P9240855072397983780

`gcd(n, 2*a(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A060818.P9240855072397983780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd n (2 * a (n - 1)) * a (n - 1)

end

end A060818.P9240855072397983780

namespace A060818

/-- `gcd(n, 2*a(n-1))*a(n-1)` -/
def P9240855072397983780.Spec : Prop :=
  ∀ n, (P9240855072397983780.a n : ℤ) = A060818 n

end A060818

/-! ## A060818.P1876807377032061583

`(or(n, n-1)-(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A060818.P1876807377032061583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lor (n : ℤ) ((n : ℤ) - 1) - ((n : ℤ) - 1)) * a (n - 1)

end

end A060818.P1876807377032061583

namespace A060818

/-- `(or(n, n-1)-(n-1))*a(n-1)` -/
def P1876807377032061583.Spec : Prop :=
  ∀ n, P1876807377032061583.a n = A060818 n

end A060818

/-! ## A060818.P5007439585173214590

`A004731(or(1, n))`
-/

namespace A060818.P5007439585173214590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (Nat.lor 1 n)

end

end A060818.P5007439585173214590

namespace A060818

/-- `A004731(or(1, n))` -/
def P5007439585173214590.Spec : Prop :=
  ∀ n, P5007439585173214590.a n = A060818 n

end A060818

/-! ## A060818.P996882452573398696

`A240988(or(1, n))`
-/

namespace A060818.P996882452573398696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240988 (Nat.lor 1 n)

end

end A060818.P996882452573398696

namespace A060818

/-- `A240988(or(1, n))` -/
def P996882452573398696.Spec : Prop :=
  ∀ n, P996882452573398696.a n = A060818 n

end A060818

/-! ## A060818.P9731507104229656399

`A380910(or(1, n))`
-/

namespace A060818.P9731507104229656399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380910 (Nat.lor 1 n)

end

end A060818.P9731507104229656399

namespace A060818

/-- `A380910(or(1, n))` -/
def P9731507104229656399.Spec : Prop :=
  ∀ n, P9731507104229656399.a n = A060818 n

end A060818

/-! ## A060818.P4805998922799663435

`A046161(floor(n/2))`
-/

namespace A060818.P4805998922799663435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 ⌊(n : ℚ) / 2⌋.toNat

end

end A060818.P4805998922799663435

namespace A060818

/-- `A046161(floor(n/2))` -/
def P4805998922799663435.Spec : Prop :=
  ∀ n, P4805998922799663435.a n = A060818 n

end A060818

/-! ## A060818.P671926040483130447

`A086117(n+1)/2`
-/

namespace A060818.P671926040483130447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086117 (n + 1) : ℚ) / 2

end

end A060818.P671926040483130447

namespace A060818

/-- `A086117(n+1)/2` -/
def P671926040483130447.Spec : Prop :=
  ∀ n, P671926040483130447.a n = (A060818 n : ℚ)

end A060818

/-! ## A060818.P10040121327462672879

`2^A397779(3*n)`
-/

namespace A060818.P10040121327462672879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A397779 (3 * n) : ℤ)

end

end A060818.P10040121327462672879

namespace A060818

/-- `2^A397779(3*n)` -/
def P10040121327462672879.Spec : Prop :=
  ∀ n, P10040121327462672879.a n = (A060818 n : ℚ)

end A060818

/-! ## A060818.P14471581825392337654

`A004730(or(1, n)-1)`
-/

namespace A060818.P14471581825392337654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 (Nat.lor 1 n - 1)

end

end A060818.P14471581825392337654

namespace A060818

/-- `A004730(or(1, n)-1)` -/
def P14471581825392337654.Spec : Prop :=
  ∀ n, P14471581825392337654.a n = A060818 n

end A060818

/-! ## A060818.P16946269251784210402

`A036069(or(1, n))/2`
-/

namespace A060818.P16946269251784210402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036069 (Nat.lor 1 n) : ℚ) / 2

end

end A060818.P16946269251784210402

namespace A060818

/-- `A036069(or(1, n))/2` -/
def P16946269251784210402.Spec : Prop :=
  ∀ n, P16946269251784210402.a n = (A060818 n : ℚ)

end A060818

/-!
# A060819: a(n) = n / gcd(n,4).

The programs for A060819, the canonical program `A060819.P9786283173425360720` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060819 has offset 1).

The definition of A060819 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060819.P9786283173425360720

`2*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=1, a(4)=5, a(5)=3, a(6)=7, a(7)=2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060819

/-- `2*a(n-4)-a(n-8)` -/
def P9786283173425360720.Spec : Prop :=
  ∀ n, P9786283173425360720.a n = A060819 (n + 1)

theorem P9786283173425360720.correct : P9786283173425360720.Spec := by
  intro n
  simp only [A060819, Nat.add_sub_cancel]

end A060819

/-! ## A060819.P2390921173355396801

`lcm(4, n+1)/4`
-/

namespace A060819.P2390921173355396801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) : ℚ) / 4

end

end A060819.P2390921173355396801

namespace A060819

/-- `lcm(4, n+1)/4` -/
def P2390921173355396801.Spec : Prop :=
  ∀ n, P2390921173355396801.a n = (A060819 (n + 1) : ℚ)

end A060819

/-! ## A060819.P2589918229342101865

`(n+1)/gcd(4, n+1)`
-/

namespace A060819.P2589918229342101865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.gcd 4 (n + 1) : ℚ)

end

end A060819.P2589918229342101865

namespace A060819

/-- `(n+1)/gcd(4, n+1)` -/
def P2589918229342101865.Spec : Prop :=
  ∀ n, P2589918229342101865.a n = (A060819 (n + 1) : ℚ)

end A060819

/-! ## A060819.P6675912298816086202

`(n+1)/((n^3)%4+1)`
-/

namespace A060819.P6675912298816086202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n ^ 3 % 4 + 1 : ℕ) : ℚ)

end

end A060819.P6675912298816086202

namespace A060819

/-- `(n+1)/((n^3)%4+1)` -/
def P6675912298816086202.Spec : Prop :=
  ∀ n, P6675912298816086202.a n = (A060819 (n + 1) : ℚ)

end A060819

/-! ## A060819.P8721610784902283090

`(n+1)/∑[3/a(n-2)]` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A060819.P8721610784902283090
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, -1] fun n f1 =>
  3 / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060819.P8721610784902283090

namespace A060819

/-- `(n+1)/∑[3/a(n-2)]` -/
def P8721610784902283090.Spec : Prop :=
  ∀ n, P8721610784902283090.a n = (A060819 (n + 1) : ℚ)

end A060819

/-! ## A060819.P1481471364130454038

`(n+1)/and(2*n+1, n+1-and(n-1, n-2))`
-/

namespace A060819.P1481471364130454038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (2 * n + 1 : ℤ) ((n + 1 : ℤ) - Int.land ((n : ℤ) - 1) ((n : ℤ) - 2)) : ℚ)

end

end A060819.P1481471364130454038

namespace A060819

/-- `(n+1)/and(2*n+1, n+1-and(n-1, n-2))` -/
def P1481471364130454038.Spec : Prop :=
  ∀ n, P1481471364130454038.a n = (A060819 (n + 1) : ℚ)

end A060819

/-! ## A060819.P15350148103848046839

`abs(∑[A215205(n)])`
-/

namespace A060819.P15350148103848046839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A060819.P15350148103848046839

namespace A060819

/-- `abs(∑[A215205(n)])` -/
def P15350148103848046839.Spec : Prop :=
  ∀ n, P15350148103848046839.a n = A060819 (n + 1)

end A060819

/-! ## A060819.P6221242316450222462

`sqrt(A181318(n+1))`
-/

namespace A060819.P6221242316450222462
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A181318 (n + 1) : ℝ)

end

end A060819.P6221242316450222462

namespace A060819

/-- `sqrt(A181318(n+1))` -/
def P6221242316450222462.Spec : Prop :=
  ∀ n, P6221242316450222462.a n = (A060819 (n + 1) : ℝ)

end A060819

/-! ## A060819.P17271257782858629259

`gcd(∑[n], A129995(n))`
-/

namespace A060819.P17271257782858629259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A129995 n)

end

end A060819.P17271257782858629259

namespace A060819

/-- `gcd(∑[n], A129995(n))` -/
def P17271257782858629259.Spec : Prop :=
  ∀ n, (P17271257782858629259.a n : ℤ) = A060819 (n + 1)

end A060819

/-! ## A060819.P11643268988941469328

`A068219(n+1)/3`
-/

namespace A060819.P11643268988941469328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068219 (n + 1) : ℚ) / 3

end

end A060819.P11643268988941469328

namespace A060819

/-- `A068219(n+1)/3` -/
def P11643268988941469328.Spec : Prop :=
  ∀ n, P11643268988941469328.a n = (A060819 (n + 1) : ℚ)

end A060819

/-! ## A060819.P9665371042765169090

`A109045(n+1)/4`
-/

namespace A060819.P9665371042765169090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109045 (n + 1) : ℚ) / 4

end

end A060819.P9665371042765169090

namespace A060819

/-- `A109045(n+1)/4` -/
def P9665371042765169090.Spec : Prop :=
  ∀ n, P9665371042765169090.a n = (A060819 (n + 1) : ℚ)

end A060819

/-! ## A060819.P1767179654226332055

`gcd(n+1, A330082(n))`
-/

namespace A060819.P1767179654226332055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A330082 n)

end

end A060819.P1767179654226332055

namespace A060819

/-- `gcd(n+1, A330082(n))` -/
def P1767179654226332055.Spec : Prop :=
  ∀ n, (P1767179654226332055.a n : ℤ) = A060819 (n + 1)

end A060819

/-! ## A060819.P3850647651713757525

`∑[n+1]/A176743(n)`
-/

namespace A060819.P3850647651713757525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A176743 n : ℚ)

end

end A060819.P3850647651713757525

namespace A060819

/-- `∑[n+1]/A176743(n)` -/
def P3850647651713757525.Spec : Prop :=
  ∀ n, P3850647651713757525.a n = (A060819 (n + 1) : ℚ)

end A060819

/-! ## A060819.P15624590441584831368

`(n+1)/(A109718(n)+1)`
-/

namespace A060819.P15624590441584831368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A109718 n + 1 : ℚ)

end

end A060819.P15624590441584831368

namespace A060819

/-- `(n+1)/(A109718(n)+1)` -/
def P15624590441584831368.Spec : Prop :=
  ∀ n, P15624590441584831368.a n = (A060819 (n + 1) : ℚ)

end A060819

/-! ## A060819.P3609503499077087955

`(n+1)/2^A131743(n)`
-/

namespace A060819.P3609503499077087955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 : ℚ) ^ (A131743 n : ℤ)

end

end A060819.P3609503499077087955

namespace A060819

/-- `(n+1)/2^A131743(n)` -/
def P3609503499077087955.Spec : Prop :=
  ∀ n, P3609503499077087955.a n = (A060819 (n + 1) : ℚ)

end A060819

/-! ## A060819.P6020981802517570973

`(n+1)/sqrt(A010156(n+1))`
-/

namespace A060819.P6020981802517570973
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.sqrt (A010156 (n + 1) : ℝ)

end

end A060819.P6020981802517570973

namespace A060819

/-- `(n+1)/sqrt(A010156(n+1))` -/
def P6020981802517570973.Spec : Prop :=
  ∀ n, P6020981802517570973.a n = (A060819 (n + 1) : ℝ)

end A060819

/-! ## A060819.P11781696916764059428

`A026741(A026741(n+1))`
-/

namespace A060819.P11781696916764059428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (n + 1)).toNat

end

end A060819.P11781696916764059428

namespace A060819

/-- `A026741(A026741(n+1))` -/
def P11781696916764059428.Spec : Prop :=
  ∀ n, P11781696916764059428.a n = A060819 (n + 1)

end A060819

/-! ## A060819.P2586932144272298930

`gcd(A002418(n), A030640(n))`
-/

namespace A060819.P2586932144272298930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002418 n) (A030640 n)

end

end A060819.P2586932144272298930

namespace A060819

/-- `gcd(A002418(n), A030640(n))` -/
def P2586932144272298930.Spec : Prop :=
  ∀ n, (P2586932144272298930.a n : ℤ) = A060819 (n + 1)

end A060819

/-! ## A060819.P6368749500016776886

`gcd(A002817(n), A064808(n))`
-/

namespace A060819.P6368749500016776886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002817 n) (A064808 n)

end

end A060819.P6368749500016776886

namespace A060819

/-- `gcd(A002817(n), A064808(n))` -/
def P6368749500016776886.Spec : Prop :=
  ∀ n, (P6368749500016776886.a n : ℤ) = A060819 (n + 1)

end A060819

/-! ## A060819.P11011752778210427233

`gcd(A005920(n), A116689(n))`
-/

namespace A060819.P11011752778210427233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005920 n) (A116689 n)

end

end A060819.P11011752778210427233

namespace A060819

/-- `gcd(A005920(n), A116689(n))` -/
def P11011752778210427233.Spec : Prop :=
  ∀ n, (P11011752778210427233.a n : ℤ) = A060819 (n + 1)

end A060819

/-!
# A060820: a(n) = (2*n-1)^2 + (2*n)^2.

The programs for A060820, the canonical program `A060820.P2196705398498784693` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060820 has offset 1).

The definition of A060820 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060820.P2196705398498784693

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=5, a(1)=25, a(2)=61`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060820

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P2196705398498784693.Spec : Prop :=
  ∀ n, P2196705398498784693.a n = A060820 (n + 1)

theorem P2196705398498784693.correct : P2196705398498784693.Spec := by
  intro n
  simp only [A060820, Nat.add_sub_cancel]

end A060820

/-! ## A060820.P9681081726621140979

`∑[16*n+4]+1`
-/

namespace A060820.P9681081726621140979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A060820.P9681081726621140979

namespace A060820

/-- `∑[16*n+4]+1` -/
def P9681081726621140979.Spec : Prop :=
  ∀ n, (P9681081726621140979.a n : ℤ) = A060820 (n + 1)

end A060820

/-! ## A060820.P8008530366565953414

`ceil(record[xor(3, n)²]/2)`
-/

namespace A060820.P8008530366565953414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌉

end

end A060820.P8008530366565953414

namespace A060820

/-- `ceil(record[xor(3, n)²]/2)` -/
def P8008530366565953414.Spec : Prop :=
  ∀ n, P8008530366565953414.a n = A060820 (n + 1)

end A060820

/-! ## A060820.P13058731589110570248

`∑[a(n-1)+16]` with `a(0)=5, a(1)=20`
-/

namespace A060820.P13058731589110570248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 20] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060820.P13058731589110570248

namespace A060820

/-- `∑[a(n-1)+16]` -/
def P13058731589110570248.Spec : Prop :=
  ∀ n, (P13058731589110570248.a n : ℤ) = A060820 (n + 1)

end A060820

/-! ## A060820.P18335798130188132190

`(record[xor(3, n)²]+1)/2`
-/

namespace A060820.P18335798130188132190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 : ℚ) / 2

end

end A060820.P18335798130188132190

namespace A060820

/-- `(record[xor(3, n)²]+1)/2` -/
def P18335798130188132190.Spec : Prop :=
  ∀ n, P18335798130188132190.a n = (A060820 (n + 1) : ℚ)

end A060820

/-! ## A060820.P17344738965552975053

`Δ[C(2*(2*n+1), 3)/4]`
-/

namespace A060820.P17344738965552975053
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (2 * n + 1)) 3 : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060820.P17344738965552975053

namespace A060820

/-- `Δ[C(2*(2*n+1), 3)/4]` -/
def P17344738965552975053.Spec : Prop :=
  ∀ n, P17344738965552975053.a n = (A060820 (n + 1) : ℚ)

end A060820

/-! ## A060820.P3915813238560812131

`record[(n+2)*2*xor(1, n)+1]`
-/

namespace A060820.P3915813238560812131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (2 * Nat.xor 1 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060820.P3915813238560812131

namespace A060820

/-- `record[(n+2)*2*xor(1, n)+1]` -/
def P3915813238560812131.Spec : Prop :=
  ∀ n, (P3915813238560812131.a n : ℤ) = A060820 (n + 1)

end A060820

/-! ## A060820.P10859744479262324557

`or(1, (2*n+1)*4*(n+1))`
-/

namespace A060820.P10859744479262324557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((2 * n + 1) * (4 * (n + 1)))

end

end A060820.P10859744479262324557

namespace A060820

/-- `or(1, (2*n+1)*4*(n+1))` -/
def P10859744479262324557.Spec : Prop :=
  ∀ n, (P10859744479262324557.a n : ℤ) = A060820 (n + 1)

end A060820

/-! ## A060820.P2838546302898405915

`xor(1, (2*n+1)*4*(n+1))`
-/

namespace A060820.P2838546302898405915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((2 * n + 1) * (4 * (n + 1)))

end

end A060820.P2838546302898405915

namespace A060820

/-- `xor(1, (2*n+1)*4*(n+1))` -/
def P2838546302898405915.Spec : Prop :=
  ∀ n, (P2838546302898405915.a n : ℤ) = A060820 (n + 1)

end A060820

/-! ## A060820.P10931793127773868196

`ceil((2*n+1)/acot(4*(n+1)))`
-/

namespace A060820.P10931793127773868196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / SequenceMachineLib.acot (4 * (n + 1) : ℝ)⌉

end

end A060820.P10931793127773868196

namespace A060820

/-- `ceil((2*n+1)/acot(4*(n+1)))` -/
def P10931793127773868196.Spec : Prop :=
  ∀ n, P10931793127773868196.a n = A060820 (n + 1)

end A060820

/-! ## A060820.P18280404984189320040

`round(4*(n+1)/acot(2*n+1))`
-/

namespace A060820.P18280404984189320040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 * (n + 1) : ℝ) / SequenceMachineLib.acot (2 * n + 1 : ℝ))

end

end A060820.P18280404984189320040

namespace A060820

/-- `round(4*(n+1)/acot(2*n+1))` -/
def P18280404984189320040.Spec : Prop :=
  ∀ n, P18280404984189320040.a n = A060820 (n + 1)

end A060820

/-! ## A060820.P15281777428202380031

`∑{d}[-a(n-1), (2*n+#)²]` with `a(0)=2`
-/

namespace A060820.P15281777428202380031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (2 * n + d) ^ 2

end

end A060820.P15281777428202380031

namespace A060820

/-- `∑{d}[-a(n-1), (2*n+#)²]` -/
def P15281777428202380031.Spec : Prop :=
  ∀ n, (P15281777428202380031.a n : ℤ) = A060820 (n + 1)

end A060820

/-! ## A060820.P6189696780146469114

`abs(2*n+1-C(4*(n+1), 2))`
-/

namespace A060820.P6189696780146469114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) - (Nat.choose (4 * (n + 1)) 2 : ℤ)|

end

end A060820.P6189696780146469114

namespace A060820

/-- `abs(2*n+1-C(4*(n+1), 2))` -/
def P6189696780146469114.Spec : Prop :=
  ∀ n, P6189696780146469114.a n = A060820 (n + 1)

end A060820

/-! ## A060820.P9317013050339706523

`record[5-(2*n-lcm(n-2, 2*n))]`
-/

namespace A060820.P9317013050339706523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - ((2 * n : ℤ) - (Int.lcm ((n : ℤ) - 2) (2 * n : ℤ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060820.P9317013050339706523

namespace A060820

/-- `record[5-(2*n-lcm(n-2, 2*n))]` -/
def P9317013050339706523.Spec : Prop :=
  ∀ n, P9317013050339706523.a n = A060820 (n + 1)

end A060820

/-! ## A060820.P5804274863033769314

`∑[A063110(n+1)]`
-/

namespace A060820.P5804274863033769314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060820.P5804274863033769314

namespace A060820

/-- `∑[A063110(n+1)]` -/
def P5804274863033769314.Spec : Prop :=
  ∀ n, P5804274863033769314.a n = A060820 (n + 1)

end A060820

/-! ## A060820.P5693839774044427410

`Δ[A153058(2*n)]`
-/

namespace A060820.P5693839774044427410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153058 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060820.P5693839774044427410

namespace A060820

/-- `Δ[A153058(2*n)]` -/
def P5693839774044427410.Spec : Prop :=
  ∀ n, P5693839774044427410.a n = A060820 (n + 1)

end A060820

/-! ## A060820.P5933700556332127108

`Δ[A168574(n)-n]`
-/

namespace A060820.P5933700556332127108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168574 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060820.P5933700556332127108

namespace A060820

/-- `Δ[A168574(n)-n]` -/
def P5933700556332127108.Spec : Prop :=
  ∀ n, P5933700556332127108.a n = A060820 (n + 1)

end A060820

/-! ## A060820.P8131022829104625267

`(A016838(n)+1)/2`
-/

namespace A060820.P8131022829104625267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016838 n + 1 : ℚ) / 2

end

end A060820.P8131022829104625267

namespace A060820

/-- `(A016838(n)+1)/2` -/
def P8131022829104625267.Spec : Prop :=
  ∀ n, P8131022829104625267.a n = (A060820 (n + 1) : ℚ)

end A060820

/-!
# A060821: Triangle read by rows. T(n, k) are the coefficients of the Hermite polynomial of order n, for 0 <= k <= n.

The programs for A060821, the canonical program `A060821.P14686981588061014072` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060821 has offset 0).

The definition of A060821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060821.P14686981588061014072

`A059268(n)*A112227(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A060821

/-- `A059268(n)*A112227(n)` -/
def P14686981588061014072.Spec : Prop :=
  ∀ n, P14686981588061014072.a n = A060821 n

theorem P14686981588061014072.correct : P14686981588061014072.Spec := by
  intro n
  simp only [A060821]

end A060821

/-! ## A060821.P12172045704755902701

`A112227(n)*A130125(n)`
-/

namespace A060821.P12172045704755902701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112227 n * A130125 n

end

end A060821.P12172045704755902701

namespace A060821

/-- `A112227(n)*A130125(n)` -/
def P12172045704755902701.Spec : Prop :=
  ∀ n, P12172045704755902701.a n = A060821 n

end A060821

/-! ## A060821.P7154121013966425956

`A013609(n)*A067994(A025581(n))`
-/

namespace A060821.P7154121013966425956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A067994 (A025581 n).toNat

end

end A060821.P7154121013966425956

namespace A060821

/-- `A013609(n)*A067994(A025581(n))` -/
def P7154121013966425956.Spec : Prop :=
  ∀ n, P7154121013966425956.a n = A060821 n

end A060821

/-! ## A060821.P7120223982637022672

`A000079(A002262(n))*A112227(n)`
-/

namespace A060821.P7120223982637022672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A112227 n

end

end A060821.P7120223982637022672

namespace A060821

/-- `A000079(A002262(n))*A112227(n)` -/
def P7120223982637022672.Spec : Prop :=
  ∀ n, P7120223982637022672.a n = A060821 n

end A060821

/-! ## A060821.P13799652202110809596

`A016116(A051162(n))*A066325(n)`
-/

namespace A060821.P13799652202110809596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A051162 n).toNat * A066325 n

end

end A060821.P13799652202110809596

namespace A060821

/-- `A016116(A051162(n))*A066325(n)` -/
def P13799652202110809596.Spec : Prop :=
  ∀ n, P13799652202110809596.a n = A060821 n

end A060821

/-! ## A060821.P7333530397493072666

`A112227(n)*A130321(A061579(n))`
-/

namespace A060821.P7333530397493072666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112227 n * A130321 (A061579 n).toNat

end

end A060821.P7333530397493072666

namespace A060821

/-- `A112227(n)*A130321(A061579(n))` -/
def P7333530397493072666.Spec : Prop :=
  ∀ n, P7333530397493072666.a n = A060821 n

end A060821

/-! ## A060821.P13591971073369152066

`A016116(A094727(n+1))*A066325(n)`
-/

namespace A060821.P13591971073369152066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A094727 (n + 1)).toNat * A066325 n

end

end A060821.P13591971073369152066

namespace A060821

/-- `A016116(A094727(n+1))*A066325(n)` -/
def P13591971073369152066.Spec : Prop :=
  ∀ n, P13591971073369152066.a n = A060821 n

end A060821

/-! ## A060821.P116887667576785399

`A011782(A209279(n+1))*A066325(n)`
-/

namespace A060821.P116887667576785399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A209279 (n + 1)).toNat * A066325 n

end

end A060821.P116887667576785399

namespace A060821

/-- `A011782(A209279(n+1))*A066325(n)` -/
def P116887667576785399.Spec : Prop :=
  ∀ n, P116887667576785399.a n = A060821 n

end A060821

/-! ## A060821.P3974984254284600572

`A038207(A061579(n))*A067994(A025581(n))`
-/

namespace A060821.P3974984254284600572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (A061579 n).toNat * A067994 (A025581 n).toNat

end

end A060821.P3974984254284600572

namespace A060821

/-- `A038207(A061579(n))*A067994(A025581(n))` -/
def P3974984254284600572.Spec : Prop :=
  ∀ n, P3974984254284600572.a n = A060821 n

end A060821

/-! ## A060821.P2359704929878323492

`A048896(A089633(n))*A112227(n)`
-/

namespace A060821.P2359704929878323492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A089633 n).toNat * A112227 n

end

end A060821.P2359704929878323492

namespace A060821

/-- `A048896(A089633(n))*A112227(n)` -/
def P2359704929878323492.Spec : Prop :=
  ∀ n, P2359704929878323492.a n = A060821 n

end A060821

/-!
# A060822: a(n) = prime(n) + n^3 + n^2 + 4n - 1.

The programs for A060822, the canonical program `A060822.P11802503559072820179` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060822 has offset 1).

The definition of A060822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060822.P5521955316740200956

`A166781(n+1)+A014688(n+1)`
-/

namespace A060822.P5521955316740200956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166781 (n + 1) + A014688 (n + 1)

end

end A060822.P5521955316740200956

namespace A060822

/-- `A166781(n+1)+A014688(n+1)` -/
def P5521955316740200956.Spec : Prop :=
  ∀ n, P5521955316740200956.a n = A060822 (n + 1)

end A060822

/-! ## A060822.P11802503559072820179

`A000040(n+1)+A007742(n+1)+A000578(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060822

/-- `A000040(n+1)+A007742(n+1)+A000578(n)` -/
def P11802503559072820179.Spec : Prop :=
  ∀ n, P11802503559072820179.a n = A060822 (n + 1)

theorem P11802503559072820179.correct : P11802503559072820179.Spec := by
  intro n
  simp only [A060822, Nat.add_sub_cancel]

end A060822

/-! ## A060822.P18087920723983860102

`A006093(n+1)+(n+1)*A027689(n+1)`
-/

namespace A060822.P18087920723983860102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (n + 1 : ℤ) * A027689 (n + 1)

end

end A060822.P18087920723983860102

namespace A060822

/-- `A006093(n+1)+(n+1)*A027689(n+1)` -/
def P18087920723983860102.Spec : Prop :=
  ∀ n, P18087920723983860102.a n = A060822 (n + 1)

end A060822

/-! ## A060822.P14517912198678951931

`A270109(n+1)-2+A000040(n+1)+n`
-/

namespace A060822.P14517912198678951931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270109 (n + 1) - 2 + (A000040 (n + 1) + (n : ℤ))

end

end A060822.P14517912198678951931

namespace A060822

/-- `A270109(n+1)-2+A000040(n+1)+n` -/
def P14517912198678951931.Spec : Prop :=
  ∀ n, P14517912198678951931.a n = A060822 (n + 1)

end A060822

/-! ## A060822.P4934053495660095205

`A006093(n+1)+A005843(n+1)*A133263(n+1)`
-/

namespace A060822.P4934053495660095205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + A005843 (n + 1) * A133263 (n + 1)

end

end A060822.P4934053495660095205

namespace A060822

/-- `A006093(n+1)+A005843(n+1)*A133263(n+1)` -/
def P4934053495660095205.Spec : Prop :=
  ∀ n, P4934053495660095205.a n = A060822 (n + 1)

end A060822

/-! ## A060822.P17289548894441231840

`record[A000010(n+1)]+(n+1)*A027689(n+1)`
-/

namespace A060822.P17289548894441231840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1 : ℤ) * A027689 (n + 1)

end

end A060822.P17289548894441231840

namespace A060822

/-- `record[A000010(n+1)]+(n+1)*A027689(n+1)` -/
def P17289548894441231840.Spec : Prop :=
  ∀ n, P17289548894441231840.a n = A060822 (n + 1)

end A060822

/-! ## A060822.P12082908215849446135

`record[A000010(n+1)]+2*(n+1)*A133263(n+1)`
-/

namespace A060822.P12082908215849446135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2 * ((n + 1 : ℤ) * A133263 (n + 1))

end

end A060822.P12082908215849446135

namespace A060822

/-- `record[A000010(n+1)]+2*(n+1)*A133263(n+1)` -/
def P12082908215849446135.Spec : Prop :=
  ∀ n, P12082908215849446135.a n = A060822 (n + 1)

end A060822

/-! ## A060822.P429722020146207438

`3*n+A188947(n+2)+p?[A081998(n)]`
-/

namespace A060822.P429722020146207438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (A188947 (n + 2) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A060822.P429722020146207438

namespace A060822

/-- `3*n+A188947(n+2)+p?[A081998(n)]` -/
def P429722020146207438.Spec : Prop :=
  ∀ n, P429722020146207438.a n = A060822 (n + 1)

end A060822

/-! ## A060822.P7125048741661260866

`A006093(n+1)+2*(n+1)*A052938(A028387(n))`
-/

namespace A060822.P7125048741661260866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (2 * (n + 1) : ℤ) * A052938 (A028387 n).toNat

end

end A060822.P7125048741661260866

namespace A060822

/-- `A006093(n+1)+2*(n+1)*A052938(A028387(n))` -/
def P7125048741661260866.Spec : Prop :=
  ∀ n, P7125048741661260866.a n = A060822 (n + 1)

end A060822

/-!
# A060823: 4-wave sequence beginning with 2's with middles dropped.

The programs for A060823, the canonical program `A060823.P18178894444141649078` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060823 has offset 2).

The definition of A060823 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060823.P18178894444141649078

`2*a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` with `a(0)=2, a(1)=2, a(2)=8, a(3)=20`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060823

/-- `2*a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` -/
def P18178894444141649078.Spec : Prop :=
  ∀ n, P18178894444141649078.a n = A060823 (n + 2)

theorem P18178894444141649078.correct : P18178894444141649078.Spec := by
  intro n
  simp only [A060823, Nat.add_sub_cancel]

end A060823

/-! ## A060823.P17227833230014983998

`A060824(3*n+2)`
-/

namespace A060823.P17227833230014983998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060824 (3 * n + 2)

end

end A060823.P17227833230014983998

namespace A060823

/-- `A060824(3*n+2)` -/
def P17227833230014983998.Spec : Prop :=
  ∀ n, P17227833230014983998.a n = A060823 (n + 2)

end A060823

/-! ## A060823.P9462117165225253131

`2*A038197(3*n)`
-/

namespace A060823.P9462117165225253131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038197 (3 * n)

end

end A060823.P9462117165225253131

namespace A060823

/-- `2*A038197(3*n)` -/
def P9462117165225253131.Spec : Prop :=
  ∀ n, P9462117165225253131.a n = A060823 (n + 2)

end A060823

/-! ## A060823.P6226570370649246215

`2*A187506(3*n+2)`
-/

namespace A060823.P6226570370649246215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A187506 (3 * n + 2)

end

end A060823.P6226570370649246215

namespace A060823

/-- `2*A187506(3*n+2)` -/
def P6226570370649246215.Spec : Prop :=
  ∀ n, P6226570370649246215.a n = A060823 (n + 2)

end A060823

/-! ## A060823.P4611120937660731385

`A091650(n+1)+(-1)^n`
-/

namespace A060823.P4611120937660731385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091650 (n + 1) + (-1) ^ n

end

end A060823.P4611120937660731385

namespace A060823

/-- `A091650(n+1)+(-1)^n` -/
def P4611120937660731385.Spec : Prop :=
  ∀ n, P4611120937660731385.a n = A060823 (n + 2)

end A060823

/-! ## A060823.P4629180014938330577

`2*A006357((n-1)%(n+1))`
-/

namespace A060823.P4629180014938330577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006357 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A060823.P4629180014938330577

namespace A060823

/-- `2*A006357((n-1)%(n+1))` -/
def P4629180014938330577.Spec : Prop :=
  ∀ n, P4629180014938330577.a n = A060823 (n + 2)

end A060823

/-! ## A060823.P12654532937332544381

`2*A052963(n)-a(n-1)` with `a(0)=2`
-/

namespace A060823.P12654532937332544381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * A052963 n - a (n - 1)

end

end A060823.P12654532937332544381

namespace A060823

/-- `2*A052963(n)-a(n-1)` -/
def P12654532937332544381.Spec : Prop :=
  ∀ n, P12654532937332544381.a n = A060823 (n + 2)

end A060823

/-! ## A060823.P7580615769437755940

`A147704(n)+Δ[A091024(n)]`
-/

namespace A060823.P7580615769437755940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147704 n + (f1 (n + 1) - f1 n)

end

end A060823.P7580615769437755940

namespace A060823

/-- `A147704(n)+Δ[A091024(n)]` -/
def P7580615769437755940.Spec : Prop :=
  ∀ n, P7580615769437755940.a n = A060823 (n + 2)

end A060823

/-! ## A060823.P15951014564941319363

`2*A187503(A016789(n+1))`
-/

namespace A060823.P15951014564941319363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A187503 (A016789 (n + 1)).toNat

end

end A060823.P15951014564941319363

namespace A060823

/-- `2*A187503(A016789(n+1))` -/
def P15951014564941319363.Spec : Prop :=
  ∀ n, P15951014564941319363.a n = A060823 (n + 2)

end A060823

/-! ## A060823.P17233827044027173328

`2*A187503(A180486(n+1))`
-/

namespace A060823.P17233827044027173328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A187503 (A180486 (n + 1)).toNat

end

end A060823.P17233827044027173328

namespace A060823

/-- `2*A187503(A180486(n+1))` -/
def P17233827044027173328.Spec : Prop :=
  ∀ n, P17233827044027173328.a n = A060823 (n + 2)

end A060823

/-! ## A060823.P365964250603030366

`2*A187503(A112414(n)-2)`
-/

namespace A060823.P365964250603030366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A187503 (A112414 n - 2).toNat

end

end A060823.P365964250603030366

namespace A060823

/-- `2*A187503(A112414(n)-2)` -/
def P365964250603030366.Spec : Prop :=
  ∀ n, P365964250603030366.a n = A060823 (n + 2)

end A060823

/-! ## A060823.P794041394649353305

`2*A006357(A004273(n)-n)`
-/

namespace A060823.P794041394649353305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006357 (A004273 n - (n : ℤ)).toNat

end

end A060823.P794041394649353305

namespace A060823

/-- `2*A006357(A004273(n)-n)` -/
def P794041394649353305.Spec : Prop :=
  ∀ n, P794041394649353305.a n = A060823 (n + 2)

end A060823

/-! ## A060823.P9356528487189126194

`2*(A052536(n)-A091024(n))`
-/

namespace A060823.P9356528487189126194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052536 n - A091024 n)

end

end A060823.P9356528487189126194

namespace A060823

/-- `2*(A052536(n)-A091024(n))` -/
def P9356528487189126194.Spec : Prop :=
  ∀ n, P9356528487189126194.a n = A060823 (n + 2)

end A060823

/-! ## A060823.P11432250062260388129

`2*(∑[A052545(n)]-A091024(n))`
-/

namespace A060823.P11432250062260388129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A091024 n)

end

end A060823.P11432250062260388129

namespace A060823

/-- `2*(∑[A052545(n)]-A091024(n))` -/
def P11432250062260388129.Spec : Prop :=
  ∀ n, P11432250062260388129.a n = A060823 (n + 2)

end A060823

/-! ## A060823.P231015789153390400

`2*(A091024(n+1)-A123941(n))`
-/

namespace A060823.P231015789153390400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A091024 (n + 1) - A123941 n)

end

end A060823.P231015789153390400

namespace A060823

/-- `2*(A091024(n+1)-A123941(n))` -/
def P231015789153390400.Spec : Prop :=
  ∀ n, P231015789153390400.a n = A060823 (n + 2)

end A060823

/-! ## A060823.P16721958589736104624

`Δ[A187504(3*(n+1))]-A187503(3*n+1)`
-/

namespace A060823.P16721958589736104624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187504 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A187503 (3 * n + 1)

end

end A060823.P16721958589736104624

namespace A060823

/-- `Δ[A187504(3*(n+1))]-A187503(3*n+1)` -/
def P16721958589736104624.Spec : Prop :=
  ∀ n, P16721958589736104624.a n = A060823 (n + 2)

end A060823

/-! ## A060823.P12015206502258724775

`2*(A006357(n+1)-A018919(n))`
-/

namespace A060823.P12015206502258724775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006357 (n + 1) - A018919 n)

end

end A060823.P12015206502258724775

namespace A060823

/-- `2*(A006357(n+1)-A018919(n))` -/
def P12015206502258724775.Spec : Prop :=
  ∀ n, P12015206502258724775.a n = A060823 (n + 2)

end A060823

/-! ## A060823.P15541759320136215893

`2*(A006357(n+1)-A076264(n+1))`
-/

namespace A060823.P15541759320136215893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006357 (n + 1) - A076264 (n + 1))

end

end A060823.P15541759320136215893

namespace A060823

/-- `2*(A006357(n+1)-A076264(n+1))` -/
def P15541759320136215893.Spec : Prop :=
  ∀ n, P15541759320136215893.a n = A060823 (n + 2)

end A060823

/-! ## A060823.P8149674117943400068

`2*A050446(A167614(n+1))`
-/

namespace A060823.P8149674117943400068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050446 (A167614 (n + 1)).toNat

end

end A060823.P8149674117943400068

namespace A060823

/-- `2*A050446(A167614(n+1))` -/
def P8149674117943400068.Spec : Prop :=
  ∀ n, P8149674117943400068.a n = A060823 (n + 2)

end A060823

/-!
# A060824: 4-wave sequence beginning with 2s.

The programs for A060824, there is no canonical definition to state claims against.
-/

/-! ## A060824.P518569455763735786

`2*A038197(n)`
-/

namespace A060824.P518569455763735786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038197 n

end

end A060824.P518569455763735786

/-! ## A060824.P5872826128434440913

`2*A187506(n+2)`
-/

namespace A060824.P5872826128434440913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A187506 (n + 2)

end

end A060824.P5872826128434440913

/-! ## A060824.P14789593149104137265

`2*A187503(n+5)`
-/

namespace A060824.P14789593149104137265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A187503 (n + 5)

end

end A060824.P14789593149104137265

/-! ## A060824.P14703076253669544872

`A187506(n+2)+A038197(n)`
-/

namespace A060824.P14703076253669544872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187506 (n + 2) + A038197 n

end

end A060824.P14703076253669544872

/-! ## A060824.P11962720196391213729

`A038197(A028310(n))+A038197(n)`
-/

namespace A060824.P11962720196391213729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038197 (A028310 n).toNat + A038197 n

end

end A060824.P11962720196391213729

/-! ## A060824.P1319751720760043165

`A038197(n)+A038197(A289207(n)+2)`
-/

namespace A060824.P1319751720760043165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038197 n + A038197 (A289207 n + 2).toNat

end

end A060824.P1319751720760043165

/-! ## A060824.P13118483932556900350

`A038197(A004277(n)-n)+A038197(n)`
-/

namespace A060824.P13118483932556900350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038197 (A004277 n - (n : ℤ)).toNat + A038197 n

end

end A060824.P13118483932556900350

/-!
# A060826: a(n) is the largest number such that 3^a(n) [also 6^a(n)] divides A025487(n) (least prime signatures).

The programs for A060826, there is no canonical definition to state claims against.
-/

/-! ## A060826.P16458020236601154709

`val(A025487(n+1), 3)`
-/

namespace A060826.P16458020236601154709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025487 (n + 1)).toNat 3

end

end A060826.P16458020236601154709

/-! ## A060826.P10335818416929578350

`val(A233819(n+1), 5)`
-/

namespace A060826.P10335818416929578350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A233819 (n + 1)).toNat 5

end

end A060826.P10335818416929578350

/-! ## A060826.P13215274826946470112

`val(A330681(n+1), 5)`
-/

namespace A060826.P13215274826946470112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A330681 (n + 1)).toNat 5

end

end A060826.P13215274826946470112

/-! ## A060826.P16405570158675573396

`val(A181817(n+1)/A181816(n+1), 3)`
-/

namespace A060826.P16405570158675573396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A181817 (n + 1) : ℚ) / (A181816 (n + 1) : ℚ))).toNat 3

end

end A060826.P16405570158675573396

/-! ## A060826.P96178138549931764

`val(record[A051466(n+2)], 3)`
-/

namespace A060826.P96178138549931764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 3

end

end A060826.P96178138549931764

/-! ## A060826.P10599319999559323233

`val(record[A329899(n+1)]/A181815(n+1), 2)`
-/

namespace A060826.P10599319999559323233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A181815 (n + 1) : ℚ))).toNat 2

end

end A060826.P10599319999559323233

/-! ## A060826.P12894957208140598754

`val(gcd(A181817(n+1), A324577(n+1)), 3)`
-/

namespace A060826.P12894957208140598754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.gcd (A181817 (n + 1)) (A324577 (n + 1))) 3

end

end A060826.P12894957208140598754

/-! ## A060826.P4649971912243108761

`val(A329899(A330683(n+1))/A181815(n+1), 2)`
-/

namespace A060826.P4649971912243108761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A329899 (A330683 (n + 1)).toNat : ℚ) / (A181815 (n + 1) : ℚ))).toNat 2

end

end A060826.P4649971912243108761

/-! ## A060826.P12511739290414982361

`val(record[A329899(n+1)]*A181815(A330683(n+1)), 5)`
-/

namespace A060826.P12511739290414982361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A181815 (A330683 (n + 1)).toNat).toNat 5

end

end A060826.P12511739290414982361

/-! ## A060826.P4988949279029672048

`A007814(A025487(n+1)/A181815(n+1))`
-/

namespace A060826.P4988949279029672048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((A025487 (n + 1) : ℚ) / (A181815 (n + 1) : ℚ))).toNat

end

end A060826.P4988949279029672048

/-! ## A060826.P4084164259753934972

`A087436(A181815(n+1))`
-/

namespace A060826.P4084164259753934972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A181815 (n + 1)).toNat

end

end A060826.P4084164259753934972

/-!
# A060827: 3-wave sequence beginning with 2's.

The programs for A060827, the canonical program `A060827.P15751382796492742172` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060827 has offset 0).

The definition of A060827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060827.P15751382796492742172

`2*A038196(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060827

/-- `2*A038196(n)` -/
def P15751382796492742172.Spec : Prop :=
  ∀ n, P15751382796492742172.a n = A060827 n

theorem P15751382796492742172.correct : P15751382796492742172.Spec := by
  intro n
  simp only [A060827]

end A060827

/-! ## A060827.P8698637346042481814

`a(xor(1, n-3))+a(n-1)` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A060827.P8698637346042481814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2] fun n a =>
  a (Int.xor 1 ((n : ℤ) - 3)).toNat + a (n - 1)

end

end A060827.P8698637346042481814

namespace A060827

/-- `a(xor(1, n-3))+a(n-1)` -/
def P8698637346042481814.Spec : Prop :=
  ∀ n, (P8698637346042481814.a n : ℤ) = A060827 n

end A060827

/-! ## A060827.P10657867566241359877

`a(n-1)+a(n-a(gcd(2, n)+1))` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A060827.P10657867566241359877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2] fun n a =>
  a (n - 1) + a (n - a (Nat.gcd 2 n + 1))

end

end A060827.P10657867566241359877

namespace A060827

/-- `a(n-1)+a(n-a(gcd(2, n)+1))` -/
def P10657867566241359877.Spec : Prop :=
  ∀ n, (P10657867566241359877.a n : ℤ) = A060827 n

end A060827

/-! ## A060827.P8593289062795628744

`2*A187070(n+2)`
-/

namespace A060827.P8593289062795628744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A187070 (n + 2)

end

end A060827.P8593289062795628744

namespace A060827

/-- `2*A187070(n+2)` -/
def P8593289062795628744.Spec : Prop :=
  ∀ n, P8593289062795628744.a n = A060827 n

end A060827

/-! ## A060827.P667117845068051572

`2*A187068(n+4)`
-/

namespace A060827.P667117845068051572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A187068 (n + 4)

end

end A060827.P667117845068051572

namespace A060827

/-- `2*A187068(n+4)` -/
def P667117845068051572.Spec : Prop :=
  ∀ n, P667117845068051572.a n = A060827 n

end A060827

/-! ## A060827.P8945912300916647352

`A187070(n+2)+A038196(n)`
-/

namespace A060827.P8945912300916647352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (n + 2) + A038196 n

end

end A060827.P8945912300916647352

namespace A060827

/-- `A187070(n+2)+A038196(n)` -/
def P8945912300916647352.Spec : Prop :=
  ∀ n, P8945912300916647352.a n = A060827 n

end A060827

/-! ## A060827.P5736161494274591737

`A038196(A004277(n)-n)+A038196(n)`
-/

namespace A060827.P5736161494274591737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038196 (A004277 n - (n : ℤ)).toNat + A038196 n

end

end A060827.P5736161494274591737

namespace A060827

/-- `A038196(A004277(n)-n)+A038196(n)` -/
def P5736161494274591737.Spec : Prop :=
  ∀ n, P5736161494274591737.a n = A060827 n

end A060827

/-!
# A060828: Size of the Sylow 3-subgroup of the symmetric group S_n.

The programs for A060828, the canonical program `A060828.P1035162782423646240` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060828 has offset 0).

The definition of A060828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 426 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060828.P1035162782423646240

`∏[gcd(n, ∏[gcd(3, n+1)])]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060828

/-- `∏[gcd(n, ∏[gcd(3, n+1)])]` -/
def P1035162782423646240.Spec : Prop :=
  ∀ n, (P1035162782423646240.a n : ℤ) = A060828 n

theorem P1035162782423646240.correct : P1035162782423646240.Spec := by
  intro n
  simp only [A060828]

end A060828

/-! ## A060828.P5601146298184172272

`3^val(n, 3)*a(n-1)` with `a(0)=1`
-/

namespace A060828.P5601146298184172272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 ^ SequenceMachineLib.valuation n 3 * a (n - 1)

end

end A060828.P5601146298184172272

namespace A060828

/-- `3^val(n, 3)*a(n-1)` -/
def P5601146298184172272.Spec : Prop :=
  ∀ n, (P5601146298184172272.a n : ℤ) = A060828 n

end A060828

/-! ## A060828.P281141060638054441

`3^∑[val(abs(1-n)+1, 3)]`
-/

namespace A060828.P281141060638054441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060828.P281141060638054441

namespace A060828

/-- `3^∑[val(abs(1-n)+1, 3)]` -/
def P281141060638054441.Spec : Prop :=
  ∀ n, (P281141060638054441.a n : ℤ) = A060828 n

end A060828

/-! ## A060828.P16016286199658182325

`∏[3^val(abs(1-n)+1, 3)]`
-/

namespace A060828.P16016286199658182325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060828.P16016286199658182325

namespace A060828

/-- `∏[3^val(abs(1-n)+1, 3)]` -/
def P16016286199658182325.Spec : Prop :=
  ∀ n, (P16016286199658182325.a n : ℤ) = A060828 n

end A060828

/-! ## A060828.P13406298124435065257

`3^A054861(n)`
-/

namespace A060828.P13406298124435065257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A054861 n : ℤ)

end

end A060828.P13406298124435065257

namespace A060828

/-- `3^A054861(n)` -/
def P13406298124435065257.Spec : Prop :=
  ∀ n, P13406298124435065257.a n = (A060828 n : ℚ)

end A060828

/-! ## A060828.P17161744929627396511

`sqrt(3)^A344853(n)`
-/

namespace A060828.P17161744929627396511
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (3 : ℝ) ^ (A344853 n : ℤ)

end

end A060828.P17161744929627396511

namespace A060828

/-- `sqrt(3)^A344853(n)` -/
def P17161744929627396511.Spec : Prop :=
  ∀ n, P17161744929627396511.a n = (A060828 n : ℝ)

end A060828

/-! ## A060828.P5796669172361671274

`3^(A004128(n)-n)`
-/

namespace A060828.P5796669172361671274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A004128 n - (n : ℤ) : ℤ)

end

end A060828.P5796669172361671274

namespace A060828

/-- `3^(A004128(n)-n)` -/
def P5796669172361671274.Spec : Prop :=
  ∀ n, P5796669172361671274.a n = (A060828 n : ℚ)

end A060828

/-! ## A060828.P740779627549304533

`3^(n-A089792(n))`
-/

namespace A060828.P740779627549304533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - A089792 n : ℤ)

end

end A060828.P740779627549304533

namespace A060828

/-- `3^(n-A089792(n))` -/
def P740779627549304533.Spec : Prop :=
  ∀ n, P740779627549304533.a n = (A060828 n : ℚ)

end A060828

/-! ## A060828.P15446958891637977619

`a(n-1)*A038500(n)` with `a(0)=1`
-/

namespace A060828.P15446958891637977619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A038500 n

end

end A060828.P15446958891637977619

namespace A060828

/-- `a(n-1)*A038500(n)` -/
def P15446958891637977619.Spec : Prop :=
  ∀ n, P15446958891637977619.a n = A060828 n

end A060828

/-! ## A060828.P9158788919760640383

`3^(A120514(n+1)-(n+1))`
-/

namespace A060828.P9158788919760640383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A120514 (n + 1) - (n + 1 : ℤ) : ℤ)

end

end A060828.P9158788919760640383

namespace A060828

/-- `3^(A120514(n+1)-(n+1))` -/
def P9158788919760640383.Spec : Prop :=
  ∀ n, P9158788919760640383.a n = (A060828 n : ℚ)

end A060828

/-! ## A060828.P2679866129070342584

`A000244(A054861(n))`
-/

namespace A060828.P2679866129070342584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A054861 n).toNat

end

end A060828.P2679866129070342584

namespace A060828

/-- `A000244(A054861(n))` -/
def P2679866129070342584.Spec : Prop :=
  ∀ n, P2679866129070342584.a n = A060828 n

end A060828

/-! ## A060828.P15008550789124456328

`A017913(A344853(n))`
-/

namespace A060828.P15008550789124456328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017913 (A344853 n).toNat

end

end A060828.P15008550789124456328

namespace A060828

/-- `A017913(A344853(n))` -/
def P15008550789124456328.Spec : Prop :=
  ∀ n, P15008550789124456328.a n = A060828 n

end A060828

/-! ## A060828.P14029023862305369181

`∏[A060901(A008576(n))]`
-/

namespace A060828.P14029023862305369181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060901 (A008576 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060828.P14029023862305369181

namespace A060828

/-- `∏[A060901(A008576(n))]` -/
def P14029023862305369181.Spec : Prop :=
  ∀ n, P14029023862305369181.a n = A060828 n

end A060828

/-! ## A060828.P11522298278530758381

`A038754(2*A054861(n))`
-/

namespace A060828.P11522298278530758381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (2 * A054861 n).toNat

end

end A060828.P11522298278530758381

namespace A060828

/-- `A038754(2*A054861(n))` -/
def P11522298278530758381.Spec : Prop :=
  ∀ n, P11522298278530758381.a n = A060828 n

end A060828

/-! ## A060828.P13057530678936960948

`A000244(A004128(n)-n)`
-/

namespace A060828.P13057530678936960948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A004128 n - (n : ℤ)).toNat

end

end A060828.P13057530678936960948

namespace A060828

/-- `A000244(A004128(n)-n)` -/
def P13057530678936960948.Spec : Prop :=
  ∀ n, P13057530678936960948.a n = A060828 n

end A060828

/-! ## A060828.P10728729155326706828

`A000244(n-A089792(n))`
-/

namespace A060828.P10728729155326706828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 ((n : ℤ) - A089792 n).toNat

end

end A060828.P10728729155326706828

namespace A060828

/-- `A000244(n-A089792(n))` -/
def P10728729155326706828.Spec : Prop :=
  ∀ n, P10728729155326706828.a n = A060828 n

end A060828

/-! ## A060828.P11497041195328111779

`A038754(n-A053735(n))`
-/

namespace A060828.P11497041195328111779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 ((n : ℤ) - A053735 n).toNat

end

end A060828.P11497041195328111779

namespace A060828

/-- `A038754(n-A053735(n))` -/
def P11497041195328111779.Spec : Prop :=
  ∀ n, P11497041195328111779.a n = A060828 n

end A060828

/-! ## A060828.P13899632583668507222

`A108411(n-A053735(n))`
-/

namespace A060828.P13899632583668507222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 ((n : ℤ) - A053735 n).toNat

end

end A060828.P13899632583668507222

namespace A060828

/-- `A108411(n-A053735(n))` -/
def P13899632583668507222.Spec : Prop :=
  ∀ n, P13899632583668507222.a n = A060828 n

end A060828

/-! ## A060828.P7843380859890584847

`A254006(n-A053735(n))`
-/

namespace A060828.P7843380859890584847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 ((n : ℤ) - A053735 n).toNat

end

end A060828.P7843380859890584847

namespace A060828

/-- `A254006(n-A053735(n))` -/
def P7843380859890584847.Spec : Prop :=
  ∀ n, P7843380859890584847.a n = A060828 n

end A060828

/-! ## A060828.P11067284645248895757

`∏[3^val(n+1, 3)]/3^val(n+1, 3)`
-/

namespace A060828.P11067284645248895757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (n + 1) 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

end

end A060828.P11067284645248895757

namespace A060828

/-- `∏[3^val(n+1, 3)]/3^val(n+1, 3)` -/
def P11067284645248895757.Spec : Prop :=
  ∀ n, P11067284645248895757.a n = (A060828 n : ℚ)

end A060828

/-!
# A060831: a(n) = Sum_{k=1..n} (number of odd divisors of k) (cf. A001227).

The programs for A060831, the canonical program `A060831.P8526254986242244020` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060831 has offset 0).

The definition of A060831 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A060831.P8526254986242244020

`a(n-1)+A001227(n)` with `a(0)=0`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A060831

/-- `a(n-1)+A001227(n)` -/
def P8526254986242244020.Spec : Prop :=
  ∀ n, P8526254986242244020.a n = A060831 n

theorem P8526254986242244020.correct : P8526254986242244020.Spec := by
  intro n
  simp only [A060831]

end A060831

/-! ## A060831.P14211265746027279818

`A006218(n)-A006218(floor(n/2))`
-/

namespace A060831.P14211265746027279818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - A006218 ⌊(n : ℚ) / 2⌋.toNat

end

end A060831.P14211265746027279818

namespace A060831

/-- `A006218(n)-A006218(floor(n/2))` -/
def P14211265746027279818.Spec : Prop :=
  ∀ n, P14211265746027279818.a n = A060831 n

end A060831

/-! ## A060831.P17498268331541799355

`∑[∑{d}[n, #%2]]`
-/

namespace A060831.P17498268331541799355
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060831.P17498268331541799355

namespace A060831

/-- `∑[∑{d}[n, #%2]]` -/
def P17498268331541799355.Spec : Prop :=
  ∀ n, (P17498268331541799355.a n : ℤ) = A060831 n

end A060831

/-! ## A060831.P16607321821773057242

`∑[∑{d}[n, and(1, #)]]`
-/

namespace A060831.P16607321821773057242
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.land 1 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060831.P16607321821773057242

namespace A060831

/-- `∑[∑{d}[n, and(1, #)]]` -/
def P16607321821773057242.Spec : Prop :=
  ∀ n, (P16607321821773057242.a n : ℤ) = A060831 n

end A060831

/-! ## A060831.P16017125603573236774

`∑[∑{d}[n, 2-gcd(2, #)]]`
-/

namespace A060831.P16017125603573236774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (2 - (Nat.gcd 2 d : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060831.P16017125603573236774

namespace A060831

/-- `∑[∑{d}[n, 2-gcd(2, #)]]` -/
def P16017125603573236774.Spec : Prop :=
  ∀ n, P16017125603573236774.a n = A060831 n

end A060831

/-! ## A060831.P196288920005142340

`∑{d}[n, and(1, #)]+a(n-1)` with `a(0)=0`
-/

namespace A060831.P196288920005142340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.land 1 d + a (n - 1)

end

end A060831.P196288920005142340

namespace A060831

/-- `∑{d}[n, and(1, #)]+a(n-1)` -/
def P196288920005142340.Spec : Prop :=
  ∀ n, (P196288920005142340.a n : ℤ) = A060831 n

end A060831

/-! ## A060831.P273590204452517501

`A248517(n)+n`
-/

namespace A060831.P273590204452517501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n + (n : ℤ)

end

end A060831.P273590204452517501

namespace A060831

/-- `A248517(n)+n` -/
def P273590204452517501.Spec : Prop :=
  ∀ n, P273590204452517501.a n = A060831 n

end A060831

/-! ## A060831.P5211849974467617227

`∑[A069283(n)]+n`
-/

namespace A060831.P5211849974467617227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A060831.P5211849974467617227

namespace A060831

/-- `∑[A069283(n)]+n` -/
def P5211849974467617227.Spec : Prop :=
  ∀ n, P5211849974467617227.a n = A060831 n

end A060831

/-! ## A060831.P8243110982169031361

`∑[∑{d}[n, A000035(#)]]`
-/

namespace A060831.P8243110982169031361
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000035 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060831.P8243110982169031361

namespace A060831

/-- `∑[∑{d}[n, A000035(#)]]` -/
def P8243110982169031361.Spec : Prop :=
  ∀ n, P8243110982169031361.a n = A060831 n

end A060831

/-! ## A060831.P10789966201383759326

`∑[abs(∑{d}[n, A230074(#)])]`
-/

namespace A060831.P10789966201383759326
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f2 n), A230074 d|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060831.P10789966201383759326

namespace A060831

/-- `∑[abs(∑{d}[n, A230074(#)])]` -/
def P10789966201383759326.Spec : Prop :=
  ∀ n, P10789966201383759326.a n = A060831 n

end A060831

/-! ## A060831.P17606837095193081206

`∪[A056548(n), A056549(n)]`
-/

namespace A060831.P17606837095193081206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056548 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056549 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060831.P17606837095193081206

namespace A060831

/-- `∪[A056548(n), A056549(n)]` -/
def P17606837095193081206.Spec : Prop :=
  ∀ n, (P17606837095193081206.a n : ℤ) = A060831 n

end A060831

/-! ## A060831.P11812068011628172383

`A338733(n)-A002024(n+1)`
-/

namespace A060831.P11812068011628172383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338733 n - A002024 (n + 1)

end

end A060831.P11812068011628172383

namespace A060831

/-- `A338733(n)-A002024(n+1)` -/
def P11812068011628172383.Spec : Prop :=
  ∀ n, P11812068011628172383.a n = A060831 n

end A060831

/-! ## A060831.P7883552292063831391

`A006463(n+1)-A347737(n)`
-/

namespace A060831.P7883552292063831391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 (n + 1) - A347737 n

end

end A060831.P7883552292063831391

namespace A060831

/-- `A006463(n+1)-A347737(n)` -/
def P7883552292063831391.Spec : Prop :=
  ∀ n, P7883552292063831391.a n = A060831 n

end A060831

/-! ## A060831.P4428541842675544086

`(A059851(n)+A006218(n))/2`
-/

namespace A060831.P4428541842675544086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059851 n + A006218 n : ℚ) / 2

end

end A060831.P4428541842675544086

namespace A060831

/-- `(A059851(n)+A006218(n))/2` -/
def P4428541842675544086.Spec : Prop :=
  ∀ n, P4428541842675544086.a n = (A060831 n : ℚ)

end A060831

/-! ## A060831.P11934387979088292229

`A113241(n)+n-A006218(n)`
-/

namespace A060831.P11934387979088292229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113241 n + ((n : ℤ) - A006218 n)

end

end A060831.P11934387979088292229

namespace A060831

/-- `A113241(n)+n-A006218(n)` -/
def P11934387979088292229.Spec : Prop :=
  ∀ n, P11934387979088292229.a n = A060831 n

end A060831

/-! ## A060831.P288153803944745242

`A005843(n)-(n-A248517(n))`
-/

namespace A060831.P288153803944745242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A248517 n)

end

end A060831.P288153803944745242

namespace A060831

/-- `A005843(n)-(n-A248517(n))` -/
def P288153803944745242.Spec : Prop :=
  ∀ n, P288153803944745242.a n = A060831 n

end A060831

/-! ## A060831.P11601823569356541578

`∑[1-(A000007(n)-A069283(n))]`
-/

namespace A060831.P11601823569356541578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000007 n - A069283 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060831.P11601823569356541578

namespace A060831

/-- `∑[1-(A000007(n)-A069283(n))]` -/
def P11601823569356541578.Spec : Prop :=
  ∀ n, P11601823569356541578.a n = A060831 n

end A060831

/-! ## A060831.P10466993170657004568

`A000005(A000265(n))+a(n-1)` with `a(0)=0`
-/

namespace A060831.P10466993170657004568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000005 (A000265 n).toNat + a (n - 1)

end

end A060831.P10466993170657004568

namespace A060831

/-- `A000005(A000265(n))+a(n-1)` -/
def P10466993170657004568.Spec : Prop :=
  ∀ n, P10466993170657004568.a n = A060831 n

end A060831

/-! ## A060831.P7225951297851570582

`∑[A001227(n+1)]-A001227(n+1)`
-/

namespace A060831.P7225951297851570582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001227 (n + 1)

end

end A060831.P7225951297851570582

namespace A060831

/-- `∑[A001227(n+1)]-A001227(n+1)` -/
def P7225951297851570582.Spec : Prop :=
  ∀ n, P7225951297851570582.a n = A060831 n

end A060831

/-! ## A060831.P12164703648193441968

`A006591(n+1)-A263085(n+1)+n`
-/

namespace A060831.P12164703648193441968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006591 (n + 1) - A263085 (n + 1) + (n : ℤ)

end

end A060831.P12164703648193441968

namespace A060831

/-- `A006591(n+1)-A263085(n+1)+n` -/
def P12164703648193441968.Spec : Prop :=
  ∀ n, P12164703648193441968.a n = A060831 n

end A060831

/-!
# A060832: a(n) = Sum_{k>0} floor(n/k!).

The programs for A060832, the canonical program `A060832.P6221694055297476933` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060832 has offset 0).

The definition of A060832 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A060832.P6221694055297476933

`a(n-1)+A055881(n)` with `a(0)=0`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A060832

/-- `a(n-1)+A055881(n)` -/
def P6221694055297476933.Spec : Prop :=
  ∀ n, P6221694055297476933.a n = A060832 n

theorem P6221694055297476933.correct : P6221694055297476933.Spec := by
  intro n
  simp only [A060832]

end A060832

/-! ## A060832.P16137770374531998991

`∑[∑{d}[n, A012245(#)]]`
-/

namespace A060832.P16137770374531998991
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A012245 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060832.P16137770374531998991

namespace A060832

/-- `∑[∑{d}[n, A012245(#)]]` -/
def P16137770374531998991.Spec : Prop :=
  ∀ n, P16137770374531998991.a n = A060832 n

end A060832

/-! ## A060832.P15286099962724857681

`∑[∑{d}[n, A316341(#)]]`
-/

namespace A060832.P15286099962724857681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A316341 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060832.P15286099962724857681

namespace A060832

/-- `∑[∑{d}[n, A316341(#)]]` -/
def P15286099962724857681.Spec : Prop :=
  ∀ n, P15286099962724857681.a n = A060832 n

end A060832

/-! ## A060832.P426645895027208846

`∑[∑{d}[n, floor(2/A275735(#))]]`
-/

namespace A060832.P426645895027208846
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌊2 / (A275735 d : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060832.P426645895027208846

namespace A060832

/-- `∑[∑{d}[n, floor(2/A275735(#))]]` -/
def P426645895027208846.Spec : Prop :=
  ∀ n, P426645895027208846.a n = A060832 n

end A060832

/-! ## A060832.P17429716422789600174

`a(n-1)+A230403(n)+1` with `a(0)=0`
-/

namespace A060832.P17429716422789600174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A230403 n + 1)

end

end A060832.P17429716422789600174

namespace A060832

/-- `a(n-1)+A230403(n)+1` -/
def P17429716422789600174.Spec : Prop :=
  ∀ n, P17429716422789600174.a n = A060832 n

end A060832

/-! ## A060832.P8388957765959707956

`∑[A055881(n+1)]-A055881(n+1)`
-/

namespace A060832.P8388957765959707956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A055881 (n + 1)

end

end A060832.P8388957765959707956

namespace A060832

/-- `∑[A055881(n+1)]-A055881(n+1)` -/
def P8388957765959707956.Spec : Prop :=
  ∀ n, P8388957765959707956.a n = A060832 n

end A060832

/-! ## A060832.P1665065547370634923

`∑[A230403(n+1)]-A230403(n+1)+n`
-/

namespace A060832.P1665065547370634923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A230403 (n + 1) + (n : ℤ)

end

end A060832.P1665065547370634923

namespace A060832

/-- `∑[A230403(n+1)]-A230403(n+1)+n` -/
def P1665065547370634923.Spec : Prop :=
  ∀ n, P1665065547370634923.a n = A060832 n

end A060832

/-! ## A060832.P14580035375664185116

`eq[1, A385685(n)]`
-/

namespace A060832.P14580035375664185116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385685 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060832.P14580035375664185116

namespace A060832

/-- `eq[1, A385685(n)]` -/
def P14580035375664185116.Spec : Prop :=
  ∀ n, (P14580035375664185116.a n : ℤ) = A060832 n

end A060832

/-! ## A060832.P7174940633057785886

`eq[1, A286281(2*n+1)]`
-/

namespace A060832.P7174940633057785886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286281 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060832.P7174940633057785886

namespace A060832

/-- `eq[1, A286281(2*n+1)]` -/
def P7174940633057785886.Spec : Prop :=
  ∀ n, (P7174940633057785886.a n : ℤ) = A060832 n

end A060832

/-! ## A060832.P10814632851746260581

`∑[A055396(A275733(n))]`
-/

namespace A060832.P10814632851746260581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A275733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060832.P10814632851746260581

namespace A060832

/-- `∑[A055396(A275733(n))]` -/
def P10814632851746260581.Spec : Prop :=
  ∀ n, P10814632851746260581.a n = A060832 n

end A060832

/-!
# A060833: Separate the natural numbers into disjoint sets A, B with 1 in A, such that the sum of any 2 distinct elements of the same set never equals 2^k + 2. Sequence gives elements of set A.

The programs for A060833, the canonical program `A060833.P4612277402793640164` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060833 has offset 1).

The definition of A060833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060833.P18391922822159369175

`comp[and(n, n+1)+1+n]+1`
-/

namespace A060833.P18391922822159369175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + 1 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A060833.P18391922822159369175

namespace A060833

/-- `comp[and(n, n+1)+1+n]+1` -/
def P18391922822159369175.Spec : Prop :=
  ∀ n, (P18391922822159369175.a n : ℤ) = A060833 (n + 1)

end A060833

/-! ## A060833.P11367080618542669527

`comp[3*n+2-or(n, n+1)]+1`
-/

namespace A060833.P11367080618542669527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) - (Nat.lor n (n + 1) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A060833.P11367080618542669527

namespace A060833

/-- `comp[3*n+2-or(n, n+1)]+1` -/
def P11367080618542669527.Spec : Prop :=
  ∀ n, (P11367080618542669527.a n : ℤ) = A060833 (n + 1)

end A060833

/-! ## A060833.P16211444920005568524

`comp[A269361(n+1)]+1`
-/

namespace A060833.P16211444920005568524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A060833.P16211444920005568524

namespace A060833

/-- `comp[A269361(n+1)]+1` -/
def P16211444920005568524.Spec : Prop :=
  ∀ n, (P16211444920005568524.a n : ℤ) = A060833 (n + 1)

end A060833

/-! ## A060833.P6551398632834692860

`A106836(n)+a(n-1)` with `a(0)=1`
-/

namespace A060833.P6551398632834692860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A106836 n + a (n - 1)

end

end A060833.P6551398632834692860

namespace A060833

/-- `A106836(n)+a(n-1)` -/
def P6551398632834692860.Spec : Prop :=
  ∀ n, P6551398632834692860.a n = A060833 (n + 1)

end A060833

/-! ## A060833.P4612277402793640164

`eq[0, A073089(2*n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A060833

/-- `eq[0, A073089(2*n+1)]+1` -/
def P4612277402793640164.Spec : Prop :=
  ∀ n, (P4612277402793640164.a n : ℤ) = A060833 (n + 1)

theorem P4612277402793640164.correct : P4612277402793640164.Spec := by
  intro n
  simp only [A060833, Nat.add_sub_cancel]

end A060833

/-! ## A060833.P2468292115212886664

`A091067(n+1)+1-A106836(n+1)`
-/

namespace A060833.P2468292115212886664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091067 (n + 1) + (1 - A106836 (n + 1))

end

end A060833.P2468292115212886664

namespace A060833

/-- `A091067(n+1)+1-A106836(n+1)` -/
def P2468292115212886664.Spec : Prop :=
  ∀ n, P2468292115212886664.a n = A060833 (n + 1)

end A060833

/-! ## A060833.P274828052736915905

`eq[2, A000034(A103391(n+1))]+1`
-/

namespace A060833.P274828052736915905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A103391 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060833.P274828052736915905

namespace A060833

/-- `eq[2, A000034(A103391(n+1))]+1` -/
def P274828052736915905.Spec : Prop :=
  ∀ n, (P274828052736915905.a n : ℤ) = A060833 (n + 1)

end A060833

/-! ## A060833.P15432467512938773447

`record[A322015(n)+1]`
-/

namespace A060833.P15432467512938773447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322015 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060833.P15432467512938773447

namespace A060833

/-- `record[A322015(n)+1]` -/
def P15432467512938773447.Spec : Prop :=
  ∀ n, P15432467512938773447.a n = A060833 (n + 1)

end A060833

/-! ## A060833.P16362260367413003560

`eq[1, A089013(n)]+1`
-/

namespace A060833.P16362260367413003560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089013 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060833.P16362260367413003560

namespace A060833

/-- `eq[1, A089013(n)]+1` -/
def P16362260367413003560.Spec : Prop :=
  ∀ n, (P16362260367413003560.a n : ℤ) = A060833 (n + 1)

end A060833

/-! ## A060833.P10305044449032862316

`lt[A112347(n), 1]+1`
-/

namespace A060833.P10305044449032862316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A060833.P10305044449032862316

namespace A060833

/-- `lt[A112347(n), 1]+1` -/
def P10305044449032862316.Spec : Prop :=
  ∀ n, (P10305044449032862316.a n : ℤ) = A060833 (n + 1)

end A060833

/-! ## A060833.P11206864143461664056

`record[n*A038189(n)+1]`
-/

namespace A060833.P11206864143461664056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A038189 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060833.P11206864143461664056

namespace A060833

/-- `record[n*A038189(n)+1]` -/
def P11206864143461664056.Spec : Prop :=
  ∀ n, P11206864143461664056.a n = A060833 (n + 1)

end A060833

/-! ## A060833.P6208349992440549828

`record[1-n*A121238(n)]`
-/

namespace A060833.P6208349992440549828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * A121238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060833.P6208349992440549828

namespace A060833

/-- `record[1-n*A121238(n)]` -/
def P6208349992440549828.Spec : Prop :=
  ∀ n, P6208349992440549828.a n = A060833 (n + 1)

end A060833

/-! ## A060833.P6677219865626291588

`record[(n+1)*A014707(n)+1]`
-/

namespace A060833.P6677219865626291588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014707 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060833.P6677219865626291588

namespace A060833

/-- `record[(n+1)*A014707(n)+1]` -/
def P6677219865626291588.Spec : Prop :=
  ∀ n, P6677219865626291588.a n = A060833 (n + 1)

end A060833

/-! ## A060833.P18059228263797669946

`record[(n+1)*A000035(A025480(n))]+1`
-/

namespace A060833.P18059228263797669946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000035 (A025480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A060833.P18059228263797669946

namespace A060833

/-- `record[(n+1)*A000035(A025480(n))]+1` -/
def P18059228263797669946.Spec : Prop :=
  ∀ n, P18059228263797669946.a n = A060833 (n + 1)

end A060833

/-! ## A060833.P7690185320700638023

`eq[0, A322016(2*n)]+1`
-/

namespace A060833.P7690185320700638023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322016 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060833.P7690185320700638023

namespace A060833

/-- `eq[0, A322016(2*n)]+1` -/
def P7690185320700638023.Spec : Prop :=
  ∀ n, (P7690185320700638023.a n : ℤ) = A060833 (n + 1)

end A060833

/-! ## A060833.P12584188455245174792

`eq[4, A007400(4*n+2)]+1`
-/

namespace A060833.P12584188455245174792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007400 (4 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060833.P12584188455245174792

namespace A060833

/-- `eq[4, A007400(4*n+2)]+1` -/
def P12584188455245174792.Spec : Prop :=
  ∀ n, (P12584188455245174792.a n : ℤ) = A060833 (n + 1)

end A060833

/-! ## A060833.P12561865751174469506

`eq[0, A038189(3*n)]+1`
-/

namespace A060833.P12561865751174469506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060833.P12561865751174469506

namespace A060833

/-- `eq[0, A038189(3*n)]+1` -/
def P12561865751174469506.Spec : Prop :=
  ∀ n, (P12561865751174469506.a n : ℤ) = A060833 (n + 1)

end A060833

/-! ## A060833.P10343764291795766200

`lt[A125047(3*n+1), 3]+1`
-/

namespace A060833.P10343764291795766200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125047 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A060833.P10343764291795766200

namespace A060833

/-- `lt[A125047(3*n+1), 3]+1` -/
def P10343764291795766200.Spec : Prop :=
  ∀ n, (P10343764291795766200.a n : ℤ) = A060833 (n + 1)

end A060833

/-! ## A060833.P10813985495282137907

`eq[2, A088431(4*n+1)]+1`
-/

namespace A060833.P10813985495282137907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088431 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060833.P10813985495282137907

namespace A060833

/-- `eq[2, A088431(4*n+1)]+1` -/
def P10813985495282137907.Spec : Prop :=
  ∀ n, (P10813985495282137907.a n : ℤ) = A060833 (n + 1)

end A060833

/-!
# A060834: a(n) = 6*n^2 + 6*n + 31.

The programs for A060834, the canonical program `A060834.P16478362893019520902` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060834 has offset 0).

The definition of A060834 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n²+6*n+31` (program `A060834.P16478362893019520902`, by `A060834.P16478362893019520902.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060834.P16478362893019520902

`6*n²+6*n+31`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060834

/-- `6*n²+6*n+31` -/
def P16478362893019520902.Spec : Prop :=
  ∀ n, (P16478362893019520902.a n : ℤ) = A060834 n

theorem P16478362893019520902.correct : P16478362893019520902.Spec := by
  intro n
  simp only [A060834]

end A060834

/-! ## A060834.P9029760828476587308

`∑[a(n-1)+12]` with `a(0)=31, a(1)=12`
-/

namespace A060834.P9029760828476587308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [31, 12] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060834.P9029760828476587308

namespace A060834

/-- `∑[a(n-1)+12]` -/
def P9029760828476587308.Spec : Prop :=
  ∀ n, (P9029760828476587308.a n : ℤ) = A060834 n

end A060834

/-! ## A060834.P10484169733911398485

`Δ[n*(A056220(n)+30)]`
-/

namespace A060834.P10484169733911398485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A056220 n + 30)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060834.P10484169733911398485

namespace A060834

/-- `Δ[n*(A056220(n)+30)]` -/
def P10484169733911398485.Spec : Prop :=
  ∀ n, P10484169733911398485.a n = A060834 n

end A060834

/-! ## A060834.P18410184686356458749

`xor(1, 6*(A027689(n)+1))`
-/

namespace A060834.P18410184686356458749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (6 * (A027689 n + 1))

end

end A060834.P18410184686356458749

namespace A060834

/-- `xor(1, 6*(A027689(n)+1))` -/
def P18410184686356458749.Spec : Prop :=
  ∀ n, P18410184686356458749.a n = A060834 n

end A060834

/-! ## A060834.P10305795645546095373

`xor(1, 6*(A027688(n)+2))`
-/

namespace A060834.P10305795645546095373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (6 * (A027688 n + 2))

end

end A060834.P10305795645546095373

namespace A060834

/-- `xor(1, 6*(A027688(n)+2))` -/
def P10305795645546095373.Spec : Prop :=
  ∀ n, P10305795645546095373.a n = A060834 n

end A060834

/-! ## A060834.P9467810403636557499

`Δ[A007588(n)+30*n+13]`
-/

namespace A060834.P9467810403636557499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 n + (30 * n + 13 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060834.P9467810403636557499

namespace A060834

/-- `Δ[A007588(n)+30*n+13]` -/
def P9467810403636557499.Spec : Prop :=
  ∀ n, P9467810403636557499.a n = A060834 n

end A060834

/-! ## A060834.P926313538081766139

`Δ[A128468(n)+A007588(n)]`
-/

namespace A060834.P926313538081766139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n + A007588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060834.P926313538081766139

namespace A060834

/-- `Δ[A128468(n)+A007588(n)]` -/
def P926313538081766139.Spec : Prop :=
  ∀ n, P926313538081766139.a n = A060834 n

end A060834

/-! ## A060834.P2610225269594974249

`A017605(∑[n]+2)`
-/

namespace A060834.P2610225269594974249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A060834.P2610225269594974249

namespace A060834

/-- `A017605(∑[n]+2)` -/
def P2610225269594974249.Spec : Prop :=
  ∀ n, P2610225269594974249.a n = A060834 n

end A060834

/-! ## A060834.P4553355649980034698

`A016921(A027690(n))`
-/

namespace A060834.P4553355649980034698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A027690 n).toNat

end

end A060834.P4553355649980034698

namespace A060834

/-- `A016921(A027690(n))` -/
def P4553355649980034698.Spec : Prop :=
  ∀ n, P4553355649980034698.a n = A060834 n

end A060834

/-! ## A060834.P2011857183313366212

`A092242(A027691(n))`
-/

namespace A060834.P2011857183313366212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092242 (A027691 n).toNat

end

end A060834.P2011857183313366212

namespace A060834

/-- `A092242(A027691(n))` -/
def P2011857183313366212.Spec : Prop :=
  ∀ n, P2011857183313366212.a n = A060834 n

end A060834

/-! ## A060834.P7463851306660750937

`A100764(A027693(n))`
-/

namespace A060834.P7463851306660750937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100764 (A027693 n).toNat

end

end A060834.P7463851306660750937

namespace A060834

/-- `A100764(A027693(n))` -/
def P7463851306660750937.Spec : Prop :=
  ∀ n, P7463851306660750937.a n = A060834 n

end A060834

/-! ## A060834.P9881198948912472926

`A166639(A027689(n))`
-/

namespace A060834.P9881198948912472926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166639 (A027689 n).toNat

end

end A060834.P9881198948912472926

namespace A060834

/-- `A166639(A027689(n))` -/
def P9881198948912472926.Spec : Prop :=
  ∀ n, P9881198948912472926.a n = A060834 n

end A060834

/-!
# A060835: Least number of the form x^2 + y^3 (x, y positive) in n ways.

The programs for A060835, there is no canonical definition to state claims against.
-/

/-! ## A060835.P17948850687371578610

`A122054(n+1)`
-/

namespace A060835.P17948850687371578610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122054 (n + 1)

end

end A060835.P17948850687371578610

/-! ## A060835.P3427684906782877445

`abs(Δ[-∑[A122054(n)]])`
-/

namespace A060835.P3427684906782877445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122054 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A060835.P3427684906782877445

/-! ## A060835.P7093838498902922621

`or(char[1], A122054(A348553(n)))`
-/

namespace A060835.P7093838498902922621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A122054 (A348553 n).toNat)

end

end A060835.P7093838498902922621

/-! ## A060835.P626998335504994637

`lcm(A054977(n), A122054(A348553(n)))`
-/

namespace A060835.P626998335504994637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A122054 (A348553 n).toNat)

end

end A060835.P626998335504994637

/-! ## A060835.P3648023404092802357

`A007318(∑[n])*A122054(A348553(n))`
-/

namespace A060835.P3648023404092802357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A122054 (A348553 n).toNat

end

end A060835.P3648023404092802357

/-!
# A060836: Number of permutations of n letters where exactly 5 change position.

The programs for A060836, the canonical program `A060836.P14089847554248189083` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060836 has offset 1).

The definition of A060836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060836.P14089847554248189083

`44*C(n+1, 5)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060836

/-- `44*C(n+1, 5)` -/
def P14089847554248189083.Spec : Prop :=
  ∀ n, (P14089847554248189083.a n : ℤ) = A060836 (n + 1)

theorem P14089847554248189083.correct : P14089847554248189083.Spec := by
  intro n
  simp only [A060836, Nat.add_sub_cancel]

end A060836

/-! ## A060836.P13267270918964289076

`∑[4*11*C(n, 4)]`
-/

namespace A060836.P13267270918964289076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (11 * Nat.choose n 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060836.P13267270918964289076

namespace A060836

/-- `∑[4*11*C(n, 4)]` -/
def P13267270918964289076.Spec : Prop :=
  ∀ n, (P13267270918964289076.a n : ℤ) = A060836 (n + 1)

end A060836

/-! ## A060836.P1924403268491584279

`11*A210569(n)`
-/

namespace A060836.P1924403268491584279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A210569 n

end

end A060836.P1924403268491584279

namespace A060836

/-- `11*A210569(n)` -/
def P1924403268491584279.Spec : Prop :=
  ∀ n, P1924403268491584279.a n = A060836 (n + 1)

end A060836

/-! ## A060836.P739012919841889143

`∑[4*11*A000332(n)]`
-/

namespace A060836.P739012919841889143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (11 * A000332 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060836.P739012919841889143

namespace A060836

/-- `∑[4*11*A000332(n)]` -/
def P739012919841889143.Spec : Prop :=
  ∀ n, P739012919841889143.a n = A060836 (n + 1)

end A060836

/-! ## A060836.P1372109689565708262

`44*A000389(n+1)`
-/

namespace A060836.P1372109689565708262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  44 * A000389 (n + 1)

end

end A060836.P1372109689565708262

namespace A060836

/-- `44*A000389(n+1)` -/
def P1372109689565708262.Spec : Prop :=
  ∀ n, P1372109689565708262.a n = A060836 (n + 1)

end A060836

/-!
# A060838: Rank of elliptic curve x^3 + y^3 = n.

The programs for A060838, there is no canonical definition to state claims against.
-/

/-! ## A060838.P12470500269299285115

`A060950((4*(n+1))²)`
-/

namespace A060838.P12470500269299285115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060950 ((4 * (n + 1)) ^ 2)

end

end A060838.P12470500269299285115

/-! ## A060838.P14887225100048640469

`A194591(A091242(3*n+1)%A000043(2*(n+2)))`
-/

namespace A060838.P14887225100048640469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194591 (Int.tmod (A091242 (3 * n + 1)) (A000043 (2 * (n + 2)))).toNat

end

end A060838.P14887225100048640469

/-! ## A060838.P8724411845889648952

`A225654(and(A026536(3*n+4), A330070(2*(n+2))))`
-/

namespace A060838.P8724411845889648952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225654 (Int.land (A026536 (3 * n + 4)) (A330070 (2 * (n + 2)))).toNat

end

end A060838.P8724411845889648952

/-! ## A060838.P12350341292539309950

`A054897(A080530(n)%A020705(n))`
-/

namespace A060838.P12350341292539309950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054897 (Int.tmod (A080530 n) (A020705 n)).toNat

end

end A060838.P12350341292539309950

/-! ## A060838.P13433120240502629930

`and(A053645(A326080(n)), A087116(n))`
-/

namespace A060838.P13433120240502629930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053645 (A326080 n).toNat) (A087116 n)

end

end A060838.P13433120240502629930

/-!
# A060839: Number of solutions to x^3 == 1 (mod n).

The programs for A060839, the canonical program `A060839.P16883216215693058205` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060839 has offset 1).

The definition of A060839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060839.P5185233448558450027

`3^A357905(n+1)`
-/

namespace A060839.P5185233448558450027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A357905 (n + 1) : ℤ)

end

end A060839.P5185233448558450027

namespace A060839

/-- `3^A357905(n+1)` -/
def P5185233448558450027.Spec : Prop :=
  ∀ n, P5185233448558450027.a n = (A060839 (n + 1) : ℚ)

end A060839

/-! ## A060839.P15812638624876070965

`∑{d}[n+1, A160498(#)]`
-/

namespace A060839.P15812638624876070965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A160498 d

end

end A060839.P15812638624876070965

namespace A060839

/-- `∑{d}[n+1, A160498(#)]` -/
def P15812638624876070965.Spec : Prop :=
  ∀ n, P15812638624876070965.a n = A060839 (n + 1)

end A060839

/-! ## A060839.P16883216215693058205

`A000265(A319100(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A060839

/-- `A000265(A319100(n+1))` -/
def P16883216215693058205.Spec : Prop :=
  ∀ n, P16883216215693058205.a n = A060839 (n + 1)

theorem P16883216215693058205.correct : P16883216215693058205.Spec := by
  intro n
  simp only [A060839, Nat.add_sub_cancel]

end A060839

/-! ## A060839.P8572145144776552416

`gcd(A016950(n), A319100(n+1))`
-/

namespace A060839.P8572145144776552416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016950 n) (A319100 (n + 1))

end

end A060839.P8572145144776552416

namespace A060839

/-- `gcd(A016950(n), A319100(n+1))` -/
def P8572145144776552416.Spec : Prop :=
  ∀ n, (P8572145144776552416.a n : ℤ) = A060839 (n + 1)

end A060839

/-! ## A060839.P5381932830189057443

`Δ[A005728(n)]/A087692(n+1)`
-/

namespace A060839.P5381932830189057443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A087692 (n + 1) : ℚ)

end

end A060839.P5381932830189057443

namespace A060839

/-- `Δ[A005728(n)]/A087692(n+1)` -/
def P5381932830189057443.Spec : Prop :=
  ∀ n, P5381932830189057443.a n = (A060839 (n + 1) : ℚ)

end A060839

/-! ## A060839.P6013536043803512835

`A000010(n+1)/A087692(n+1)`
-/

namespace A060839.P6013536043803512835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A087692 (n + 1) : ℚ)

end

end A060839.P6013536043803512835

namespace A060839

/-- `A000010(n+1)/A087692(n+1)` -/
def P6013536043803512835.Spec : Prop :=
  ∀ n, P6013536043803512835.a n = (A060839 (n + 1) : ℚ)

end A060839

/-! ## A060839.P6284737324584590319

`A046073(n+1)/A293483(n+1)`
-/

namespace A060839.P6284737324584590319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046073 (n + 1) : ℚ) / (A293483 (n + 1) : ℚ)

end

end A060839.P6284737324584590319

namespace A060839

/-- `A046073(n+1)/A293483(n+1)` -/
def P6284737324584590319.Spec : Prop :=
  ∀ n, P6284737324584590319.a n = (A060839 (n + 1) : ℚ)

end A060839

/-! ## A060839.P9196574553527573086

`A319100(n+1)/A060594(n+1)`
-/

namespace A060839.P9196574553527573086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319100 (n + 1) : ℚ) / (A060594 (n + 1) : ℚ)

end

end A060839.P9196574553527573086

namespace A060839

/-- `A319100(n+1)/A060594(n+1)` -/
def P9196574553527573086.Spec : Prop :=
  ∀ n, P9196574553527573086.a n = (A060839 (n + 1) : ℚ)

end A060839

/-! ## A060839.P8430610785593130141

`A319100(n+1)/(A155828(n+1)+1)`
-/

namespace A060839.P8430610785593130141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319100 (n + 1) : ℚ) / (A155828 (n + 1) + 1 : ℚ)

end

end A060839.P8430610785593130141

namespace A060839

/-- `A319100(n+1)/(A155828(n+1)+1)` -/
def P8430610785593130141.Spec : Prop :=
  ∀ n, P8430610785593130141.a n = (A060839 (n + 1) : ℚ)

end A060839

/-! ## A060839.P14052198176816195468

`A319100(n+1)/A322362(2^val(A319100(n+1), 2))`
-/

namespace A060839.P14052198176816195468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319100 (n + 1) : ℚ) / (A322362 (2 ^ SequenceMachineLib.valuation (A319100 (n + 1)).toNat 2) : ℚ)

end

end A060839.P14052198176816195468

namespace A060839

/-- `A319100(n+1)/A322362(2^val(A319100(n+1), 2))` -/
def P14052198176816195468.Spec : Prop :=
  ∀ n, P14052198176816195468.a n = (A060839 (n + 1) : ℚ)

end A060839

/-! ## A060839.P2818167893451420145

`A046073(n+1)*A060594(n+1)/A087692(n+1)`
-/

namespace A060839.P2818167893451420145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046073 (n + 1) * A060594 (n + 1) : ℚ) / (A087692 (n + 1) : ℚ)

end

end A060839.P2818167893451420145

namespace A060839

/-- `A046073(n+1)*A060594(n+1)/A087692(n+1)` -/
def P2818167893451420145.Spec : Prop :=
  ∀ n, P2818167893451420145.a n = (A060839 (n + 1) : ℚ)

end A060839

/-! ## A060839.P14437990094764724566

`A115069(n+1)/A087692(n+1)*A115070(n+1)`
-/

namespace A060839.P14437990094764724566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115069 (n + 1) : ℚ) / (A087692 (n + 1) : ℚ) * (A115070 (n + 1) : ℚ)

end

end A060839.P14437990094764724566

namespace A060839

/-- `A115069(n+1)/A087692(n+1)*A115070(n+1)` -/
def P14437990094764724566.Spec : Prop :=
  ∀ n, P14437990094764724566.a n = (A060839 (n + 1) : ℚ)

end A060839

/-! ## A060839.P1349902481570279622

`A046073(n+1)/A000010(n+1)*A319100(n+1)`
-/

namespace A060839.P1349902481570279622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046073 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A319100 (n + 1) : ℚ)

end

end A060839.P1349902481570279622

namespace A060839

/-- `A046073(n+1)/A000010(n+1)*A319100(n+1)` -/
def P1349902481570279622.Spec : Prop :=
  ∀ n, P1349902481570279622.a n = (A060839 (n + 1) : ℚ)

end A060839

/-! ## A060839.P1697623441173445822

`A073103(n+1)/A087692(n+1)*A250207(n+1)`
-/

namespace A060839.P1697623441173445822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073103 (n + 1) : ℚ) / (A087692 (n + 1) : ℚ) * (A250207 (n + 1) : ℚ)

end

end A060839.P1697623441173445822

namespace A060839

/-- `A073103(n+1)/A087692(n+1)*A250207(n+1)` -/
def P1697623441173445822.Spec : Prop :=
  ∀ n, P1697623441173445822.a n = (A060839 (n + 1) : ℚ)

end A060839

/-! ## A060839.P1180910570006089310

`A247257(n+1)/A087692(n+1)*A293485(n+1)`
-/

namespace A060839.P1180910570006089310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247257 (n + 1) : ℚ) / (A087692 (n + 1) : ℚ) * (A293485 (n + 1) : ℚ)

end

end A060839.P1180910570006089310

namespace A060839

/-- `A247257(n+1)/A087692(n+1)*A293485(n+1)` -/
def P1180910570006089310.Spec : Prop :=
  ∀ n, P1180910570006089310.a n = (A060839 (n + 1) : ℚ)

end A060839

/-! ## A060839.P3370347035893686779

`A293482(n+1)/A087692(n+1)*A319099(n+1)`
-/

namespace A060839.P3370347035893686779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293482 (n + 1) : ℚ) / (A087692 (n + 1) : ℚ) * (A319099 (n + 1) : ℚ)

end

end A060839.P3370347035893686779

namespace A060839

/-- `A293482(n+1)/A087692(n+1)*A319099(n+1)` -/
def P3370347035893686779.Spec : Prop :=
  ∀ n, P3370347035893686779.a n = (A060839 (n + 1) : ℚ)

end A060839

/-! ## A060839.P4043909144570973462

`lcm(A053575(n+1), A293483(n+1))/A293483(n+1)`
-/

namespace A060839.P4043909144570973462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A053575 (n + 1)) (A293483 (n + 1)) : ℚ) / (A293483 (n + 1) : ℚ)

end

end A060839.P4043909144570973462

namespace A060839

/-- `lcm(A053575(n+1), A293483(n+1))/A293483(n+1)` -/
def P4043909144570973462.Spec : Prop :=
  ∀ n, P4043909144570973462.a n = (A060839 (n + 1) : ℚ)

end A060839

/-! ## A060839.P12726573542931482818

`A319100(n+1)/abs((A039649(n+1)-1)/A046073(n+1))`
-/

namespace A060839.P12726573542931482818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319100 (n + 1) : ℚ) / |(A039649 (n + 1) - 1 : ℚ) / (A046073 (n + 1) : ℚ)|

end

end A060839.P12726573542931482818

namespace A060839

/-- `A319100(n+1)/abs((A039649(n+1)-1)/A046073(n+1))` -/
def P12726573542931482818.Spec : Prop :=
  ∀ n, P12726573542931482818.a n = (A060839 (n + 1) : ℚ)

end A060839

/-! ## A060839.P12011489053822363231

`A319100(n+1)/floor((A109606(n+1)+1)/A046073(n+1))`
-/

namespace A060839.P12011489053822363231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319100 (n + 1) : ℚ) / (⌊(A109606 (n + 1) + 1 : ℚ) / (A046073 (n + 1) : ℚ)⌋ : ℚ)

end

end A060839.P12011489053822363231

namespace A060839

/-- `A319100(n+1)/floor((A109606(n+1)+1)/A046073(n+1))` -/
def P12011489053822363231.Spec : Prop :=
  ∀ n, P12011489053822363231.a n = (A060839 (n + 1) : ℚ)

end A060839

/-!
# A060840: Number of irreducible representations of symmetric group S_n whose degree is not divisible by 3.

The programs for A060840, there is no canonical definition to state claims against.
-/

/-! ## A060840.P7418905173214895880

`A000041(n+1)-A061569(n+1)`
-/

namespace A060840.P7418905173214895880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A061569 (n + 1)

end

end A060840.P7418905173214895880

/-! ## A060840.P17301854016006627549

`∑[A187219(n+1)]-A061569(n+1)`
-/

namespace A060840.P17301854016006627549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A061569 (n + 1)

end

end A060840.P17301854016006627549

/-! ## A060840.P17144605954100038181

`A059867(n+1)+A060368(n+1)-A061569(n+1)`
-/

namespace A060840.P17144605954100038181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059867 (n + 1) + (A060368 (n + 1) - A061569 (n + 1))

end

end A060840.P17144605954100038181

/-! ## A060840.P465452491631812335

`Δ[A000070(n)]-A061569(n+1)`
-/

namespace A060840.P465452491631812335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A061569 (n + 1)

end

end A060840.P465452491631812335

/-! ## A060840.P1790304709998331934

`record[A035363(n)]-A061569(n+1)`
-/

namespace A060840.P1790304709998331934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A061569 (n + 1)

end

end A060840.P1790304709998331934

/-! ## A060840.P6573265140558892807

`A035363(A005843(n+1))-A061569(n+1)`
-/

namespace A060840.P6573265140558892807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A005843 (n + 1)).toNat - A061569 (n + 1)

end

end A060840.P6573265140558892807

/-! ## A060840.P11669401604426862873

`record[A114099(n)]-A061569(n+1)`
-/

namespace A060840.P11669401604426862873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A061569 (n + 1)

end

end A060840.P11669401604426862873

/-! ## A060840.P3542635856689703171

`A091355(A000124(n))-A061569(n+1)`
-/

namespace A060840.P3542635856689703171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091355 (A000124 n).toNat - A061569 (n + 1)

end

end A060840.P3542635856689703171

/-! ## A060840.P7179112237299800981

`A238343(∑[n+1])-A061569(n+1)`
-/

namespace A060840.P7179112237299800981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (∑ j ∈ Finset.range (n + 1), f1 j) - A061569 (n + 1)

end

end A060840.P7179112237299800981

/-!
# A060841: Numerator of 1/det(M) where M is the n X n matrix with M[i,j] = 1/lcm(i,j).

The programs for A060841, there is no canonical definition to state claims against.
-/

/-! ## A060841.P13016090694076920832

`∏[A053191(n+1)]/∏[A127473(n+1)]`
-/

namespace A060841.P13016090694076920832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127473 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A060841.P13016090694076920832

/-! ## A060841.P9753229270443949897

`∏[A187296(A000124(n))/A000010(n+1)]`
-/

namespace A060841.P9753229270443949897
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187296 (A000124 n).toNat : ℚ) / (A000010 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060841.P9753229270443949897

/-! ## A060841.P11497200880892045030

`a(n-1)/Δ[A005728(n)]*A000005(2^n)²` with `a(0)=1, a(1)=4`
-/

namespace A060841.P11497200880892045030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) / (f1 (n + 1) - f1 n : ℚ) * (A000005 (2 ^ n) ^ 2 : ℚ)

end

end A060841.P11497200880892045030

/-! ## A060841.P16907277722378749822

`∏[(n+1)²/A000010(A187829(n+1))]`
-/

namespace A060841.P16907277722378749822
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A000010 (A187829 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060841.P16907277722378749822

/-! ## A060841.P1996834714501921023

`∏[A000583(A187829(n+1))/A053191(n+1)]`
-/

namespace A060841.P1996834714501921023
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 (A187829 (n + 1)).toNat : ℚ) / (A053191 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060841.P1996834714501921023

/-!
# A060842: a(n) = (binomial(2*p,p)-2)/p^2 where p = prime(n).

The programs for A060842, there is no canonical definition to state claims against.
-/

/-! ## A060842.P4772576142690345548

`A177454(n+1)/A000040(n+1)`
-/

namespace A060842.P4772576142690345548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177454 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A060842.P4772576142690345548

/-! ## A060842.P17268240458366296932

`record[∏{p}[n, A268619(#)]]`
-/

namespace A060842.P17268240458366296932
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A268619 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060842.P17268240458366296932

/-! ## A060842.P13113140672938263921

`A268619(p?[comp[n²]])`
-/

namespace A060842.P13113140672938263921
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268619 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A060842.P13113140672938263921

/-! ## A060842.P11588904177482458288

`A024500(A000040(n+1))`
-/

namespace A060842.P11588904177482458288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024500 (A000040 (n + 1)).toNat

end

end A060842.P11588904177482458288

/-! ## A060842.P11264891179089175501

`A024500(A049551(n+1))`
-/

namespace A060842.P11264891179089175501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024500 (A049551 (n + 1)).toNat

end

end A060842.P11264891179089175501

/-!
# A060844: Primes of the form 6*k^2 + 6*k + 31.

The programs for A060844, there is no canonical definition to state claims against.
-/

/-! ## A060844.P3195454263308160447

`A168028(n+30)`
-/

namespace A060844.P3195454263308160447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168028 (n + 30)

end

end A060844.P3195454263308160447

/-! ## A060844.P9027314629045198156

`∩[A139883(n+1), A060834(n)]`
-/

namespace A060844.P9027314629045198156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060834 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060844.P9027314629045198156

/-! ## A060844.P3661776018402073761

`p?[∑[12*n]+31]`
-/

namespace A060844.P3661776018402073761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 31

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A060844.P3661776018402073761

/-! ## A060844.P1113071861533766025

`abs(p?[2*(n+1)*3*n+31]-n)+n`
-/

namespace A060844.P1113071861533766025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) * (3 * n) + 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (n : ℤ)| + (n : ℤ)

end

end A060844.P1113071861533766025

/-! ## A060844.P13036105724996924055

`or(1, p?[A060834(n)])`
-/

namespace A060844.P13036105724996924055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A060844.P13036105724996924055

/-! ## A060844.P3295607912700662666

`p?[A060834(n)]%A016973(n)`
-/

namespace A060844.P3295607912700662666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016973 n)

end

end A060844.P3295607912700662666

/-! ## A060844.P7765967159351251452

`p?[A060834(n)]*char[A064429(n)]`
-/

namespace A060844.P7765967159351251452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060834 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A060844.P7765967159351251452

/-! ## A060844.P9436630409434400838

`A000007(n+1)+p?[A060834(n)]`
-/

namespace A060844.P9436630409434400838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060844.P9436630409434400838

/-! ## A060844.P7875454787770973341

`A000035(2*n)+p?[A060834(n)]`
-/

namespace A060844.P7875454787770973341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060844.P7875454787770973341

/-! ## A060844.P12994458255922999222

`p?[A060834(n)]*A057979(2*n)`
-/

namespace A060844.P12994458255922999222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A057979 (2 * n)

end

end A060844.P12994458255922999222

/-! ## A060844.P210474077468256722

`lcm(p?[A060834(n)], A008836(n+1))`
-/

namespace A060844.P210474077468256722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060834 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A008836 (n + 1))

end

end A060844.P210474077468256722

/-! ## A060844.P12123299941278975956

`A007318(C(2, n))*p?[A060834(n)]`
-/

namespace A060844.P12123299941278975956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060844.P12123299941278975956

/-! ## A060844.P16043755917522470612

`char[A237927(n+1)]+p?[A060834(n)]`
-/

namespace A060844.P16043755917522470612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060834 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A060844.P16043755917522470612

/-! ## A060844.P33225311704084421

`p?[A060834(n)]/A007318(C(n, n²))`
-/

namespace A060844.P33225311704084421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060834 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose n (n ^ 2)) : ℚ)

end

end A060844.P33225311704084421

/-! ## A060844.P16776788356290586945

`A000108(C(2, n+2))*p?[A060834(n)]`
-/

namespace A060844.P16776788356290586945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060844.P16776788356290586945

/-! ## A060844.P1492872722679757009

`p?[A060834(n)]*A000142(C(2, n+2))`
-/

namespace A060844.P1492872722679757009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000142 (Nat.choose 2 (n + 2))

end

end A060844.P1492872722679757009

/-! ## A060844.P12426156157768253361

`A007318(val(n²+12, 4)!)*p?[A060834(n)]`
-/

namespace A060844.P12426156157768253361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.factorial (SequenceMachineLib.valuation (n ^ 2 + 12) 4)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060844.P12426156157768253361

/-! ## A060844.P10204635190897482933

`A000027(p?[A060834(n)])`
-/

namespace A060844.P10204635190897482933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A060844.P10204635190897482933

/-! ## A060844.P15341397039250003287

`∩[A068229(n+1), A060834(n)]`
-/

namespace A060844.P15341397039250003287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060834 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060844.P15341397039250003287

/-! ## A060844.P11190069015021225338

`∩[A385223(n+1), A060834(n)]`
-/

namespace A060844.P11190069015021225338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060834 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060844.P11190069015021225338

/-!
# A060845: Largest prime < a nontrivial power of a prime.

The programs for A060845, there is no canonical definition to state claims against.
-/

/-! ## A060845.P6881529359232964670

`A060846(n+1)-A060849(n+1)`
-/

namespace A060845.P6881529359232964670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060846 (n + 1) - A060849 (n + 1)

end

end A060845.P6881529359232964670

/-! ## A060845.P7735820344192675940

`A025475(n+2)-A060847(n+1)`
-/

namespace A060845.P7735820344192675940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 2) - A060847 (n + 1)

end

end A060845.P7735820344192675940

/-! ## A060845.P9544134182348074903

`A025476(n+1)*A053211(n+1)-A060847(n+1)`
-/

namespace A060845.P9544134182348074903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025476 (n + 1) * A053211 (n + 1) - A060847 (n + 1)

end

end A060845.P9544134182348074903

/-! ## A060845.P8419333576689949005

`A000027(A134612(n+1)-(A060849(n+1)-A060848(n+1)))`
-/

namespace A060845.P8419333576689949005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A134612 (n + 1) - (A060849 (n + 1) - A060848 (n + 1))).toNat

end

end A060845.P8419333576689949005

/-! ## A060845.P16315917388791919690

`p?[A008578(A024621(n+1)-n)]`
-/

namespace A060845.P16315917388791919690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A024621 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060845.P16315917388791919690

/-! ## A060845.P6723653595877278432

`A008578(A024621(n+2)-(n+1))`
-/

namespace A060845.P6723653595877278432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A024621 (n + 2) - (n + 1 : ℤ)).toNat

end

end A060845.P6723653595877278432

/-! ## A060845.P8689796096384192575

`A000040(A024621(n+2)-(n+2))`
-/

namespace A060845.P8689796096384192575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A024621 (n + 2) - (n + 2 : ℤ)).toNat

end

end A060845.P8689796096384192575

/-! ## A060845.P2657758643168184438

`A006005(A024621(n+2)-(n+2))`
-/

namespace A060845.P2657758643168184438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A024621 (n + 2) - (n + 2 : ℤ)).toNat

end

end A060845.P2657758643168184438

/-! ## A060845.P334201490077473199

`A000040(A024621(n+2)+A001489(n+3)+1)`
-/

namespace A060845.P334201490077473199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A024621 (n + 2) + A001489 (n + 3) + 1).toNat

end

end A060845.P334201490077473199

/-! ## A060845.P3659736747250978660

`A000961(A024620(A024621(n+2)-(n+2)))`
-/

namespace A060845.P3659736747250978660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A024620 (A024621 (n + 2) - (n + 2 : ℤ)).toNat).toNat

end

end A060845.P3659736747250978660

/-! ## A060845.P15052832493937304212

`A246655(A027883(A024621(n+2)-(n+2)))`
-/

namespace A060845.P15052832493937304212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (A027883 (A024621 (n + 2) - (n + 2 : ℤ)).toNat).toNat

end

end A060845.P15052832493937304212

/-! ## A060845.P9452755833368749615

`A000040(A000720(∑[A053707(n+1)]))`
-/

namespace A060845.P9452755833368749615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A060845.P9452755833368749615

/-! ## A060845.P15762059970429795332

`A006530(A134612(n+1)-(A060849(n+1)-A060848(n+1)))`
-/

namespace A060845.P15762059970429795332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A134612 (n + 1) - (A060849 (n + 1) - A060848 (n + 1))).toNat

end

end A060845.P15762059970429795332

/-!
# A060846: Smallest prime > the n-th nontrivial power of a prime.

The programs for A060846, there is no canonical definition to state claims against.
-/

/-! ## A060846.P8688865180382785300

`A007918(A025475(n+2))`
-/

namespace A060846.P8688865180382785300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A025475 (n + 2)).toNat

end

end A060846.P8688865180382785300

/-! ## A060846.P15678375658461503982

`A060848(n+1)+∪[A073045(n+1), A246549(n+1)]`
-/

namespace A060846.P15678375658461503982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060848 (n + 1) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A060846.P15678375658461503982

/-! ## A060846.P9848729945239237634

`A060848(n+1)+A025475(n+2)`
-/

namespace A060846.P9848729945239237634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060848 (n + 1) + A025475 (n + 2)

end

end A060846.P9848729945239237634

/-! ## A060846.P16285536420271427751

`A060848(n+1)+∩[A073540(n+1), A134611(n+1)]`
-/

namespace A060846.P16285536420271427751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060848 (n + 1) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A060846.P16285536420271427751

/-! ## A060846.P11276139480747401548

`A060849(n+1)+A060845(n+1)`
-/

namespace A060846.P11276139480747401548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060849 (n + 1) + A060845 (n + 1)

end

end A060846.P11276139480747401548

/-! ## A060846.P4455871212337471146

`A060845(n+1)+A060848(n+1)+A060847(n+1)`
-/

namespace A060846.P4455871212337471146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060845 (n + 1) + (A060848 (n + 1) + A060847 (n + 1))

end

end A060846.P4455871212337471146

/-! ## A060846.P16918711829460732735

`A060848(n+1)+∩[A073540(n+1), A076292(n+1)]`
-/

namespace A060846.P16918711829460732735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060848 (n + 1) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A060846.P16918711829460732735

/-! ## A060846.P16411266118291910005

`A008578(A024621(n+2)-n)`
-/

namespace A060846.P16411266118291910005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A024621 (n + 2) - (n : ℤ)).toNat

end

end A060846.P16411266118291910005

/-! ## A060846.P7335085219398351959

`A000040(A024621(n+2)-(n+1))`
-/

namespace A060846.P7335085219398351959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A024621 (n + 2) - (n + 1 : ℤ)).toNat

end

end A060846.P7335085219398351959

/-! ## A060846.P3030763826723483203

`A151800(A060845(n+1))`
-/

namespace A060846.P3030763826723483203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A060845 (n + 1)).toNat

end

end A060846.P3030763826723483203

/-! ## A060846.P6072412046040868051

`A151800(A134612(n+1))`
-/

namespace A060846.P6072412046040868051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A134612 (n + 1)).toNat

end

end A060846.P6072412046040868051

/-! ## A060846.P12372199821508730579

`A151800(A249435(n+2))`
-/

namespace A060846.P12372199821508730579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A249435 (n + 2)).toNat

end

end A060846.P12372199821508730579

/-! ## A060846.P489142027130442383

`A151800(∑[A053707(n+1)])`
-/

namespace A060846.P489142027130442383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A060846.P489142027130442383

/-! ## A060846.P5739844252475145974

`A006530(A134612(n+1)+A060848(n+1))`
-/

namespace A060846.P5739844252475145974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A134612 (n + 1) + A060848 (n + 1)).toNat

end

end A060846.P5739844252475145974

/-! ## A060846.P1545257939145872103

`A020639(A134612(n+1)+A060848(n+1))`
-/

namespace A060846.P1545257939145872103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A134612 (n + 1) + A060848 (n + 1)).toNat

end

end A060846.P1545257939145872103

/-!
# A060847: Difference between a nontrivial prime power (A246547) and the previous prime.

The programs for A060847, there is no canonical definition to state claims against.
-/

/-! ## A060847.P11808785732317066730

`A060849(n+1)-A060848(n+1)`
-/

namespace A060847.P11808785732317066730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060849 (n + 1) - A060848 (n + 1)

end

end A060847.P11808785732317066730

/-! ## A060847.P15753669298759311901

`A025475(n+2)-A060845(n+1)`
-/

namespace A060847.P15753669298759311901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 2) - A060845 (n + 1)

end

end A060847.P15753669298759311901

/-! ## A060847.P13931718093600746499

`A249435(n+2)+1-A060845(n+1)`
-/

namespace A060847.P13931718093600746499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (n + 2) + 1 - A060845 (n + 1)

end

end A060847.P13931718093600746499

/-! ## A060847.P955846886044211797

`∑[A053707(n+1)]+1-A060845(n+1)`
-/

namespace A060847.P955846886044211797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A060845 (n + 1)

end

end A060847.P955846886044211797

/-! ## A060847.P11076542059460229938

`A053198(n+1)+A053211(n+1)-A060845(n+1)`
-/

namespace A060847.P11076542059460229938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053198 (n + 1) + (A053211 (n + 1) - A060845 (n + 1))

end

end A060847.P11076542059460229938

/-! ## A060847.P16741774871241629643

`A025475(n+2)%(A060845(n+1)%A067194(n+1))`
-/

namespace A060847.P16741774871241629643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025475 (n + 2)) (Int.tmod (A060845 (n + 1)) (A067194 (n + 1)))

end

end A060847.P16741774871241629643

/-! ## A060847.P13009811955434910485

`∩[A073540(n+1), A249125(n+1)]-A060845(n+1)`
-/

namespace A060847.P13009811955434910485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249125 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A060845 (n + 1)

end

end A060847.P13009811955434910485

/-!
# A060848: Difference between a nontrivial prime power (A025475) and the next prime.

The programs for A060848, there is no canonical definition to state claims against.
-/

/-! ## A060848.P4021556206651421265

`A060849(n+1)-A060847(n+1)`
-/

namespace A060848.P4021556206651421265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060849 (n + 1) - A060847 (n + 1)

end

end A060848.P4021556206651421265

/-! ## A060848.P1509165642772578208

`A060846(n+1)%A053211(n+1)`
-/

namespace A060848.P1509165642772578208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060846 (n + 1)) (A053211 (n + 1))

end

end A060848.P1509165642772578208

/-! ## A060848.P2647931032129865615

`A060846(n+1)-(∑[A053707(n+1)]+1)`
-/

namespace A060848.P2647931032129865615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060846 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A060848.P2647931032129865615

/-! ## A060848.P17328943206006103141

`A060846(n+1)-A025475(n+2)`
-/

namespace A060848.P17328943206006103141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060846 (n + 1) - A025475 (n + 2)

end

end A060848.P17328943206006103141

/-! ## A060848.P6064644903799392305

`A060846(n+1)-∩[A073540(n+1), A134611(n+1)]`
-/

namespace A060848.P6064644903799392305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060846 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A060848.P6064644903799392305

/-! ## A060848.P7387453357708148361

`A060846(n+1)-∩[A080062(n+1), A249125(n+1)]`
-/

namespace A060848.P7387453357708148361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249125 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060846 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A060848.P7387453357708148361

/-! ## A060848.P14549527407688155845

`A060849(n+1)-(A025475(n+2)-A060845(n+1))`
-/

namespace A060848.P14549527407688155845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060849 (n + 1) - (A025475 (n + 2) - A060845 (n + 1))

end

end A060848.P14549527407688155845

/-! ## A060848.P16576008341674654834

`A000040(A024621(n+2)-(n+1))-A134612(n+1)`
-/

namespace A060848.P16576008341674654834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A024621 (n + 2) - (n + 1 : ℤ)).toNat - A134612 (n + 1)

end

end A060848.P16576008341674654834

/-! ## A060848.P8469674403546681908

`A000040(A024621(n+2)-(n+1))-A025475(n+2)`
-/

namespace A060848.P8469674403546681908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A024621 (n + 2) - (n + 1 : ℤ)).toNat - A025475 (n + 2)

end

end A060848.P8469674403546681908

/-! ## A060848.P10518574361230199887

`A000040(A024621(n+2)-(n+1))-(A249435(n+2)+1)`
-/

namespace A060848.P10518574361230199887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A024621 (n + 2) - (n + 1 : ℤ)).toNat - (A249435 (n + 2) + 1)

end

end A060848.P10518574361230199887

/-! ## A060848.P16606009846323865763

`A000040(A024621(n+2)-(n+1))-(∑[A053707(n+1)]+1)`
-/

namespace A060848.P16606009846323865763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A024621 (n + 2) - (n + 1 : ℤ)).toNat - (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A060848.P16606009846323865763

/-! ## A060848.P14850390872269823363

`A000040(A024621(n+2)-(n+1))-(A053211(n+1)+A053198(n+1))`
-/

namespace A060848.P14850390872269823363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A024621 (n + 2) - (n + 1 : ℤ)).toNat - (A053211 (n + 1) + A053198 (n + 1))

end

end A060848.P14850390872269823363

/-! ## A060848.P16047529183162897571

`A151800(A060845(n+1))-A134612(n+1)`
-/

namespace A060848.P16047529183162897571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A060845 (n + 1)).toNat - A134612 (n + 1)

end

end A060848.P16047529183162897571

/-! ## A060848.P3609273344485409046

`A151800(A060845(n+1))%A053211(n+1)`
-/

namespace A060848.P3609273344485409046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (A060845 (n + 1)).toNat) (A053211 (n + 1))

end

end A060848.P3609273344485409046

/-! ## A060848.P8142361716861137710

`A151800(∑[A053707(n+1)])-A134612(n+1)`
-/

namespace A060848.P8142361716861137710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A134612 (n + 1)

end

end A060848.P8142361716861137710

/-!
# A060849: Difference between 2 consecutive primes between which a nontrivial power of prime is found.

The programs for A060849, there is no canonical definition to state claims against.
-/

/-! ## A060849.P5107715083794324157

`A060848(n+1)+A060847(n+1)`
-/

namespace A060849.P5107715083794324157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060848 (n + 1) + A060847 (n + 1)

end

end A060849.P5107715083794324157

/-! ## A060849.P4524393352557941038

`A060846(n+1)-A060845(n+1)`
-/

namespace A060849.P4524393352557941038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060846 (n + 1) - A060845 (n + 1)

end

end A060849.P4524393352557941038

/-! ## A060849.P4390421604119795054

`A060846(A006370(2*n)+1)%A060845(n+1)`
-/

namespace A060849.P4390421604119795054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060846 (A006370 (2 * n) + 1).toNat) (A060845 (n + 1))

end

end A060849.P4390421604119795054

/-! ## A060849.P2140616794226843470

`A000040(A024621(n+2)-(n+1))-A060845(n+1)`
-/

namespace A060849.P2140616794226843470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A024621 (n + 2) - (n + 1 : ℤ)).toNat - A060845 (n + 1)

end

end A060849.P2140616794226843470

/-! ## A060849.P5467855021591950049

`A008578(A024621(n+2)-n)-A000040(A024621(n+2)-(n+2))`
-/

namespace A060849.P5467855021591950049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A024621 (n + 2) - (n : ℤ)).toNat - A000040 (A024621 (n + 2) - (n + 2 : ℤ)).toNat

end

end A060849.P5467855021591950049

/-! ## A060849.P16316023036234162077

`A000040(A024621(n+2)-(n+1))-A000040(A024621(n+2)-(n+2))`
-/

namespace A060849.P16316023036234162077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A024621 (n + 2) - (n + 1 : ℤ)).toNat - A000040 (A024621 (n + 2) - (n + 2 : ℤ)).toNat

end

end A060849.P16316023036234162077

/-! ## A060849.P2365554492726028941

`A166597(A060845(n+1))`
-/

namespace A060849.P2365554492726028941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A060845 (n + 1)).toNat

end

end A060849.P2365554492726028941

/-! ## A060849.P17158458467584777429

`A166597(A134612(n+1))`
-/

namespace A060849.P17158458467584777429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A134612 (n + 1)).toNat

end

end A060849.P17158458467584777429

/-! ## A060849.P2674886880415711518

`A166597(A025475(n+2))`
-/

namespace A060849.P2674886880415711518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A025475 (n + 2)).toNat

end

end A060849.P2674886880415711518

/-! ## A060849.P9849503716947397180

`A166597(A081218(n+2))`
-/

namespace A060849.P9849503716947397180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A081218 (n + 2)).toNat

end

end A060849.P9849503716947397180

/-! ## A060849.P14759750982872780577

`A166597(A249435(n+2))`
-/

namespace A060849.P14759750982872780577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A249435 (n + 2)).toNat

end

end A060849.P14759750982872780577

/-! ## A060849.P1094690163243014841

`A166597(∑[A053707(n+1)])`
-/

namespace A060849.P1094690163243014841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A060849.P1094690163243014841

/-! ## A060849.P13806848872319091489

`A151800(A134612(n+1))-A060845(n+1)`
-/

namespace A060849.P13806848872319091489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A134612 (n + 1)).toNat - A060845 (n + 1)

end

end A060849.P13806848872319091489

/-! ## A060849.P8265850637155244248

`A151800(A060845(n+1)+1)-A060845(n+1)`
-/

namespace A060849.P8265850637155244248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A060845 (n + 1) + 1).toNat - A060845 (n + 1)

end

end A060849.P8265850637155244248

/-!
# A060850: Array of the coefficients A(n,k) in the expansion of Product_{i>=1} 1/(1-x^i)^n = Sum_{k>=0} A(n,k)*x^k, n >= 1, k >= 0.

The programs for A060850, there is no canonical definition to state claims against.
-/

/-! ## A060850.P13156832028941975654

`A144064(comp[∑[n-1]])`
-/

namespace A060850.P13156832028941975654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A060850.P13156832028941975654

/-! ## A060850.P15181222650102478251

`or(char[1], A144064(A007401(n+1)))`
-/

namespace A060850.P15181222650102478251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A144064 (A007401 (n + 1)).toNat)

end

end A060850.P15181222650102478251

/-! ## A060850.P11532327696886883992

`lcm(A033999(n), A144064(A007401(n+1)))`
-/

namespace A060850.P11532327696886883992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A144064 (A007401 (n + 1)).toNat)

end

end A060850.P11532327696886883992

/-! ## A060850.P7028470427145272482

`∏{e}[A020639(n+1), A144064(#*A007401(n+1))]`
-/

namespace A060850.P7028470427145272482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A144064 ((Nat.factorization (f1 n).natAbs p : ℤ) * A007401 (n + 1)).toNat

end

end A060850.P7028470427145272482

/-! ## A060850.P11201337993102983480

`∏{e}[A020639(n+1), A144064(A007401(n+1)/#)]`
-/

namespace A060850.P11201337993102983480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A144064 (SequenceMachineLib.roundAway ((A007401 (n + 1) : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ))).toNat

end

end A060850.P11201337993102983480

/-! ## A060850.P15534104822983132200

`A000034(2*n)*A144064(A007401(n+1))`
-/

namespace A060850.P15534104822983132200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A144064 (A007401 (n + 1)).toNat

end

end A060850.P15534104822983132200

/-! ## A060850.P17329026304544635838

`A144064(A007401(n+1))%A000045(n+4)`
-/

namespace A060850.P17329026304544635838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144064 (A007401 (n + 1)).toNat) (A000045 (n + 4))

end

end A060850.P17329026304544635838

/-! ## A060850.P3298379320523252737

`∑{d}[A144064(A007401(n+1)), A000010(#)]`
-/

namespace A060850.P3298379320523252737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A007401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A060850.P3298379320523252737

/-! ## A060850.P3979166092674634167

`∏{d}[A144064(A007401(n+1)), A014963(#)]`
-/

namespace A060850.P3979166092674634167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A007401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A060850.P3979166092674634167

/-!
# A060851: a(n) = (2n-1) * 3^(2n-1).

The programs for A060851, the canonical program `A060851.P18442704857643501017` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060851 has offset 1).

The definition of A060851 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060851.P18442704857643501017

`3*A155988(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060851

/-- `3*A155988(n)` -/
def P18442704857643501017.Spec : Prop :=
  ∀ n, P18442704857643501017.a n = A060851 (n + 1)

theorem P18442704857643501017.correct : P18442704857643501017.Spec := by
  intro n
  simp only [A060851, Nat.add_sub_cancel]

end A060851

/-! ## A060851.P8968543702693532209

`(6*n+3)*9^n`
-/

namespace A060851.P8968543702693532209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * n + 3) * 9 ^ n

end

end A060851.P8968543702693532209

namespace A060851

/-- `(6*n+3)*9^n` -/
def P8968543702693532209.Spec : Prop :=
  ∀ n, (P8968543702693532209.a n : ℤ) = A060851 (n + 1)

end A060851

/-! ## A060851.P5434324486035719000

`record[3^xor(1, n)*or(1, n)]`
-/

namespace A060851.P5434324486035719000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.xor 1 n * Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060851.P5434324486035719000

namespace A060851

/-- `record[3^xor(1, n)*or(1, n)]` -/
def P5434324486035719000.Spec : Prop :=
  ∀ n, (P5434324486035719000.a n : ℤ) = A060851 (n + 1)

end A060851

/-! ## A060851.P3721574356649697378

`record[(1-(n-2*n))*3^xor(1, n)]`
-/

namespace A060851.P3721574356649697378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((n : ℤ) - (2 * n : ℤ))) * (3 ^ Nat.xor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060851.P3721574356649697378

namespace A060851

/-- `record[(1-(n-2*n))*3^xor(1, n)]` -/
def P3721574356649697378.Spec : Prop :=
  ∀ n, P3721574356649697378.a n = A060851 (n + 1)

end A060851

/-! ## A060851.P2815673410252454624

`A036290(Δ[n²])`
-/

namespace A060851.P2815673410252454624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A060851.P2815673410252454624

namespace A060851

/-- `A036290(Δ[n²])` -/
def P2815673410252454624.Spec : Prop :=
  ∀ n, P2815673410252454624.a n = A060851 (n + 1)

end A060851

/-! ## A060851.P13173464645604584454

`abs(A157327(Δ[n²]))`
-/

namespace A060851.P13173464645604584454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157327 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A060851.P13173464645604584454

namespace A060851

/-- `abs(A157327(Δ[n²]))` -/
def P13173464645604584454.Spec : Prop :=
  ∀ n, P13173464645604584454.a n = A060851 (n + 1)

end A060851

/-! ## A060851.P12769011444162377634

`A060352(Δ[n²])+1`
-/

namespace A060851.P12769011444162377634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060352 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A060851.P12769011444162377634

namespace A060851

/-- `A060352(Δ[n²])+1` -/
def P12769011444162377634.Spec : Prop :=
  ∀ n, P12769011444162377634.a n = A060851 (n + 1)

end A060851

/-! ## A060851.P12833869176397346260

`A050914(Δ[n²])-1`
-/

namespace A060851.P12833869176397346260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050914 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A060851.P12833869176397346260

namespace A060851

/-- `A050914(Δ[n²])-1` -/
def P12833869176397346260.Spec : Prop :=
  ∀ n, P12833869176397346260.a n = A060851 (n + 1)

end A060851

/-! ## A060851.P4936894287297252929

`A236967(2*n+1)/4`
-/

namespace A060851.P4936894287297252929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236967 (2 * n + 1) : ℚ) / 4

end

end A060851.P4936894287297252929

namespace A060851

/-- `A236967(2*n+1)/4` -/
def P4936894287297252929.Spec : Prop :=
  ∀ n, P4936894287297252929.a n = (A060851 (n + 1) : ℚ)

end A060851

/-! ## A060851.P13066571614888463412

`lcm(3, A036290(2*n+1))`
-/

namespace A060851.P13066571614888463412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A036290 (2 * n + 1))

end

end A060851.P13066571614888463412

namespace A060851

/-- `lcm(3, A036290(2*n+1))` -/
def P13066571614888463412.Spec : Prop :=
  ∀ n, (P13066571614888463412.a n : ℤ) = A060851 (n + 1)

end A060851

/-! ## A060851.P9118850303455598079

`floor(3^Δ[n²]*A005408(n))`
-/

namespace A060851.P9118850303455598079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ) * (A005408 n : ℚ)⌋

end

end A060851.P9118850303455598079

namespace A060851

/-- `floor(3^Δ[n²]*A005408(n))` -/
def P9118850303455598079.Spec : Prop :=
  ∀ n, P9118850303455598079.a n = A060851 (n + 1)

end A060851

/-! ## A060851.P5206398068945477614

`A394342(2*n+1)+2*n`
-/

namespace A060851.P5206398068945477614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394342 (2 * n + 1) + (2 * n : ℤ)

end

end A060851.P5206398068945477614

namespace A060851

/-- `A394342(2*n+1)+2*n` -/
def P5206398068945477614.Spec : Prop :=
  ∀ n, P5206398068945477614.a n = A060851 (n + 1)

end A060851

/-! ## A060851.P11436884790470172431

`A230540(n+1)-A102518(n+1)`
-/

namespace A060851.P11436884790470172431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230540 (n + 1) - A102518 (n + 1)

end

end A060851.P11436884790470172431

namespace A060851

/-- `A230540(n+1)-A102518(n+1)` -/
def P11436884790470172431.Spec : Prop :=
  ∀ n, P11436884790470172431.a n = A060851 (n + 1)

end A060851

/-! ## A060851.P2085568333762476959

`A036290(2*n+1)+A000007(n+1)`
-/

namespace A060851.P2085568333762476959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 (2 * n + 1) + A000007 (n + 1)

end

end A060851.P2085568333762476959

namespace A060851

/-- `A036290(2*n+1)+A000007(n+1)` -/
def P2085568333762476959.Spec : Prop :=
  ∀ n, P2085568333762476959.a n = A060851 (n + 1)

end A060851

/-! ## A060851.P17055360802815362640

`A230540(n+1)-A000244(2*n+1)`
-/

namespace A060851.P17055360802815362640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230540 (n + 1) - A000244 (2 * n + 1)

end

end A060851.P17055360802815362640

namespace A060851

/-- `A230540(n+1)-A000244(2*n+1)` -/
def P17055360802815362640.Spec : Prop :=
  ∀ n, P17055360802815362640.a n = A060851 (n + 1)

end A060851

/-! ## A060851.P12282529009303990968

`A229277(2*n+1)+A036290(2*n)`
-/

namespace A060851.P12282529009303990968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229277 (2 * n + 1) + A036290 (2 * n)

end

end A060851.P12282529009303990968

namespace A060851

/-- `A229277(2*n+1)+A036290(2*n)` -/
def P12282529009303990968.Spec : Prop :=
  ∀ n, P12282529009303990968.a n = A060851 (n + 1)

end A060851

/-! ## A060851.P15206067545344620582

`A088581(2*n+1)-A088581(2*n)`
-/

namespace A060851.P15206067545344620582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088581 (2 * n + 1) - A088581 (2 * n)

end

end A060851.P15206067545344620582

namespace A060851

/-- `A088581(2*n+1)-A088581(2*n)` -/
def P15206067545344620582.Spec : Prop :=
  ∀ n, P15206067545344620582.a n = A060851 (n + 1)

end A060851

/-! ## A060851.P8279500046394471418

`A289399(2*n+1)-A289399(2*n)`
-/

namespace A060851.P8279500046394471418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289399 (2 * n + 1) - A289399 (2 * n)

end

end A060851.P8279500046394471418

namespace A060851

/-- `A289399(2*n+1)-A289399(2*n)` -/
def P8279500046394471418.Spec : Prop :=
  ∀ n, P8279500046394471418.a n = A060851 (n + 1)

end A060851

/-! ## A060851.P2053816487932429466

`A154920(2*n)+2*A154920(2*n)`
-/

namespace A060851.P2053816487932429466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154920 (2 * n) + 2 * A154920 (2 * n)

end

end A060851.P2053816487932429466

namespace A060851

/-- `A154920(2*n)+2*A154920(2*n)` -/
def P2053816487932429466.Spec : Prop :=
  ∀ n, P2053816487932429466.a n = A060851 (n + 1)

end A060851

/-! ## A060851.P2933496418114195861

`abs(3*(A288834(2*n+1)-A001019(n)))`
-/

namespace A060851.P2933496418114195861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * (A288834 (2 * n + 1) - A001019 n)|

end

end A060851.P2933496418114195861

namespace A060851

/-- `abs(3*(A288834(2*n+1)-A001019(n)))` -/
def P2933496418114195861.Spec : Prop :=
  ∀ n, P2933496418114195861.a n = A060851 (n + 1)

end A060851

/-!
# A060852: Sum of number of pips on dice in shape of Platonic solids.

The programs for A060852, there is no canonical definition to state claims against.
-/

/-! ## A060852.P6558485953733129328

`C(or(n+2, 2*n)+n+3, 2)`
-/

namespace A060852.P6558485953733129328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor (n + 2) (2 * n) + (n + 3)) 2

end

end A060852.P6558485953733129328

/-!
# A060854: Array T(m,n) read by antidiagonals: T(m,n) (m >= 1, n >= 1) = number of ways to arrange the numbers 1,2,...,m*n in an m X n matrix so that each row and each column is increasing.

The programs for A060854, there is no canonical definition to state claims against.
-/

/-! ## A060854.P4186796300289775074

`A177939(n+1)/A009963(n)`
-/

namespace A060854.P4186796300289775074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177939 (n + 1) : ℚ) / (A009963 n : ℚ)

end

end A060854.P4186796300289775074

/-! ## A060854.P1021788763838746943

`A046792(n+1)/A156584(n)`
-/

namespace A060854.P1021788763838746943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046792 (n + 1) : ℚ) / (A156584 n : ℚ)

end

end A060854.P1021788763838746943

/-! ## A060854.P4832082528652199059

`A290252(A089633(n)+1)`
-/

namespace A060854.P4832082528652199059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (A089633 n + 1).toNat

end

end A060854.P4832082528652199059

/-! ## A060854.P13639273223753268270

`A290252(A023758(n+2))`
-/

namespace A060854.P13639273223753268270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (A023758 (n + 2)).toNat

end

end A060854.P13639273223753268270

/-! ## A060854.P8338371076033372757

`A290252(A043569(n+1)/2)`
-/

namespace A060854.P8338371076033372757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (SequenceMachineLib.roundAway ((A043569 (n + 1) : ℚ) / 2)).toNat

end

end A060854.P8338371076033372757

/-! ## A060854.P5219113393272287111

`A290252((A081118(n+1)+1)/2)`
-/

namespace A060854.P5219113393272287111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (SequenceMachineLib.roundAway ((A081118 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A060854.P5219113393272287111

/-! ## A060854.P14400393351973022410

`A290252(A130328(n))`
-/

namespace A060854.P14400393351973022410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (A130328 n).toNat

end

end A060854.P14400393351973022410

/-! ## A060854.P6189755703185449406

`A290252(record[A059893(n+1)])`
-/

namespace A060854.P6189755703185449406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060854.P6189755703185449406

/-! ## A060854.P17323459486651702339

`A004065(A115216(n))`
-/

namespace A060854.P17323459486651702339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004065 (A115216 n).toNat

end

end A060854.P17323459486651702339

/-! ## A060854.P14089253991927239730

`A290252(A193902(n))`
-/

namespace A060854.P14089253991927239730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (A193902 n).toNat

end

end A060854.P14089253991927239730

/-!
# A060855: Multi-dimensional Catalan numbers: diagonal T(n,n+1) of A060854.

The programs for A060855, there is no canonical definition to state claims against.
-/

/-! ## A060855.P630432569843686616

`A060854(2*(n+1)²)`
-/

namespace A060855.P630432569843686616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060854 (2 * (n + 1) ^ 2)

end

end A060855.P630432569843686616

/-! ## A060855.P16318808044695309987

`A321716(∑[n+3]+1)`
-/

namespace A060855.P16318808044695309987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321716 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A060855.P16318808044695309987

/-! ## A060855.P1891035413381957425

`A290252(A171499(n))`
-/

namespace A060855.P1891035413381957425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (A171499 n).toNat

end

end A060855.P1891035413381957425

/-!
# A060856: Multi-dimensional Catalan numbers: diagonal T(n,n+2) of A060854.

The programs for A060856, there is no canonical definition to state claims against.
-/

/-! ## A060856.P950479927721680096

`A060854(∑[4*(n+1)])`
-/

namespace A060856.P950479927721680096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060854 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060856.P950479927721680096

/-! ## A060856.P9769881644998200801

`A039622(n+2)/(n+2)`
-/

namespace A060856.P9769881644998200801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039622 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A060856.P9769881644998200801

/-! ## A060856.P17655945463983908042

`A321716(A141214(n+1))`
-/

namespace A060856.P17655945463983908042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321716 (A141214 (n + 1)).toNat

end

end A060856.P17655945463983908042

/-!
# A060857: Describe all the numbers already used (sorted into increasing order - not splitting numbers up into their digits).

The programs for A060857, there is no canonical definition to state claims against.
-/

/-! ## A060857.P12062604902708096871

`A177360(A038548(4^n))`
-/

namespace A060857.P12062604902708096871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177360 (A038548 (4 ^ n)).toNat

end

end A060857.P12062604902708096871

/-! ## A060857.P14689137638554284219

`A177360(∑[A056897(n)!])`
-/

namespace A060857.P14689137638554284219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A056897 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177360 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060857.P14689137638554284219

/-! ## A060857.P17822954430462060431

`A177360(A227549(n+4)-2)`
-/

namespace A060857.P17822954430462060431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177360 (A227549 (n + 4) - 2).toNat

end

end A060857.P17822954430462060431

/-!
# A060859: Powerful numbers of the form k^2 - 1.

The programs for A060859, there is no canonical definition to state claims against.
-/

/-! ## A060859.P272007387847597746

`A060860(n+1)²-1`
-/

namespace A060859.P272007387847597746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060860 (n + 1) ^ 2 - 1

end

end A060859.P272007387847597746

/-! ## A060859.P8278321596042599056

`A057428(n+1)+A060860(n+1)²`
-/

namespace A060859.P8278321596042599056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A060860 (n + 1) ^ 2

end

end A060859.P8278321596042599056

/-! ## A060859.P363898204824448582

`A009001(A017137(n))+A060860(n+1)²`
-/

namespace A060859.P363898204824448582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A017137 n).toNat + A060860 (n + 1) ^ 2

end

end A060859.P363898204824448582

/-! ## A060859.P13147502600911946798

`A082562(A060860(n+1))`
-/

namespace A060859.P13147502600911946798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082562 (A060860 (n + 1)).toNat

end

end A060859.P13147502600911946798

/-!
# A060860: Numbers k such that k^2-1 and k^2 are consecutive powerful numbers.

The programs for A060860, there is no canonical definition to state claims against.
-/

/-! ## A060860.P15839885528601936092

`sqrt(A060859(n+1)+1)`
-/

namespace A060860.P15839885528601936092
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A060859 (n + 1) + 1 : ℝ)

end

end A060860.P15839885528601936092

/-! ## A060860.P1694812236472600206

`ceil(sqrt(A060859(n+1)))`
-/

namespace A060860.P1694812236472600206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A060859 (n + 1) : ℝ)⌉

end

end A060860.P1694812236472600206

/-!
# A060861: Least number of the form x^2 + y^3 (x, y nonnegative) in exactly n ways.

The programs for A060861, there is no canonical definition to state claims against.
-/

/-! ## A060861.P11551898096998112026

`A189318(n+4)%A096861(∏[n+3]*ratio[n+3])`
-/

namespace A060861.P11551898096998112026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189318 (n + 4)) (A096861 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * ((f2 (n + 1) : ℚ) / (f2 n : ℚ)))).toNat)

end

end A060861.P11551898096998112026

/-!
# A060862: a(n) = 0 if n is deficient, 1 if n is abundant, 2 if n is perfect.

The programs for A060862, the canonical program `A060862.P12546102000371265621` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060862 has offset 1).

The definition of A060862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060862.P12546102000371265621

`ceil(acot(∑{d}[n+1, #]-2*(n+1)))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060862

/-- `ceil(acot(∑{d}[n+1, #]-2*(n+1)))` -/
def P12546102000371265621.Spec : Prop :=
  ∀ n, P12546102000371265621.a n = A060862 (n + 1)

theorem P12546102000371265621.correct : P12546102000371265621.Spec := by
  intro n
  simp only [A060862, Nat.add_sub_cancel]

end A060862

/-! ## A060862.P9447437308360127983

`ceil(acot(A033880(n+1)))`
-/

namespace A060862.P9447437308360127983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A033880 (n + 1) : ℝ)⌉

end

end A060862.P9447437308360127983

namespace A060862

/-- `ceil(acot(A033880(n+1)))` -/
def P9447437308360127983.Spec : Prop :=
  ∀ n, P9447437308360127983.a n = A060862 (n + 1)

end A060862

/-! ## A060862.P8543149018130872147

`ceil(acot(A082551(n+1)))`
-/

namespace A060862.P8543149018130872147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A082551 (n + 1) : ℝ)⌉

end

end A060862.P8543149018130872147

namespace A060862

/-- `ceil(acot(A082551(n+1)))` -/
def P8543149018130872147.Spec : Prop :=
  ∀ n, P8543149018130872147.a n = A060862 (n + 1)

end A060862

/-! ## A060862.P4823397784519227712

`ceil(acot(A000203(n+1)-2*(n+1)))`
-/

namespace A060862.P4823397784519227712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A000203 (n + 1) - (2 * (n + 1) : ℤ) : ℝ)⌉

end

end A060862.P4823397784519227712

namespace A060862

/-- `ceil(acot(A000203(n+1)-2*(n+1)))` -/
def P4823397784519227712.Spec : Prop :=
  ∀ n, P4823397784519227712.a n = A060862 (n + 1)

end A060862

/-! ## A060862.P14368940811007333170

`(A294935(n+1)+1)*A294936(n+1)`
-/

namespace A060862.P14368940811007333170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A294935 (n + 1) + 1) * A294936 (n + 1)

end

end A060862.P14368940811007333170

namespace A060862

/-- `(A294935(n+1)+1)*A294936(n+1)` -/
def P14368940811007333170.Spec : Prop :=
  ∀ n, P14368940811007333170.a n = A060862 (n + 1)

end A060862

/-! ## A060862.P408106897154626519

`(A341612(n+1)+1)*A294936(n+1)`
-/

namespace A060862.P408106897154626519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A341612 (n + 1) + 1) * A294936 (n + 1)

end

end A060862.P408106897154626519

namespace A060862

/-- `(A341612(n+1)+1)*A294936(n+1)` -/
def P408106897154626519.Spec : Prop :=
  ∀ n, P408106897154626519.a n = A060862 (n + 1)

end A060862

/-! ## A060862.P11438290239237118759

`(2-A082551(n+1))*A294936(n+1)`
-/

namespace A060862.P11438290239237118759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A082551 (n + 1)) * A294936 (n + 1)

end

end A060862.P11438290239237118759

namespace A060862

/-- `(2-A082551(n+1))*A294936(n+1)` -/
def P11438290239237118759.Spec : Prop :=
  ∀ n, P11438290239237118759.a n = A060862 (n + 1)

end A060862

/-! ## A060862.P5820707514570201611

`2*A294936(n+1)-A294937(n+1)`
-/

namespace A060862.P5820707514570201611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A294936 (n + 1) - A294937 (n + 1)

end

end A060862.P5820707514570201611

namespace A060862

/-- `2*A294936(n+1)-A294937(n+1)` -/
def P5820707514570201611.Spec : Prop :=
  ∀ n, P5820707514570201611.a n = A060862 (n + 1)

end A060862

/-! ## A060862.P679723464727068269

`2-(A294934(n+1)+A082551(n+1)²)`
-/

namespace A060862.P679723464727068269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A294934 (n + 1) + A082551 (n + 1) ^ 2)

end

end A060862.P679723464727068269

namespace A060862

/-- `2-(A294934(n+1)+A082551(n+1)²)` -/
def P679723464727068269.Spec : Prop :=
  ∀ n, P679723464727068269.a n = A060862 (n + 1)

end A060862

/-! ## A060862.P15949203188276431269

`A294935(n+1)+A294936(n+1)-A294934(n+1)`
-/

namespace A060862.P15949203188276431269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294935 (n + 1) + (A294936 (n + 1) - A294934 (n + 1))

end

end A060862.P15949203188276431269

namespace A060862

/-- `A294935(n+1)+A294936(n+1)-A294934(n+1)` -/
def P15949203188276431269.Spec : Prop :=
  ∀ n, P15949203188276431269.a n = A060862 (n + 1)

end A060862

/-! ## A060862.P17672809259578994023

`C(A001221(n+1), C(n+1, A001065(n+1)))`
-/

namespace A060862.P17672809259578994023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001221 (n + 1)).toNat (Nat.choose (n + 1) (A001065 (n + 1)).toNat)

end

end A060862.P17672809259578994023

namespace A060862

/-- `C(A001221(n+1), C(n+1, A001065(n+1)))` -/
def P17672809259578994023.Spec : Prop :=
  ∀ n, (P17672809259578994023.a n : ℤ) = A060862 (n + 1)

end A060862

/-! ## A060862.P17838644159273826817

`A136441(n)*A294936(n+1)`
-/

namespace A060862.P17838644159273826817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136441 n * A294936 (n + 1)

end

end A060862.P17838644159273826817

namespace A060862

/-- `A136441(n)*A294936(n+1)` -/
def P17838644159273826817.Spec : Prop :=
  ∀ n, P17838644159273826817.a n = A060862 (n + 1)

end A060862

/-! ## A060862.P13329340100221988998

`A136441(n)*A336835(n+1)`
-/

namespace A060862.P13329340100221988998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136441 n * A336835 (n + 1)

end

end A060862.P13329340100221988998

namespace A060862

/-- `A136441(n)*A336835(n+1)` -/
def P13329340100221988998.Spec : Prop :=
  ∀ n, P13329340100221988998.a n = A060862 (n + 1)

end A060862

/-!
# A060863: Positive numbers n which are the average of a run of consecutive primes.

The programs for A060863, there is no canonical definition to state claims against.
-/

/-! ## A060863.P14355171742437940621

`comp[A060864(n+1)-1]+1`
-/

namespace A060863.P14355171742437940621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060864 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A060863.P14355171742437940621

/-! ## A060863.P10970802384949778733

`lt[4, a(A122821(n))²]` with `a(0)=2`
-/

namespace A060863.P10970802384949778733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (A122821 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A060863.P10970802384949778733

/-! ## A060863.P12329645827624267123

`lt[0, A122821(n+1)]+1`
-/

namespace A060863.P12329645827624267123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A060863.P12329645827624267123

/-! ## A060863.P8229348761271588602

`eq[0, A002262(a(A122821(n)))]` with `a(0)=2`
-/

namespace A060863.P8229348761271588602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A002262 (f2 (A122821 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060863.P8229348761271588602

/-! ## A060863.P15783655902576565176

`lt[2, A000032(a(A122821(n)))]` with `a(0)=0`
-/

namespace A060863.P15783655902576565176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000032 (f2 (A122821 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A060863.P15783655902576565176

/-! ## A060863.P10487028649532258316

`eq[1, A000010(a(A122821(n)))]` with `a(0)=3`
-/

namespace A060863.P10487028649532258316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A122821 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060863.P10487028649532258316

/-! ## A060863.P11688727005465519418

`lt[2, A000040(a(A122821(n)))]` with `a(0)=1`
-/

namespace A060863.P11688727005465519418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A122821 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A060863.P11688727005465519418

/-! ## A060863.P12955942876317579191

`eq[1, A000045(a(A122821(n)))]` with `a(0)=3`
-/

namespace A060863.P12955942876317579191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A122821 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060863.P12955942876317579191

/-! ## A060863.P5145294027609615241

`eq[2, A000005(a(A122821(n)))]` with `a(0)=4`
-/

namespace A060863.P5145294027609615241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000005 (f2 (A122821 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060863.P5145294027609615241

/-!
# A060864: Positive integers that are not an average of consecutive primes.

The programs for A060864, there is no canonical definition to state claims against.
-/

/-! ## A060864.P7261989826080716259

`eq[4, a(A122821(n))²]` with `a(0)=2`
-/

namespace A060864.P7261989826080716259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (A122821 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060864.P7261989826080716259

/-! ## A060864.P17090941089974642950

`eq[0, A122821(n+1)]+1`
-/

namespace A060864.P17090941089974642950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060864.P17090941089974642950

/-! ## A060864.P8497744168405231991

`eq[2, A000032(a(A122821(n)))]` with `a(0)=0`
-/

namespace A060864.P8497744168405231991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000032 (f2 (A122821 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060864.P8497744168405231991

/-! ## A060864.P3094835696840607558

`eq[2, A000040(a(A122821(n)))]` with `a(0)=1`
-/

namespace A060864.P3094835696840607558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A122821 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060864.P3094835696840607558

/-! ## A060864.P6403536634603332328

`eq[2, A000010(a(A122821(n)))]` with `a(0)=3`
-/

namespace A060864.P6403536634603332328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A122821 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060864.P6403536634603332328

/-! ## A060864.P2313370451459269253

`eq[2, A000045(a(A122821(n)))]` with `a(0)=3`
-/

namespace A060864.P2313370451459269253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A122821 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060864.P2313370451459269253

/-! ## A060864.P13208505670037073105

`eq[2, A007318(a(A122821(n)))]` with `a(0)=4`
-/

namespace A060864.P13208505670037073105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A007318 (f2 (A122821 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060864.P13208505670037073105

/-! ## A060864.P5657921600321021835

`eq[5, A000041(a(A122821(n)))]` with `a(0)=4`
-/

namespace A060864.P5657921600321021835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000041 (f2 (A122821 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060864.P5657921600321021835

/-!
# A060865: a(n) is the exact power of 2 that divides the n-th Fibonacci number (A000045).

The programs for A060865, the canonical program `A060865.P587994599545776083` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060865 has offset 1).

The definition of A060865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060865.P15831977479917932121

`2^Δ[A385608(n)]`
-/

namespace A060865.P15831977479917932121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385608 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A060865.P15831977479917932121

namespace A060865

/-- `2^Δ[A385608(n)]` -/
def P15831977479917932121.Spec : Prop :=
  ∀ n, P15831977479917932121.a n = (A060865 (n + 1) : ℚ)

end A060865

/-! ## A060865.P292572419270415468

`2^A337923(n+1)`
-/

namespace A060865.P292572419270415468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A337923 (n + 1) : ℤ)

end

end A060865.P292572419270415468

namespace A060865

/-- `2^A337923(n+1)` -/
def P292572419270415468.Spec : Prop :=
  ∀ n, P292572419270415468.a n = (A060865 (n + 1) : ℚ)

end A060865

/-! ## A060865.P587994599545776083

`A006519(A114375(n)+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A060865

/-- `A006519(A114375(n)+1)` -/
def P587994599545776083.Spec : Prop :=
  ∀ n, P587994599545776083.a n = A060865 (n + 1)

theorem P587994599545776083.correct : P587994599545776083.Spec := by
  intro n
  simp only [A060865, Nat.add_sub_cancel]

end A060865

/-! ## A060865.P10079360829998860462

`A000079(A337923(n+1))`
-/

namespace A060865.P10079360829998860462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A337923 (n + 1)).toNat

end

end A060865.P10079360829998860462

namespace A060865

/-- `A000079(A337923(n+1))` -/
def P10079360829998860462.Spec : Prop :=
  ∀ n, P10079360829998860462.a n = A060865 (n + 1)

end A060865

/-! ## A060865.P101101054994730838

`A016116(2*A337923(n+1))`
-/

namespace A060865.P101101054994730838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A337923 (n + 1)).toNat

end

end A060865.P101101054994730838

namespace A060865

/-- `A016116(2*A337923(n+1))` -/
def P101101054994730838.Spec : Prop :=
  ∀ n, P101101054994730838.a n = A060865 (n + 1)

end A060865

/-! ## A060865.P18002364376065357432

`gcd(A010892(n), A074723(n+1))`
-/

namespace A060865.P18002364376065357432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010892 n) (A074723 (n + 1))

end

end A060865.P18002364376065357432

namespace A060865

/-- `gcd(A010892(n), A074723(n+1))` -/
def P18002364376065357432.Spec : Prop :=
  ∀ n, (P18002364376065357432.a n : ℤ) = A060865 (n + 1)

end A060865

/-! ## A060865.P18136739461621212598

`gcd(A059152(n), A247193(n+1))`
-/

namespace A060865.P18136739461621212598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059152 n) (A247193 (n + 1))

end

end A060865.P18136739461621212598

namespace A060865

/-- `gcd(A059152(n), A247193(n+1))` -/
def P18136739461621212598.Spec : Prop :=
  ∀ n, (P18136739461621212598.a n : ℤ) = A060865 (n + 1)

end A060865

/-! ## A060865.P2104731787176391094

`A081320(n+1)/A060901(n+1)`
-/

namespace A060865.P2104731787176391094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081320 (n + 1) : ℚ) / (A060901 (n + 1) : ℚ)

end

end A060865.P2104731787176391094

namespace A060865

/-- `A081320(n+1)/A060901(n+1)` -/
def P2104731787176391094.Spec : Prop :=
  ∀ n, P2104731787176391094.a n = (A060865 (n + 1) : ℚ)

end A060865

/-! ## A060865.P17945253631455634234

`A016116(A337923(n+1)+A337923(n+1)+1)`
-/

namespace A060865.P17945253631455634234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A337923 (n + 1) + (A337923 (n + 1) + 1)).toNat

end

end A060865.P17945253631455634234

namespace A060865

/-- `A016116(A337923(n+1)+A337923(n+1)+1)` -/
def P17945253631455634234.Spec : Prop :=
  ∀ n, P17945253631455634234.a n = A060865 (n + 1)

end A060865

/-! ## A060865.P17682540445525074471

`A006519(A160108(n+1))`
-/

namespace A060865.P17682540445525074471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A160108 (n + 1)).toNat

end

end A060865.P17682540445525074471

namespace A060865

/-- `A006519(A160108(n+1))` -/
def P17682540445525074471.Spec : Prop :=
  ∀ n, P17682540445525074471.a n = A060865 (n + 1)

end A060865

/-! ## A060865.P8726298400127868841

`A006519(A310269(n+1))`
-/

namespace A060865.P8726298400127868841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A310269 (n + 1)).toNat

end

end A060865.P8726298400127868841

namespace A060865

/-- `A006519(A310269(n+1))` -/
def P8726298400127868841.Spec : Prop :=
  ∀ n, P8726298400127868841.a n = A060865 (n + 1)

end A060865

/-! ## A060865.P13666189061340266396

`A000079(A193291(n+1)/A193292(n+1))`
-/

namespace A060865.P13666189061340266396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.roundAway ((A193291 (n + 1) : ℚ) / (A193292 (n + 1) : ℚ))).toNat

end

end A060865.P13666189061340266396

namespace A060865

/-- `A000079(A193291(n+1)/A193292(n+1))` -/
def P13666189061340266396.Spec : Prop :=
  ∀ n, P13666189061340266396.a n = A060865 (n + 1)

end A060865

/-! ## A060865.P6573663492406141313

`A006519(A081320(n+1))`
-/

namespace A060865.P6573663492406141313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A081320 (n + 1)).toNat

end

end A060865.P6573663492406141313

namespace A060865

/-- `A006519(A081320(n+1))` -/
def P6573663492406141313.Spec : Prop :=
  ∀ n, P6573663492406141313.a n = A060865 (n + 1)

end A060865

/-! ## A060865.P2775148109485197817

`gcd(A029930(n), A078035(n))`
-/

namespace A060865.P2775148109485197817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029930 n) (A078035 n)

end

end A060865.P2775148109485197817

namespace A060865

/-- `gcd(A029930(n), A078035(n))` -/
def P2775148109485197817.Spec : Prop :=
  ∀ n, (P2775148109485197817.a n : ℤ) = A060865 (n + 1)

end A060865

/-! ## A060865.P12263669172668425314

`gcd(A059159(n+1), A078024(n))`
-/

namespace A060865.P12263669172668425314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059159 (n + 1)) (A078024 n)

end

end A060865.P12263669172668425314

namespace A060865

/-- `gcd(A059159(n+1), A078024(n))` -/
def P12263669172668425314.Spec : Prop :=
  ∀ n, (P12263669172668425314.a n : ℤ) = A060865 (n + 1)

end A060865

/-! ## A060865.P13612894752651293736

`2^val(A000045(n+1), 2)`
-/

namespace A060865.P13612894752651293736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (A000045 (n + 1)).toNat 2

end

end A060865.P13612894752651293736

namespace A060865

/-- `2^val(A000045(n+1), 2)` -/
def P13612894752651293736.Spec : Prop :=
  ∀ n, (P13612894752651293736.a n : ℤ) = A060865 (n + 1)

end A060865

/-! ## A060865.P17848002069512283025

`gcd(A034583(n), A111572(n))`
-/

namespace A060865.P17848002069512283025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034583 n) (A111572 n)

end

end A060865.P17848002069512283025

namespace A060865

/-- `gcd(A034583(n), A111572(n))` -/
def P17848002069512283025.Spec : Prop :=
  ∀ n, (P17848002069512283025.a n : ℤ) = A060865 (n + 1)

end A060865

/-! ## A060865.P8720799150654999420

`A000079(val(A000045(n+1), 2))`
-/

namespace A060865.P8720799150654999420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A000045 (n + 1)).toNat 2)

end

end A060865.P8720799150654999420

namespace A060865

/-- `A000079(val(A000045(n+1), 2))` -/
def P8720799150654999420.Spec : Prop :=
  ∀ n, P8720799150654999420.a n = A060865 (n + 1)

end A060865

/-! ## A060865.P8022903275220256993

`gcd(A000045(n+1), A062383(n))`
-/

namespace A060865.P8022903275220256993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 (n + 1)) (A062383 n)

end

end A060865.P8022903275220256993

namespace A060865

/-- `gcd(A000045(n+1), A062383(n))` -/
def P8022903275220256993.Spec : Prop :=
  ∀ n, (P8022903275220256993.a n : ℤ) = A060865 (n + 1)

end A060865

/-! ## A060865.P3225666633273176996

`gcd(A137399(n), A264800(n+1))`
-/

namespace A060865.P3225666633273176996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A137399 n) (A264800 (n + 1))

end

end A060865.P3225666633273176996

namespace A060865

/-- `gcd(A137399(n), A264800(n+1))` -/
def P3225666633273176996.Spec : Prop :=
  ∀ n, (P3225666633273176996.a n : ℤ) = A060865 (n + 1)

end A060865

/-!
# A060866: Sum of (d+d') over all unordered pairs (d,d') with d*d' = n.

The programs for A060866, the canonical program `A060866.P9667756286911027450` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060866 has offset 1).

The definition of A060866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060866.P1449673044707838750

`A066839(n+1)+A070038(n+1)`
-/

namespace A060866.P1449673044707838750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (n + 1) + A070038 (n + 1)

end

end A060866.P1449673044707838750

namespace A060866

/-- `A066839(n+1)+A070038(n+1)` -/
def P1449673044707838750.Spec : Prop :=
  ∀ n, P1449673044707838750.a n = A060866 (n + 1)

end A060866

/-! ## A060866.P10340548607827613218

`A037213(n+1)+Δ[A160664(n)]`
-/

namespace A060866.P10340548607827613218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (n + 1) + (f1 (n + 1) - f1 n)

end

end A060866.P10340548607827613218

namespace A060866

/-- `A037213(n+1)+Δ[A160664(n)]` -/
def P10340548607827613218.Spec : Prop :=
  ∀ n, P10340548607827613218.a n = A060866 (n + 1)

end A060866

/-! ## A060866.P10920476988154333013

`A037213(n+1)+A000203(n+1)`
-/

namespace A060866.P10920476988154333013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (n + 1) + A000203 (n + 1)

end

end A060866.P10920476988154333013

namespace A060866

/-- `A037213(n+1)+A000203(n+1)` -/
def P10920476988154333013.Spec : Prop :=
  ∀ n, P10920476988154333013.a n = A060866 (n + 1)

end A060866

/-! ## A060866.P8018724500905965455

`A349005(n+1)-A038548(n+1)`
-/

namespace A060866.P8018724500905965455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349005 (n + 1) - A038548 (n + 1)

end

end A060866.P8018724500905965455

namespace A060866

/-- `A349005(n+1)-A038548(n+1)` -/
def P8018724500905965455.Spec : Prop :=
  ∀ n, P8018724500905965455.a n = A060866 (n + 1)

end A060866

/-! ## A060866.P16676732344968851496

`A074400(n+1)-A337177(n+1)`
-/

namespace A060866.P16676732344968851496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - A337177 (n + 1)

end

end A060866.P16676732344968851496

namespace A060866

/-- `A074400(n+1)-A337177(n+1)` -/
def P16676732344968851496.Spec : Prop :=
  ∀ n, P16676732344968851496.a n = A060866 (n + 1)

end A060866

/-! ## A060866.P8497980507577475128

`A079667(n+1)+2*A066839(n+1)`
-/

namespace A060866.P8497980507577475128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079667 (n + 1) + 2 * A066839 (n + 1)

end

end A060866.P8497980507577475128

namespace A060866

/-- `A079667(n+1)+2*A066839(n+1)` -/
def P8497980507577475128.Spec : Prop :=
  ∀ n, P8497980507577475128.a n = A060866 (n + 1)

end A060866

/-! ## A060866.P5716268943538062074

`2*A070038(n+1)-A079667(n+1)`
-/

namespace A060866.P5716268943538062074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A070038 (n + 1) - A079667 (n + 1)

end

end A060866.P5716268943538062074

namespace A060866

/-- `2*A070038(n+1)-A079667(n+1)` -/
def P5716268943538062074.Spec : Prop :=
  ∀ n, P5716268943538062074.a n = A060866 (n + 1)

end A060866

/-! ## A060866.P9667756286911027450

`2*A000203(n+1)-A337177(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060866

/-- `2*A000203(n+1)-A337177(n+1)` -/
def P9667756286911027450.Spec : Prop :=
  ∀ n, P9667756286911027450.a n = A060866 (n + 1)

theorem P9667756286911027450.correct : P9667756286911027450.Spec := by
  intro n
  simp only [A060866, Nat.add_sub_cancel]

end A060866

/-! ## A060866.P14168674973347098524

`2*A318461(n+1)-A318460(n+1)`
-/

namespace A060866.P14168674973347098524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318461 (n + 1) - A318460 (n + 1)

end

end A060866.P14168674973347098524

namespace A060866

/-- `2*A318461(n+1)-A318460(n+1)` -/
def P14168674973347098524.Spec : Prop :=
  ∀ n, P14168674973347098524.a n = A060866 (n + 1)

end A060866

/-! ## A060866.P13593820173042858439

`∑{d}[n+1, A178450(#)*A337360((n+1)/#)]`
-/

namespace A060866.P13593820173042858439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A178450 d * A337360 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060866.P13593820173042858439

namespace A060866

/-- `∑{d}[n+1, A178450(#)*A337360((n+1)/#)]` -/
def P13593820173042858439.Spec : Prop :=
  ∀ n, P13593820173042858439.a n = A060866 (n + 1)

end A060866

/-! ## A060866.P14399891653353037778

`A000203(n+1)+Δ[A000217(A000196(n))]`
-/

namespace A060866.P14399891653353037778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (f1 (n + 1) - f1 n)

end

end A060866.P14399891653353037778

namespace A060866

/-- `A000203(n+1)+Δ[A000217(A000196(n))]` -/
def P14399891653353037778.Spec : Prop :=
  ∀ n, P14399891653353037778.a n = A060866 (n + 1)

end A060866

/-! ## A060866.P6852718306895740874

`A037213(n+1)+A117004(n+1)+A079667(n+1)`
-/

namespace A060866.P6852718306895740874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (n + 1) + (A117004 (n + 1) + A079667 (n + 1))

end

end A060866.P6852718306895740874

namespace A060866

/-- `A037213(n+1)+A117004(n+1)+A079667(n+1)` -/
def P6852718306895740874.Spec : Prop :=
  ∀ n, P6852718306895740874.a n = A060866 (n + 1)

end A060866

/-! ## A060866.P9027306574520523959

`A037213(n+1)+A337177(n+1)+A037213(n+1)`
-/

namespace A060866.P9027306574520523959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (n + 1) + (A337177 (n + 1) + A037213 (n + 1))

end

end A060866.P9027306574520523959

namespace A060866

/-- `A037213(n+1)+A337177(n+1)+A037213(n+1)` -/
def P9027306574520523959.Spec : Prop :=
  ∀ n, P9027306574520523959.a n = A060866 (n + 1)

end A060866

/-! ## A060866.P12754012169099624953

`A037213(n+1)+A345320(n+1)+A069290(n+1)`
-/

namespace A060866.P12754012169099624953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (n + 1) + (A345320 (n + 1) + A069290 (n + 1))

end

end A060866.P12754012169099624953

namespace A060866

/-- `A037213(n+1)+A345320(n+1)+A069290(n+1)` -/
def P12754012169099624953.Spec : Prop :=
  ∀ n, P12754012169099624953.a n = A060866 (n + 1)

end A060866

/-! ## A060866.P15805529121296778156

`A037213(n+1)+A318463(n+1)+A318461(n+1)`
-/

namespace A060866.P15805529121296778156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (n + 1) + (A318463 (n + 1) + A318461 (n + 1))

end

end A060866.P15805529121296778156

namespace A060866

/-- `A037213(n+1)+A318463(n+1)+A318461(n+1)` -/
def P15805529121296778156.Spec : Prop :=
  ∀ n, P15805529121296778156.a n = A060866 (n + 1)

end A060866

/-! ## A060866.P16355907964263492084

`A007503(n+1)+A037213(n+1)-A000005(n+1)`
-/

namespace A060866.P16355907964263492084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) + (A037213 (n + 1) - A000005 (n + 1))

end

end A060866.P16355907964263492084

namespace A060866

/-- `A007503(n+1)+A037213(n+1)-A000005(n+1)` -/
def P16355907964263492084.Spec : Prop :=
  ∀ n, P16355907964263492084.a n = A060866 (n + 1)

end A060866

/-! ## A060866.P15924060843932367000

`A000203(n+1)+A066839(n+1)-A070039(n+1)`
-/

namespace A060866.P15924060843932367000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A066839 (n + 1) - A070039 (n + 1))

end

end A060866.P15924060843932367000

namespace A060866

/-- `A000203(n+1)+A066839(n+1)-A070039(n+1)` -/
def P15924060843932367000.Spec : Prop :=
  ∀ n, P15924060843932367000.a n = A060866 (n + 1)

end A060866

/-! ## A060866.P17165164721979339827

`A000203(n+1)+A318462(n+1)-A318460(n+1)`
-/

namespace A060866.P17165164721979339827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A318462 (n + 1) - A318460 (n + 1))

end

end A060866.P17165164721979339827

namespace A060866

/-- `A000203(n+1)+A318462(n+1)-A318460(n+1)` -/
def P17165164721979339827.Spec : Prop :=
  ∀ n, P17165164721979339827.a n = A060866 (n + 1)

end A060866

/-! ## A060866.P15415005065179807484

`A037213(n+1)+A064840(n+1)/A000005(n+1)`
-/

namespace A060866.P15415005065179807484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037213 (n + 1) : ℚ) + (A064840 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A060866.P15415005065179807484

namespace A060866

/-- `A037213(n+1)+A064840(n+1)/A000005(n+1)` -/
def P15415005065179807484.Spec : Prop :=
  ∀ n, P15415005065179807484.a n = (A060866 (n + 1) : ℚ)

end A060866

/-! ## A060866.P16322363087108764297

`A004277(A070038(n+1))-A079667(n+1)`
-/

namespace A060866.P16322363087108764297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A070038 (n + 1)).toNat - A079667 (n + 1)

end

end A060866.P16322363087108764297

namespace A060866

/-- `A004277(A070038(n+1))-A079667(n+1)` -/
def P16322363087108764297.Spec : Prop :=
  ∀ n, P16322363087108764297.a n = A060866 (n + 1)

end A060866

/-!
# A060867: a(n) = (2^n - 1)^2.

The programs for A060867, the canonical program `A060867.P498166481111640339` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060867 has offset 1).

The definition of A060867 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060867.P498166481111640339

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=9, a(2)=49`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060867

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P498166481111640339.Spec : Prop :=
  ∀ n, P498166481111640339.a n = A060867 (n + 1)

theorem P498166481111640339.correct : P498166481111640339.Spec := by
  intro n
  simp only [A060867, Nat.add_sub_cancel]

end A060867

/-! ## A060867.P11751982251445879572

`∑[2^n]²`
-/

namespace A060867.P11751982251445879572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A060867.P11751982251445879572

namespace A060867

/-- `∑[2^n]²` -/
def P11751982251445879572.Spec : Prop :=
  ∀ n, (P11751982251445879572.a n : ℤ) = A060867 (n + 1)

end A060867

/-! ## A060867.P9905562619330005428

`8*C(2^n, 2)+1`
-/

namespace A060867.P9905562619330005428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.choose (2 ^ n) 2 + 1

end

end A060867.P9905562619330005428

namespace A060867

/-- `8*C(2^n, 2)+1` -/
def P9905562619330005428.Spec : Prop :=
  ∀ n, (P9905562619330005428.a n : ℤ) = A060867 (n + 1)

end A060867

/-! ## A060867.P10170744748463668446

`∑[2^n]^ceil(cosh(sin(n)))`
-/

namespace A060867.P10170744748463668446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (⌈Real.cosh (Real.sin (n : ℝ))⌉ : ℤ)

end

end A060867.P10170744748463668446

namespace A060867

/-- `∑[2^n]^ceil(cosh(sin(n)))` -/
def P10170744748463668446.Spec : Prop :=
  ∀ n, P10170744748463668446.a n = (A060867 (n + 1) : ℚ)

end A060867

/-! ## A060867.P7184057112580958356

`or(1, (1-2^(n+1))²)`
-/

namespace A060867.P7184057112580958356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((1 - (2 ^ (n + 1) : ℤ)) ^ 2)

end

end A060867.P7184057112580958356

namespace A060867

/-- `or(1, (1-2^(n+1))²)` -/
def P7184057112580958356.Spec : Prop :=
  ∀ n, P7184057112580958356.a n = A060867 (n + 1)

end A060867

/-! ## A060867.P11840585932389848187

`∑[2*a(n-1)]^2` with `a(0)=1`
-/

namespace A060867.P11840585932389848187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A060867.P11840585932389848187

namespace A060867

/-- `∑[2*a(n-1)]^2` -/
def P11840585932389848187.Spec : Prop :=
  ∀ n, (P11840585932389848187.a n : ℤ) = A060867 (n + 1)

end A060867

/-! ## A060867.P6984807407767529035

`record[(1-2^abs(1-n))²]`
-/

namespace A060867.P6984807407767529035
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (2 : ℚ) ^ (|1 - (n : ℤ)| : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060867.P6984807407767529035

namespace A060867

/-- `record[(1-2^abs(1-n))²]` -/
def P6984807407767529035.Spec : Prop :=
  ∀ n, P6984807407767529035.a n = (A060867 (n + 1) : ℚ)

end A060867

/-! ## A060867.P10890955284382896134

`∑[2^n]^(2%(n+2))`
-/

namespace A060867.P10890955284382896134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (2 % (n + 2))

end

end A060867.P10890955284382896134

namespace A060867

/-- `∑[2^n]^(2%(n+2))` -/
def P10890955284382896134.Spec : Prop :=
  ∀ n, (P10890955284382896134.a n : ℤ) = A060867 (n + 1)

end A060867

/-! ## A060867.P6778520666564548502

`∑[2^n]^gcd(2, 2*n)`
-/

namespace A060867.P6778520666564548502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ Nat.gcd 2 (2 * n)

end

end A060867.P6778520666564548502

namespace A060867

/-- `∑[2^n]^gcd(2, 2*n)` -/
def P6778520666564548502.Spec : Prop :=
  ∀ n, (P6778520666564548502.a n : ℤ) = A060867 (n + 1)

end A060867

/-! ## A060867.P1232457695741742813

`floor(∑[2*a(n-1)]²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A060867.P1232457695741742813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A060867.P1232457695741742813

namespace A060867

/-- `floor(∑[2*a(n-1)]²)` -/
def P1232457695741742813.Spec : Prop :=
  ∀ n, (P1232457695741742813.a n : ℤ) = A060867 (n + 1)

end A060867

/-! ## A060867.P4936658006253426880

`ceil(∑[2*a(n-1)]²)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A060867.P4936658006253426880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A060867.P4936658006253426880

namespace A060867

/-- `ceil(∑[2*a(n-1)]²)` -/
def P4936658006253426880.Spec : Prop :=
  ∀ n, (P4936658006253426880.a n : ℤ) = A060867 (n + 1)

end A060867

/-! ## A060867.P10284076507800862654

`round(∑[2*a(n-1)]²)` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A060867.P10284076507800862654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A060867.P10284076507800862654

namespace A060867

/-- `round(∑[2*a(n-1)]²)` -/
def P10284076507800862654.Spec : Prop :=
  ∀ n, (P10284076507800862654.a n : ℤ) = A060867 (n + 1)

end A060867

/-! ## A060867.P13343164469843767200

`∑[2^n]^ceil(atan(n+1))`
-/

namespace A060867.P13343164469843767200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (⌈Real.arctan (n + 1 : ℝ)⌉ : ℤ)

end

end A060867.P13343164469843767200

namespace A060867

/-- `∑[2^n]^ceil(atan(n+1))` -/
def P13343164469843767200.Spec : Prop :=
  ∀ n, P13343164469843767200.a n = (A060867 (n + 1) : ℚ)

end A060867

/-! ## A060867.P5736758894545292147

`(4^n-a(n-1))^2` with `a(0)=1`
-/

namespace A060867.P5736758894545292147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((4 ^ n : ℤ) - a (n - 1)) ^ 2

end

end A060867.P5736758894545292147

namespace A060867

/-- `(4^n-a(n-1))^2` -/
def P5736758894545292147.Spec : Prop :=
  ∀ n, P5736758894545292147.a n = A060867 (n + 1)

end A060867

/-! ## A060867.P10264374231604663008

`floor((1-Δ[2*a(n-1)])²)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A060867.P10264374231604663008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ^ 2

end

end A060867.P10264374231604663008

namespace A060867

/-- `floor((1-Δ[2*a(n-1)])²)` -/
def P10264374231604663008.Spec : Prop :=
  ∀ n, P10264374231604663008.a n = A060867 (n + 1)

end A060867

/-! ## A060867.P11954537169530899101

`4*(∑[2*a(n-1)]/2)²` with `a(0)=1`
-/

namespace A060867.P11954537169530899101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2) ^ 2

end

end A060867.P11954537169530899101

namespace A060867

/-- `4*(∑[2*a(n-1)]/2)²` -/
def P11954537169530899101.Spec : Prop :=
  ∀ n, P11954537169530899101.a n = (A060867 (n + 1) : ℚ)

end A060867

/-! ## A060867.P15928608905915142792

`floor(∑[a(n-1)+floor(a(n-1))]²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A060867.P15928608905915142792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A060867.P15928608905915142792

namespace A060867

/-- `floor(∑[a(n-1)+floor(a(n-1))]²)` -/
def P15928608905915142792.Spec : Prop :=
  ∀ n, (P15928608905915142792.a n : ℤ) = A060867 (n + 1)

end A060867

/-! ## A060867.P6655726190774480666

`ceil(∑[a(n-1)+ceil(a(n-1))]²)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A060867.P6655726190774480666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A060867.P6655726190774480666

namespace A060867

/-- `ceil(∑[a(n-1)+ceil(a(n-1))]²)` -/
def P6655726190774480666.Spec : Prop :=
  ∀ n, (P6655726190774480666.a n : ℤ) = A060867 (n + 1)

end A060867

/-!
# A060868: Number of n X n matrices over GF(3) with rank 1.

The programs for A060868, the canonical program `A060868.P3388962282900084515` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060868 has offset 1).

The definition of A060868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060868.P3388962282900084515

`2*∑[3^n]²`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060868

/-- `2*∑[3^n]²` -/
def P3388962282900084515.Spec : Prop :=
  ∀ n, (P3388962282900084515.a n : ℤ) = A060868 (n + 1)

theorem P3388962282900084515.correct : P3388962282900084515.Spec := by
  intro n
  simp only [A060868, Nat.add_sub_cancel]

end A060868

/-! ## A060868.P7273350110638421875

`floor(2*∑[3*a(n-1)]²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A060868.P7273350110638421875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A060868.P7273350110638421875

namespace A060868

/-- `floor(2*∑[3*a(n-1)]²)` -/
def P7273350110638421875.Spec : Prop :=
  ∀ n, (P7273350110638421875.a n : ℤ) = A060868 (n + 1)

end A060868

/-! ## A060868.P17916453480453206518

`∑[lcm(Δ[3^n]-1, Δ[3^n])]`
-/

namespace A060868.P17916453480453206518
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - 1) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060868.P17916453480453206518

namespace A060868

/-- `∑[lcm(Δ[3^n]-1, Δ[3^n])]` -/
def P17916453480453206518.Spec : Prop :=
  ∀ n, (P17916453480453206518.a n : ℤ) = A060868 (n + 1)

end A060868

/-! ## A060868.P10535916130982717098

`3*9^n+3*a(n-1)-1` with `a(0)=2`
-/

namespace A060868.P10535916130982717098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (3 * 9 ^ n : ℤ) + (3 * a (n - 1) - 1)

end

end A060868.P10535916130982717098

namespace A060868

/-- `3*9^n+3*a(n-1)-1` -/
def P10535916130982717098.Spec : Prop :=
  ∀ n, P10535916130982717098.a n = A060868 (n + 1)

end A060868

/-! ## A060868.P11374305331155285395

`∑[2*(xor(1, 2*3^n+1)-1)*3^n]`
-/

namespace A060868.P11374305331155285395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((Nat.xor 1 (2 * 3 ^ n + 1) : ℤ) - 1) * (3 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060868.P11374305331155285395

namespace A060868

/-- `∑[2*(xor(1, 2*3^n+1)-1)*3^n]` -/
def P11374305331155285395.Spec : Prop :=
  ∀ n, P11374305331155285395.a n = A060868 (n + 1)

end A060868

/-! ## A060868.P7608840061870868336

`∑[2*A010035(n)]`
-/

namespace A060868.P7608840061870868336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060868.P7608840061870868336

namespace A060868

/-- `∑[2*A010035(n)]` -/
def P7608840061870868336.Spec : Prop :=
  ∀ n, P7608840061870868336.a n = A060868 (n + 1)

end A060868

/-! ## A060868.P11942942500346165177

`record[2*A140313(n)²]`
-/

namespace A060868.P11942942500346165177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140313 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060868.P11942942500346165177

namespace A060868

/-- `record[2*A140313(n)²]` -/
def P11942942500346165177.Spec : Prop :=
  ∀ n, P11942942500346165177.a n = A060868 (n + 1)

end A060868

/-! ## A060868.P5720951067679670785

`∑[2*A255442(2*n)]`
-/

namespace A060868.P5720951067679670785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255442 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060868.P5720951067679670785

namespace A060868

/-- `∑[2*A255442(2*n)]` -/
def P5720951067679670785.Spec : Prop :=
  ∀ n, P5720951067679670785.a n = A060868 (n + 1)

end A060868

/-! ## A060868.P14453429181128432861

`Δ[2*∑[A003462(n)²]]`
-/

namespace A060868.P14453429181128432861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060868.P14453429181128432861

namespace A060868

/-- `Δ[2*∑[A003462(n)²]]` -/
def P14453429181128432861.Spec : Prop :=
  ∀ n, P14453429181128432861.a n = A060868 (n + 1)

end A060868

/-! ## A060868.P2146134312626849696

`Δ[2*∑[A261547(n)²]]`
-/

namespace A060868.P2146134312626849696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261547 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060868.P2146134312626849696

namespace A060868

/-- `Δ[2*∑[A261547(n)²]]` -/
def P2146134312626849696.Spec : Prop :=
  ∀ n, P2146134312626849696.a n = A060868 (n + 1)

end A060868

/-! ## A060868.P10442866218516884392

`record[2*A173800(n+1)²]`
-/

namespace A060868.P10442866218516884392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173800 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060868.P10442866218516884392

namespace A060868

/-- `record[2*A173800(n+1)²]` -/
def P10442866218516884392.Spec : Prop :=
  ∀ n, P10442866218516884392.a n = A060868 (n + 1)

end A060868

/-! ## A060868.P4917772500021571018

`∑[2*Δ[((A000244(n)-1)/2)²]]`
-/

namespace A060868.P4917772500021571018
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000244 n - 1 : ℚ) / 2) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060868.P4917772500021571018

namespace A060868

/-- `∑[2*Δ[((A000244(n)-1)/2)²]]` -/
def P4917772500021571018.Spec : Prop :=
  ∀ n, P4917772500021571018.a n = (A060868 (n + 1) : ℚ)

end A060868

/-! ## A060868.P15635097232729954875

`A003462(2*(n+1))-∑[3*a(n-1)]` with `a(0)=2`
-/

namespace A060868.P15635097232729954875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (2 * (n + 1)) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A060868.P15635097232729954875

namespace A060868

/-- `A003462(2*(n+1))-∑[3*a(n-1)]` -/
def P15635097232729954875.Spec : Prop :=
  ∀ n, P15635097232729954875.a n = A060868 (n + 1)

end A060868

/-! ## A060868.P15027668245083762229

`∑[A226508(n)-A000244(n)]`
-/

namespace A060868.P15027668245083762229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226508 n - A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060868.P15027668245083762229

namespace A060868

/-- `∑[A226508(n)-A000244(n)]` -/
def P15027668245083762229.Spec : Prop :=
  ∀ n, P15027668245083762229.a n = A060868 (n + 1)

end A060868

/-! ## A060868.P4848627415248483498

`∑[A198961(n)-A048473(n)]`
-/

namespace A060868.P4848627415248483498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198961 n - A048473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060868.P4848627415248483498

namespace A060868

/-- `∑[A198961(n)-A048473(n)]` -/
def P4848627415248483498.Spec : Prop :=
  ∀ n, P4848627415248483498.a n = A060868 (n + 1)

end A060868

/-! ## A060868.P10104400601658346119

`∑[A008776(n)*A048473(n)]`
-/

namespace A060868.P10104400601658346119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n * A048473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060868.P10104400601658346119

namespace A060868

/-- `∑[A008776(n)*A048473(n)]` -/
def P10104400601658346119.Spec : Prop :=
  ∀ n, P10104400601658346119.a n = A060868 (n + 1)

end A060868

/-! ## A060868.P13005541152923005669

`∑[∑[A003946(n)]*A008776(n)]`
-/

namespace A060868.P13005541152923005669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A008776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060868.P13005541152923005669

namespace A060868

/-- `∑[∑[A003946(n)]*A008776(n)]` -/
def P13005541152923005669.Spec : Prop :=
  ∀ n, P13005541152923005669.a n = A060868 (n + 1)

end A060868

/-! ## A060868.P251647107703551979

`∑[Δ[A024023(n)]*A048473(n)]`
-/

namespace A060868.P251647107703551979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A048473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060868.P251647107703551979

namespace A060868

/-- `∑[Δ[A024023(n)]*A048473(n)]` -/
def P251647107703551979.Spec : Prop :=
  ∀ n, P251647107703551979.a n = A060868 (n + 1)

end A060868

/-! ## A060868.P16961517439583490574

`A083884(n+1)-A000244(n+1)`
-/

namespace A060868.P16961517439583490574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083884 (n + 1) - A000244 (n + 1)

end

end A060868.P16961517439583490574

namespace A060868

/-- `A083884(n+1)-A000244(n+1)` -/
def P16961517439583490574.Spec : Prop :=
  ∀ n, P16961517439583490574.a n = A060868 (n + 1)

end A060868

/-! ## A060868.P7977565543893124829

`A238976(n+2)+A238976(n+2)`
-/

namespace A060868.P7977565543893124829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238976 (n + 2) + A238976 (n + 2)

end

end A060868.P7977565543893124829

namespace A060868

/-- `A238976(n+2)+A238976(n+2)` -/
def P7977565543893124829.Spec : Prop :=
  ∀ n, P7977565543893124829.a n = A060868 (n + 1)

end A060868

/-!
# A060869: Number of n X n matrices over GF(4) with rank 1.

The programs for A060869, there is no canonical definition to state claims against.
-/

/-! ## A060869.P1943901904678790670

`3*∑[4^n]²`
-/

namespace A060869.P1943901904678790670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A060869.P1943901904678790670

/-! ## A060869.P13901674560597595665

`∑[4*a(n-1)]²/3` with `a(0)=3`
-/

namespace A060869.P13901674560597595665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 3

end

end A060869.P13901674560597595665

/-! ## A060869.P7555435991327957584

`floor(3*∑[4*a(n-1)]²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A060869.P7555435991327957584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A060869.P7555435991327957584

/-! ## A060869.P4729296812387969273

`(gcd(n, n+1)-4^(n+1))²/3`
-/

namespace A060869.P4729296812387969273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.gcd n (n + 1) : ℤ) - (4 ^ (n + 1) : ℤ)) ^ 2 : ℚ) / 3

end

end A060869.P4729296812387969273

/-! ## A060869.P996415679548860697

`4*A345963(n)-1`
-/

namespace A060869.P996415679548860697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A345963 n - 1

end

end A060869.P996415679548860697

/-! ## A060869.P15006646102357105131

`∑[A164346(n)]²/3`
-/

namespace A060869.P15006646102357105131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164346 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 3

end

end A060869.P15006646102357105131

/-! ## A060869.P16472308101539196080

`Δ[A078904(n)]²/3`
-/

namespace A060869.P16472308101539196080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078904 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2 : ℚ) / 3

end

end A060869.P16472308101539196080

/-! ## A060869.P17425316078955738153

`A208556(Δ[n²])/3`
-/

namespace A060869.P17425316078955738153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208556 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A060869.P17425316078955738153

/-! ## A060869.P9474835270787228378

`A024036(n+1)²/3`
-/

namespace A060869.P9474835270787228378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024036 (n + 1) ^ 2 : ℚ) / 3

end

end A060869.P9474835270787228378

/-! ## A060869.P16645415279911994962

`A103454(n+1)²/3`
-/

namespace A060869.P16645415279911994962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103454 (n + 1) ^ 2 : ℚ) / 3

end

end A060869.P16645415279911994962

/-!
# A060870: Number of n X n matrices over GF(5) with rank 1.

The programs for A060870, there is no canonical definition to state claims against.
-/

/-! ## A060870.P7333055208250488269

`∑[2*5^n]²`
-/

namespace A060870.P7333055208250488269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 5 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A060870.P7333055208250488269

/-! ## A060870.P11938953147027282221

`xor(1, 5^(n+1))²/4`
-/

namespace A060870.P11938953147027282221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (5 ^ (n + 1)) ^ 2 : ℚ) / 4

end

end A060870.P11938953147027282221

/-! ## A060870.P11002725450772921027

`∑[5*a(n-1)]^2` with `a(0)=2`
-/

namespace A060870.P11002725450772921027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A060870.P11002725450772921027

/-! ## A060870.P5416015566752433998

`floor(∑[5*a(n-1)]²)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A060870.P5416015566752433998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A060870.P5416015566752433998

/-! ## A060870.P10882875320674813149

`ceil(∑[5*a(n-1)]²)` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A060870.P10882875320674813149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A060870.P10882875320674813149

/-! ## A060870.P250090054672502709

`round(∑[5*a(n-1)]²)` with `a(0)=2`

`round` is left out, it is the identity on integers.
-/

namespace A060870.P250090054672502709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A060870.P250090054672502709

/-! ## A060870.P344494375569681329

`4*∑[5*a(n-1)]²` with `a(0)=1`
-/

namespace A060870.P344494375569681329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A060870.P344494375569681329

/-! ## A060870.P15041004559317139510

`A146883(n)²/9`
-/

namespace A060870.P15041004559317139510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146883 n ^ 2 : ℚ) / 9

end

end A060870.P15041004559317139510

/-! ## A060870.P5571809306353762560

`A121102(2*(n+2))`
-/

namespace A060870.P5571809306353762560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121102 (2 * (n + 2))

end

end A060870.P5571809306353762560

/-! ## A060870.P2483369218937395284

`∑[floor(Δ[(A024049(n)/2)²])]`
-/

namespace A060870.P2483369218937395284
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A024049 n : ℚ) / 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060870.P2483369218937395284

/-!
# A060871: Number of n X n matrices over GF(7) with rank 1.

The programs for A060871, there is no canonical definition to state claims against.
-/

/-! ## A060871.P18097059237526069681

`6*∑[7^n]²`
-/

namespace A060871.P18097059237526069681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A060871.P18097059237526069681

/-! ## A060871.P899852197021012231

`∑[C(4*7^n, 2)]`
-/

namespace A060871.P899852197021012231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * 7 ^ n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060871.P899852197021012231

/-! ## A060871.P12350553427791503136

`∑[7*a(n-1)]²/6` with `a(0)=6`
-/

namespace A060871.P12350553427791503136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 6

end

end A060871.P12350553427791503136

/-! ## A060871.P1258567548418678113

`floor(6*∑[7*a(n-1)]²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A060871.P1258567548418678113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A060871.P1258567548418678113

/-! ## A060871.P82545890823811394

`A024075(n+1)²/6`
-/

namespace A060871.P82545890823811394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024075 (n + 1) ^ 2 : ℚ) / 6

end

end A060871.P82545890823811394

/-! ## A060871.P17504395430507796267

`∑[A109808(n+1)*A198686(n)]`
-/

namespace A060871.P17504395430507796267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109808 (n + 1) * A198686 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060871.P17504395430507796267

/-!
# A060872: Sum of d*d' over all unordered pairs (d,d') with d*d' = n.

The programs for A060872, the canonical program `A060872.P8672356588515954636` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060872 has offset 1).

The definition of A060872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060872.P8672356588515954636

`(n+1)*ceil(∏{e}[n+1, #+1]/2)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060872

/-- `(n+1)*ceil(∏{e}[n+1, #+1]/2)` -/
def P8672356588515954636.Spec : Prop :=
  ∀ n, P8672356588515954636.a n = A060872 (n + 1)

theorem P8672356588515954636.correct : P8672356588515954636.Spec := by
  intro n
  simp only [A060872, Nat.add_sub_cancel]

end A060872

/-! ## A060872.P4140804828554997717

`(n+1)*A038548(n+1)`
-/

namespace A060872.P4140804828554997717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A038548 (n + 1)

end

end A060872.P4140804828554997717

namespace A060872

/-- `(n+1)*A038548(n+1)` -/
def P4140804828554997717.Spec : Prop :=
  ∀ n, P4140804828554997717.a n = A060872 (n + 1)

end A060872

/-! ## A060872.P4506907279418841811

`(n+1)*(A072670(n)+1)`
-/

namespace A060872.P4506907279418841811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A072670 n + 1)

end

end A060872.P4506907279418841811

namespace A060872

/-- `(n+1)*(A072670(n)+1)` -/
def P4506907279418841811.Spec : Prop :=
  ∀ n, P4506907279418841811.a n = A060872 (n + 1)

end A060872

/-! ## A060872.P15871526373628945083

`(n+1)*sqrt(A330571(n+1))`
-/

namespace A060872.P15871526373628945083
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A330571 (n + 1) : ℝ)

end

end A060872.P15871526373628945083

namespace A060872

/-- `(n+1)*sqrt(A330571(n+1))` -/
def P15871526373628945083.Spec : Prop :=
  ∀ n, P15871526373628945083.a n = (A060872 (n + 1) : ℝ)

end A060872

/-! ## A060872.P12938290408686296242

`(n+1)*Δ[A132106(n)/2]`
-/

namespace A060872.P12938290408686296242
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132106 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (f1 (n + 1) - f1 n)

end

end A060872.P12938290408686296242

namespace A060872

/-- `(n+1)*Δ[A132106(n)/2]` -/
def P12938290408686296242.Spec : Prop :=
  ∀ n, P12938290408686296242.a n = (A060872 (n + 1) : ℚ)

end A060872

/-! ## A060872.P6673453415758119524

`(n+1)/2*A161841(n+1)`
-/

namespace A060872.P6673453415758119524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A161841 (n + 1) : ℚ)

end

end A060872.P6673453415758119524

namespace A060872

/-- `(n+1)/2*A161841(n+1)` -/
def P6673453415758119524.Spec : Prop :=
  ∀ n, P6673453415758119524.a n = (A060872 (n + 1) : ℚ)

end A060872

/-! ## A060872.P2806589988154758335

`(n+1)*ceil(Δ[A006218(n)/2])`
-/

namespace A060872.P2806589988154758335
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006218 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈f1 (n + 1) - f1 n⌉

end

end A060872.P2806589988154758335

namespace A060872

/-- `(n+1)*ceil(Δ[A006218(n)/2])` -/
def P2806589988154758335.Spec : Prop :=
  ∀ n, P2806589988154758335.a n = A060872 (n + 1)

end A060872

/-! ## A060872.P14366566601198515175

`(n+1)*ceil(A000005(n+1)/2)`
-/

namespace A060872.P14366566601198515175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(A000005 (n + 1) : ℚ) / 2⌉

end

end A060872.P14366566601198515175

namespace A060872

/-- `(n+1)*ceil(A000005(n+1)/2)` -/
def P14366566601198515175.Spec : Prop :=
  ∀ n, P14366566601198515175.a n = A060872 (n + 1)

end A060872

/-! ## A060872.P14217520428168888274

`(n+1)*A065033(∏{e}[n+1, #+1])`
-/

namespace A060872.P14217520428168888274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A065033 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A060872.P14217520428168888274

namespace A060872

/-- `(n+1)*A065033(∏{e}[n+1, #+1])` -/
def P14217520428168888274.Spec : Prop :=
  ∀ n, P14217520428168888274.a n = A060872 (n + 1)

end A060872

/-! ## A060872.P13111288893181390209

`(n+1)*A008619(A032741(n+1))`
-/

namespace A060872.P13111288893181390209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008619 (A032741 (n + 1)).toNat

end

end A060872.P13111288893181390209

namespace A060872

/-- `(n+1)*A008619(A032741(n+1))` -/
def P13111288893181390209.Spec : Prop :=
  ∀ n, P13111288893181390209.a n = A060872 (n + 1)

end A060872

/-! ## A060872.P16224782998852333507

`(n+1)*A065033(A000005(n+1))`
-/

namespace A060872.P16224782998852333507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A065033 (A000005 (n + 1)).toNat

end

end A060872.P16224782998852333507

namespace A060872

/-- `(n+1)*A065033(A000005(n+1))` -/
def P16224782998852333507.Spec : Prop :=
  ∀ n, P16224782998852333507.a n = A060872 (n + 1)

end A060872

/-! ## A060872.P14864406380601894325

`(n+1)*A026922(A062011(n+1))`
-/

namespace A060872.P14864406380601894325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A026922 (A062011 (n + 1)).toNat

end

end A060872.P14864406380601894325

namespace A060872

/-- `(n+1)*A026922(A062011(n+1))` -/
def P14864406380601894325.Spec : Prop :=
  ∀ n, P14864406380601894325.a n = A060872 (n + 1)

end A060872

/-! ## A060872.P6038252445965346601

`(n+1)*A034877(A066446(n+1))`
-/

namespace A060872.P6038252445965346601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034877 (A066446 (n + 1)).toNat

end

end A060872.P6038252445965346601

namespace A060872

/-- `(n+1)*A034877(A066446(n+1))` -/
def P6038252445965346601.Spec : Prop :=
  ∀ n, P6038252445965346601.a n = A060872 (n + 1)

end A060872

/-! ## A060872.P2511388591635184420

`(n+1)*A008621(A114003(n+1))`
-/

namespace A060872.P2511388591635184420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008621 (A114003 (n + 1)).toNat

end

end A060872.P2511388591635184420

namespace A060872

/-- `(n+1)*A008621(A114003(n+1))` -/
def P2511388591635184420.Spec : Prop :=
  ∀ n, P2511388591635184420.a n = A060872 (n + 1)

end A060872

/-! ## A060872.P18328161085638639803

`(n+1)*A080513(A070824(n+1))`
-/

namespace A060872.P18328161085638639803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A080513 (A070824 (n + 1)).toNat

end

end A060872.P18328161085638639803

namespace A060872

/-- `(n+1)*A080513(A070824(n+1))` -/
def P18328161085638639803.Spec : Prop :=
  ∀ n, P18328161085638639803.a n = A060872 (n + 1)

end A060872

/-! ## A060872.P13023599213129628254

`(n+1)*A004526(A334954(n+1))`
-/

namespace A060872.P13023599213129628254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004526 (A334954 (n + 1)).toNat

end

end A060872.P13023599213129628254

namespace A060872

/-- `(n+1)*A004526(A334954(n+1))` -/
def P13023599213129628254.Spec : Prop :=
  ∀ n, P13023599213129628254.a n = A060872 (n + 1)

end A060872

/-! ## A060872.P12927760539614281928

`(n+1)*A004526(A000005(n+1)+1)`
-/

namespace A060872.P12927760539614281928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004526 (A000005 (n + 1) + 1).toNat

end

end A060872.P12927760539614281928

namespace A060872

/-- `(n+1)*A004526(A000005(n+1)+1)` -/
def P12927760539614281928.Spec : Prop :=
  ∀ n, P12927760539614281928.a n = A060872 (n + 1)

end A060872

/-! ## A060872.P5376907890024868802

`∑{d}[n+1, A000010(#)*A318676((n+1)/#)]`
-/

namespace A060872.P5376907890024868802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A318676 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060872.P5376907890024868802

namespace A060872

/-- `∑{d}[n+1, A000010(#)*A318676((n+1)/#)]` -/
def P5376907890024868802.Spec : Prop :=
  ∀ n, P5376907890024868802.a n = A060872 (n + 1)

end A060872

/-! ## A060872.P1900732703026047074

`Δ[A083356(n)]`
-/

namespace A060872.P1900732703026047074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060872.P1900732703026047074

namespace A060872

/-- `Δ[A083356(n)]` -/
def P1900732703026047074.Spec : Prop :=
  ∀ n, P1900732703026047074.a n = A060872 (n + 1)

end A060872

/-! ## A060872.P4719032801076309006

`A083356(n+1)-A083356(n)`
-/

namespace A060872.P4719032801076309006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083356 (n + 1) - A083356 n

end

end A060872.P4719032801076309006

namespace A060872

/-- `A083356(n+1)-A083356(n)` -/
def P4719032801076309006.Spec : Prop :=
  ∀ n, P4719032801076309006.a n = A060872 (n + 1)

end A060872

/-!
# A060873: Intrinsic 3-palindromes: n is an intrinsic k-palindrome if it is a k-digit palindrome in some base.

The programs for A060873, there is no canonical definition to state claims against.
-/

/-! ## A060873.P15051398395008772037

`lt[A307409(A298422(n+1)), A135549(n)]`
-/

namespace A060873.P15051398395008772037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307409 (A298422 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135549 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A060873.P15051398395008772037

/-!
# A060877: Intrinsic 7-palindromes: n is an intrinsic k-palindrome if it is a k-digit palindrome in some base.

The programs for A060877, there is no canonical definition to state claims against.
-/

/-! ## A060877.P16846774208548425058

`xor(7, eq[8, A175920(n)])`
-/

namespace A060877.P16846774208548425058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175920 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060877.P16846774208548425058

/-! ## A060877.P3226093764421522686

`xor(4, eq[20, A175919(n)])`
-/

namespace A060877.P3226093764421522686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060877.P3226093764421522686

/-! ## A060877.P7140362844688557986

`eq[63, A055945(n)]+1`
-/

namespace A060877.P7140362844688557986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060877.P7140362844688557986

/-! ## A060877.P2079562501522942681

`eq[or(1, n), A217557(n)]`
-/

namespace A060877.P2079562501522942681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217557 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060877.P2079562501522942681

/-!
# A060878: Intrinsic 8-palindromes: n is an intrinsic k-palindrome if it is a k-digit palindrome in some base.

The programs for A060878, there is no canonical definition to state claims against.
-/

/-! ## A060878.P3352698596784334319

`A260211(n+53)`
-/

namespace A060878.P3352698596784334319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260211 (n + 53)

end

end A060878.P3352698596784334319

/-! ## A060878.P12225841161750891776

`eq[or(1, n), A160638(n)]`
-/

namespace A060878.P12225841161750891776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160638 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060878.P12225841161750891776

/-! ## A060878.P11954709242907327553

`eq[and(1, n+1), A217557(n)]`
-/

namespace A060878.P11954709242907327553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217557 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060878.P11954709242907327553

/-! ## A060878.P5633952223923686173

`eq[4, A165475(A175920(n))]`
-/

namespace A060878.P5633952223923686173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165475 (A175920 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060878.P5633952223923686173

/-!
# A060879: Intrinsic 9-palindromes: n is an intrinsic k-palindrome if it is a k-digit palindrome in some base.

The programs for A060879, there is no canonical definition to state claims against.
-/

/-! ## A060879.P18026697237409757755

`A030101(16*A048700(n+16))`
-/

namespace A060879.P18026697237409757755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (16 * A048700 (n + 16)).toNat

end

end A060879.P18026697237409757755

/-! ## A060879.P3251518516176560706

`A030101(lcm(16, A048700(n+16)))`
-/

namespace A060879.P3251518516176560706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lcm 16 (A048700 (n + 16)))

end

end A060879.P3251518516176560706

/-! ## A060879.P2539883855691440928

`A003602(16*A048700(n+16)-8)`
-/

namespace A060879.P2539883855691440928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (16 * A048700 (n + 16) - 8).toNat

end

end A060879.P2539883855691440928

/-! ## A060879.P15966966848515995839

`A000265(8*16*A048700(n+16))`
-/

namespace A060879.P15966966848515995839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (8 * (16 * A048700 (n + 16))).toNat

end

end A060879.P15966966848515995839

/-! ## A060879.P5552568353310986157

`A004525(16*A048700(n+16))/8`
-/

namespace A060879.P5552568353310986157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004525 (16 * A048700 (n + 16)).toNat : ℚ) / 8

end

end A060879.P5552568353310986157

/-!
# A060880: Compositorial numbers (A036691) - 1.

The programs for A060880, there is no canonical definition to state claims against.
-/

/-! ## A060880.P15834823320259558207

`∏[lt[∑{p}[n, #], n]]-1`
-/

namespace A060880.P15834823320259558207
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A060880.P15834823320259558207

/-! ## A060880.P13590319967217611628

`A036691(n)-1`
-/

namespace A060880.P13590319967217611628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036691 n - 1

end

end A060880.P13590319967217611628

/-! ## A060880.P9662538577164610405

`A049650(n)-2`
-/

namespace A060880.P9662538577164610405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049650 n - 2

end

end A060880.P9662538577164610405

/-! ## A060880.P13324598891210303722

`∏[Δ[A051349(n)]]-1`
-/

namespace A060880.P13324598891210303722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A060880.P13324598891210303722

/-! ## A060880.P9438107782459915991

`∏[A018252(n+1)]-1`
-/

namespace A060880.P9438107782459915991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A060880.P9438107782459915991

/-! ## A060880.P5505172574199642856

`∏[A141468(n+2)]-1`
-/

namespace A060880.P5505172574199642856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A060880.P5505172574199642856

/-! ## A060880.P9119148919318915040

`∏[sqrt(A062312(n+1))]-1`
-/

namespace A060880.P9119148919318915040
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062312 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A060880.P9119148919318915040

/-! ## A060880.P12539659975464062270

`∏[∑[A054546(n+1)]]-1`
-/

namespace A060880.P12539659975464062270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A060880.P12539659975464062270

/-! ## A060880.P16371282330077652234

`∏[Δ[A175967(n+1)]]-1`
-/

namespace A060880.P16371282330077652234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175967 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A060880.P16371282330077652234

/-! ## A060880.P14348277348128402739

`∏[record[A005451(n+1)]]-1`
-/

namespace A060880.P14348277348128402739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A060880.P14348277348128402739

/-!
# A060881: n-th primorial (A002110) + prime(n + 1).

The programs for A060881, there is no canonical definition to state claims against.
-/

/-! ## A060881.P16432498397085267069

`A002110(n)+A000040(n+1)`
-/

namespace A060881.P16432498397085267069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n + A000040 (n + 1)

end

end A060881.P16432498397085267069

/-! ## A060881.P8358314794705757737

`A002110(n)+Δ[A007504(n)]`
-/

namespace A060881.P8358314794705757737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n + (f1 (n + 1) - f1 n)

end

end A060881.P8358314794705757737

/-! ## A060881.P874368510914959905

`A002110(n)+p?[A001057(n)]`
-/

namespace A060881.P874368510914959905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060881.P874368510914959905

/-! ## A060881.P5736232266998542358

`A002110(n)+p?[A004281(n)]`
-/

namespace A060881.P5736232266998542358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060881.P5736232266998542358

/-! ## A060881.P1216028959123726021

`A355590(n)+A007504(n+1)`
-/

namespace A060881.P1216028959123726021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355590 n + A007504 (n + 1)

end

end A060881.P1216028959123726021

/-! ## A060881.P5117543052289031984

`A008578(n+2)+A002110(n)`
-/

namespace A060881.P5117543052289031984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + A002110 n

end

end A060881.P5117543052289031984

/-! ## A060881.P2896634520853849652

`A182986(n+2)+A002110(n)`
-/

namespace A060881.P2896634520853849652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) + A002110 n

end

end A060881.P2896634520853849652

/-! ## A060881.P4753650312969328713

`2*A002110(n)-A060882(n)`
-/

namespace A060881.P4753650312969328713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002110 n - A060882 n

end

end A060881.P4753650312969328713

/-! ## A060881.P14237354569144936788

`A096334(∑[n])+A000040(n+1)`
-/

namespace A060881.P14237354569144936788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 (∑ j ∈ Finset.range (n + 1), f1 j) + A000040 (n + 1)

end

end A060881.P14237354569144936788

/-!
# A060882: a(n) = n-th primorial (A002110) minus next prime.

The programs for A060882, there is no canonical definition to state claims against.
-/

/-! ## A060882.P9203523152603931370

`A002110(n)-Δ[A007504(n)]`
-/

namespace A060882.P9203523152603931370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n - (f1 (n + 1) - f1 n)

end

end A060882.P9203523152603931370

/-! ## A060882.P5111155583848047273

`A002110(n)-p?[A001057(n)]`
-/

namespace A060882.P5111155583848047273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060882.P5111155583848047273

/-! ## A060882.P12603193991344553353

`A002110(n)-p?[A004281(n)]`
-/

namespace A060882.P12603193991344553353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060882.P12603193991344553353

/-! ## A060882.P257702253179695774

`A002110(n)-A000040(n+1)`
-/

namespace A060882.P257702253179695774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n - A000040 (n + 1)

end

end A060882.P257702253179695774

/-! ## A060882.P9797365008302275567

`A002110(n)-A008578(n+2)`
-/

namespace A060882.P9797365008302275567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n - A008578 (n + 2)

end

end A060882.P9797365008302275567

/-! ## A060882.P16089294988864034737

`A002110(n)-A182986(n+2)`
-/

namespace A060882.P16089294988864034737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n - A182986 (n + 2)

end

end A060882.P16089294988864034737

/-! ## A060882.P15823912963040261944

`A096334(∑[n])-A000040(n+1)`
-/

namespace A060882.P15823912963040261944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 (∑ j ∈ Finset.range (n + 1), f1 j) - A000040 (n + 1)

end

end A060882.P15823912963040261944

/-! ## A060882.P10401455375522955830

`A121281(∑[n])-A000040(n+1)`
-/

namespace A060882.P10401455375522955830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 (∑ j ∈ Finset.range (n + 1), f1 j) - A000040 (n + 1)

end

end A060882.P10401455375522955830

/-! ## A060882.P18117589657408961406

`A246868(∑[n])-A000040(n+1)`
-/

namespace A060882.P18117589657408961406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246868 (∑ j ∈ Finset.range (n + 1), f1 j) - A000040 (n + 1)

end

end A060882.P18117589657408961406

/-!
# A060883: a(n) = n^6 + n^3 + 1.

The programs for A060883, the canonical program `A060883.P9775535391316657163` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060883 has offset 0).

The definition of A060883 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6+n^3+1` (program `A060883.P9775535391316657163`, by `A060883.P9775535391316657163.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060883.P9775535391316657163

`n^6+n^3+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060883

/-- `n^6+n^3+1` -/
def P9775535391316657163.Spec : Prop :=
  ∀ n, (P9775535391316657163.a n : ℤ) = A060883 n

theorem P9775535391316657163.correct : P9775535391316657163.Spec := by
  intro n
  simp only [A060883]

end A060883

/-! ## A060883.P11442251033147161484

`xor(1, 2*A071232(n))`
-/

namespace A060883.P11442251033147161484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * A071232 n)

end

end A060883.P11442251033147161484

namespace A060883

/-- `xor(1, 2*A071232(n))` -/
def P11442251033147161484.Spec : Prop :=
  ∀ n, P11442251033147161484.a n = A060883 n

end A060883

/-! ## A060883.P12187215875175229616

`A102909(n)/(n²+1+n)`
-/

namespace A060883.P12187215875175229616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102909 n : ℚ) / (n ^ 2 + 1 + n : ℚ)

end

end A060883.P12187215875175229616

namespace A060883

/-- `A102909(n)/(n²+1+n)` -/
def P12187215875175229616.Spec : Prop :=
  ∀ n, P12187215875175229616.a n = (A060883 n : ℚ)

end A060883

/-! ## A060883.P15468694284570638976

`ceil((2*A000578(n)+1)²/4)`
-/

namespace A060883.P15468694284570638976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * A000578 n + 1) ^ 2 : ℚ) / 4⌉

end

end A060883.P15468694284570638976

namespace A060883

/-- `ceil((2*A000578(n)+1)²/4)` -/
def P15468694284570638976.Spec : Prop :=
  ∀ n, P15468694284570638976.a n = A060883 n

end A060883

/-! ## A060883.P14542375051846148556

`ceil(((n²*A005843(n)+1)/2)²)`
-/

namespace A060883.P14542375051846148556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n ^ 2 : ℤ) * A005843 n + 1 : ℚ) / 2) ^ 2⌉

end

end A060883.P14542375051846148556

namespace A060883

/-- `ceil(((n²*A005843(n)+1)/2)²)` -/
def P14542375051846148556.Spec : Prop :=
  ∀ n, P14542375051846148556.a n = A060883 n

end A060883

/-! ## A060883.P14509664773615988630

`ceil((n²*A004277(n)+1)²/4)`
-/

namespace A060883.P14509664773615988630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n ^ 2 : ℤ) * A004277 n + 1) ^ 2 : ℚ) / 4⌉

end

end A060883.P14509664773615988630

namespace A060883

/-- `ceil((n²*A004277(n)+1)²/4)` -/
def P14509664773615988630.Spec : Prop :=
  ∀ n, P14509664773615988630.a n = A060883 n

end A060883

/-! ## A060883.P12709497793833406800

`or(1, A001014(n)+A000578(n))`
-/

namespace A060883.P12709497793833406800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001014 n + A000578 n)

end

end A060883.P12709497793833406800

namespace A060883

/-- `or(1, A001014(n)+A000578(n))` -/
def P12709497793833406800.Spec : Prop :=
  ∀ n, P12709497793833406800.a n = A060883 n

end A060883

/-! ## A060883.P15632204918544123124

`or(1, 2*(A085744(n)+A000578(n)))`
-/

namespace A060883.P15632204918544123124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * (A085744 n + A000578 n))

end

end A060883.P15632204918544123124

namespace A060883

/-- `or(1, 2*(A085744(n)+A000578(n)))` -/
def P15632204918544123124.Spec : Prop :=
  ∀ n, P15632204918544123124.a n = A060883 n

end A060883

/-!
# A060884: a(n) = n^4 - n^3 + n^2 - n + 1.

The programs for A060884, the canonical program `A060884.P12231139033874156345` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060884 has offset 0).

The definition of A060884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060884.P8218938943429326339

`(n^5+1)/(n+1)`
-/

namespace A060884.P8218938943429326339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 5 + 1 : ℚ) / (n + 1 : ℚ)

end

end A060884.P8218938943429326339

namespace A060884

/-- `(n^5+1)/(n+1)` -/
def P8218938943429326339.Spec : Prop :=
  ∀ n, P8218938943429326339.a n = (A060884 n : ℚ)

end A060884

/-! ## A060884.P12231139033874156345

`2*(n²+1)*C(n, 2)+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060884

/-- `2*(n²+1)*C(n, 2)+1` -/
def P12231139033874156345.Spec : Prop :=
  ∀ n, (P12231139033874156345.a n : ℤ) = A060884 n

theorem P12231139033874156345.correct : P12231139033874156345.Spec := by
  intro n
  simp only [A060884]

end A060884

/-! ## A060884.P15715483674889151861

`lcm((1-n)²+n, n²)-(n-1)`
-/

namespace A060884.P15715483674889151861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((1 - (n : ℤ)) ^ 2 + (n : ℤ)) (n ^ 2 : ℤ) : ℤ) - ((n : ℤ) - 1)

end

end A060884.P15715483674889151861

namespace A060884

/-- `lcm((1-n)²+n, n²)-(n-1)` -/
def P15715483674889151861.Spec : Prop :=
  ∀ n, P15715483674889151861.a n = A060884 n

end A060884

/-! ## A060884.P16965298108710704112

`2*A071252(n)+1`
-/

namespace A060884.P16965298108710704112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071252 n + 1

end

end A060884.P16965298108710704112

namespace A060884

/-- `2*A071252(n)+1` -/
def P16965298108710704112.Spec : Prop :=
  ∀ n, P16965298108710704112.a n = A060884 n

end A060884

/-! ## A060884.P1112107349562558396

`A309372(n)+1-n`
-/

namespace A060884.P1112107349562558396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309372 n + (1 - (n : ℤ))

end

end A060884.P1112107349562558396

namespace A060884

/-- `A309372(n)+1-n` -/
def P1112107349562558396.Spec : Prop :=
  ∀ n, P1112107349562558396.a n = A060884 n

end A060884

/-! ## A060884.P6499513367029675635

`n*A062158(n)+1`
-/

namespace A060884.P6499513367029675635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062158 n + 1

end

end A060884.P6499513367029675635

namespace A060884

/-- `n*A062158(n)+1` -/
def P6499513367029675635.Spec : Prop :=
  ∀ n, P6499513367029675635.a n = A060884 n

end A060884

/-! ## A060884.P3918930363779976293

`A138849(n+1)+n²`
-/

namespace A060884.P3918930363779976293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138849 (n + 1) + (n ^ 2 : ℤ)

end

end A060884.P3918930363779976293

namespace A060884

/-- `A138849(n+1)+n²` -/
def P3918930363779976293.Spec : Prop :=
  ∀ n, P3918930363779976293.a n = A060884 n

end A060884

/-! ## A060884.P8728598274796480435

`(n-1)*A034262(n)+1`
-/

namespace A060884.P8728598274796480435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A034262 n + 1

end

end A060884.P8728598274796480435

namespace A060884

/-- `(n-1)*A034262(n)+1` -/
def P8728598274796480435.Spec : Prop :=
  ∀ n, P8728598274796480435.a n = A060884 n

end A060884

/-! ## A060884.P14420088014955754667

`A061167(n)/(n+1)+1`
-/

namespace A060884.P14420088014955754667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061167 n : ℚ) / (n + 1 : ℚ) + 1

end

end A060884.P14420088014955754667

namespace A060884

/-- `A061167(n)/(n+1)+1` -/
def P14420088014955754667.Spec : Prop :=
  ∀ n, P14420088014955754667.a n = (A060884 n : ℚ)

end A060884

/-! ## A060884.P14798844917008035898

`C(n, 2)*A005893(n)+1`
-/

namespace A060884.P14798844917008035898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A005893 n + 1

end

end A060884.P14798844917008035898

namespace A060884

/-- `C(n, 2)*A005893(n)+1` -/
def P14798844917008035898.Spec : Prop :=
  ∀ n, P14798844917008035898.a n = A060884 n

end A060884

/-! ## A060884.P8586872566290195963

`(n²+1)²-A027444(n)`
-/

namespace A060884.P8586872566290195963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + 1) ^ 2 : ℤ) - A027444 n

end

end A060884.P8586872566290195963

namespace A060884

/-- `(n²+1)²-A027444(n)` -/
def P8586872566290195963.Spec : Prop :=
  ∀ n, P8586872566290195963.a n = A060884 n

end A060884

/-! ## A060884.P6586017435803972692

`A226450(n)+(1-n)²²`
-/

namespace A060884.P6586017435803972692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226450 n + ((1 - (n : ℤ)) ^ 2) ^ 2

end

end A060884.P6586017435803972692

namespace A060884

/-- `A226450(n)+(1-n)²²` -/
def P6586017435803972692.Spec : Prop :=
  ∀ n, P6586017435803972692.a n = A060884 n

end A060884

/-! ## A060884.P6093416572825273970

`A061600(n)+(n-n²)²`
-/

namespace A060884.P6093416572825273970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061600 n + ((n : ℤ) - (n ^ 2 : ℤ)) ^ 2

end

end A060884.P6093416572825273970

namespace A060884

/-- `A061600(n)+(n-n²)²` -/
def P6093416572825273970.Spec : Prop :=
  ∀ n, P6093416572825273970.a n = A060884 n

end A060884

/-! ## A060884.P3263064798538992414

`(A000578(n)+n)*(n-1)+1`
-/

namespace A060884.P3263064798538992414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 n + (n : ℤ)) * ((n : ℤ) - 1) + 1

end

end A060884.P3263064798538992414

namespace A060884

/-- `(A000578(n)+n)*(n-1)+1` -/
def P3263064798538992414.Spec : Prop :=
  ∀ n, P3263064798538992414.a n = A060884 n

end A060884

/-! ## A060884.P16592725455863299985

`(n-1)*A071568(n)-(n-2)`
-/

namespace A060884.P16592725455863299985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A071568 n - ((n : ℤ) - 2)

end

end A060884.P16592725455863299985

namespace A060884

/-- `(n-1)*A071568(n)-(n-2)` -/
def P16592725455863299985.Spec : Prop :=
  ∀ n, P16592725455863299985.a n = A060884 n

end A060884

/-! ## A060884.P14573311096929827468

`1-n^3+A071253(n)-n`
-/

namespace A060884.P14573311096929827468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 3 : ℤ) + (A071253 n - (n : ℤ))

end

end A060884.P14573311096929827468

namespace A060884

/-- `1-n^3+A071253(n)-n` -/
def P14573311096929827468.Spec : Prop :=
  ∀ n, P14573311096929827468.a n = A060884 n

end A060884

/-! ## A060884.P1043097589618429568

`(A000290(n)+1)*(n²-n)+1`
-/

namespace A060884.P1043097589618429568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000290 n + 1) * ((n ^ 2 : ℤ) - (n : ℤ)) + 1

end

end A060884.P1043097589618429568

namespace A060884

/-- `(A000290(n)+1)*(n²-n)+1` -/
def P1043097589618429568.Spec : Prop :=
  ∀ n, P1043097589618429568.a n = A060884 n

end A060884

/-! ## A060884.P12619639932954994182

`A085537(n)+A002061(n)`
-/

namespace A060884.P12619639932954994182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085537 n + A002061 n

end

end A060884.P12619639932954994182

namespace A060884

/-- `A085537(n)+A002061(n)` -/
def P12619639932954994182.Spec : Prop :=
  ∀ n, P12619639932954994182.a n = A060884 n

end A060884

/-! ## A060884.P7190529697595284519

`A152016(n)+A058331(n)`
-/

namespace A060884.P7190529697595284519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152016 n + A058331 n

end

end A060884.P7190529697595284519

namespace A060884

/-- `A152016(n)+A058331(n)` -/
def P7190529697595284519.Spec : Prop :=
  ∀ n, P7190529697595284519.a n = A060884 n

end A060884

/-! ## A060884.P16351700878213166270

`A132998(n)+A130883(n)`
-/

namespace A060884.P16351700878213166270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132998 n + A130883 n

end

end A060884.P16351700878213166270

namespace A060884

/-- `A132998(n)+A130883(n)` -/
def P16351700878213166270.Spec : Prop :=
  ∀ n, P16351700878213166270.a n = A060884 n

end A060884

/-!
# A060885: a(n) = Sum_{j=0..10} n^j.

The programs for A060885, the canonical program `A060885.P6901912794972420859` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060885 has offset 0).

The definition of A060885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060885.P4548566661907064759

`A228294(n)+1`
-/

namespace A060885.P4548566661907064759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228294 n + 1

end

end A060885.P4548566661907064759

namespace A060885

/-- `A228294(n)+1` -/
def P4548566661907064759.Spec : Prop :=
  ∀ n, P4548566661907064759.a n = A060885 n

end A060885

/-! ## A060885.P13327703544747155060

`n*A103623(n)+1`
-/

namespace A060885.P13327703544747155060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A103623 n + 1

end

end A060885.P13327703544747155060

namespace A060885

/-- `n*A103623(n)+1` -/
def P13327703544747155060.Spec : Prop :=
  ∀ n, P13327703544747155060.a n = A060885 n

end A060885

/-! ## A060885.P6901912794972420859

`n*(A228293(n)+1)+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A060885

/-- `n*(A228293(n)+1)+1` -/
def P6901912794972420859.Spec : Prop :=
  ∀ n, P6901912794972420859.a n = A060885 n

theorem P6901912794972420859.correct : P6901912794972420859.Spec := by
  intro n
  simp only [A060885]

end A060885

/-! ## A060885.P11110228452089720663

`n²*A102909(n)+n+1`
-/

namespace A060885.P11110228452089720663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A102909 n + (n : ℤ) + 1

end

end A060885.P11110228452089720663

namespace A060885

/-- `n²*A102909(n)+n+1` -/
def P11110228452089720663.Spec : Prop :=
  ∀ n, P11110228452089720663.a n = A060885 n

end A060885

/-! ## A060885.P1371409571985087646

`(n+1)*n*A059839(n)+1`
-/

namespace A060885.P1371409571985087646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) * A059839 n) + 1

end

end A060885.P1371409571985087646

namespace A060885

/-- `(n+1)*n*A059839(n)+1` -/
def P1371409571985087646.Spec : Prop :=
  ∀ n, P1371409571985087646.a n = A060885 n

end A060885

/-! ## A060885.P15307901247656089746

`n*(n*A228292(n)+n+1)+1`
-/

namespace A060885.P15307901247656089746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * A228292 n + (n + 1 : ℤ)) + 1

end

end A060885.P15307901247656089746

namespace A060885

/-- `n*(n*A228292(n)+n+1)+1` -/
def P15307901247656089746.Spec : Prop :=
  ∀ n, P15307901247656089746.a n = A060885 n

end A060885

/-! ## A060885.P13692504952753721753

`A103623(n)+A008454(n)`
-/

namespace A060885.P13692504952753721753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103623 n + A008454 n

end

end A060885.P13692504952753721753

namespace A060885

/-- `A103623(n)+A008454(n)` -/
def P13692504952753721753.Spec : Prop :=
  ∀ n, P13692504952753721753.a n = A060885 n

end A060885

/-! ## A060885.P12569432312201834896

`A105067(n)-A008455(n)`
-/

namespace A060885.P12569432312201834896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105067 n - A008455 n

end

end A060885.P12569432312201834896

namespace A060885

/-- `A105067(n)-A008455(n)` -/
def P12569432312201834896.Spec : Prop :=
  ∀ n, P12569432312201834896.a n = A060885 n

end A060885

/-! ## A060885.P13687401978227819312

`A008454(n)+A228293(n)+1`
-/

namespace A060885.P13687401978227819312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 n + (A228293 n + 1)

end

end A060885.P13687401978227819312

namespace A060885

/-- `A008454(n)+A228293(n)+1` -/
def P13687401978227819312.Spec : Prop :=
  ∀ n, P13687401978227819312.a n = A060885 n

end A060885

/-! ## A060885.P17057743007381224022

`A103623(n)+1-A024008(n)`
-/

namespace A060885.P17057743007381224022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103623 n + (1 - A024008 n)

end

end A060885.P17057743007381224022

namespace A060885

/-- `A103623(n)+1-A024008(n)` -/
def P17057743007381224022.Spec : Prop :=
  ∀ n, P17057743007381224022.a n = A060885 n

end A060885

/-! ## A060885.P6780076649359051213

`A002378(n)*A059839(n)+1`
-/

namespace A060885.P6780076649359051213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n * A059839 n + 1

end

end A060885.P6780076649359051213

namespace A060885

/-- `A002378(n)*A059839(n)+1` -/
def P6780076649359051213.Spec : Prop :=
  ∀ n, P6780076649359051213.a n = A060885 n

end A060885

/-! ## A060885.P6298905959738496781

`A053699(n)*A131472(n)+1`
-/

namespace A060885.P6298905959738496781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 n * A131472 n + 1

end

end A060885.P6298905959738496781

namespace A060885

/-- `A053699(n)*A131472(n)+1` -/
def P6298905959738496781.Spec : Prop :=
  ∀ n, P6298905959738496781.a n = A060885 n

end A060885

/-! ## A060885.P2813678342980431739

`n*(n+1)*A053699(n²)+1`
-/

namespace A060885.P2813678342980431739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n + 1 : ℤ) * A053699 (n ^ 2)) + 1

end

end A060885.P2813678342980431739

namespace A060885

/-- `n*(n+1)*A053699(n²)+1` -/
def P2813678342980431739.Spec : Prop :=
  ∀ n, P2813678342980431739.a n = A060885 n

end A060885

/-!
# A060886: a(n) = n^4 - n^2 + 1.

The programs for A060886, the canonical program `A060886.P3465628418501274115` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060886 has offset 0).

The definition of A060886 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4-n²+1` (program `A060886.P3465628418501274115`, by `A060886.P3465628418501274115.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060886.P3465628418501274115

`n^4-n²+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060886

/-- `n^4-n²+1` -/
def P3465628418501274115.Spec : Prop :=
  ∀ n, P3465628418501274115.a n = A060886 n

theorem P3465628418501274115.correct : P3465628418501274115.Spec := by
  intro n
  simp only [A060886]

end A060886

/-! ## A060886.P3575095100777422500

`or(1, 2*C(n², 2))`
-/

namespace A060886.P3575095100777422500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * Nat.choose (n ^ 2) 2)

end

end A060886.P3575095100777422500

namespace A060886

/-- `or(1, 2*C(n², 2))` -/
def P3575095100777422500.Spec : Prop :=
  ∀ n, (P3575095100777422500.a n : ℤ) = A060886 n

end A060886

/-! ## A060886.P14025617146688354403

`xor(1, 2*C(n², 2))`
-/

namespace A060886.P14025617146688354403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * Nat.choose (n ^ 2) 2)

end

end A060886.P14025617146688354403

namespace A060886

/-- `xor(1, 2*C(n², 2))` -/
def P14025617146688354403.Spec : Prop :=
  ∀ n, (P14025617146688354403.a n : ℤ) = A060886 n

end A060886

/-! ## A060886.P2756580323014904730

`or(1, n^4-n²)`
-/

namespace A060886.P2756580323014904730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n ^ 4 : ℤ) - (n ^ 2 : ℤ))

end

end A060886.P2756580323014904730

namespace A060886

/-- `or(1, n^4-n²)` -/
def P2756580323014904730.Spec : Prop :=
  ∀ n, P2756580323014904730.a n = A060886 n

end A060886

/-! ## A060886.P11369930655889368503

`xor(1, n^4-n²)`
-/

namespace A060886.P11369930655889368503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n ^ 4 : ℤ) - (n ^ 2 : ℤ))

end

end A060886.P11369930655889368503

namespace A060886

/-- `xor(1, n^4-n²)` -/
def P11369930655889368503.Spec : Prop :=
  ∀ n, P11369930655889368503.a n = A060886 n

end A060886

/-! ## A060886.P14062633435896437534

`floor(∑[a(n-1)-2]+n^4)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A060886.P14062633435896437534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 4 : ℤ)

end

end A060886.P14062633435896437534

namespace A060886

/-- `floor(∑[a(n-1)-2]+n^4)` -/
def P14062633435896437534.Spec : Prop :=
  ∀ n, P14062633435896437534.a n = A060886 n

end A060886

/-! ## A060886.P14372736044638388304

`floor(∑[a(n-1)-2]²+n²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A060886.P14372736044638388304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (n ^ 2 : ℤ)

end

end A060886.P14372736044638388304

namespace A060886

/-- `floor(∑[a(n-1)-2]²+n²)` -/
def P14372736044638388304.Spec : Prop :=
  ∀ n, P14372736044638388304.a n = A060886 n

end A060886

/-! ## A060886.P1413324773703315280

`(A239607(n)+3)/4`
-/

namespace A060886.P1413324773703315280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239607 n + 3 : ℚ) / 4

end

end A060886.P1413324773703315280

namespace A060886

/-- `(A239607(n)+3)/4` -/
def P1413324773703315280.Spec : Prop :=
  ∀ n, P1413324773703315280.a n = (A060886 n : ℚ)

end A060886

/-! ## A060886.P7168990873069632043

`ceil((A056220(n)/2)²)`
-/

namespace A060886.P7168990873069632043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A056220 n : ℚ) / 2) ^ 2⌉

end

end A060886.P7168990873069632043

namespace A060886

/-- `ceil((A056220(n)/2)²)` -/
def P7168990873069632043.Spec : Prop :=
  ∀ n, P7168990873069632043.a n = A060886 n

end A060886

/-! ## A060886.P16894519365017909655

`A002604(n)/(n²+1)`
-/

namespace A060886.P16894519365017909655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002604 n : ℚ) / (n ^ 2 + 1 : ℚ)

end

end A060886.P16894519365017909655

namespace A060886

/-- `A002604(n)/(n²+1)` -/
def P16894519365017909655.Spec : Prop :=
  ∀ n, P16894519365017909655.a n = (A060886 n : ℚ)

end A060886

/-! ## A060886.P1001686922287512690

`ceil((2*(n-1)*A011379(n)+1)/2)`
-/

namespace A060886.P1001686922287512690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * ((n : ℤ) - 1) * A011379 n + 1 : ℚ) / 2⌉

end

end A060886.P1001686922287512690

namespace A060886

/-- `ceil((2*(n-1)*A011379(n)+1)/2)` -/
def P1001686922287512690.Spec : Prop :=
  ∀ n, P1001686922287512690.a n = A060886 n

end A060886

/-! ## A060886.P207801880330632726

`abs(A000290(n)-A000290(n)²-1)`
-/

namespace A060886.P207801880330632726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 n - A000290 n ^ 2 - 1|

end

end A060886.P207801880330632726

namespace A060886

/-- `abs(A000290(n)-A000290(n)²-1)` -/
def P207801880330632726.Spec : Prop :=
  ∀ n, P207801880330632726.a n = A060886 n

end A060886

/-! ## A060886.P15794981936737751569

`A002061(n²)`
-/

namespace A060886.P15794981936737751569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n ^ 2)

end

end A060886.P15794981936737751569

namespace A060886

/-- `A002061(n²)` -/
def P15794981936737751569.Spec : Prop :=
  ∀ n, P15794981936737751569.a n = A060886 n

end A060886

/-! ## A060886.P8915819668786591349

`A130770(A132411(n))`
-/

namespace A060886.P8915819668786591349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130770 (A132411 n).toNat

end

end A060886.P8915819668786591349

namespace A060886

/-- `A130770(A132411(n))` -/
def P8915819668786591349.Spec : Prop :=
  ∀ n, P8915819668786591349.a n = A060886 n

end A060886

/-! ## A060886.P9933663822350762560

`sqrt(A058031(n²))`
-/

namespace A060886.P9933663822350762560
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058031 (n ^ 2) : ℝ)

end

end A060886.P9933663822350762560

namespace A060886

/-- `sqrt(A058031(n²))` -/
def P9933663822350762560.Spec : Prop :=
  ∀ n, P9933663822350762560.a n = (A060886 n : ℝ)

end A060886

/-! ## A060886.P35758890202659478

`A051890(n²)/2`
-/

namespace A060886.P35758890202659478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051890 (n ^ 2) : ℚ) / 2

end

end A060886.P35758890202659478

namespace A060886

/-- `A051890(n²)/2` -/
def P35758890202659478.Spec : Prop :=
  ∀ n, P35758890202659478.a n = (A060886 n : ℚ)

end A060886

/-! ## A060886.P10077917963334668388

`sqrt(A173785(n²)/2)`
-/

namespace A060886.P10077917963334668388
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A173785 (n ^ 2) : ℚ) / 2 : ℝ)

end

end A060886.P10077917963334668388

namespace A060886

/-- `sqrt(A173785(n²)/2)` -/
def P10077917963334668388.Spec : Prop :=
  ∀ n, P10077917963334668388.a n = (A060886 n : ℝ)

end A060886

/-! ## A060886.P1241162475256334312

`A059826(n²)/A059826(n)`
-/

namespace A060886.P1241162475256334312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059826 (n ^ 2) : ℚ) / (A059826 n : ℚ)

end

end A060886.P1241162475256334312

namespace A060886

/-- `A059826(n²)/A059826(n)` -/
def P1241162475256334312.Spec : Prop :=
  ∀ n, P1241162475256334312.a n = (A060886 n : ℚ)

end A060886

/-!
# A060887: a(n) = Sum_{j=0..12} n^j.

The programs for A060887, the canonical program `A060887.P3735097467681790088` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060887 has offset 0).

The definition of A060887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060887.P3735097467681790088

`1+n*(1+n²)*(1+n^4+n^8)*(1+n)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060887

/-- `1+n*(1+n²)*(1+n^4+n^8)*(1+n)` -/
def P3735097467681790088.Spec : Prop :=
  ∀ n, (P3735097467681790088.a n : ℤ) = A060887 n

theorem P3735097467681790088.correct : P3735097467681790088.Spec := by
  intro n
  simp only [A060887]

end A060887

/-! ## A060887.P8739596440428352237

`or(1, n*A105067(n)+1)`
-/

namespace A060887.P8739596440428352237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * A105067 n + 1)

end

end A060887.P8739596440428352237

namespace A060887

/-- `or(1, n*A105067(n)+1)` -/
def P8739596440428352237.Spec : Prop :=
  ∀ n, P8739596440428352237.a n = A060887 n

end A060887

/-! ## A060887.P16974137834990123645

`round(A104376(n)/A104682(n)*A104376(n))`
-/

namespace A060887.P16974137834990123645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A104376 n : ℚ) / (A104682 n : ℚ) * (A104376 n : ℚ))

end

end A060887.P16974137834990123645

namespace A060887

/-- `round(A104376(n)/A104682(n)*A104376(n))` -/
def P16974137834990123645.Spec : Prop :=
  ∀ n, P16974137834990123645.a n = A060887 n

end A060887

/-! ## A060887.P16585480402544356138

`round(A104376(n)²/A104682(n))`
-/

namespace A060887.P16585480402544356138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A104376 n ^ 2 : ℚ) / (A104682 n : ℚ))

end

end A060887.P16585480402544356138

namespace A060887

/-- `round(A104376(n)²/A104682(n))` -/
def P16585480402544356138.Spec : Prop :=
  ∀ n, P16585480402544356138.a n = A060887 n

end A060887

/-! ## A060887.P10313372541341537997

`A104878(eq[13, A004736(n+1)])`
-/

namespace A060887.P10313372541341537997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060887.P10313372541341537997

namespace A060887

/-- `A104878(eq[13, A004736(n+1)])` -/
def P10313372541341537997.Spec : Prop :=
  ∀ n, P10313372541341537997.a n = A060887 n

end A060887

/-!
# A060888: a(n) = n^6 - n^5 + n^4 - n^3 + n^2 - n + 1.

The programs for A060888, the canonical program `A060888.P18100299168051920700` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060888 has offset 0).

The definition of A060888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060888.P1094881806709456907

`(n^7+1)/(n+1)`
-/

namespace A060888.P1094881806709456907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 7 + 1 : ℚ) / (n + 1 : ℚ)

end

end A060888.P1094881806709456907

namespace A060888

/-- `(n^7+1)/(n+1)` -/
def P1094881806709456907.Spec : Prop :=
  ∀ n, P1094881806709456907.a n = (A060888 n : ℚ)

end A060888

/-! ## A060888.P18100299168051920700

`n*A062159(n)+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A060888

/-- `n*A062159(n)+1` -/
def P18100299168051920700.Spec : Prop :=
  ∀ n, P18100299168051920700.a n = A060888 n

theorem P18100299168051920700.correct : P18100299168051920700.Spec := by
  intro n
  simp only [A060888]

end A060888

/-! ## A060888.P5999234564767218995

`floor(A258806(n)/(n+1))`
-/

namespace A060888.P5999234564767218995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A258806 n : ℚ) / (n + 1 : ℚ)⌋

end

end A060888.P5999234564767218995

namespace A060888

/-- `floor(A258806(n)/(n+1))` -/
def P5999234564767218995.Spec : Prop :=
  ∀ n, P5999234564767218995.a n = A060888 n

end A060888

/-! ## A060888.P14495888747829616609

`A133499(n)/(n+1)+1`
-/

namespace A060888.P14495888747829616609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133499 n : ℚ) / (n + 1 : ℚ) + 1

end

end A060888.P14495888747829616609

namespace A060888

/-- `A133499(n)/(n+1)+1` -/
def P14495888747829616609.Spec : Prop :=
  ∀ n, P14495888747829616609.a n = (A060888 n : ℚ)

end A060888

/-! ## A060888.P17411113909717820628

`n*A191012(n)-(n-1)`
-/

namespace A060888.P17411113909717820628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A191012 n - ((n : ℤ) - 1)

end

end A060888.P17411113909717820628

namespace A060888

/-- `n*A191012(n)-(n-1)` -/
def P17411113909717820628.Spec : Prop :=
  ∀ n, P17411113909717820628.a n = A060888 n

end A060888

/-! ## A060888.P8531014233690606088

`floor(A001015(n)/(n+1))+1`
-/

namespace A060888.P8531014233690606088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001015 n : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A060888.P8531014233690606088

namespace A060888

/-- `floor(A001015(n)/(n+1))+1` -/
def P8531014233690606088.Spec : Prop :=
  ∀ n, P8531014233690606088.a n = A060888 n

end A060888

/-! ## A060888.P8663218866210928820

`((1-n)²+n)*A058895(n)+1`
-/

namespace A060888.P8663218866210928820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 + (n : ℤ)) * A058895 n + 1

end

end A060888.P8663218866210928820

namespace A060888

/-- `((1-n)²+n)*A058895(n)+1` -/
def P8663218866210928820.Spec : Prop :=
  ∀ n, P8663218866210928820.a n = A060888 n

end A060888

/-! ## A060888.P472383405564487416

`A085539(n)+A060884(n)`
-/

namespace A060888.P472383405564487416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085539 n + A060884 n

end

end A060888.P472383405564487416

namespace A060888

/-- `A085539(n)+A060884(n)` -/
def P472383405564487416.Spec : Prop :=
  ∀ n, P472383405564487416.a n = A060888 n

end A060888

/-! ## A060888.P2512857591260692705

`A001014(n)-A062159(n)`
-/

namespace A060888.P2512857591260692705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n - A062159 n

end

end A060888.P2512857591260692705

namespace A060888

/-- `A001014(n)-A062159(n)` -/
def P2512857591260692705.Spec : Prop :=
  ∀ n, P2512857591260692705.a n = A060888 n

end A060888

/-! ## A060888.P8285064488381379434

`A002604(n)-A191012(n)`
-/

namespace A060888.P8285064488381379434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002604 n - A191012 n

end

end A060888.P8285064488381379434

namespace A060888

/-- `A002604(n)-A191012(n)` -/
def P8285064488381379434.Spec : Prop :=
  ∀ n, P8285064488381379434.a n = A060888 n

end A060888

/-! ## A060888.P8022730401916379996

`A002061(n)+n*A037250(n)`
-/

namespace A060888.P8022730401916379996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n + (n : ℤ) * A037250 n

end

end A060888.P8022730401916379996

namespace A060888

/-- `A002061(n)+n*A037250(n)` -/
def P8022730401916379996.Spec : Prop :=
  ∀ n, P8022730401916379996.a n = A060888 n

end A060888

/-! ## A060888.P5793729455849258839

`n*A000584(n)-A062159(n)`
-/

namespace A060888.P5793729455849258839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000584 n - A062159 n

end

end A060888.P5793729455849258839

namespace A060888

/-- `n*A000584(n)-A062159(n)` -/
def P5793729455849258839.Spec : Prop :=
  ∀ n, P5793729455849258839.a n = A060888 n

end A060888

/-! ## A060888.P6913102764160310606

`A024000(n)+n²*A060884(n)`
-/

namespace A060888.P6913102764160310606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + (n ^ 2 : ℤ) * A060884 n

end

end A060888.P6913102764160310606

namespace A060888

/-- `A024000(n)+n²*A060884(n)` -/
def P6913102764160310606.Spec : Prop :=
  ∀ n, P6913102764160310606.a n = A060888 n

end A060888

/-! ## A060888.P18050512483501301914

`n²*A060884(n)-A023443(n)`
-/

namespace A060888.P18050512483501301914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A060884 n - A023443 n

end

end A060888.P18050512483501301914

namespace A060888

/-- `n²*A060884(n)-A023443(n)` -/
def P18050512483501301914.Spec : Prop :=
  ∀ n, P18050512483501301914.a n = A060888 n

end A060888

/-! ## A060888.P8821834201825710480

`A053716(n+2)/A258808(n+2)*A258806(n)`
-/

namespace A060888.P8821834201825710480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053716 (n + 2) : ℚ) / (A258808 (n + 2) : ℚ) * (A258806 n : ℚ)

end

end A060888.P8821834201825710480

namespace A060888

/-- `A053716(n+2)/A258808(n+2)*A258806(n)` -/
def P8821834201825710480.Spec : Prop :=
  ∀ n, P8821834201825710480.a n = (A060888 n : ℚ)

end A060888

/-! ## A060888.P17852196255718562489

`(A046092(n²)+2)*C(n, 2)+1`
-/

namespace A060888.P17852196255718562489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046092 (n ^ 2) + 2) * (Nat.choose n 2 : ℤ) + 1

end

end A060888.P17852196255718562489

namespace A060888

/-- `(A046092(n²)+2)*C(n, 2)+1` -/
def P17852196255718562489.Spec : Prop :=
  ∀ n, P17852196255718562489.a n = A060888 n

end A060888

/-!
# A060889: a(n) = n^8 - n^7 + n^5 - n^4 + n^3 - n + 1.

The programs for A060889, the canonical program `A060889.P11187294476683647239` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060889 has offset 0).

The definition of A060889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060889.P11187294476683647239

`A061167(n)*A100104(n)+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060889

/-- `A061167(n)*A100104(n)+1` -/
def P11187294476683647239.Spec : Prop :=
  ∀ n, P11187294476683647239.a n = A060889 n

theorem P11187294476683647239.correct : P11187294476683647239.Spec := by
  intro n
  simp only [A060889]

end A060889

/-! ## A060889.P4101516531135677075

`2*A060893(n)-A060894(n)`
-/

namespace A060889.P4101516531135677075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060893 n - A060894 n

end

end A060889.P4101516531135677075

namespace A060889

/-- `2*A060893(n)-A060894(n)` -/
def P4101516531135677075.Spec : Prop :=
  ∀ n, P4101516531135677075.a n = A060889 n

end A060889

/-! ## A060889.P16437533788118269562

`A061600(n)+n*A037251(n)`
-/

namespace A060889.P16437533788118269562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061600 n + (n : ℤ) * A037251 n

end

end A060889.P16437533788118269562

namespace A060889

/-- `A061600(n)+n*A037251(n)` -/
def P16437533788118269562.Spec : Prop :=
  ∀ n, P16437533788118269562.a n = A060889 n

end A060889

/-! ## A060889.P14467115885823927700

`A002061(n)+A240931(n)+A037250(n)`
-/

namespace A060889.P14467115885823927700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n + (A240931 n + A037250 n)

end

end A060889.P14467115885823927700

namespace A060889

/-- `A002061(n)+A240931(n)+A037250(n)` -/
def P14467115885823927700.Spec : Prop :=
  ∀ n, P14467115885823927700.a n = A060889 n

end A060889

/-! ## A060889.P16469463807487567255

`A104682(n)/(A002061(n+1)*A053699(n))`
-/

namespace A060889.P16469463807487567255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104682 n : ℚ) / (A002061 (n + 1) * A053699 n : ℚ)

end

end A060889.P16469463807487567255

namespace A060889

/-- `A104682(n)/(A002061(n+1)*A053699(n))` -/
def P16469463807487567255.Spec : Prop :=
  ∀ n, P16469463807487567255.a n = (A060889 n : ℚ)

end A060889

/-!
# A060890: a(n) = n^8 + 1.

The programs for A060890, the canonical program `A060890.P12762543378779748885` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060890 has offset 0).

The definition of A060890 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8+1` (program `A060890.P12762543378779748885`, by `A060890.P12762543378779748885.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060890.P12762543378779748885

`n^8+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060890

/-- `n^8+1` -/
def P12762543378779748885.Spec : Prop :=
  ∀ n, (P12762543378779748885.a n : ℤ) = A060890 n

theorem P12762543378779748885.correct : P12762543378779748885.Spec := by
  intro n
  simp only [A060890]

end A060890

/-!
# A060891: a(n) = n^6 - n^3 + 1.

The programs for A060891, the canonical program `A060891.P3794235143874389866` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060891 has offset 0).

The definition of A060891 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6-n^3+1` (program `A060891.P3794235143874389866`, by `A060891.P3794235143874389866.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060891.P3794235143874389866

`n^6-n^3+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060891

/-- `n^6-n^3+1` -/
def P3794235143874389866.Spec : Prop :=
  ∀ n, P3794235143874389866.a n = A060891 n

theorem P3794235143874389866.correct : P3794235143874389866.Spec := by
  intro n
  simp only [A060891]

end A060891

/-! ## A060891.P14120154175987567836

`or(1, 2*C(n^3, 2))`
-/

namespace A060891.P14120154175987567836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * Nat.choose (n ^ 3) 2)

end

end A060891.P14120154175987567836

namespace A060891

/-- `or(1, 2*C(n^3, 2))` -/
def P14120154175987567836.Spec : Prop :=
  ∀ n, (P14120154175987567836.a n : ℤ) = A060891 n

end A060891

/-! ## A060891.P14049187585782836191

`xor(1, 2*C(n^3, 2))`
-/

namespace A060891.P14049187585782836191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * Nat.choose (n ^ 3) 2)

end

end A060891.P14049187585782836191

namespace A060891

/-- `xor(1, 2*C(n^3, 2))` -/
def P14049187585782836191.Spec : Prop :=
  ∀ n, (P14049187585782836191.a n : ℤ) = A060891 n

end A060891

/-! ## A060891.P1474808457060221804

`or(1, n^6-n^3)`
-/

namespace A060891.P1474808457060221804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n ^ 6 : ℤ) - (n ^ 3 : ℤ))

end

end A060891.P1474808457060221804

namespace A060891

/-- `or(1, n^6-n^3)` -/
def P1474808457060221804.Spec : Prop :=
  ∀ n, P1474808457060221804.a n = A060891 n

end A060891

/-! ## A060891.P12190705045066261990

`xor(1, 2*A085744(n))`
-/

namespace A060891.P12190705045066261990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * A085744 n)

end

end A060891.P12190705045066261990

namespace A060891

/-- `xor(1, 2*A085744(n))` -/
def P12190705045066261990.Spec : Prop :=
  ∀ n, P12190705045066261990.a n = A060891 n

end A060891

/-! ## A060891.P16058403813850665987

`abs(n^3-A002604(n))`
-/

namespace A060891.P16058403813850665987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 3 : ℤ) - A002604 n|

end

end A060891.P16058403813850665987

namespace A060891

/-- `abs(n^3-A002604(n))` -/
def P16058403813850665987.Spec : Prop :=
  ∀ n, P16058403813850665987.a n = A060891 n

end A060891

/-! ## A060891.P10739962223899192686

`abs(A059830(n)-A100019(n))`
-/

namespace A060891.P10739962223899192686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059830 n - A100019 n|

end

end A060891.P10739962223899192686

namespace A060891

/-- `abs(A059830(n)-A100019(n))` -/
def P10739962223899192686.Spec : Prop :=
  ∀ n, P10739962223899192686.a n = A060891 n

end A060891

/-! ## A060891.P2390090774431032154

`xor(A001222(A136019(3*(n+1))), A136006(n))`
-/

namespace A060891.P2390090774431032154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A136019 (3 * (n + 1))).toNat) (A136006 n)

end

end A060891.P2390090774431032154

namespace A060891

/-- `xor(A001222(A136019(3*(n+1))), A136006(n))` -/
def P2390090774431032154.Spec : Prop :=
  ∀ n, P2390090774431032154.a n = A060891 n

end A060891

/-! ## A060891.P12517835243444827583

`xor(A001222(A135985(n+1)), A136006(n))`
-/

namespace A060891.P12517835243444827583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A135985 (n + 1)).toNat) (A136006 n)

end

end A060891.P12517835243444827583

namespace A060891

/-- `xor(A001222(A135985(n+1)), A136006(n))` -/
def P12517835243444827583.Spec : Prop :=
  ∀ n, P12517835243444827583.a n = A060891 n

end A060891

/-! ## A060891.P2350217752692453272

`A060883(n²)/A060883(n)`
-/

namespace A060891.P2350217752692453272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060883 (n ^ 2) : ℚ) / (A060883 n : ℚ)

end

end A060891.P2350217752692453272

namespace A060891

/-- `A060883(n²)/A060883(n)` -/
def P2350217752692453272.Spec : Prop :=
  ∀ n, P2350217752692453272.a n = (A060891 n : ℚ)

end A060891

/-!
# A060892: a(n) = n^8 - n^6 + n^4 - n^2 + 1.

The programs for A060892, the canonical program `A060892.P2885025687055146704` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060892 has offset 0).

The definition of A060892 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8-n^6+n^4-n²+1` (program `A060892.P2885025687055146704`, by `A060892.P2885025687055146704.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060892.P2885025687055146704

`n^8-n^6+n^4-n²+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060892

/-- `n^8-n^6+n^4-n²+1` -/
def P2885025687055146704.Spec : Prop :=
  ∀ n, P2885025687055146704.a n = A060892 n

theorem P2885025687055146704.correct : P2885025687055146704.Spec := by
  intro n
  simp only [A060892]

end A060892

/-! ## A060892.P12928085294720229178

`(n^10+1)/A002522(n)`
-/

namespace A060892.P12928085294720229178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 10 + 1 : ℚ) / (A002522 n : ℚ)

end

end A060892.P12928085294720229178

namespace A060892

/-- `(n^10+1)/A002522(n)` -/
def P12928085294720229178.Spec : Prop :=
  ∀ n, P12928085294720229178.a n = (A060892 n : ℚ)

end A060892

/-! ## A060892.P13143401822241410248

`A060884(n²)`
-/

namespace A060892.P13143401822241410248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 (n ^ 2)

end

end A060892.P13143401822241410248

namespace A060892

/-- `A060884(n²)` -/
def P13143401822241410248.Spec : Prop :=
  ∀ n, P13143401822241410248.a n = A060892 n

end A060892

/-! ## A060892.P9218986041115350210

`or(1, A060884(A000290(n)))`
-/

namespace A060892.P9218986041115350210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A060884 (A000290 n).toNat)

end

end A060892.P9218986041115350210

namespace A060892

/-- `or(1, A060884(A000290(n)))` -/
def P9218986041115350210.Spec : Prop :=
  ∀ n, P9218986041115350210.a n = A060892 n

end A060892

/-! ## A060892.P18063374957585011830

`A059839(n²)/A059839(n)`
-/

namespace A060892.P18063374957585011830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059839 (n ^ 2) : ℚ) / (A059839 n : ℚ)

end

end A060892.P18063374957585011830

namespace A060892

/-- `A059839(n²)/A059839(n)` -/
def P18063374957585011830.Spec : Prop :=
  ∀ n, P18063374957585011830.a n = (A060892 n : ℚ)

end A060892

/-!
# A060893: a(n) = n^8 - n^4 + 1.

The programs for A060893, the canonical program `A060893.P873499524863098441` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060893 has offset 0).

The definition of A060893 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8-n^4+1` (program `A060893.P873499524863098441`, by `A060893.P873499524863098441.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060893.P873499524863098441

`n^8-n^4+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060893

/-- `n^8-n^4+1` -/
def P873499524863098441.Spec : Prop :=
  ∀ n, P873499524863098441.a n = A060893 n

theorem P873499524863098441.correct : P873499524863098441.Spec := by
  intro n
  simp only [A060893]

end A060893

/-! ## A060893.P16700734273466597555

`or(1, 2*C(n^4, 2))`
-/

namespace A060893.P16700734273466597555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * Nat.choose (n ^ 4) 2)

end

end A060893.P16700734273466597555

namespace A060893

/-- `or(1, 2*C(n^4, 2))` -/
def P16700734273466597555.Spec : Prop :=
  ∀ n, (P16700734273466597555.a n : ℤ) = A060893 n

end A060893

/-! ## A060893.P1956366663847065281

`xor(1, 2*C(n^4, 2))`
-/

namespace A060893.P1956366663847065281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * Nat.choose (n ^ 4) 2)

end

end A060893.P1956366663847065281

namespace A060893

/-- `xor(1, 2*C(n^4, 2))` -/
def P1956366663847065281.Spec : Prop :=
  ∀ n, (P1956366663847065281.a n : ℤ) = A060893 n

end A060893

/-! ## A060893.P987766855953933501

`or(1, n^8-n^4)`
-/

namespace A060893.P987766855953933501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n ^ 8 : ℤ) - (n ^ 4 : ℤ))

end

end A060893.P987766855953933501

namespace A060893

/-- `or(1, n^8-n^4)` -/
def P987766855953933501.Spec : Prop :=
  ∀ n, P987766855953933501.a n = A060893 n

end A060893

/-! ## A060893.P12375154319772225584

`(A001014(n)²+1)/A002523(n)`
-/

namespace A060893.P12375154319772225584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001014 n ^ 2 + 1 : ℚ) / (A002523 n : ℚ)

end

end A060893.P12375154319772225584

namespace A060893

/-- `(A001014(n)²+1)/A002523(n)` -/
def P12375154319772225584.Spec : Prop :=
  ∀ n, P12375154319772225584.a n = (A060893 n : ℚ)

end A060893

/-! ## A060893.P7953884341938464159

`A060886(n²)`
-/

namespace A060893.P7953884341938464159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060886 (n ^ 2)

end

end A060893.P7953884341938464159

namespace A060893

/-- `A060886(n²)` -/
def P7953884341938464159.Spec : Prop :=
  ∀ n, P7953884341938464159.a n = A060893 n

end A060893

/-! ## A060893.P18334290217436213412

`A002604(n²)/A002523(n)`
-/

namespace A060893.P18334290217436213412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002604 (n ^ 2) : ℚ) / (A002523 n : ℚ)

end

end A060893.P18334290217436213412

namespace A060893

/-- `A002604(n²)/A002523(n)` -/
def P18334290217436213412.Spec : Prop :=
  ∀ n, P18334290217436213412.a n = (A060893 n : ℚ)

end A060893

/-! ## A060893.P3543357802956746571

`xor(A014963(A218156(n+1)), A218131(n))`
-/

namespace A060893.P3543357802956746571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (A218156 (n + 1)).toNat) (A218131 n)

end

end A060893.P3543357802956746571

namespace A060893

/-- `xor(A014963(A218156(n+1)), A218131(n))` -/
def P3543357802956746571.Spec : Prop :=
  ∀ n, P3543357802956746571.a n = A060893 n

end A060893

/-!
# A060894: a(n) = n^8 + n^7 - n^5 - n^4 - n^3 + n + 1.

The programs for A060894, the canonical program `A060894.P11370099691922321050` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060894 has offset 0).

The definition of A060894 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8+n^7-n^5-n^4-n^3+n+1` (program `A060894.P11370099691922321050`, by `A060894.P11370099691922321050.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060894.P11370099691922321050

`n^8+n^7-n^5-n^4-n^3+n+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060894

/-- `n^8+n^7-n^5-n^4-n^3+n+1` -/
def P11370099691922321050.Spec : Prop :=
  ∀ n, P11370099691922321050.a n = A060894 n

theorem P11370099691922321050.correct : P11370099691922321050.Spec := by
  intro n
  simp only [A060894]

end A060894

/-! ## A060894.P4115331088165248820

`(A218133(n)+A002061(n))/A002061(n)`
-/

namespace A060894.P4115331088165248820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218133 n + A002061 n : ℚ) / (A002061 n : ℚ)

end

end A060894.P4115331088165248820

namespace A060894

/-- `(A218133(n)+A002061(n))/A002061(n)` -/
def P4115331088165248820.Spec : Prop :=
  ∀ n, P4115331088165248820.a n = (A060894 n : ℚ)

end A060894

/-! ## A060894.P2859485897415338075

`(A002061(n)+A061167(n)*A271208(n))/A002061(n)`
-/

namespace A060894.P2859485897415338075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002061 n + A061167 n * A271208 n : ℚ) / (A002061 n : ℚ)

end

end A060894.P2859485897415338075

namespace A060894

/-- `(A002061(n)+A061167(n)*A271208(n))/A002061(n)` -/
def P2859485897415338075.Spec : Prop :=
  ∀ n, P2859485897415338075.a n = (A060894 n : ℚ)

end A060894

/-! ## A060894.P4654127972804615619

`(A002061(n)+(A131471(n)-1)*A061167(n))/A002061(n)`
-/

namespace A060894.P4654127972804615619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002061 n + (A131471 n - 1) * A061167 n : ℚ) / (A002061 n : ℚ)

end

end A060894.P4654127972804615619

namespace A060894

/-- `(A002061(n)+(A131471(n)-1)*A061167(n))/A002061(n)` -/
def P4654127972804615619.Spec : Prop :=
  ∀ n, P4654127972804615619.a n = (A060894 n : ℚ)

end A060894

/-! ## A060894.P1694351065395446189

`(A002061(n)+n*(A196289(n)+A024002(n)))/A002061(n)`
-/

namespace A060894.P1694351065395446189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002061 n + (n : ℤ) * (A196289 n + A024002 n) : ℚ) / (A002061 n : ℚ)

end

end A060894.P1694351065395446189

namespace A060894

/-- `(A002061(n)+n*(A196289(n)+A024002(n)))/A002061(n)` -/
def P1694351065395446189.Spec : Prop :=
  ∀ n, P1694351065395446189.a n = (A060894 n : ℚ)

end A060894

/-! ## A060894.P12382182569937682888

`(A002061(n)+(A060891(n)-n)*A091940(n+1))/A002061(n)`
-/

namespace A060894.P12382182569937682888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002061 n + (A060891 n - (n : ℤ)) * A091940 (n + 1) : ℚ) / (A002061 n : ℚ)

end

end A060894.P12382182569937682888

namespace A060894

/-- `(A002061(n)+(A060891(n)-n)*A091940(n+1))/A002061(n)` -/
def P12382182569937682888.Spec : Prop :=
  ∀ n, P12382182569937682888.a n = (A060894 n : ℚ)

end A060894

/-! ## A060894.P16497133892494006781

`A060889(n²)/A060889(n)`
-/

namespace A060894.P16497133892494006781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060889 (n ^ 2) : ℚ) / (A060889 n : ℚ)

end

end A060894.P16497133892494006781

namespace A060894

/-- `A060889(n²)/A060889(n)` -/
def P16497133892494006781.Spec : Prop :=
  ∀ n, P16497133892494006781.a n = (A060894 n : ℚ)

end A060894

/-!
# A060895: a(n) = n^16 + 1.

The programs for A060895, the canonical program `A060895.P10166565864394758436` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060895 has offset 0).

The definition of A060895 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^16+1` (program `A060895.P10166565864394758436`, by `A060895.P10166565864394758436.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060895.P10166565864394758436

`n^16+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060895

/-- `n^16+1` -/
def P10166565864394758436.Spec : Prop :=
  ∀ n, (P10166565864394758436.a n : ℤ) = A060895 n

theorem P10166565864394758436.correct : P10166565864394758436.Spec := by
  intro n
  simp only [A060895]

end A060895

/-!
# A060896: a(n) = n^12 - n^6 + 1.

The programs for A060896, the canonical program `A060896.P17158006608412349935` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060896 has offset 0).

The definition of A060896 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^12-n^6+1` (program `A060896.P17158006608412349935`, by `A060896.P17158006608412349935.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060896.P17158006608412349935

`n^12-n^6+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060896

/-- `n^12-n^6+1` -/
def P17158006608412349935.Spec : Prop :=
  ∀ n, P17158006608412349935.a n = A060896 n

theorem P17158006608412349935.correct : P17158006608412349935.Spec := by
  intro n
  simp only [A060896]

end A060896

/-! ## A060896.P17265938757639017663

`abs(A024004(n)+A008456(n))`
-/

namespace A060896.P17265938757639017663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024004 n + A008456 n|

end

end A060896.P17265938757639017663

namespace A060896

/-- `abs(A024004(n)+A008456(n))` -/
def P17265938757639017663.Spec : Prop :=
  ∀ n, P17265938757639017663.a n = A060896 n

end A060896

/-! ## A060896.P869360203748656488

`abs(A024004(n)+A001014(n)²)`
-/

namespace A060896.P869360203748656488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024004 n + A001014 n ^ 2|

end

end A060896.P869360203748656488

namespace A060896

/-- `abs(A024004(n)+A001014(n)²)` -/
def P869360203748656488.Spec : Prop :=
  ∀ n, P869360203748656488.a n = A060896 n

end A060896

/-! ## A060896.P2021765898973252696

`or(1, (A024013(n)-A024019(n))*A000578(n)+1)`
-/

namespace A060896.P2021765898973252696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((A024013 n - A024019 n) * A000578 n + 1)

end

end A060896.P2021765898973252696

namespace A060896

/-- `or(1, (A024013(n)-A024019(n))*A000578(n)+1)` -/
def P2021765898973252696.Spec : Prop :=
  ∀ n, P2021765898973252696.a n = A060896 n

end A060896

/-! ## A060896.P846356745947782974

`or(1, A024120(n)-A024126(n))`
-/

namespace A060896.P846356745947782974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A024120 n - A024126 n)

end

end A060896.P846356745947782974

namespace A060896

/-- `or(1, A024120(n)-A024126(n))` -/
def P846356745947782974.Spec : Prop :=
  ∀ n, P846356745947782974.a n = A060896 n

end A060896

/-! ## A060896.P2329299492314900947

`A060891(n²)`
-/

namespace A060896.P2329299492314900947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060891 (n ^ 2)

end

end A060896.P2329299492314900947

namespace A060896

/-- `A060891(n²)` -/
def P2329299492314900947.Spec : Prop :=
  ∀ n, P2329299492314900947.a n = A060896 n

end A060896

/-! ## A060896.P6987329636572735979

`or(1, A136006(n²))`
-/

namespace A060896.P6987329636572735979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A136006 (n ^ 2))

end

end A060896.P6987329636572735979

namespace A060896

/-- `or(1, A136006(n²))` -/
def P6987329636572735979.Spec : Prop :=
  ∀ n, P6987329636572735979.a n = A060896 n

end A060896

/-! ## A060896.P6149472341922314364

`or(1, A060891(A000290(n)))`
-/

namespace A060896.P6149472341922314364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A060891 (A000290 n).toNat)

end

end A060896.P6149472341922314364

namespace A060896

/-- `or(1, A060891(A000290(n)))` -/
def P6149472341922314364.Spec : Prop :=
  ∀ n, P6149472341922314364.a n = A060896 n

end A060896

/-! ## A060896.P2487393241109561910

`xor(A136006(n²), A361338(n))`
-/

namespace A060896.P2487393241109561910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A136006 (n ^ 2)) (A361338 n)

end

end A060896.P2487393241109561910

namespace A060896

/-- `xor(A136006(n²), A361338(n))` -/
def P2487393241109561910.Spec : Prop :=
  ∀ n, P2487393241109561910.a n = A060896 n

end A060896

/-! ## A060896.P13213937932747933950

`lcm(A033999(n), A060891(A000290(n)))`
-/

namespace A060896.P13213937932747933950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A060891 (A000290 n).toNat)

end

end A060896.P13213937932747933950

namespace A060896

/-- `lcm(A033999(n), A060891(A000290(n)))` -/
def P13213937932747933950.Spec : Prop :=
  ∀ n, (P13213937932747933950.a n : ℤ) = A060896 n

end A060896

/-! ## A060896.P10341434521443314194

`A007318(∑[n])*A060891(A000290(n))`
-/

namespace A060896.P10341434521443314194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A060891 (A000290 n).toNat

end

end A060896.P10341434521443314194

namespace A060896

/-- `A007318(∑[n])*A060891(A000290(n))` -/
def P10341434521443314194.Spec : Prop :=
  ∀ n, P10341434521443314194.a n = A060896 n

end A060896

/-! ## A060896.P17915376430791107243

`A057427(n+1)*A060891(A000290(n))`
-/

namespace A060896.P17915376430791107243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A060891 (A000290 n).toNat

end

end A060896.P17915376430791107243

namespace A060896

/-- `A057427(n+1)*A060891(A000290(n))` -/
def P17915376430791107243.Spec : Prop :=
  ∀ n, P17915376430791107243.a n = A060896 n

end A060896

/-!
# A060897: Number of walks of length n on square lattice, starting at origin, staying in first and third quadrants.

The programs for A060897, there is no canonical definition to state claims against.
-/

/-! ## A060897.P18356865760000230785

`A006516(n)+A000005(A260775(n))`
-/

namespace A060897.P18356865760000230785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n + A000005 (A260775 n).toNat

end

end A060897.P18356865760000230785

/-! ## A060897.P4285397409180655581

`A278083(A347302(n)+A106400(2*n+3))`
-/

namespace A060897.P4285397409180655581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278083 (A347302 n + A106400 (2 * n + 3)).toNat

end

end A060897.P4285397409180655581

/-!
# A060898: Number of walks of length n on square lattice, starting at origin, staying in first, second and third quadrants.

The programs for A060898, there is no canonical definition to state claims against.
-/

/-! ## A060898.P11861808782020710097

`A171896(A273385(n)+A052591(n))`
-/

namespace A060898.P11861808782020710097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171896 (A273385 n + A052591 n).toNat

end

end A060898.P11861808782020710097

/-!
# A060899: Number of walks of length n on square lattice, starting at origin, staying on points with x+y >= 0.

The programs for A060899, the canonical program `A060899.P13915951409761380916` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060899 has offset 0).

The definition of A060899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060899.P13915951409761380916

`2^n*C(n, floor(n/2))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060899

/-- `2^n*C(n, floor(n/2))` -/
def P13915951409761380916.Spec : Prop :=
  ∀ n, (P13915951409761380916.a n : ℤ) = A060899 n

theorem P13915951409761380916.correct : P13915951409761380916.Spec := by
  intro n
  simp only [A060899]

end A060899

/-! ## A060899.P729270424324333398

`2*n*a(n-1)/∑[n%2]` with `a(0)=1`
-/

namespace A060899.P729270424324333398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℚ) * (a (n - 1) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)))

end

end A060899.P729270424324333398

namespace A060899

/-- `2*n*a(n-1)/∑[n%2]` -/
def P729270424324333398.Spec : Prop :=
  ∀ n, P729270424324333398.a n = (A060899 n : ℚ)

end A060899

/-! ## A060899.P10182935689480675448

`2*n/∑[and(1, n)]*a(n-1)` with `a(0)=1`
-/

namespace A060899.P10182935689480675448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * a (n - 1))

end

end A060899.P10182935689480675448

namespace A060899

/-- `2*n/∑[and(1, n)]*a(n-1)` -/
def P10182935689480675448.Spec : Prop :=
  ∀ n, P10182935689480675448.a n = (A060899 n : ℚ)

end A060899

/-! ## A060899.P14760003326546761675

`2*n*a(n-1)/floor(∑[n]/n)` with `a(0)=1`
-/

namespace A060899.P14760003326546761675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℚ) * (a (n - 1) / (⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n : ℚ)⌋ : ℚ)))

end

end A060899.P14760003326546761675

namespace A060899

/-- `2*n*a(n-1)/floor(∑[n]/n)` -/
def P14760003326546761675.Spec : Prop :=
  ∀ n, P14760003326546761675.a n = (A060899 n : ℚ)

end A060899

/-! ## A060899.P1530635232847507870

`2*a(n-1)*n/floor((n+1)/2)` with `a(0)=1`
-/

namespace A060899.P1530635232847507870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) * ((n : ℚ) / (⌊(n + 1 : ℚ) / 2⌋ : ℚ))

end

end A060899.P1530635232847507870

namespace A060899

/-- `2*a(n-1)*n/floor((n+1)/2)` -/
def P1530635232847507870.Spec : Prop :=
  ∀ n, P1530635232847507870.a n = (A060899 n : ℚ)

end A060899

/-! ## A060899.P17286209524065148943

`2/(1-floor(n/2)/n)*a(n-1)` with `a(0)=1`
-/

namespace A060899.P17286209524065148943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 / (1 - (⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ)) * a (n - 1)

end

end A060899.P17286209524065148943

namespace A060899

/-- `2/(1-floor(n/2)/n)*a(n-1)` -/
def P17286209524065148943.Spec : Prop :=
  ∀ n, P17286209524065148943.a n = (A060899 n : ℚ)

end A060899

/-! ## A060899.P6281500837608314094

`((∏[2*or(1, n)/(n+1)]-2)/2+1)*2^n`
-/

namespace A060899.P6281500837608314094
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j - 2) / 2 + 1) * (2 ^ n : ℚ)

end

end A060899.P6281500837608314094

namespace A060899

/-- `((∏[2*or(1, n)/(n+1)]-2)/2+1)*2^n` -/
def P6281500837608314094.Spec : Prop :=
  ∀ n, P6281500837608314094.a n = (A060899 n : ℚ)

end A060899

/-! ## A060899.P1609569944146666452

`2^n*A001405(n)`
-/

namespace A060899.P1609569944146666452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001405 n

end

end A060899.P1609569944146666452

namespace A060899

/-- `2^n*A001405(n)` -/
def P1609569944146666452.Spec : Prop :=
  ∀ n, P1609569944146666452.a n = A060899 n

end A060899

/-! ## A060899.P8758260075104430291

`2^n*A210736(n+1)`
-/

namespace A060899.P8758260075104430291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A210736 (n + 1)

end

end A060899.P8758260075104430291

namespace A060899

/-- `2^n*A210736(n+1)` -/
def P8758260075104430291.Spec : Prop :=
  ∀ n, P8758260075104430291.a n = A060899 n

end A060899

/-! ## A060899.P10107680987276787165

`gcd(2, n+1)*A098664(n)`
-/

namespace A060899.P10107680987276787165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A098664 n

end

end A060899.P10107680987276787165

namespace A060899

/-- `gcd(2, n+1)*A098664(n)` -/
def P10107680987276787165.Spec : Prop :=
  ∀ n, P10107680987276787165.a n = A060899 n

end A060899

/-! ## A060899.P8546036412298209232

`2^(n-1)*A063886(n+1)`
-/

namespace A060899.P8546036412298209232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A063886 (n + 1) : ℚ)

end

end A060899.P8546036412298209232

namespace A060899

/-- `2^(n-1)*A063886(n+1)` -/
def P8546036412298209232.Spec : Prop :=
  ∀ n, P8546036412298209232.a n = (A060899 n : ℚ)

end A060899

/-! ## A060899.P16625727891389012646

`2^(n-1)*A182027(n+2)`
-/

namespace A060899.P16625727891389012646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A182027 (n + 2) : ℚ)

end

end A060899.P16625727891389012646

namespace A060899

/-- `2^(n-1)*A182027(n+2)` -/
def P16625727891389012646.Spec : Prop :=
  ∀ n, P16625727891389012646.a n = (A060899 n : ℚ)

end A060899

/-! ## A060899.P5120933056855101148

`2^(n-2)*A047073(n+2)`
-/

namespace A060899.P5120933056855101148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A047073 (n + 2) : ℚ)

end

end A060899.P5120933056855101148

namespace A060899

/-- `2^(n-2)*A047073(n+2)` -/
def P5120933056855101148.Spec : Prop :=
  ∀ n, P5120933056855101148.a n = (A060899 n : ℚ)

end A060899

/-! ## A060899.P3926239552323071079

`A000034(n)*A098664(n)`
-/

namespace A060899.P3926239552323071079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A098664 n

end

end A060899.P3926239552323071079

namespace A060899

/-- `A000034(n)*A098664(n)` -/
def P3926239552323071079.Spec : Prop :=
  ∀ n, P3926239552323071079.a n = A060899 n

end A060899

/-! ## A060899.P15254829287638693012

`A060546(n)*A098660(n)`
-/

namespace A060899.P15254829287638693012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n * A098660 n

end

end A060899.P15254829287638693012

namespace A060899

/-- `A060546(n)*A098660(n)` -/
def P15254829287638693012.Spec : Prop :=
  ∀ n, P15254829287638693012.a n = A060899 n

end A060899

/-! ## A060899.P15746252775856461995

`A122803(n)*A126930(n)`
-/

namespace A060899.P15746252775856461995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n * A126930 n

end

end A060899.P15746252775856461995

namespace A060899

/-- `A122803(n)*A126930(n)` -/
def P15746252775856461995.Spec : Prop :=
  ∀ n, P15746252775856461995.a n = A060899 n

end A060899

/-! ## A060899.P5011784662873514004

`A158416(n)*A240558(n)`
-/

namespace A060899.P5011784662873514004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n * A240558 n

end

end A060899.P5011784662873514004

namespace A060899

/-- `A158416(n)*A240558(n)` -/
def P5011784662873514004.Spec : Prop :=
  ∀ n, P5011784662873514004.a n = A060899 n

end A060899

/-! ## A060899.P18209774546859836897

`lcm(A098664(n), A240558(n))`
-/

namespace A060899.P18209774546859836897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A098664 n) (A240558 n)

end

end A060899.P18209774546859836897

namespace A060899

/-- `lcm(A098664(n), A240558(n))` -/
def P18209774546859836897.Spec : Prop :=
  ∀ n, (P18209774546859836897.a n : ℤ) = A060899 n

end A060899

/-! ## A060899.P12142991057444794738

`A001405(n)*A011782(n+1)`
-/

namespace A060899.P12142991057444794738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A011782 (n + 1)

end

end A060899.P12142991057444794738

namespace A060899

/-- `A001405(n)*A011782(n+1)` -/
def P12142991057444794738.Spec : Prop :=
  ∀ n, P12142991057444794738.a n = A060899 n

end A060899

/-! ## A060899.P5466687476989593197

`(A014495(n)+1)*A000079(n)`
-/

namespace A060899.P5466687476989593197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014495 n + 1) * A000079 n

end

end A060899.P5466687476989593197

namespace A060899

/-- `(A014495(n)+1)*A000079(n)` -/
def P5466687476989593197.Spec : Prop :=
  ∀ n, P5466687476989593197.a n = A060899 n

end A060899

