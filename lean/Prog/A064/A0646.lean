import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A064600: a(n) indicates the position of 5 after n iterations of A064553.

The programs for A064600, the canonical program `A064600.P2132377139288008707` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064600 has offset 0).

The definition of A064600 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064600.P2132377139288008707

`A000040(a(n-1)-1)` with `a(0)=5`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064600

/-- `A000040(a(n-1)-1)` -/
def P2132377139288008707.Spec : Prop :=
  ∀ n, P2132377139288008707.a n = A064600 n

theorem P2132377139288008707.correct : P2132377139288008707.Spec := by
  intro n
  simp only [A064600]

end A064600

/-! ## A064600.P1327102905578968576

`A175248(a(n-2))` with `a(0)=5, a(1)=7`
-/

namespace A064600.P1327102905578968576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 7] fun n a =>
  A175248 (a (n - 2)).toNat

end

end A064600.P1327102905578968576

namespace A064600

/-- `A175248(a(n-2))` -/
def P1327102905578968576.Spec : Prop :=
  ∀ n, P1327102905578968576.a n = A064600 n

end A064600

/-! ## A064600.P17342138202784178978

`A008578(a(n-1))` with `a(0)=5`
-/

namespace A064600.P17342138202784178978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A008578 (a (n - 1)).toNat

end

end A064600.P17342138202784178978

namespace A064600

/-- `A008578(a(n-1))` -/
def P17342138202784178978.Spec : Prop :=
  ∀ n, P17342138202784178978.a n = A064600 n

end A064600

/-! ## A064600.P7670233711388602612

`A048848(a(n-1))` with `a(0)=5`
-/

namespace A064600.P7670233711388602612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A048848 (a (n - 1)).toNat

end

end A064600.P7670233711388602612

namespace A064600

/-- `A048848(a(n-1))` -/
def P7670233711388602612.Spec : Prop :=
  ∀ n, P7670233711388602612.a n = A064600 n

end A064600

/-!
# A064601: a(n) = # { p | A064558(k) = p prime and k <= n}.

The programs for A064601, the canonical program `A064601.P5730512470654133780` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064601 has offset 1).

The definition of A064601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064601.P5730512470654133780

`∑[char[A141208(n+1)]]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A064601

/-- `∑[char[A141208(n+1)]]` -/
def P5730512470654133780.Spec : Prop :=
  ∀ n, (P5730512470654133780.a n : ℤ) = A064601 (n + 1)

theorem P5730512470654133780.correct : P5730512470654133780.Spec := by
  intro n
  simp only [A064601, Nat.add_sub_cancel]

end A064601

/-! ## A064601.P13254179443630449841

`A064557(A036234(n+1))`
-/

namespace A064601.P13254179443630449841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064557 (A036234 (n + 1)).toNat

end

end A064601.P13254179443630449841

namespace A064601

/-- `A064557(A036234(n+1))` -/
def P13254179443630449841.Spec : Prop :=
  ∀ n, P13254179443630449841.a n = A064601 (n + 1)

end A064601

/-! ## A064601.P9047125225492966328

`A064557(A000720(n+1)+1)`
-/

namespace A064601.P9047125225492966328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064557 (A000720 (n + 1) + 1).toNat

end

end A064601.P9047125225492966328

namespace A064601

/-- `A064557(A000720(n+1)+1)` -/
def P9047125225492966328.Spec : Prop :=
  ∀ n, P9047125225492966328.a n = A064601 (n + 1)

end A064601

/-! ## A064601.P8364478113806926581

`A000720(A036234(∑[∑{e}[n+1, #]!%2]))`
-/

namespace A064601.P8364478113806926581
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A036234 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A064601.P8364478113806926581

namespace A064601

/-- `A000720(A036234(∑[∑{e}[n+1, #]!%2]))` -/
def P8364478113806926581.Spec : Prop :=
  ∀ n, P8364478113806926581.a n = A064601 (n + 1)

end A064601

/-! ## A064601.P10741934323319719963

`A000720(A000720(A151800(A000720(A066169(n+1)))))`
-/

namespace A064601.P10741934323319719963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000720 (A151800 (A000720 (A066169 (n + 1)).toNat).toNat).toNat).toNat

end

end A064601.P10741934323319719963

namespace A064601

/-- `A000720(A000720(A151800(A000720(A066169(n+1)))))` -/
def P10741934323319719963.Spec : Prop :=
  ∀ n, P10741934323319719963.a n = A064601 (n + 1)

end A064601

/-! ## A064601.P15512824867328699783

`A000720(A000720(A151800(A000720(A151800(n+1)))))`
-/

namespace A064601.P15512824867328699783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000720 (A151800 (A000720 (A151800 (n + 1)).toNat).toNat).toNat).toNat

end

end A064601.P15512824867328699783

namespace A064601

/-- `A000720(A000720(A151800(A000720(A151800(n+1)))))` -/
def P15512824867328699783.Spec : Prop :=
  ∀ n, P15512824867328699783.a n = A064601 (n + 1)

end A064601

/-! ## A064601.P12173332473966595794

`A055642(A076057(n+2))-A000007(n)`
-/

namespace A064601.P12173332473966595794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A076057 (n + 2)).toNat - A000007 n

end

end A064601.P12173332473966595794

namespace A064601

/-- `A055642(A076057(n+2))-A000007(n)` -/
def P12173332473966595794.Spec : Prop :=
  ∀ n, P12173332473966595794.a n = A064601 (n + 1)

end A064601

/-! ## A064601.P9266484539372397914

`A390256(A200264(n+1))`
-/

namespace A064601.P9266484539372397914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390256 (A200264 (n + 1)).toNat

end

end A064601.P9266484539372397914

namespace A064601

/-- `A390256(A200264(n+1))` -/
def P9266484539372397914.Spec : Prop :=
  ∀ n, P9266484539372397914.a n = A064601 (n + 1)

end A064601

/-! ## A064601.P630289288164366384

`A108602(A091988(n+1))`
-/

namespace A064601.P630289288164366384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (A091988 (n + 1)).toNat

end

end A064601.P630289288164366384

namespace A064601

/-- `A108602(A091988(n+1))` -/
def P630289288164366384.Spec : Prop :=
  ∀ n, P630289288164366384.a n = A064601 (n + 1)

end A064601

/-! ## A064601.P15653553408672876370

`A102572(A346146(n+1))`
-/

namespace A064601.P15653553408672876370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (A346146 (n + 1)).toNat

end

end A064601.P15653553408672876370

namespace A064601

/-- `A102572(A346146(n+1))` -/
def P15653553408672876370.Spec : Prop :=
  ∀ n, P15653553408672876370.a n = A064601 (n + 1)

end A064601

/-!
# A064602: Partial sums of A001157: Sum_{j=1..n} sigma_2(j).

The programs for A064602, the canonical program `A064602.P11911922222031921481` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064602 has offset 1).

The definition of A064602 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064602.P11911922222031921481

`a(n-1)+A001157(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A064602

/-- `a(n-1)+A001157(n+1)` -/
def P11911922222031921481.Spec : Prop :=
  ∀ n, P11911922222031921481.a n = A064602 (n + 1)

theorem P11911922222031921481.correct : P11911922222031921481.Spec := by
  intro n
  simp only [A064602, Nat.add_sub_cancel]

end A064602

/-! ## A064602.P3478292803199218608

`∑[∑{d}[n+1, #²]]`
-/

namespace A064602.P3478292803199218608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064602.P3478292803199218608

namespace A064602

/-- `∑[∑{d}[n+1, #²]]` -/
def P3478292803199218608.Spec : Prop :=
  ∀ n, (P3478292803199218608.a n : ℤ) = A064602 (n + 1)

end A064602

/-! ## A064602.P12269393023218802309

`∑{d}[n+1, #²]+a(n-1)` with `a(0)=1`
-/

namespace A064602.P12269393023218802309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 2 + a (n - 1)

end

end A064602.P12269393023218802309

namespace A064602

/-- `∑{d}[n+1, #²]+a(n-1)` -/
def P12269393023218802309.Spec : Prop :=
  ∀ n, (P12269393023218802309.a n : ℤ) = A064602 (n + 1)

end A064602

/-! ## A064602.P13902487653554074300

`∑[(n+1)*∑{d}[n+1, #]-∑{d}[n+1, #*(n+1-#)]]`
-/

namespace A064602.P13902487653554074300
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ d ∈ Nat.divisors (f2 n), d) : ℕ) : ℤ) - ∑ d ∈ Nat.divisors (f3 n), (d : ℤ) * ((n + 1 : ℤ) - (d : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064602.P13902487653554074300

namespace A064602

/-- `∑[(n+1)*∑{d}[n+1, #]-∑{d}[n+1, #*(n+1-#)]]` -/
def P13902487653554074300.Spec : Prop :=
  ∀ n, P13902487653554074300.a n = A064602 (n + 1)

end A064602

/-! ## A064602.P7825500840844526430

`∑[A001157(n+1)]`
-/

namespace A064602.P7825500840844526430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064602.P7825500840844526430

namespace A064602

/-- `∑[A001157(n+1)]` -/
def P7825500840844526430.Spec : Prop :=
  ∀ n, P7825500840844526430.a n = A064602 (n + 1)

end A064602

/-! ## A064602.P13643975720684087969

`∑[sqrt(A356533(n+1))]`
-/

namespace A064602.P13643975720684087969
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A356533 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064602.P13643975720684087969

namespace A064602

/-- `∑[sqrt(A356533(n+1))]` -/
def P13643975720684087969.Spec : Prop :=
  ∀ n, P13643975720684087969.a n = (A064602 (n + 1) : ℝ)

end A064602

/-! ## A064602.P13290209354811755447

`∑[A328259(n+1)/(n+1)]`
-/

namespace A064602.P13290209354811755447
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328259 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064602.P13290209354811755447

namespace A064602

/-- `∑[A328259(n+1)/(n+1)]` -/
def P13290209354811755447.Spec : Prop :=
  ∀ n, P13290209354811755447.a n = (A064602 (n + 1) : ℚ)

end A064602

/-! ## A064602.P11507181652102358680

`∑[A067558(n+1)+(n+1)²]`
-/

namespace A064602.P11507181652102358680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067558 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064602.P11507181652102358680

namespace A064602

/-- `∑[A067558(n+1)+(n+1)²]` -/
def P11507181652102358680.Spec : Prop :=
  ∀ n, P11507181652102358680.a n = A064602 (n + 1)

end A064602

/-! ## A064602.P5972048413018132236

`A279847(n+1)+∑[(n+1)²]`
-/

namespace A064602.P5972048413018132236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279847 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A064602.P5972048413018132236

namespace A064602

/-- `A279847(n+1)+∑[(n+1)²]` -/
def P5972048413018132236.Spec : Prop :=
  ∀ n, P5972048413018132236.a n = A064602 (n + 1)

end A064602

/-! ## A064602.P16016749520207327236

`∑[A386745(n+1)/(n+1)²]`
-/

namespace A064602.P16016749520207327236
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386745 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064602.P16016749520207327236

namespace A064602

/-- `∑[A386745(n+1)/(n+1)²]` -/
def P16016749520207327236.Spec : Prop :=
  ∀ n, P16016749520207327236.a n = (A064602 (n + 1) : ℚ)

end A064602

/-! ## A064602.P5858608282692945848

`A365409(n+1)-A366971(n+1)`
-/

namespace A064602.P5858608282692945848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365409 (n + 1) - A366971 (n + 1)

end

end A064602.P5858608282692945848

namespace A064602

/-- `A365409(n+1)-A366971(n+1)` -/
def P5858608282692945848.Spec : Prop :=
  ∀ n, P5858608282692945848.a n = A064602 (n + 1)

end A064602

/-! ## A064602.P13261430148923269439

`∑[A189120(n+1)+A005063(n+1)]`
-/

namespace A064602.P13261430148923269439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189120 (n + 1) + A005063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064602.P13261430148923269439

namespace A064602

/-- `∑[A189120(n+1)+A005063(n+1)]` -/
def P13261430148923269439.Spec : Prop :=
  ∀ n, P13261430148923269439.a n = A064602 (n + 1)

end A064602

/-! ## A064602.P10948534367841369853

`∑[A064987(n+1)-A303384(n+1)]`
-/

namespace A064602.P10948534367841369853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (n + 1) - A303384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064602.P10948534367841369853

namespace A064602

/-- `∑[A064987(n+1)-A303384(n+1)]` -/
def P10948534367841369853.Spec : Prop :=
  ∀ n, P10948534367841369853.a n = A064602 (n + 1)

end A064602

/-! ## A064602.P11998644361448743867

`A143128(n+1)-∑[A303384(n+1)]`
-/

namespace A064602.P11998644361448743867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143128 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064602.P11998644361448743867

namespace A064602

/-- `A143128(n+1)-∑[A303384(n+1)]` -/
def P11998644361448743867.Spec : Prop :=
  ∀ n, P11998644361448743867.a n = A064602 (n + 1)

end A064602

/-! ## A064602.P9960754404315952629

`∑[A158274(n+1)*A179931(n+1)]`
-/

namespace A064602.P9960754404315952629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158274 (n + 1) * A179931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064602.P9960754404315952629

namespace A064602

/-- `∑[A158274(n+1)*A179931(n+1)]` -/
def P9960754404315952629.Spec : Prop :=
  ∀ n, P9960754404315952629.a n = A064602 (n + 1)

end A064602

/-! ## A064602.P11699704905138869531

`∑[A050999(n+1)*A296306(n+1)]`
-/

namespace A064602.P11699704905138869531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050999 (n + 1) * A296306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064602.P11699704905138869531

namespace A064602

/-- `∑[A050999(n+1)*A296306(n+1)]` -/
def P11699704905138869531.Spec : Prop :=
  ∀ n, P11699704905138869531.a n = A064602 (n + 1)

end A064602

/-! ## A064602.P968739717788132189

`2*A364970(n+1)-A024916(n+1)`
-/

namespace A064602.P968739717788132189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A364970 (n + 1) - A024916 (n + 1)

end

end A064602.P968739717788132189

namespace A064602

/-- `2*A364970(n+1)-A024916(n+1)` -/
def P968739717788132189.Spec : Prop :=
  ∀ n, P968739717788132189.a n = A064602 (n + 1)

end A064602

/-! ## A064602.P7464111817956100425

`2*A143128(n+1)-A350123(n+1)`
-/

namespace A064602.P7464111817956100425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143128 (n + 1) - A350123 (n + 1)

end

end A064602.P7464111817956100425

namespace A064602

/-- `2*A143128(n+1)-A350123(n+1)` -/
def P7464111817956100425.Spec : Prop :=
  ∀ n, P7464111817956100425.a n = A064602 (n + 1)

end A064602

/-! ## A064602.P18081157439219544710

`A366985(n+1)-(A366984(n+1)+A366971(n+1))`
-/

namespace A064602.P18081157439219544710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366985 (n + 1) - (A366984 (n + 1) + A366971 (n + 1))

end

end A064602.P18081157439219544710

namespace A064602

/-- `A366985(n+1)-(A366984(n+1)+A366971(n+1))` -/
def P18081157439219544710.Spec : Prop :=
  ∀ n, P18081157439219544710.a n = A064602 (n + 1)

end A064602

/-! ## A064602.P17037425210061520581

`A002411(n+1)-A309176(n+1)`
-/

namespace A064602.P17037425210061520581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (n + 1) - A309176 (n + 1)

end

end A064602.P17037425210061520581

namespace A064602

/-- `A002411(n+1)-A309176(n+1)` -/
def P17037425210061520581.Spec : Prop :=
  ∀ n, P17037425210061520581.a n = A064602 (n + 1)

end A064602

/-!
# A064603: Partial sums of A001158: Sum_{j=1..n} sigma_3(j).

The programs for A064603, the canonical program `A064603.P2755138761296044456` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064603 has offset 1).

The definition of A064603 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064603.P2755138761296044456

`a(n-1)+A001158(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064603

/-- `a(n-1)+A001158(n+1)` -/
def P2755138761296044456.Spec : Prop :=
  ∀ n, P2755138761296044456.a n = A064603 (n + 1)

theorem P2755138761296044456.correct : P2755138761296044456.Spec := by
  intro n
  simp only [A064603, Nat.add_sub_cancel]

end A064603

/-! ## A064603.P17914996728044037771

`∑[∑{d}[n+1, #^3]]`
-/

namespace A064603.P17914996728044037771
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064603.P17914996728044037771

namespace A064603

/-- `∑[∑{d}[n+1, #^3]]` -/
def P17914996728044037771.Spec : Prop :=
  ∀ n, (P17914996728044037771.a n : ℤ) = A064603 (n + 1)

end A064603

/-! ## A064603.P8555486019238634466

`∑{d}[n+1, #^3]+a(n-1)` with `a(0)=1`
-/

namespace A064603.P8555486019238634466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 3 + a (n - 1)

end

end A064603.P8555486019238634466

namespace A064603

/-- `∑{d}[n+1, #^3]+a(n-1)` -/
def P8555486019238634466.Spec : Prop :=
  ∀ n, (P8555486019238634466.a n : ℤ) = A064603 (n + 1)

end A064603

/-! ## A064603.P15676764205590484970

`∑[A001158(n+1)]`
-/

namespace A064603.P15676764205590484970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064603.P15676764205590484970

namespace A064603

/-- `∑[A001158(n+1)]` -/
def P15676764205590484970.Spec : Prop :=
  ∀ n, P15676764205590484970.a n = A064603 (n + 1)

end A064603

/-! ## A064603.P10532258733742939200

`∑[sqrt(A356534(n+1))]`
-/

namespace A064603.P10532258733742939200
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A356534 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064603.P10532258733742939200

namespace A064603

/-- `∑[sqrt(A356534(n+1))]` -/
def P10532258733742939200.Spec : Prop :=
  ∀ n, P10532258733742939200.a n = (A064603 (n + 1) : ℝ)

end A064603

/-! ## A064603.P1794056062425581810

`∑[A092349(n+1)+A001157(n+1)]`
-/

namespace A064603.P1794056062425581810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092349 (n + 1) + A001157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064603.P1794056062425581810

namespace A064603

/-- `∑[A092349(n+1)+A001157(n+1)]` -/
def P1794056062425581810.Spec : Prop :=
  ∀ n, P1794056062425581810.a n = A064603 (n + 1)

end A064603

/-! ## A064603.P7804341252538013237

`∑[A281372(n+1)/(n+1)]`
-/

namespace A064603.P7804341252538013237
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281372 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064603.P7804341252538013237

namespace A064603

/-- `∑[A281372(n+1)/(n+1)]` -/
def P7804341252538013237.Spec : Prop :=
  ∀ n, P7804341252538013237.a n = (A064603 (n + 1) : ℚ)

end A064603

/-! ## A064603.P5443677306260918120

`∑[A282099(n+1)/(n+1)²]`
-/

namespace A064603.P5443677306260918120
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282099 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064603.P5443677306260918120

namespace A064603

/-- `∑[A282099(n+1)/(n+1)²]` -/
def P5443677306260918120.Spec : Prop :=
  ∀ n, P5443677306260918120.a n = (A064603 (n + 1) : ℚ)

end A064603

/-! ## A064603.P14246944571770997874

`∑[A361794((n+1)²)]`
-/

namespace A064603.P14246944571770997874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361794 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064603.P14246944571770997874

namespace A064603

/-- `∑[A361794((n+1)²)]` -/
def P14246944571770997874.Spec : Prop :=
  ∀ n, P14246944571770997874.a n = A064603 (n + 1)

end A064603

/-!
# A064604: Partial sums of A001159: Sum_{j=1..n} sigma_4(j).

The programs for A064604, the canonical program `A064604.P11351988528342173262` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064604 has offset 1).

The definition of A064604 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001159, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064604.P11351988528342173262

`a(n-1)+A001159(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064604

/-- `a(n-1)+A001159(n+1)` -/
def P11351988528342173262.Spec : Prop :=
  ∀ n, P11351988528342173262.a n = A064604 (n + 1)

theorem P11351988528342173262.correct : P11351988528342173262.Spec := by
  intro n
  simp only [A064604, Nat.add_sub_cancel]

end A064604

/-! ## A064604.P3151815141496267079

`∑[∑{d}[n+1, #^4]]`
-/

namespace A064604.P3151815141496267079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064604.P3151815141496267079

namespace A064604

/-- `∑[∑{d}[n+1, #^4]]` -/
def P3151815141496267079.Spec : Prop :=
  ∀ n, (P3151815141496267079.a n : ℤ) = A064604 (n + 1)

end A064604

/-! ## A064604.P10685892048534167793

`∑{d}[n+1, #^4]+a(n-1)` with `a(0)=1`
-/

namespace A064604.P10685892048534167793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 4 + a (n - 1)

end

end A064604.P10685892048534167793

namespace A064604

/-- `∑{d}[n+1, #^4]+a(n-1)` -/
def P10685892048534167793.Spec : Prop :=
  ∀ n, (P10685892048534167793.a n : ℤ) = A064604 (n + 1)

end A064604

/-! ## A064604.P37544759336920908

`∑[A001159(n+1)]`
-/

namespace A064604.P37544759336920908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064604.P37544759336920908

namespace A064604

/-- `∑[A001159(n+1)]` -/
def P37544759336920908.Spec : Prop :=
  ∀ n, P37544759336920908.a n = A064604 (n + 1)

end A064604

/-! ## A064604.P10412321994135814781

`∑[A386749(n+1)/(n+1)]`
-/

namespace A064604.P10412321994135814781
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386749 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064604.P10412321994135814781

namespace A064604

/-- `∑[A386749(n+1)/(n+1)]` -/
def P10412321994135814781.Spec : Prop :=
  ∀ n, P10412321994135814781.a n = (A064604 (n + 1) : ℚ)

end A064604

/-! ## A064604.P2095473921749418273

`∑[A386747(n+1)/(n+1)²]`
-/

namespace A064604.P2095473921749418273
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386747 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064604.P2095473921749418273

namespace A064604

/-- `∑[A386747(n+1)/(n+1)²]` -/
def P2095473921749418273.Spec : Prop :=
  ∀ n, P2095473921749418273.a n = (A064604 (n + 1) : ℚ)

end A064604

/-! ## A064604.P3290661574470348064

`∑[A279363(n+1)+A000583(n+1)]`
-/

namespace A064604.P3290661574470348064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279363 (n + 1) + A000583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064604.P3290661574470348064

namespace A064604

/-- `∑[A279363(n+1)+A000583(n+1)]` -/
def P3290661574470348064.Spec : Prop :=
  ∀ n, P3290661574470348064.a n = A064604 (n + 1)

end A064604

/-! ## A064604.P7801747683835381072

`∑[A328271((n+1)²)]`
-/

namespace A064604.P7801747683835381072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328271 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064604.P7801747683835381072

namespace A064604

/-- `∑[A328271((n+1)²)]` -/
def P7801747683835381072.Spec : Prop :=
  ∀ n, P7801747683835381072.a n = A064604 (n + 1)

end A064604

/-! ## A064604.P2189553751301331242

`∑[A351307((n+1)²)]`
-/

namespace A064604.P2189553751301331242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351307 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064604.P2189553751301331242

namespace A064604

/-- `∑[A351307((n+1)²)]` -/
def P2189553751301331242.Spec : Prop :=
  ∀ n, P2189553751301331242.a n = A064604 (n + 1)

end A064604

/-!
# A064605: Numbers k such that A064602(k) is divisible by k.

The programs for A064605, there is no canonical definition to state claims against.
-/

/-! ## A064605.P8520825623230544628

`A070667(A032033(n))`
-/

namespace A064605.P8520825623230544628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 (A032033 n).toNat

end

end A064605.P8520825623230544628

/-!
# A064606: Numbers k such that A064603(k) is divisible by k.

The programs for A064606, there is no canonical definition to state claims against.
-/

/-! ## A064606.P2380796831409786811

`A335373(a(n-2)²)` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A064606.P2380796831409786811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  A335373 (a (n - 2) ^ 2).toNat

end

end A064606.P2380796831409786811

/-!
# A064607: Numbers k such that A064604(k) is divisible by k.

The programs for A064607, there is no canonical definition to state claims against.
-/

/-! ## A064607.P5770891297721009001

`record[gcd(A020500(n+1), A064604(n+1))]`
-/

namespace A064607.P5770891297721009001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020500 (n + 1)) (A064604 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064607.P5770891297721009001

/-!
# A064608: Partial sums of A034444: sum of number of unitary divisors from 1 to n.

The programs for A064608, the canonical program `A064608.P13779215787646709680` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064608 has offset 1).

The definition of A064608 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064608.P13779215787646709680

`a(n-1)+A034444(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A064608

/-- `a(n-1)+A034444(n+1)` -/
def P13779215787646709680.Spec : Prop :=
  ∀ n, P13779215787646709680.a n = A064608 (n + 1)

theorem P13779215787646709680.correct : P13779215787646709680.Spec := by
  intro n
  simp only [A064608, Nat.add_sub_cancel]

end A064608

/-! ## A064608.P12110155814173154067

`a(n-1)+2^A001221(n+1)` with `a(0)=1`
-/

namespace A064608.P12110155814173154067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A064608.P12110155814173154067

namespace A064608

/-- `a(n-1)+2^A001221(n+1)` -/
def P12110155814173154067.Spec : Prop :=
  ∀ n, P12110155814173154067.a n = (A064608 (n + 1) : ℚ)

end A064608

/-! ## A064608.P5736087702830620633

`∑[∏{p}[n+1, ceil(atan(#))]]`
-/

namespace A064608.P5736087702830620633
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ⌈Real.arctan (p : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064608.P5736087702830620633

namespace A064608

/-- `∑[∏{p}[n+1, ceil(atan(#))]]` -/
def P5736087702830620633.Spec : Prop :=
  ∀ n, P5736087702830620633.a n = A064608 (n + 1)

end A064608

/-! ## A064608.P1918847184413421523

`∑[∏{p}[n+1, 2%#²]]`
-/

namespace A064608.P1918847184413421523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), 2 % p ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064608.P1918847184413421523

namespace A064608

/-- `∑[∏{p}[n+1, 2%#²]]` -/
def P1918847184413421523.Spec : Prop :=
  ∀ n, (P1918847184413421523.a n : ℤ) = A064608 (n + 1)

end A064608

/-! ## A064608.P16910489764827134840

`∑[∏{p}[n+1, gcd(2, 2*#)]]`
-/

namespace A064608.P16910489764827134840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.gcd 2 (2 * p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064608.P16910489764827134840

namespace A064608

/-- `∑[∏{p}[n+1, gcd(2, 2*#)]]` -/
def P16910489764827134840.Spec : Prop :=
  ∀ n, (P16910489764827134840.a n : ℤ) = A064608 (n + 1)

end A064608

/-! ## A064608.P18350163157181755342

`∑[∏{p}[n+1, gcd(n, #)+1]]`
-/

namespace A064608.P18350163157181755342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.gcd n p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064608.P18350163157181755342

namespace A064608

/-- `∑[∏{p}[n+1, gcd(n, #)+1]]` -/
def P18350163157181755342.Spec : Prop :=
  ∀ n, (P18350163157181755342.a n : ℤ) = A064608 (n + 1)

end A064608

/-! ## A064608.P4949274461730966816

`∑[∏{p}[n+1, val(n, #)+2]]`
-/

namespace A064608.P4949274461730966816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (SequenceMachineLib.valuation n p + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064608.P4949274461730966816

namespace A064608

/-- `∑[∏{p}[n+1, val(n, #)+2]]` -/
def P4949274461730966816.Spec : Prop :=
  ∀ n, (P4949274461730966816.a n : ℤ) = A064608 (n + 1)

end A064608

/-! ## A064608.P1360159300298649699

`∑[∏{e}[n+1, root(2^#, #)]]`
-/

namespace A064608.P1360159300298649699
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (2 ^ Nat.factorization (f2 n) p : ℝ) ^ (1 / (Nat.factorization (f2 n) p : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064608.P1360159300298649699

namespace A064608

/-- `∑[∏{e}[n+1, root(2^#, #)]]` -/
def P1360159300298649699.Spec : Prop :=
  ∀ n, P1360159300298649699.a n = (A064608 (n + 1) : ℝ)

end A064608

/-! ## A064608.P7407078703334648846

`∑[∏{p}[n+1, xor(#, xor(2, #))]]`
-/

namespace A064608.P7407078703334648846
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.xor p (Nat.xor 2 p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064608.P7407078703334648846

namespace A064608

/-- `∑[∏{p}[n+1, xor(#, xor(2, #))]]` -/
def P7407078703334648846.Spec : Prop :=
  ∀ n, (P7407078703334648846.a n : ℤ) = A064608 (n + 1)

end A064608

/-! ## A064608.P13905724248659429425

`∑[2^∑{e}[∏{p}[n+1, #], #]]`
-/

namespace A064608.P13905724248659429425
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064608.P13905724248659429425

namespace A064608

/-- `∑[2^∑{e}[∏{p}[n+1, #], #]]` -/
def P13905724248659429425.Spec : Prop :=
  ∀ n, (P13905724248659429425.a n : ℤ) = A064608 (n + 1)

end A064608

/-! ## A064608.P2499515793824324633

`∑[A034444(n+1)]`
-/

namespace A064608.P2499515793824324633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064608.P2499515793824324633

namespace A064608

/-- `∑[A034444(n+1)]` -/
def P2499515793824324633.Spec : Prop :=
  ∀ n, P2499515793824324633.a n = A064608 (n + 1)

end A064608

/-! ## A064608.P9815845631184687867

`∑[abs(A158522(n+1))]`
-/

namespace A064608.P9815845631184687867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158522 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064608.P9815845631184687867

namespace A064608

/-- `∑[abs(A158522(n+1))]` -/
def P9815845631184687867.Spec : Prop :=
  ∀ n, P9815845631184687867.a n = A064608 (n + 1)

end A064608

/-! ## A064608.P5695801356901807744

`∑[A309307(n+1)+1]`
-/

namespace A064608.P5695801356901807744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309307 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064608.P5695801356901807744

namespace A064608

/-- `∑[A309307(n+1)+1]` -/
def P5695801356901807744.Spec : Prop :=
  ∀ n, P5695801356901807744.a n = A064608 (n + 1)

end A064608

/-! ## A064608.P1633578989824411084

`∑[2^A001221(n+1)]`
-/

namespace A064608.P1633578989824411084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064608.P1633578989824411084

namespace A064608

/-- `∑[2^A001221(n+1)]` -/
def P1633578989824411084.Spec : Prop :=
  ∀ n, P1633578989824411084.a n = (A064608 (n + 1) : ℚ)

end A064608

/-! ## A064608.P10278553902460051561

`∑[A000005(∏{p}[n+1, #])]`
-/

namespace A064608.P10278553902460051561
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064608.P10278553902460051561

namespace A064608

/-- `∑[A000005(∏{p}[n+1, #])]` -/
def P10278553902460051561.Spec : Prop :=
  ∀ n, P10278553902460051561.a n = A064608 (n + 1)

end A064608

/-! ## A064608.P92343928540368645

`∑[∑{d}[n+1, abs(A008683(#))]]`
-/

namespace A064608.P92343928540368645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), |A008683 d|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064608.P92343928540368645

namespace A064608

/-- `∑[∑{d}[n+1, abs(A008683(#))]]` -/
def P92343928540368645.Spec : Prop :=
  ∀ n, P92343928540368645.a n = A064608 (n + 1)

end A064608

/-! ## A064608.P13083714794658795158

`∑[∏{p}[n+1, A001221(#)+1]]`
-/

namespace A064608.P13083714794658795158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (A001221 p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064608.P13083714794658795158

namespace A064608

/-- `∑[∏{p}[n+1, A001221(#)+1]]` -/
def P13083714794658795158.Spec : Prop :=
  ∀ n, P13083714794658795158.a n = A064608 (n + 1)

end A064608

/-! ## A064608.P8802706698141000740

`∑[∏{p}[n+1, A020639(2*#)]]`
-/

namespace A064608.P8802706698141000740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A020639 (2 * p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064608.P8802706698141000740

namespace A064608

/-- `∑[∏{p}[n+1, A020639(2*#)]]` -/
def P8802706698141000740.Spec : Prop :=
  ∀ n, P8802706698141000740.a n = A064608 (n + 1)

end A064608

/-! ## A064608.P12232508507680118612

`∑[2^A001222(∏{p}[n+1, #])]`
-/

namespace A064608.P12232508507680118612
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064608.P12232508507680118612

namespace A064608

/-- `∑[2^A001222(∏{p}[n+1, #])]` -/
def P12232508507680118612.Spec : Prop :=
  ∀ n, P12232508507680118612.a n = (A064608 (n + 1) : ℚ)

end A064608

/-! ## A064608.P5606639387073560256

`∑[A000005(A007947(n+1))]`
-/

namespace A064608.P5606639387073560256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064608.P5606639387073560256

namespace A064608

/-- `∑[A000005(A007947(n+1))]` -/
def P5606639387073560256.Spec : Prop :=
  ∀ n, P5606639387073560256.a n = A064608 (n + 1)

end A064608

/-!
# A064609: Partial sums of A034448: sum of unitary divisors from 1 to n.

The programs for A064609, the canonical program `A064609.P1823082114239838603` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064609 has offset 1).

The definition of A064609 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064609.P1823082114239838603

`a(n-1)+A034448(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A064609

/-- `a(n-1)+A034448(n+1)` -/
def P1823082114239838603.Spec : Prop :=
  ∀ n, P1823082114239838603.a n = A064609 (n + 1)

theorem P1823082114239838603.correct : P1823082114239838603.Spec := by
  intro n
  simp only [A064609, Nat.add_sub_cancel]

end A064609

/-! ## A064609.P16198968461147136703

`∑[A034448(n+1)]`
-/

namespace A064609.P16198968461147136703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064609.P16198968461147136703

namespace A064609

/-- `∑[A034448(n+1)]` -/
def P16198968461147136703.Spec : Prop :=
  ∀ n, P16198968461147136703.a n = A064609 (n + 1)

end A064609

/-! ## A064609.P11444726961692565962

`∑[A345451(n+1)+1]`
-/

namespace A064609.P11444726961692565962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064609.P11444726961692565962

namespace A064609

/-- `∑[A345451(n+1)+1]` -/
def P11444726961692565962.Spec : Prop :=
  ∀ n, P11444726961692565962.a n = A064609 (n + 1)

end A064609

/-! ## A064609.P9818793808795864782

`∑[∑{d}[n+1, A254503(#)]]`
-/

namespace A064609.P9818793808795864782
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A254503 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064609.P9818793808795864782

namespace A064609

/-- `∑[∑{d}[n+1, A254503(#)]]` -/
def P9818793808795864782.Spec : Prop :=
  ∀ n, P9818793808795864782.a n = A064609 (n + 1)

end A064609

/-! ## A064609.P16689202208730760262

`∑[A034460(n+1)+1+n]`
-/

namespace A064609.P16689202208730760262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064609.P16689202208730760262

namespace A064609

/-- `∑[A034460(n+1)+1+n]` -/
def P16689202208730760262.Spec : Prop :=
  ∀ n, P16689202208730760262.a n = A064609 (n + 1)

end A064609

/-! ## A064609.P15172727571276971278

`∑[A064971(n+1)/(n+1)]`
-/

namespace A064609.P15172727571276971278
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064971 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064609.P15172727571276971278

namespace A064609

/-- `∑[A064971(n+1)/(n+1)]` -/
def P15172727571276971278.Spec : Prop :=
  ∀ n, P15172727571276971278.a n = (A064609 (n + 1) : ℚ)

end A064609

/-! ## A064609.P9201412995757243473

`∑[A063919(n+1)+n]+n`
-/

namespace A064609.P9201412995757243473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063919 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A064609.P9201412995757243473

namespace A064609

/-- `∑[A063919(n+1)+n]+n` -/
def P9201412995757243473.Spec : Prop :=
  ∀ n, P9201412995757243473.a n = A064609 (n + 1)

end A064609

/-! ## A064609.P17387313587343131950

`∑[A000203(n+1)-A048146(n+1)]`
-/

namespace A064609.P17387313587343131950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A048146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064609.P17387313587343131950

namespace A064609

/-- `∑[A000203(n+1)-A048146(n+1)]` -/
def P17387313587343131950.Spec : Prop :=
  ∀ n, P17387313587343131950.a n = A064609 (n + 1)

end A064609

/-! ## A064609.P9927764608261878037

`∑[A348503(n+1)*A348505(n+1)]`
-/

namespace A064609.P9927764608261878037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348503 (n + 1) * A348505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064609.P9927764608261878037

namespace A064609

/-- `∑[A348503(n+1)*A348505(n+1)]` -/
def P9927764608261878037.Spec : Prop :=
  ∀ n, P9927764608261878037.a n = A064609 (n + 1)

end A064609

/-! ## A064609.P12955647231365229039

`∑[A088580(n+1)-(A048146(n+1)+1)]`
-/

namespace A064609.P12955647231365229039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A048146 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064609.P12955647231365229039

namespace A064609

/-- `∑[A088580(n+1)-(A048146(n+1)+1)]` -/
def P12955647231365229039.Spec : Prop :=
  ∀ n, P12955647231365229039.a n = A064609 (n + 1)

end A064609

/-! ## A064609.P5304591006670373096

`∑[A245092(2*n+1)-A048146(n+1)]`
-/

namespace A064609.P5304591006670373096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - A048146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064609.P5304591006670373096

namespace A064609

/-- `∑[A245092(2*n+1)-A048146(n+1)]` -/
def P5304591006670373096.Spec : Prop :=
  ∀ n, P5304591006670373096.a n = A064609 (n + 1)

end A064609

/-! ## A064609.P10920325681341717208

`∑[A074400(n+1)/2-A048146(n+1)]`
-/

namespace A064609.P10920325681341717208
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A048146 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064609.P10920325681341717208

namespace A064609

/-- `∑[A074400(n+1)/2-A048146(n+1)]` -/
def P10920325681341717208.Spec : Prop :=
  ∀ n, P10920325681341717208.a n = (A064609 (n + 1) : ℚ)

end A064609

/-! ## A064609.P13954276006800688623

`∑[A001065(n+1)+1+n-A048146(n+1)]`
-/

namespace A064609.P13954276006800688623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A048146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064609.P13954276006800688623

namespace A064609

/-- `∑[A001065(n+1)+1+n-A048146(n+1)]` -/
def P13954276006800688623.Spec : Prop :=
  ∀ n, P13954276006800688623.a n = A064609 (n + 1)

end A064609

/-! ## A064609.P15201238366920215540

`∑[A155085(n+1)-(n+1)-A048146(n+1)]`
-/

namespace A064609.P15201238366920215540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n + 1 : ℤ) - A048146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064609.P15201238366920215540

namespace A064609

/-- `∑[A155085(n+1)-(n+1)-A048146(n+1)]` -/
def P15201238366920215540.Spec : Prop :=
  ∀ n, P15201238366920215540.a n = A064609 (n + 1)

end A064609

/-! ## A064609.P8840253865750415870

`∑[A237588(n+1)+Δ[n²]-A048146(n+1)]`
-/

namespace A064609.P8840253865750415870
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) - A048146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064609.P8840253865750415870

namespace A064609

/-- `∑[A237588(n+1)+Δ[n²]-A048146(n+1)]` -/
def P8840253865750415870.Spec : Prop :=
  ∀ n, P8840253865750415870.a n = A064609 (n + 1)

end A064609

/-! ## A064609.P9893421831558317627

`∑[(n+1)²-A235799(n+1)-A048146(n+1)]`
-/

namespace A064609.P9893421831558317627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A235799 (n + 1) - A048146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064609.P9893421831558317627

namespace A064609

/-- `∑[(n+1)²-A235799(n+1)-A048146(n+1)]` -/
def P9893421831558317627.Spec : Prop :=
  ∀ n, P9893421831558317627.a n = A064609 (n + 1)

end A064609

/-! ## A064609.P7461201855144719493

`∑[A082895(n+1)-(A082901(n+1)+A048146(n+1))]`
-/

namespace A064609.P7461201855144719493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082895 (n + 1) - (A082901 (n + 1) + A048146 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064609.P7461201855144719493

namespace A064609

/-- `∑[A082895(n+1)-(A082901(n+1)+A048146(n+1))]` -/
def P7461201855144719493.Spec : Prop :=
  ∀ n, P7461201855144719493.a n = A064609 (n + 1)

end A064609

/-! ## A064609.P9682326603061006897

`∑[A048250(n+1)+A162296(n+1)-A048146(n+1)]`
-/

namespace A064609.P9682326603061006897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) + (A162296 (n + 1) - A048146 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064609.P9682326603061006897

namespace A064609

/-- `∑[A048250(n+1)+A162296(n+1)-A048146(n+1)]` -/
def P9682326603061006897.Spec : Prop :=
  ∀ n, P9682326603061006897.a n = A064609 (n + 1)

end A064609

/-! ## A064609.P11653808501196588848

`∑[A002265(2*A074400(n+1))-A048146(n+1)]`
-/

namespace A064609.P11653808501196588848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A074400 (n + 1)).toNat - A048146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064609.P11653808501196588848

namespace A064609

/-- `∑[A002265(2*A074400(n+1))-A048146(n+1)]` -/
def P11653808501196588848.Spec : Prop :=
  ∀ n, P11653808501196588848.a n = A064609 (n + 1)

end A064609

/-! ## A064609.P11225533405708430698

`∑[A305461((n+1)²)]`
-/

namespace A064609.P11225533405708430698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305461 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064609.P11225533405708430698

namespace A064609

/-- `∑[A305461((n+1)²)]` -/
def P11225533405708430698.Spec : Prop :=
  ∀ n, P11225533405708430698.a n = A064609 (n + 1)

end A064609

/-!
# A064611: Partial sum of usigma is divisible by n, where usigma(n) = A034448(n) and summatory-usigma(n) = A064609(n).

The programs for A064611, there is no canonical definition to state claims against.
-/

/-! ## A064611.P891597761884231655

`lt[A064609(n+1)%(n+1), 1]+1`
-/

namespace A064611.P891597761884231655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064609 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A064611.P891597761884231655

/-! ## A064611.P5050433147962658457

`∑[A051119(Δ[A037646(n+1)])]`
-/

namespace A064611.P5050433147962658457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037646 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064611.P5050433147962658457

/-!
# A064612: Partial sum of bigomega is divisible by n, where bigomega(n)=A001222(n) and summatory-bigomega(n)=A022559(n).

The programs for A064612, there is no canonical definition to state claims against.
-/

/-! ## A064612.P10837899043861192096

`A336304(n)%A225546(2*n+5)`
-/

namespace A064612.P10837899043861192096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336304 n) (A225546 (2 * n + 5))

end

end A064612.P10837899043861192096

/-!
# A064613: Second binomial transform of the Catalan numbers.

The programs for A064613, there is no canonical definition to state claims against.
-/

/-! ## A064613.P17832646463289973611

`A171568(∑[n])`
-/

namespace A064613.P17832646463289973611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171568 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064613.P17832646463289973611

/-! ## A064613.P4375260692061765154

`record[A171568(n)]`
-/

namespace A064613.P4375260692061765154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064613.P4375260692061765154

/-! ## A064613.P4716315110455110780

`A124574(∑[n]+1)`
-/

namespace A064613.P4716315110455110780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124574 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A064613.P4716315110455110780

/-! ## A064613.P9230204869354074772

`A025228(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A064613.P9230204869354074772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025228 (n + 1) + 2 * a (n - 1)

end

end A064613.P9230204869354074772

/-! ## A064613.P14292357504560201751

`record[A124574(n+1)/A008288(n)]`
-/

namespace A064613.P14292357504560201751
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124574 (n + 1) : ℚ) / (A008288 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064613.P14292357504560201751

/-! ## A064613.P3632371257865175075

`record[gcd(A002262(n), A124574(n+1))]`
-/

namespace A064613.P3632371257865175075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A124574 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064613.P3632371257865175075

/-! ## A064613.P7222006181540882616

`A081671(n)-A344055(n)`
-/

namespace A064613.P7222006181540882616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081671 n - A344055 n

end

end A064613.P7222006181540882616

/-! ## A064613.P5919752988903004990

`A081671(n)-n*A025228(n+1)`
-/

namespace A064613.P5919752988903004990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081671 n - (n : ℤ) * A025228 (n + 1)

end

end A064613.P5919752988903004990

/-! ## A064613.P12580933078500773705

`A383950(n)/(n+1)`
-/

namespace A064613.P12580933078500773705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383950 n : ℚ) / (n + 1 : ℚ)

end

end A064613.P12580933078500773705

/-! ## A064613.P12782394321265762309

`2*A081671(n)-A005573(n)`
-/

namespace A064613.P12782394321265762309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081671 n - A005573 n

end

end A064613.P12782394321265762309

/-!
# A064614: Exchange 2 and 3 in the prime factorization of n.

The programs for A064614, the canonical program `A064614.P2027219799619674142` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064614 has offset 1).

The definition of A064614 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064614.P2027219799619674142

`A065330(n+1)*2^A007949(n+1)*3^A007814(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A064614

/-- `A065330(n+1)*2^A007949(n+1)*3^A007814(n+1)` -/
def P2027219799619674142.Spec : Prop :=
  ∀ n, P2027219799619674142.a n = (A064614 (n + 1) : ℚ)

end A064614

/-! ## A064614.P10857453751020733895

`(n+1)/A072026(n+1)*A072027(n+1)`
-/

namespace A064614.P10857453751020733895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A072026 (n + 1) : ℚ) * (A072027 (n + 1) : ℚ)

end

end A064614.P10857453751020733895

namespace A064614

/-- `(n+1)/A072026(n+1)*A072027(n+1)` -/
def P10857453751020733895.Spec : Prop :=
  ∀ n, P10857453751020733895.a n = (A064614 (n + 1) : ℚ)

end A064614

/-! ## A064614.P14865921043239190055

`A061898(A065331(n+1))*A065330(n+1)`
-/

namespace A064614.P14865921043239190055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (A065331 (n + 1)).toNat * A065330 (n + 1)

end

end A064614.P14865921043239190055

namespace A064614

/-- `A061898(A065331(n+1))*A065330(n+1)` -/
def P14865921043239190055.Spec : Prop :=
  ∀ n, P14865921043239190055.a n = A064614 (n + 1)

end A064614

/-! ## A064614.P5357240306304947423

`lcm(A061898(A065331(n+1)), A214681(n+1))`
-/

namespace A064614.P5357240306304947423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A061898 (A065331 (n + 1)).toNat) (A214681 (n + 1))

end

end A064614.P5357240306304947423

namespace A064614

/-- `lcm(A061898(A065331(n+1)), A214681(n+1))` -/
def P5357240306304947423.Spec : Prop :=
  ∀ n, (P5357240306304947423.a n : ℤ) = A064614 (n + 1)

end A064614

/-! ## A064614.P2329734026711430846

`A072027(A072026(n+1))`
-/

namespace A064614.P2329734026711430846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072027 (A072026 (n + 1)).toNat

end

end A064614.P2329734026711430846

namespace A064614

/-- `A072027(A072026(n+1))` -/
def P2329734026711430846.Spec : Prop :=
  ∀ n, P2329734026711430846.a n = A064614 (n + 1)

end A064614

/-! ## A064614.P4210287468543207879

`A065330(n+1)*A065331(A072027(n+1))`
-/

namespace A064614.P4210287468543207879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (n + 1) * A065331 (A072027 (n + 1)).toNat

end

end A064614.P4210287468543207879

namespace A064614

/-- `A065330(n+1)*A065331(A072027(n+1))` -/
def P4210287468543207879.Spec : Prop :=
  ∀ n, P4210287468543207879.a n = A064614 (n + 1)

end A064614

/-! ## A064614.P4207040904704166051

`lcm(A065330(n+1), A065331(A061898(n+1)))`
-/

namespace A064614.P4207040904704166051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065330 (n + 1)) (A065331 (A061898 (n + 1)).toNat)

end

end A064614.P4207040904704166051

namespace A064614

/-- `lcm(A065330(n+1), A065331(A061898(n+1)))` -/
def P4207040904704166051.Spec : Prop :=
  ∀ n, (P4207040904704166051.a n : ℤ) = A064614 (n + 1)

end A064614

/-! ## A064614.P14476072068523482852

`A065330(A103517(n))*A065331(A061898(n+1))`
-/

namespace A064614.P14476072068523482852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (A103517 n).toNat * A065331 (A061898 (n + 1)).toNat

end

end A064614.P14476072068523482852

namespace A064614

/-- `A065330(A103517(n))*A065331(A061898(n+1))` -/
def P14476072068523482852.Spec : Prop :=
  ∀ n, P14476072068523482852.a n = A064614 (n + 1)

end A064614

/-! ## A064614.P9279775709764655760

`A061898(n+1)/A214681(A061898(n+1))*A214681(n+1)`
-/

namespace A064614.P9279775709764655760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061898 (n + 1) : ℚ) / (A214681 (A061898 (n + 1)).toNat : ℚ) * (A214681 (n + 1) : ℚ)

end

end A064614.P9279775709764655760

namespace A064614

/-- `A061898(n+1)/A214681(A061898(n+1))*A214681(n+1)` -/
def P9279775709764655760.Spec : Prop :=
  ∀ n, P9279775709764655760.a n = (A064614 (n + 1) : ℚ)

end A064614

/-! ## A064614.P9431603641719870468

`A181351(A387377(n+1))`
-/

namespace A064614.P9431603641719870468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181351 (A387377 (n + 1)).toNat

end

end A064614.P9431603641719870468

namespace A064614

/-- `A181351(A387377(n+1))` -/
def P9431603641719870468.Spec : Prop :=
  ∀ n, P9431603641719870468.a n = A064614 (n + 1)

end A064614

/-!
# A064615: Numbers of the form m * 6^k for k >= 0 and m > 0 with gcd(m, 6) = 1.

The programs for A064615, the canonical program `A064615.P6052731312723093505` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064615 has offset 1).

The definition of A064615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064615.P6052731312723093505

`eq[val(n+1, 2), val(n+1, 3)]+1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064615

/-- `eq[val(n+1, 2), val(n+1, 3)]+1` -/
def P6052731312723093505.Spec : Prop :=
  ∀ n, (P6052731312723093505.a n : ℤ) = A064615 (n + 1)

theorem P6052731312723093505.correct : P6052731312723093505.Spec := by
  intro n
  simp only [A064615, Nat.add_sub_cancel]

end A064615

/-! ## A064615.P2197218806627087604

`∪[A277567(n+1), A277571(n+1)]`
-/

namespace A064615.P2197218806627087604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A064615.P2197218806627087604

namespace A064615

/-- `∪[A277567(n+1), A277571(n+1)]` -/
def P2197218806627087604.Spec : Prop :=
  ∀ n, (P2197218806627087604.a n : ℤ) = A064615 (n + 1)

end A064615

/-! ## A064615.P15115282731117553637

`filter[A339746(n+1), A373156(#)]`
-/

namespace A064615.P15115282731117553637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A064615.P15115282731117553637

namespace A064615

/-- `filter[A339746(n+1), A373156(#)]` -/
def P15115282731117553637.Spec : Prop :=
  ∀ n, P15115282731117553637.a n = A064615 (n + 1)

end A064615

/-! ## A064615.P10773983935081653387

`filter[A047266(n+2), A373156(#)]`
-/

namespace A064615.P10773983935081653387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047266 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A064615.P10773983935081653387

namespace A064615

/-- `filter[A047266(n+2), A373156(#)]` -/
def P10773983935081653387.Spec : Prop :=
  ∀ n, P10773983935081653387.a n = A064615 (n + 1)

end A064615

/-! ## A064615.P8909250682256642588

`filter[A036668(n+1), A373156(#)]`
-/

namespace A064615.P8909250682256642588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A064615.P8909250682256642588

namespace A064615

/-- `filter[A036668(n+1), A373156(#)]` -/
def P8909250682256642588.Spec : Prop :=
  ∀ n, P8909250682256642588.a n = A064615 (n + 1)

end A064615

/-! ## A064615.P8923901411918903404

`filter[A277573(n+1), A373156(#)]`
-/

namespace A064615.P8923901411918903404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A064615.P8923901411918903404

namespace A064615

/-- `filter[A277573(n+1), A373156(#)]` -/
def P8923901411918903404.Spec : Prop :=
  ∀ n, P8923901411918903404.a n = A064615 (n + 1)

end A064615

/-! ## A064615.P14229189630366904502

`filter[A301729(n+1), A373156(#)]`
-/

namespace A064615.P14229189630366904502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A064615.P14229189630366904502

namespace A064615

/-- `filter[A301729(n+1), A373156(#)]` -/
def P14229189630366904502.Spec : Prop :=
  ∀ n, P14229189630366904502.a n = A064615 (n + 1)

end A064615

/-! ## A064615.P2150726044205844432

`filter[A047260(n+2), A373156(#)]`
-/

namespace A064615.P2150726044205844432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047260 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A064615.P2150726044205844432

namespace A064615

/-- `filter[A047260(n+2), A373156(#)]` -/
def P2150726044205844432.Spec : Prop :=
  ∀ n, P2150726044205844432.a n = A064615 (n + 1)

end A064615

/-! ## A064615.P5934057542537264806

`filter[A047269(n+2), A373156(#)]`
-/

namespace A064615.P5934057542537264806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047269 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A064615.P5934057542537264806

namespace A064615

/-- `filter[A047269(n+2), A373156(#)]` -/
def P5934057542537264806.Spec : Prop :=
  ∀ n, P5934057542537264806.a n = A064615 (n + 1)

end A064615

/-! ## A064615.P9046027144063688797

`filter[A047273(n+2), A373156(#)]`
-/

namespace A064615.P9046027144063688797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A064615.P9046027144063688797

namespace A064615

/-- `filter[A047273(n+2), A373156(#)]` -/
def P9046027144063688797.Spec : Prop :=
  ∀ n, P9046027144063688797.a n = A064615 (n + 1)

end A064615

/-! ## A064615.P11909298629254927591

`filter[A304804(n), A373156(#)]`
-/

namespace A064615.P11909298629254927591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A064615.P11909298629254927591

namespace A064615

/-- `filter[A304804(n), A373156(#)]` -/
def P11909298629254927591.Spec : Prop :=
  ∀ n, P11909298629254927591.a n = A064615 (n + 1)

end A064615

/-! ## A064615.P824308324572607878

`filter[A304808(n), A373156(#)]`
-/

namespace A064615.P824308324572607878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A064615.P824308324572607878

namespace A064615

/-- `filter[A304808(n), A373156(#)]` -/
def P824308324572607878.Spec : Prop :=
  ∀ n, P824308324572607878.a n = A064615 (n + 1)

end A064615

/-! ## A064615.P14010387742859527069

`filter[A164028(n+1), A373156(#)]`
-/

namespace A064615.P14010387742859527069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A064615.P14010387742859527069

namespace A064615

/-- `filter[A164028(n+1), A373156(#)]` -/
def P14010387742859527069.Spec : Prop :=
  ∀ n, P14010387742859527069.a n = A064615 (n + 1)

end A064615

/-! ## A064615.P3429948457951302965

`filter[A285510(n+1), A373156(#)]`
-/

namespace A064615.P3429948457951302965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A064615.P3429948457951302965

namespace A064615

/-- `filter[A285510(n+1), A373156(#)]` -/
def P3429948457951302965.Spec : Prop :=
  ∀ n, P3429948457951302965.a n = A064615 (n + 1)

end A064615

/-! ## A064615.P16231539926118155301

`filter[A154611(n+1), A373156(#)]`
-/

namespace A064615.P16231539926118155301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A064615.P16231539926118155301

namespace A064615

/-- `filter[A154611(n+1), A373156(#)]` -/
def P16231539926118155301.Spec : Prop :=
  ∀ n, P16231539926118155301.a n = A064615 (n + 1)

end A064615

/-! ## A064615.P1760493543056305222

`filter[A155854(n+1), A373156(#)]`
-/

namespace A064615.P1760493543056305222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A064615.P1760493543056305222

namespace A064615

/-- `filter[A155854(n+1), A373156(#)]` -/
def P1760493543056305222.Spec : Prop :=
  ∀ n, P1760493543056305222.a n = A064615 (n + 1)

end A064615

/-! ## A064615.P8796416383782058649

`filter[A183300(n+1), A373156(#)]`
-/

namespace A064615.P8796416383782058649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A064615.P8796416383782058649

namespace A064615

/-- `filter[A183300(n+1), A373156(#)]` -/
def P8796416383782058649.Spec : Prop :=
  ∀ n, P8796416383782058649.a n = A064615 (n + 1)

end A064615

/-! ## A064615.P11971863287160848382

`filter[A138591(n+1), A373156(#)]`
-/

namespace A064615.P11971863287160848382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A064615.P11971863287160848382

namespace A064615

/-- `filter[A138591(n+1), A373156(#)]` -/
def P11971863287160848382.Spec : Prop :=
  ∀ n, P11971863287160848382.a n = A064615 (n + 1)

end A064615

/-! ## A064615.P10277834520567558745

`filter[A067061(n+1), A373156(#)]`
-/

namespace A064615.P10277834520567558745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A064615.P10277834520567558745

namespace A064615

/-- `filter[A067061(n+1), A373156(#)]` -/
def P10277834520567558745.Spec : Prop :=
  ∀ n, P10277834520567558745.a n = A064615 (n + 1)

end A064615

/-!
# A064616: a(n) = (10^n-1)*(91/81)-n*10^n/9.

The programs for A064616, the canonical program `A064616.P863004747010651799` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064616 has offset 1).

The definition of A064616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064616.P863004747010651799

`a(n-1)+(10-(n+1))*10^n` with `a(0)=9`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064616

/-- `a(n-1)+(10-(n+1))*10^n` -/
def P863004747010651799.Spec : Prop :=
  ∀ n, P863004747010651799.a n = A064616 (n + 1)

theorem P863004747010651799.correct : P863004747010651799.Spec := by
  intro n
  simp only [A064616, Nat.add_sub_cancel]

end A064616

/-! ## A064616.P17426484603503644770

`(19-(n+1))*A002275(n+1)-A064617(n+1)`
-/

namespace A064616.P17426484603503644770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (19 - (n + 1 : ℤ)) * A002275 (n + 1) - A064617 (n + 1)

end

end A064616.P17426484603503644770

namespace A064616

/-- `(19-(n+1))*A002275(n+1)-A064617(n+1)` -/
def P17426484603503644770.Spec : Prop :=
  ∀ n, P17426484603503644770.a n = A064616 (n + 1)

end A064616

/-! ## A064616.P5584374041079647899

`21*a(n-1)-120*a(n-2)+100*a(n-3)` with `a(0)=9, a(1)=89, a(2)=789`
-/

namespace A064616.P5584374041079647899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 89, 789] fun n a =>
  21 * a (n - 1) - 120 * a (n - 2) + 100 * a (n - 3)

end

end A064616.P5584374041079647899

namespace A064616

/-- `21*a(n-1)-120*a(n-2)+100*a(n-3)` -/
def P5584374041079647899.Spec : Prop :=
  ∀ n, P5584374041079647899.a n = A064616 (n + 1)

end A064616

/-! ## A064616.P1023160608892755773

`10*A002275(n+1)-A014925(n+1)`
-/

namespace A064616.P1023160608892755773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A002275 (n + 1) - A014925 (n + 1)

end

end A064616.P1023160608892755773

namespace A064616

/-- `10*A002275(n+1)-A014925(n+1)` -/
def P1023160608892755773.Spec : Prop :=
  ∀ n, P1023160608892755773.a n = A064616 (n + 1)

end A064616

/-! ## A064616.P10534457244483297790

`∑[(9-n)*10^n]`
-/

namespace A064616.P10534457244483297790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 - (n : ℤ)) * (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064616.P10534457244483297790

namespace A064616

/-- `∑[(9-n)*10^n]` -/
def P10534457244483297790.Spec : Prop :=
  ∀ n, P10534457244483297790.a n = A064616 (n + 1)

end A064616

/-!
# A064617: a(n) = (10^n - 1)*(80/81) + n/9.

The programs for A064617, the canonical program `A064617.P10655094265559728395` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064617 has offset 1).

The definition of A064617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064617.P2998303420751097039

`10*a(n-1)+10-(n+1)` with `a(0)=9`
-/

namespace A064617.P2998303420751097039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  10 * a (n - 1) + 10 - (n + 1 : ℤ)

end

end A064617.P2998303420751097039

namespace A064617

/-- `10*a(n-1)+10-(n+1)` -/
def P2998303420751097039.Spec : Prop :=
  ∀ n, P2998303420751097039.a n = A064617 (n + 1)

end A064617

/-! ## A064617.P10655094265559728395

`(10^(n+1)-1)*80/81+(n+1)/9`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064617

/-- `(10^(n+1)-1)*80/81+(n+1)/9` -/
def P10655094265559728395.Spec : Prop :=
  ∀ n, P10655094265559728395.a n = (A064617 (n + 1) : ℚ)

end A064617

/-! ## A064617.P4419414145427983763

`∑[ogf((9-10x)/(1-11x+10x^2))]`
-/

namespace A064617.P4419414145427983763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, -10] [1, -11, 10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064617.P4419414145427983763

namespace A064617

/-- `∑[ogf((9-10x)/(1-11x+10x^2))]` -/
def P4419414145427983763.Spec : Prop :=
  ∀ n, P4419414145427983763.a n = A064617 (n + 1)

end A064617

/-! ## A064617.P4820344692936739271

`∑[10*a(n-1)-1]` with `a(0)=9`
-/

namespace A064617.P4820344692936739271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f1 =>
  10 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064617.P4820344692936739271

namespace A064617

/-- `∑[10*a(n-1)-1]` -/
def P4820344692936739271.Spec : Prop :=
  ∀ n, P4820344692936739271.a n = A064617 (n + 1)

end A064617

/-! ## A064617.P15864508332725675556

`∑[A059482(n+1)]`
-/

namespace A064617.P15864508332725675556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064617.P15864508332725675556

namespace A064617

/-- `∑[A059482(n+1)]` -/
def P15864508332725675556.Spec : Prop :=
  ∀ n, P15864508332725675556.a n = A064617 (n + 1)

end A064617

/-! ## A064617.P7627645744514482296

`∑[A328333(2*(n+1))]`
-/

namespace A064617.P7627645744514482296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328333 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064617.P7627645744514482296

namespace A064617

/-- `∑[A328333(2*(n+1))]` -/
def P7627645744514482296.Spec : Prop :=
  ∀ n, P7627645744514482296.a n = A064617 (n + 1)

end A064617

/-!
# A064618: Stirling transform of (n!)^2.

The programs for A064618, there is no canonical definition to state claims against.
-/

/-! ## A064618.P4233606496348837169

`A330773(A002110(n)-1)`
-/

namespace A064618.P4233606496348837169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330773 (A002110 n - 1).toNat

end

end A064618.P4233606496348837169

/-! ## A064618.P9224442436331129763

`A330773(A006862(n)-2)`
-/

namespace A064618.P9224442436331129763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330773 (A006862 n - 2).toNat

end

end A064618.P9224442436331129763

/-!
# A064621: Values of A005132(n) at which the ratio A005132(n)/n sets a new record.

The programs for A064621, there is no canonical definition to state claims against.
-/

/-! ## A064621.P11118069523340630263

`A005132(A064622(n+1))`
-/

namespace A064621.P11118069523340630263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (A064622 (n + 1)).toNat

end

end A064621.P11118069523340630263

/-! ## A064621.P14439620511735776696

`filter[A064290(n+1), A118111(#)]`
-/

namespace A064621.P14439620511735776696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118111 (f1 j).toNat = 1) n)

end

end A064621.P14439620511735776696

/-! ## A064621.P6903750040748025331

`A063733(A064622(n+1)+1)-1`
-/

namespace A064621.P6903750040748025331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 (A064622 (n + 1) + 1).toNat - 1

end

end A064621.P6903750040748025331

/-! ## A064621.P8780622214176813459

`∩[A064290(n), A318535(n+1)]`
-/

namespace A064621.P8780622214176813459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064621.P8780622214176813459

/-!
# A064622: Values of n at which the ratio A005132(n)/n sets a new record.

The programs for A064622, there is no canonical definition to state claims against.
-/

/-! ## A064622.P14141636916695961294

`A057167(A064621(n+1))`
-/

namespace A064622.P14141636916695961294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057167 (A064621 (n + 1)).toNat

end

end A064622.P14141636916695961294

/-! ## A064622.P7760079630119231086

`A064292(∑[A152492(n+1)!])`
-/

namespace A064622.P7760079630119231086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A152492 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064292 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064622.P7760079630119231086

/-! ## A064622.P2425104834964284798

`∩[A076786(n+1), A064292(n)]`
-/

namespace A064622.P2425104834964284798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064292 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064622.P2425104834964284798

/-! ## A064622.P18168872140181875301

`∩[A064292(n), A302496(n+1)]`
-/

namespace A064622.P18168872140181875301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064292 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064622.P18168872140181875301

/-! ## A064622.P504914867181565433

`∩[A064292(n), A322846(n+1)]`
-/

namespace A064622.P504914867181565433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064292 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064622.P504914867181565433

/-!
# A064623: Primitive subsequence of A066031: terms of A066031 which are not a multiple of some previous terms.

The programs for A064623, there is no canonical definition to state claims against.
-/

/-! ## A064623.P11511058514695747983

`∩[A336445(n+1), A357874(n+1)]`
-/

namespace A064623.P11511058514695747983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064623.P11511058514695747983

/-! ## A064623.P16978204105948068569

`∩[A336445(n+1), A362669(n+1)]`
-/

namespace A064623.P16978204105948068569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064623.P16978204105948068569

/-!
# A064624: Generalization of the Genocchi numbers given by the Gandhi polynomials A(n+1,r) = r^3 A(n, r + 1) - (r - 1)^3 A(n, r); A(1,r) = r^3 - (r-1)^3.

The programs for A064624, there is no canonical definition to state claims against.
-/

/-! ## A064624.P15038394582079771174

`A065747(n²+1)`
-/

namespace A064624.P15038394582079771174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065747 (n ^ 2 + 1)

end

end A064624.P15038394582079771174

/-! ## A064624.P6815551990938253904

`A329369(A023001(n))`
-/

namespace A064624.P6815551990938253904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329369 (A023001 n).toNat

end

end A064624.P6815551990938253904

/-!
# A064625: Generalization of the Genocchi numbers. Generated by the Gandhi polynomials A(n+1,r) = r^4*A(n,r+1) - (r-1)^4*A(n,r); A(1,r) = r^4 - (r-1)^4.

The programs for A064625, there is no canonical definition to state claims against.
-/

/-! ## A064625.P3688149948734540726

`A065748(∑[n]+(1-n)²+n)`
-/

namespace A064625.P3688149948734540726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065748 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((1 - (n : ℤ)) ^ 2 + (n : ℤ))).toNat

end

end A064625.P3688149948734540726

/-! ## A064625.P8279802268876819347

`A079978(3*n+2)+A065748(A143689(n))`
-/

namespace A064625.P8279802268876819347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (3 * n + 2) + A065748 (A143689 n).toNat

end

end A064625.P8279802268876819347

/-!
# A064626: Football tournament numbers: the number of possible point series for a tournament of n teams playing each other once where 3 points are awarded to the winning team and 1 to each in the case of a tie.

The programs for A064626, there is no canonical definition to state claims against.
-/

/-! ## A064626.P638034183329116380

`A053646((n+3)^n+1)+1`
-/

namespace A064626.P638034183329116380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 ((n + 3) ^ n + 1) + 1

end

end A064626.P638034183329116380

/-!
# A064627: Positive integers not in A064494.

The programs for A064627, there is no canonical definition to state claims against.
-/

/-! ## A064627.P12302853444130309761

`eq[char[A064590(n+1)], A000007(n)]`
-/

namespace A064627.P12302853444130309761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064590 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A064627.P12302853444130309761

/-! ## A064627.P6315716269301897584

`eq[char[A064590(n+1)], A000038(n)]`
-/

namespace A064627.P6315716269301897584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064590 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A064627.P6315716269301897584

/-! ## A064627.P7757795471489444473

`eq[char[A064590(n+1)], A151909(n)]`
-/

namespace A064627.P7757795471489444473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064590 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A064627.P7757795471489444473

/-! ## A064627.P4247198371105238573

`eq[char[A064494(n+1)], A151933(n)]`
-/

namespace A064627.P4247198371105238573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064494 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A064627.P4247198371105238573

/-! ## A064627.P9587877477096957521

`eq[char[A064590(n+1)], A151933(n)]`
-/

namespace A064627.P9587877477096957521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064590 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A064627.P9587877477096957521

/-!
# A064628: a(n) = floor((4/3)^n).

The programs for A064628, the canonical program `A064628.P4534274668701968878` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064628 has offset 0).

The definition of A064628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064628.P4534274668701968878

`floor(4^n/3^n)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064628

/-- `floor(4^n/3^n)` -/
def P4534274668701968878.Spec : Prop :=
  ∀ n, P4534274668701968878.a n = A064628 n

theorem P4534274668701968878.correct : P4534274668701968878.Spec := by
  intro n
  simp only [A064628]

end A064628

/-! ## A064628.P353587985214219935

`ceil(A155609(n)/3^n)`
-/

namespace A064628.P353587985214219935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155609 n : ℚ) / (3 ^ n : ℚ)⌉

end

end A064628.P353587985214219935

namespace A064628

/-- `ceil(A155609(n)/3^n)` -/
def P353587985214219935.Spec : Prop :=
  ∀ n, P353587985214219935.a n = A064628 n

end A064628

/-! ## A064628.P17551767362358220671

`ceil((4^n+1-3^n)/A000244(n))`
-/

namespace A064628.P17551767362358220671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((4 ^ n : ℤ) + (1 - (3 ^ n : ℤ)) : ℚ) / (A000244 n : ℚ)⌉

end

end A064628.P17551767362358220671

namespace A064628

/-- `ceil((4^n+1-3^n)/A000244(n))` -/
def P17551767362358220671.Spec : Prop :=
  ∀ n, P17551767362358220671.a n = A064628 n

end A064628

/-! ## A064628.P14436003335733676574

`round(∑[A081294(n)/A008776(n)])`
-/

namespace A064628.P14436003335733676574
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081294 n : ℚ) / (A008776 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064628.P14436003335733676574

namespace A064628

/-- `round(∑[A081294(n)/A008776(n)])` -/
def P14436003335733676574.Spec : Prop :=
  ∀ n, P14436003335733676574.a n = A064628 n

end A064628

/-! ## A064628.P7546395661715892175

`floor(A005061(n)/A000244(n))+1`
-/

namespace A064628.P7546395661715892175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005061 n : ℚ) / (A000244 n : ℚ)⌋ + 1

end

end A064628.P7546395661715892175

namespace A064628

/-- `floor(A005061(n)/A000244(n))+1` -/
def P7546395661715892175.Spec : Prop :=
  ∀ n, P7546395661715892175.a n = A064628 n

end A064628

/-! ## A064628.P2736824431681379259

`round((A007051(n)+A005061(n))/A000244(n))`
-/

namespace A064628.P2736824431681379259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007051 n + A005061 n : ℚ) / (A000244 n : ℚ))

end

end A064628.P2736824431681379259

namespace A064628

/-- `round((A007051(n)+A005061(n))/A000244(n))` -/
def P2736824431681379259.Spec : Prop :=
  ∀ n, P2736824431681379259.a n = A064628 n

end A064628

/-! ## A064628.P17019286368633601188

`floor(A000302(n)/A000244(n))%A000051(n)`
-/

namespace A064628.P17019286368633601188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A000302 n : ℚ) / (A000244 n : ℚ)⌋ (A000051 n)

end

end A064628.P17019286368633601188

namespace A064628

/-- `floor(A000302(n)/A000244(n))%A000051(n)` -/
def P17019286368633601188.Spec : Prop :=
  ∀ n, P17019286368633601188.a n = A064628 n

end A064628

/-! ## A064628.P8517884238950348529

`round(A085350(n)/A008776(n))`
-/

namespace A064628.P8517884238950348529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A085350 n : ℚ) / (A008776 n : ℚ))

end

end A064628.P8517884238950348529

namespace A064628

/-- `round(A085350(n)/A008776(n))` -/
def P8517884238950348529.Spec : Prop :=
  ∀ n, P8517884238950348529.a n = A064628 n

end A064628

/-!
# A064629: a(n) = 4^n mod 3^n.

The programs for A064629, the canonical program `A064629.P8933291331078850316` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064629 has offset 0).

The definition of A064629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064629.P8933291331078850316

`(4^n)%(3^n)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064629

/-- `(4^n)%(3^n)` -/
def P8933291331078850316.Spec : Prop :=
  ∀ n, (P8933291331078850316.a n : ℤ) = A064629 n

theorem P8933291331078850316.correct : P8933291331078850316.Spec := by
  intro n
  simp only [A064629]

end A064629

/-! ## A064629.P14534475417098471275

`abs(A262710(n)%A000244(n))`
-/

namespace A064629.P14534475417098471275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A262710 n) (A000244 n)|

end

end A064629.P14534475417098471275

namespace A064629

/-- `abs(A262710(n)%A000244(n))` -/
def P14534475417098471275.Spec : Prop :=
  ∀ n, P14534475417098471275.a n = A064629 n

end A064629

/-! ## A064629.P1112733181606323352

`-(-A000302(n)%A000244(n))`
-/

namespace A064629.P1112733181606323352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A000302 n) (A000244 n)

end

end A064629.P1112733181606323352

namespace A064629

/-- `-(-A000302(n)%A000244(n))` -/
def P1112733181606323352.Spec : Prop :=
  ∀ n, P1112733181606323352.a n = A064629 n

end A064629

/-! ## A064629.P8441594959476422659

`-(-A005061(n)%A000244(n))`
-/

namespace A064629.P8441594959476422659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A005061 n) (A000244 n)

end

end A064629.P8441594959476422659

namespace A064629

/-- `-(-A005061(n)%A000244(n))` -/
def P8441594959476422659.Spec : Prop :=
  ∀ n, P8441594959476422659.a n = A064629 n

end A064629

/-! ## A064629.P14241386971641490507

`abs(A000302(n)%Δ[A003462(n)])`
-/

namespace A064629.P14241386971641490507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000302 n) (f1 (n + 1) - f1 n)|

end

end A064629.P14241386971641490507

namespace A064629

/-- `abs(A000302(n)%Δ[A003462(n)])` -/
def P14241386971641490507.Spec : Prop :=
  ∀ n, P14241386971641490507.a n = A064629 n

end A064629

/-! ## A064629.P9475027327798901324

`A004171(n)%A008776(n)/2`
-/

namespace A064629.P9475027327798901324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A004171 n) (A008776 n) : ℚ) / 2

end

end A064629.P9475027327798901324

namespace A064629

/-- `A004171(n)%A008776(n)/2` -/
def P9475027327798901324.Spec : Prop :=
  ∀ n, P9475027327798901324.a n = (A064629 n : ℚ)

end A064629

/-! ## A064629.P7634957003525277977

`A002001(n+1)%A000244(n+1)/3`
-/

namespace A064629.P7634957003525277977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A002001 (n + 1)) (A000244 (n + 1)) : ℚ) / 3

end

end A064629.P7634957003525277977

namespace A064629

/-- `A002001(n+1)%A000244(n+1)/3` -/
def P7634957003525277977.Spec : Prop :=
  ∀ n, P7634957003525277977.a n = (A064629 n : ℚ)

end A064629

/-! ## A064629.P15783181304245686285

`A138964(n)/2^n`
-/

namespace A064629.P15783181304245686285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138964 n : ℚ) / (2 ^ n : ℚ)

end

end A064629.P15783181304245686285

namespace A064629

/-- `A138964(n)/2^n` -/
def P15783181304245686285.Spec : Prop :=
  ∀ n, P15783181304245686285.a n = (A064629 n : ℚ)

end A064629

/-!
# A064631: a(n) = ceiling(log_2(A064630(n))).

The programs for A064631, there is no canonical definition to state claims against.
-/

/-! ## A064631.P16161069675877379103

`A029837(A064630(n+1)+1)`
-/

namespace A064631.P16161069675877379103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A064630 (n + 1) + 1).toNat

end

end A064631.P16161069675877379103

/-! ## A064631.P15269216052853445069

`A070939(A064630(n+1))`
-/

namespace A064631.P15269216052853445069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A064630 (n + 1)).toNat

end

end A064631.P15269216052853445069

/-! ## A064631.P13048207094871782501

`A070939(A083710(n+2)+A064536(n+1))`
-/

namespace A064631.P13048207094871782501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A083710 (n + 2) + A064536 (n + 1)).toNat

end

end A064631.P13048207094871782501

/-! ## A064631.P699188958646931701

`A029837(A064536(n+1)+A054784(n+3))`
-/

namespace A064631.P699188958646931701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A064536 (n + 1) + A054784 (n + 3)).toNat

end

end A064631.P699188958646931701

/-! ## A064631.P1267581583015029456

`A070939(A080107(n)+A052174(2*(n+2)))`
-/

namespace A064631.P1267581583015029456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A080107 n + A052174 (2 * (n + 2))).toNat

end

end A064631.P1267581583015029456

/-!
# A064632: Smallest prime p such that n = (p-1)/(q-1) for some prime q.

The programs for A064632, there is no canonical definition to state claims against.
-/

/-! ## A064632.P2020708837077070180

`(n+2)*A064652(n+2)-(n+1)`
-/

namespace A064632.P2020708837077070180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A064652 (n + 2) - (n + 1 : ℤ)

end

end A064632.P2020708837077070180

/-! ## A064632.P5431589463460318900

`A034694(n+2)%A080531(n)`
-/

namespace A064632.P5431589463460318900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034694 (n + 2)) (A080531 n)

end

end A064632.P5431589463460318900

/-! ## A064632.P1993642483074672336

`p?[A034694(n+1)-A151620(n)]`
-/

namespace A064632.P1993642483074672336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (n + 1) - A151620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064632.P1993642483074672336

/-! ## A064632.P4108312240665212739

`p?[A151620(n+1)+A034694(n+2)]`
-/

namespace A064632.P4108312240665212739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151620 (n + 1) + A034694 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064632.P4108312240665212739

/-! ## A064632.P5888649249464901946

`A034694(round(acot(A112565(n+2))+n)+2)`
-/

namespace A064632.P5888649249464901946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (A112565 (n + 2) : ℝ) + (n : ℝ)) + 2).toNat

end

end A064632.P5888649249464901946

/-!
# A064633: a(n) = 3^n*n!*(n+2)!/2!.

The programs for A064633, the canonical program `A064633.P13094384076149203170` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064633 has offset 0).

The definition of A064633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064633.P13094384076149203170

`3^n*n!*(n+2)!/2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064633

/-- `3^n*n!*(n+2)!/2` -/
def P13094384076149203170.Spec : Prop :=
  ∀ n, P13094384076149203170.a n = (A064633 n : ℚ)

end A064633

/-! ## A064633.P1714395035014132166

`3^n*n!*(n+2)!/2!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064633.P1714395035014132166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n * Nat.factorial n * Nat.factorial (n + 2) : ℚ) / (Nat.factorial 2 : ℚ)

end

end A064633.P1714395035014132166

namespace A064633

/-- `3^n*n!*(n+2)!/2!` -/
def P1714395035014132166.Spec : Prop :=
  ∀ n, P1714395035014132166.a n = (A064633 n : ℚ)

end A064633

/-! ## A064633.P120203307873460287

`3*a(n-1)*n*(n+2)` with `a(0)=1`
-/

namespace A064633.P120203307873460287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) * (n * (n + 2))

end

end A064633.P120203307873460287

namespace A064633

/-- `3*a(n-1)*n*(n+2)` -/
def P120203307873460287.Spec : Prop :=
  ∀ n, (P120203307873460287.a n : ℤ) = A064633 n

end A064633

/-! ## A064633.P12410839048701601779

`∏[floor(2/acot(3*n))+3*n²]`
-/

namespace A064633.P12410839048701601779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (3 * n : ℝ)⌋ + (3 * n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A064633.P12410839048701601779

namespace A064633

/-- `∏[floor(2/acot(3*n))+3*n²]` -/
def P12410839048701601779.Spec : Prop :=
  ∀ n, P12410839048701601779.a n = A064633 n

end A064633

/-! ## A064633.P9709242703670480858

`3^n*∏[∑[2*n+1-char[1]]]`
-/

namespace A064633.P9709242703670480858
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (1 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A064633.P9709242703670480858

namespace A064633

/-- `3^n*∏[∑[2*n+1-char[1]]]` -/
def P9709242703670480858.Spec : Prop :=
  ∀ n, P9709242703670480858.a n = A064633 n

end A064633

/-!
# A064634: a(0) = 0 and a(n) = Min { i > a(n-1) | A064466(i + 1) - A064466(i) > 2 } for n > 0.

The programs for A064634, there is no canonical definition to state claims against.
-/

/-! ## A064634.P15727078757991918057

`eq[0, A294185(n+2)]-n`
-/

namespace A064634.P15727078757991918057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294185 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A064634.P15727078757991918057

/-! ## A064634.P5074451296770320719

`A001489(n)+eq[0, A294185(n+2)]`
-/

namespace A064634.P5074451296770320719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294185 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A064634.P5074451296770320719

/-! ## A064634.P10831037946860949548

`eq[A022003(n), A107393(2*n+1)]-n`
-/

namespace A064634.P10831037946860949548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n : ℤ)

end

end A064634.P10831037946860949548

/-! ## A064634.P2247537211512562506

`eq[A067180(n+1), A101264(n)]-n`
-/

namespace A064634.P2247537211512562506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n : ℤ)

end

end A064634.P2247537211512562506

/-! ## A064634.P17218514228833811593

`A001489(n)+eq[A067180(n+1), A101264(n)]`
-/

namespace A064634.P17218514228833811593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A064634.P17218514228833811593

/-!
# A064635: Even numbers > 6 not appearing in A064466. a(n) = A064466(A064634(n)) + 2 for n > 0.

The programs for A064635, the canonical program `A064635.P6171821753476805520` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064635 has offset 1).

The definition of A064635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6751 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064635.P9853830977799231308

`A092256(n+1)+5`
-/

namespace A064635.P9853830977799231308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1) + 5

end

end A064635.P9853830977799231308

namespace A064635

/-- `A092256(n+1)+5` -/
def P9853830977799231308.Spec : Prop :=
  ∀ n, P9853830977799231308.a n = A064635 (n + 1)

end A064635

/-! ## A064635.P10566381815236404774

`2*(A138685(n+1)+7)`
-/

namespace A064635.P10566381815236404774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A138685 (n + 1) + 7)

end

end A064635.P10566381815236404774

namespace A064635

/-- `2*(A138685(n+1)+7)` -/
def P10566381815236404774.Spec : Prop :=
  ∀ n, P10566381815236404774.a n = A064635 (n + 1)

end A064635

/-! ## A064635.P3161055828305759035

`6*A153245(n+1)-2`
-/

namespace A064635.P3161055828305759035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A153245 (n + 1) - 2

end

end A064635.P3161055828305759035

namespace A064635

/-- `6*A153245(n+1)-2` -/
def P3161055828305759035.Spec : Prop :=
  ∀ n, P3161055828305759035.a n = A064635 (n + 1)

end A064635

/-! ## A064635.P7172389367349462293

`6*A046953(n+1)+4`
-/

namespace A064635.P7172389367349462293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A046953 (n + 1) + 4

end

end A064635.P7172389367349462293

namespace A064635

/-- `6*A046953(n+1)+4` -/
def P7172389367349462293.Spec : Prop :=
  ∀ n, P7172389367349462293.a n = A064635 (n + 1)

end A064635

/-! ## A064635.P6171821753476805520

`6*A059324(n+1)+10`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A064635

/-- `6*A059324(n+1)+10` -/
def P6171821753476805520.Spec : Prop :=
  ∀ n, P6171821753476805520.a n = A064635 (n + 1)

theorem P6171821753476805520.correct : P6171821753476805520.Spec := by
  intro n
  simp only [A064635, Nat.add_sub_cancel]

end A064635

/-! ## A064635.P871906792996356196

`A016957(A046953(n+1))`
-/

namespace A064635.P871906792996356196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 (A046953 (n + 1)).toNat

end

end A064635.P871906792996356196

namespace A064635

/-- `A016957(A046953(n+1))` -/
def P871906792996356196.Spec : Prop :=
  ∀ n, P871906792996356196.a n = A064635 (n + 1)

end A064635

/-! ## A064635.P17464693219093428902

`A347525(A153245(n+1))`
-/

namespace A064635.P17464693219093428902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347525 (A153245 (n + 1)).toNat

end

end A064635.P17464693219093428902

namespace A064635

/-- `A347525(A153245(n+1))` -/
def P17464693219093428902.Spec : Prop :=
  ∀ n, P17464693219093428902.a n = A064635 (n + 1)

end A064635

/-! ## A064635.P1067953511590215432

`∩[A298366(n+1), A016933(n)]+2`
-/

namespace A064635.P1067953511590215432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A064635.P1067953511590215432

namespace A064635

/-- `∩[A298366(n+1), A016933(n)]+2` -/
def P1067953511590215432.Spec : Prop :=
  ∀ n, (P1067953511590215432.a n : ℤ) = A064635 (n + 1)

end A064635

/-! ## A064635.P11241385193490292469

`∩[A140164(n+1), A298366(n+1)]+2`
-/

namespace A064635.P11241385193490292469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A064635.P11241385193490292469

namespace A064635

/-- `∩[A140164(n+1), A298366(n+1)]+2` -/
def P11241385193490292469.Spec : Prop :=
  ∀ n, (P11241385193490292469.a n : ℤ) = A064635 (n + 1)

end A064635

/-! ## A064635.P16672596302527387919

`∩[A298366(n+1), A016789(n)]+2`
-/

namespace A064635.P16672596302527387919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A064635.P16672596302527387919

namespace A064635

/-- `∩[A298366(n+1), A016789(n)]+2` -/
def P16672596302527387919.Spec : Prop :=
  ∀ n, (P16672596302527387919.a n : ℤ) = A064635 (n + 1)

end A064635

/-! ## A064635.P9714261223490174825

`∩[A047239(n+1), A298366(n+1)]+2`
-/

namespace A064635.P9714261223490174825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A064635.P9714261223490174825

namespace A064635

/-- `∩[A047239(n+1), A298366(n+1)]+2` -/
def P9714261223490174825.Spec : Prop :=
  ∀ n, (P9714261223490174825.a n : ℤ) = A064635 (n + 1)

end A064635

/-! ## A064635.P2119483786565247789

`∩[A047243(n+1), A298366(n+1)]+2`
-/

namespace A064635.P2119483786565247789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A064635.P2119483786565247789

namespace A064635

/-- `∩[A047243(n+1), A298366(n+1)]+2` -/
def P2119483786565247789.Spec : Prop :=
  ∀ n, (P2119483786565247789.a n : ℤ) = A064635 (n + 1)

end A064635

/-! ## A064635.P10530244959997983636

`∩[A061570(n+1), A298366(n+1)]+2`
-/

namespace A064635.P10530244959997983636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A064635.P10530244959997983636

namespace A064635

/-- `∩[A061570(n+1), A298366(n+1)]+2` -/
def P10530244959997983636.Spec : Prop :=
  ∀ n, (P10530244959997983636.a n : ℤ) = A064635 (n + 1)

end A064635

/-! ## A064635.P5238215567832939428

`A064466(A064634(n+1))+2`
-/

namespace A064635.P5238215567832939428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064466 (A064634 (n + 1)).toNat + 2

end

end A064635.P5238215567832939428

namespace A064635

/-- `A064466(A064634(n+1))+2` -/
def P5238215567832939428.Spec : Prop :=
  ∀ n, P5238215567832939428.a n = A064635 (n + 1)

end A064635

/-! ## A064635.P12574898711072616802

`A020710(A092256(n+1))`
-/

namespace A064635.P12574898711072616802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A092256 (n + 1)).toNat

end

end A064635.P12574898711072616802

namespace A064635

/-- `A020710(A092256(n+1))` -/
def P12574898711072616802.Spec : Prop :=
  ∀ n, P12574898711072616802.a n = A064635 (n + 1)

end A064635

/-!
# A064636: Number of derangements up to cyclic rotations; permutation siteswap necklaces, with no fixed points (no "zero-throws", i.e., empty hands, if we use the mapping Perm2SiteSwap1 of A060495 and A060498).

The programs for A064636, there is no canonical definition to state claims against.
-/

/-! ## A064636.P3393680890323665773

`A055768(A057859(n!))`
-/

namespace A064636.P3393680890323665773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055768 (A057859 (Nat.factorial n)).toNat

end

end A064636.P3393680890323665773

/-! ## A064636.P269715062628075499

`A055768(A057859(-∏[n-C(2, n+2)]))`
-/

namespace A064636.P269715062628075499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055768 (A057859 (-(∏ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A064636.P269715062628075499

/-! ## A064636.P9806893293241659407

`A236362(A001250(n)*A226635(n))`
-/

namespace A064636.P9806893293241659407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236362 (A001250 n * A226635 n).toNat

end

end A064636.P9806893293241659407

/-!
# A064637: Setwise difference of A060132 and A059590. Those terms of A060132 which are not representable as a sum of distinct factorials.

The programs for A064637, there is no canonical definition to state claims against.
-/

/-! ## A064637.P7688628527637956697

`∩[A115945(n+1), A060132(n)]`
-/

namespace A064637.P7688628527637956697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060132 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064637.P7688628527637956697

/-! ## A064637.P765779730680844858

`eq[n, A060119(A115944(n)+n)]`
-/

namespace A064637.P765779730680844858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (A115944 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064637.P765779730680844858

/-! ## A064637.P2306138893213744211

`eq[n, A060126(A115944(n)+n)]`
-/

namespace A064637.P2306138893213744211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060126 (A115944 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064637.P2306138893213744211

/-! ## A064637.P7374073232307934255

`eq[n, A060119(n)-A115944(n)]`
-/

namespace A064637.P7374073232307934255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 n - A115944 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064637.P7374073232307934255

/-! ## A064637.P8928784248565875665

`eq[n, A060126(n)-A115944(n)]`
-/

namespace A064637.P8928784248565875665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060126 n - A115944 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064637.P8928784248565875665

/-!
# A064638: Positions of non-crossing fixed-point-free involutions encoded by A014486 in A055089. Permutation of A064640.

The programs for A064638, there is no canonical definition to state claims against.
-/

/-! ## A064638.P9095835293039922434

`A064639(A057164(n))`
-/

namespace A064638.P9095835293039922434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064639 (A057164 n).toNat

end

end A064638.P9095835293039922434

/-! ## A064638.P14278120901213395551

`A064639(A057163(A057506(n)))`
-/

namespace A064638.P14278120901213395551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064639 (A057163 (A057506 n).toNat).toNat

end

end A064638.P14278120901213395551

/-!
# A064639: Positions of non-crossing fixed-point-free involutions encoded by A014486 (after reflection) in A055089. Permutation of A064640.

The programs for A064639, there is no canonical definition to state claims against.
-/

/-! ## A064639.P17177784903884022385

`A064638(A057164(n))`
-/

namespace A064639.P17177784903884022385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064638 (A057164 n).toNat

end

end A064639.P17177784903884022385

/-! ## A064639.P5741222801508345289

`record[A064640(n)%A263124(3*n+4)]`
-/

namespace A064639.P5741222801508345289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064640 n) (A263124 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064639.P5741222801508345289

/-!
# A064640: Positions of non-crossing fixed-point-free involutions (encoded by A014486) in A055089, sorted to ascending order.

The programs for A064640, there is no canonical definition to state claims against.
-/

/-! ## A064640.P5737855939363942250

`A064639(A001222(2^n))`
-/

namespace A064640.P5737855939363942250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064639 (A001222 (2 ^ n)).toNat

end

end A064640.P5737855939363942250

/-! ## A064640.P2868222193567681197

`A174617(A106800(n))+A064639(n)`
-/

namespace A064640.P2868222193567681197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174617 (A106800 n).toNat + A064639 n

end

end A064640.P2868222193567681197

/-! ## A064640.P9880502878813984850

`A064639(n)*A325385(A000079(n))`
-/

namespace A064640.P9880502878813984850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064639 n * A325385 (A000079 n).toNat

end

end A064640.P9880502878813984850

/-! ## A064640.P4047530004518453671

`A064639(n)%A208728(A000070(n))`
-/

namespace A064640.P4047530004518453671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064639 n) (A208728 (A000070 n).toNat)

end

end A064640.P4047530004518453671

/-! ## A064640.P8510096528499799683

`or(A064639(n), A337101(A102726(n)))`
-/

namespace A064640.P8510096528499799683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064639 n) (A337101 (A102726 n).toNat)

end

end A064640.P8510096528499799683

/-!
# A064641: Unidirectional 'Delannoy' variation of the Boustrophedon transform applied to all 1's sequence: construct an array in which the first element of each row is 1 and subsequent entries are given by T(n,k) = T(n,k-1) + T(n-1,k-1) + T(n-1,k) + T(n-2,k-1). The last number in row n gives a(n).

The programs for A064641, there is no canonical definition to state claims against.
-/

/-! ## A064641.P18297460311970641380

`A064642(∑[n]+n)`
-/

namespace A064641.P18297460311970641380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064642 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A064641.P18297460311970641380

/-! ## A064641.P409292962888408829

`A223092(∑[n]+n)`
-/

namespace A064641.P409292962888408829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223092 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A064641.P409292962888408829

/-! ## A064641.P14601923296658270532

`A156016(n)-a(n-1)` with `a(0)=1`
-/

namespace A064641.P14601923296658270532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A156016 n - a (n - 1)

end

end A064641.P14601923296658270532

/-! ## A064641.P1304503194684013947

`record[A064642(A049780(n))]`
-/

namespace A064641.P1304503194684013947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064642 (A049780 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064641.P1304503194684013947

/-! ## A064641.P1497788217803882244

`record[A064642(A061579(n))]`
-/

namespace A064641.P1497788217803882244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064642 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064641.P1497788217803882244

/-! ## A064641.P5788190860321832046

`record[A064642(n*A103451(n))]`
-/

namespace A064641.P5788190860321832046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064642 ((n : ℤ) * A103451 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064641.P5788190860321832046

/-! ## A064641.P8755729161703907640

`record[A064642(n)/A008288(n)]`
-/

namespace A064641.P8755729161703907640
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064642 n : ℚ) / (A008288 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064641.P8755729161703907640

/-! ## A064641.P12953157068863244055

`record[A223092(n)/A008288(n)]`
-/

namespace A064641.P12953157068863244055
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223092 n : ℚ) / (A008288 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064641.P12953157068863244055

/-! ## A064641.P4941541003988001474

`record[gcd(A064642(n), A223092(n))]`
-/

namespace A064641.P4941541003988001474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064642 n) (A223092 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064641.P4941541003988001474

/-! ## A064641.P18044112630769949992

`record[A064642(n)/A064642(n+1)]`
-/

namespace A064641.P18044112630769949992
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064642 n : ℚ) / (A064642 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064641.P18044112630769949992

/-! ## A064641.P904325675990377702

`record[A223092(n)/A223092(n+1)]`
-/

namespace A064641.P904325675990377702
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223092 n : ℚ) / (A223092 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064641.P904325675990377702

/-! ## A064641.P2505480200162241143

`record[Δ[A386301(n)]]`
-/

namespace A064641.P2505480200162241143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386301 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064641.P2505480200162241143

/-!
# A064643: Bidirectional 'Delannoy' variation of the Boustrophedon transform applied to all 1's sequence: Fill an triangular array in alternating directions. Let the first element of each row in that direction be equal to 1. Each next entry is given by T(n,k) = T(n,k +/ - 1) + T(n-1,k-1) + T(n-1,k) + T(n-2,k-1), where the +/ - depends on which is the previous element in the direction one is filling in the row. The final number of row n gives a(n).

The programs for A064643, there is no canonical definition to state claims against.
-/

/-! ## A064643.P16110248497695589753

`A064644(A266304(n))`
-/

namespace A064643.P16110248497695589753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064644 (A266304 n).toNat

end

end A064643.P16110248497695589753

/-! ## A064643.P13140055714631178912

`record[A064644(n*A103451(n))]`
-/

namespace A064643.P13140055714631178912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064644 ((n : ℤ) * A103451 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064643.P13140055714631178912

/-! ## A064643.P330954602719527109

`record[A064644(n)/A008288(n)]`
-/

namespace A064643.P330954602719527109
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064644 n : ℚ) / (A008288 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064643.P330954602719527109

/-! ## A064643.P4095222519911242946

`record[A064644(n)/A008459(n)]`
-/

namespace A064643.P4095222519911242946
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064644 n : ℚ) / (A008459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064643.P4095222519911242946

/-! ## A064643.P7507939611116841278

`record[A064644(n)/A081577(n)]`
-/

namespace A064643.P7507939611116841278
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064644 n : ℚ) / (A081577 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064643.P7507939611116841278

/-!
# A064645: Table where the entry (n,k) (n >= 0, k >= 0) gives number of Motzkin paths of the length n with the minimum peak width of k.

The programs for A064645, there is no canonical definition to state claims against.
-/

/-! ## A064645.P17802347719694152904

`gcd(A001840(A281446(n)), A258709(n))`
-/

namespace A064645.P17802347719694152904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001840 (A281446 n).toNat) (A258709 n)

end

end A064645.P17802347719694152904

/-! ## A064645.P15546121844197059580

`A238884(A137710(n+1))`
-/

namespace A064645.P15546121844197059580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238884 (A137710 (n + 1)).toNat

end

end A064645.P15546121844197059580

/-!
# A064647: Denominators of partial sums of reciprocals of primorial numbers.

The programs for A064647, there is no canonical definition to state claims against.
-/

/-! ## A064647.P11279870798825158371

`A059807(A079078(n))*A079078(n+1)`
-/

namespace A064647.P11279870798825158371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059807 (A079078 n).toNat * A079078 (n + 1)

end

end A064647.P11279870798825158371

/-! ## A064647.P4610004153503880333

`A002110(n+1)/A000120(A225826(n))`
-/

namespace A064647.P4610004153503880333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) : ℚ) / (A000120 (A225826 n).toNat : ℚ)

end

end A064647.P4610004153503880333

/-! ## A064647.P10871325712750606105

`A002110(n+1)/A020639(A000740(2*(n+1)))`
-/

namespace A064647.P10871325712750606105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) : ℚ) / (A020639 (A000740 (2 * (n + 1))).toNat : ℚ)

end

end A064647.P10871325712750606105

/-!
# A064649: Row sums of the table A047916.

The programs for A064649, there is no canonical definition to state claims against.
-/

/-! ## A064649.P16575426849410191764

`(n+1)*A061417(n+1)`
-/

namespace A064649.P16575426849410191764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A061417 (n + 1)

end

end A064649.P16575426849410191764

/-! ## A064649.P14194434193997431670

`record[A061417(A158416(n))*A158416(n)]`
-/

namespace A064649.P14194434193997431670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061417 (A158416 n).toNat * A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064649.P14194434193997431670

/-! ## A064649.P7341198220111562367

`record[A061417(A195663(n))*A195663(n)]`
-/

namespace A064649.P7341198220111562367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061417 (A195663 n).toNat * A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064649.P7341198220111562367

/-! ## A064649.P13361545466722739022

`record[A061417(A246694(n))*A246694(n)]`
-/

namespace A064649.P13361545466722739022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061417 (A246694 n).toNat * A246694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064649.P13361545466722739022

/-! ## A064649.P13668023187087855406

`A061417(A158416(2*n))*A158416(2*n)`
-/

namespace A064649.P13668023187087855406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061417 (A158416 (2 * n)).toNat * A158416 (2 * n)

end

end A064649.P13668023187087855406

/-!
# A064650: a(n) = floor(a(n-1)/2) + a(n-2) with a(0)=1, a(1)=2.

The programs for A064650, the canonical program `A064650.P7940449836741381077` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064650 has offset 0).

The definition of A064650 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)/2)+a(n-2)` (program `A064650.P7940449836741381077`, by `A064650.P7940449836741381077.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064650.P7940449836741381077

`floor(a(n-1)/2)+a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064650

/-- `floor(a(n-1)/2)+a(n-2)` -/
def P7940449836741381077.Spec : Prop :=
  ∀ n, P7940449836741381077.a n = A064650 n

theorem P7940449836741381077.correct : P7940449836741381077.Spec := by
  intro n
  simp only [A064650]

end A064650

/-! ## A064650.P10166095538842659687

`A064651(n)+1`
-/

namespace A064650.P10166095538842659687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064651 n + 1

end

end A064650.P10166095538842659687

namespace A064650

/-- `A064651(n)+1` -/
def P10166095538842659687.Spec : Prop :=
  ∀ n, P10166095538842659687.a n = A064650 n

end A064650

/-! ## A064650.P3952536207377652214

`a(n-2)-floor((1-a(n-1))/2)` with `a(0)=1, a(1)=2`
-/

namespace A064650.P3952536207377652214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) - ⌊(1 - a (n - 1) : ℚ) / 2⌋

end

end A064650.P3952536207377652214

namespace A064650

/-- `a(n-2)-floor((1-a(n-1))/2)` -/
def P3952536207377652214.Spec : Prop :=
  ∀ n, P3952536207377652214.a n = A064650 n

end A064650

/-! ## A064650.P13399568499956602279

`ceil(a(n-2)-(1-a(n-1))/2)` with `a(0)=1, a(1)=2`
-/

namespace A064650.P13399568499956602279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌈(a (n - 2) : ℚ) - (1 - a (n - 1) : ℚ) / 2⌉

end

end A064650.P13399568499956602279

namespace A064650

/-- `ceil(a(n-2)-(1-a(n-1))/2)` -/
def P13399568499956602279.Spec : Prop :=
  ∀ n, P13399568499956602279.a n = A064650 n

end A064650

/-! ## A064650.P7981994117113078144

`a(n-2)+(a(n-1)-a(n-1)%2)/2` with `a(0)=1, a(1)=2`
-/

namespace A064650.P7981994117113078144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (a (n - 1) - (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 2 : ℚ)) / 2

end

end A064650.P7981994117113078144

namespace A064650

/-- `a(n-2)+(a(n-1)-a(n-1)%2)/2` -/
def P7981994117113078144.Spec : Prop :=
  ∀ n, P7981994117113078144.a n = (A064650 n : ℚ)

end A064650

/-! ## A064650.P15833510584696780307

`A064324(n)-(A064323(n)-A064651(n))`
-/

namespace A064650.P15833510584696780307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064324 n - (A064323 n - A064651 n)

end

end A064650.P15833510584696780307

namespace A064650

/-- `A064324(n)-(A064323(n)-A064651(n))` -/
def P15833510584696780307.Spec : Prop :=
  ∀ n, P15833510584696780307.a n = A064650 n

end A064650

/-!
# A064651: a(n) = ceiling(a(n-1)/2) + a(n-2) with a(0)=0 and a(1)=1.

The programs for A064651, the canonical program `A064651.P1745475762559280573` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064651 has offset 0).

The definition of A064651 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(a(n-1)/2)+a(n-2)` (program `A064651.P1745475762559280573`, by `A064651.P1745475762559280573.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064651.P1745475762559280573

`ceil(a(n-1)/2)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064651

/-- `ceil(a(n-1)/2)+a(n-2)` -/
def P1745475762559280573.Spec : Prop :=
  ∀ n, P1745475762559280573.a n = A064651 n

theorem P1745475762559280573.correct : P1745475762559280573.Spec := by
  intro n
  simp only [A064651]

end A064651

/-! ## A064651.P12440673945312322021

`A064650(n)-1`
-/

namespace A064651.P12440673945312322021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064650 n - 1

end

end A064651.P12440673945312322021

namespace A064651

/-- `A064650(n)-1` -/
def P12440673945312322021.Spec : Prop :=
  ∀ n, P12440673945312322021.a n = A064651 n

end A064651

/-! ## A064651.P748071770514045674

`round(a(n-2)+a(n-1)/2)` with `a(0)=0, a(1)=1`
-/

namespace A064651.P748071770514045674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℚ) + (a (n - 1) : ℚ) / 2)

end

end A064651.P748071770514045674

namespace A064651

/-- `round(a(n-2)+a(n-1)/2)` -/
def P748071770514045674.Spec : Prop :=
  ∀ n, P748071770514045674.a n = A064651 n

end A064651

/-! ## A064651.P9157829490677087820

`floor(a(n-2)+(a(n-1)+1)/2)` with `a(0)=0, a(1)=1`
-/

namespace A064651.P9157829490677087820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(a (n - 2) : ℚ) + (a (n - 1) + 1 : ℚ) / 2⌋

end

end A064651.P9157829490677087820

namespace A064651

/-- `floor(a(n-2)+(a(n-1)+1)/2)` -/
def P9157829490677087820.Spec : Prop :=
  ∀ n, P9157829490677087820.a n = A064651 n

end A064651

/-! ## A064651.P230850402061470732

`a(n-1)-floor(a(n-1)/2-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A064651.P230850402061470732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - ⌊(a (n - 1) : ℚ) / 2 - (a (n - 2) : ℚ)⌋

end

end A064651.P230850402061470732

namespace A064651

/-- `a(n-1)-floor(a(n-1)/2-a(n-2))` -/
def P230850402061470732.Spec : Prop :=
  ∀ n, P230850402061470732.a n = A064651 n

end A064651

/-! ## A064651.P14172984222630555621

`a(n-2)+(a(n-1)+a(n-1)%2)/2` with `a(0)=0, a(1)=1`
-/

namespace A064651.P14172984222630555621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (a (n - 1) + (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 2 : ℚ)) / 2

end

end A064651.P14172984222630555621

namespace A064651

/-- `a(n-2)+(a(n-1)+a(n-1)%2)/2` -/
def P14172984222630555621.Spec : Prop :=
  ∀ n, P14172984222630555621.a n = (A064651 n : ℚ)

end A064651

/-!
# A064652: Primes q associated with A064632.

The programs for A064652, there is no canonical definition to state claims against.
-/

/-! ## A064652.P17067307540323739914

`ceil(A064632(n+2)/(n+2))`
-/

namespace A064652.P17067307540323739914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A064632 (n + 2) : ℚ) / (n + 2 : ℚ)⌉

end

end A064652.P17067307540323739914

/-! ## A064652.P17278473702359092711

`A034694(floor(A064632(n+2)/(n+2)))`
-/

namespace A064652.P17278473702359092711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 ⌊(A064632 (n + 2) : ℚ) / (n + 2 : ℚ)⌋.toNat

end

end A064652.P17278473702359092711

/-! ## A064652.P6792957328320094518

`A151800(floor(A064632(n+2)/(n+2)))`
-/

namespace A064652.P6792957328320094518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ⌊(A064632 (n + 2) : ℚ) / (n + 2 : ℚ)⌋.toNat

end

end A064652.P6792957328320094518

/-! ## A064652.P2329836231190044773

`(A064632(n+2)+A000027(n+1))/(n+2)`
-/

namespace A064652.P2329836231190044773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064632 (n + 2) + A000027 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A064652.P2329836231190044773

/-! ## A064652.P2834918198381174296

`A322982(A064632(n+2))%A144396(n+1)`
-/

namespace A064652.P2834918198381174296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322982 (A064632 (n + 2)).toNat) (A144396 (n + 1))

end

end A064652.P2834918198381174296

/-! ## A064652.P9453272044517988558

`A163466(A064632(n+2)%(n+1))`
-/

namespace A064652.P9453272044517988558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163466 (Int.tmod (A064632 (n + 2)) (n + 1 : ℤ)).toNat

end

end A064652.P9453272044517988558

/-! ## A064652.P1741068570209637688

`A004273(A064632(n+2))%A004273(n+2)`
-/

namespace A064652.P1741068570209637688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004273 (A064632 (n + 2)).toNat) (A004273 (n + 2))

end

end A064652.P1741068570209637688

/-!
# A064655: Length of n-th run of even numbers in A064413.

The programs for A064655, there is no canonical definition to state claims against.
-/

/-! ## A064655.P8810339891682455166

`A064654(2*(n+1))`
-/

namespace A064655.P8810339891682455166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064654 (2 * (n + 1))

end

end A064655.P8810339891682455166

/-! ## A064655.P15829009681396197068

`A000188(A064654(n+2+n)²)`
-/

namespace A064655.P15829009681396197068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A064654 (n + 2 + n) ^ 2).toNat

end

end A064655.P15829009681396197068

/-! ## A064655.P3857033625000745646

`A001222(2^A064654(n+2+n))`
-/

namespace A064655.P3857033625000745646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A064654 (n + 2 + n) : ℤ))).toNat

end

end A064655.P3857033625000745646

/-! ## A064655.P7357239125541816382

`or(A000038(n), A064654(n+2+n))`
-/

namespace A064655.P7357239125541816382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A064654 (n + 2 + n))

end

end A064655.P7357239125541816382

/-! ## A064655.P8770425099254835506

`∑{d}[A064654(n+2+n), A000010(#)]`
-/

namespace A064655.P8770425099254835506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064654 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A064655.P8770425099254835506

/-! ## A064655.P9056041430162824603

`A064654(n+2+n)%A000041(n+6)`
-/

namespace A064655.P9056041430162824603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064654 (n + 2 + n)) (A000041 (n + 6))

end

end A064655.P9056041430162824603

/-! ## A064655.P6445650558206933225

`A064654(n+2+n)/A007318(C(2, n))`
-/

namespace A064655.P6445650558206933225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064654 (n + 2 + n) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A064655.P6445650558206933225

/-! ## A064655.P4691197732392792216

`A064654(n+2+n)/A000108(C(2, n+2))`
-/

namespace A064655.P4691197732392792216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064654 (n + 2 + n) : ℚ) / (A000108 (Nat.choose 2 (n + 2)) : ℚ)

end

end A064655.P4691197732392792216

/-! ## A064655.P2812123501099870214

`or(and(1, A000010(n+2)), A064654(n+2+n))`
-/

namespace A064655.P2812123501099870214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.land 1 (A000010 (n + 2))) (A064654 (n + 2 + n))

end

end A064655.P2812123501099870214

/-! ## A064655.P11979241604147413871

`A064654(n+2+n)/A054571(A000040(n+1))`
-/

namespace A064655.P11979241604147413871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064654 (n + 2 + n) : ℚ) / (A054571 (A000040 (n + 1)).toNat : ℚ)

end

end A064655.P11979241604147413871

/-! ## A064655.P13072431173992212983

`A064654(record[A213723(n+1)])+A000007(n+1)`
-/

namespace A064655.P13072431173992212983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064654 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A000007 (n + 1)

end

end A064655.P13072431173992212983

/-! ## A064655.P11898490836499568957

`A064654(n+2+n)^A014963(C(n+5, 2))`
-/

namespace A064655.P11898490836499568957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064654 (n + 2 + n) : ℚ) ^ (A014963 (Nat.choose (n + 5) 2) : ℤ)

end

end A064655.P11898490836499568957

/-!
# A064656: Length of n-th run of odd numbers in A064413.

The programs for A064656, there is no canonical definition to state claims against.
-/

/-! ## A064656.P2721419571767024253

`A064654(Δ[n²])`
-/

namespace A064656.P2721419571767024253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064654 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A064656.P2721419571767024253

/-! ## A064656.P15487553587855993558

`dr(A064654(comp[2*n]))`
-/

namespace A064656.P15487553587855993558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A064654 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A064656.P15487553587855993558

/-! ## A064656.P11160937740776782430

`and(7, A064654(2*n+1))`
-/

namespace A064656.P11160937740776782430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A064654 (2 * n + 1))

end

end A064656.P11160937740776782430

/-! ## A064656.P6366732203643255181

`A000027(A064654(2*n+1))`
-/

namespace A064656.P6366732203643255181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A064654 (2 * n + 1)).toNat

end

end A064656.P6366732203643255181

/-! ## A064656.P16984328099934809079

`A001222(2^A064654(2*n+1))`
-/

namespace A064656.P16984328099934809079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A064654 (2 * n + 1) : ℤ))).toNat

end

end A064656.P16984328099934809079

/-! ## A064656.P8674696573691051343

`filter[A064654(2*n+1), A070887(#)]`
-/

namespace A064656.P8674696573691051343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064654 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070887 (f1 j).toNat = 1) n)

end

end A064656.P8674696573691051343

/-! ## A064656.P13240163168037482004

`filter[A064654(2*n+1), A071023(#)]`
-/

namespace A064656.P13240163168037482004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064654 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071023 (f1 j).toNat = 1) n)

end

end A064656.P13240163168037482004

/-! ## A064656.P12372873200977986587

`∑{d}[A064654(2*n+1), A000010(#)]`
-/

namespace A064656.P12372873200977986587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064654 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A064656.P12372873200977986587

/-! ## A064656.P6619819852056849360

`A064654(2*n+1)+A000007(n+1)`
-/

namespace A064656.P6619819852056849360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064654 (2 * n + 1) + A000007 (n + 1)

end

end A064656.P6619819852056849360

/-! ## A064656.P577768771876677423

`A064654(2*n+1)+A000038(n+1)`
-/

namespace A064656.P577768771876677423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064654 (2 * n + 1) + A000038 (n + 1)

end

end A064656.P577768771876677423

/-! ## A064656.P10296077553855918088

`A000034(2*n)*A064654(2*n+1)`
-/

namespace A064656.P10296077553855918088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A064654 (2 * n + 1)

end

end A064656.P10296077553855918088

/-! ## A064656.P223630516558930468

`A064654(2*n+1)+A007814(2*n+1)`
-/

namespace A064656.P223630516558930468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064654 (2 * n + 1) + A007814 (2 * n + 1)

end

end A064656.P223630516558930468

/-! ## A064656.P4167716842763708374

`A064654(2*n+1)+A008683(4*(n+1))`
-/

namespace A064656.P4167716842763708374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064654 (2 * n + 1) + A008683 (4 * (n + 1))

end

end A064656.P4167716842763708374

/-! ## A064656.P13963572146333194882

`gcd(2, A005408(n+1))*A064654(2*n+1)`
-/

namespace A064656.P13963572146333194882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A005408 (n + 1)) : ℤ) * A064654 (2 * n + 1)

end

end A064656.P13963572146333194882

/-! ## A064656.P9188792069332596423

`A007318(or(n, -2)+4)*A064654(2*n+1)`
-/

namespace A064656.P9188792069332596423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.lor (n : ℤ) (-2) + 4).toNat * A064654 (2 * n + 1)

end

end A064656.P9188792069332596423

/-! ## A064656.P11903883575502722352

`A054571(A000040(n+2))*A064654(2*n+1)`
-/

namespace A064656.P11903883575502722352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054571 (A000040 (n + 2)).toNat * A064654 (2 * n + 1)

end

end A064656.P11903883575502722352

/-! ## A064656.P16446136466015701273

`A064654(2*n+1)+C(n, A000108(n+1))`
-/

namespace A064656.P16446136466015701273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064654 (2 * n + 1) + (Nat.choose n (A000108 (n + 1)).toNat : ℤ)

end

end A064656.P16446136466015701273

/-!
# A064658: a(n) = ceiling(prime(n) - n*log(n)).

The programs for A064658, the canonical program `A064658.P3874137061394963063` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064658 has offset 1).

The definition of A064658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064658.P1475795474914818873

`A000040(n+1)-floor((n+1)*log(n+1))`
-/

namespace A064658.P1475795474914818873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - ⌊(n + 1 : ℝ) * Real.log (n + 1 : ℝ)⌋

end

end A064658.P1475795474914818873

namespace A064658

/-- `A000040(n+1)-floor((n+1)*log(n+1))` -/
def P1475795474914818873.Spec : Prop :=
  ∀ n, P1475795474914818873.a n = A064658 (n + 1)

end A064658

/-! ## A064658.P3874137061394963063

`A059111(n+1)+A057427(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064658

/-- `A059111(n+1)+A057427(n)` -/
def P3874137061394963063.Spec : Prop :=
  ∀ n, P3874137061394963063.a n = A064658 (n + 1)

theorem P3874137061394963063.correct : P3874137061394963063.Spec := by
  intro n
  simp only [A064658, Nat.add_sub_cancel]

end A064658

/-! ## A064658.P8772012001440212458

`A059111(n+1)-A057428(n)`
-/

namespace A064658.P8772012001440212458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059111 (n + 1) - A057428 n

end

end A064658.P8772012001440212458

namespace A064658

/-- `A059111(n+1)-A057428(n)` -/
def P8772012001440212458.Spec : Prop :=
  ∀ n, P8772012001440212458.a n = A064658 (n + 1)

end A064658

/-! ## A064658.P12169795556517645981

`abs(A000040(n+1)-A050504(n+1))`
-/

namespace A064658.P12169795556517645981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000040 (n + 1) - A050504 (n + 1)|

end

end A064658.P12169795556517645981

namespace A064658

/-- `abs(A000040(n+1)-A050504(n+1))` -/
def P12169795556517645981.Spec : Prop :=
  ∀ n, P12169795556517645981.a n = A064658 (n + 1)

end A064658

/-! ## A064658.P12424856762273289308

`A059111(n+1)+A000040(n+1)%2`
-/

namespace A064658.P12424856762273289308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059111 (n + 1) + Int.tmod (A000040 (n + 1)) 2

end

end A064658.P12424856762273289308

namespace A064658

/-- `A059111(n+1)+A000040(n+1)%2` -/
def P12424856762273289308.Spec : Prop :=
  ∀ n, P12424856762273289308.a n = A064658 (n + 1)

end A064658

/-! ## A064658.P8987097934638821605

`A250621(n+1)-(A250622(n+1)+A050504(n+1))`
-/

namespace A064658.P8987097934638821605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250621 (n + 1) - (A250622 (n + 1) + A050504 (n + 1))

end

end A064658.P8987097934638821605

namespace A064658

/-- `A250621(n+1)-(A250622(n+1)+A050504(n+1))` -/
def P8987097934638821605.Spec : Prop :=
  ∀ n, P8987097934638821605.a n = A064658 (n + 1)

end A064658

/-! ## A064658.P4904015966142946765

`A059111(n+1)+A025677(Δ[A018252(n+1)]²+1)`
-/

namespace A064658.P4904015966142946765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059111 (n + 1) + A025677 ((f1 (n + 1) - f1 n) ^ 2 + 1).toNat

end

end A064658.P4904015966142946765

namespace A064658

/-- `A059111(n+1)+A025677(Δ[A018252(n+1)]²+1)` -/
def P4904015966142946765.Spec : Prop :=
  ∀ n, P4904015966142946765.a n = A064658 (n + 1)

end A064658

/-! ## A064658.P3885837664428206999

`p?[(n+1)*A001221(n+1)]-A050504(n+1)`
-/

namespace A064658.P3885837664428206999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A050504 (n + 1)

end

end A064658.P3885837664428206999

namespace A064658

/-- `p?[(n+1)*A001221(n+1)]-A050504(n+1)` -/
def P3885837664428206999.Spec : Prop :=
  ∀ n, P3885837664428206999.a n = A064658 (n + 1)

end A064658

/-! ## A064658.P2290694758095160753

`A059111(n+1)+char[A038722(n+1)]`
-/

namespace A064658.P2290694758095160753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059111 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A064658.P2290694758095160753

namespace A064658

/-- `A059111(n+1)+char[A038722(n+1)]` -/
def P2290694758095160753.Spec : Prop :=
  ∀ n, P2290694758095160753.a n = A064658 (n + 1)

end A064658

/-! ## A064658.P13189793463077657671

`A059111(n+1)+and(1, A000043(A000005(n+1)))`
-/

namespace A064658.P13189793463077657671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059111 (n + 1) + Int.land 1 (A000043 (A000005 (n + 1)).toNat)

end

end A064658.P13189793463077657671

namespace A064658

/-- `A059111(n+1)+and(1, A000043(A000005(n+1)))` -/
def P13189793463077657671.Spec : Prop :=
  ∀ n, P13189793463077657671.a n = A064658 (n + 1)

end A064658

/-!
# A064659: a(n) = round(prime(n) - n*log(n)).

The programs for A064659, the canonical program `A064659.P6472487142109502257` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064659 has offset 1).

The definition of A064659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064659.P9136948133668006020

`round(A000040(n+1)-(n+1)*log(n+1))`
-/

namespace A064659.P9136948133668006020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 (n + 1) : ℝ) - (n + 1 : ℝ) * Real.log (n + 1 : ℝ))

end

end A064659.P9136948133668006020

namespace A064659

/-- `round(A000040(n+1)-(n+1)*log(n+1))` -/
def P9136948133668006020.Spec : Prop :=
  ∀ n, P9136948133668006020.a n = A064659 (n + 1)

end A064659

/-! ## A064659.P12012096285450228579

`Δ[A007504(n)]-A050503(n+1)`
-/

namespace A064659.P12012096285450228579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A050503 (n + 1)

end

end A064659.P12012096285450228579

namespace A064659

/-- `Δ[A007504(n)]-A050503(n+1)` -/
def P12012096285450228579.Spec : Prop :=
  ∀ n, P12012096285450228579.a n = A064659 (n + 1)

end A064659

/-! ## A064659.P6472487142109502257

`A000040(n+1)-A050503(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064659

/-- `A000040(n+1)-A050503(n+1)` -/
def P6472487142109502257.Spec : Prop :=
  ∀ n, P6472487142109502257.a n = A064659 (n + 1)

theorem P6472487142109502257.correct : P6472487142109502257.Spec := by
  intro n
  simp only [A064659, Nat.add_sub_cancel]

end A064659

/-! ## A064659.P336126115277909279

`A050502(n+1)+A059111(n+1)-A050503(n+1)`
-/

namespace A064659.P336126115277909279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050502 (n + 1) + (A059111 (n + 1) - A050503 (n + 1))

end

end A064659.P336126115277909279

namespace A064659

/-- `A050502(n+1)+A059111(n+1)-A050503(n+1)` -/
def P336126115277909279.Spec : Prop :=
  ∀ n, P336126115277909279.a n = A064659 (n + 1)

end A064659

/-! ## A064659.P13787363731234970883

`A050504(n+1)+A064658(n+1)-A050503(n+1)`
-/

namespace A064659.P13787363731234970883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1) + (A064658 (n + 1) - A050503 (n + 1))

end

end A064659.P13787363731234970883

namespace A064659

/-- `A050504(n+1)+A064658(n+1)-A050503(n+1)` -/
def P13787363731234970883.Spec : Prop :=
  ∀ n, P13787363731234970883.a n = A064659 (n + 1)

end A064659

/-! ## A064659.P17598813855678437677

`A250621(n+1)-(A250622(n+1)+A050503(n+1))`
-/

namespace A064659.P17598813855678437677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250621 (n + 1) - (A250622 (n + 1) + A050503 (n + 1))

end

end A064659.P17598813855678437677

namespace A064659

/-- `A250621(n+1)-(A250622(n+1)+A050503(n+1))` -/
def P17598813855678437677.Spec : Prop :=
  ∀ n, P17598813855678437677.a n = A064659 (n + 1)

end A064659

/-! ## A064659.P11212948297611385163

`p?[A000961(n+1)]-A050503(n+1)`
-/

namespace A064659.P11212948297611385163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A050503 (n + 1)

end

end A064659.P11212948297611385163

namespace A064659

/-- `p?[A000961(n+1)]-A050503(n+1)` -/
def P11212948297611385163.Spec : Prop :=
  ∀ n, P11212948297611385163.a n = A064659 (n + 1)

end A064659

/-! ## A064659.P5068084084283068185

`record[A020639(n+2)]-A050503(n+1)`
-/

namespace A064659.P5068084084283068185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A050503 (n + 1)

end

end A064659.P5068084084283068185

namespace A064659

/-- `record[A020639(n+2)]-A050503(n+1)` -/
def P5068084084283068185.Spec : Prop :=
  ∀ n, P5068084084283068185.a n = A064659 (n + 1)

end A064659

/-! ## A064659.P7618399697279847843

`p?[A007989(n)]-A050503(n+1)`
-/

namespace A064659.P7618399697279847843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A050503 (n + 1)

end

end A064659.P7618399697279847843

namespace A064659

/-- `p?[A007989(n)]-A050503(n+1)` -/
def P7618399697279847843.Spec : Prop :=
  ∀ n, P7618399697279847843.a n = A064659 (n + 1)

end A064659

/-! ## A064659.P2313661238882769223

`p?[A014681(n)]-A050503(n+1)`
-/

namespace A064659.P2313661238882769223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A050503 (n + 1)

end

end A064659.P2313661238882769223

namespace A064659

/-- `p?[A014681(n)]-A050503(n+1)` -/
def P2313661238882769223.Spec : Prop :=
  ∀ n, P2313661238882769223.a n = A064659 (n + 1)

end A064659

/-! ## A064659.P3644526487458076685

`record[A014963(n+2)]-A050503(n+1)`
-/

namespace A064659.P3644526487458076685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A050503 (n + 1)

end

end A064659.P3644526487458076685

namespace A064659

/-- `record[A014963(n+2)]-A050503(n+1)` -/
def P3644526487458076685.Spec : Prop :=
  ∀ n, P3644526487458076685.a n = A064659 (n + 1)

end A064659

/-! ## A064659.P8595382130338519753

`p?[A090223(n)]-A050503(n+1)`
-/

namespace A064659.P8595382130338519753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A050503 (n + 1)

end

end A064659.P8595382130338519753

namespace A064659

/-- `p?[A090223(n)]-A050503(n+1)` -/
def P8595382130338519753.Spec : Prop :=
  ∀ n, P8595382130338519753.a n = A064659 (n + 1)

end A064659

/-! ## A064659.P3138182883133831260

`p?[A001057(n)]-A050503(n+1)`
-/

namespace A064659.P3138182883133831260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A050503 (n + 1)

end

end A064659.P3138182883133831260

namespace A064659

/-- `p?[A001057(n)]-A050503(n+1)` -/
def P3138182883133831260.Spec : Prop :=
  ∀ n, P3138182883133831260.a n = A064659 (n + 1)

end A064659

/-! ## A064659.P7964090998187463197

`p?[A006370(n)]-A050503(n+1)`
-/

namespace A064659.P7964090998187463197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A050503 (n + 1)

end

end A064659.P7964090998187463197

namespace A064659

/-- `p?[A006370(n)]-A050503(n+1)` -/
def P7964090998187463197.Spec : Prop :=
  ∀ n, P7964090998187463197.a n = A064659 (n + 1)

end A064659

/-!
# A064660: The number of distinct parts in the partition sequence lambda(n) formed by the recurrence lambda(1) = 1 and lambda(n+1) is the sum of lambda(n) and its conjugate.

The programs for A064660, there is no canonical definition to state claims against.
-/

/-! ## A064660.P15573557515448951008

`A122921(A131051(n+1))`
-/

namespace A064660.P15573557515448951008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A131051 (n + 1)).toNat

end

end A064660.P15573557515448951008

/-! ## A064660.P14602104996964259201

`∑[A282537(record[A097576(n)])]`
-/

namespace A064660.P14602104996964259201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097576 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282537 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064660.P14602104996964259201

/-! ## A064660.P9491116402656230080

`A122921(A054135(n+1)-1)`
-/

namespace A064660.P9491116402656230080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A054135 (n + 1) - 1).toNat

end

end A064660.P9491116402656230080

/-! ## A064660.P12059741552233457161

`A121900(A000009(n)*A215348(n+1))`
-/

namespace A064660.P12059741552233457161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A000009 n * A215348 (n + 1)).toNat

end

end A064660.P12059741552233457161

/-!
# A064661: a(n) = n - floor( prime(n)/log(prime(n)) ).

The programs for A064661, the canonical program `A064661.P14190754178858780022` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064661 has offset 1).

The definition of A064661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064661.P8255848010559631601

`A064663(n+1)+1`
-/

namespace A064661.P8255848010559631601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064663 (n + 1) + 1

end

end A064661.P8255848010559631601

namespace A064661

/-- `A064663(n+1)+1` -/
def P8255848010559631601.Spec : Prop :=
  ∀ n, P8255848010559631601.a n = A064661 (n + 1)

end A064661

/-! ## A064661.P14190754178858780022

`1-A086861(n+1)+n`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064661

/-- `1-A086861(n+1)+n` -/
def P14190754178858780022.Spec : Prop :=
  ∀ n, P14190754178858780022.a n = A064661 (n + 1)

theorem P14190754178858780022.correct : P14190754178858780022.Spec := by
  intro n
  simp only [A064661, Nat.add_sub_cancel]

end A064661

/-! ## A064661.P505243343158232025

`A076881(A000040(n+1))`
-/

namespace A064661.P505243343158232025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076881 (A000040 (n + 1)).toNat

end

end A064661.P505243343158232025

namespace A064661

/-- `A076881(A000040(n+1))` -/
def P505243343158232025.Spec : Prop :=
  ∀ n, P505243343158232025.a n = A064661 (n + 1)

end A064661

/-! ## A064661.P14991673232427465256

`A076881(A063884(n+1))`
-/

namespace A064661.P14991673232427465256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076881 (A063884 (n + 1)).toNat

end

end A064661.P14991673232427465256

namespace A064661

/-- `A076881(A063884(n+1))` -/
def P14991673232427465256.Spec : Prop :=
  ∀ n, P14991673232427465256.a n = A064661 (n + 1)

end A064661

/-! ## A064661.P12159705340668095340

`A076881(A008578(n+2))`
-/

namespace A064661.P12159705340668095340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076881 (A008578 (n + 2)).toNat

end

end A064661.P12159705340668095340

namespace A064661

/-- `A076881(A008578(n+2))` -/
def P12159705340668095340.Spec : Prop :=
  ∀ n, P12159705340668095340.a n = A064661 (n + 1)

end A064661

/-! ## A064661.P5750808057877905598

`A076881(A182986(n+2))`
-/

namespace A064661.P5750808057877905598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076881 (A182986 (n + 2)).toNat

end

end A064661.P5750808057877905598

namespace A064661

/-- `A076881(A182986(n+2))` -/
def P5750808057877905598.Spec : Prop :=
  ∀ n, P5750808057877905598.a n = A064661 (n + 1)

end A064661

/-! ## A064661.P2101890519966110252

`n+1-A050500(Δ[A007504(n)])`
-/

namespace A064661.P2101890519966110252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A050500 (f1 (n + 1) - f1 n).toNat

end

end A064661.P2101890519966110252

namespace A064661

/-- `n+1-A050500(Δ[A007504(n)])` -/
def P2101890519966110252.Spec : Prop :=
  ∀ n, P2101890519966110252.a n = A064661 (n + 1)

end A064661

/-! ## A064661.P4445337112068578338

`1-A050500(A008864(n+1)-1)+n`
-/

namespace A064661.P4445337112068578338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A050500 (A008864 (n + 1) - 1).toNat + (n : ℤ)

end

end A064661.P4445337112068578338

namespace A064661

/-- `1-A050500(A008864(n+1)-1)+n` -/
def P4445337112068578338.Spec : Prop :=
  ∀ n, P4445337112068578338.a n = A064661 (n + 1)

end A064661

/-! ## A064661.P16340957438069877907

`1-A050500(A040976(n+1)+2)+n`
-/

namespace A064661.P16340957438069877907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A050500 (A040976 (n + 1) + 2).toNat + (n : ℤ)

end

end A064661.P16340957438069877907

namespace A064661

/-- `1-A050500(A040976(n+1)+2)+n` -/
def P16340957438069877907.Spec : Prop :=
  ∀ n, P16340957438069877907.a n = A064661 (n + 1)

end A064661

/-! ## A064661.P15922280660094197673

`n+1-A050500(p?[A000523(n+1)+n])`
-/

namespace A064661.P15922280660094197673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A050500 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A064661.P15922280660094197673

namespace A064661

/-- `n+1-A050500(p?[A000523(n+1)+n])` -/
def P15922280660094197673.Spec : Prop :=
  ∀ n, P15922280660094197673.a n = A064661 (n + 1)

end A064661

/-! ## A064661.P5927471479017344705

`n+1-A050500(A064989(p?[2*n+1]))`
-/

namespace A064661.P5927471479017344705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A050500 (A064989 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A064661.P5927471479017344705

namespace A064661

/-- `n+1-A050500(A064989(p?[2*n+1]))` -/
def P5927471479017344705.Spec : Prop :=
  ∀ n, P5927471479017344705.a n = A064661 (n + 1)

end A064661

/-! ## A064661.P2704936657232255141

`n+1-A050500(p?[A001057(n)])`
-/

namespace A064661.P2704936657232255141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A050500 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A064661.P2704936657232255141

namespace A064661

/-- `n+1-A050500(p?[A001057(n)])` -/
def P2704936657232255141.Spec : Prop :=
  ∀ n, P2704936657232255141.a n = A064661 (n + 1)

end A064661

/-! ## A064661.P11876799350766953968

`n+1-A050500(p?[A131732(n)])`
-/

namespace A064661.P11876799350766953968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A050500 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A064661.P11876799350766953968

namespace A064661

/-- `n+1-A050500(p?[A131732(n)])` -/
def P11876799350766953968.Spec : Prop :=
  ∀ n, P11876799350766953968.a n = A064661 (n + 1)

end A064661

/-!
# A064662: a(n) = n - round( prime(n)/log(prime(n)) ).

The programs for A064662, the canonical program `A064662.P4952533135120078315` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064662 has offset 1).

The definition of A064662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064662.P4952533135120078315

`1-A002036(n+1)+n`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064662

/-- `1-A002036(n+1)+n` -/
def P4952533135120078315.Spec : Prop :=
  ∀ n, P4952533135120078315.a n = A064662 (n + 1)

theorem P4952533135120078315.correct : P4952533135120078315.Spec := by
  intro n
  simp only [A064662, Nat.add_sub_cancel]

end A064662

/-! ## A064662.P13590650299769214448

`-A053622(Δ[A007504(n)])`
-/

namespace A064662.P13590650299769214448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A053622 (f1 (n + 1) - f1 n).toNat

end

end A064662.P13590650299769214448

namespace A064662

/-- `-A053622(Δ[A007504(n)])` -/
def P13590650299769214448.Spec : Prop :=
  ∀ n, P13590650299769214448.a n = A064662 (n + 1)

end A064662

/-! ## A064662.P14719772136171813210

`-A053622(A000040(n+1))`
-/

namespace A064662.P14719772136171813210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A053622 (A000040 (n + 1)).toNat

end

end A064662.P14719772136171813210

namespace A064662

/-- `-A053622(A000040(n+1))` -/
def P14719772136171813210.Spec : Prop :=
  ∀ n, P14719772136171813210.a n = A064662 (n + 1)

end A064662

/-! ## A064662.P17330025954674233885

`n+1-A050499(Δ[A007504(n)])`
-/

namespace A064662.P17330025954674233885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A050499 (f1 (n + 1) - f1 n).toNat

end

end A064662.P17330025954674233885

namespace A064662

/-- `n+1-A050499(Δ[A007504(n)])` -/
def P17330025954674233885.Spec : Prop :=
  ∀ n, P17330025954674233885.a n = A064662 (n + 1)

end A064662

/-! ## A064662.P76099196537604680

`1-A050499(A040976(n+1)+2)+n`
-/

namespace A064662.P76099196537604680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A050499 (A040976 (n + 1) + 2).toNat + (n : ℤ)

end

end A064662.P76099196537604680

namespace A064662

/-- `1-A050499(A040976(n+1)+2)+n` -/
def P76099196537604680.Spec : Prop :=
  ∀ n, P76099196537604680.a n = A064662 (n + 1)

end A064662

/-! ## A064662.P3249931373662235755

`n-A233583(A002036(n+1))`
-/

namespace A064662.P3249931373662235755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A233583 (A002036 (n + 1)).toNat

end

end A064662.P3249931373662235755

namespace A064662

/-- `n-A233583(A002036(n+1))` -/
def P3249931373662235755.Spec : Prop :=
  ∀ n, P3249931373662235755.a n = A064662 (n + 1)

end A064662

/-!
# A064663: a(n) = n - ceiling( prime(n)/log(prime(n)) ).

The programs for A064663, the canonical program `A064663.P444664997799943001` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064663 has offset 1).

The definition of A064663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064663.P444664997799943001

`A064661(n+1)-1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A064663

/-- `A064661(n+1)-1` -/
def P444664997799943001.Spec : Prop :=
  ∀ n, P444664997799943001.a n = A064663 (n + 1)

theorem P444664997799943001.correct : P444664997799943001.Spec := by
  intro n
  simp only [A064663, Nat.add_sub_cancel]

end A064663

/-! ## A064663.P2676822220307771631

`n-A086861(n+1)`
-/

namespace A064663.P2676822220307771631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A086861 (n + 1)

end

end A064663.P2676822220307771631

namespace A064663

/-- `n-A086861(n+1)` -/
def P2676822220307771631.Spec : Prop :=
  ∀ n, P2676822220307771631.a n = A064663 (n + 1)

end A064663

/-! ## A064663.P8848442316779679830

`A076882(A000040(n+1))`
-/

namespace A064663.P8848442316779679830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076882 (A000040 (n + 1)).toNat

end

end A064663.P8848442316779679830

namespace A064663

/-- `A076882(A000040(n+1))` -/
def P8848442316779679830.Spec : Prop :=
  ∀ n, P8848442316779679830.a n = A064663 (n + 1)

end A064663

/-! ## A064663.P739060445682286040

`A076882(A063884(n+1))`
-/

namespace A064663.P739060445682286040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076882 (A063884 (n + 1)).toNat

end

end A064663.P739060445682286040

namespace A064663

/-- `A076882(A063884(n+1))` -/
def P739060445682286040.Spec : Prop :=
  ∀ n, P739060445682286040.a n = A064663 (n + 1)

end A064663

/-! ## A064663.P4842528420791150821

`A076882(A008578(n+2))`
-/

namespace A064663.P4842528420791150821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076882 (A008578 (n + 2)).toNat

end

end A064663.P4842528420791150821

namespace A064663

/-- `A076882(A008578(n+2))` -/
def P4842528420791150821.Spec : Prop :=
  ∀ n, P4842528420791150821.a n = A064663 (n + 1)

end A064663

/-! ## A064663.P9620911140051549894

`A076882(A182986(n+2))`
-/

namespace A064663.P9620911140051549894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076882 (A182986 (n + 2)).toNat

end

end A064663.P9620911140051549894

namespace A064663

/-- `A076882(A182986(n+2))` -/
def P9620911140051549894.Spec : Prop :=
  ∀ n, P9620911140051549894.a n = A064663 (n + 1)

end A064663

/-! ## A064663.P8390961357511533797

`n-A050500(Δ[A007504(n)])`
-/

namespace A064663.P8390961357511533797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A050500 (f1 (n + 1) - f1 n).toNat

end

end A064663.P8390961357511533797

namespace A064663

/-- `n-A050500(Δ[A007504(n)])` -/
def P8390961357511533797.Spec : Prop :=
  ∀ n, P8390961357511533797.a n = A064663 (n + 1)

end A064663

/-! ## A064663.P1287591174772225972

`n-A050500(p?[A004442(n)])`
-/

namespace A064663.P1287591174772225972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A050500 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A064663.P1287591174772225972

namespace A064663

/-- `n-A050500(p?[A004442(n)])` -/
def P1287591174772225972.Spec : Prop :=
  ∀ n, P1287591174772225972.a n = A064663 (n + 1)

end A064663

/-! ## A064663.P5856514099019305613

`n-A050500(p?[A006369(n)])`
-/

namespace A064663.P5856514099019305613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A050500 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A064663.P5856514099019305613

namespace A064663

/-- `n-A050500(p?[A006369(n)])` -/
def P5856514099019305613.Spec : Prop :=
  ∀ n, P5856514099019305613.a n = A064663 (n + 1)

end A064663

/-! ## A064663.P16400169823737554723

`n-A050500(p?[A014681(n)])`
-/

namespace A064663.P16400169823737554723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A050500 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A064663.P16400169823737554723

namespace A064663

/-- `n-A050500(p?[A014681(n)])` -/
def P16400169823737554723.Spec : Prop :=
  ∀ n, P16400169823737554723.a n = A064663 (n + 1)

end A064663

/-! ## A064663.P15656195714371853940

`n-A050500(p?[A143051(n)])`
-/

namespace A064663.P15656195714371853940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A050500 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A064663.P15656195714371853940

namespace A064663

/-- `n-A050500(p?[A143051(n)])` -/
def P15656195714371853940.Spec : Prop :=
  ∀ n, P15656195714371853940.a n = A064663 (n + 1)

end A064663

/-! ## A064663.P10367234317173184392

`n-A050500(A175787(n+2))`
-/

namespace A064663.P10367234317173184392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A050500 (A175787 (n + 2)).toNat

end

end A064663.P10367234317173184392

namespace A064663

/-- `n-A050500(A175787(n+2))` -/
def P10367234317173184392.Spec : Prop :=
  ∀ n, P10367234317173184392.a n = A064663 (n + 1)

end A064663

/-! ## A064663.P15537128766747472060

`n-A050500(eq[1, A003415(n)])`
-/

namespace A064663.P15537128766747472060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A050500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064663.P15537128766747472060

namespace A064663

/-- `n-A050500(eq[1, A003415(n)])` -/
def P15537128766747472060.Spec : Prop :=
  ∀ n, P15537128766747472060.a n = A064663 (n + 1)

end A064663

/-! ## A064663.P9100833564917922886

`n-A050500(record[A006530(n+2)])`
-/

namespace A064663.P9100833564917922886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A050500 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064663.P9100833564917922886

namespace A064663

/-- `n-A050500(record[A006530(n+2)])` -/
def P9100833564917922886.Spec : Prop :=
  ∀ n, P9100833564917922886.a n = A064663 (n + 1)

end A064663

/-! ## A064663.P16731535868067066807

`n-A050500(record[A014963(n+2)])`
-/

namespace A064663.P16731535868067066807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A050500 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064663.P16731535868067066807

namespace A064663

/-- `n-A050500(record[A014963(n+2)])` -/
def P16731535868067066807.Spec : Prop :=
  ∀ n, P16731535868067066807.a n = A064663 (n + 1)

end A064663

/-! ## A064663.P4035754907445829469

`n-A050500(record[A020639(n+2)])`
-/

namespace A064663.P4035754907445829469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A050500 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064663.P4035754907445829469

namespace A064663

/-- `n-A050500(record[A020639(n+2)])` -/
def P4035754907445829469.Spec : Prop :=
  ∀ n, P4035754907445829469.a n = A064663 (n + 1)

end A064663

/-! ## A064663.P75171303022744842

`n-A050500(A008864(n+1)-1)`
-/

namespace A064663.P75171303022744842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A050500 (A008864 (n + 1) - 1).toNat

end

end A064663.P75171303022744842

namespace A064663

/-- `n-A050500(A008864(n+1)-1)` -/
def P75171303022744842.Spec : Prop :=
  ∀ n, P75171303022744842.a n = A064663 (n + 1)

end A064663

/-! ## A064663.P5431072061503009264

`n-A050500(A040976(n+1)+2)`
-/

namespace A064663.P5431072061503009264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A050500 (A040976 (n + 1) + 2).toNat

end

end A064663.P5431072061503009264

namespace A064663

/-- `n-A050500(A040976(n+1)+2)` -/
def P5431072061503009264.Spec : Prop :=
  ∀ n, P5431072061503009264.a n = A064663 (n + 1)

end A064663

/-! ## A064663.P12311689595712592409

`n-A050500(p?[A000523(n+1)+n])`
-/

namespace A064663.P12311689595712592409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A050500 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A064663.P12311689595712592409

namespace A064663

/-- `n-A050500(p?[A000523(n+1)+n])` -/
def P12311689595712592409.Spec : Prop :=
  ∀ n, P12311689595712592409.a n = A064663 (n + 1)

end A064663

/-! ## A064663.P1730152658219176658

`n-A050500(A064989(p?[2*n+1]))`
-/

namespace A064663.P1730152658219176658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A050500 (A064989 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A064663.P1730152658219176658

namespace A064663

/-- `n-A050500(A064989(p?[2*n+1]))` -/
def P1730152658219176658.Spec : Prop :=
  ∀ n, P1730152658219176658.a n = A064663 (n + 1)

end A064663

/-!
# A064664: Regard A064413 as giving a permutation of the positive integers; sequence gives inverse permutation.

The programs for A064664, there is no canonical definition to state claims against.
-/

/-! ## A064664.P15782678891162498773

`A064421(n+1)+1`
-/

namespace A064664.P15782678891162498773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064421 (n + 1) + 1

end

end A064664.P15782678891162498773

/-! ## A064664.P736858079586057434

`∑{d}[n+1, A304526(#)]`
-/

namespace A064664.P736858079586057434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A304526 d

end

end A064664.P736858079586057434

/-! ## A064664.P16102514716809983609

`∑{d}[n+1, #*A349617((n+1)/#)]`
-/

namespace A064664.P16102514716809983609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349617 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064664.P16102514716809983609

/-! ## A064664.P14092817772195496661

`A255482(n+1)+A255479(n+1)`
-/

namespace A064664.P14092817772195496661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255482 (n + 1) + A255479 (n + 1)

end

end A064664.P14092817772195496661

/-! ## A064664.P3495317704840549497

`A304527(n+1)+A304526(n+1)`
-/

namespace A064664.P3495317704840549497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304527 (n + 1) + A304526 (n + 1)

end

end A064664.P3495317704840549497

/-! ## A064664.P6747533216385179869

`A323412(n+1)-A323411(n+1)`
-/

namespace A064664.P6747533216385179869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323412 (n + 1) - A323411 (n + 1)

end

end A064664.P6747533216385179869

/-! ## A064664.P6355244429641910624

`∑{d}[n+1, A064413(#)*A349614((n+1)/#)]`
-/

namespace A064664.P6355244429641910624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064413 d * A349614 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064664.P6355244429641910624

/-! ## A064664.P18008396587037148835

`A064421(A304753(n+2))`
-/

namespace A064664.P18008396587037148835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064421 (A304753 (n + 2)).toNat

end

end A064664.P18008396587037148835

/-! ## A064664.P5907421618004099262

`A347348(A064413(A347348(n+1)))`
-/

namespace A064664.P5907421618004099262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347348 (A064413 (A347348 (n + 1)).toNat).toNat

end

end A064664.P5907421618004099262

/-! ## A064664.P9539353733607243613

`A112990(A089088(A064421(A112990(A089088(n)))))`
-/

namespace A064664.P9539353733607243613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112990 (A089088 (A064421 (A112990 (A089088 n).toNat).toNat).toNat).toNat

end

end A064664.P9539353733607243613

/-!
# A064665: Regard A064413 as giving a permutation of the positive integers; sequence gives first infinite cycle, beginning at its smallest term, 7.

The programs for A064665, there is no canonical definition to state claims against.
-/

/-! ## A064665.P8528302643003422664

`A064413(a(n-1))` with `a(0)=7`
-/

namespace A064665.P8528302643003422664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A064413 (a (n - 1)).toNat

end

end A064665.P8528302643003422664

/-! ## A064665.P14132095594917934248

`sqrt(A104125(a(n-1)))` with `a(0)=7`
-/

namespace A064665.P14132095594917934248
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [7] fun n a =>
  Real.sqrt (A104125 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ)

end

end A064665.P14132095594917934248

/-! ## A064665.P4523687841003677900

`A169839(a(n-1)-1)` with `a(0)=7`
-/

namespace A064665.P4523687841003677900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A169839 (a (n - 1) - 1).toNat

end

end A064665.P4523687841003677900

/-! ## A064665.P2620703328953341368

`A064413(abs(a(A023443(n))))` with `a(0)=7`
-/

namespace A064665.P2620703328953341368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A064413 |a (A023443 n).toNat|.toNat

end

end A064665.P2620703328953341368

/-! ## A064665.P9042628803766750804

`A064413(a(A023443(n)))+A000007(n)` with `a(0)=7`
-/

namespace A064665.P9042628803766750804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A064413 (a (A023443 n).toNat).toNat + A000007 n

end

end A064665.P9042628803766750804

/-! ## A064665.P11423576000701669675

`A185586(A185413(a(n-1)))` with `a(0)=7`
-/

namespace A064665.P11423576000701669675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A185586 (A185413 (a (n - 1)).toNat).toNat

end

end A064665.P11423576000701669675

/-!
# A064666: Regard A064413 as giving a permutation of the positive integers; sequence gives first infinite cycle, reading backwards beginning at its smallest term, 7.

The programs for A064666, there is no canonical definition to state claims against.
-/

/-! ## A064666.P8436677628927733806

`A064421(a(n-1))+1` with `a(0)=7`
-/

namespace A064666.P8436677628927733806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A064421 (a (n - 1)).toNat + 1

end

end A064666.P8436677628927733806

/-! ## A064666.P10233868209098407134

`A064664(a(n-1))` with `a(0)=7`
-/

namespace A064666.P10233868209098407134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A064664 (a (n - 1)).toNat

end

end A064666.P10233868209098407134

/-! ## A064666.P17824118617040997283

`A169840(a(n-1))+1` with `a(0)=7`
-/

namespace A064666.P17824118617040997283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A169840 (a (n - 1)).toNat + 1

end

end A064666.P17824118617040997283

/-! ## A064666.P15565036739551150705

`A169848(a(n-1))+1` with `a(0)=7`
-/

namespace A064666.P15565036739551150705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A169848 (a (n - 1)).toNat + 1

end

end A064666.P15565036739551150705

/-! ## A064666.P5938117566058746204

`A064664(floor(a(A023443(n))))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A064666.P5938117566058746204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A064664 (a (A023443 n).toNat).toNat

end

end A064666.P5938117566058746204

/-!
# A064667: Regard A064413 as giving a permutation of the positive integers; sequence gives second infinite cycle, beginning at its smallest term, 73.

The programs for A064667, there is no canonical definition to state claims against.
-/

/-! ## A064667.P6204322466168708440

`A064413(a(n-1))` with `a(0)=73`
-/

namespace A064667.P6204322466168708440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [73] fun n a =>
  A064413 (a (n - 1)).toNat

end

end A064667.P6204322466168708440

/-! ## A064667.P14449627104028823038

`sqrt(A104125(a(n-1)))` with `a(0)=73`
-/

namespace A064667.P14449627104028823038
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [73] fun n a =>
  Real.sqrt (A104125 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ)

end

end A064667.P14449627104028823038

/-! ## A064667.P2749007623096387495

`A169839(a(n-1)-1)` with `a(0)=73`
-/

namespace A064667.P2749007623096387495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [73] fun n a =>
  A169839 (a (n - 1) - 1).toNat

end

end A064667.P2749007623096387495

/-! ## A064667.P14170826132590967572

`A169843(a(n-1)-1)` with `a(0)=73`
-/

namespace A064667.P14170826132590967572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [73] fun n a =>
  A169843 (a (n - 1) - 1).toNat

end

end A064667.P14170826132590967572

/-! ## A064667.P1634230269104017738

`A064413(abs(a(A023443(n))))` with `a(0)=73`
-/

namespace A064667.P1634230269104017738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [73] fun n a =>
  A064413 |a (A023443 n).toNat|.toNat

end

end A064667.P1634230269104017738

/-!
# A064668: Regard A064413 as giving a permutation of the positive integers; sequence gives second infinite cycle, reading backwards beginning at its smallest term, 73.

The programs for A064668, there is no canonical definition to state claims against.
-/

/-! ## A064668.P1653263516047786468

`A064421(a(n-1))+1` with `a(0)=73`
-/

namespace A064668.P1653263516047786468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [73] fun n a =>
  A064421 (a (n - 1)).toNat + 1

end

end A064668.P1653263516047786468

/-! ## A064668.P3025193068694080822

`A064664(a(n-1))` with `a(0)=73`
-/

namespace A064668.P3025193068694080822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [73] fun n a =>
  A064664 (a (n - 1)).toNat

end

end A064668.P3025193068694080822

/-! ## A064668.P8457823541164117810

`A064664(floor(a(A023443(n))))` with `a(0)=73`

`floor` is left out, it is the identity on integers.
-/

namespace A064668.P8457823541164117810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [73] fun n a =>
  A064664 (a (A023443 n).toNat).toNat

end

end A064668.P8457823541164117810

/-!
# A064670: Triangle T(n,k) (1 <= k <= n) where the first column (T(n,1)) is the sequence of secant numbers A000364.

The programs for A064670, there is no canonical definition to state claims against.
-/

/-! ## A064670.P6294794018354747296

`A166350(n+1)²*A060074(n)`
-/

namespace A064670.P6294794018354747296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (n + 1) ^ 2 * A060074 n

end

end A064670.P6294794018354747296

/-! ## A064670.P10757152200951910731

`A000290(A166350(n+1))*A060074(A028310(n))`
-/

namespace A064670.P10757152200951910731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A166350 (n + 1)).toNat * A060074 (A028310 n).toNat

end

end A064670.P10757152200951910731

/-! ## A064670.P17875378397083238706

`A000290(A060074(n)*A166350(n+1))/A060074(n)`
-/

namespace A064670.P17875378397083238706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (A060074 n * A166350 (n + 1)).toNat : ℚ) / (A060074 n : ℚ)

end

end A064670.P17875378397083238706

/-! ## A064670.P11800095601652197560

`A028310(A060074(n)*A166350(n+1))*A166350(n+1)`
-/

namespace A064670.P11800095601652197560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A060074 n * A166350 (n + 1)).toNat * A166350 (n + 1)

end

end A064670.P11800095601652197560

/-!
# A064671: Number of n-digit base 4 biquanimous numbers (with leading 0's allowed, but not all-0 string).

The programs for A064671, the canonical program `A064671.P4508910619740119428` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064671 has offset 1).

The definition of A064671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064671.P4508910619740119428

`2^n*∑[2^n-1]+n`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064671

/-- `2^n*∑[2^n-1]+n` -/
def P4508910619740119428.Spec : Prop :=
  ∀ n, P4508910619740119428.a n = A064671 (n + 1)

theorem P4508910619740119428.correct : P4508910619740119428.Spec := by
  intro n
  simp only [A064671, Nat.add_sub_cancel]

end A064671

/-! ## A064671.P15173728911015776880

`(xor(n, 2*(2^n-1)+1)+1)*(2^n-1)`
-/

namespace A064671.P15173728911015776880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor (n : ℤ) (2 * ((2 ^ n : ℤ) - 1) + 1) + 1) * ((2 ^ n : ℤ) - 1)

end

end A064671.P15173728911015776880

namespace A064671

/-- `(xor(n, 2*(2^n-1)+1)+1)*(2^n-1)` -/
def P15173728911015776880.Spec : Prop :=
  ∀ n, P15173728911015776880.a n = A064671 (n + 1)

end A064671

/-! ## A064671.P3996827815881215402

`∑[abs(Δ[A288687(n)])]`
-/

namespace A064671.P3996827815881215402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288687 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064671.P3996827815881215402

namespace A064671

/-- `∑[abs(Δ[A288687(n)])]` -/
def P3996827815881215402.Spec : Prop :=
  ∀ n, P3996827815881215402.a n = A064671 (n + 1)

end A064671

/-! ## A064671.P1084552237868332125

`(2^n-1)*A132045(n+1)`
-/

namespace A064671.P1084552237868332125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 1) * A132045 (n + 1)

end

end A064671.P1084552237868332125

namespace A064671

/-- `(2^n-1)*A132045(n+1)` -/
def P1084552237868332125.Spec : Prop :=
  ∀ n, P1084552237868332125.a n = A064671 (n + 1)

end A064671

/-! ## A064671.P4527527898860973975

`(2^(n+1)-n)*A000225(n)`
-/

namespace A064671.P4527527898860973975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - (n : ℤ)) * A000225 n

end

end A064671.P4527527898860973975

namespace A064671

/-- `(2^(n+1)-n)*A000225(n)` -/
def P4527527898860973975.Spec : Prop :=
  ∀ n, P4527527898860973975.a n = A064671 (n + 1)

end A064671

/-! ## A064671.P12578529280939208459

`xor(2*4^n-1, A221882(n+1))`
-/

namespace A064671.P12578529280939208459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 * 4 ^ n : ℤ) - 1) (A221882 (n + 1))

end

end A064671.P12578529280939208459

namespace A064671

/-- `xor(2*4^n-1, A221882(n+1))` -/
def P12578529280939208459.Spec : Prop :=
  ∀ n, P12578529280939208459.a n = A064671 (n + 1)

end A064671

/-! ## A064671.P12243773517781768001

`(abs(A123344(n+2))-n)*(2^n-1)`
-/

namespace A064671.P12243773517781768001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|A123344 (n + 2)| - (n : ℤ)) * ((2 ^ n : ℤ) - 1)

end

end A064671.P12243773517781768001

namespace A064671

/-- `(abs(A123344(n+2))-n)*(2^n-1)` -/
def P12243773517781768001.Spec : Prop :=
  ∀ n, P12243773517781768001.a n = A064671 (n + 1)

end A064671

/-! ## A064671.P12591628567234583240

`xor((n+2)*(2^n-1)+1, A083420(n))`
-/

namespace A064671.P12591628567234583240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 2 : ℤ) * ((2 ^ n : ℤ) - 1) + 1) (A083420 n)

end

end A064671.P12591628567234583240

namespace A064671

/-- `xor((n+2)*(2^n-1)+1, A083420(n))` -/
def P12591628567234583240.Spec : Prop :=
  ∀ n, P12591628567234583240.a n = A064671 (n + 1)

end A064671

/-! ## A064671.P5270122553381604691

`∑[A033999(n)²*Δ[A288687(n)]]`
-/

namespace A064671.P5270122553381604691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288687 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064671.P5270122553381604691

namespace A064671

/-- `∑[A033999(n)²*Δ[A288687(n)]]` -/
def P5270122553381604691.Spec : Prop :=
  ∀ n, P5270122553381604691.a n = A064671 (n + 1)

end A064671

/-! ## A064671.P7445581316270272066

`(A000079(n+1)-n)*A106624(2*n+1)`
-/

namespace A064671.P7445581316270272066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) - (n : ℤ)) * A106624 (2 * n + 1)

end

end A064671.P7445581316270272066

namespace A064671

/-- `(A000079(n+1)-n)*A106624(2*n+1)` -/
def P7445581316270272066.Spec : Prop :=
  ∀ n, P7445581316270272066.a n = A064671 (n + 1)

end A064671

/-! ## A064671.P14848118098629974864

`(A135530(2*n)-n)*A278756(2*n+1)`
-/

namespace A064671.P14848118098629974864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135530 (2 * n) - (n : ℤ)) * A278756 (2 * n + 1)

end

end A064671.P14848118098629974864

namespace A064671

/-- `(A135530(2*n)-n)*A278756(2*n+1)` -/
def P14848118098629974864.Spec : Prop :=
  ∀ n, P14848118098629974864.a n = A064671 (n + 1)

end A064671

/-! ## A064671.P11468778998350647779

`(A060546(2*(n+1))-n)*A106624(2*n+1)`
-/

namespace A064671.P11468778998350647779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060546 (2 * (n + 1)) - (n : ℤ)) * A106624 (2 * n + 1)

end

end A064671.P11468778998350647779

namespace A064671

/-- `(A060546(2*(n+1))-n)*A106624(2*n+1)` -/
def P11468778998350647779.Spec : Prop :=
  ∀ n, P11468778998350647779.a n = A064671 (n + 1)

end A064671

/-! ## A064671.P1044343288974168821

`(A164090(2*n+1)-n)*A056508(2*n+1)`
-/

namespace A064671.P1044343288974168821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A164090 (2 * n + 1) - (n : ℤ)) * A056508 (2 * n + 1)

end

end A064671.P1044343288974168821

namespace A064671

/-- `(A164090(2*n+1)-n)*A056508(2*n+1)` -/
def P1044343288974168821.Spec : Prop :=
  ∀ n, P1044343288974168821.a n = A064671 (n + 1)

end A064671

/-! ## A064671.P11594680399635203476

`A376585(n+1)/A000302(n)*A020522(n)`
-/

namespace A064671.P11594680399635203476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376585 (n + 1) : ℚ) / (A000302 n : ℚ) * (A020522 n : ℚ)

end

end A064671.P11594680399635203476

namespace A064671

/-- `A376585(n+1)/A000302(n)*A020522(n)` -/
def P11594680399635203476.Spec : Prop :=
  ∀ n, P11594680399635203476.a n = (A064671 (n + 1) : ℚ)

end A064671

/-! ## A064671.P8608104462273040594

`(A105811(n+1)-A225883(n+1))*A225883(n)`
-/

namespace A064671.P8608104462273040594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A105811 (n + 1) - A225883 (n + 1)) * A225883 n

end

end A064671.P8608104462273040594

namespace A064671

/-- `(A105811(n+1)-A225883(n+1))*A225883(n)` -/
def P8608104462273040594.Spec : Prop :=
  ∀ n, P8608104462273040594.a n = A064671 (n + 1)

end A064671

/-!
# A064672: a(0) = 0, a(1) = 1; for a(n), n >= 2, write n = x^2 + y with y >= 0 as small as possible, then a(n) = a(x) + a(y).

The programs for A064672, the canonical program `A064672.P17491893063506251228` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064672 has offset 0).

The definition of A064672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064672.P17491893063506251228

`a(floor(sqrt(n)))+a(n-floor(sqrt(n))²)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064672

/-- `a(floor(sqrt(n)))+a(n-floor(sqrt(n))²)` -/
def P17491893063506251228.Spec : Prop :=
  ∀ n, (P17491893063506251228.a n : ℤ) = A064672 n

theorem P17491893063506251228.correct : P17491893063506251228.Spec := by
  intro n
  simp only [A064672]

end A064672

/-! ## A064672.P17663861737974578400

`A001222(5^A138554(n))-A064877(A000196(n))`
-/

namespace A064672.P17663861737974578400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A138554 n : ℤ))).toNat - A064877 (A000196 n).toNat

end

end A064672.P17663861737974578400

namespace A064672

/-- `A001222(5^A138554(n))-A064877(A000196(n))` -/
def P17663861737974578400.Spec : Prop :=
  ∀ n, P17663861737974578400.a n = A064672 n

end A064672

/-!
# A064673: Where the least prime p such that n = (p-1)/(q-1) and p > q is not the least prime == 1 (mod n) (A034694).

The programs for A064673, there is no canonical definition to state claims against.
-/

/-! ## A064673.P4201812972016008051

`lt[1, A034693(A034693(n+1))]+1`
-/

namespace A064673.P4201812972016008051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A034693 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A064673.P4201812972016008051

/-! ## A064673.P2414930625159207695

`eq[0, A010051(A034693(n+1)+1)]+1`
-/

namespace A064673.P2414930625159207695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A034693 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064673.P2414930625159207695

/-! ## A064673.P18276249561663527605

`eq[1, A005171(A034693(n+1)+1)]+1`
-/

namespace A064673.P18276249561663527605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A034693 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064673.P18276249561663527605

/-! ## A064673.P13431160896626147524

`lt[1, A122810(ceil(A034694(n+1)/(n+3))+1)]+1`
-/

namespace A064673.P13431160896626147524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122810 (⌈(A034694 (n + 1) : ℚ) / (n + 3 : ℚ)⌉ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A064673.P13431160896626147524

/-! ## A064673.P9986404367087344288

`eq[A011602(n²), A339964(A034693(n+1)+1)]+1`
-/

namespace A064673.P9986404367087344288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339964 (A034693 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064673.P9986404367087344288

/-!
# A064674: Number of primes q such that phiter(q)=n where phiter(n)=A064415(n).

The programs for A064674, there is no canonical definition to state claims against.
-/

/-! ## A064674.P4274014942974373649

`A339186(A119021(n))`
-/

namespace A064674.P4274014942974373649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339186 (A119021 n).toNat

end

end A064674.P4274014942974373649

/-! ## A064674.P9284803400205304984

`A000196(A119021(n)-floor(1/(γ-n)))`
-/

namespace A064674.P9284803400205304984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A119021 n - ⌊1 / (Real.eulerMascheroniConstant - (n : ℝ))⌋).toNat

end

end A064674.P9284803400205304984

/-! ## A064674.P9229001329717653381

`A130855(A272485(n+1)-A113874(n))`
-/

namespace A064674.P9229001329717653381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130855 (A272485 (n + 1) - A113874 n).toNat

end

end A064674.P9229001329717653381

/-! ## A064674.P13962447326884729693

`A000720(or(A032559(n+1), A086588(n)))`
-/

namespace A064674.P13962447326884729693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.lor (A032559 (n + 1)) (A086588 n)).toNat

end

end A064674.P13962447326884729693

/-! ## A064674.P4993071186563661072

`A230980(or(A032559(n+1), A105635(n)))`
-/

namespace A064674.P4993071186563661072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Int.lor (A032559 (n + 1)) (A105635 n)).toNat

end

end A064674.P4993071186563661072

/-!
# A064675: Numbers k such that sopfr(k) = sopf(k+1), where sopf(k) = A008472(k) and sopfr(k) = A001414(k).

The programs for A064675, there is no canonical definition to state claims against.
-/

/-! ## A064675.P7944011736375997869

`eq[A001414(A233583(n+1)), A105221(n+1)]`
-/

namespace A064675.P7944011736375997869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064675.P7944011736375997869

/-!
# A064676: A Beatty sequence for 10*i^i.

The programs for A064676, there is no canonical definition to state claims against.
-/

/-! ## A064676.P11500719738314682963

`∑[p?[A387136(n+1)]]`
-/

namespace A064676.P11500719738314682963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387136 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064676.P11500719738314682963

/-!
# A064677: a(n) = sigma(n) - D(n) - pi(n), where D(n)=A001223, pi(n)= A000720.

The programs for A064677, the canonical program `A064677.P14442918874238493608` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064677 has offset 1).

The definition of A064677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064677.P14442918874238493608

`A152991(n+1)-A001223(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A064677

/-- `A152991(n+1)-A001223(n+1)` -/
def P14442918874238493608.Spec : Prop :=
  ∀ n, P14442918874238493608.a n = A064677 (n + 1)

theorem P14442918874238493608.correct : P14442918874238493608.Spec := by
  intro n
  simp only [A064677, Nat.add_sub_cancel]

end A064677

/-! ## A064677.P16315579272684773086

`A152992(n+1)-A161911(n+1)`
-/

namespace A064677.P16315579272684773086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152992 (n + 1) - A161911 (n + 1)

end

end A064677.P16315579272684773086

namespace A064677

/-- `A152992(n+1)-A161911(n+1)` -/
def P16315579272684773086.Spec : Prop :=
  ∀ n, P16315579272684773086.a n = A064677 (n + 1)

end A064677

/-! ## A064677.P2553039769727945679

`A000203(n+1)-(A001223(n+1)+A000720(n+1))`
-/

namespace A064677.P2553039769727945679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A001223 (n + 1) + A000720 (n + 1))

end

end A064677.P2553039769727945679

namespace A064677

/-- `A000203(n+1)-(A001223(n+1)+A000720(n+1))` -/
def P2553039769727945679.Spec : Prop :=
  ∀ n, P2553039769727945679.a n = A064677 (n + 1)

end A064677

/-! ## A064677.P227761880167051968

`A152991(n+1)-Δ[A008864(n+1)]`
-/

namespace A064677.P227761880167051968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152991 (n + 1) - (f1 (n + 1) - f1 n)

end

end A064677.P227761880167051968

namespace A064677

/-- `A152991(n+1)-Δ[A008864(n+1)]` -/
def P227761880167051968.Spec : Prop :=
  ∀ n, P227761880167051968.a n = A064677 (n + 1)

end A064677

/-! ## A064677.P15698120181774612405

`A000040(n+1)+A152991(n+1)-A000040(n+2)`
-/

namespace A064677.P15698120181774612405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A152991 (n + 1) - A000040 (n + 2))

end

end A064677.P15698120181774612405

namespace A064677

/-- `A000040(n+1)+A152991(n+1)-A000040(n+2)` -/
def P15698120181774612405.Spec : Prop :=
  ∀ n, P15698120181774612405.a n = A064677 (n + 1)

end A064677

/-! ## A064677.P15360854754447941559

`A152991(n+1)-Δ[A008578(n+2)]`
-/

namespace A064677.P15360854754447941559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152991 (n + 1) - (f1 (n + 1) - f1 n)

end

end A064677.P15360854754447941559

namespace A064677

/-- `A152991(n+1)-Δ[A008578(n+2)]` -/
def P15360854754447941559.Spec : Prop :=
  ∀ n, P15360854754447941559.a n = A064677 (n + 1)

end A064677

/-!
# A064678: Numbers k such that sopf(k) = sopfr(k+1), where sopf(k) = A008472(k) and sopfr(k) = A001414(k).

The programs for A064678, there is no canonical definition to state claims against.
-/

/-! ## A064678.P3032645186964919369

`eq[A001414(n+2), A008472(n+1)]+1`
-/

namespace A064678.P3032645186964919369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064678.P3032645186964919369

/-! ## A064678.P986604641204377010

`eq[A075254(n+1), A254340(A028310(n))]`
-/

namespace A064678.P986604641204377010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254340 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064678.P986604641204377010

/-! ## A064678.P195390920740958477

`eq[A001414(n+1), A008472(A000038(n)+n)]`
-/

namespace A064678.P195390920740958477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064678.P195390920740958477

/-! ## A064678.P15304357229620697606

`eq[1-A075255(n+1)+n, A008472(A000038(n)+n)]`
-/

namespace A064678.P15304357229620697606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A075255 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064678.P15304357229620697606

/-! ## A064678.P5902825798820022621

`eq[A075254(n+1), A254340(A233583(n+1))]`
-/

namespace A064678.P5902825798820022621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254340 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064678.P5902825798820022621

/-!
# A064679: A Beatty sequence for 10*i^i.

The programs for A064679, there is no canonical definition to state claims against.
-/

/-! ## A064679.P14096552477940104989

`comp[A064676(n+1)-1]+1`
-/

namespace A064679.P14096552477940104989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064676 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A064679.P14096552477940104989

/-! ## A064679.P3617722988967338488

`floor(log(A018027(n+1)²))`
-/

namespace A064679.P3617722988967338488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A018027 (n + 1) ^ 2 : ℝ)⌋

end

end A064679.P3617722988967338488

/-! ## A064679.P16225561299454281713

`A003056((n+2)*A005206(3*n+2))`
-/

namespace A064679.P16225561299454281713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((n + 2 : ℤ) * A005206 (3 * n + 2)).toNat

end

end A064679.P16225561299454281713

/-! ## A064679.P6453669911579785671

`A002024(A140229(n+1)+A129232(n))`
-/

namespace A064679.P6453669911579785671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A140229 (n + 1) + A129232 n).toNat

end

end A064679.P6453669911579785671

/-! ## A064679.P6120274526092029138

`A103128(A001844(n)+2*n-A056834(n+1))`
-/

namespace A064679.P6120274526092029138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A001844 n + (2 * n : ℤ) - A056834 (n + 1)).toNat

end

end A064679.P6120274526092029138

/-! ## A064679.P9751877970603573546

`A188222(3*(n+1))-A002262(A052905(2*(n+2)))`
-/

namespace A064679.P9751877970603573546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 (3 * (n + 1)) - A002262 (A052905 (2 * (n + 2))).toNat

end

end A064679.P9751877970603573546

/-! ## A064679.P5569099479016617657

`A000194((n+1)*A184824(n+1))`
-/

namespace A064679.P5569099479016617657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((n + 1 : ℤ) * A184824 (n + 1)).toNat

end

end A064679.P5569099479016617657

/-!
# A064680: Halve every even number, double every odd number.

The programs for A064680, the canonical program `A064680.P14625774430786589521` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064680 has offset 0).

The definition of A064680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064680.P15395037832732667645

`lcm(n, 2)/gcd(n, 2)`
-/

namespace A064680.P15395037832732667645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n 2 : ℚ) / (Nat.gcd n 2 : ℚ)

end

end A064680.P15395037832732667645

namespace A064680

/-- `lcm(n, 2)/gcd(n, 2)` -/
def P15395037832732667645.Spec : Prop :=
  ∀ n, P15395037832732667645.a n = (A064680 n : ℚ)

end A064680

/-! ## A064680.P10329710039278987433

`2^(2*n%2-1)*n`
-/

namespace A064680.P10329710039278987433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (((2 * (n % 2) : ℕ) : ℤ) - 1 : ℤ) * (n : ℚ)

end

end A064680.P10329710039278987433

namespace A064680

/-- `2^(2*n%2-1)*n` -/
def P10329710039278987433.Spec : Prop :=
  ∀ n, P10329710039278987433.a n = (A064680 n : ℚ)

end A064680

/-! ## A064680.P12026713396552879156

`n*(5-3*(-1)^n)/4`
-/

namespace A064680.P12026713396552879156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (5 - 3 * (-1) ^ n) : ℚ) / 4

end

end A064680.P12026713396552879156

namespace A064680

/-- `n*(5-3*(-1)^n)/4` -/
def P12026713396552879156.Spec : Prop :=
  ∀ n, P12026713396552879156.a n = (A064680 n : ℚ)

theorem P12026713396552879156.correct : P12026713396552879156.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A064680, Nat.add_sub_cancel, A064680.P12026713396552879156.a, A064680.P14625774430786589521.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A064680, Nat.add_sub_cancel, A064680.P12026713396552879156.a, A064680.P14625774430786589521.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A064680

/-! ## A064680.P14625774430786589521

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=6`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064680

/-- `2*a(n-2)-a(n-4)` -/
def P14625774430786589521.Spec : Prop :=
  ∀ n, P14625774430786589521.a n = A064680 n

theorem P14625774430786589521.correct : P14625774430786589521.Spec := by
  intro n
  simp only [A064680]

end A064680

/-! ## A064680.P15254011538095726146

`A176447(n)+n`
-/

namespace A064680.P15254011538095726146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176447 n + (n : ℤ)

end

end A064680.P15254011538095726146

namespace A064680

/-- `A176447(n)+n` -/
def P15254011538095726146.Spec : Prop :=
  ∀ n, P15254011538095726146.a n = A064680 n

end A064680

/-! ## A064680.P12213219746571683342

`n*ratio[gcd(2, n)]`
-/

namespace A064680.P12213219746571683342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A064680.P12213219746571683342

namespace A064680

/-- `n*ratio[gcd(2, n)]` -/
def P12213219746571683342.Spec : Prop :=
  ∀ n, P12213219746571683342.a n = (A064680 n : ℚ)

end A064680

/-! ## A064680.P4174624378538878567

`2*n/gcd(4, n²)`
-/

namespace A064680.P4174624378538878567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℚ) / (Nat.gcd 4 (n ^ 2) : ℚ))

end

end A064680.P4174624378538878567

namespace A064680

/-- `2*n/gcd(4, n²)` -/
def P4174624378538878567.Spec : Prop :=
  ∀ n, P4174624378538878567.a n = (A064680 n : ℚ)

end A064680

/-! ## A064680.P12316724688572658524

`n*ratio[2-n%2]`
-/

namespace A064680.P12316724688572658524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A064680.P12316724688572658524

namespace A064680

/-- `n*ratio[2-n%2]` -/
def P12316724688572658524.Spec : Prop :=
  ∀ n, P12316724688572658524.a n = (A064680 n : ℚ)

end A064680

/-! ## A064680.P17756521832262545918

`n*ratio[and(1, n)-2]`
-/

namespace A064680.P17756521832262545918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A064680.P17756521832262545918

namespace A064680

/-- `n*ratio[and(1, n)-2]` -/
def P17756521832262545918.Spec : Prop :=
  ∀ n, P17756521832262545918.a n = (A064680 n : ℚ)

end A064680

/-! ## A064680.P10279579208398597090

`n*ratio[(n+1)%2+1]`
-/

namespace A064680.P10279579208398597090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A064680.P10279579208398597090

namespace A064680

/-- `n*ratio[(n+1)%2+1]` -/
def P10279579208398597090.Spec : Prop :=
  ∀ n, P10279579208398597090.a n = (A064680 n : ℚ)

end A064680

/-! ## A064680.P12555800886494043421

`n*ratio[2^and(1, n+1)]`
-/

namespace A064680.P12555800886494043421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.land 1 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A064680.P12555800886494043421

namespace A064680

/-- `n*ratio[2^and(1, n+1)]` -/
def P12555800886494043421.Spec : Prop :=
  ∀ n, P12555800886494043421.a n = (A064680 n : ℚ)

end A064680

/-! ## A064680.P15890024873830404904

`n*ratio[3-a(n-1)]` with `a(0)=2`
-/

namespace A064680.P15890024873830404904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A064680.P15890024873830404904

namespace A064680

/-- `n*ratio[3-a(n-1)]` -/
def P15890024873830404904.Spec : Prop :=
  ∀ n, P15890024873830404904.a n = (A064680 n : ℚ)

end A064680

/-! ## A064680.P11915710299985818334

`gcd(2*n, (n+1)*∑[n])`
-/

namespace A064680.P11915710299985818334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A064680.P11915710299985818334

namespace A064680

/-- `gcd(2*n, (n+1)*∑[n])` -/
def P11915710299985818334.Spec : Prop :=
  ∀ n, (P11915710299985818334.a n : ℤ) = A064680 n

end A064680

/-! ## A064680.P6927148552958586595

`floor(2*n/or(n, -2)²)`
-/

namespace A064680.P6927148552958586595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) / (Int.lor (n : ℤ) (-2) ^ 2 : ℚ)⌋

end

end A064680.P6927148552958586595

namespace A064680

/-- `floor(2*n/or(n, -2)²)` -/
def P6927148552958586595.Spec : Prop :=
  ∀ n, P6927148552958586595.a n = A064680 n

end A064680

/-! ## A064680.P644603870642790519

`ceil(2*n/or(n, -2)²)`
-/

namespace A064680.P644603870642790519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℚ) / (Int.lor (n : ℤ) (-2) ^ 2 : ℚ)⌉

end

end A064680.P644603870642790519

namespace A064680

/-- `ceil(2*n/or(n, -2)²)` -/
def P644603870642790519.Spec : Prop :=
  ∀ n, P644603870642790519.a n = A064680 n

end A064680

/-! ## A064680.P15468690389257628054

`round(2*n/or(n, -2)²)`
-/

namespace A064680.P15468690389257628054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℚ) / (Int.lor (n : ℤ) (-2) ^ 2 : ℚ))

end

end A064680.P15468690389257628054

namespace A064680

/-- `round(2*n/or(n, -2)²)` -/
def P15468690389257628054.Spec : Prop :=
  ∀ n, P15468690389257628054.a n = A064680 n

end A064680

/-! ## A064680.P3516918879746424849

`floor(2*n/(and(1, n)-2)²)`
-/

namespace A064680.P3516918879746424849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) / (((Nat.land 1 n : ℤ) - 2) ^ 2 : ℚ)⌋

end

end A064680.P3516918879746424849

namespace A064680

/-- `floor(2*n/(and(1, n)-2)²)` -/
def P3516918879746424849.Spec : Prop :=
  ∀ n, P3516918879746424849.a n = A064680 n

end A064680

/-! ## A064680.P510208378967703028

`ogf((2x+x^2+2x^3)/(1-2x^2+x^4))`
-/

namespace A064680.P510208378967703028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 2] [1, 0, -2, 0, 1] n

end

end A064680.P510208378967703028

namespace A064680

/-- `ogf((2x+x^2+2x^3)/(1-2x^2+x^4))` -/
def P510208378967703028.Spec : Prop :=
  ∀ n, P510208378967703028.a n = A064680 n

end A064680

/-! ## A064680.P15411685323712268200

`2/a(n-1)*C(n, 2)` with `a(0)=0, a(1)=2`
-/

namespace A064680.P15411685323712268200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 / a (n - 1) * (Nat.choose n 2 : ℚ)

end

end A064680.P15411685323712268200

namespace A064680

/-- `2/a(n-1)*C(n, 2)` -/
def P15411685323712268200.Spec : Prop :=
  ∀ n, P15411685323712268200.a n = (A064680 n : ℚ)

end A064680

/-! ## A064680.P10710580539741026408

`(n-1)*n/a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A064680.P10710580539741026408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  ((n : ℤ) - 1 : ℚ) * ((n : ℚ) / a (n - 1))

end

end A064680.P10710580539741026408

namespace A064680

/-- `(n-1)*n/a(n-1)` -/
def P10710580539741026408.Spec : Prop :=
  ∀ n, P10710580539741026408.a n = (A064680 n : ℚ)

end A064680

/-!
# A064681: a(n) = number of partitions of n! into distinct parts.

The programs for A064681, there is no canonical definition to state claims against.
-/

/-! ## A064681.P8292686294133534100

`A000009(A000142(n))`
-/

namespace A064681.P8292686294133534100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A000142 n).toNat

end

end A064681.P8292686294133534100

/-! ## A064681.P7797800000624879224

`A000009(n!)`
-/

namespace A064681.P7797800000624879224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (Nat.factorial n)

end

end A064681.P7797800000624879224

/-! ## A064681.P1545521558119982404

`abs(A081360(n!))`
-/

namespace A064681.P1545521558119982404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 (Nat.factorial n)|

end

end A064681.P1545521558119982404

/-! ## A064681.P7618231283689214453

`A111133(n!)+1`
-/

namespace A064681.P7618231283689214453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (Nat.factorial n) + 1

end

end A064681.P7618231283689214453

/-!
# A064682: a(n) = number of partitions of n^n into distinct parts.

The programs for A064682, there is no canonical definition to state claims against.
-/

/-! ## A064682.P14654816422564265932

`A000009(A000312(n))`
-/

namespace A064682.P14654816422564265932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A000312 n).toNat

end

end A064682.P14654816422564265932

/-!
# A064683: Let n(s) be the number formed from n by inserting s 0's between each digit, e.g. 123(2) is 1002003; sequence gives numbers n such that n(s) is divisible by n for some s>0.

The programs for A064683, there is no canonical definition to state claims against.
-/

/-! ## A064683.P13920630928721972454

`comp[A064695(n+1)-1]+1`
-/

namespace A064683.P13920630928721972454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064695 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A064683.P13920630928721972454

/-! ## A064683.P1583498181418377339

`lt[0, A064696(n)]+1`
-/

namespace A064683.P1583498181418377339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064696 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A064683.P1583498181418377339

/-! ## A064683.P12162170936688156218

`lt[0, A106848(n+1)]+1`
-/

namespace A064683.P12162170936688156218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106848 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A064683.P12162170936688156218

/-! ## A064683.P12529685273886330195

`eq[1, A000040(A106848(n+1)+1)%2]+1`
-/

namespace A064683.P12529685273886330195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A106848 (n + 1) + 1).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064683.P12529685273886330195

/-! ## A064683.P3984096007600015198

`lt[A000007(n), A106848(A028310(n))]`
-/

namespace A064683.P3984096007600015198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106848 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064683.P3984096007600015198

/-! ## A064683.P13598923239071040104

`lt[A000038(n), A106848(A028310(n))]`
-/

namespace A064683.P13598923239071040104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106848 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064683.P13598923239071040104

/-!
# A064684: Number of primes in orbit of 2n+1 in the 3x+1 problem.

The programs for A064684, there is no canonical definition to state claims against.
-/

/-! ## A064684.P11979858493598969564

`A078350(Δ[n²])`
-/

namespace A064684.P11979858493598969564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078350 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A064684.P11979858493598969564

/-! ## A064684.P180142369816028592

`or(char[1], A078350(2*n+1))`
-/

namespace A064684.P180142369816028592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A078350 (2 * n + 1))

end

end A064684.P180142369816028592

/-! ## A064684.P14433456088165647962

`A057427(n)+A055509(2*n+1)`
-/

namespace A064684.P14433456088165647962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A055509 (2 * n + 1)

end

end A064684.P14433456088165647962

/-! ## A064684.P4927024541672025003

`A055509(2*n+1)-A057428(n)`
-/

namespace A064684.P4927024541672025003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055509 (2 * n + 1) - A057428 n

end

end A064684.P4927024541672025003

/-! ## A064684.P16833177805299487011

`A078350(2*n+1)%A008864(n+1)`
-/

namespace A064684.P16833177805299487011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078350 (2 * n + 1)) (A008864 (n + 1))

end

end A064684.P16833177805299487011

/-! ## A064684.P5527366498349002582

`A055509(2*n+1)+A057428(2*n)²`
-/

namespace A064684.P5527366498349002582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055509 (2 * n + 1) + A057428 (2 * n) ^ 2

end

end A064684.P5527366498349002582

/-! ## A064684.P9700028372524060621

`A078350(2*n+1)+A007814(2*n+1)`
-/

namespace A064684.P9700028372524060621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078350 (2 * n + 1) + A007814 (2 * n + 1)

end

end A064684.P9700028372524060621

/-! ## A064684.P1228243734532367837

`A078350(2*n+1)+A010051(2*(n+2))`
-/

namespace A064684.P1228243734532367837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078350 (2 * n + 1) + A010051 (2 * (n + 2))

end

end A064684.P1228243734532367837

/-! ## A064684.P13628006053459932831

`A008908(2*n+1)-A267830(2*n+1)`
-/

namespace A064684.P13628006053459932831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (2 * n + 1) - A267830 (2 * n + 1)

end

end A064684.P13628006053459932831

/-! ## A064684.P15008000958521528774

`A078350(2*n+1)*A126241(2*(n+1))`
-/

namespace A064684.P15008000958521528774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078350 (2 * n + 1) * A126241 (2 * (n + 1))

end

end A064684.P15008000958521528774

/-! ## A064684.P6859336649696508216

`A078350(2*n+1)*A318489(2*(n+1))`
-/

namespace A064684.P6859336649696508216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078350 (2 * n + 1) * A318489 (2 * (n + 1))

end

end A064684.P6859336649696508216

/-! ## A064684.P921748700637680730

`A055509(2*n+1)+1-A010051(2*(n+1))`
-/

namespace A064684.P921748700637680730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055509 (2 * n + 1) + (1 - A010051 (2 * (n + 1)))

end

end A064684.P921748700637680730

/-! ## A064684.P14385950359075703882

`A006577(2*n+1)+1-A267830(2*n+1)`
-/

namespace A064684.P14385950359075703882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (2 * n + 1) + (1 - A267830 (2 * n + 1))

end

end A064684.P14385950359075703882

/-! ## A064684.P2456959389719545556

`A275866(A276202(A078350(2*n+1)))`
-/

namespace A064684.P2456959389719545556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275866 (A276202 (A078350 (2 * n + 1)).toNat).toNat

end

end A064684.P2456959389719545556

/-! ## A064684.P907881141823795597

`A055509(2*n+1)+A010051(A020639(n+1))`
-/

namespace A064684.P907881141823795597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055509 (2 * n + 1) + A010051 (A020639 (n + 1)).toNat

end

end A064684.P907881141823795597

/-! ## A064684.P18272518362270074430

`A055509(2*n+1)+A057428(n)*A057428(n+1)`
-/

namespace A064684.P18272518362270074430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055509 (2 * n + 1) + A057428 n * A057428 (n + 1)

end

end A064684.P18272518362270074430

/-! ## A064684.P660809417521964831

`A055509(2*n+1)+A010051(A299963(2*n+1))`
-/

namespace A064684.P660809417521964831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055509 (2 * n + 1) + A010051 (A299963 (2 * n + 1)).toNat

end

end A064684.P660809417521964831

/-!
# A064685: Length of orbit of 2n+1 in the 3x+1 problem.

The programs for A064685, there is no canonical definition to state claims against.
-/

/-! ## A064685.P9945129347731100724

`A008908(Δ[n²])`
-/

namespace A064685.P9945129347731100724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A064685.P9945129347731100724

/-! ## A064685.P9743949284816457978

`A006577(Δ[n²])+1`
-/

namespace A064685.P9743949284816457978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A064685.P9743949284816457978

/-! ## A064685.P10930072617792108032

`floor(log2(A221468(2*n+1)))+1`
-/

namespace A064685.P10930072617792108032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A221468 (2 * n + 1)).toNat + 1

end

end A064685.P10930072617792108032

/-! ## A064685.P16577164246204653249

`abs(A008908(2*n+1)-1)+1`
-/

namespace A064685.P16577164246204653249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008908 (2 * n + 1) - 1| + 1

end

end A064685.P16577164246204653249

/-! ## A064685.P15631592067427025787

`A027656(2*A006577(2*n+1))`
-/

namespace A064685.P15631592067427025787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A006577 (2 * n + 1)).toNat

end

end A064685.P15631592067427025787

/-! ## A064685.P13753726336693289301

`A139399(2*n+1)+A122553(n)`
-/

namespace A064685.P13753726336693289301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (2 * n + 1) + A122553 n

end

end A064685.P13753726336693289301

/-! ## A064685.P11614399483383776534

`A158799(2*n)+A139399(2*n+1)`
-/

namespace A064685.P11614399483383776534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 (2 * n) + A139399 (2 * n + 1)

end

end A064685.P11614399483383776534

/-! ## A064685.P15733106592122468263

`A064433(2*(n+1))+A006667(2*n+1)`
-/

namespace A064685.P15733106592122468263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (2 * (n + 1)) + A006667 (2 * n + 1)

end

end A064685.P15733106592122468263

/-! ## A064685.P8558376108807553637

`A078719(2*n+1)+A006666(2*n+1)`
-/

namespace A064685.P8558376108807553637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (2 * n + 1) + A006666 (2 * n + 1)

end

end A064685.P8558376108807553637

/-! ## A064685.P9547297675665350573

`A213204(2*n+1)+A076228(2*n+1)`
-/

namespace A064685.P9547297675665350573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213204 (2 * n + 1) + A076228 (2 * n + 1)

end

end A064685.P9547297675665350573

/-! ## A064685.P7413288782822669612

`A222641(2*n+1)+A087225(2*n+1)`
-/

namespace A064685.P7413288782822669612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222641 (2 * n + 1) + A087225 (2 * n + 1)

end

end A064685.P7413288782822669612

/-! ## A064685.P10648795689355494109

`A267830(2*n+1)+A078350(2*n+1)`
-/

namespace A064685.P10648795689355494109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267830 (2 * n + 1) + A078350 (2 * n + 1)

end

end A064685.P10648795689355494109

/-! ## A064685.P15514531275811886819

`A222597(2*n+1)+A159999(2*n+1)`
-/

namespace A064685.P15514531275811886819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222597 (2 * n + 1) + A159999 (2 * n + 1)

end

end A064685.P15514531275811886819

/-! ## A064685.P1850502953216565179

`A226123(2*n+1)+A208981(2*n+1)`
-/

namespace A064685.P1850502953216565179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226123 (2 * n + 1) + A208981 (2 * n + 1)

end

end A064685.P1850502953216565179

/-! ## A064685.P2494442041214149847

`A222118(2*n+1)+A221956(2*n+1)`
-/

namespace A064685.P2494442041214149847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222118 (2 * n + 1) + A221956 (2 * n + 1)

end

end A064685.P2494442041214149847

/-! ## A064685.P8318365676758968601

`A220071(2*n+1)+A005408(A006667(2*n+1))`
-/

namespace A064685.P8318365676758968601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220071 (2 * n + 1) + A005408 (A006667 (2 * n + 1)).toNat

end

end A064685.P8318365676758968601

/-! ## A064685.P10155486637699574891

`A008619(A220182(2*n+1))+A006666(2*n+1)`
-/

namespace A064685.P10155486637699574891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A220182 (2 * n + 1)).toNat + A006666 (2 * n + 1)

end

end A064685.P10155486637699574891

/-! ## A064685.P2594012587684025965

`A006577(4*n+2)`
-/

namespace A064685.P2594012587684025965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (4 * n + 2)

end

end A064685.P2594012587684025965

/-! ## A064685.P12897088309924236505

`A008908(4*n+2)-1`
-/

namespace A064685.P12897088309924236505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (4 * n + 2) - 1

end

end A064685.P12897088309924236505

/-! ## A064685.P4267803359820149753

`A344276(12*n+6)`
-/

namespace A064685.P4267803359820149753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344276 (12 * n + 6)

end

end A064685.P4267803359820149753

/-!
# A064686: a(n) = number of n-digit base-3 biquams.

The programs for A064686, the canonical program `A064686.P7581998241004610186` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064686 has offset 1).

The definition of A064686 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064686.P12330524882721818264

`floor(3^n-2^(n-1))`
-/

namespace A064686.P12330524882721818264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 ^ n : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A064686.P12330524882721818264

namespace A064686

/-- `floor(3^n-2^(n-1))` -/
def P12330524882721818264.Spec : Prop :=
  ∀ n, P12330524882721818264.a n = A064686 (n + 1)

end A064686

/-! ## A064686.P7581998241004610186

`5*a(n-1)-6*a(n-2)` with `a(0)=0, a(1)=2, a(2)=7`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064686

/-- `5*a(n-1)-6*a(n-2)` -/
def P7581998241004610186.Spec : Prop :=
  ∀ n, P7581998241004610186.a n = A064686 (n + 1)

theorem P7581998241004610186.correct : P7581998241004610186.Spec := by
  intro n
  simp only [A064686, Nat.add_sub_cancel]

end A064686

/-! ## A064686.P11423359236550200228

`ogf((2x-3x^2)/(1-5x+6x^2))`
-/

namespace A064686.P11423359236550200228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -3] [1, -5, 6] n

end

end A064686.P11423359236550200228

namespace A064686

/-- `ogf((2x-3x^2)/(1-5x+6x^2))` -/
def P11423359236550200228.Spec : Prop :=
  ∀ n, P11423359236550200228.a n = A064686 (n + 1)

end A064686

/-! ## A064686.P5422021600542897078

`ceil(3^n-cosh(n*log(2)))`
-/

namespace A064686.P5422021600542897078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 ^ n : ℝ) - Real.cosh ((n : ℝ) * Real.log (2 : ℝ))⌉

end

end A064686.P5422021600542897078

namespace A064686

/-- `ceil(3^n-cosh(n*log(2)))` -/
def P5422021600542897078.Spec : Prop :=
  ∀ n, P5422021600542897078.a n = A064686 (n + 1)

end A064686

/-! ## A064686.P13529048814284135975

`3^n-lcm(6, 2^n)/6`
-/

namespace A064686.P13529048814284135975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) - (Nat.lcm 6 (2 ^ n) : ℚ) / 6

end

end A064686.P13529048814284135975

namespace A064686

/-- `3^n-lcm(6, 2^n)/6` -/
def P13529048814284135975.Spec : Prop :=
  ∀ n, P13529048814284135975.a n = (A064686 (n + 1) : ℚ)

end A064686

/-! ## A064686.P6011370793389777714

`or(1, 3^n)-round(2^n/2)`
-/

namespace A064686.P6011370793389777714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (3 ^ n) : ℤ) - SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 2)

end

end A064686.P6011370793389777714

namespace A064686

/-- `or(1, 3^n)-round(2^n/2)` -/
def P6011370793389777714.Spec : Prop :=
  ∀ n, P6011370793389777714.a n = A064686 (n + 1)

end A064686

/-! ## A064686.P15710660622055967854

`3^n-2^((2*n)%(n+1))`
-/

namespace A064686.P15710660622055967854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (2 ^ (2 * n % (n + 1)) : ℤ)

end

end A064686.P15710660622055967854

namespace A064686

/-- `3^n-2^((2*n)%(n+1))` -/
def P15710660622055967854.Spec : Prop :=
  ∀ n, P15710660622055967854.a n = A064686 (n + 1)

end A064686

/-! ## A064686.P9634563934413944931

`3^n-2^round(n/3^acot(n))`
-/

namespace A064686.P9634563934413944931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) - (2 : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℝ) / (3 : ℝ) ^ (SequenceMachineLib.acot (n : ℝ))) : ℤ)

end

end A064686.P9634563934413944931

namespace A064686

/-- `3^n-2^round(n/3^acot(n))` -/
def P9634563934413944931.Spec : Prop :=
  ∀ n, P9634563934413944931.a n = (A064686 (n + 1) : ℚ)

end A064686

/-! ## A064686.P8040479995332912870

`record[Δ[A258439(n)]]`
-/

namespace A064686.P8040479995332912870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258439 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064686.P8040479995332912870

namespace A064686

/-- `record[Δ[A258439(n)]]` -/
def P8040479995332912870.Spec : Prop :=
  ∀ n, P8040479995332912870.a n = A064686 (n + 1)

end A064686

/-! ## A064686.P3189072228747555785

`3^n-A011782(n)`
-/

namespace A064686.P3189072228747555785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A011782 n

end

end A064686.P3189072228747555785

namespace A064686

/-- `3^n-A011782(n)` -/
def P3189072228747555785.Spec : Prop :=
  ∀ n, P3189072228747555785.a n = A064686 (n + 1)

end A064686

/-! ## A064686.P2282894615174654979

`A083313(n)-floor(acot(n))`
-/

namespace A064686.P2282894615174654979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083313 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A064686.P2282894615174654979

namespace A064686

/-- `A083313(n)-floor(acot(n))` -/
def P2282894615174654979.Spec : Prop :=
  ∀ n, P2282894615174654979.a n = A064686 (n + 1)

end A064686

/-! ## A064686.P11758223746931695706

`3^n-A166444(n+1)`
-/

namespace A064686.P11758223746931695706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A166444 (n + 1)

end

end A064686.P11758223746931695706

namespace A064686

/-- `3^n-A166444(n+1)` -/
def P11758223746931695706.Spec : Prop :=
  ∀ n, P11758223746931695706.a n = A064686 (n + 1)

end A064686

/-! ## A064686.P10502990365782061658

`A131577(n)+A001047(n)`
-/

namespace A064686.P10502990365782061658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A001047 n

end

end A064686.P10502990365782061658

namespace A064686

/-- `A131577(n)+A001047(n)` -/
def P10502990365782061658.Spec : Prop :=
  ∀ n, P10502990365782061658.a n = A064686 (n + 1)

end A064686

/-! ## A064686.P7329806949963684876

`A007689(n)-A042950(n)`
-/

namespace A064686.P7329806949963684876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007689 n - A042950 n

end

end A064686.P7329806949963684876

namespace A064686

/-- `A007689(n)-A042950(n)` -/
def P7329806949963684876.Spec : Prop :=
  ∀ n, P7329806949963684876.a n = A064686 (n + 1)

end A064686

/-! ## A064686.P14301124865109154362

`A083313(n)-A000007(n)`
-/

namespace A064686.P14301124865109154362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083313 n - A000007 n

end

end A064686.P14301124865109154362

namespace A064686

/-- `A083313(n)-A000007(n)` -/
def P14301124865109154362.Spec : Prop :=
  ∀ n, P14301124865109154362.a n = A064686 (n + 1)

end A064686

/-! ## A064686.P3763365265147211988

`A005056(n)-A083329(n)`
-/

namespace A064686.P3763365265147211988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005056 n - A083329 n

end

end A064686.P3763365265147211988

namespace A064686

/-- `A005056(n)-A083329(n)` -/
def P3763365265147211988.Spec : Prop :=
  ∀ n, P3763365265147211988.a n = A064686 (n + 1)

end A064686

/-! ## A064686.P2302557002147650137

`A003946(n)-A085281(n)`
-/

namespace A064686.P2302557002147650137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A085281 n

end

end A064686.P2302557002147650137

namespace A064686

/-- `A003946(n)-A085281(n)` -/
def P2302557002147650137.Spec : Prop :=
  ∀ n, P2302557002147650137.a n = A064686 (n + 1)

end A064686

/-! ## A064686.P4866338066656537035

`A052929(n)-A052950(n)`
-/

namespace A064686.P4866338066656537035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052929 n - A052950 n

end

end A064686.P4866338066656537035

namespace A064686

/-- `A052929(n)-A052950(n)` -/
def P4866338066656537035.Spec : Prop :=
  ∀ n, P4866338066656537035.a n = A064686 (n + 1)

end A064686

/-! ## A064686.P6378986041120448864

`A053581(n)-A133494(n)`
-/

namespace A064686.P6378986041120448864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053581 n - A133494 n

end

end A064686.P6378986041120448864

namespace A064686

/-- `A053581(n)-A133494(n)` -/
def P6378986041120448864.Spec : Prop :=
  ∀ n, P6378986041120448864.a n = A064686 (n + 1)

end A064686

/-! ## A064686.P8941999013100354565

`A103457(n)-A094373(n)`
-/

namespace A064686.P8941999013100354565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103457 n - A094373 n

end

end A064686.P8941999013100354565

namespace A064686

/-- `A103457(n)-A094373(n)` -/
def P8941999013100354565.Spec : Prop :=
  ∀ n, P8941999013100354565.a n = A064686 (n + 1)

end A064686

/-!
# A064688: a(n) = number of partitions of primes into distinct (also odd) parts.

The programs for A064688, there is no canonical definition to state claims against.
-/

/-! ## A064688.P6552858319092825802

`A000009(A000040(n+1))`
-/

namespace A064688.P6552858319092825802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A000040 (n + 1)).toNat

end

end A064688.P6552858319092825802

/-! ## A064688.P9397126959458539861

`A123557(n+1)+1`
-/

namespace A064688.P9397126959458539861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123557 (n + 1) + 1

end

end A064688.P9397126959458539861

/-! ## A064688.P15091444432187093914

`A078408(A102781(n+1))`
-/

namespace A064688.P15091444432187093914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078408 (A102781 (n + 1)).toNat

end

end A064688.P15091444432187093914

/-! ## A064688.P2338689417704131961

`A000009(eq[1, ∑{e}[n, #]])`
-/

namespace A064688.P2338689417704131961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A064688.P2338689417704131961

/-! ## A064688.P4342496365506314244

`A000009(A006005(n+1))`
-/

namespace A064688.P4342496365506314244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A006005 (n + 1)).toNat

end

end A064688.P4342496365506314244

/-! ## A064688.P6266165373822351044

`A117409(A052147(n+1))`
-/

namespace A064688.P6266165373822351044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (A052147 (n + 1)).toNat

end

end A064688.P6266165373822351044

/-! ## A064688.P17023530695761480802

`A000009(A008578(n+2))`
-/

namespace A064688.P17023530695761480802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A008578 (n + 2)).toNat

end

end A064688.P17023530695761480802

/-! ## A064688.P8391246999351510524

`A000009(A075643(n+2))`
-/

namespace A064688.P8391246999351510524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A075643 (n + 2)).toNat

end

end A064688.P8391246999351510524

/-! ## A064688.P7667393073815295428

`record[A000009(A006530(n+1))]`
-/

namespace A064688.P7667393073815295428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064688.P7667393073815295428

/-! ## A064688.P13896298755553635871

`record[A000009(A020639(n+1))]`
-/

namespace A064688.P13896298755553635871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064688.P13896298755553635871

/-! ## A064688.P16747098275496377621

`A000009(A006093(n+1)+1)`
-/

namespace A064688.P16747098275496377621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A006093 (n + 1) + 1).toNat

end

end A064688.P16747098275496377621

/-! ## A064688.P18119010525056443645

`A000009(A055670(n+1)-1)`
-/

namespace A064688.P18119010525056443645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A055670 (n + 1) - 1).toNat

end

end A064688.P18119010525056443645

/-! ## A064688.P11243450675413763202

`A000009(A014692(n+1)+n)`
-/

namespace A064688.P11243450675413763202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A014692 (n + 1) + (n : ℤ)).toNat

end

end A064688.P11243450675413763202

/-! ## A064688.P18193649382240453172

`record[A282892(record[A006530(n+1)])]`
-/

namespace A064688.P18193649382240453172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282892 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064688.P18193649382240453172

/-! ## A064688.P5412428382774265336

`record[A282892(record[A020639(n+1)])]`
-/

namespace A064688.P5412428382774265336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282892 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064688.P5412428382774265336

/-! ## A064688.P2661306873882438560

`A078374(record[A006530(n+2)])+1`
-/

namespace A064688.P2661306873882438560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078374 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A064688.P2661306873882438560

/-! ## A064688.P14106671636237720767

`A079124(record[A006530(n+2)])+1`
-/

namespace A064688.P14106671636237720767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079124 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A064688.P14106671636237720767

/-! ## A064688.P15222808432622623476

`A078374(record[A020639(n+2)])+1`
-/

namespace A064688.P15222808432622623476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078374 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A064688.P15222808432622623476

/-! ## A064688.P8374284020130090355

`A079124(record[A020639(n+2)])+1`
-/

namespace A064688.P8374284020130090355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079124 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A064688.P8374284020130090355

/-! ## A064688.P16004161984625023877

`A111133(record[A006530(n+2)])+1`
-/

namespace A064688.P16004161984625023877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A064688.P16004161984625023877

/-!
# A064689: Smallest m such that A064672(m) = n.

The programs for A064689, there is no canonical definition to state claims against.
-/

/-! ## A064689.P18217112131869793234

`lt[n, A039739(A072055(n+1))]`
-/

namespace A064689.P18217112131869793234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039739 (A072055 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A064689.P18217112131869793234

/-! ## A064689.P13825587598659031183

`A275891(A282982(n))+n`
-/

namespace A064689.P13825587598659031183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275891 (A282982 n).toNat + (n : ℤ)

end

end A064689.P13825587598659031183

/-! ## A064689.P17937846720699692266

`n-A359495(A356753(n))`
-/

namespace A064689.P17937846720699692266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A359495 (A356753 n).toNat

end

end A064689.P17937846720699692266

/-! ## A064689.P7293164429616672282

`eq[A213268(n), A227543(n)]`
-/

namespace A064689.P7293164429616672282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213268 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227543 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064689.P7293164429616672282

/-! ## A064689.P16799414857508308785

`record[A116430(n)%A001615(n+1)]`
-/

namespace A064689.P16799414857508308785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116430 n) (A001615 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064689.P16799414857508308785

/-!
# A064692: Total number of holes in decimal expansion of the number n, assuming 4 has 1 hole.

The programs for A064692, the canonical program `A064692.P5168258694329805100` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064692 has offset 0).

The definition of A064692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064692.P15439676083646110508

`A064693(n)-1`
-/

namespace A064692.P15439676083646110508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064693 n - 1

end

end A064692.P15439676083646110508

namespace A064692

/-- `A064693(n)-1` -/
def P15439676083646110508.Spec : Prop :=
  ∀ n, P15439676083646110508.a n = A064692 n

end A064692

/-! ## A064692.P9337799698707360485

`∑{digits}[n, A023895(#)]`
-/

namespace A064692.P9337799698707360485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A023895 x).sum

end

end A064692.P9337799698707360485

namespace A064692

/-- `∑{digits}[n, A023895(#)]` -/
def P9337799698707360485.Spec : Prop :=
  ∀ n, P9337799698707360485.a n = A064692 n

end A064692

/-! ## A064692.P5168258694329805100

`∑{digits}[n, A029352(#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064692

/-- `∑{digits}[n, A029352(#)]` -/
def P5168258694329805100.Spec : Prop :=
  ∀ n, P5168258694329805100.a n = A064692 n

theorem P5168258694329805100.correct : P5168258694329805100.Spec := by
  intro n
  simp only [A064692]

end A064692

/-! ## A064692.P4624039206167458988

`∑{digits}[n, A132456(#)]`
-/

namespace A064692.P4624039206167458988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A132456 x).sum

end

end A064692.P4624039206167458988

namespace A064692

/-- `∑{digits}[n, A132456(#)]` -/
def P4624039206167458988.Spec : Prop :=
  ∀ n, P4624039206167458988.a n = A064692 n

end A064692

/-! ## A064692.P3162724092780241069

`∑{digits}[n, A147787(#)]`
-/

namespace A064692.P3162724092780241069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A147787 x).sum

end

end A064692.P3162724092780241069

namespace A064692

/-- `∑{digits}[n, A147787(#)]` -/
def P3162724092780241069.Spec : Prop :=
  ∀ n, P3162724092780241069.a n = A064692 n

end A064692

/-! ## A064692.P773818898468887718

`∑{digits}[n, A182270(#)]`
-/

namespace A064692.P773818898468887718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A182270 x).sum

end

end A064692.P773818898468887718

namespace A064692

/-- `∑{digits}[n, A182270(#)]` -/
def P773818898468887718.Spec : Prop :=
  ∀ n, P773818898468887718.a n = A064692 n

end A064692

/-! ## A064692.P16700496263612787570

`∑{digits}[n, A212215(#)]`
-/

namespace A064692.P16700496263612787570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A212215 x).sum

end

end A064692.P16700496263612787570

namespace A064692

/-- `∑{digits}[n, A212215(#)]` -/
def P16700496263612787570.Spec : Prop :=
  ∀ n, P16700496263612787570.a n = A064692 n

end A064692

/-! ## A064692.P206106426534080180

`∑{digits}[n, A280544(#)]`
-/

namespace A064692.P206106426534080180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A280544 x).sum

end

end A064692.P206106426534080180

namespace A064692

/-- `∑{digits}[n, A280544(#)]` -/
def P206106426534080180.Spec : Prop :=
  ∀ n, P206106426534080180.a n = A064692 n

end A064692

/-! ## A064692.P5529820490538471335

`A316865(n)+A064532(n)`
-/

namespace A064692.P5529820490538471335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 n + A064532 n

end

end A064692.P5529820490538471335

namespace A064692

/-- `A316865(n)+A064532(n)` -/
def P5529820490538471335.Spec : Prop :=
  ∀ n, P5529820490538471335.a n = A064692 n

end A064692

/-! ## A064692.P15816933319981907237

`A064531(n)+A316865(n)-1`
-/

namespace A064692.P15816933319981907237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064531 n + (A316865 n - 1)

end

end A064692.P15816933319981907237

namespace A064692

/-- `A064531(n)+A316865(n)-1` -/
def P15816933319981907237.Spec : Prop :=
  ∀ n, P15816933319981907237.a n = A064692 n

end A064692

/-! ## A064692.P14749696474799687763

`A121934(n+1)%A064693(n)`
-/

namespace A064692.P14749696474799687763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A064693 n)

end

end A064692.P14749696474799687763

namespace A064692

/-- `A121934(n+1)%A064693(n)` -/
def P14749696474799687763.Spec : Prop :=
  ∀ n, P14749696474799687763.a n = A064692 n

end A064692

/-! ## A064692.P13842172648178029083

`A030494(n+1)%A064693(n)`
-/

namespace A064692.P13842172648178029083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A064693 n)

end

end A064692.P13842172648178029083

namespace A064692

/-- `A030494(n+1)%A064693(n)` -/
def P13842172648178029083.Spec : Prop :=
  ∀ n, P13842172648178029083.a n = A064692 n

end A064692

/-! ## A064692.P17645997638086538465

`A072828(n+1)%A064693(n)`
-/

namespace A064692.P17645997638086538465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A064693 n)

end

end A064692.P17645997638086538465

namespace A064692

/-- `A072828(n+1)%A064693(n)` -/
def P17645997638086538465.Spec : Prop :=
  ∀ n, P17645997638086538465.a n = A064692 n

end A064692

/-! ## A064692.P3776816464104148416

`A166046(n)%A064693(n)`
-/

namespace A064692.P3776816464104148416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166046 n) (A064693 n)

end

end A064692.P3776816464104148416

namespace A064692

/-- `A166046(n)%A064693(n)` -/
def P3776816464104148416.Spec : Prop :=
  ∀ n, P3776816464104148416.a n = A064692 n

end A064692

/-! ## A064692.P7217449170652168081

`A086827(n+1)%A064693(n)`
-/

namespace A064692.P7217449170652168081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086827 (n + 1)) (A064693 n)

end

end A064692.P7217449170652168081

namespace A064692

/-- `A086827(n+1)%A064693(n)` -/
def P7217449170652168081.Spec : Prop :=
  ∀ n, P7217449170652168081.a n = A064692 n

end A064692

/-!
# A064693: Number of connected components remaining when decimal expansion of the number n is cut from a piece of paper.

The programs for A064693, the canonical program `A064693.P14262218597709513042` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064693 has offset 0).

The definition of A064693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064693.P14262218597709513042

`A064692(n)+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064693

/-- `A064692(n)+1` -/
def P14262218597709513042.Spec : Prop :=
  ∀ n, P14262218597709513042.a n = A064693 n

theorem P14262218597709513042.correct : P14262218597709513042.Spec := by
  intro n
  simp only [A064693]

end A064693

/-! ## A064693.P4938822888921899214

`∑{digits}[n, A023895(#)]+1`
-/

namespace A064693.P4938822888921899214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A023895 x).sum + 1

end

end A064693.P4938822888921899214

namespace A064693

/-- `∑{digits}[n, A023895(#)]+1` -/
def P4938822888921899214.Spec : Prop :=
  ∀ n, P4938822888921899214.a n = A064693 n

end A064693

/-! ## A064693.P7361049359946915604

`∑{digits}[n, A029352(#)]+1`
-/

namespace A064693.P7361049359946915604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A029352 x).sum + 1

end

end A064693.P7361049359946915604

namespace A064693

/-- `∑{digits}[n, A029352(#)]+1` -/
def P7361049359946915604.Spec : Prop :=
  ∀ n, P7361049359946915604.a n = A064693 n

end A064693

/-! ## A064693.P6355095025225147553

`∑{digits}[n, A132456(#)]+1`
-/

namespace A064693.P6355095025225147553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A132456 x).sum + 1

end

end A064693.P6355095025225147553

namespace A064693

/-- `∑{digits}[n, A132456(#)]+1` -/
def P6355095025225147553.Spec : Prop :=
  ∀ n, P6355095025225147553.a n = A064693 n

end A064693

/-! ## A064693.P7024451194830062100

`∑{digits}[n, A147787(#)]+1`
-/

namespace A064693.P7024451194830062100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A147787 x).sum + 1

end

end A064693.P7024451194830062100

namespace A064693

/-- `∑{digits}[n, A147787(#)]+1` -/
def P7024451194830062100.Spec : Prop :=
  ∀ n, P7024451194830062100.a n = A064693 n

end A064693

/-! ## A064693.P8536575857672472045

`∑{digits}[n, A182270(#)]+1`
-/

namespace A064693.P8536575857672472045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A182270 x).sum + 1

end

end A064693.P8536575857672472045

namespace A064693

/-- `∑{digits}[n, A182270(#)]+1` -/
def P8536575857672472045.Spec : Prop :=
  ∀ n, P8536575857672472045.a n = A064693 n

end A064693

/-! ## A064693.P8476937261218260175

`∑{digits}[n, A212215(#)]+1`
-/

namespace A064693.P8476937261218260175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A212215 x).sum + 1

end

end A064693.P8476937261218260175

namespace A064693

/-- `∑{digits}[n, A212215(#)]+1` -/
def P8476937261218260175.Spec : Prop :=
  ∀ n, P8476937261218260175.a n = A064693 n

end A064693

/-! ## A064693.P13137510805900617413

`∑{digits}[n, A280544(#)]+1`
-/

namespace A064693.P13137510805900617413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A280544 x).sum + 1

end

end A064693.P13137510805900617413

namespace A064693

/-- `∑{digits}[n, A280544(#)]+1` -/
def P13137510805900617413.Spec : Prop :=
  ∀ n, P13137510805900617413.a n = A064693 n

end A064693

/-! ## A064693.P13274736482688859723

`A316865(n)+A064531(n)`
-/

namespace A064693.P13274736482688859723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 n + A064531 n

end

end A064693.P13274736482688859723

namespace A064693

/-- `A316865(n)+A064531(n)` -/
def P13274736482688859723.Spec : Prop :=
  ∀ n, P13274736482688859723.a n = A064693 n

end A064693

/-! ## A064693.P480942807420470974

`A005555(∑{digits}[n, A023895(#)])`
-/

namespace A064693.P480942807420470974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A023895 x).sum.toNat

end

end A064693.P480942807420470974

namespace A064693

/-- `A005555(∑{digits}[n, A023895(#)])` -/
def P480942807420470974.Spec : Prop :=
  ∀ n, P480942807420470974.a n = A064693 n

end A064693

/-! ## A064693.P9131396031890147446

`A005555(∑{digits}[n, A029352(#)])`
-/

namespace A064693.P9131396031890147446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A029352 x).sum.toNat

end

end A064693.P9131396031890147446

namespace A064693

/-- `A005555(∑{digits}[n, A029352(#)])` -/
def P9131396031890147446.Spec : Prop :=
  ∀ n, P9131396031890147446.a n = A064693 n

end A064693

/-! ## A064693.P15574897930843113210

`A077168(∑{digits}[n, A029352(#)])`
-/

namespace A064693.P15574897930843113210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A029352 x).sum.toNat

end

end A064693.P15574897930843113210

namespace A064693

/-- `A077168(∑{digits}[n, A029352(#)])` -/
def P15574897930843113210.Spec : Prop :=
  ∀ n, P15574897930843113210.a n = A064693 n

end A064693

/-! ## A064693.P934346616663348363

`A048379(∑{digits}[n, A064692(#)])`
-/

namespace A064693.P934346616663348363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A064692 x).sum.toNat

end

end A064693.P934346616663348363

namespace A064693

/-- `A048379(∑{digits}[n, A064692(#)])` -/
def P934346616663348363.Spec : Prop :=
  ∀ n, P934346616663348363.a n = A064693 n

end A064693

/-! ## A064693.P12994806037590702867

`A089898(∑{digits}[n, A064692(#)])`
-/

namespace A064693.P12994806037590702867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A064692 x).sum.toNat

end

end A064693.P12994806037590702867

namespace A064693

/-- `A089898(∑{digits}[n, A064692(#)])` -/
def P12994806037590702867.Spec : Prop :=
  ∀ n, P12994806037590702867.a n = A064693 n

end A064693

/-! ## A064693.P17473853255267297414

`A064532(n)+A316865(n)+1`
-/

namespace A064693.P17473853255267297414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 n + (A316865 n + 1)

end

end A064693.P17473853255267297414

namespace A064693

/-- `A064532(n)+A316865(n)+1` -/
def P17473853255267297414.Spec : Prop :=
  ∀ n, P17473853255267297414.a n = A064693 n

end A064693

/-! ## A064693.P3753189016589913525

`A000005(2^∑{digits}[n, A023895(#)])`
-/

namespace A064693.P3753189016589913525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A023895 x).sum : ℤ))).toNat

end

end A064693.P3753189016589913525

namespace A064693

/-- `A000005(2^∑{digits}[n, A023895(#)])` -/
def P3753189016589913525.Spec : Prop :=
  ∀ n, P3753189016589913525.a n = A064693 n

end A064693

/-! ## A064693.P13209368467295370014

`A000005(2^∑{digits}[n, A029352(#)])`
-/

namespace A064693.P13209368467295370014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A029352 x).sum : ℤ))).toNat

end

end A064693.P13209368467295370014

namespace A064693

/-- `A000005(2^∑{digits}[n, A029352(#)])` -/
def P13209368467295370014.Spec : Prop :=
  ∀ n, P13209368467295370014.a n = A064693 n

end A064693

/-! ## A064693.P9989121210984120940

`A000005(2^∑{digits}[n, A064692(#)])`
-/

namespace A064693.P9989121210984120940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A064692 x).sum : ℤ))).toNat

end

end A064693.P9989121210984120940

namespace A064693

/-- `A000005(2^∑{digits}[n, A064692(#)])` -/
def P9989121210984120940.Spec : Prop :=
  ∀ n, P9989121210984120940.a n = A064693 n

end A064693

/-!
# A064694: Add column entries of the table with rows (1,2,0,0...), (0,3,4,5,0,0...), (0,0,6,7,8,9,0,0...), (0,0,0,10,11,12,13,14,0,0...), ...

The programs for A064694, the canonical program `A064694.P9523278426856522305` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064694 has offset 1).

The definition of A064694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064694.P5658043865509674044

`A212977(n)+A087811(n+1)`
-/

namespace A064694.P5658043865509674044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212977 n + A087811 (n + 1)

end

end A064694.P5658043865509674044

namespace A064694

/-- `A212977(n)+A087811(n+1)` -/
def P5658043865509674044.Spec : Prop :=
  ∀ n, P5658043865509674044.a n = A064694 (n + 1)

end A064694

/-! ## A064694.P9523278426856522305

`2*A002623(n)-A058187(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064694

/-- `2*A002623(n)-A058187(n)` -/
def P9523278426856522305.Spec : Prop :=
  ∀ n, P9523278426856522305.a n = A064694 (n + 1)

theorem P9523278426856522305.correct : P9523278426856522305.Spec := by
  intro n
  simp only [A064694, Nat.add_sub_cancel]

end A064694

/-! ## A064694.P16623358431787673364

`∑[A210978(n+1)-a(n-1)]` with `a(0)=1`
-/

namespace A064694.P16623358431787673364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A210978 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064694.P16623358431787673364

namespace A064694

/-- `∑[A210978(n+1)-a(n-1)]` -/
def P16623358431787673364.Spec : Prop :=
  ∀ n, P16623358431787673364.a n = A064694 (n + 1)

end A064694

/-! ## A064694.P16234148982878965102

`∑[∑[n+1-A131119(xor(1, n+1))]]`
-/

namespace A064694.P16234148982878965102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A131119 (Nat.xor 1 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064694.P16234148982878965102

namespace A064694

/-- `∑[∑[n+1-A131119(xor(1, n+1))]]` -/
def P16234148982878965102.Spec : Prop :=
  ∀ n, P16234148982878965102.a n = A064694 (n + 1)

end A064694

/-! ## A064694.P14368444184707351365

`A212977(n)+A002620(n+2)`
-/

namespace A064694.P14368444184707351365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212977 n + A002620 (n + 2)

end

end A064694.P14368444184707351365

namespace A064694

/-- `A212977(n)+A002620(n+2)` -/
def P14368444184707351365.Spec : Prop :=
  ∀ n, P14368444184707351365.a n = A064694 (n + 1)

end A064694

/-! ## A064694.P14980295367945208531

`∑[A000982(n+1)+n+1]-A058187(n)`
-/

namespace A064694.P14980295367945208531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A058187 n

end

end A064694.P14980295367945208531

namespace A064694

/-- `∑[A000982(n+1)+n+1]-A058187(n)` -/
def P14980295367945208531.Spec : Prop :=
  ∀ n, P14980295367945208531.a n = A064694 (n + 1)

end A064694

/-! ## A064694.P12492278196211486907

`A003600(n+1)+A002620(n)-A058187(n)`
-/

namespace A064694.P12492278196211486907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003600 (n + 1) + (A002620 n - A058187 n)

end

end A064694.P12492278196211486907

namespace A064694

/-- `A003600(n+1)+A002620(n)-A058187(n)` -/
def P12492278196211486907.Spec : Prop :=
  ∀ n, P12492278196211486907.a n = A064694 (n + 1)

end A064694

/-! ## A064694.P10640810948684212347

`A008804(2*n+1)-A058187(n)`
-/

namespace A064694.P10640810948684212347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 (2 * n + 1) - A058187 n

end

end A064694.P10640810948684212347

namespace A064694

/-- `A008804(2*n+1)-A058187(n)` -/
def P10640810948684212347.Spec : Prop :=
  ∀ n, P10640810948684212347.a n = A064694 (n + 1)

end A064694

/-! ## A064694.P15252803709785638988

`A008804(2*n+1)-A008804(A052928(n))`
-/

namespace A064694.P15252803709785638988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 (2 * n + 1) - A008804 (A052928 n).toNat

end

end A064694.P15252803709785638988

namespace A064694

/-- `A008804(2*n+1)-A008804(A052928(n))` -/
def P15252803709785638988.Spec : Prop :=
  ∀ n, P15252803709785638988.a n = A064694 (n + 1)

end A064694

/-! ## A064694.P6092959665830944282

`A008804(2*n+1)-A008804(A122461(2*n))`
-/

namespace A064694.P6092959665830944282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 (2 * n + 1) - A008804 (A122461 (2 * n)).toNat

end

end A064694.P6092959665830944282

namespace A064694

/-- `A008804(2*n+1)-A008804(A122461(2*n))` -/
def P6092959665830944282.Spec : Prop :=
  ∀ n, P6092959665830944282.a n = A064694 (n + 1)

end A064694

/-!
# A064695: Complement of A064683.

The programs for A064695, there is no canonical definition to state claims against.
-/

/-! ## A064695.P2223595996475687939

`lt[A064696(n), 1]+1`
-/

namespace A064695.P2223595996475687939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064696 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A064695.P2223595996475687939

/-! ## A064695.P1346998295685302724

`lt[A064696(abs(1-n)), 1]`
-/

namespace A064695.P1346998295685302724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064696 |1 - (n : ℤ)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A064695.P1346998295685302724

/-! ## A064695.P11604396705243732177

`A093148(2*(n+1))+eq[0, A064696(n)]`
-/

namespace A064695.P11604396705243732177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093148 (2 * (n + 1)) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A064695.P11604396705243732177

/-! ## A064695.P1653532571391492480

`eq[A007949(3*n+1), A064696(n)]+1`
-/

namespace A064695.P1653532571391492480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064696 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064695.P1653532571391492480

/-! ## A064695.P4568522145195332278

`eq[A064696(n), A091337(2*(n+2))]+1`
-/

namespace A064695.P4568522145195332278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064696 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064695.P4568522145195332278

/-! ## A064695.P691955893899403474

`eq[A008683(n+1)^n/8, A064696(n)]+1`
-/

namespace A064695.P691955893899403474
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) ^ n : ℚ) / 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064696 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A064695.P691955893899403474

/-!
# A064696: Smallest value of s>0 such that A064683(s) is divisible by n, or 0 if n belongs to A064695.

The programs for A064696, there is no canonical definition to state claims against.
-/

/-! ## A064696.P3681799214386892159

`A106848(A038388(n+1)*A237593(n+1))`
-/

namespace A064696.P3681799214386892159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106848 (A038388 (n + 1) * A237593 (n + 1)).toNat

end

end A064696.P3681799214386892159

/-! ## A064696.P5384495844160071210

`A106848(lcm(A038388(n+1), A237593(n+1)))`
-/

namespace A064696.P5384495844160071210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106848 (Int.lcm (A038388 (n + 1)) (A237593 (n + 1)))

end

end A064696.P5384495844160071210

/-! ## A064696.P4197827606734548020

`A106848(2*A007913(2*(n+1))/A010685(n+1)*A237593(n+1))`
-/

namespace A064696.P4197827606734548020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106848 (SequenceMachineLib.roundAway (2 * ((A007913 (2 * (n + 1)) : ℚ) / (A010685 (n + 1) : ℚ)) * (A237593 (n + 1) : ℚ))).toNat

end

end A064696.P4197827606734548020

/-! ## A064696.P4732425371991555874

`A106848(A007913(2*(n+1))*A177002(2*n)/2*A237593(n+1))`
-/

namespace A064696.P4732425371991555874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106848 (SequenceMachineLib.roundAway ((A007913 (2 * (n + 1)) * A177002 (2 * n) : ℚ) / 2 * (A237593 (n + 1) : ℚ))).toNat

end

end A064696.P4732425371991555874

/-! ## A064696.P8738509484167756316

`A106848(n+1)%A000040(A261494(3*(n+1)))`
-/

namespace A064696.P8738509484167756316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106848 (n + 1)) (A000040 (A261494 (3 * (n + 1))).toNat)

end

end A064696.P8738509484167756316

/-!
# A064699: Integers for which the smallest m in A040076 such that n*2^m+1 is prime (A050921) increases.

The programs for A064699, there is no canonical definition to state claims against.
-/

/-! ## A064699.P3004092533559837244

`A028234(2*A350118(n+1))`
-/

namespace A064699.P3004092533559837244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * A350118 (n + 1)).toNat

end

end A064699.P3004092533559837244

/-! ## A064699.P10963544419462968589

`A034586(2*A350118(n+1))`
-/

namespace A064699.P10963544419462968589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034586 (2 * A350118 (n + 1)).toNat

end

end A064699.P10963544419462968589

/-! ## A064699.P1667113173555421573

`A078701(2*A350118(n+1))`
-/

namespace A064699.P1667113173555421573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (2 * A350118 (n + 1)).toNat

end

end A064699.P1667113173555421573

/-! ## A064699.P17182413367875311336

`A139391(2*A350118(n+1))`
-/

namespace A064699.P17182413367875311336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139391 (2 * A350118 (n + 1)).toNat

end

end A064699.P17182413367875311336

/-! ## A064699.P12483539265544165153

`A001281(lcm(2, A350118(n+1)))`
-/

namespace A064699.P12483539265544165153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.lcm 2 (A350118 (n + 1)))

end

end A064699.P12483539265544165153

