import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A337000: E.g.f.: 1 / ((1 - x)*(2 - exp(x))).

The programs for A337000, there is no canonical definition to state claims against.
-/

/-! ## A337000.P16301723895583408178

`n*a(n-1)+A000670(n)` with `a(0)=1`
-/

namespace A337000.P16301723895583408178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) + A000670 n

end

end A337000.P16301723895583408178

/-! ## A337000.P583017410583830541

`A122101(∑[n])+n*a(n-1)` with `a(0)=1`
-/

namespace A337000.P583017410583830541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122101 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1)

end

end A337000.P583017410583830541

/-! ## A337000.P15444929162554814875

`A154921(∑[n])+n*a(n-1)` with `a(0)=1`
-/

namespace A337000.P15444929162554814875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A154921 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1)

end

end A337000.P15444929162554814875

/-! ## A337000.P18192386854584437336

`A000629(n)/2+n*a(n-1)` with `a(0)=1`
-/

namespace A337000.P18192386854584437336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A000629 n : ℚ) / 2 + (n : ℚ) * a (n - 1)

end

end A337000.P18192386854584437336

/-! ## A337000.P10622459212450894207

`a(n-1)/cot(atan(n))+A076726(n)/2` with `a(0)=1`
-/

namespace A337000.P10622459212450894207
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / Real.cot (Real.arctan (n : ℝ)) + ((A076726 n : ℚ) / 2 : ℝ)

end

end A337000.P10622459212450894207

/-! ## A337000.P3385858438800699120

`a(n-1)/n^-1+A052875(n)+1` with `a(0)=1`
-/

namespace A337000.P3385858438800699120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) + (A052875 n + 1 : ℚ)

end

end A337000.P3385858438800699120

/-! ## A337000.P11133083831735909473

`∑{d}[n+1, A006936(#)]+a(n-1)/n^-1` with `a(0)=1`
-/

namespace A337000.P11133083831735909473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ d ∈ Nat.divisors (f1 n), A006936 d : ℤ) : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A337000.P11133083831735909473

/-! ## A337000.P7813821198431364581

`A052882(n)+A053525(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A337000.P7813821198431364581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052882 n + (A053525 n + (n : ℤ) * a (n - 1))

end

end A337000.P7813821198431364581

/-! ## A337000.P7031737707507356838

`∑[A000670(n)/A208529(n+2)]*A208529(n+2)`
-/

namespace A337000.P7031737707507356838
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000670 n : ℚ) / (A208529 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A208529 (n + 2) : ℚ)

end

end A337000.P7031737707507356838

/-!
# A337001: a(n) = n! * Sum_{k=0..n} k^3 / k!.

The programs for A337001, the canonical program `A337001.P14808715634224085260` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337001 has offset 0).

The definition of A337001 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337001.P14808715634224085260

`n*(n²+a(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A337001

/-- `n*(n²+a(n-1))` -/
def P14808715634224085260.Spec : Prop :=
  ∀ n, (P14808715634224085260.a n : ℤ) = A337001 n

theorem P14808715634224085260.correct : P14808715634224085260.Spec := by
  intro n
  simp only [A337001]

end A337001

/-! ## A337001.P15706987809716105607

`n*(a(n-1)+n^2)` with `a(0)=0`
-/

namespace A337001.P15706987809716105607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (a (n - 1) + n ^ 2)

end

end A337001.P15706987809716105607

namespace A337001

/-- `n*(a(n-1)+n^2)` -/
def P15706987809716105607.Spec : Prop :=
  ∀ n, (P15706987809716105607.a n : ℤ) = A337001 n

theorem P15706987809716105607.correct : P15706987809716105607.Spec := by
  intro n
  simp only [A337001, Nat.add_sub_cancel, A337001.P15706987809716105607.a, A337001.P14808715634224085260.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A337001

/-! ## A337001.P16313088111968127312

`floor(n*(a(n-1)+n*n))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A337001.P16313088111968127312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (a (n - 1) + n * n)

end

end A337001.P16313088111968127312

namespace A337001

/-- `floor(n*(a(n-1)+n*n))` -/
def P16313088111968127312.Spec : Prop :=
  ∀ n, (P16313088111968127312.a n : ℤ) = A337001 n

theorem P16313088111968127312.correct : P16313088111968127312.Spec := by
  intro n
  simp only [A337001, Nat.add_sub_cancel, A337001.P16313088111968127312.a, A337001.P14808715634224085260.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A337001

/-! ## A337001.P1869451930697541264

`n*(n²-floor(-a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A337001.P1869451930697541264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * ((n ^ 2 : ℤ) - (-a (n - 1)))

end

end A337001.P1869451930697541264

namespace A337001

/-- `n*(n²-floor(-a(n-1)))` -/
def P1869451930697541264.Spec : Prop :=
  ∀ n, P1869451930697541264.a n = A337001 n

end A337001

/-! ## A337001.P6643620160128808046

`n*(n²-ceil(-a(n-1)))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A337001.P6643620160128808046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * ((n ^ 2 : ℤ) - (-a (n - 1)))

end

end A337001.P6643620160128808046

namespace A337001

/-- `n*(n²-ceil(-a(n-1)))` -/
def P6643620160128808046.Spec : Prop :=
  ∀ n, P6643620160128808046.a n = A337001 n

end A337001

/-! ## A337001.P12122745742756513792

`n*(n²-round(-a(n-1)))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A337001.P12122745742756513792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * ((n ^ 2 : ℤ) - (-a (n - 1)))

end

end A337001.P12122745742756513792

namespace A337001

/-- `n*(n²-round(-a(n-1)))` -/
def P12122745742756513792.Spec : Prop :=
  ∀ n, P12122745742756513792.a n = A337001 n

end A337001

/-! ## A337001.P13868005643219502351

`(a(n-1)+n²)/n^(-1)` with `a(0)=0`
-/

namespace A337001.P13868005643219502351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + (n ^ 2 : ℚ)) / (n : ℚ) ^ (-1 : ℤ)

end

end A337001.P13868005643219502351

namespace A337001

/-- `(a(n-1)+n²)/n^(-1)` -/
def P13868005643219502351.Spec : Prop :=
  ∀ n, P13868005643219502351.a n = (A337001 n : ℚ)

end A337001

/-! ## A337001.P7911386834306562326

`n*a(n-1)+n*n*n` with `a(0)=0`
-/

namespace A337001.P7911386834306562326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * a (n - 1) + n * (n * n)

end

end A337001.P7911386834306562326

namespace A337001

/-- `n*a(n-1)+n*n*n` -/
def P7911386834306562326.Spec : Prop :=
  ∀ n, (P7911386834306562326.a n : ℤ) = A337001 n

theorem P7911386834306562326.correct : P7911386834306562326.Spec := by
  intro n
  simp only [A337001, Nat.add_sub_cancel, A337001.P7911386834306562326.a, A337001.P14808715634224085260.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A337001

/-! ## A337001.P12693989912240186393

`n^3+a(n-1)/n^(-1)` with `a(0)=0`
-/

namespace A337001.P12693989912240186393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 3 : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A337001.P12693989912240186393

namespace A337001

/-- `n^3+a(n-1)/n^(-1)` -/
def P12693989912240186393.Spec : Prop :=
  ∀ n, P12693989912240186393.a n = (A337001 n : ℚ)

end A337001

/-! ## A337001.P12852135736194922663

`n-n*(1-a(n-1)-n²)` with `a(0)=0`
-/

namespace A337001.P12852135736194922663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (n : ℤ) * (1 - a (n - 1) - (n ^ 2 : ℤ))

end

end A337001.P12852135736194922663

namespace A337001

/-- `n-n*(1-a(n-1)-n²)` -/
def P12852135736194922663.Spec : Prop :=
  ∀ n, P12852135736194922663.a n = A337001 n

end A337001

/-!
# A337002: a(n) = n! * Sum_{k=0..n} k^4 / k!.

The programs for A337002, the canonical program `A337002.P17959394115873942173` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337002 has offset 0).

The definition of A337002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337002.P17959394115873942173

`n*(n^3+a(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A337002

/-- `n*(n^3+a(n-1))` -/
def P17959394115873942173.Spec : Prop :=
  ∀ n, (P17959394115873942173.a n : ℤ) = A337002 n

theorem P17959394115873942173.correct : P17959394115873942173.Spec := by
  intro n
  simp only [A337002]

end A337002

/-! ## A337002.P8389631445361472956

`n*a(n-1)+n²²` with `a(0)=0`
-/

namespace A337002.P8389631445361472956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * a (n - 1) + (n ^ 2) ^ 2

end

end A337002.P8389631445361472956

namespace A337002

/-- `n*a(n-1)+n²²` -/
def P8389631445361472956.Spec : Prop :=
  ∀ n, (P8389631445361472956.a n : ℤ) = A337002 n

theorem P8389631445361472956.correct : P8389631445361472956.Spec := by
  intro n
  simp only [A337002, Nat.add_sub_cancel, A337002.P8389631445361472956.a, A337002.P17959394115873942173.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A337002

/-! ## A337002.P16093176352161832735

`n*(a(n-1)+n*n*n)` with `a(0)=0`
-/

namespace A337002.P16093176352161832735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (a (n - 1) + n * (n * n))

end

end A337002.P16093176352161832735

namespace A337002

/-- `n*(a(n-1)+n*n*n)` -/
def P16093176352161832735.Spec : Prop :=
  ∀ n, (P16093176352161832735.a n : ℤ) = A337002 n

theorem P16093176352161832735.correct : P16093176352161832735.Spec := by
  intro n
  simp only [A337002, Nat.add_sub_cancel, A337002.P16093176352161832735.a, A337002.P17959394115873942173.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A337002

/-! ## A337002.P1594072975478947077

`(a(n-1)+n^3)/n^(-1)` with `a(0)=0`
-/

namespace A337002.P1594072975478947077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + (n ^ 3 : ℚ)) / (n : ℚ) ^ (-1 : ℤ)

end

end A337002.P1594072975478947077

namespace A337002

/-- `(a(n-1)+n^3)/n^(-1)` -/
def P1594072975478947077.Spec : Prop :=
  ∀ n, P1594072975478947077.a n = (A337002 n : ℚ)

end A337002

/-! ## A337002.P15567334617604786588

`A058895(n)+n*(a(n-1)+1)` with `a(0)=0`
-/

namespace A337002.P15567334617604786588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A058895 n + (n : ℤ) * (a (n - 1) + 1)

end

end A337002.P15567334617604786588

namespace A337002

/-- `A058895(n)+n*(a(n-1)+1)` -/
def P15567334617604786588.Spec : Prop :=
  ∀ n, P15567334617604786588.a n = A337002 n

end A337002

/-! ## A337002.P17883971535844471079

`A002523(n)-(1-n*a(n-1))` with `a(0)=0`
-/

namespace A337002.P17883971535844471079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002523 n - (1 - (n : ℤ) * a (n - 1))

end

end A337002.P17883971535844471079

namespace A337002

/-- `A002523(n)-(1-n*a(n-1))` -/
def P17883971535844471079.Spec : Prop :=
  ∀ n, P17883971535844471079.a n = A337002 n

end A337002

/-! ## A337002.P12404052430839469698

`a(n-1)*A028310(n)-(A024040(n)-A000079(n)²)` with `a(0)=0`
-/

namespace A337002.P12404052430839469698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * A028310 n - (A024040 n - A000079 n ^ 2)

end

end A337002.P12404052430839469698

namespace A337002

/-- `a(n-1)*A028310(n)-(A024040(n)-A000079(n)²)` -/
def P12404052430839469698.Spec : Prop :=
  ∀ n, P12404052430839469698.a n = A337002 n

end A337002

/-!
# A337003: a(n) = Sum_{k=1..n, gcd(n,k) = 1} binomial(n,k)^2.

The programs for A337003, there is no canonical definition to state claims against.
-/

/-! ## A337003.P11643936581507710282

`lcm(lcm(6, (n+1)^3)/6, A033676(A152641(n+1)))`
-/

namespace A337003.P11643936581507710282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((Nat.lcm 6 ((n + 1) ^ 3) : ℚ) / 6)) (A033676 (A152641 (n + 1)).toNat)

end

end A337003.P11643936581507710282

/-!
# A337004: Turn sequence of the R5 dragon curve.

The programs for A337004, the canonical program `A337004.P1814785080480299496` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337004 has offset 1).

The definition of A337004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337004.P1814785080480299496

`or(1, -A175337(n))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A337004

/-- `or(1, -A175337(n))` -/
def P1814785080480299496.Spec : Prop :=
  ∀ n, P1814785080480299496.a n = A337004 (n + 1)

theorem P1814785080480299496.correct : P1814785080480299496.Spec := by
  intro n
  simp only [A337004, Nat.add_sub_cancel]

end A337004

/-! ## A337004.P11476310947656149726

`1-2%A277543(n+1)`
-/

namespace A337004.P11476310947656149726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod 2 (A277543 (n + 1))

end

end A337004.P11476310947656149726

namespace A337004

/-- `1-2%A277543(n+1)` -/
def P11476310947656149726.Spec : Prop :=
  ∀ n, P11476310947656149726.a n = A337004 (n + 1)

end A337004

/-! ## A337004.P3226624037563493836

`(-1)^A277543(2*(n+1))`
-/

namespace A337004.P3226624037563493836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A277543 (2 * (n + 1)) : ℤ)

end

end A337004.P3226624037563493836

namespace A337004

/-- `(-1)^A277543(2*(n+1))` -/
def P3226624037563493836.Spec : Prop :=
  ∀ n, P3226624037563493836.a n = (A337004 (n + 1) : ℚ)

end A337004

/-! ## A337004.P16131832386756760397

`A244895(A132739(n+1))`
-/

namespace A337004.P16131832386756760397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A132739 (n + 1)).toNat

end

end A337004.P16131832386756760397

namespace A337004

/-- `A244895(A132739(n+1))` -/
def P16131832386756760397.Spec : Prop :=
  ∀ n, P16131832386756760397.a n = A337004 (n + 1)

end A337004

/-! ## A337004.P3005655339429968406

`A244895(A359100(n+1))`
-/

namespace A337004.P3005655339429968406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A359100 (n + 1)).toNat

end

end A337004.P3005655339429968406

namespace A337004

/-- `A244895(A359100(n+1))` -/
def P3005655339429968406.Spec : Prop :=
  ∀ n, P3005655339429968406.a n = A337004 (n + 1)

end A337004

/-! ## A337004.P18129782568888663654

`A163812(A132739(2*(n+1)))`
-/

namespace A337004.P18129782568888663654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163812 (A132739 (2 * (n + 1))).toNat

end

end A337004.P18129782568888663654

namespace A337004

/-- `A163812(A132739(2*(n+1)))` -/
def P18129782568888663654.Spec : Prop :=
  ∀ n, P18129782568888663654.a n = A337004 (n + 1)

end A337004

/-! ## A337004.P13967440024508365227

`A343785(A175337(n)+3*n+1)`
-/

namespace A337004.P13967440024508365227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343785 (A175337 n + (3 * n + 1 : ℤ)).toNat

end

end A337004.P13967440024508365227

namespace A337004

/-- `A343785(A175337(n)+3*n+1)` -/
def P13967440024508365227.Spec : Prop :=
  ∀ n, P13967440024508365227.a n = A337004 (n + 1)

end A337004

/-! ## A337004.P13576858672214566005

`A328800((A175337(n)+1+n)%(n+1))`
-/

namespace A337004.P13576858672214566005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328800 (Int.tmod (A175337 n + 1 + (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A337004.P13576858672214566005

namespace A337004

/-- `A328800((A175337(n)+1+n)%(n+1))` -/
def P13576858672214566005.Spec : Prop :=
  ∀ n, P13576858672214566005.a n = A337004 (n + 1)

end A337004

/-! ## A337004.P8950219762790438620

`A176416(A175337(n)+2*(n+1)-2*n)`
-/

namespace A337004.P8950219762790438620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176416 (A175337 n + ((2 * (n + 1) : ℤ) - (2 * n : ℤ))).toNat

end

end A337004.P8950219762790438620

namespace A337004

/-- `A176416(A175337(n)+2*(n+1)-2*n)` -/
def P8950219762790438620.Spec : Prop :=
  ∀ n, P8950219762790438620.a n = A337004 (n + 1)

end A337004

/-! ## A337004.P8161686622033015891

`A165481((A175337(n)+4)*A001316(n))`
-/

namespace A337004.P8161686622033015891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165481 ((A175337 n + 4) * A001316 n).toNat

end

end A337004.P8161686622033015891

namespace A337004

/-- `A165481((A175337(n)+4)*A001316(n))` -/
def P8161686622033015891.Spec : Prop :=
  ∀ n, P8161686622033015891.a n = A337004 (n + 1)

end A337004

/-! ## A337004.P6479340369120838992

`A167753(A018900(C(2, n+1)+1)*A175337(n))`
-/

namespace A337004.P6479340369120838992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167753 (A018900 (Nat.choose 2 (n + 1) + 1) * A175337 n).toNat

end

end A337004.P6479340369120838992

namespace A337004

/-- `A167753(A018900(C(2, n+1)+1)*A175337(n))` -/
def P6479340369120838992.Spec : Prop :=
  ∀ n, P6479340369120838992.a n = A337004 (n + 1)

end A337004

/-! ## A337004.P8161883891360384407

`A008683(A004526(A277543(n+1)+gcd(n, n+1)))`
-/

namespace A337004.P8161883891360384407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A004526 (A277543 (n + 1) + (Nat.gcd n (n + 1) : ℤ)).toNat).toNat

end

end A337004.P8161883891360384407

namespace A337004

/-- `A008683(A004526(A277543(n+1)+gcd(n, n+1)))` -/
def P8161883891360384407.Spec : Prop :=
  ∀ n, P8161883891360384407.a n = A337004 (n + 1)

end A337004

/-! ## A337004.P14338907062231985290

`A175337(record[xor(3, n)])-A175337(n)`
-/

namespace A337004.P14338907062231985290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175337 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) - A175337 n

end

end A337004.P14338907062231985290

namespace A337004

/-- `A175337(record[xor(3, n)])-A175337(n)` -/
def P14338907062231985290.Spec : Prop :=
  ∀ n, P14338907062231985290.a n = A337004 (n + 1)

end A337004

/-! ## A337004.P6300862769119614692

`A081729(A003961(n+1)*A175337(n))`
-/

namespace A337004.P6300862769119614692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A003961 (n + 1) * A175337 n).toNat

end

end A337004.P6300862769119614692

namespace A337004

/-- `A081729(A003961(n+1)*A175337(n))` -/
def P6300862769119614692.Spec : Prop :=
  ∀ n, P6300862769119614692.a n = A337004 (n + 1)

end A337004

/-! ## A337004.P8106422224130978840

`A115638(and(A115638(n), A175337(n)))`
-/

namespace A337004.P8106422224130978840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115638 (Int.land (A115638 n) (A175337 n)).toNat

end

end A337004.P8106422224130978840

namespace A337004

/-- `A115638(and(A115638(n), A175337(n)))` -/
def P8106422224130978840.Spec : Prop :=
  ∀ n, P8106422224130978840.a n = A337004 (n + 1)

end A337004

/-! ## A337004.P14779216723241448812

`A106400(A046644(n+1)*A175337(n))`
-/

namespace A337004.P14779216723241448812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A046644 (n + 1) * A175337 n).toNat

end

end A337004.P14779216723241448812

namespace A337004

/-- `A106400(A046644(n+1)*A175337(n))` -/
def P14779216723241448812.Spec : Prop :=
  ∀ n, P14779216723241448812.a n = A337004 (n + 1)

end A337004

/-! ## A337004.P14555506809653317543

`A081729(A034962(n+1)*A175337(n))`
-/

namespace A337004.P14555506809653317543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A034962 (n + 1) * A175337 n).toNat

end

end A337004.P14555506809653317543

namespace A337004

/-- `A081729(A034962(n+1)*A175337(n))` -/
def P14555506809653317543.Spec : Prop :=
  ∀ n, P14555506809653317543.a n = A337004 (n + 1)

end A337004

/-! ## A337004.P14199818903197166481

`A008683(A184552(Δ[A072960(n+1)]))`
-/

namespace A337004.P14199818903197166481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A184552 (f1 (n + 1) - f1 n).toNat).toNat

end

end A337004.P14199818903197166481

namespace A337004

/-- `A008683(A184552(Δ[A072960(n+1)]))` -/
def P14199818903197166481.Spec : Prop :=
  ∀ n, P14199818903197166481.a n = A337004 (n + 1)

end A337004

/-! ## A337004.P1953599789542565008

`A008836(lcm(A100484(n+1), A277543(n+1)))`
-/

namespace A337004.P1953599789542565008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (Int.lcm (A100484 (n + 1)) (A277543 (n + 1)))

end

end A337004.P1953599789542565008

namespace A337004

/-- `A008836(lcm(A100484(n+1), A277543(n+1)))` -/
def P1953599789542565008.Spec : Prop :=
  ∀ n, P1953599789542565008.a n = A337004 (n + 1)

end A337004

/-!
# A337005: Leech's order 13 uniform cyclic squarefree word.

The programs for A337005, there is no canonical definition to state claims against.
-/

/-! ## A337005.P15236266287098056615

`A323989(A008554(n+1)+16)`
-/

namespace A337005.P15236266287098056615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323989 (A008554 (n + 1) + 16).toNat

end

end A337005.P15236266287098056615

/-! ## A337005.P9662313785953600162

`A323989(A250038(n+2))`
-/

namespace A337005.P9662313785953600162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323989 (A250038 (n + 2)).toNat

end

end A337005.P9662313785953600162

/-! ## A337005.P8536920517682985019

`A287520(∑[A209187(A212389(n))])`
-/

namespace A337005.P8536920517682985019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209187 (A212389 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287520 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A337005.P8536920517682985019

/-! ## A337005.P15688652939532369042

`A097509(A102726(n))-A006928(2*(n+1))`
-/

namespace A337005.P15688652939532369042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 (A102726 n).toNat - A006928 (2 * (n + 1))

end

end A337005.P15688652939532369042

/-! ## A337005.P11616006906661524534

`A010872(A318310(n+5)+A006038(n+3))`
-/

namespace A337005.P11616006906661524534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A318310 (n + 5) + A006038 (n + 3)).toNat

end

end A337005.P11616006906661524534

/-!
# A337006: Number of distinct pairs of externally tangent circles with radius sqrt(2) and center (p,q) where p and q are prime, p + q = A187797(n) and p <= q.

The programs for A337006, there is no canonical definition to state claims against.
-/

/-! ## A337006.P17849833395472501917

`A302231(lt[0, A302231(n+1)]+1)`
-/

namespace A337006.P17849833395472501917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302231 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A337006.P17849833395472501917

/-! ## A337006.P14975482758851366736

`A302231(A187797(n+1)/2)`
-/

namespace A337006.P14975482758851366736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302231 (SequenceMachineLib.roundAway ((A187797 (n + 1) : ℚ) / 2)).toNat

end

end A337006.P14975482758851366736

/-! ## A337006.P17256332174629757116

`A329041(A257756(n+1)%A046034(n+1))`
-/

namespace A337006.P17256332174629757116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329041 (Int.tmod (A257756 (n + 1)) (A046034 (n + 1))).toNat

end

end A337006.P17256332174629757116

/-! ## A337006.P3838209726164864322

`gcd(A097637(A342097(2*n+1)), A209874(3*(n+1)))`
-/

namespace A337006.P3838209726164864322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097637 (A342097 (2 * n + 1)).toNat) (A209874 (3 * (n + 1)))

end

end A337006.P3838209726164864322

/-!
# A337007: a(n) = gcd(b(n),b(n+1)), where b(n) = A336957(n).

The programs for A337007, there is no canonical definition to state claims against.
-/

/-! ## A337007.P14658427896950925470

`gcd(A336957(n+1), A336957(n+2))`
-/

namespace A337007.P14658427896950925470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A336957 (n + 1)) (A336957 (n + 2))

end

end A337007.P14658427896950925470

/-! ## A337007.P17821142048998068089

`gcd(Δ[A336957(ϕ²-(ϕ-n))], A336957(ϕ²-(ϕ-n)))`
-/

namespace A337007.P17821142048998068089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A336957 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat)

end

end A337007.P17821142048998068089

/-! ## A337007.P10578223147247323574

`gcd(A338051(n+1)+1+n, Δ[A338051(n+1)+1+n])`
-/

namespace A337007.P10578223147247323574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338051 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A338051 (n + 1) + 1 + (n : ℤ)) (f1 (n + 1) - f1 n)

end

end A337007.P10578223147247323574

/-! ## A337007.P2299296322147654696

`A337008(n+1)%A091082(n+1)`
-/

namespace A337007.P2299296322147654696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337008 (n + 1)) (A091082 (n + 1))

end

end A337007.P2299296322147654696

/-! ## A337007.P17996492896923487878

`A337008(n+1)+A000007(A000041(n))`
-/

namespace A337007.P17996492896923487878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337008 (n + 1) + A000007 (A000041 n).toNat

end

end A337007.P17996492896923487878

/-!
# A337008: Product of distinct primes dividing both b(n) and b(n+1), where b(n) = A336957(n).

The programs for A337008, there is no canonical definition to state claims against.
-/

/-! ## A337008.P15672781751963544898

`∏{p}[A337007(n+1), #]`
-/

namespace A337008.P15672781751963544898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A337008.P15672781751963544898

/-! ## A337008.P14031210639637975195

`A007947(A337007(n+1))`
-/

namespace A337008.P14031210639637975195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A337007 (n + 1)).toNat

end

end A337008.P14031210639637975195

/-! ## A337008.P7043857109067048200

`∏{p}[gcd(A336957(n+1), A336957(n+2)), #]`
-/

namespace A337008.P7043857109067048200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A336957 (n + 1)) (A336957 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A337008.P7043857109067048200

/-! ## A337008.P2180200693984111682

`A007947(gcd(A336957(n+1), A336957(n+2)))`
-/

namespace A337008.P2180200693984111682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (Int.gcd (A336957 (n + 1)) (A336957 (n + 2)))

end

end A337008.P2180200693984111682

/-! ## A337008.P12664704588768641396

`gcd(A034386(n+4), A337007(n+1))`
-/

namespace A337008.P12664704588768641396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 (n + 4)) (A337007 (n + 1))

end

end A337008.P12664704588768641396

/-! ## A337008.P7223587551339951843

`A007913(A003557(A337007(n+1)²))`
-/

namespace A337008.P7223587551339951843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A003557 (A337007 (n + 1) ^ 2).toNat).toNat

end

end A337008.P7223587551339951843

/-!
# A337009: Triangle of the Multiset Transform of the Fibonacci Sequence.

The programs for A337009, there is no canonical definition to state claims against.
-/

/-! ## A337009.P8768847768269136786

`A102705(A344610(n)%A102705(n+3))`
-/

namespace A337009.P8768847768269136786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (Int.tmod (A344610 n) (A102705 (n + 3))).toNat

end

end A337009.P8768847768269136786

/-! ## A337009.P4068010075600481278

`A102705(A344610(A151818(n)+n))`
-/

namespace A337009.P4068010075600481278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A344610 (A151818 n + (n : ℤ)).toNat).toNat

end

end A337009.P4068010075600481278

/-! ## A337009.P9969644247907551415

`A102705(or(A151818(n), A344610(n)))`
-/

namespace A337009.P9969644247907551415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (Int.lor (A151818 n) (A344610 n)).toNat

end

end A337009.P9969644247907551415

/-! ## A337009.P14229918810794721136

`A193687(or(A151818(n), A344610(n)))`
-/

namespace A337009.P14229918810794721136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193687 (Int.lor (A151818 n) (A344610 n)).toNat

end

end A337009.P14229918810794721136

/-! ## A337009.P15584255008588204941

`A193687(∑[A151818(n)]*A344610(n))`
-/

namespace A337009.P15584255008588204941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151818 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193687 ((∑ j ∈ Finset.range (n + 1), f1 j) * A344610 n).toNat

end

end A337009.P15584255008588204941

/-!
# A337010: a(n) = exp(-1/2) * Sum_{k>=0} (2*k + 3)^n / (2^k * k!).

The programs for A337010, there is no canonical definition to state claims against.
-/

/-! ## A337010.P7134427426326335731

`Δ[A007405(n)]`
-/

namespace A337010.P7134427426326335731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A337010.P7134427426326335731

/-! ## A337010.P5102322605032132751

`record[Δ[A337038(A028242(n))]]`
-/

namespace A337010.P5102322605032132751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337038 (A028242 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337010.P5102322605032132751

/-! ## A337010.P11032565127302051989

`A007405(n+1)-A007405(n)`
-/

namespace A337010.P11032565127302051989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007405 (n + 1) - A007405 n

end

end A337010.P11032565127302051989

/-! ## A337010.P3806973770600708400

`A337038(n+2)-A337038(n)`
-/

namespace A337010.P3806973770600708400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337038 (n + 2) - A337038 n

end

end A337010.P3806973770600708400

/-! ## A337010.P14824302937675227902

`Δ[A337038(n+1)+A337038(n)]`
-/

namespace A337010.P14824302937675227902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337038 (n + 1) + A337038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A337010.P14824302937675227902

/-!
# A337011: a(n) = 2^n * exp(-1/2) * Sum_{k>=0} (k + 2)^n / (2^k * k!).

The programs for A337011, there is no canonical definition to state claims against.
-/

/-! ## A337011.P8952607801645319691

`Δ[Δ[A004211(n)]]-A004211(n)`
-/

namespace A337011.P8952607801645319691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004211 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A004211 n

end

end A337011.P8952607801645319691

/-!
# A337012: a(n) = exp(-1/2) * Sum_{k>=0} (2*k + n)^n / (2^k * k!).

The programs for A337012, there is no canonical definition to state claims against.
-/

/-! ## A337012.P2793157943285498467

`round((A189704((n+3)^n+1)-1)/4)`
-/

namespace A337012.P2793157943285498467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A189704 ((n + 3) ^ n + 1) - 1 : ℚ) / 4)

end

end A337012.P2793157943285498467

/-!
# A337013: Prime numbers arising in A336817.

The programs for A337013, there is no canonical definition to state claims against.
-/

/-! ## A337013.P14946793523335324444

`xor(A336817(n+1), A336817(n+2))`
-/

namespace A337013.P14946793523335324444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A336817 (n + 1)) (A336817 (n + 2))

end

end A337013.P14946793523335324444

/-!
# A337015: Number of distinct transitive subgroups of S_n, counting conjugates as distinct.

The programs for A337015, there is no canonical definition to state claims against.
-/

/-! ## A337015.P4015773172153882347

`A238617(A227389(n!))`
-/

namespace A337015.P4015773172153882347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238617 (A227389 (Nat.factorial n)).toNat

end

end A337015.P4015773172153882347

/-! ## A337015.P6184197714733700778

`A105512(A071968(n))+1`
-/

namespace A337015.P6184197714733700778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105512 (A071968 n).toNat + 1

end

end A337015.P6184197714733700778

/-!
# A337016: a(0) = 0. Successive terms are double the previous, then with their digits incremented by 1.

The programs for A337016, the canonical program `A337016.P10929223580667973831` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337016 has offset 0).

The definition of A337016 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A216556, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337016.P10929223580667973831

`A216556(2*a(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A337016

/-- `A216556(2*a(n-1))` -/
def P10929223580667973831.Spec : Prop :=
  ∀ n, P10929223580667973831.a n = A337016 n

theorem P10929223580667973831.correct : P10929223580667973831.Spec := by
  intro n
  simp only [A337016]

end A337016

/-! ## A337016.P3353336474801470005

`A048379(2*a(n-1))` with `a(0)=0`
-/

namespace A337016.P3353336474801470005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A048379 (2 * a (n - 1)).toNat

end

end A337016.P3353336474801470005

namespace A337016

/-- `A048379(2*a(n-1))` -/
def P3353336474801470005.Spec : Prop :=
  ∀ n, P3353336474801470005.a n = A337016 n

end A337016

/-! ## A337016.P16089084926873972461

`A048379(lcm(2, a(n-1)))` with `a(0)=0`
-/

namespace A337016.P16089084926873972461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A048379 (Int.lcm 2 (a (n - 1)))

end

end A337016.P16089084926873972461

namespace A337016

/-- `A048379(lcm(2, a(n-1)))` -/
def P16089084926873972461.Spec : Prop :=
  ∀ n, P16089084926873972461.a n = A337016 n

end A337016

/-! ## A337016.P18151868783921556425

`A048379(A005843(a(n-1)))` with `a(0)=0`
-/

namespace A337016.P18151868783921556425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A048379 (A005843 (a (n - 1)).toNat).toNat

end

end A337016.P18151868783921556425

namespace A337016

/-- `A048379(A005843(a(n-1)))` -/
def P18151868783921556425.Spec : Prop :=
  ∀ n, P18151868783921556425.a n = A337016 n

end A337016

/-! ## A337016.P6487044757364988754

`A048379(A064680(a(n-1)))` with `a(0)=0`
-/

namespace A337016.P6487044757364988754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A048379 (A064680 (a (n - 1)).toNat).toNat

end

end A337016.P6487044757364988754

namespace A337016

/-- `A048379(A064680(a(n-1)))` -/
def P6487044757364988754.Spec : Prop :=
  ∀ n, P6487044757364988754.a n = A337016 n

end A337016

/-!
# A337017: a(n) is the dimension of the Lie-admissible operad of degree n.

The programs for A337017, there is no canonical definition to state claims against.
-/

/-! ## A337017.P12080529814842813561

`A366762(A302103(n)+n)`
-/

namespace A337017.P12080529814842813561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366762 (A302103 n + (n : ℤ)).toNat

end

end A337017.P12080529814842813561

/-!
# A337018: a(n) is the number of hexagons at distance n from the central hexagon of a hexaflake.

The programs for A337018, there is no canonical definition to state claims against.
-/

/-! ## A337018.P13273965389597313681

`A323642(A337486(n+1))`
-/

namespace A337018.P13273965389597313681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323642 (A337486 (n + 1)).toNat

end

end A337018.P13273965389597313681

/-! ## A337018.P13717067003464372220

`∏{p}[A003472(n+4), A030330(#)]`
-/

namespace A337018.P13717067003464372220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003472 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A030330 p

end

end A337018.P13717067003464372220

/-! ## A337018.P13210464117040100237

`A000005(A035126(n+1))*A036450(n+1)`
-/

namespace A337018.P13210464117040100237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A035126 (n + 1)).toNat * A036450 (n + 1)

end

end A337018.P13210464117040100237

/-!
# A337020: Maximum number of circles with unit area that can be packed into a square with an area of n.

The programs for A337020, there is no canonical definition to state claims against.
-/

/-! ## A337020.P13378316879776231698

`∑[A286998(A349686(∏{p}[n+1, #]))]`
-/

namespace A337020.P13378316879776231698
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286998 (A349686 (∏ p ∈ Nat.primeFactors (f2 n), p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337020.P13378316879776231698

/-! ## A337020.P11257246076743262255

`∑[A007732(A000020(n+1))%A105203(n)]`
-/

namespace A337020.P11257246076743262255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007732 (A000020 (n + 1)).toNat) (A105203 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337020.P11257246076743262255

/-! ## A337020.P9278096981726575136

`A002487(A000720(n+1))+floor(A339113(3*n+1)/86)`
-/

namespace A337020.P9278096981726575136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A000720 (n + 1)).toNat + ⌊(A339113 (3 * n + 1) : ℚ) / 86⌋

end

end A337020.P9278096981726575136

/-! ## A337020.P8824249964560302172

`∑[A147037(n+1)%A105203(n)]`
-/

namespace A337020.P8824249964560302172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147037 (n + 1)) (A105203 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337020.P8824249964560302172

/-! ## A337020.P293279189564559159

`A335884(or(A008617(n)², A277955(n)))`
-/

namespace A337020.P293279189564559159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335884 (Int.lor (A008617 n ^ 2) (A277955 n)).toNat

end

end A337020.P293279189564559159

/-!
# A337021: The number of n-step self avoiding walks on a 3D cubic lattice confined inside a box of size 2x2x2 where the walk starts at the center of the box.

The programs for A337021, there is no canonical definition to state claims against.
-/

/-! ## A337021.P16289442560707114718

`A005875(A341954(n)-A337074(n))`
-/

namespace A337021.P16289442560707114718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (A341954 n - A337074 n).toNat

end

end A337021.P16289442560707114718

/-! ## A337021.P12128414234154451294

`A005875(A140766(n+1)-A367029(n))`
-/

namespace A337021.P12128414234154451294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (A140766 (n + 1) - A367029 n).toNat

end

end A337021.P12128414234154451294

/-!
# A337022: a(n) is the number of positive integers <= A070826(n) with at least one odd prime divisor <= prime(n).

The programs for A337022, the canonical program `A337022.P7756858791337746187` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337022 has offset 1).

The definition of A337022 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337022.P7756858791337746187

`A002110(n+1)/2-A005867(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A337022

/-- `A002110(n+1)/2-A005867(n+1)` -/
def P7756858791337746187.Spec : Prop :=
  ∀ n, P7756858791337746187.a n = (A337022 (n + 1) : ℚ)

end A337022

/-! ## A337022.P17001173235125457772

`A070826(n+1)-A005867(n+1)`
-/

namespace A337022.P17001173235125457772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070826 (n + 1) - A005867 (n + 1)

end

end A337022.P17001173235125457772

namespace A337022

/-- `A070826(n+1)-A005867(n+1)` -/
def P17001173235125457772.Spec : Prop :=
  ∀ n, P17001173235125457772.a n = A337022 (n + 1)

end A337022

/-! ## A337022.P16375427163073816804

`A053144(n+1)-A070826(n+1)`
-/

namespace A337022.P16375427163073816804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053144 (n + 1) - A070826 (n + 1)

end

end A337022.P16375427163073816804

namespace A337022

/-- `A053144(n+1)-A070826(n+1)` -/
def P16375427163073816804.Spec : Prop :=
  ∀ n, P16375427163073816804.a n = A337022 (n + 1)

end A337022

/-! ## A337022.P3908940402490279111

`A070826(n+1)-∏[A000040(n+1)-1]`
-/

namespace A337022.P3908940402490279111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070826 (n + 1) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A337022.P3908940402490279111

namespace A337022

/-- `A070826(n+1)-∏[A000040(n+1)-1]` -/
def P3908940402490279111.Spec : Prop :=
  ∀ n, P3908940402490279111.a n = A337022 (n + 1)

end A337022

/-! ## A337022.P5861467238837771235

`∏[record[A006530(2*n+1)]]-A005867(n+1)`
-/

namespace A337022.P5861467238837771235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A005867 (n + 1)

end

end A337022.P5861467238837771235

namespace A337022

/-- `∏[record[A006530(2*n+1)]]-A005867(n+1)` -/
def P5861467238837771235.Spec : Prop :=
  ∀ n, P5861467238837771235.a n = A337022 (n + 1)

end A337022

/-! ## A337022.P1963812927884134115

`∏[record[A020639(2*n+1)]]-A005867(n+1)`
-/

namespace A337022.P1963812927884134115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A005867 (n + 1)

end

end A337022.P1963812927884134115

namespace A337022

/-- `∏[record[A020639(2*n+1)]]-A005867(n+1)` -/
def P1963812927884134115.Spec : Prop :=
  ∀ n, P1963812927884134115.a n = A337022 (n + 1)

end A337022

/-!
# A337023: Table read by antidiagonals: T(h,n) is the number of n-step self avoiding walks on a 3D cubic lattice confined inside a box of size 2h X 2h X 2h where the walk starts at the center of the box.

The programs for A337023, there is no canonical definition to state claims against.
-/

/-! ## A337023.P10795340230576847992

`A119875(A025581(n)*A225258(n+1))`
-/

namespace A337023.P10795340230576847992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119875 (A025581 n * A225258 (n + 1)).toNat

end

end A337023.P10795340230576847992

/-!
# A337024: Number of ways to tile a 2n X 2n square with 1 X 1 white and n X n black squares.

The programs for A337024, the canonical program `A337024.P16660323194600492104` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337024 has offset 1).

The definition of A337024 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337024.P16660323194600492104

`3*(n+1)²+10*(n+1)+3`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A337024

/-- `3*(n+1)²+10*(n+1)+3` -/
def P16660323194600492104.Spec : Prop :=
  ∀ n, (P16660323194600492104.a n : ℤ) = A337024 (n + 1)

theorem P16660323194600492104.correct : P16660323194600492104.Spec := by
  intro n
  simp only [A337024, Nat.add_sub_cancel]

end A337024

/-! ## A337024.P18040412677343888821

`∑[a(n-1)+6]` with `a(0)=16, a(1)=19`
-/

namespace A337024.P18040412677343888821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [16, 19] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337024.P18040412677343888821

namespace A337024

/-- `∑[a(n-1)+6]` -/
def P18040412677343888821.Spec : Prop :=
  ∀ n, (P18040412677343888821.a n : ℤ) = A337024 (n + 1)

end A337024

/-! ## A337024.P9662830778639648859

`Δ[C(n, 2)+n*(n+3)²]`
-/

namespace A337024.P9662830778639648859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n * (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A337024.P9662830778639648859

namespace A337024

/-- `Δ[C(n, 2)+n*(n+3)²]` -/
def P9662830778639648859.Spec : Prop :=
  ∀ n, P9662830778639648859.a n = A337024 (n + 1)

theorem P9662830778639648859.correct : P9662830778639648859.Spec := by
  intro n
  simp only [A337024, Nat.add_sub_cancel, A337024.P9662830778639648859.f1, A337024.P9662830778639648859.a, A337024.P16660323194600492104.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A337024

/-! ## A337024.P2999007150015851351

`Δ[a(n-1)+(2*n+1+n)*(n+3)]` with `a(0)=0`
-/

namespace A337024.P2999007150015851351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + (2 * n + 1 + n) * (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A337024.P2999007150015851351

namespace A337024

/-- `Δ[a(n-1)+(2*n+1+n)*(n+3)]` -/
def P2999007150015851351.Spec : Prop :=
  ∀ n, P2999007150015851351.a n = A337024 (n + 1)

end A337024

/-! ## A337024.P15622025716596722454

`A016777(n+1)*(n+4)`
-/

namespace A337024.P15622025716596722454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (n + 1) * (n + 4 : ℤ)

end

end A337024.P15622025716596722454

namespace A337024

/-- `A016777(n+1)*(n+4)` -/
def P15622025716596722454.Spec : Prop :=
  ∀ n, P15622025716596722454.a n = A337024 (n + 1)

theorem P15622025716596722454.correct : P15622025716596722454.Spec := by
  intro n
  simp only [A337024, Nat.add_sub_cancel, A337024.P15622025716596722454.a, A337024.P16660323194600492104.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A337024

/-! ## A337024.P13610892466254346977

`(3*n+4)*A020705(n)`
-/

namespace A337024.P13610892466254346977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 4 : ℤ) * A020705 n

end

end A337024.P13610892466254346977

namespace A337024

/-- `(3*n+4)*A020705(n)` -/
def P13610892466254346977.Spec : Prop :=
  ∀ n, P13610892466254346977.a n = A337024 (n + 1)

theorem P13610892466254346977.correct : P13610892466254346977.Spec := by
  intro n
  simp only [A337024, Nat.add_sub_cancel, A337024.P13610892466254346977.a, A337024.P16660323194600492104.a, A020705, A020705.P1213730512334166827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A337024

/-! ## A337024.P11582348012101135453

`Δ[(2*n+1)*∑[n+3]-lcm(n, n+1)]`
-/

namespace A337024.P11582348012101135453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℤ) - (Nat.lcm n (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A337024.P11582348012101135453

namespace A337024

/-- `Δ[(2*n+1)*∑[n+3]-lcm(n, n+1)]` -/
def P11582348012101135453.Spec : Prop :=
  ∀ n, P11582348012101135453.a n = A337024 (n + 1)

end A337024

/-! ## A337024.P18384577946908587607

`Δ[A162254(n+1)+n²]`
-/

namespace A337024.P18384577946908587607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162254 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A337024.P18384577946908587607

namespace A337024

/-- `Δ[A162254(n+1)+n²]` -/
def P18384577946908587607.Spec : Prop :=
  ∀ n, P18384577946908587607.a n = A337024 (n + 1)

end A337024

/-! ## A337024.P2013651590256771772

`Δ[A162256(n+1)+(n+1)²]`
-/

namespace A337024.P2013651590256771772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162256 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A337024.P2013651590256771772

namespace A337024

/-- `Δ[A162256(n+1)+(n+1)²]` -/
def P2013651590256771772.Spec : Prop :=
  ∀ n, P2013651590256771772.a n = A337024 (n + 1)

end A337024

/-! ## A337024.P11170114240768741267

`Δ[A024966(n)+Δ[A000124(n)²]]`
-/

namespace A337024.P11170114240768741267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024966 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A337024.P11170114240768741267

namespace A337024

/-- `Δ[A024966(n)+Δ[A000124(n)²]]` -/
def P11170114240768741267.Spec : Prop :=
  ∀ n, P11170114240768741267.a n = A337024 (n + 1)

end A337024

/-! ## A337024.P8163672173057627230

`Δ[A056105(n+1)+∑[A056105(n+1)]]`
-/

namespace A337024.P8163672173057627230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A337024.P8163672173057627230

namespace A337024

/-- `Δ[A056105(n+1)+∑[A056105(n+1)]]` -/
def P8163672173057627230.Spec : Prop :=
  ∀ n, P8163672173057627230.a n = A337024 (n + 1)

end A337024

/-! ## A337024.P1819343667144475312

`∑[A016777(record[A006257(n)+5])]`
-/

namespace A337024.P1819343667144475312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337024.P1819343667144475312

namespace A337024

/-- `∑[A016777(record[A006257(n)+5])]` -/
def P1819343667144475312.Spec : Prop :=
  ∀ n, P1819343667144475312.a n = A337024 (n + 1)

end A337024

/-! ## A337024.P12916827272083458369

`Δ[A178312(2*n+1)+Δ[A178312(2*n)]]`
-/

namespace A337024.P12916827272083458369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178312 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178312 (2 * n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A337024.P12916827272083458369

namespace A337024

/-- `Δ[A178312(2*n+1)+Δ[A178312(2*n)]]` -/
def P12916827272083458369.Spec : Prop :=
  ∀ n, P12916827272083458369.a n = A337024 (n + 1)

end A337024

/-!
# A337025: Number of n-state 2-symbol halt-free Turing machines.

The programs for A337025, the canonical program `A337025.P293791528092561715` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337025 has offset 0).

The definition of A337025 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337025.P293791528092561715

`(4*n)²^n`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A337025

/-- `(4*n)²^n` -/
def P293791528092561715.Spec : Prop :=
  ∀ n, (P293791528092561715.a n : ℤ) = A337025 n

theorem P293791528092561715.correct : P293791528092561715.Spec := by
  intro n
  simp only [A337025]

end A337025

/-! ## A337025.P8219948860615459999

`record[(-(2*n))^n]`
-/

namespace A337025.P8219948860615459999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(2 * n : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337025.P8219948860615459999

namespace A337025

/-- `record[(-(2*n))^n]` -/
def P8219948860615459999.Spec : Prop :=
  ∀ n, P8219948860615459999.a n = A337025 n

end A337025

/-! ## A337025.P350415815159796873

`A091483(n)²`
-/

namespace A337025.P350415815159796873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091483 n ^ 2

end

end A337025.P350415815159796873

namespace A337025

/-- `A091483(n)²` -/
def P350415815159796873.Spec : Prop :=
  ∀ n, P350415815159796873.a n = A337025 n

end A337025

/-! ## A337025.P17074960061891986039

`A066642(4*n)`
-/

namespace A337025.P17074960061891986039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066642 (4 * n)

end

end A337025.P17074960061891986039

namespace A337025

/-- `A066642(4*n)` -/
def P17074960061891986039.Spec : Prop :=
  ∀ n, P17074960061891986039.a n = A337025 n

end A337025

/-! ## A337025.P3853808891374380885

`A078707(4*n)`
-/

namespace A337025.P3853808891374380885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078707 (4 * n)

end

end A337025.P3853808891374380885

namespace A337025

/-- `A078707(4*n)` -/
def P3853808891374380885.Spec : Prop :=
  ∀ n, P3853808891374380885.a n = A337025 n

end A337025

/-!
# A337026: a(n) = (2/3) * Sum_{k>=0} (2*k + 1)^n / 3^k.

The programs for A337026, there is no canonical definition to state claims against.
-/

/-! ## A337026.P11334056255644606512

`3*A189919(n)-a(n-1)` with `a(0)=1`
-/

namespace A337026.P11334056255644606512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A189919 n - a (n - 1)

end

end A337026.P11334056255644606512

/-! ## A337026.P14484006103772418519

`∑[A048720(A147998(n+1))+1]`
-/

namespace A337026.P14484006103772418519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048720 (A147998 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337026.P14484006103772418519

/-!
# A337027: a(n) = (1/2) * Sum_{k>=0} (2*k + n)^n / 2^k.

The programs for A337027, there is no canonical definition to state claims against.
-/

/-! ## A337027.P12281162183607941700

`A124497(A024815(n))+A000695(n)`
-/

namespace A337027.P12281162183607941700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124497 (A024815 n).toNat + A000695 n

end

end A337027.P12281162183607941700

/-!
# A337028: Numbers k such that k + A001414(k), k - A001414(k) and k mod A001414(k) are all prime.

The programs for A337028, there is no canonical definition to state claims against.
-/

/-! ## A337028.P4525911445528125058

`A050705(A286926(n+1)%A057874(n))`
-/

namespace A337028.P4525911445528125058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050705 (Int.tmod (A286926 (n + 1)) (A057874 n)).toNat

end

end A337028.P4525911445528125058

/-! ## A337028.P11846068116914503133

`A050705(A346130(n+1)%A014602(n+1))`
-/

namespace A337028.P11846068116914503133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050705 (Int.tmod (A346130 (n + 1)) (A014602 (n + 1))).toNat

end

end A337028.P11846068116914503133

/-! ## A337028.P14439916661102718278

`A050703(lt[A160464(2*(n+2)), A000142(n)])`
-/

namespace A337028.P14439916661102718278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160464 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050703 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A337028.P14439916661102718278

/-! ## A337028.P3228025929529244256

`A050705(A108586(n+1)%A229028(2*(n+2)))`
-/

namespace A337028.P3228025929529244256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050705 (Int.tmod (A108586 (n + 1)) (A229028 (2 * (n + 2)))).toNat

end

end A337028.P3228025929529244256

/-! ## A337028.P12568627793872666313

`A050703(lt[A160464(2*(n+2)), A002931(n+1)])`
-/

namespace A337028.P12568627793872666313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160464 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050703 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A337028.P12568627793872666313

/-!
# A337029: a(n) is the number of k such that phi(k) = A002034(k^n).

The programs for A337029, there is no canonical definition to state claims against.
-/

/-! ## A337029.P17228123440137753560

`Δ[eq[1, A336711(n+1)]]`
-/

namespace A337029.P17228123440137753560
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336711 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A337029.P17228123440137753560

/-! ## A337029.P16150543524406370576

`Δ[lt[A336711(n+1), A058321(n)]]`
-/

namespace A337029.P16150543524406370576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336711 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058321 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A337029.P16150543524406370576

/-! ## A337029.P15035357059310935038

`Δ[record[A254667(n)-A336711(n+1)]]`
-/

namespace A337029.P15035357059310935038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n - A336711 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A337029.P15035357059310935038

/-! ## A337029.P11174004111864833523

`Δ[lt[A336711(n+1), A039649(n+1)]]`
-/

namespace A337029.P11174004111864833523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336711 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A337029.P11174004111864833523

/-! ## A337029.P250356648335614014

`Δ[lt[A336711(n+1), A061243(n+1)]]`
-/

namespace A337029.P250356648335614014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336711 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061243 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A337029.P250356648335614014

/-! ## A337029.P531189281030125955

`Δ[lt[A336711(n+1), A122416(n+1)]]`
-/

namespace A337029.P531189281030125955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336711 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122416 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A337029.P531189281030125955

/-!
# A337030: a(n) is the number of squarefree composite numbers < prime(n).

The programs for A337030, the canonical program `A337030.P11428222574331845450` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337030 has offset 1).

The definition of A337030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337030.P4549394899551571396

`A112929(n+1)-(n+1)`
-/

namespace A337030.P4549394899551571396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112929 (n + 1) - (n + 1 : ℤ)

end

end A337030.P4549394899551571396

namespace A337030

/-- `A112929(n+1)-(n+1)` -/
def P4549394899551571396.Spec : Prop :=
  ∀ n, P4549394899551571396.a n = A337030 (n + 1)

end A337030

/-! ## A337030.P9336014380848992719

`A071403(n+1)-(n+2)`
-/

namespace A337030.P9336014380848992719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071403 (n + 1) - (n + 2 : ℤ)

end

end A337030.P9336014380848992719

namespace A337030

/-- `A071403(n+1)-(n+2)` -/
def P9336014380848992719.Spec : Prop :=
  ∀ n, P9336014380848992719.a n = A337030 (n + 1)

end A337030

/-! ## A337030.P8020938594112560758

`A112930(n+1)-(n+3)`
-/

namespace A337030.P8020938594112560758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112930 (n + 1) - (n + 3 : ℤ)

end

end A337030.P8020938594112560758

namespace A337030

/-- `A112930(n+1)-(n+3)` -/
def P8020938594112560758.Spec : Prop :=
  ∀ n, P8020938594112560758.a n = A337030 (n + 1)

end A337030

/-! ## A337030.P11428222574331845450

`A061398(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A337030

/-- `A061398(n)+a(n-1)` -/
def P11428222574331845450.Spec : Prop :=
  ∀ n, P11428222574331845450.a n = A337030 (n + 1)

theorem P11428222574331845450.correct : P11428222574331845450.Spec := by
  intro n
  simp only [A337030, Nat.add_sub_cancel]

end A337030

/-! ## A337030.P7212011664518162318

`∑[A061398(n+1)]-A061398(n+1)`
-/

namespace A337030.P7212011664518162318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A061398 (n + 1)

end

end A337030.P7212011664518162318

namespace A337030

/-- `∑[A061398(n+1)]-A061398(n+1)` -/
def P7212011664518162318.Spec : Prop :=
  ∀ n, P7212011664518162318.a n = A337030 (n + 1)

end A337030

/-! ## A337030.P14242500337921178001

`A013928(A112925(n+1))-n`
-/

namespace A337030.P14242500337921178001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A112925 (n + 1)).toNat - (n : ℤ)

end

end A337030.P14242500337921178001

namespace A337030

/-- `A013928(A112925(n+1))-n` -/
def P14242500337921178001.Spec : Prop :=
  ∀ n, P14242500337921178001.a n = A337030 (n + 1)

end A337030

/-! ## A337030.P12940840488255532101

`A013928(A000040(n+1))-(n+1)`
-/

namespace A337030.P12940840488255532101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A000040 (n + 1)).toNat - (n + 1 : ℤ)

end

end A337030.P12940840488255532101

namespace A337030

/-- `A013928(A000040(n+1))-(n+1)` -/
def P12940840488255532101.Spec : Prop :=
  ∀ n, P12940840488255532101.a n = A337030 (n + 1)

end A337030

/-! ## A337030.P1093750283793825580

`A013928(A008864(n+1))-(n+2)`
-/

namespace A337030.P1093750283793825580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A008864 (n + 1)).toNat - (n + 2 : ℤ)

end

end A337030.P1093750283793825580

namespace A337030

/-- `A013928(A008864(n+1))-(n+2)` -/
def P1093750283793825580.Spec : Prop :=
  ∀ n, P1093750283793825580.a n = A337030 (n + 1)

end A337030

/-! ## A337030.P975462286943853802

`A013928(A112926(n+1))-(n+2)`
-/

namespace A337030.P975462286943853802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A112926 (n + 1)).toNat - (n + 2 : ℤ)

end

end A337030.P975462286943853802

namespace A337030

/-- `A013928(A112926(n+1))-(n+2)` -/
def P975462286943853802.Spec : Prop :=
  ∀ n, P975462286943853802.a n = A337030 (n + 1)

end A337030

/-! ## A337030.P17133642271473323170

`A023443(A112929(n+1)-n)`
-/

namespace A337030.P17133642271473323170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A112929 (n + 1) - (n : ℤ)).toNat

end

end A337030.P17133642271473323170

namespace A337030

/-- `A023443(A112929(n+1)-n)` -/
def P17133642271473323170.Spec : Prop :=
  ∀ n, P17133642271473323170.a n = A337030 (n + 1)

end A337030

/-! ## A337030.P10884246433765286594

`eq[1, A068328(n+2)]-n`
-/

namespace A337030.P10884246433765286594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A337030.P10884246433765286594

namespace A337030

/-- `eq[1, A068328(n+2)]-n` -/
def P10884246433765286594.Spec : Prop :=
  ∀ n, P10884246433765286594.a n = A337030 (n + 1)

end A337030

/-! ## A337030.P13225101207102117034

`eq[1, A072047(n+2)]-n`
-/

namespace A337030.P13225101207102117034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072047 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A337030.P13225101207102117034

namespace A337030

/-- `eq[1, A072047(n+2)]-n` -/
def P13225101207102117034.Spec : Prop :=
  ∀ n, P13225101207102117034.a n = A337030 (n + 1)

end A337030

/-! ## A337030.P7650010782075748113

`eq[2, A072048(n+2)]-n`
-/

namespace A337030.P7650010782075748113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072048 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A337030.P7650010782075748113

namespace A337030

/-- `eq[2, A072048(n+2)]-n` -/
def P7650010782075748113.Spec : Prop :=
  ∀ n, P7650010782075748113.a n = A337030 (n + 1)

end A337030

/-! ## A337030.P6241700665274834051

`record[n-A068328(n+1)]-n`
-/

namespace A337030.P6241700665274834051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A068328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A337030.P6241700665274834051

namespace A337030

/-- `record[n-A068328(n+1)]-n` -/
def P6241700665274834051.Spec : Prop :=
  ∀ n, P6241700665274834051.a n = A337030 (n + 1)

end A337030

/-! ## A337030.P1315817533976121132

`A243289(A071403(n+1))-1`
-/

namespace A337030.P1315817533976121132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243289 (A071403 (n + 1)).toNat - 1

end

end A337030.P1315817533976121132

namespace A337030

/-- `A243289(A071403(n+1))-1` -/
def P1315817533976121132.Spec : Prop :=
  ∀ n, P1315817533976121132.a n = A337030 (n + 1)

end A337030

/-! ## A337030.P8876561593167732138

`record[A073311(n+1)]-(n+1)`
-/

namespace A337030.P8876561593167732138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)

end

end A337030.P8876561593167732138

namespace A337030

/-- `record[A073311(n+1)]-(n+1)` -/
def P8876561593167732138.Spec : Prop :=
  ∀ n, P8876561593167732138.a n = A337030 (n + 1)

end A337030

/-! ## A337030.P16609331697524683968

`record[A231117(n+1)]-(n+1)`
-/

namespace A337030.P16609331697524683968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)

end

end A337030.P16609331697524683968

namespace A337030

/-- `record[A231117(n+1)]-(n+1)` -/
def P16609331697524683968.Spec : Prop :=
  ∀ n, P16609331697524683968.a n = A337030 (n + 1)

end A337030

/-! ## A337030.P1514785491453381978

`A387944(A000040(n+1))`
-/

namespace A337030.P1514785491453381978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387944 (A000040 (n + 1)).toNat

end

end A337030.P1514785491453381978

namespace A337030

/-- `A387944(A000040(n+1))` -/
def P1514785491453381978.Spec : Prop :=
  ∀ n, P1514785491453381978.a n = A337030 (n + 1)

end A337030

/-! ## A337030.P11862007401155685602

`A387944(A006005(n+1))`
-/

namespace A337030.P11862007401155685602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387944 (A006005 (n + 1)).toNat

end

end A337030.P11862007401155685602

namespace A337030

/-- `A387944(A006005(n+1))` -/
def P11862007401155685602.Spec : Prop :=
  ∀ n, P11862007401155685602.a n = A337030 (n + 1)

end A337030

/-! ## A337030.P2094474111704685941

`A387944(A006093(n+1))`
-/

namespace A337030.P2094474111704685941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387944 (A006093 (n + 1)).toNat

end

end A337030.P2094474111704685941

namespace A337030

/-- `A387944(A006093(n+1))` -/
def P2094474111704685941.Spec : Prop :=
  ∀ n, P2094474111704685941.a n = A337030 (n + 1)

end A337030

/-!
# A337032: a(n) = (n*sigma_9(n) - tau(n))/7 = (A282254(n) - A000594(n))/7, where tau is Ramanujan's tau, sigma_9(n) = Sum_{d divides n} d^9.

The programs for A337032, there is no canonical definition to state claims against.
-/

/-! ## A337032.P3223345593497605687

`(A282254(n+1)-A000594(n+1))/7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337032.P3223345593497605687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282254 (n + 1) - A000594 (n + 1) : ℚ) / 7

end

end A337032.P3223345593497605687

/-!
# A337033: The number of n-step self avoiding walks on a 3D cubic lattice confined inside a box of size 2x2x2 where the walk starts at the center of one of the box's faces.

The programs for A337033, there is no canonical definition to state claims against.
-/

/-! ## A337033.P11417145914342806363

`A337031(A152947(n+1))%A014346(n)`
-/

namespace A337033.P11417145914342806363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337031 (A152947 (n + 1)).toNat) (A014346 n)

end

end A337033.P11417145914342806363

/-! ## A337033.P14727157999931944760

`A005145(5^n)-ceil(log2(n+2))%2`
-/

namespace A337033.P14727157999931944760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (5 ^ n) - Int.tmod ⌈Real.logb 2 (n + 2 : ℝ)⌉ 2

end

end A337033.P14727157999931944760

/-!
# A337034: The number of n-step self avoiding walks on a 3D cubic lattice confined inside a box of size 2x2x2 where the walk starts at one of the box's corners.

The programs for A337034, there is no canonical definition to state claims against.
-/

/-! ## A337034.P6154688070346053447

`A125874(A197049(n))`
-/

namespace A337034.P6154688070346053447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125874 (A197049 n).toNat

end

end A337034.P6154688070346053447

/-!
# A337036: Numbers m such that the elements of all quadruples (x, y, z, w) satisfying x^3 + y^3 + z^3 = w^3 contained in the set of divisors of m are exactly the first k divisors of m for some k.

The programs for A337036, there is no canonical definition to state claims against.
-/

/-! ## A337036.P7786243342934658324

`A008594(A328149(n+1)^A196017(n+5))`
-/

namespace A337036.P7786243342934658324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (SequenceMachineLib.roundAway ((A328149 (n + 1) : ℚ) ^ (A196017 (n + 5) : ℤ))).toNat

end

end A337036.P7786243342934658324

/-! ## A337036.P11010630133943907981

`A008594(A328149(n+1)^A008284(n+1))`
-/

namespace A337036.P11010630133943907981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (SequenceMachineLib.roundAway ((A328149 (n + 1) : ℚ) ^ (A008284 (n + 1) : ℤ))).toNat

end

end A337036.P11010630133943907981

/-!
# A337037: Numbers whose every unordered factorization has a distinct sum of factors.

The programs for A337037, there is no canonical definition to state claims against.
-/

/-! ## A337037.P11943341514646528312

`comp[n*(4-char[30])]`
-/

namespace A337037.P11943341514646528312
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (4 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A337037.P11943341514646528312

/-! ## A337037.P11853105459070257900

`lt[val(2*floor(ϕ*(n+1))+n, 8), n%4]`
-/

namespace A337037.P11853105459070257900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ)).toNat 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337037.P11853105459070257900

/-! ## A337037.P18113815180680653008

`floor(or(3, A172326(n))/3)`
-/

namespace A337037.P18113815180680653008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lor 3 (A172326 n) : ℚ) / 3⌋

end

end A337037.P18113815180680653008

/-! ## A337037.P9994002497017391751

`lt[A088534(n+1), n%4]`
-/

namespace A337037.P9994002497017391751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A337037.P9994002497017391751

/-! ## A337037.P1851925074620113872

`lt[A284289(n)+n, lcm(4, n)]`
-/

namespace A337037.P1851925074620113872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A337037.P1851925074620113872

/-! ## A337037.P6096217848008429808

`comp[A337080(n+1)-1]+1`
-/

namespace A337037.P6096217848008429808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337080 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A337037.P6096217848008429808

/-! ## A337037.P8031229771914884690

`eq[1, dr(A069293(7*n+20))]`
-/

namespace A337037.P8031229771914884690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A069293 (7 * n + 20))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337037.P8031229771914884690

/-! ## A337037.P9347522925754123493

`lt[A031217(3*n+1), (4/gcd(4, n))²]`
-/

namespace A337037.P9347522925754123493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031217 (3 * n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 / (Nat.gcd 4 n : ℚ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A337037.P9347522925754123493

/-! ## A337037.P6293682164844759736

`comp[(n+3)*A007814(n+1)²-1]+1`
-/

namespace A337037.P6293682164844759736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A007814 (n + 1) ^ 2 - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A337037.P6293682164844759736

/-! ## A337037.P15068000730075735679

`filter[A180925(n+1), A166486(#)]`
-/

namespace A337037.P15068000730075735679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A337037.P15068000730075735679

/-!
# A337038: a(n) = exp(-1/2) * Sum_{k>=0} (2*k - 1)^n / (2^k * k!).

The programs for A337038, there is no canonical definition to state claims against.
-/

/-! ## A337038.P2131102707104645727

`A007405(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A337038.P2131102707104645727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007405 (n - 1) - a (n - 1)

end

end A337038.P2131102707104645727

/-! ## A337038.P11445485931388636774

`(2-A089810(n²+1))*A166922(n)`
-/

namespace A337038.P11445485931388636774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A089810 (n ^ 2 + 1)) * A166922 n

end

end A337038.P11445485931388636774

/-! ## A337038.P10474240017872261307

`A000034(A006257(n))*A166922(n)`
-/

namespace A337038.P10474240017872261307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A006257 n).toNat * A166922 n

end

end A337038.P10474240017872261307

/-! ## A337038.P4491508363989176490

`A020639(A008458(n))*A166922(n)`
-/

namespace A337038.P4491508363989176490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat * A166922 n

end

end A337038.P4491508363989176490

/-! ## A337038.P1685913453272210010

`A166922(A134478(∑[n]))+A166922(n)`
-/

namespace A337038.P1685913453272210010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166922 (A134478 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A166922 n

end

end A337038.P1685913453272210010

/-! ## A337038.P15787123390531887877

`A000034(A000040(n+1))*A166922(n)`
-/

namespace A337038.P15787123390531887877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000040 (n + 1)).toNat * A166922 n

end

end A337038.P15787123390531887877

/-! ## A337038.P12521327661718719190

`A020639(A046930(n+1))*A166922(n)`
-/

namespace A337038.P12521327661718719190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A046930 (n + 1)).toNat * A166922 n

end

end A337038.P12521327661718719190

/-! ## A337038.P3476403759970653918

`A020639(A063199(n+1))*A166922(n)`
-/

namespace A337038.P3476403759970653918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A063199 (n + 1)).toNat * A166922 n

end

end A337038.P3476403759970653918

/-! ## A337038.P12861635980641123949

`A000034(A098084(n+1))*A166922(n)`
-/

namespace A337038.P12861635980641123949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A098084 (n + 1)).toNat * A166922 n

end

end A337038.P12861635980641123949

/-! ## A337038.P10320125298690707489

`A000010(A007854(n)/A049027(n))*A166922(n)`
-/

namespace A337038.P10320125298690707489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A007854 n : ℚ) / (A049027 n : ℚ))).toNat * A166922 n

end

end A337038.P10320125298690707489

/-!
# A337039: a(n) = exp(-1/3) * Sum_{k>=0} (3*k - 1)^n / (3^k * k!).

The programs for A337039, there is no canonical definition to state claims against.
-/

/-! ## A337039.P7459656601629997752

`A355164(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A337039.P7459656601629997752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A355164 (n - 1) - a (n - 1)

end

end A337039.P7459656601629997752

/-! ## A337039.P5036276410610019974

`A171181(A068201(n)+A060475(n))`
-/

namespace A337039.P5036276410610019974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (A068201 n + A060475 n).toNat

end

end A337039.P5036276410610019974

/-!
# A337040: a(n) = exp(-1/4) * Sum_{k>=0} (4*k - 1)^n / (4^k * k!).

The programs for A337040, there is no canonical definition to state claims against.
-/

/-! ## A337040.P10423410682630885844

`A355167(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A337040.P10423410682630885844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A355167 (n - 1) - a (n - 1)

end

end A337040.P10423410682630885844

/-! ## A337040.P12864552741641528989

`A000005(A002110(n))*A035085(2*n)`
-/

namespace A337040.P12864552741641528989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002110 n).toNat * A035085 (2 * n)

end

end A337040.P12864552741641528989

/-!
# A337041: a(n) = exp(-1/5) * Sum_{k>=0} (5*k - 1)^n / (5^k * k!).

The programs for A337041, there is no canonical definition to state claims against.
-/

/-! ## A337041.P9935730366244058925

`A202014(A001147(n))-A240854(n)`
-/

namespace A337041.P9935730366244058925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202014 (A001147 n).toNat - A240854 n

end

end A337041.P9935730366244058925

/-! ## A337041.P11887961386781633948

`A028310(A187006(n+1))-A276133(n+1)`
-/

namespace A337041.P11887961386781633948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A187006 (n + 1)).toNat - A276133 (n + 1)

end

end A337041.P11887961386781633948

/-!
# A337042: a(n) = exp(-1/6) * Sum_{k>=0} (6*k - 1)^n / (6^k * k!).

The programs for A337042, there is no canonical definition to state claims against.
-/

/-! ## A337042.P16396037226483486114

`A004277(4*a(n-2)-(a(n-2)-n*a(n-1)))` with `a(0)=1, a(1)=0`
-/

namespace A337042.P16396037226483486114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A004277 (4 * a (n - 2) - (a (n - 2) - (n : ℤ) * a (n - 1))).toNat

end

end A337042.P16396037226483486114

/-! ## A337042.P8516668570520232247

`A094304(n+1)*A238745(A005054(n))`
-/

namespace A337042.P8516668570520232247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094304 (n + 1) * A238745 (A005054 n).toNat

end

end A337042.P8516668570520232247

/-!
# A337043: a(0) = 1; thereafter a(n) = exp(-1/n) * Sum_{k>=0} (n*k - 1)^n / (n^k * k!).

The programs for A337043, there is no canonical definition to state claims against.
-/

/-! ## A337043.P3480226151715547725

`(p?[A257697(n)]-(1-(2^(n+1))%(n+1)+n))*A119963(A062708(n))`
-/

namespace A337043.P3480226151715547725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (1 - ((2 ^ (n + 1) % (n + 1) : ℕ) : ℤ) + (n : ℤ))) * A119963 (A062708 n).toNat

end

end A337043.P3480226151715547725

/-!
# A337044: Numbers k such that both k and sigma(k)=A000203(k) are powerful, i.e., are terms of A001694.

The programs for A337044, there is no canonical definition to state claims against.
-/

/-! ## A337044.P3272717089670963818

`A057521(∪[A128607(n+1), A337045(n+1)])`
-/

namespace A337044.P3272717089670963818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337045 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A337044.P3272717089670963818

/-!
# A337048: Triangle T(n,k) read by rows: the number of fountains of n coins composed of k inseparable fountains of coins placed side-by-side.

The programs for A337048, there is no canonical definition to state claims against.
-/

/-! ## A337048.P8938550360636640652

`A335446(A004767(n))+A168561(n)`
-/

namespace A337048.P8938550360636640652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (A004767 n).toNat + A168561 n

end

end A337048.P8938550360636640652

/-! ## A337048.P783622294501242523

`gcd(A049310(n), A111025(A250120(n)))`
-/

namespace A337048.P783622294501242523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049310 n) (A111025 (A250120 n).toNat)

end

end A337048.P783622294501242523

/-! ## A337048.P14890178014778643219

`or(A168561(n), A283316(A118180(n+2)))`
-/

namespace A337048.P14890178014778643219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A168561 n) (A283316 (A118180 (n + 2)).toNat)

end

end A337048.P14890178014778643219

/-! ## A337048.P1816225447273731415

`A288106(A265063(n+2))+A168561(n)`
-/

namespace A337048.P1816225447273731415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288106 (A265063 (n + 2)).toNat + A168561 n

end

end A337048.P1816225447273731415

/-!
# A337050: Numbers without an exponent 2 in their prime factorization.

The programs for A337050, the canonical program `A337050.P14537410409702142696` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337050 has offset 1).

The definition of A337050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337050.P2135434909995308081

`eq[1, A329376(n+1)]+1`
-/

namespace A337050.P2135434909995308081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329376 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337050.P2135434909995308081

namespace A337050

/-- `eq[1, A329376(n+1)]+1` -/
def P2135434909995308081.Spec : Prop :=
  ∀ n, (P2135434909995308081.a n : ℤ) = A337050 (n + 1)

end A337050

/-! ## A337050.P14537410409702142696

`eq[1, gcd(2, A295879(n+1))]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A337050

/-- `eq[1, gcd(2, A295879(n+1))]+1` -/
def P14537410409702142696.Spec : Prop :=
  ∀ n, (P14537410409702142696.a n : ℤ) = A337050 (n + 1)

theorem P14537410409702142696.correct : P14537410409702142696.Spec := by
  intro n
  simp only [A337050, Nat.add_sub_cancel]

end A337050

/-! ## A337050.P10546237064841628486

`record[A366765(n+1)]`
-/

namespace A337050.P10546237064841628486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337050.P10546237064841628486

namespace A337050

/-- `record[A366765(n+1)]` -/
def P10546237064841628486.Spec : Prop :=
  ∀ n, P10546237064841628486.a n = A337050 (n + 1)

end A337050

/-! ## A337050.P6445754023825549827

`record[A368886(n+1)]`
-/

namespace A337050.P6445754023825549827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337050.P6445754023825549827

namespace A337050

/-- `record[A368886(n+1)]` -/
def P6445754023825549827.Spec : Prop :=
  ∀ n, P6445754023825549827.a n = A337050 (n + 1)

end A337050

/-! ## A337050.P9003863249087864563

`eq[1, A368884(n+1)]+1`
-/

namespace A337050.P9003863249087864563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368884 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337050.P9003863249087864563

namespace A337050

/-- `eq[1, A368884(n+1)]+1` -/
def P9003863249087864563.Spec : Prop :=
  ∀ n, (P9003863249087864563.a n : ℤ) = A337050 (n + 1)

end A337050

/-! ## A337050.P13023356855424828054

`eq[1, A368885(n+1)]+1`
-/

namespace A337050.P13023356855424828054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368885 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337050.P13023356855424828054

namespace A337050

/-- `eq[1, A368885(n+1)]+1` -/
def P13023356855424828054.Spec : Prop :=
  ∀ n, (P13023356855424828054.a n : ℤ) = A337050 (n + 1)

end A337050

/-! ## A337050.P2054500481684026501

`record[(n+1)*A181819(n+1)²%3]`
-/

namespace A337050.P2054500481684026501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A181819 (n + 1) ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337050.P2054500481684026501

namespace A337050

/-- `record[(n+1)*A181819(n+1)²%3]` -/
def P2054500481684026501.Spec : Prop :=
  ∀ n, P2054500481684026501.a n = A337050 (n + 1)

end A337050

/-! ## A337050.P7963557985880193361

`eq[2, A278222(A252505(n+1))]+1`
-/

namespace A337050.P7963557985880193361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A252505 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337050.P7963557985880193361

namespace A337050

/-- `eq[2, A278222(A252505(n+1))]+1` -/
def P7963557985880193361.Spec : Prop :=
  ∀ n, (P7963557985880193361.a n : ℤ) = A337050 (n + 1)

end A337050

/-! ## A337050.P6483164475307914365

`lt[1, ∏{e}[lcm(2, n), A295793(#)]]`
-/

namespace A337050.P6483164475307914365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), A295793 (Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337050.P6483164475307914365

namespace A337050

/-- `lt[1, ∏{e}[lcm(2, n), A295793(#)]]` -/
def P6483164475307914365.Spec : Prop :=
  ∀ n, (P6483164475307914365.a n : ℤ) = A337050 (n + 1)

end A337050

/-! ## A337050.P8176179791011192675

`lt[A295793(a(n-1)), ∏{e}[n, A295793(#)]]` with `a(0)=2`
-/

namespace A337050.P8176179791011192675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A295793 (f1 (n - 1)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), A295793 (Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337050.P8176179791011192675

namespace A337050

/-- `lt[A295793(a(n-1)), ∏{e}[n, A295793(#)]]` -/
def P8176179791011192675.Spec : Prop :=
  ∀ n, (P8176179791011192675.a n : ℤ) = A337050 (n + 1)

end A337050

/-! ## A337050.P10452889065056078510

`lt[(3^n-A000688(n+1))%2+1, 2]+1`
-/

namespace A337050.P10452889065056078510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((3 ^ n : ℤ) - A000688 (n + 1)) 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A337050.P10452889065056078510

namespace A337050

/-- `lt[(3^n-A000688(n+1))%2+1, 2]+1` -/
def P10452889065056078510.Spec : Prop :=
  ∀ n, (P10452889065056078510.a n : ℤ) = A337050 (n + 1)

end A337050

/-!
# A337052: 

The programs for A337052, there is no canonical definition to state claims against.
-/

/-! ## A337052.P10141510893611028337

`comp[A377844(n+1)-1]+1`
-/

namespace A337052.P10141510893611028337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377844 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A337052.P10141510893611028337

/-! ## A337052.P9310602176972942709

`lt[A295662(n+1)%2, 1]+1`
-/

namespace A337052.P9310602176972942709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295662 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A337052.P9310602176972942709

/-! ## A337052.P1881076266313024742

`record[(n+1)*A065043(A057521(n+1))]`
-/

namespace A337052.P1881076266313024742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A065043 (A057521 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337052.P1881076266313024742

/-! ## A337052.P285836256728254101

`lt[A000035(A275812(n+1)), 1]+1`
-/

namespace A337052.P285836256728254101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A275812 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A337052.P285836256728254101

/-! ## A337052.P15424985827804224520

`lt[A001221(A055229(n+1))%2, 1]+1`
-/

namespace A337052.P15424985827804224520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001221 (A055229 (n + 1)).toNat) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A337052.P15424985827804224520

/-!
# A337053: a(n) = exp(2) * Sum_{i>=0} Sum_{j>=0} (-1)^(i+j) * (i*j)^n / (i! * j!).

The programs for A337053, there is no canonical definition to state claims against.
-/

/-! ## A337053.P1266751832690716044

`A000587(n)²`
-/

namespace A337053.P1266751832690716044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 n ^ 2

end

end A337053.P1266751832690716044

/-! ## A337053.P17586079234746248857

`A213953(∑[n])²`
-/

namespace A337053.P17586079234746248857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213953 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A337053.P17586079234746248857

/-! ## A337053.P7412281726311539198

`Δ[A109747(n)]²`
-/

namespace A337053.P7412281726311539198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A337053.P7412281726311539198

/-! ## A337053.P8164423441418329

`A292894(∑[n]+n)²`
-/

namespace A337053.P8164423441418329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292894 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A337053.P8164423441418329

/-! ## A337053.P6300669532919431435

`A293015(∑[n]+n)²`
-/

namespace A337053.P6300669532919431435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293015 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A337053.P6300669532919431435

/-! ## A337053.P1428338754485046834

`A293019(∑[n]+n)²`
-/

namespace A337053.P1428338754485046834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293019 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A337053.P1428338754485046834

/-! ## A337053.P15272779572956423884

`A293051(∑[n]+n)²`
-/

namespace A337053.P15272779572956423884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293051 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A337053.P15272779572956423884

/-! ## A337053.P2865044082484780423

`A264435(∑[n+1]+1)²`
-/

namespace A337053.P2865044082484780423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264435 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A337053.P2865044082484780423

/-! ## A337053.P12051946499687170440

`A292861(∑[n+2]-1)²`
-/

namespace A337053.P12051946499687170440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292861 (∑ j ∈ Finset.range (n + 1), f1 j - 1) ^ 2

end

end A337053.P12051946499687170440

/-! ## A337053.P1768458363405680001

`A309386(∑[n+2]-1)²`
-/

namespace A337053.P1768458363405680001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309386 (∑ j ∈ Finset.range (n + 1), f1 j - 1) ^ 2

end

end A337053.P1768458363405680001

/-!
# A337056: Number of length-n binary strings such that no rotation is a palindrome.

The programs for A337056, there is no canonical definition to state claims against.
-/

/-! ## A337056.P5846590592650063957

`∑[2^n-Δ[A245582(n)]]`
-/

namespace A337056.P5846590592650063957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337056.P5846590592650063957

/-! ## A337056.P1733900300669587319

`2^(n+1)-A245582(n+1)`
-/

namespace A337056.P1733900300669587319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A245582 (n + 1)

end

end A337056.P1733900300669587319

/-! ## A337056.P5318737361686418086

`Δ[A126646(n)-∑[A245582(n)]]`
-/

namespace A337056.P5318737361686418086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A337056.P5318737361686418086

/-!
# A337057: a(n) = exp(-n) * Sum_{k>=0} (k - n)^n * n^k / k!.

The programs for A337057, there is no canonical definition to state claims against.
-/

/-! ## A337057.P8875848195949083383

`A300937(A300931(n))-n%2`
-/

namespace A337057.P8875848195949083383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300937 (A300931 n).toNat - ((n % 2 : ℕ) : ℤ)

end

end A337057.P8875848195949083383

/-! ## A337057.P5336616632676944706

`A103972(n)%p?[A143364(n+1)]`
-/

namespace A337057.P5336616632676944706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103972 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A337057.P5336616632676944706

/-!
# A337058: E.g.f.: 1 / (2 + x^2/2 - exp(x)).

The programs for A337058, there is no canonical definition to state claims against.
-/

/-! ## A337058.P12422868459331267066

`A002264(or(3, A333048(n)))`
-/

namespace A337058.P12422868459331267066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.lor 3 (A333048 n)).toNat

end

end A337058.P12422868459331267066

/-! ## A337058.P14422972471552786277

`A020122(n)+A004526(A202365(n))`
-/

namespace A337058.P14422972471552786277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020122 n + A004526 (A202365 n).toNat

end

end A337058.P14422972471552786277

/-! ## A337058.P2807119238405317688

`A001057(A122446(n)+A000402(n+1))`
-/

namespace A337058.P2807119238405317688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A122446 n + A000402 (n + 1)).toNat

end

end A337058.P2807119238405317688

/-!
# A337059: E.g.f.: 1 / (2 + x^3/6 - exp(x)).

The programs for A337059, there is no canonical definition to state claims against.
-/

/-! ## A337059.P12897006862067849205

`A247983((n+1)*a(n-1))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A337059.P12897006862067849205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A247983 ((n + 1 : ℤ) * a (n - 1)).toNat + a (n - 1)

end

end A337059.P12897006862067849205

/-! ## A337059.P435809257605150779

`A337635(A055882(n))`
-/

namespace A337059.P435809257605150779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337635 (A055882 n).toNat

end

end A337059.P435809257605150779

/-!
# A337060: E.g.f.: 1 / (1 + x^2/2 + log(1 - x)).

The programs for A337060, there is no canonical definition to state claims against.
-/

/-! ## A337060.P2400451700980764810

`A266981(A278644(n)-A337585(n))`
-/

namespace A337060.P2400451700980764810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 (A278644 n - A337585 n).toNat

end

end A337060.P2400451700980764810

/-! ## A337060.P18334665554421984078

`A060119(A293905(n)+A000094(n+1))`
-/

namespace A337060.P18334665554421984078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (A293905 n + A000094 (n + 1)).toNat

end

end A337060.P18334665554421984078

/-! ## A337060.P8664178404204674832

`A131821(A024167(n+1))+A001266(n+2)`
-/

namespace A337060.P8664178404204674832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (A024167 (n + 1)).toNat + A001266 (n + 2)

end

end A337060.P8664178404204674832

/-!
# A337061: E.g.f.: 1 / (1 + x^3/3 + log(1 - x)).

The programs for A337061, there is no canonical definition to state claims against.
-/

/-! ## A337061.P13764381690280561670

`A298671(n)+A184615(A002051(n+1))`
-/

namespace A337061.P13764381690280561670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298671 n + A184615 (A002051 (n + 1)).toNat

end

end A337061.P13764381690280561670

/-! ## A337061.P303040612757086232

`A055034(A118192(n+1)+1)`
-/

namespace A337061.P303040612757086232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A118192 (n + 1) + 1).toNat

end

end A337061.P303040612757086232

/-!
# A337067: Number of nonnegative lattice paths from (0,0) to (n,0) where the allowed steps at (x,y) are (h,v) with h in {1..max(1,y)} and v in {-1,0,1}.

The programs for A337067, there is no canonical definition to state claims against.
-/

/-! ## A337067.P3192947611883828819

`A249563(n)-A025466(A006789(n))`
-/

namespace A337067.P3192947611883828819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249563 n - A025466 (A006789 n).toNat

end

end A337067.P3192947611883828819

/-! ## A337067.P8369688016979830372

`A249563(n)-A285006(A000383(n))`
-/

namespace A337067.P8369688016979830372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249563 n - A285006 (A000383 n).toNat

end

end A337067.P8369688016979830372

/-! ## A337067.P5228797471909255267

`A249563(n)-A025466(A249560(n+1))`
-/

namespace A337067.P5228797471909255267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249563 n - A025466 (A249560 (n + 1)).toNat

end

end A337067.P5228797471909255267

/-!
# A337068: a(n) is the least number of repetitions such that the result of the repeated execution of the division f <- f/n started at f=1 produces 0, when the division is performed using Commodore BASIC.

The programs for A337068, there is no canonical definition to state claims against.
-/

/-! ## A337068.P5088882394269353981

`or(char[∑[(n+1)*n²]], A336776(n+2))`
-/

namespace A337068.P5088882394269353981
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A336776 (n + 2))

end

end A337068.P5088882394269353981

/-! ## A337068.P2493228441703643413

`A336776(n+2)+char[A133224(n)]`
-/

namespace A337068.P2493228441703643413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133224 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336776 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A337068.P2493228441703643413

/-! ## A337068.P12997333556331718788

`A336776(n+2)+char[A216991(n+1)]`
-/

namespace A337068.P12997333556331718788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216991 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336776 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A337068.P12997333556331718788

/-! ## A337068.P15563541483383214179

`A336776(n+2)+A010054(A002378(n))`
-/

namespace A337068.P15563541483383214179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336776 (n + 2) + A010054 (A002378 n).toNat

end

end A337068.P15563541483383214179

/-! ## A337068.P12949827835008492462

`A336776(n+2)+char[A000096(A052852(n))]`
-/

namespace A337068.P12949827835008492462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A052852 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336776 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A337068.P12949827835008492462

/-! ## A337068.P18440334623184404052

`A336776(n+2)+A209229(A336774(n+2)*A336776(n+2))`
-/

namespace A337068.P18440334623184404052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336776 (n + 2) + A209229 (A336774 (n + 2) * A336776 (n + 2)).toNat

end

end A337068.P18440334623184404052

/-! ## A337068.P4341986855809273591

`char[A133224(n)]+ceil(A336780(n+2)/8)`
-/

namespace A337068.P4341986855809273591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133224 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌈(A336780 (n + 2) : ℚ) / 8⌉

end

end A337068.P4341986855809273591

/-! ## A337068.P8231512854255074838

`char[A000096(n²)]+ceil(A336780(n+2)/8)`
-/

namespace A337068.P8231512854255074838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n ^ 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌈(A336780 (n + 2) : ℚ) / 8⌉

end

end A337068.P8231512854255074838

/-! ## A337068.P12213403643623244938

`A110656(A336780(n+2)+char[A133224(n)])`
-/

namespace A337068.P12213403643623244938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133224 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A336780 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A337068.P12213403643623244938

/-! ## A337068.P14476261206716280784

`A336776(n+2)+A209229(A336780(n+2))`
-/

namespace A337068.P14476261206716280784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336776 (n + 2) + A209229 (A336780 (n + 2)).toNat

end

end A337068.P14476261206716280784

/-!
# A337069: Number of strict factorizations of the superprimorial A006939(n).

The programs for A337069, there is no canonical definition to state claims against.
-/

/-! ## A337069.P5438561065616432613

`A318286(A002110(n))`
-/

namespace A337069.P5438561065616432613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (A002110 n).toNat

end

end A337069.P5438561065616432613

/-!
# A337070: Number of strict chains of divisors starting with the superprimorial A006939(n).

The programs for A337070, there is no canonical definition to state claims against.
-/

/-! ## A337070.P16370975541903998859

`A036450(n+1)*A336941(n)`
-/

namespace A337070.P16370975541903998859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036450 (n + 1) * A336941 n

end

end A337070.P16370975541903998859

/-! ## A337070.P8831307900474527572

`A336941(n)*A359455(n+1)`
-/

namespace A337070.P8831307900474527572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336941 n * A359455 (n + 1)

end

end A337070.P8831307900474527572

/-! ## A337070.P5310457245764860930

`A040001(2*n)*A336941(n)`
-/

namespace A337070.P5310457245764860930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) * A336941 n

end

end A337070.P5310457245764860930

/-!
# A337071: Number of strict chains of divisors starting with n!.

The programs for A337071, there is no canonical definition to state claims against.
-/

/-! ## A337071.P15117338647497328489

`A067824(n!)`
-/

namespace A337071.P15117338647497328489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (Nat.factorial n)

end

end A337071.P15117338647497328489

/-! ## A337071.P13678451235764218894

`A020639(A027423(n))*A337105(n)`
-/

namespace A337071.P13678451235764218894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A027423 n).toNat * A337105 n

end

end A337071.P13678451235764218894

/-! ## A337071.P12108016178333230835

`A193738(A000124(n))*A337105(n)`
-/

namespace A337071.P12108016178333230835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (A000124 n).toNat * A337105 n

end

end A337071.P12108016178333230835

/-! ## A337071.P8891611346413283847

`A020639(A210108(n))*A337105(n)`
-/

namespace A337071.P8891611346413283847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A210108 n).toNat * A337105 n

end

end A337071.P8891611346413283847

/-! ## A337071.P297563644103074850

`A020639(A214078(n))*A337105(n)`
-/

namespace A337071.P297563644103074850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A214078 n).toNat * A337105 n

end

end A337071.P297563644103074850

/-!
# A337072: Number of factorizations of the superprimorial A006939(n) into squarefree numbers > 1.

The programs for A337072, there is no canonical definition to state claims against.
-/

/-! ## A337072.P6267172314938505698

`A318360(A002110(n))`
-/

namespace A337072.P6267172314938505698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318360 (A002110 n).toNat

end

end A337072.P6267172314938505698

/-!
# A337073: Number of strict factorizations of the superprimorial A006939(n) into squarefree numbers > 1.

The programs for A337073, there is no canonical definition to state claims against.
-/

/-! ## A337073.P1190905071411844003

`floor(A108353(n)^(n/10))`
-/

namespace A337073.P1190905071411844003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A108353 n : ℝ) ^ ((n : ℚ) / 10 : ℝ)⌋

end

end A337073.P1190905071411844003

/-! ## A337073.P15647356009578506248

`A283113(comp[n²]^floor(n/2))`
-/

namespace A337073.P15647356009578506248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283113 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

end

end A337073.P15647356009578506248

/-!
# A337075: Number of strict chains of divisors in A130091 (numbers with distinct prime multiplicities) starting with a proper divisor of n! and ending with 1.

The programs for A337075, there is no canonical definition to state claims against.
-/

/-! ## A337075.P5224174429358032313

`∑{d}[A087062(A360082(n)), #]`
-/

namespace A337075.P5224174429358032313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087062 (A360082 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A337075.P5224174429358032313

/-! ## A337075.P8696020616936720304

`A111725(n!*A343371(n))`
-/

namespace A337075.P8696020616936720304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111725 ((Nat.factorial n : ℤ) * A343371 n).toNat

end

end A337075.P8696020616936720304

/-! ## A337075.P3249063191118262433

`A193903(A000079(n)-A060482(n+1))`
-/

namespace A337075.P3249063191118262433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193903 (A000079 n - A060482 (n + 1)).toNat

end

end A337075.P3249063191118262433

/-!
# A337076: Niven numbers (A005349) with a record gap to the next Niven number.

The programs for A337076, there is no canonical definition to state claims against.
-/

/-! ## A337076.P12277319079587750393

`A005349(A082517(n+1))`
-/

namespace A337076.P12277319079587750393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (A082517 (n + 1)).toNat

end

end A337076.P12277319079587750393

/-!
# A337077: Binary Niven numbers (A049445) with a record gap to the next binary Niven number.

The programs for A337077, there is no canonical definition to state claims against.
-/

/-! ## A337077.P4472122723982521012

`A194712(floor(n/2)+2^n)`
-/

namespace A337077.P4472122723982521012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194712 (⌊(n : ℚ) / 2⌋ + (2 ^ n : ℤ)).toNat

end

end A337077.P4472122723982521012

/-! ## A337077.P10819948934684177534

`A145515(n)*A194712(A212584(2*n))`
-/

namespace A337077.P10819948934684177534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 n * A194712 (A212584 (2 * n)).toNat

end

end A337077.P10819948934684177534

/-!
# A337078: The number of binary Niven numbers (A049445) not exceeding 2^n.

The programs for A337078, there is no canonical definition to state claims against.
-/

/-! ## A337078.P1886626032419082802

`eq[2, A007305(A049445(n+1))]`
-/

namespace A337078.P1886626032419082802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A049445 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337078.P1886626032419082802

/-! ## A337078.P842936207779916799

`eq[1, A008687(A049445(n+2))]+2`
-/

namespace A337078.P842936207779916799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A049445 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A337078.P842936207779916799

/-! ## A337078.P111031370343004699

`eq[0, A023416(A049445(n+1)-1)]+1`
-/

namespace A337078.P111031370343004699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A049445 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337078.P111031370343004699

/-! ## A337078.P10240301180841410345

`A339663(2^n)+1`
-/

namespace A337078.P10240301180841410345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339663 (2 ^ n) + 1

end

end A337078.P10240301180841410345

/-! ## A337078.P4178843726745269709

`record[A339663(A006519(n+1))+1]`
-/

namespace A337078.P4178843726745269709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339663 (A006519 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337078.P4178843726745269709

/-!
# A337079: The number of twin binary Niven numbers (k, k+1) such that k <= 2^n.

The programs for A337079, there is no canonical definition to state claims against.
-/

/-! ## A337079.P4648544270896446449

`A187182(A293606(n))`
-/

namespace A337079.P4648544270896446449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187182 (A293606 n).toNat

end

end A337079.P4648544270896446449

/-! ## A337079.P8239838158310627748

`A094275(A219754(n)+1)`
-/

namespace A337079.P8239838158310627748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094275 (A219754 n + 1).toNat

end

end A337079.P8239838158310627748

/-! ## A337079.P1257211618047929721

`A003003(A216641(n+2))`
-/

namespace A337079.P1257211618047929721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003003 (A216641 (n + 2)).toNat

end

end A337079.P1257211618047929721

/-! ## A337079.P4421445210337485713

`A025451(A289586(n+2))`
-/

namespace A337079.P4421445210337485713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 (A289586 (n + 2)).toNat

end

end A337079.P4421445210337485713

/-! ## A337079.P1408536427013489716

`A122921(A237113(n)+A102356(n))`
-/

namespace A337079.P1408536427013489716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A237113 n + A102356 n).toNat

end

end A337079.P1408536427013489716

/-!
# A337080: Complement of A337037.

The programs for A337080, there is no canonical definition to state claims against.
-/

/-! ## A337080.P759253052026654257

`∪[90*(n+1), 2*2*(n+1)]`
-/

namespace A337080.P759253052026654257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  90 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A337080.P759253052026654257

/-! ## A337080.P12820768702132551781

`comp[n-C(A276330(n), 2)]`
-/

namespace A337080.P12820768702132551781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (A276330 n).toNat 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A337080.P12820768702132551781

/-! ## A337080.P9084749014943170160

`eq[3, A102419(n+1)%14]`
-/

namespace A337080.P9084749014943170160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102419 (n + 1)) 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337080.P9084749014943170160

/-! ## A337080.P7089619877840556205

`eq[4, A074473(n+1)%14]`
-/

namespace A337080.P7089619877840556205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074473 (n + 1)) 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337080.P7089619877840556205

/-! ## A337080.P1579988384574984448

`eq[n%4, A063667(2*n)]`
-/

namespace A337080.P1579988384574984448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063667 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337080.P1579988384574984448

/-! ## A337080.P11680974402068341531

`lt[n, C(gcd(n, A208457(n)), 2)]`
-/

namespace A337080.P11680974402068341531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.gcd (n : ℤ) (A208457 n)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337080.P11680974402068341531

/-! ## A337080.P16734247655838868731

`∑[gcd(4, A004184(4*(n+1)))]`
-/

namespace A337080.P16734247655838868731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A004184 (4 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337080.P16734247655838868731

/-! ## A337080.P5619123210510615052

`∪[record[xor(3, n)], A142685(n+1)]+1`
-/

namespace A337080.P5619123210510615052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n + 1

end

end A337080.P5619123210510615052

/-! ## A337080.P5774954043390099122

`∪[record[xor(3, n)], A142715(n+1)]+1`
-/

namespace A337080.P5774954043390099122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n + 1

end

end A337080.P5774954043390099122

/-! ## A337080.P6059893305384164583

`∪[record[xor(3, n)], A239713(n+4)]+1`
-/

namespace A337080.P6059893305384164583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239713 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n + 1

end

end A337080.P6059893305384164583

/-!
# A337084: a(n) is the smallest nonzero digit d whose product d*n will contain the digit d, or 0 if no such digit exists.

The programs for A337084, there is no canonical definition to state claims against.
-/

/-! ## A337084.P12130849048971862598

`A241146(n+1)%10`
-/

namespace A337084.P12130849048971862598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241146 (n + 1)) 10

end

end A337084.P12130849048971862598

/-! ## A337084.P6711529891830877994

`A007954(or(A151909(n), A241146(n+1)))`
-/

namespace A337084.P6711529891830877994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (Int.lor (A151909 n) (A241146 (n + 1))).toNat

end

end A337084.P6711529891830877994

/-! ## A337084.P11835969967232423292

`A007954(A241146(n+1)+n*A151909(n))`
-/

namespace A337084.P11835969967232423292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A241146 (n + 1) + (n : ℤ) * A151909 n).toNat

end

end A337084.P11835969967232423292

/-! ## A337084.P15162221196417415375

`A007954(and(1, A163383(n+1))*A241146(n+1))`
-/

namespace A337084.P15162221196417415375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (Int.land 1 (A163383 (n + 1)) * A241146 (n + 1)).toNat

end

end A337084.P15162221196417415375

/-! ## A337084.P733153976491852299

`A007954(A241146(n+1)/and(1, A163383(n+1)))`
-/

namespace A337084.P733153976491852299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (SequenceMachineLib.roundAway ((A241146 (n + 1) : ℚ) / (Int.land 1 (A163383 (n + 1)) : ℚ))).toNat

end

end A337084.P733153976491852299

/-! ## A337084.P6908286200905441246

`A007954(A241146(n+1)^and(1, A163383(n+1)))`
-/

namespace A337084.P6908286200905441246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (SequenceMachineLib.roundAway ((A241146 (n + 1) : ℚ) ^ (Int.land 1 (A163383 (n + 1)) : ℤ))).toNat

end

end A337084.P6908286200905441246

/-! ## A337084.P17297340122440028311

`A007954(A241146(n+1)+A151909(n))-A151909(n)`
-/

namespace A337084.P17297340122440028311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A241146 (n + 1) + A151909 n).toNat - A151909 n

end

end A337084.P17297340122440028311

/-!
# A337085: Square array T(n, k) read by descending antidiagonals. T(n, k) = n! * Sum_{j=0..n} j^k / j!.

The programs for A337085, the canonical program `A337085.P11234467388087998442` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337085 has offset 0).

The definition of A337085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337085.P11234467388087998442

`col(n)^(row(n)-col(n))+col(n)*T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A337085

/-- `col(n)^(row(n)-col(n))+col(n)*T(n-1,k-1)` -/
def P11234467388087998442.Spec : Prop :=
  ∀ n, P11234467388087998442.a n = (A337085 n : ℚ)

end A337085

/-! ## A337085.P17901825850962460882

`A368759(n)-A233543(n)`
-/

namespace A337085.P17901825850962460882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368759 n - A233543 n

end

end A337085.P17901825850962460882

namespace A337085

/-- `A368759(n)-A233543(n)` -/
def P17901825850962460882.Spec : Prop :=
  ∀ n, P17901825850962460882.a n = A337085 n

end A337085

/-! ## A337085.P5375780473329644378

`A367328(A368759(n))`
-/

namespace A337085.P5375780473329644378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367328 (A368759 n).toNat

end

end A337085.P5375780473329644378

namespace A337085

/-- `A367328(A368759(n))` -/
def P5375780473329644378.Spec : Prop :=
  ∀ n, P5375780473329644378.a n = A337085 n

end A337085

/-! ## A337085.P11750853375296725590

`A323621(A208748(n+1)^A219208(n))`
-/

namespace A337085.P11750853375296725590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323621 (SequenceMachineLib.roundAway ((A208748 (n + 1) : ℚ) ^ (A219208 n : ℤ))).toNat

end

end A337085.P11750853375296725590

namespace A337085

/-- `A323621(A208748(n+1)^A219208(n))` -/
def P11750853375296725590.Spec : Prop :=
  ∀ n, P11750853375296725590.a n = A337085 n

end A337085

/-! ## A337085.P534267092009393609

`A323621(A208748(n+1)*A219208(n²))`
-/

namespace A337085.P534267092009393609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323621 (A208748 (n + 1) * A219208 (n ^ 2)).toNat

end

end A337085.P534267092009393609

namespace A337085

/-- `A323621(A208748(n+1)*A219208(n²))` -/
def P534267092009393609.Spec : Prop :=
  ∀ n, P534267092009393609.a n = A337085 n

end A337085

/-!
# A337086: Number of integer-sided triangles with perimeter n where the harmonic mean of the side lengths is an integer.

The programs for A337086, there is no canonical definition to state claims against.
-/

/-! ## A337086.P5928870341817989821

`A005044(n+1)-A337087(n+1)`
-/

namespace A337086.P5928870341817989821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - A337087 (n + 1)

end

end A337086.P5928870341817989821

/-! ## A337086.P11389567101507133034

`Δ[A026810(n+1)]-A337087(n+1)`
-/

namespace A337086.P11389567101507133034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A337087 (n + 1)

end

end A337086.P11389567101507133034

/-! ## A337086.P11226539885331102038

`A211540(A060762(n+2))-A337087(n+1)`
-/

namespace A337086.P11226539885331102038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (A060762 (n + 2)).toNat - A337087 (n + 1)

end

end A337086.P11226539885331102038

/-! ## A337086.P3864104502014344878

`or(A007949(n+1), A144607(A266878(n+1)))`
-/

namespace A337086.P3864104502014344878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007949 (n + 1)) (A144607 (A266878 (n + 1)).toNat)

end

end A337086.P3864104502014344878

/-! ## A337086.P4403377379543093993

`A334924(4*(n+1))-A267871(A204988(3*n+4))`
-/

namespace A337086.P4403377379543093993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334924 (4 * (n + 1)) - A267871 (A204988 (3 * n + 4)).toNat

end

end A337086.P4403377379543093993

/-!
# A337087: Number of integer-sided triangles with perimeter n where the harmonic mean of the side lengths is not an integer.

The programs for A337087, there is no canonical definition to state claims against.
-/

/-! ## A337087.P2337594288807921624

`A005044(n+1)-A337086(n+1)`
-/

namespace A337087.P2337594288807921624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - A337086 (n + 1)

end

end A337087.P2337594288807921624

/-! ## A337087.P1913718015194206705

`Δ[A026810(n+1)]-A337086(n+1)`
-/

namespace A337087.P1913718015194206705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A337086 (n + 1)

end

end A337087.P1913718015194206705

/-! ## A337087.P9882064698161233158

`A005044(n+1)-(A334924(4*(n+1))-A267871(A204988(3*n+4)))`
-/

namespace A337087.P9882064698161233158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - (A334924 (4 * (n + 1)) - A267871 (A204988 (3 * n + 4)).toNat)

end

end A337087.P9882064698161233158

/-!
# A337088: Perimeters of integer-sided triangles such that the harmonic mean of their side lengths is an integer.

The programs for A337088, there is no canonical definition to state claims against.
-/

/-! ## A337088.P11292619796305675421

`lt[0, A337086(n+1)]+1`
-/

namespace A337088.P11292619796305675421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337086 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337088.P11292619796305675421

/-! ## A337088.P5240919518039228010

`lt[0, A337086(n^floor(atan(n)))]`
-/

namespace A337088.P5240919518039228010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337086 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337088.P5240919518039228010

/-! ## A337088.P16670521408625950591

`lt[0, Δ[A026810(n+1)]-A337087(n+1)]+1`
-/

namespace A337088.P16670521408625950591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n - A337087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337088.P16670521408625950591

/-! ## A337088.P17353784078759801181

`lt[A355820(A212804(n)+2), 1]+2`
-/

namespace A337088.P17353784078759801181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355820 (A212804 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A337088.P17353784078759801181

/-! ## A337088.P9999296174520108701

`A270642(A196889(n))+A025505(n+1)`
-/

namespace A337088.P9999296174520108701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270642 (A196889 n).toNat + A025505 (n + 1)

end

end A337088.P9999296174520108701

/-!
# A337089: Number of rooted trees of n vertices in which all leaves are at even depths (distances down from the root).

The programs for A337089, there is no canonical definition to state claims against.
-/

/-! ## A337089.P15636990595971000544

`A220845(A166578(n))+A025462(n)`
-/

namespace A337089.P15636990595971000544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220845 (A166578 n).toNat + A025462 n

end

end A337089.P15636990595971000544

/-! ## A337089.P3753965976089236938

`A061395(A028945(n))+A059841(n+1)`
-/

namespace A337089.P3753965976089236938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A028945 n).toNat + A059841 (n + 1)

end

end A337089.P3753965976089236938

/-! ## A337089.P7387309081358070682

`A085736(A007562(n+1))-A346787(n+1)`
-/

namespace A337089.P7387309081358070682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A007562 (n + 1)).toNat - A346787 (n + 1)

end

end A337089.P7387309081358070682

/-! ## A337089.P743947817099881189

`A342760(A054193(n+1))-A346787(n+1)`
-/

namespace A337089.P743947817099881189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342760 (A054193 (n + 1)).toNat - A346787 (n + 1)

end

end A337089.P743947817099881189

/-! ## A337089.P5117156895259888913

`A085736(A329699(n+1))-A346787(n+1)`
-/

namespace A337089.P5117156895259888913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A329699 (n + 1)).toNat - A346787 (n + 1)

end

end A337089.P5117156895259888913

/-!
# A337090: Number of rooted trees of n vertices in which all leaves are at odd depths (distances down from the root).

The programs for A337090, there is no canonical definition to state claims against.
-/

/-! ## A337090.P9861257480593929203

`A003056(round(sqrt(A054499(n)+1))-1)`
-/

namespace A337090.P9861257480593929203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway (Real.sqrt (A054499 n + 1 : ℝ)) - 1).toNat

end

end A337090.P9861257480593929203

/-! ## A337090.P15264567630800194446

`A259361(A341576(n)+A008615(n))`
-/

namespace A337090.P15264567630800194446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A341576 n + A008615 n).toNat

end

end A337090.P15264567630800194446

/-! ## A337090.P7928207001193522447

`A259361(A341576(n)+A025426(n))`
-/

namespace A337090.P7928207001193522447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A341576 n + A025426 n).toNat

end

end A337090.P7928207001193522447

/-! ## A337090.P16027780768719279842

`A259361(A341576(n)+A259361(n))`
-/

namespace A337090.P16027780768719279842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A341576 n + A259361 n).toNat

end

end A337090.P16027780768719279842

/-! ## A337090.P568081745777761826

`A000194(A000073(n)*A002991(n))`
-/

namespace A337090.P568081745777761826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A000073 n * A002991 n).toNat

end

end A337090.P568081745777761826

/-!
# A337091: Perimeters of integer-sided triangles such that the harmonic mean of each pair of its side lengths is an integer.

The programs for A337091, there is no canonical definition to state claims against.
-/

/-! ## A337091.P12944651572274824425

`lt[A356065(n+1), A033630(A008602(n))]`
-/

namespace A337091.P12944651572274824425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (A008602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337091.P12944651572274824425

/-! ## A337091.P14245027972964561066

`record[A130717(A130699(n+2)+9)]`
-/

namespace A337091.P14245027972964561066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130717 (A130699 (n + 2) + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337091.P14245027972964561066

/-! ## A337091.P3374594714614177879

`eq[A285982(A033580(n)), A322829(n)]`
-/

namespace A337091.P3374594714614177879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285982 (A033580 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337091.P3374594714614177879

/-! ## A337091.P17439973574717321593

`eq[A286100(A122111(n+1)), A322829(n)]`
-/

namespace A337091.P17439973574717321593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286100 (A122111 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337091.P17439973574717321593

/-! ## A337091.P7699112360928932884

`eq[A286100(A297499(n+1)), A322829(n)]`
-/

namespace A337091.P7699112360928932884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286100 (A297499 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337091.P7699112360928932884

/-!
# A337093: Difference between the number of unordered factorizations and the number of distinct sums of terms in these unordered factorizations for those integers where this difference is positive.

The programs for A337093, there is no canonical definition to state claims against.
-/

/-! ## A337093.P4108396485490909231

`A001055(A337080(n+1))-A069016(A337080(n+1))`
-/

namespace A337093.P4108396485490909231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A337080 (n + 1)).toNat - A069016 (A337080 (n + 1)).toNat

end

end A337093.P4108396485490909231

/-! ## A337093.P10530756026823351019

`A002265(A001055(n+1)*A155874(A044541(n+1)))`
-/

namespace A337093.P10530756026823351019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A001055 (n + 1) * A155874 (A044541 (n + 1)).toNat).toNat

end

end A337093.P10530756026823351019

/-! ## A337093.P9740122410968222537

`or(A001055(n+1), A101638(A332578(n)))`
-/

namespace A337093.P9740122410968222537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001055 (n + 1)) (A101638 (A332578 n).toNat)

end

end A337093.P9740122410968222537

/-! ## A337093.P15407480505984484952

`or(A028422(n+1)+1, A101638(A332578(n)))`
-/

namespace A337093.P15407480505984484952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028422 (n + 1) + 1) (A101638 (A332578 n).toNat)

end

end A337093.P15407480505984484952

/-! ## A337093.P3976475670729088045

`or(A344368(n+1)/(n+1), A101638(A332578(n)))`
-/

namespace A337093.P3976475670729088045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A344368 (n + 1) : ℚ) / (n + 1 : ℚ))) (A101638 (A332578 n).toNat)

end

end A337093.P3976475670729088045

/-!
# A337095: Prime numbers that can be expressed as the sum of k>1 consecutive prime numbers in only one way.

The programs for A337095, there is no canonical definition to state claims against.
-/

/-! ## A337095.P10394042586126969696

`p?[A054997(n+1)]`
-/

namespace A337095.P10394042586126969696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337095.P10394042586126969696

/-! ## A337095.P3786182655080081395

`filter[A054997(n+1), A010051(#)]`
-/

namespace A337095.P3786182655080081395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A337095.P3786182655080081395

/-! ## A337095.P7752667696522249034

`∩[A000040(n+1), A054997(n+1)]`
-/

namespace A337095.P7752667696522249034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337095.P7752667696522249034

/-! ## A337095.P1391033008459927901

`∩[A006005(n+1), A054997(n+1)]`
-/

namespace A337095.P1391033008459927901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337095.P1391033008459927901

/-! ## A337095.P4404915103911269818

`∩[A008578(n+1), A054997(n+1)]`
-/

namespace A337095.P4404915103911269818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337095.P4404915103911269818

/-! ## A337095.P10062038736819294141

`∩[A033946(n+1), A054997(n+1)]`
-/

namespace A337095.P10062038736819294141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337095.P10062038736819294141

/-! ## A337095.P5513545739929084195

`∩[A045344(n+1), A054997(n+1)]`
-/

namespace A337095.P5513545739929084195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337095.P5513545739929084195

/-! ## A337095.P4596034385291460911

`∩[A046022(n+1), A054997(n+1)]`
-/

namespace A337095.P4596034385291460911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337095.P4596034385291460911

/-! ## A337095.P1422891614811342736

`∩[A051948(n+1), A054997(n+1)]`
-/

namespace A337095.P1422891614811342736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337095.P1422891614811342736

/-! ## A337095.P5962198771676519269

`∩[A053813(n+1), A054997(n+1)]`
-/

namespace A337095.P5962198771676519269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337095.P5962198771676519269

/-! ## A337095.P12436699554295713139

`∩[A054997(n+1), A065091(n+1)]`
-/

namespace A337095.P12436699554295713139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337095.P12436699554295713139

/-! ## A337095.P6846738927583945840

`∩[A054997(n+1), A067126(n+1)]`
-/

namespace A337095.P6846738927583945840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337095.P6846738927583945840

/-! ## A337095.P12296262126899840646

`filter[A054997(n+1), A323153(#)]`
-/

namespace A337095.P12296262126899840646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A337095.P12296262126899840646

/-! ## A337095.P3140951048357587131

`p?[A084146(n+1)]`
-/

namespace A337095.P3140951048357587131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337095.P3140951048357587131

/-! ## A337095.P17049885932258108678

`record[A006530(A084146(n+3))]`
-/

namespace A337095.P17049885932258108678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A084146 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337095.P17049885932258108678

/-! ## A337095.P15475416253905038255

`filter[A084146(n+1), A010051(#)]`
-/

namespace A337095.P15475416253905038255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A337095.P15475416253905038255

/-! ## A337095.P3140729591470281402

`∩[A000040(n+1), A084146(n+1)]`
-/

namespace A337095.P3140729591470281402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337095.P3140729591470281402

/-! ## A337095.P8060256301924705509

`∩[A006005(n+1), A084146(n+1)]`
-/

namespace A337095.P8060256301924705509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337095.P8060256301924705509

/-! ## A337095.P3014950931901398330

`∩[A008578(n+1), A084146(n+1)]`
-/

namespace A337095.P3014950931901398330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337095.P3014950931901398330

/-! ## A337095.P1545584774442924626

`∩[A067126(n+1), A084146(n+1)]`
-/

namespace A337095.P1545584774442924626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337095.P1545584774442924626

/-!
# A337096: Lexicographically earliest sequence of positive distinct terms such that the digital root of a(n) is the number of distinct prime factors of a(n+1).

The programs for A337096, there is no canonical definition to state claims against.
-/

/-! ## A337096.P14863973331396985051

`A330030(lt[A119034(n+1), A128369(n+1)])`
-/

namespace A337096.P14863973331396985051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330030 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A337096.P14863973331396985051

/-!
# A337097: Infinite sum of the odd numbers, compacted (see the Comments line for an explanation).

The programs for A337097, there is no canonical definition to state claims against.
-/

/-! ## A337097.P9839673013937885881

`Δ[(eq[1, A342510(n)]+n)²]`
-/

namespace A337097.P9839673013937885881
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342510 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A337097.P9839673013937885881

/-! ## A337097.P4774296496460590270

`Δ[∑[A001222(A196632(n+1))]²]`
-/

namespace A337097.P4774296496460590270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A196632 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A337097.P4774296496460590270

/-!
# A337098: Least k whose set of divisors contains exactly n quadruples (x, y, z, w) such that x^3 + y^3 + z^3 = w^3, or 0 if no such k exists.

The programs for A337098, there is no canonical definition to state claims against.
-/

/-! ## A337098.P17301113813460103512

`A290096((3^n+4)²-4)`
-/

namespace A337098.P17301113813460103512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290096 ((3 ^ n + 4) ^ 2 - 4)

end

end A337098.P17301113813460103512

/-!
# A337099: Largest positive number using exactly n segments on a calculator display (when '6' and '7' are represented using 6 resp. 3 segments).

The programs for A337099, the canonical program `A337099.P1669014588285810096` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337099 has offset 2).

The definition of A337099 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337099.P1669014588285810096

`a(n-1)+10*a(n-2)-10*a(n-3)` with `a(0)=1, a(1)=7, a(2)=11`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A337099

/-- `a(n-1)+10*a(n-2)-10*a(n-3)` -/
def P1669014588285810096.Spec : Prop :=
  ∀ n, P1669014588285810096.a n = A337099 (n + 2)

theorem P1669014588285810096.correct : P1669014588285810096.Spec := by
  intro n
  simp only [A337099, Nat.add_sub_cancel]

end A337099

/-! ## A337099.P11986459227137192835

`∑[ogf((1+6x-6x^2)/(1-10x^2))]`
-/

namespace A337099.P11986459227137192835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, -6] [1, 0, -10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337099.P11986459227137192835

namespace A337099

/-- `∑[ogf((1+6x-6x^2)/(1-10x^2))]` -/
def P11986459227137192835.Spec : Prop :=
  ∀ n, P11986459227137192835.a n = A337099 (n + 2)

end A337099

/-! ## A337099.P7464755418927808513

`ogf((1+6x-6x^2)/(1-x-10x^2+10x^3))`
-/

namespace A337099.P7464755418927808513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, -6] [1, -1, -10, 10] n

end

end A337099.P7464755418927808513

namespace A337099

/-- `ogf((1+6x-6x^2)/(1-x-10x^2+10x^3))` -/
def P7464755418927808513.Spec : Prop :=
  ∀ n, P7464755418927808513.a n = A337099 (n + 2)

end A337099

/-! ## A337099.P2554267441548558119

`10*a(n-2)+1` with `a(0)=1, a(1)=7`
-/

namespace A337099.P2554267441548558119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  10 * a (n - 2) + 1

end

end A337099.P2554267441548558119

namespace A337099

/-- `10*a(n-2)+1` -/
def P2554267441548558119.Spec : Prop :=
  ∀ n, (P2554267441548558119.a n : ℤ) = A337099 (n + 2)

end A337099

/-! ## A337099.P14237364987327762146

`lcm(10, a(n-2))+1` with `a(0)=1, a(1)=7`
-/

namespace A337099.P14237364987327762146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  Nat.lcm 10 (a (n - 2)) + 1

end

end A337099.P14237364987327762146

namespace A337099

/-- `lcm(10, a(n-2))+1` -/
def P14237364987327762146.Spec : Prop :=
  ∀ n, (P14237364987327762146.a n : ℤ) = A337099 (n + 2)

end A337099

/-! ## A337099.P16212359639785765031

`or(1, 10*a(n-2))` with `a(0)=1, a(1)=7`
-/

namespace A337099.P16212359639785765031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  Nat.lor 1 (10 * a (n - 2))

end

end A337099.P16212359639785765031

namespace A337099

/-- `or(1, 10*a(n-2))` -/
def P16212359639785765031.Spec : Prop :=
  ∀ n, (P16212359639785765031.a n : ℤ) = A337099 (n + 2)

end A337099

/-! ## A337099.P10558069469219719373

`xor(1, 10*a(n-2))` with `a(0)=1, a(1)=7`
-/

namespace A337099.P10558069469219719373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  Nat.xor 1 (10 * a (n - 2))

end

end A337099.P10558069469219719373

namespace A337099

/-- `xor(1, 10*a(n-2))` -/
def P10558069469219719373.Spec : Prop :=
  ∀ n, (P10558069469219719373.a n : ℤ) = A337099 (n + 2)

end A337099

/-! ## A337099.P10624247797107362912

`∑[10*a(n-2)]` with `a(0)=1, a(1)=6, a(2)=4`
-/

namespace A337099.P10624247797107362912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 4] fun n f1 =>
  10 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337099.P10624247797107362912

namespace A337099

/-- `∑[10*a(n-2)]` -/
def P10624247797107362912.Spec : Prop :=
  ∀ n, (P10624247797107362912.a n : ℤ) = A337099 (n + 2)

end A337099

