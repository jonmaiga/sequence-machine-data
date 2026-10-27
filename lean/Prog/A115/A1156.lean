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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A115601: a(n) = numerator of b(n), where b(1) = 1, b(n+1) = Sum_{k=1..n} b(k)^((-1)^(n-k+1)).

The programs for A115601, there is no canonical definition to state claims against.
-/

/-! ## A115601.P9895636002895195967

`a(n-2)*A063946(A000225(n))` with `a(0)=1, a(1)=1`
-/

namespace A115601.P9895636002895195967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A063946 (A000225 n).toNat

end

end A115601.P9895636002895195967

/-! ## A115601.P11713618484453800121

`a(n-2)*A001651(2^(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A115601.P11713618484453800121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A001651 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A115601.P11713618484453800121

/-! ## A115601.P11265382513491862118

`a(n-2)*A166250(2^(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A115601.P11265382513491862118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A166250 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A115601.P11265382513491862118

/-! ## A115601.P10664893524608315561

`A115602(A078822(2^n))`
-/

namespace A115601.P10664893524608315561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115602 (A078822 (2 ^ n)).toNat

end

end A115601.P10664893524608315561

/-! ## A115601.P17052229596509263200

`a(n-2)*A051612(A011782(n))` with `a(0)=1, a(1)=1`
-/

namespace A115601.P17052229596509263200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A051612 (A011782 n).toNat

end

end A115601.P17052229596509263200

/-!
# A115602: a(n) = denominator of b(n), where b(1) = 1, b(n+1) = Sum_{k=1..n} b(k)^((-1)^(n-k+1)).

The programs for A115602, there is no canonical definition to state claims against.
-/

/-! ## A115602.P16701819987154646978

`a(n-2)*A001651(A034008(n))` with `a(0)=1, a(1)=1`
-/

namespace A115602.P16701819987154646978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A001651 (A034008 n).toNat

end

end A115602.P16701819987154646978

/-! ## A115602.P3979416667762437992

`A115601(A115607(2^n)+n+1)`
-/

namespace A115602.P3979416667762437992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115601 (A115607 (2 ^ n) + (n + 1 : ℤ)).toNat

end

end A115602.P3979416667762437992

/-! ## A115602.P5719097661468507460

`A115601(A151936(n)+n)`
-/

namespace A115602.P5719097661468507460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115601 (A151936 n + (n : ℤ)).toNat

end

end A115602.P5719097661468507460

/-! ## A115602.P9906127432658214954

`A115601(or(n, A151936(n)))`
-/

namespace A115602.P9906127432658214954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115601 (Int.lor (n : ℤ) (A151936 n)).toNat

end

end A115602.P9906127432658214954

/-! ## A115602.P3685088613870298935

`A115601(xor(n, A151936(n)))`
-/

namespace A115602.P3685088613870298935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115601 (Int.xor (n : ℤ) (A151936 n)).toNat

end

end A115602.P3685088613870298935

/-!
# A115604: Triangle read by rows: T(n,k) is the number of partitions of n into odd parts in which the smallest part occurs k times (1<=k<=n).

The programs for A115604, there is no canonical definition to state claims against.
-/

/-! ## A115604.P8376360139529316082

`A002865(A294733(n+1)-A114088(n+1))`
-/

namespace A115604.P8376360139529316082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A294733 (n + 1) - A114088 (n + 1)).toNat

end

end A115604.P8376360139529316082

/-! ## A115604.P17006513865787724468

`A338916(A294733(n+1)-A114088(n+1))`
-/

namespace A115604.P17006513865787724468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338916 (A294733 (n + 1) - A114088 (n + 1)).toNat

end

end A115604.P17006513865787724468

/-! ## A115604.P183650117699068464

`A105242(A238129(n+1)+1)`
-/

namespace A115604.P183650117699068464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105242 (A238129 (n + 1) + 1).toNat

end

end A115604.P183650117699068464

/-! ## A115604.P12243127722629465612

`A280750(A257213(A281350(n+1)))`
-/

namespace A115604.P12243127722629465612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 (A257213 (A281350 (n + 1)).toNat).toNat

end

end A115604.P12243127722629465612

/-! ## A115604.P9948657618262722593

`A003269(A325466(n+1)^A066099(n+5))`
-/

namespace A115604.P9948657618262722593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (SequenceMachineLib.roundAway ((A325466 (n + 1) : ℚ) ^ (A066099 (n + 5) : ℤ))).toNat

end

end A115604.P9948657618262722593

/-!
# A115605: Expansion of -x^2*(2 + x - 2*x^2 - x^3 + 2*x^4) / ( (x-1)*(1+x)*(1 + x + x^2)*(x^2 - x + 1)*(x^2 + 4*x - 1)*(x^2 - x - 1) ).

The programs for A115605, the canonical program `A115605.P11012262476927134262` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115605 has offset 0).

The definition of A115605 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2x^2+x^3-2x^4-x^5+2x^6)/(1-3x-6x^2+3x^3+x^4-x^6+3x^7+6x^8-3x^9-x^10))` (program `A115605.P11012262476927134262`, by `A115605.P11012262476927134262.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A115605.P11012262476927134262

`ogf((2x^2+x^3-2x^4-x^5+2x^6)/(1-3x-6x^2+3x^3+x^4-x^6+3x^7+6x^8-3x^9-x^10))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115605

/-- `ogf((2x^2+x^3-2x^4-x^5+2x^6)/(1-3x-6x^2+3x^3+x^4-x^6+3x^7+6x^8-3x^9-x^10))` -/
def P11012262476927134262.Spec : Prop :=
  ∀ n, P11012262476927134262.a n = A115605 n

theorem P11012262476927134262.correct : P11012262476927134262.Spec := by
  intro n
  simp only [A115605]

end A115605

/-! ## A115605.P16814994726970382081

`round(∑[A346513(n)/4])`
-/

namespace A115605.P16814994726970382081
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346513 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115605.P16814994726970382081

namespace A115605

/-- `round(∑[A346513(n)/4])` -/
def P16814994726970382081.Spec : Prop :=
  ∀ n, P16814994726970382081.a n = A115605 n

end A115605

/-! ## A115605.P17610745474942676090

`round(A056570(n+1)/4)`
-/

namespace A115605.P17610745474942676090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A056570 (n + 1) : ℚ) / 4)

end

end A115605.P17610745474942676090

namespace A115605

/-- `round(A056570(n+1)/4)` -/
def P17610745474942676090.Spec : Prop :=
  ∀ n, P17610745474942676090.a n = A115605 n

end A115605

/-! ## A115605.P3469282913789072560

`round(A000045(n+1)^3/4)`
-/

namespace A115605.P3469282913789072560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000045 (n + 1) ^ 3 : ℚ) / 4)

end

end A115605.P3469282913789072560

namespace A115605

/-- `round(A000045(n+1)^3/4)` -/
def P3469282913789072560.Spec : Prop :=
  ∀ n, P3469282913789072560.a n = A115605 n

end A115605

/-! ## A115605.P17554981507675888849

`round(Δ[A005968(n)/4])`
-/

namespace A115605.P17554981507675888849
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005968 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A115605.P17554981507675888849

namespace A115605

/-- `round(Δ[A005968(n)/4])` -/
def P17554981507675888849.Spec : Prop :=
  ∀ n, P17554981507675888849.a n = A115605 n

end A115605

/-!
# A115606: Partial sums of A102540 (primes that are not Chen primes).

The programs for A115606, the canonical program `A115606.P15732138880714301943` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115606 has offset 0).

The definition of A115606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115606.P4761093218108557824

`A118483(n)-1`
-/

namespace A115606.P4761093218108557824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118483 n - 1

end

end A115606.P4761093218108557824

namespace A115606

/-- `A118483(n)-1` -/
def P4761093218108557824.Spec : Prop :=
  ∀ n, P4761093218108557824.a n = A115606 n

theorem P4761093218108557824.correct : P4761093218108557824.Spec := by
  intro n
  simp only [A115606, Nat.add_sub_cancel, A115606.P4761093218108557824.a, A115606.P15732138880714301943.a, A102540, A102540.P12409149115680564712.a, A118483, A118483.P12141014104972374228.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A118499, A118499.P15079059931476377411.f1, A118499.P15079059931476377411.f2, A118499.P15079059931476377411.a, A106667, A106667.P4598466350426453199.f1, A106667.P4598466350426453199.a, A052147, A052147.P15217781913070555828.a, A154955, A154955.P18412881232710977697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A115606

/-! ## A115606.P15732138880714301943

`A102540(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A115606

/-- `A102540(n)+a(n-1)` -/
def P15732138880714301943.Spec : Prop :=
  ∀ n, P15732138880714301943.a n = A115606 n

theorem P15732138880714301943.correct : P15732138880714301943.Spec := by
  intro n
  simp only [A115606]

end A115606

/-! ## A115606.P2801886984354592813

`∑[A102540(n+1)]-A102540(n+1)`
-/

namespace A115606.P2801886984354592813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A102540 (n + 1)

end

end A115606.P2801886984354592813

namespace A115606

/-- `∑[A102540(n+1)]-A102540(n+1)` -/
def P2801886984354592813.Spec : Prop :=
  ∀ n, P2801886984354592813.a n = A115606 n

end A115606

/-! ## A115606.P5348016677900200573

`A134824(n+2)+A118483(n)`
-/

namespace A115606.P5348016677900200573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A118483 n

end

end A115606.P5348016677900200573

namespace A115606

/-- `A134824(n+2)+A118483(n)` -/
def P5348016677900200573.Spec : Prop :=
  ∀ n, P5348016677900200573.a n = A115606 n

end A115606

/-! ## A115606.P48787168101570026

`A000040(A118499(n))+a(n-1)` with `a(0)=0`
-/

namespace A115606.P48787168101570026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000040 (A118499 n).toNat + a (n - 1)

end

end A115606.P48787168101570026

namespace A115606

/-- `A000040(A118499(n))+a(n-1)` -/
def P48787168101570026.Spec : Prop :=
  ∀ n, P48787168101570026.a n = A115606 n

end A115606

/-!
# A115607: Sum of odd divisors of n times (-1)^(n+1).

The programs for A115607, the canonical program `A115607.P10089454494571849752` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115607 has offset 1).

The definition of A115607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115607.P10168290219893779204

`∑{d}[n+1, (-1)^(n+1+#)*(n+1)/#]`
-/

namespace A115607.P10168290219893779204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((-1) ^ (n + 1 + d) * (n + 1 : ℤ) : ℚ) / (d : ℚ)

end

end A115607.P10168290219893779204

namespace A115607

/-- `∑{d}[n+1, (-1)^(n+1+#)*(n+1)/#]` -/
def P10168290219893779204.Spec : Prop :=
  ∀ n, P10168290219893779204.a n = (A115607 (n + 1) : ℚ)

end A115607

/-! ## A115607.P10089454494571849752

`(-1)^n*A000593(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A115607

/-- `(-1)^n*A000593(n+1)` -/
def P10089454494571849752.Spec : Prop :=
  ∀ n, P10089454494571849752.a n = A115607 (n + 1)

theorem P10089454494571849752.correct : P10089454494571849752.Spec := by
  intro n
  simp only [A115607, Nat.add_sub_cancel]

end A115607

/-! ## A115607.P9863256284650976634

`∑{d}[n+1, #]/xor(n, n+1)*(-1)^n`
-/

namespace A115607.P9863256284650976634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ) * ((-1) ^ n : ℚ)

end

end A115607.P9863256284650976634

namespace A115607

/-- `∑{d}[n+1, #]/xor(n, n+1)*(-1)^n` -/
def P9863256284650976634.Spec : Prop :=
  ∀ n, P9863256284650976634.a n = (A115607 (n + 1) : ℚ)

end A115607

/-! ## A115607.P8484711614275275890

`floor(∑{d}[n+1, #]/xor(n, n+1))/(-1)^n`
-/

namespace A115607.P8484711614275275890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ)⌋ : ℚ) / ((-1) ^ n : ℚ)

end

end A115607.P8484711614275275890

namespace A115607

/-- `floor(∑{d}[n+1, #]/xor(n, n+1))/(-1)^n` -/
def P8484711614275275890.Spec : Prop :=
  ∀ n, P8484711614275275890.a n = (A115607 (n + 1) : ℚ)

end A115607

/-! ## A115607.P1346809036490838741

`ceil(∑{d}[n+1, #]/xor(n, n+1))/(-1)^n`
-/

namespace A115607.P1346809036490838741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ)⌉ : ℚ) / ((-1) ^ n : ℚ)

end

end A115607.P1346809036490838741

namespace A115607

/-- `ceil(∑{d}[n+1, #]/xor(n, n+1))/(-1)^n` -/
def P1346809036490838741.Spec : Prop :=
  ∀ n, P1346809036490838741.a n = (A115607 (n + 1) : ℚ)

end A115607

/-! ## A115607.P18296050828570710223

`round(∑{d}[n+1, #]/xor(n, n+1))/(-1)^n`
-/

namespace A115607.P18296050828570710223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ)) : ℚ) / ((-1) ^ n : ℚ)

end

end A115607.P18296050828570710223

namespace A115607

/-- `round(∑{d}[n+1, #]/xor(n, n+1))/(-1)^n` -/
def P18296050828570710223.Spec : Prop :=
  ∀ n, P18296050828570710223.a n = (A115607 (n + 1) : ℚ)

end A115607

/-! ## A115607.P5734280416477617717

`∑{d}[(n+1)/and(n+1, -(n+1)), #]/(-1)^n`
-/

namespace A115607.P5734280416477617717
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d : ℕ) : ℚ) / ((-1) ^ n : ℚ)

end

end A115607.P5734280416477617717

namespace A115607

/-- `∑{d}[(n+1)/and(n+1, -(n+1)), #]/(-1)^n` -/
def P5734280416477617717.Spec : Prop :=
  ∀ n, P5734280416477617717.a n = (A115607 (n + 1) : ℚ)

end A115607

/-! ## A115607.P1732754152795331411

`(-1)^n*A000203((n+1)/and(n+1, -(n+1)))`
-/

namespace A115607.P1732754152795331411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A115607.P1732754152795331411

namespace A115607

/-- `(-1)^n*A000203((n+1)/and(n+1, -(n+1)))` -/
def P1732754152795331411.Spec : Prop :=
  ∀ n, P1732754152795331411.a n = A115607 (n + 1)

end A115607

/-! ## A115607.P15124414214053211415

`(-1)^n*A002129((n+1)/and(n+1, -(n+1)))`
-/

namespace A115607.P15124414214053211415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A002129 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A115607.P15124414214053211415

namespace A115607

/-- `(-1)^n*A002129((n+1)/and(n+1, -(n+1)))` -/
def P15124414214053211415.Spec : Prop :=
  ∀ n, P15124414214053211415.a n = A115607 (n + 1)

end A115607

/-! ## A115607.P15106006422115112707

`(-1)^n*A215947((n+1)/and(n+1, -(n+1)))`
-/

namespace A115607.P15106006422115112707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A215947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A115607.P15106006422115112707

namespace A115607

/-- `(-1)^n*A215947((n+1)/and(n+1, -(n+1)))` -/
def P15106006422115112707.Spec : Prop :=
  ∀ n, P15106006422115112707.a n = A115607 (n + 1)

end A115607

/-! ## A115607.P15112409311982233967

`A002129(A259445(n+1))`
-/

namespace A115607.P15112409311982233967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (A259445 (n + 1)).toNat

end

end A115607.P15112409311982233967

namespace A115607

/-- `A002129(A259445(n+1))` -/
def P15112409311982233967.Spec : Prop :=
  ∀ n, P15112409311982233967.a n = A115607 (n + 1)

end A115607

/-! ## A115607.P8851905709084474275

`A000593(n+1)*A033999(n)`
-/

namespace A115607.P8851905709084474275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) * A033999 n

end

end A115607.P8851905709084474275

namespace A115607

/-- `A000593(n+1)*A033999(n)` -/
def P8851905709084474275.Spec : Prop :=
  ∀ n, P8851905709084474275.a n = A115607 (n + 1)

theorem P8851905709084474275.correct : P8851905709084474275.Spec := by
  intro n
  simp only [A115607, Nat.add_sub_cancel, A115607.P8851905709084474275.a, A115607.P10089454494571849752.a, A000593, A000593.P10331878810394225172.f1, A000593.P10331878810394225172.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A115607

/-! ## A115607.P2415121803449583041

`A109506(n+1)/A010684(n)`
-/

namespace A115607.P2415121803449583041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109506 (n + 1) : ℚ) / (A010684 n : ℚ)

end

end A115607.P2415121803449583041

namespace A115607

/-- `A109506(n+1)/A010684(n)` -/
def P2415121803449583041.Spec : Prop :=
  ∀ n, P2415121803449583041.a n = (A115607 (n + 1) : ℚ)

end A115607

/-! ## A115607.P13352486039140944269

`A146076(n+1)+A143348(n+1)`
-/

namespace A115607.P13352486039140944269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1) + A143348 (n + 1)

end

end A115607.P13352486039140944269

namespace A115607

/-- `A146076(n+1)+A143348(n+1)` -/
def P13352486039140944269.Spec : Prop :=
  ∀ n, P13352486039140944269.a n = A115607 (n + 1)

end A115607

/-! ## A115607.P8632603360806464293

`A113184(n+1)-A146076(n+1)`
-/

namespace A115607.P8632603360806464293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113184 (n + 1) - A146076 (n + 1)

end

end A115607.P8632603360806464293

namespace A115607

/-- `A113184(n+1)-A146076(n+1)` -/
def P8632603360806464293.Spec : Prop :=
  ∀ n, P8632603360806464293.a n = A115607 (n + 1)

end A115607

/-! ## A115607.P14563004743173376906

`A000593(n+1)*A062157(n+1)`
-/

namespace A115607.P14563004743173376906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) * A062157 (n + 1)

end

end A115607.P14563004743173376906

namespace A115607

/-- `A000593(n+1)*A062157(n+1)` -/
def P14563004743173376906.Spec : Prop :=
  ∀ n, P14563004743173376906.a n = A115607 (n + 1)

theorem P14563004743173376906.correct : P14563004743173376906.Spec := by
  intro n
  simp only [A115607, Nat.add_sub_cancel, A115607.P14563004743173376906.a, A115607.P10089454494571849752.a, A000593, A000593.P10331878810394225172.f1, A000593.P10331878810394225172.a, A062157, A062157.P13834877263571195293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A115607

/-! ## A115607.P15373405667496866560

`A002131(n+1)/A118827(n+1)`
-/

namespace A115607.P15373405667496866560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002131 (n + 1) : ℚ) / (A118827 (n + 1) : ℚ)

end

end A115607.P15373405667496866560

namespace A115607

/-- `A002131(n+1)/A118827(n+1)` -/
def P15373405667496866560.Spec : Prop :=
  ∀ n, P15373405667496866560.a n = (A115607 (n + 1) : ℚ)

end A115607

/-! ## A115607.P9092760204298384773

`A143348(n+1)/A038712(n+1)`
-/

namespace A115607.P9092760204298384773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143348 (n + 1) : ℚ) / (A038712 (n + 1) : ℚ)

end

end A115607.P9092760204298384773

namespace A115607

/-- `A143348(n+1)/A038712(n+1)` -/
def P9092760204298384773.Spec : Prop :=
  ∀ n, P9092760204298384773.a n = (A115607 (n + 1) : ℚ)

end A115607

/-! ## A115607.P11128256264707995440

`A186690(n+1)/A006519(n+1)`
-/

namespace A115607.P11128256264707995440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186690 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)

end

end A115607.P11128256264707995440

namespace A115607

/-- `A186690(n+1)/A006519(n+1)` -/
def P11128256264707995440.Spec : Prop :=
  ∀ n, P11128256264707995440.a n = (A115607 (n + 1) : ℚ)

end A115607

/-! ## A115607.P18442001508591315129

`A111973(n+1)+A133691(n+1)-A000593(n+1)`
-/

namespace A115607.P18442001508591315129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111973 (n + 1) + (A133691 (n + 1) - A000593 (n + 1))

end

end A115607.P18442001508591315129

namespace A115607

/-- `A111973(n+1)+A133691(n+1)-A000593(n+1)` -/
def P18442001508591315129.Spec : Prop :=
  ∀ n, P18442001508591315129.a n = A115607 (n + 1)

end A115607

/-!
# A115612: Number of 7-tuples of primes in arithmetic progression less than 10^n.

The programs for A115612, there is no canonical definition to state claims against.
-/

/-! ## A115612.P8800416219646870248

`A167707(26*a(n-1))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A115612.P8800416219646870248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A167707 (26 * a (n - 1)).toNat

end

end A115612.P8800416219646870248

/-!
# A115613: Number of 8-tuples of primes in arithmetic progression less than 10^n.

The programs for A115613, there is no canonical definition to state claims against.
-/

/-! ## A115613.P17435097542508570085

`3^(a(n-1)-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=8`
-/

namespace A115613.P17435097542508570085
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 0, 0, 8] fun n a =>
  (3 : ℝ) ^ (a (n - 1) - 3)

end

end A115613.P17435097542508570085

/-!
# A115618: a(n) = 1 + (n+6)*2^(n-1).

The programs for A115618, the canonical program `A115618.P4897749065524280843` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115618 has offset 0).

The definition of A115618 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A115618.anchor (n : ℕ) : (A115618 n : ℚ) = 1 + (n + 6 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)` in `Proof.A115.A115618`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A115618.P4897749065524280843

`1+(n+6)*2^(n-1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115618

/-- `1+(n+6)*2^(n-1)` -/
def P4897749065524280843.Spec : Prop :=
  ∀ n, P4897749065524280843.a n = (A115618 n : ℚ)

end A115618

/-! ## A115618.P14607702760912565441

`or(1, 4*(a(n-1)-a(n-2)))` with `a(0)=4, a(1)=8`
-/

namespace A115618.P14607702760912565441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 8] fun n a =>
  Int.lor 1 (4 * (a (n - 1) - a (n - 2)))

end

end A115618.P14607702760912565441

namespace A115618

/-- `or(1, 4*(a(n-1)-a(n-2)))` -/
def P14607702760912565441.Spec : Prop :=
  ∀ n, P14607702760912565441.a n = A115618 n

end A115618

/-! ## A115618.P6847148146157340531

`xor(1, 4*(a(n-1)-a(n-2)))` with `a(0)=4, a(1)=8`
-/

namespace A115618.P6847148146157340531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 8] fun n a =>
  Int.xor 1 (4 * (a (n - 1) - a (n - 2)))

end

end A115618.P6847148146157340531

namespace A115618

/-- `xor(1, 4*(a(n-1)-a(n-2)))` -/
def P6847148146157340531.Spec : Prop :=
  ∀ n, P6847148146157340531.a n = A115618 n

end A115618

/-! ## A115618.P12912082293022251828

`∑[4*(a(n-1)-a(n-2))]` with `a(0)=4, a(1)=4, a(2)=9`
-/

namespace A115618.P12912082293022251828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 4, 9] fun n f1 =>
  4 * (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115618.P12912082293022251828

namespace A115618

/-- `∑[4*(a(n-1)-a(n-2))]` -/
def P12912082293022251828.Spec : Prop :=
  ∀ n, P12912082293022251828.a n = A115618 n

end A115618

/-! ## A115618.P2745592424383045918

`ceil(xor(1, (n+6)*2^n)/2)`
-/

namespace A115618.P2745592424383045918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 ((n + 6) * 2 ^ n) : ℚ) / 2⌉

end

end A115618.P2745592424383045918

namespace A115618

/-- `ceil(xor(1, (n+6)*2^n)/2)` -/
def P2745592424383045918.Spec : Prop :=
  ∀ n, P2745592424383045918.a n = A115618 n

end A115618

/-!
# A115619: Sigma(A033631(n)) {sigma is the sum of divisors function A000203}.

The programs for A115619, there is no canonical definition to state claims against.
-/

/-! ## A115619.P15573642997360781443

`A000203(A033631(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A115619.P15573642997360781443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A033631 (n + 1)).toNat

end

end A115619.P15573642997360781443

/-! ## A115619.P9288584544307671092

`∑{d}[A115620(n+1), #]`
-/

namespace A115619.P9288584544307671092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115620 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A115619.P9288584544307671092

/-! ## A115619.P1696991002988927530

`∑{d}[record[A033631(A117910(n))], #]`
-/

namespace A115619.P1696991002988927530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033631 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A115619.P1696991002988927530

/-! ## A115619.P6762409562762071762

`∑{d}[record[A033631(A134478(n))], #]`
-/

namespace A115619.P6762409562762071762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033631 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A115619.P6762409562762071762

/-! ## A115619.P7154435311895297455

`∑{d}[∩[A066831(n+1), A172466(n+1)], #]`
-/

namespace A115619.P7154435311895297455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066831 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172466 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A115619.P7154435311895297455

/-!
# A115620: Phi(A033631(n)) {phi is the Euler totient function A000010}.

The programs for A115620, there is no canonical definition to state claims against.
-/

/-! ## A115620.P17451585350937232313

`A000010(A033631(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A115620.P17451585350937232313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A033631 (n + 1)).toNat

end

end A115620.P17451585350937232313

/-! ## A115620.P10416731330605553386

`A000010(∩[A066831(n+1), A172466(n+1)])`
-/

namespace A115620.P10416731330605553386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172466 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A115620.P10416731330605553386

/-! ## A115620.P11164806663079299746

`A000010(∩[A066831(n+1), A190503(n+1)])`
-/

namespace A115620.P11164806663079299746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190503 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A115620.P11164806663079299746

/-! ## A115620.P3479703873307241696

`A000010(∩[A172466(n+1), A190503(n+1)])`
-/

namespace A115620.P3479703873307241696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190503 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A115620.P3479703873307241696

/-! ## A115620.P5608615698971914591

`A003958(A033631(n+1)*A049164(n))`
-/

namespace A115620.P5608615698971914591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A033631 (n + 1) * A049164 n).toNat

end

end A115620.P5608615698971914591

/-!
# A115621: Signature of partitions in Abramowitz and Stegun order.

The programs for A115621, there is no canonical definition to state claims against.
-/

/-! ## A115621.P6093306718600247544

`gcd(A000005(A194976(2*n+1)), A083090(n+3))`
-/

namespace A115621.P6093306718600247544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A194976 (2 * n + 1)).toNat) (A083090 (n + 3))

end

end A115621.P6093306718600247544

/-! ## A115621.P12546756396558020636

`A175597(A175597(A008706(n))*A316495(n+1))`
-/

namespace A115621.P12546756396558020636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175597 (A175597 (A008706 n).toNat * A316495 (n + 1)).toNat

end

end A115621.P12546756396558020636

/-! ## A115621.P16778152232273674102

`A324912(A133504(n+1)+34)`
-/

namespace A115621.P16778152232273674102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324912 (A133504 (n + 1) + 34).toNat

end

end A115621.P16778152232273674102

/-! ## A115621.P5609927072360968224

`A000189(A344651(n)+A302656(n+1))`
-/

namespace A115621.P5609927072360968224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A344651 n + A302656 (n + 1)).toNat

end

end A115621.P5609927072360968224

/-! ## A115621.P9403284518057710857

`A327168(A005304(n+2))`
-/

namespace A115621.P9403284518057710857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327168 (A005304 (n + 2)).toNat

end

end A115621.P9403284518057710857

/-!
# A115622: Irregular triangle read by rows: row m lists the signatures of all partitions of m when the partitions are arranged in Mathematica order.

The programs for A115622, there is no canonical definition to state claims against.
-/

/-! ## A115622.P1825656698932438726

`gcd(A138785(A138879(n+1)), A340061(n+1))`
-/

namespace A115622.P1825656698932438726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138785 (A138879 (n + 1)).toNat) (A340061 (n + 1))

end

end A115622.P1825656698932438726

/-! ## A115622.P5509886911038561001

`A099244(A061395(A020695(n)))`
-/

namespace A115622.P5509886911038561001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099244 (A061395 (A020695 n).toNat).toNat

end

end A115622.P5509886911038561001

/-! ## A115622.P5390868696259382293

`gcd(A320051(3*n+1), A334029(A052382(n+1)))`
-/

namespace A115622.P5390868696259382293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A320051 (3 * n + 1)) (A334029 (A052382 (n + 1)).toNat)

end

end A115622.P5390868696259382293

/-!
# A115623: Irregular triangle read by rows: row n lists numbers of distinct parts of partitions of n in Mathematica order.

The programs for A115623, there is no canonical definition to state claims against.
-/

/-! ## A115623.P12531270562435367593

`∑{p}[A129129(n), A001055(#)]`
-/

namespace A115623.P12531270562435367593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001055 p

end

end A115623.P12531270562435367593

/-! ## A115623.P11378398710731986528

`∑{p}[A129129(n), A001222(#)]`
-/

namespace A115623.P11378398710731986528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A115623.P11378398710731986528

/-! ## A115623.P8925259283279867221

`∑{p}[A129129(n), A003415(#)]`
-/

namespace A115623.P8925259283279867221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003415 p

end

end A115623.P8925259283279867221

/-! ## A115623.P8333993739092260293

`∑{p}[A129129(n), A326153(#)]`
-/

namespace A115623.P8333993739092260293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A326153 p

end

end A115623.P8333993739092260293

/-! ## A115623.P6551555892473397619

`∑{p}[A129129(n), A327401(#)]`
-/

namespace A115623.P6551555892473397619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A327401 p

end

end A115623.P6551555892473397619

/-! ## A115623.P16621780185537506750

`A001222(∏{p}[A129129(n), #])`
-/

namespace A115623.P16621780185537506750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A115623.P16621780185537506750

/-! ## A115623.P9436207695815802898

`A001221(A129129(n))`
-/

namespace A115623.P9436207695815802898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A129129 n).toNat

end

end A115623.P9436207695815802898

/-! ## A115623.P13368934977488359205

`A124767(A114994(n))`
-/

namespace A115623.P13368934977488359205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A114994 n).toNat

end

end A115623.P13368934977488359205

/-! ## A115623.P8721251271462010801

`A001222(∏{e}[A129129(n)², A008578(#)])`
-/

namespace A115623.P8721251271462010801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129129 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A008578 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A115623.P8721251271462010801

/-! ## A115623.P10709855319693141207

`A234092(n+1)-1`
-/

namespace A115623.P10709855319693141207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234092 (n + 1) - 1

end

end A115623.P10709855319693141207

/-!
# A115624: Number of iterations of signature function required to get to [1] from partitions in Mathematica order.

The programs for A115624, there is no canonical definition to state claims against.
-/

/-! ## A115624.P11273831770191197088

`A182850(A129129(n+1))`
-/

namespace A115624.P11273831770191197088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (A129129 (n + 1)).toNat

end

end A115624.P11273831770191197088

/-! ## A115624.P17001661626655873441

`A329747(A063008(n+1))`
-/

namespace A115624.P17001661626655873441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329747 (A063008 (n + 1)).toNat

end

end A115624.P17001661626655873441

/-! ## A115624.P16498286246975932461

`A329747(A131822(n+2))`
-/

namespace A115624.P16498286246975932461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329747 (A131822 (n + 2)).toNat

end

end A115624.P16498286246975932461

/-! ## A115624.P7109967489725224878

`A113787(lt[A113758(n+4), A113754(2*(n+1))])`
-/

namespace A115624.P7109967489725224878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113758 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113754 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113787 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115624.P7109967489725224878

/-! ## A115624.P12796796281809361682

`A113787(n+1)^A038137(A113766(n+1))`
-/

namespace A115624.P12796796281809361682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113787 (n + 1) : ℚ) ^ (A038137 (A113766 (n + 1)).toNat : ℤ)

end

end A115624.P12796796281809361682

/-!
# A115625: Number of partitions of {1,...,n} into block sizes a power of 2.

The programs for A115625, there is no canonical definition to state claims against.
-/

/-! ## A115625.P16246108808649107798

`A275426(n)+A044941(A000079(n))`
-/

namespace A115625.P16246108808649107798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275426 n + A044941 (A000079 n).toNat

end

end A115625.P16246108808649107798

/-! ## A115625.P14211646378743089904

`A275426(n)+A185284(A000009(n))`
-/

namespace A115625.P14211646378743089904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275426 n + A185284 (A000009 n).toNat

end

end A115625.P14211646378743089904

/-! ## A115625.P9768019830533188264

`A275426(n)+A025466(A113501(n+1))`
-/

namespace A115625.P9768019830533188264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275426 n + A025466 (A113501 (n + 1)).toNat

end

end A115625.P9768019830533188264

/-! ## A115625.P8549069668987436103

`A275426(n)+A008683(A141145(n+1))`
-/

namespace A115625.P8549069668987436103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275426 n + A008683 (A141145 (n + 1)).toNat

end

end A115625.P8549069668987436103

/-! ## A115625.P12143998687399519642

`A185284(A000009(n))-(A185284(n)-A275426(n))`
-/

namespace A115625.P12143998687399519642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000009 n).toNat - (A185284 n - A275426 n)

end

end A115625.P12143998687399519642

/-!
# A115626: Number of non-squashing partitions of {1,...,n}.

The programs for A115626, there is no canonical definition to state claims against.
-/

/-! ## A115626.P8856037665636693128

`A182395(A038149(n))`
-/

namespace A115626.P8856037665636693128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182395 (A038149 n).toNat

end

end A115626.P8856037665636693128

/-! ## A115626.P5240883096450543699

`A122364(A148117(n))`
-/

namespace A115626.P5240883096450543699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122364 (A148117 n).toNat

end

end A115626.P5240883096450543699

/-! ## A115626.P15774212514280675261

`A122364(A148118(n))`
-/

namespace A115626.P15774212514280675261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122364 (A148118 n).toNat

end

end A115626.P15774212514280675261

/-!
# A115627: Irregular triangle read by rows: T(n,k) = multiplicity of prime(k) as a divisor of n!.

The programs for A115627, there is no canonical definition to state claims against.
-/

/-! ## A115627.P9933679909652237486

`val(A176383(n+2), p?[A002260(n+1)+1])`
-/

namespace A115627.P9933679909652237486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A176383 (n + 2)).toNat (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A115627.P9933679909652237486

/-! ## A115627.P7238691899566068577

`val(A176383(n+2), p?[A002260(n+1)])`
-/

namespace A115627.P7238691899566068577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A176383 (n + 2)).toNat (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A115627.P7238691899566068577

/-! ## A115627.P13794982431932212151

`val(A176383(n+2), p?[A002262(n)+1])`
-/

namespace A115627.P13794982431932212151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A176383 (n + 2)).toNat (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A115627.P13794982431932212151

/-! ## A115627.P17630005458554548168

`val(A176383(n+2), p?[A002262(n)])`
-/

namespace A115627.P17630005458554548168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A176383 (n + 2)).toNat (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A115627.P17630005458554548168

/-! ## A115627.P1338392634458265551

`val(A176383(n+2), p?[A196199(n)+1])`
-/

namespace A115627.P1338392634458265551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A176383 (n + 2)).toNat (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A115627.P1338392634458265551

/-! ## A115627.P13196355104233231994

`val(A176383(n+2), p?[A196199(n)])`
-/

namespace A115627.P13196355104233231994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A176383 (n + 2)).toNat (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A115627.P13196355104233231994

/-! ## A115627.P2017496260910254442

`∑{e}[A176383(n+2), #]`
-/

namespace A115627.P2017496260910254442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176383 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A115627.P2017496260910254442

/-! ## A115627.P2110503473063583799

`A085735(∏{e}[A176383(n+2), #])`
-/

namespace A115627.P2110503473063583799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176383 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085735 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A115627.P2110503473063583799

/-! ## A115627.P13244850420052146096

`A246095(∏{e}[A176383(n+2), #])`
-/

namespace A115627.P13244850420052146096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176383 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246095 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A115627.P13244850420052146096

/-! ## A115627.P12935873818613588097

`A250246(∏{e}[A176383(n+2), #])`
-/

namespace A115627.P12935873818613588097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176383 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A115627.P12935873818613588097

/-!
# A115628: Factorization of n! into primorials.

The programs for A115628, there is no canonical definition to state claims against.
-/

/-! ## A115628.P14170037696126537932

`A321104(record[A217956(n+1)])`
-/

namespace A115628.P14170037696126537932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321104 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115628.P14170037696126537932

/-! ## A115628.P2474400019180696048

`A242082(A313100(or(n+1, xor(3, n)))+n)`
-/

namespace A115628.P2474400019180696048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242082 (A313100 (Nat.lor (n + 1) (Nat.xor 3 n)) + (n : ℤ)).toNat

end

end A115628.P2474400019180696048

/-! ## A115628.P14785975255706632680

`A329160(2*(n+2))%(A337135(n+1)+1)`
-/

namespace A115628.P14785975255706632680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329160 (2 * (n + 2))) (A337135 (n + 1) + 1)

end

end A115628.P14785975255706632680

/-! ## A115628.P4316312879346906602

`A287331(A287330(n)+A084183(n))`
-/

namespace A115628.P4316312879346906602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287331 (A287330 n + A084183 n).toNat

end

end A115628.P4316312879346906602

/-! ## A115628.P5959701973517830757

`A088950(3*A245226(n+3))`
-/

namespace A115628.P5959701973517830757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088950 (3 * A245226 (n + 3)).toNat

end

end A115628.P5959701973517830757

/-!
# A115633: A divide and conquer-related triangle: see formula for T(n,k), n >= k >= 0.

The programs for A115633, there is no canonical definition to state claims against.
-/

/-! ## A115633.P17304271374274900399

`A033999(A003056(n))*A115713(n)`
-/

namespace A115633.P17304271374274900399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A003056 n).toNat * A115713 n

end

end A115633.P17304271374274900399

/-! ## A115633.P572974475223500372

`A066170(A057944(n))*A115713(n)`
-/

namespace A115633.P572974475223500372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066170 (A057944 n).toNat * A115713 n

end

end A115633.P572974475223500372

/-! ## A115633.P5406217363796714750

`A034947(A131507(n))*A115713(n)`
-/

namespace A115633.P5406217363796714750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A131507 n).toNat * A115713 n

end

end A115633.P5406217363796714750

/-! ## A115633.P11092802683239388163

`A064645(n)*A115524(n)*A064645(n)`
-/

namespace A115633.P11092802683239388163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 n * A115524 n * A064645 n

end

end A115633.P11092802683239388163

/-! ## A115633.P2238175357406772487

`A064645(n)²*A115524(n)`
-/

namespace A115633.P2238175357406772487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 n ^ 2 * A115524 n

end

end A115633.P2238175357406772487

/-! ## A115633.P10768478247209816968

`A115713(n)*A115714(A003056(n)²)`
-/

namespace A115633.P10768478247209816968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115713 n * A115714 (A003056 n ^ 2).toNat

end

end A115633.P10768478247209816968

/-! ## A115633.P13464864174886068158

`A115524(n)*A115715(n)`
-/

namespace A115633.P13464864174886068158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115524 n * A115715 n

end

end A115633.P13464864174886068158

/-! ## A115633.P7120590632998782813

`abs(A115636(n))*A115524(n)`
-/

namespace A115633.P7120590632998782813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115636 n| * A115524 n

end

end A115633.P7120590632998782813

/-! ## A115633.P5807628088695136598

`A115713(n)*A165586(A137688(n))`
-/

namespace A115633.P5807628088695136598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115713 n * A165586 (A137688 n).toNat

end

end A115633.P5807628088695136598

/-! ## A115633.P16586952943281774219

`A004718(A098354(n+1))*A115713(n)`
-/

namespace A115633.P16586952943281774219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A098354 (n + 1)).toNat * A115713 n

end

end A115633.P16586952943281774219

/-!
# A115634: Expansion of (1-4*x^2)/(1-x^2).

The programs for A115634, the canonical program `A115634.P6244746743764822648` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115634 has offset 0).

The definition of A115634 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x^2)/(1-x^2))` (program `A115634.P6244746743764822648`, by `A115634.P6244746743764822648.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A115634.P6244746743764822648

`ogf((1-4x^2)/(1-x^2))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115634

/-- `ogf((1-4x^2)/(1-x^2))` -/
def P6244746743764822648.Spec : Prop :=
  ∀ n, P6244746743764822648.a n = A115634 n

theorem P6244746743764822648.correct : P6244746743764822648.Spec := by
  intro n
  simp only [A115634]

end A115634

/-!
# A115635: Periodic {1,1,-5,0,1,-3,-1,0,-3,1,-1,-4}.

The programs for A115635, the canonical program `A115635.P17810721979096127821` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115635 has offset 0).

The definition of A115635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115635.P17810721979096127821

`A115714(A057300(n)+4)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A115635

/-- `A115714(A057300(n)+4)` -/
def P17810721979096127821.Spec : Prop :=
  ∀ n, P17810721979096127821.a n = A115635 n

theorem P17810721979096127821.correct : P17810721979096127821.Spec := by
  intro n
  simp only [A115635]

end A115635

/-!
# A115636: A divide-and-conquer number triangle.

The programs for A115636, there is no canonical definition to state claims against.
-/

/-! ## A115636.P10270954848980805565

`A115526(n)*A115715(n)`
-/

namespace A115636.P10270954848980805565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115526 n * A115715 n

end

end A115636.P10270954848980805565

/-! ## A115636.P3938091355673004218

`A033999(A002262(n))*A115715(n)`
-/

namespace A115636.P3938091355673004218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A115715 n

end

end A115636.P3938091355673004218

/-! ## A115636.P6793671108972537070

`A033999(A143844(n))*A115715(n)`
-/

namespace A115636.P6793671108972537070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A143844 n).toNat * A115715 n

end

end A115636.P6793671108972537070

/-! ## A115636.P15579094286714576329

`A115714(A002262(n)²)*A115715(n)`
-/

namespace A115636.P15579094286714576329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115714 (A002262 n ^ 2).toNat * A115715 n

end

end A115636.P15579094286714576329

/-! ## A115636.P10450990310125864484

`A062157(A002260(n+1))*A115715(n)`
-/

namespace A115636.P10450990310125864484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A002260 (n + 1)).toNat * A115715 n

end

end A115636.P10450990310125864484

/-! ## A115636.P12289978868331925970

`A115715(n)*A258998(A002260(n+1)²)`
-/

namespace A115636.P12289978868331925970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115715 n * A258998 (A002260 (n + 1) ^ 2).toNat

end

end A115636.P12289978868331925970

/-! ## A115636.P3392710585011499391

`A115715(n)*A165586(A059268(n))`
-/

namespace A115636.P3392710585011499391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115715 n * A165586 (A059268 n).toNat

end

end A115636.P3392710585011499391

/-! ## A115636.P1517478411222870686

`A115715(n)*A165471(A036561(n))`
-/

namespace A115636.P1517478411222870686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115715 n * A165471 (A036561 n).toNat

end

end A115636.P1517478411222870686

/-!
# A115637: In the binary expansion of n+2, transform 0->1 and 1->0 then interpret as base 4.

The programs for A115637, the canonical program `A115637.P3484073724344734124` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115637 has offset 0).

The definition of A115637 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115637.P3484073724344734124

`A000695(A035327(n+2))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A115637

/-- `A000695(A035327(n+2))` -/
def P3484073724344734124.Spec : Prop :=
  ∀ n, P3484073724344734124.a n = A115637 n

theorem P3484073724344734124.correct : P3484073724344734124.Spec := by
  intro n
  simp only [A115637]

end A115637

/-! ## A115637.P2200193645574871212

`A032804(n+1)-A032911(n+1)`
-/

namespace A115637.P2200193645574871212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032804 (n + 1) - A032911 (n + 1)

end

end A115637.P2200193645574871212

namespace A115637

/-- `A032804(n+1)-A032911(n+1)` -/
def P2200193645574871212.Spec : Prop :=
  ∀ n, P2200193645574871212.a n = A115637 n

end A115637

/-! ## A115637.P11809950663649343976

`A000695(A080079(n+2)-1)`
-/

namespace A115637.P11809950663649343976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A080079 (n + 2) - 1).toNat

end

end A115637.P11809950663649343976

namespace A115637

/-- `A000695(A080079(n+2)-1)` -/
def P11809950663649343976.Spec : Prop :=
  ∀ n, P11809950663649343976.a n = A115637 n

end A115637

/-! ## A115637.P12288241971531854896

`A000695(A053644(2*(n+2))-(n+3))`
-/

namespace A115637.P12288241971531854896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A053644 (2 * (n + 2)) - (n + 3 : ℤ)).toNat

end

end A115637.P12288241971531854896

namespace A115637

/-- `A000695(A053644(2*(n+2))-(n+3))` -/
def P12288241971531854896.Spec : Prop :=
  ∀ n, P12288241971531854896.a n = A115637 n

end A115637

/-! ## A115637.P12683787976901019196

`∑[A115638(n)]`
-/

namespace A115637.P12683787976901019196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115637.P12683787976901019196

namespace A115637

/-- `∑[A115638(n)]` -/
def P12683787976901019196.Spec : Prop :=
  ∀ n, P12683787976901019196.a n = A115637 n

end A115637

/-! ## A115637.P15326712167761335327

`A006288(A083904(n+2))`
-/

namespace A115637.P15326712167761335327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006288 (A083904 (n + 2)).toNat

end

end A115637.P15326712167761335327

namespace A115637

/-- `A006288(A083904(n+2))` -/
def P15326712167761335327.Spec : Prop :=
  ∀ n, P15326712167761335327.a n = A115637 n

end A115637

/-! ## A115637.P5327496328828933206

`A147992(n+2)-A023717(A147991(n+2))`
-/

namespace A115637.P5327496328828933206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147992 (n + 2) - A023717 (A147991 (n + 2)).toNat

end

end A115637.P5327496328828933206

namespace A115637

/-- `A147992(n+2)-A023717(A147991(n+2))` -/
def P5327496328828933206.Spec : Prop :=
  ∀ n, P5327496328828933206.a n = A115637 n

end A115637

/-! ## A115637.P18390864261975580254

`and(A032925(n+1), A052992(n))`
-/

namespace A115637.P18390864261975580254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032925 (n + 1)) (A052992 n)

end

end A115637.P18390864261975580254

namespace A115637

/-- `and(A032925(n+1), A052992(n))` -/
def P18390864261975580254.Spec : Prop :=
  ∀ n, P18390864261975580254.a n = A115637 n

end A115637

/-! ## A115637.P12664158229822102326

`and(A032925(n+1), A087964(n+1))`
-/

namespace A115637.P12664158229822102326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032925 (n + 1)) (A087964 (n + 1))

end

end A115637.P12664158229822102326

namespace A115637

/-- `and(A032925(n+1), A087964(n+1))` -/
def P12664158229822102326.Spec : Prop :=
  ∀ n, P12664158229822102326.a n = A115637 n

end A115637

/-! ## A115637.P4569733934702538426

`A000695(A292370(A000695(n+2)))`
-/

namespace A115637.P4569733934702538426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A292370 (A000695 (n + 2)).toNat).toNat

end

end A115637.P4569733934702538426

namespace A115637

/-- `A000695(A292370(A000695(n+2)))` -/
def P4569733934702538426.Spec : Prop :=
  ∀ n, P4569733934702538426.a n = A115637 n

end A115637

/-! ## A115637.P4473973170887864995

`A063694(A032925(n+1))`
-/

namespace A115637.P4473973170887864995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 (A032925 (n + 1)).toNat

end

end A115637.P4473973170887864995

namespace A115637

/-- `A063694(A032925(n+1))` -/
def P4473973170887864995.Spec : Prop :=
  ∀ n, P4473973170887864995.a n = A115637 n

end A115637

/-! ## A115637.P1303641741876824544

`and(A032925(n+1), A072197(n))`
-/

namespace A115637.P1303641741876824544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032925 (n + 1)) (A072197 n)

end

end A115637.P1303641741876824544

namespace A115637

/-- `and(A032925(n+1), A072197(n))` -/
def P1303641741876824544.Spec : Prop :=
  ∀ n, P1303641741876824544.a n = A115637 n

end A115637

/-! ## A115637.P18284298374606117907

`and(A032925(n+1), A273251(n))`
-/

namespace A115637.P18284298374606117907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032925 (n + 1)) (A273251 n)

end

end A115637.P18284298374606117907

namespace A115637

/-- `and(A032925(n+1), A273251(n))` -/
def P18284298374606117907.Spec : Prop :=
  ∀ n, P18284298374606117907.a n = A115637 n

end A115637

/-! ## A115637.P6430017313983699717

`and(A032925(n+1), A072201(n+1))`
-/

namespace A115637.P6430017313983699717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032925 (n + 1)) (A072201 (n + 1))

end

end A115637.P6430017313983699717

namespace A115637

/-- `and(A032925(n+1), A072201(n+1))` -/
def P6430017313983699717.Spec : Prop :=
  ∀ n, P6430017313983699717.a n = A115637 n

end A115637

/-! ## A115637.P1763992624730484986

`and(A032925(n+1), A072261(n+1))`
-/

namespace A115637.P1763992624730484986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032925 (n + 1)) (A072261 (n + 1))

end

end A115637.P1763992624730484986

namespace A115637

/-- `and(A032925(n+1), A072261(n+1))` -/
def P1763992624730484986.Spec : Prop :=
  ∀ n, P1763992624730484986.a n = A115637 n

end A115637

/-! ## A115637.P17875442887293652574

`and(A032925(n+1), A072262(n+1))`
-/

namespace A115637.P17875442887293652574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032925 (n + 1)) (A072262 (n + 1))

end

end A115637.P17875442887293652574

namespace A115637

/-- `and(A032925(n+1), A072262(n+1))` -/
def P17875442887293652574.Spec : Prop :=
  ∀ n, P17875442887293652574.a n = A115637 n

end A115637

/-! ## A115637.P10847285715864968920

`A035327(A032804(n+1))`
-/

namespace A115637.P10847285715864968920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A032804 (n + 1)).toNat

end

end A115637.P10847285715864968920

namespace A115637

/-- `A035327(A032804(n+1))` -/
def P10847285715864968920.Spec : Prop :=
  ∀ n, P10847285715864968920.a n = A115637 n

end A115637

/-! ## A115637.P7535054645880830229

`A184616(A147992(n+2))`
-/

namespace A115637.P7535054645880830229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184616 (A147992 (n + 2)).toNat

end

end A115637.P7535054645880830229

namespace A115637

/-- `A184616(A147992(n+2))` -/
def P7535054645880830229.Spec : Prop :=
  ∀ n, P7535054645880830229.a n = A115637 n

end A115637

/-! ## A115637.P3876750963592130494

`A035327(record[A005351(n+2)])`
-/

namespace A115637.P3876750963592130494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005351 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115637.P3876750963592130494

namespace A115637

/-- `A035327(record[A005351(n+2)])` -/
def P3876750963592130494.Spec : Prop :=
  ∀ n, P3876750963592130494.a n = A115637 n

end A115637

/-! ## A115637.P9506066501052597612

`A035327(eq[n, A057300(n)+A035327(n)])`
-/

namespace A115637.P9506066501052597612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 n + A035327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115637.P9506066501052597612

namespace A115637

/-- `A035327(eq[n, A057300(n)+A035327(n)])` -/
def P9506066501052597612.Spec : Prop :=
  ∀ n, P9506066501052597612.a n = A115637 n

end A115637

/-!
# A115638: A Jacobsthal-related divide-and-conquer sequence.

The programs for A115638, the canonical program `A115638.P2858482046055591846` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115638 has offset 0).

The definition of A115638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1025 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115638.P17315283258862785668

`Δ[A115637(abs(1-n))]`
-/

namespace A115638.P17315283258862785668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115637 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115638.P17315283258862785668

namespace A115638

/-- `Δ[A115637(abs(1-n))]` -/
def P17315283258862785668.Spec : Prop :=
  ∀ n, P17315283258862785668.a n = A115638 n

end A115638

/-! ## A115638.P17858345694468470092

`Δ[A115637(2*n)/4]`
-/

namespace A115638.P17858345694468470092
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115637 (2 * n) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115638.P17858345694468470092

namespace A115638

/-- `Δ[A115637(2*n)/4]` -/
def P17858345694468470092.Spec : Prop :=
  ∀ n, P17858345694468470092.a n = (A115638 n : ℚ)

end A115638

/-! ## A115638.P10135645704819091065

`Δ[A000695(A035327(n+1))]`
-/

namespace A115638.P10135645704819091065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A035327 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115638.P10135645704819091065

namespace A115638

/-- `Δ[A000695(A035327(n+1))]` -/
def P10135645704819091065.Spec : Prop :=
  ∀ n, P10135645704819091065.a n = A115638 n

end A115638

/-! ## A115638.P6021056478808599435

`Δ[A000695(A080079(n+1)-1)]`
-/

namespace A115638.P6021056478808599435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A080079 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115638.P6021056478808599435

namespace A115638

/-- `Δ[A000695(A080079(n+1)-1)]` -/
def P6021056478808599435.Spec : Prop :=
  ∀ n, P6021056478808599435.a n = A115638 n

end A115638

/-! ## A115638.P2858482046055591846

`A276391(n+2)-2*A115716(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A115638

/-- `A276391(n+2)-2*A115716(n)` -/
def P2858482046055591846.Spec : Prop :=
  ∀ n, P2858482046055591846.a n = A115638 n

theorem P2858482046055591846.correct : P2858482046055591846.Spec := by
  intro n
  simp only [A115638]

end A115638

/-! ## A115638.P852520408744487707

`2*A135416(n+1)²-A115716(n)`
-/

namespace A115638.P852520408744487707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135416 (n + 1) ^ 2 - A115716 n

end

end A115638.P852520408744487707

namespace A115638

/-- `2*A135416(n+1)²-A115716(n)` -/
def P852520408744487707.Spec : Prop :=
  ∀ n, P852520408744487707.a n = A115638 n

end A115638

/-! ## A115638.P11261972559988991308

`Δ[A000695(A206332(n+1)%(n+1))]`
-/

namespace A115638.P11261972559988991308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (Int.tmod (A206332 (n + 1)) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115638.P11261972559988991308

namespace A115638

/-- `Δ[A000695(A206332(n+1)%(n+1))]` -/
def P11261972559988991308.Spec : Prop :=
  ∀ n, P11261972559988991308.a n = A115638 n

end A115638

/-! ## A115638.P5736905730876771599

`A115637(n)-A000695(A035327(n+1))`
-/

namespace A115638.P5736905730876771599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115637 n - A000695 (A035327 (n + 1)).toNat

end

end A115638.P5736905730876771599

namespace A115638

/-- `A115637(n)-A000695(A035327(n+1))` -/
def P5736905730876771599.Spec : Prop :=
  ∀ n, P5736905730876771599.a n = A115638 n

end A115638

/-! ## A115638.P5703762203379675999

`A115637(n)-A115637(n-A158388(n))`
-/

namespace A115638.P5703762203379675999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115637 n - A115637 ((n : ℤ) - A158388 n).toNat

end

end A115638.P5703762203379675999

namespace A115638

/-- `A115637(n)-A115637(n-A158388(n))` -/
def P5703762203379675999.Spec : Prop :=
  ∀ n, P5703762203379675999.a n = A115638 n

end A115638

/-! ## A115638.P7776980027343600231

`Δ[A147992(n+1)-A023717(A147991(n+1))]`
-/

namespace A115638.P7776980027343600231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147992 (n + 1) - A023717 (A147991 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115638.P7776980027343600231

namespace A115638

/-- `Δ[A147992(n+1)-A023717(A147991(n+1))]` -/
def P7776980027343600231.Spec : Prop :=
  ∀ n, P7776980027343600231.a n = A115638 n

end A115638

/-! ## A115638.P9046811172918884431

`Δ[A184616(A147992(n+1))]`
-/

namespace A115638.P9046811172918884431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184616 (A147992 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115638.P9046811172918884431

namespace A115638

/-- `Δ[A184616(A147992(n+1))]` -/
def P9046811172918884431.Spec : Prop :=
  ∀ n, P9046811172918884431.a n = A115638 n

end A115638

/-! ## A115638.P11562471124844315320

`Δ[A035327(record[A005351(n+1)])]`
-/

namespace A115638.P11562471124844315320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005351 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115638.P11562471124844315320

namespace A115638

/-- `Δ[A035327(record[A005351(n+1)])]` -/
def P11562471124844315320.Spec : Prop :=
  ∀ n, P11562471124844315320.a n = A115638 n

end A115638

/-! ## A115638.P7055815506664580376

`Δ[A053754(A000695(n+1)+1)-A062880(n+1)]`
-/

namespace A115638.P7055815506664580376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (A000695 (n + 1) + 1).toNat - A062880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115638.P7055815506664580376

namespace A115638

/-- `Δ[A053754(A000695(n+1)+1)-A062880(n+1)]` -/
def P7055815506664580376.Spec : Prop :=
  ∀ n, P7055815506664580376.a n = A115638 n

end A115638

/-!
# A115639: First column of divide-and-conquer triangle A115636.

The programs for A115639, the canonical program `A115639.P6925938654129648707` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115639 has offset 0).

The definition of A115639 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115639.P6925938654129648707

`4^(floor(log2(n+2))-1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115639

/-- `4^(floor(log2(n+2))-1)` -/
def P6925938654129648707.Spec : Prop :=
  ∀ n, P6925938654129648707.a n = (A115639 n : ℚ)

end A115639

/-! ## A115639.P5893652375777966220

`4*a(floor(n/2)-1)` with `a(0)=1, a(1)=1`
-/

namespace A115639.P5893652375777966220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 * a (⌊(n : ℚ) / 2⌋ - 1).toNat

end

end A115639.P5893652375777966220

namespace A115639

/-- `4*a(floor(n/2)-1)` -/
def P5893652375777966220.Spec : Prop :=
  ∀ n, (P5893652375777966220.a n : ℤ) = A115639 n

end A115639

/-! ## A115639.P17651055056754677658

`∏[3*char[xor(n, n+2)]+1]`
-/

namespace A115639.P17651055056754677658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A115639.P17651055056754677658

namespace A115639

/-- `∏[3*char[xor(n, n+2)]+1]` -/
def P17651055056754677658.Spec : Prop :=
  ∀ n, (P17651055056754677658.a n : ℤ) = A115639 n

end A115639

/-! ## A115639.P3720685812905570929

`Δ[A063915(n)/2]²`
-/

namespace A115639.P3720685812905570929
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063915 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A115639.P3720685812905570929

namespace A115639

/-- `Δ[A063915(n)/2]²` -/
def P3720685812905570929.Spec : Prop :=
  ∀ n, P3720685812905570929.a n = (A115639 n : ℚ)

end A115639

/-! ## A115639.P11561138401543261097

`(∏[A297382(n+2)]/2)²`
-/

namespace A115639.P11561138401543261097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297382 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2) ^ 2

end

end A115639.P11561138401543261097

namespace A115639

/-- `(∏[A297382(n+2)]/2)²` -/
def P11561138401543261097.Spec : Prop :=
  ∀ n, P11561138401543261097.a n = (A115639 n : ℚ)

end A115639

/-! ## A115639.P9399340504999703601

`(n+2-A063946(n+2))²`
-/

namespace A115639.P9399340504999703601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - A063946 (n + 2)) ^ 2

end

end A115639.P9399340504999703601

namespace A115639

/-- `(n+2-A063946(n+2))²` -/
def P9399340504999703601.Spec : Prop :=
  ∀ n, P9399340504999703601.a n = A115639 n

end A115639

/-! ## A115639.P8737900028354316133

`∏[(char[∑[A011782(n+2)]]+1)²]`
-/

namespace A115639.P8737900028354316133
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A115639.P8737900028354316133

namespace A115639

/-- `∏[(char[∑[A011782(n+2)]]+1)²]` -/
def P8737900028354316133.Spec : Prop :=
  ∀ n, (P8737900028354316133.a n : ℤ) = A115639 n

end A115639

/-! ## A115639.P15734970408357797508

`A000079(∑[char[xor(2*(n+1), 2*n)]])²`
-/

namespace A115639.P15734970408357797508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * (n + 1)) (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A115639.P15734970408357797508

namespace A115639

/-- `A000079(∑[char[xor(2*(n+1), 2*n)]])²` -/
def P15734970408357797508.Spec : Prop :=
  ∀ n, P15734970408357797508.a n = A115639 n

end A115639

/-! ## A115639.P14945791164480421370

`A053644(A008619(n))²`
-/

namespace A115639.P14945791164480421370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A008619 n).toNat ^ 2

end

end A115639.P14945791164480421370

namespace A115639

/-- `A053644(A008619(n))²` -/
def P14945791164480421370.Spec : Prop :=
  ∀ n, P14945791164480421370.a n = A115639 n

end A115639

/-! ## A115639.P1437984328048535803

`A000302(A059939(n+1))`
-/

namespace A115639.P1437984328048535803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A059939 (n + 1)).toNat

end

end A115639.P1437984328048535803

namespace A115639

/-- `A000302(A059939(n+1))` -/
def P1437984328048535803.Spec : Prop :=
  ∀ n, P1437984328048535803.a n = A115639 n

end A115639

/-! ## A115639.P7719323008042858401

`A032937(A092323(n+2))`
-/

namespace A115639.P7719323008042858401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032937 (A092323 (n + 2)).toNat

end

end A115639.P7719323008042858401

namespace A115639

/-- `A032937(A092323(n+2))` -/
def P7719323008042858401.Spec : Prop :=
  ∀ n, P7719323008042858401.a n = A115639 n

end A115639

/-! ## A115639.P16074082374383043295

`A053644(A004526(n)+1)²`
-/

namespace A115639.P16074082374383043295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A004526 n + 1).toNat ^ 2

end

end A115639.P16074082374383043295

namespace A115639

/-- `A053644(A004526(n)+1)²` -/
def P16074082374383043295.Spec : Prop :=
  ∀ n, P16074082374383043295.a n = A115639 n

end A115639

/-! ## A115639.P10146335951614275790

`A053644(A006949(n+1))²`
-/

namespace A115639.P10146335951614275790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A006949 (n + 1)).toNat ^ 2

end

end A115639.P10146335951614275790

namespace A115639

/-- `A053644(A006949(n+1))²` -/
def P10146335951614275790.Spec : Prop :=
  ∀ n, P10146335951614275790.a n = A115639 n

end A115639

/-! ## A115639.P10468254535046986349

`A053644(A087816(n+1))²`
-/

namespace A115639.P10468254535046986349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A087816 (n + 1)).toNat ^ 2

end

end A115639.P10468254535046986349

namespace A115639

/-- `A053644(A087816(n+1))²` -/
def P10468254535046986349.Spec : Prop :=
  ∀ n, P10468254535046986349.a n = A115639 n

end A115639

/-! ## A115639.P18006148756798525995

`A053644(A234016(n)+1)²`
-/

namespace A115639.P18006148756798525995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A234016 n + 1).toNat ^ 2

end

end A115639.P18006148756798525995

namespace A115639

/-- `A053644(A234016(n)+1)²` -/
def P18006148756798525995.Spec : Prop :=
  ∀ n, P18006148756798525995.a n = A115639 n

end A115639

/-! ## A115639.P11993699624093487612

`A072376(A052928(n)+2)²`
-/

namespace A115639.P11993699624093487612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 (A052928 n + 2).toNat ^ 2

end

end A115639.P11993699624093487612

namespace A115639

/-- `A072376(A052928(n)+2)²` -/
def P11993699624093487612.Spec : Prop :=
  ∀ n, P11993699624093487612.a n = A115639 n

end A115639

/-! ## A115639.P7864597084649710757

`A135416(∑[A135416(n+1)])²`
-/

namespace A115639.P7864597084649710757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A115639.P7864597084649710757

namespace A115639

/-- `A135416(∑[A135416(n+1)])²` -/
def P7864597084649710757.Spec : Prop :=
  ∀ n, P7864597084649710757.a n = A115639 n

end A115639

/-! ## A115639.P10683973910372176580

`(A132340(n+1)-A346306(n+1))²`
-/

namespace A115639.P10683973910372176580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132340 (n + 1) - A346306 (n + 1)) ^ 2

end

end A115639.P10683973910372176580

namespace A115639

/-- `(A132340(n+1)-A346306(n+1))²` -/
def P10683973910372176580.Spec : Prop :=
  ∀ n, P10683973910372176580.a n = A115639 n

end A115639

/-! ## A115639.P4373790471741445898

`A072376(n+2)²`
-/

namespace A115639.P4373790471741445898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 (n + 2) ^ 2

end

end A115639.P4373790471741445898

namespace A115639

/-- `A072376(n+2)²` -/
def P4373790471741445898.Spec : Prop :=
  ∀ n, P4373790471741445898.a n = A115639 n

end A115639

/-! ## A115639.P12546251177327581593

`A000463(A053644(n+2))`
-/

namespace A115639.P12546251177327581593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A053644 (n + 2)).toNat

end

end A115639.P12546251177327581593

namespace A115639

/-- `A000463(A053644(n+2))` -/
def P12546251177327581593.Spec : Prop :=
  ∀ n, P12546251177327581593.a n = A115639 n

end A115639

/-!
# A115641: Numbers that are the least element of a k-cycle (k > 1) of permutation A113821.

The programs for A115641, there is no canonical definition to state claims against.
-/

/-! ## A115641.P13000635294026190109

`∑[A263636(A001970(n))]`
-/

namespace A115641.P13000635294026190109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263636 (A001970 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115641.P13000635294026190109

/-! ## A115641.P8297227189332528991

`4*A232012(∑[A001970(n)])`
-/

namespace A115641.P8297227189332528991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A232012 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A115641.P8297227189332528991

/-!
# A115643: Lengths of k-cycles (k > 1) of permutation A113821 in order of their first appearance.

The programs for A115643, there is no canonical definition to state claims against.
-/

/-! ## A115643.P6433429454375417797

`A115642(∑[A324837(n+1)^A263548(n)])`
-/

namespace A115643.P6433429454375417797
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324837 (n + 1) : ℚ) ^ (A263548 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115642 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A115643.P6433429454375417797

/-! ## A115643.P11483795978802833973

`A115642(A305932(n+1)%A074751(n+3))`
-/

namespace A115643.P11483795978802833973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115642 (Int.tmod (A305932 (n + 1)) (A074751 (n + 3))).toNat

end

end A115643.P11483795978802833973

/-!
# A115644: Brilliant numbers (A078972) that are sums of distinct factorials.

The programs for A115644, there is no canonical definition to state claims against.
-/

/-! ## A115644.P9431898584605263283

`∩[A078972(n+1), A059590(n)]`
-/

namespace A115644.P9431898584605263283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115644.P9431898584605263283

/-! ## A115644.P8820230055566862478

`∩[A078972(n+1), A115646(n+1)]`
-/

namespace A115644.P8820230055566862478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115644.P8820230055566862478

/-! ## A115644.P16133093010005491417

`∩[A078972(n+1), A277011(A048678(n))]`
-/

namespace A115644.P16133093010005491417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (A048678 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115644.P16133093010005491417

/-!
# A115645: Powerful(1) numbers (A001694) that are sums of distinct factorials.

The programs for A115645, there is no canonical definition to state claims against.
-/

/-! ## A115645.P623492217303789433

`∩[A001694(n+1), A059590(n)]`
-/

namespace A115645.P623492217303789433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115645.P623492217303789433

/-! ## A115645.P12739217676059787894

`∩[A059590(n), A076446(n)+a(n-1)]` with `a(0)=1`
-/

namespace A115645.P12739217676059787894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A076446 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115645.P12739217676059787894

/-! ## A115645.P6946471349441116410

`∩[A059590(n), A001694(A008619(2*n))]`
-/

namespace A115645.P6946471349441116410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A008619 (2 * n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115645.P6946471349441116410

/-! ## A115645.P18177459212974071756

`filter[A001694(n+1), A115944(#)]`
-/

namespace A115645.P18177459212974071756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115944 (f1 j).toNat = 1) n)

end

end A115645.P18177459212974071756

/-! ## A115645.P14051637445160068315

`filter[A059590(n+1), A112526(#)]`
-/

namespace A115645.P14051637445160068315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A115645.P14051637445160068315

/-!
# A115646: Semiprimes (A001358) that are sums of distinct factorials.

The programs for A115646, there is no canonical definition to state claims against.
-/

/-! ## A115646.P11698768352814077017

`filter[A059590(n+1), A064911(#)]`
-/

namespace A115646.P11698768352814077017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A115646.P11698768352814077017

/-! ## A115646.P16032434240065347208

`∩[A001358(n+1), A059590(n)]`
-/

namespace A115646.P16032434240065347208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115646.P16032434240065347208

/-! ## A115646.P4689866075941485369

`∩[A339424(n+1), A059590(n)]`
-/

namespace A115646.P4689866075941485369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115646.P4689866075941485369

/-! ## A115646.P2163837297220846056

`eq[A276008(n), A374897(n)]`
-/

namespace A115646.P2163837297220846056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374897 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115646.P2163837297220846056

/-! ## A115646.P12627372927376815133

`filter[A001358(n+1), A115944(#)]`
-/

namespace A115646.P12627372927376815133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115944 (f1 j).toNat = 1) n)

end

end A115646.P12627372927376815133

/-!
# A115647: Triangular numbers that are sums of distinct factorials.

The programs for A115647, there is no canonical definition to state claims against.
-/

/-! ## A115647.P14816896339793877140

`∩[∑[n+1], A059590(n)]`
-/

namespace A115647.P14816896339793877140
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A115647.P14816896339793877140

/-! ## A115647.P908072562560200792

`∩[A059590(n), Δ[A000292(n)]]`
-/

namespace A115647.P908072562560200792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115647.P908072562560200792

/-! ## A115647.P16636214678910070663

`∩[A059590(n), A000096(n)+1]`
-/

namespace A115647.P16636214678910070663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115647.P16636214678910070663

/-! ## A115647.P13028143225907083564

`∩[A059590(n+1), A000217(n)]`
-/

namespace A115647.P13028143225907083564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115647.P13028143225907083564

/-!
# A115648: Square numbers which are the sum of distinct double factorials (A006882).

The programs for A115648, there is no canonical definition to state claims against.
-/

/-! ## A115648.P8980649051542123919

`A115649(1+n)²`
-/

namespace A115648.P8980649051542123919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115649 (1 + n) ^ 2

end

end A115648.P8980649051542123919

/-! ## A115648.P13952016715977408044

`A002620(2*A115649(n+1))`
-/

namespace A115648.P13952016715977408044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A115649 (n + 1)).toNat

end

end A115648.P13952016715977408044

/-! ## A115648.P1473483833680361846

`A004652(2*A115649(n+1))`
-/

namespace A115648.P1473483833680361846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (2 * A115649 (n + 1)).toNat

end

end A115648.P1473483833680361846

/-! ## A115648.P16698397129465681181

`A067998(A115649(n+1)+1)+1`
-/

namespace A115648.P16698397129465681181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 (A115649 (n + 1) + 1).toNat + 1

end

end A115648.P16698397129465681181

/-!
# A115649: Numbers whose square is the sum of distinct double factorials (A006882).

The programs for A115649, there is no canonical definition to state claims against.
-/

/-! ## A115649.P2471972014092302923

`sqrt(A115648(n+1))`
-/

namespace A115649.P2471972014092302923
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A115648 (n + 1) : ℝ)

end

end A115649.P2471972014092302923

/-! ## A115649.P10058671962833317158

`A000027(root(A115648(n+1), 2))`
-/

namespace A115649.P10058671962833317158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A115648 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A115649.P10058671962833317158

/-! ## A115649.P2570365989419568800

`root(A115648(n+1), 2)*A007318(∑[n])`
-/

namespace A115649.P2570365989419568800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A115648 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A115649.P2570365989419568800

/-! ## A115649.P5177278673115033269

`root(A115648(n+1), 2)%∑[A000032(n)]`
-/

namespace A115649.P5177278673115033269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A115648 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115649.P5177278673115033269

/-! ## A115649.P6022762508577442564

`root(A115648(n+1), A020639(4*n+2))`
-/

namespace A115649.P6022762508577442564
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A115648 (n + 1) : ℝ) ^ (1 / (A020639 (4 * n + 2) : ℝ))

end

end A115649.P6022762508577442564

/-!
# A115650: Triangular numbers which are the sum of distinct double factorials (A006882).

The programs for A115650, there is no canonical definition to state claims against.
-/

/-! ## A115650.P8360628528380630213

`eq[A208945(n+1), A295891(A250120(n))]`
-/

namespace A115650.P8360628528380630213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295891 (A250120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115650.P8360628528380630213

/-! ## A115650.P1705301182988283551

`eq[A053231(A228058(n+1)), A188236(n+1)]`
-/

namespace A115650.P1705301182988283551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053231 (A228058 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115650.P1705301182988283551

/-! ## A115650.P13015777431683855468

`A000217(lt[A000700(n), A326975(2*(n+1))])`
-/

namespace A115650.P13015777431683855468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326975 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115650.P13015777431683855468

/-! ## A115650.P16117261864238138209

`record[gcd(A008805(n), A303356(n+1))]`
-/

namespace A115650.P16117261864238138209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008805 n) (A303356 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115650.P16117261864238138209

/-! ## A115650.P16893549938483974328

`A000217(lt[A000041(n), A057335(n)])`
-/

namespace A115650.P16893549938483974328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115650.P16893549938483974328

/-!
# A115651: Powerful(1) numbers (A001694) which are the sum of distinct double factorials (A006882).

The programs for A115651, there is no canonical definition to state claims against.
-/

/-! ## A115651.P881191565458821758

`A001694(lt[A132962(n+1), A345913(3*n+2)])`
-/

namespace A115651.P881191565458821758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345913 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115651.P881191565458821758

/-! ## A115651.P4062080547947012847

`A001694(lt[A022175(n+4), A242807(2*(n+1))])`
-/

namespace A115651.P4062080547947012847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022175 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242807 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115651.P4062080547947012847

/-! ## A115651.P14312348825720245749

`A001694(lt[A263361(n), A271025(n)])`
-/

namespace A115651.P14312348825720245749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263361 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115651.P14312348825720245749

/-! ## A115651.P5825613071086765806

`A001694(lt[A291649(n), A098550(n+1)])`
-/

namespace A115651.P5825613071086765806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291649 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115651.P5825613071086765806

/-! ## A115651.P556271276715517341

`A001694(lt[A271407(n+1), A363701(n+1)])`
-/

namespace A115651.P556271276715517341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115651.P556271276715517341

/-!
# A115652: Brilliant numbers (A078972) which are the sum of distinct double factorials (A006882).

The programs for A115652, there is no canonical definition to state claims against.
-/

/-! ## A115652.P4071250527124688661

`∩[A078972(n+1), A115654(n+1)]`
-/

namespace A115652.P4071250527124688661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115652.P4071250527124688661

/-! ## A115652.P601062587830626872

`∩[A115654(n+1), A162421(n+1)]`
-/

namespace A115652.P601062587830626872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115652.P601062587830626872

/-! ## A115652.P17690112211324079254

`∩[A115654(n+1), A199009(n+1)]`
-/

namespace A115652.P17690112211324079254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115652.P17690112211324079254

/-! ## A115652.P9025058828499368815

`A078972(eq[A008611(n), A086520(n)])`
-/

namespace A115652.P9025058828499368815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115652.P9025058828499368815

/-! ## A115652.P14125870330105150439

`A078972(lt[A291723(n), A002113(n+1)])`
-/

namespace A115652.P14125870330105150439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291723 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115652.P14125870330105150439

/-!
# A115653: Prime numbers which are the sum of distinct double factorials (A006882).

The programs for A115653, there is no canonical definition to state claims against.
-/

/-! ## A115653.P11524701947541315528

`p?[A130696(∑[A043537(n+3)])]`
-/

namespace A115653.P11524701947541315528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115653.P11524701947541315528

/-! ## A115653.P5526430597414434513

`p?[A123068(A107224(n+1))]`
-/

namespace A115653.P5526430597414434513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A107224 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115653.P5526430597414434513

/-! ## A115653.P1770202817639628277

`p?[∑[A098473(A040076(n+1))]]`
-/

namespace A115653.P1770202817639628277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098473 (A040076 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115653.P1770202817639628277

/-! ## A115653.P4514367090559905835

`∩[A028776(n+1), A279956(n+1)]`
-/

namespace A115653.P4514367090559905835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115653.P4514367090559905835

/-! ## A115653.P16312995622733095978

`A216509(A151543(n+1))`
-/

namespace A115653.P16312995622733095978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216509 (A151543 (n + 1)).toNat

end

end A115653.P16312995622733095978

/-!
# A115654: Semiprimes (A001358) which are the sum of distinct double factorials (A006882).

The programs for A115654, there is no canonical definition to state claims against.
-/

/-! ## A115654.P4135089583098734966

`eq[A105681(A000177(n)), A105700(n)]`
-/

namespace A115654.P4135089583098734966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105681 (A000177 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115654.P4135089583098734966

/-! ## A115654.P6837239202852218754

`A320969(A353907(n+1)%A320969(n+1))`
-/

namespace A115654.P6837239202852218754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320969 (Int.tmod (A353907 (n + 1)) (A320969 (n + 1))).toNat

end

end A115654.P6837239202852218754

/-! ## A115654.P4038455172116674128

`record[A124785(A228106(n+1))]`
-/

namespace A115654.P4038455172116674128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124785 (A228106 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115654.P4038455172116674128

/-! ## A115654.P1192084996001571979

`A098350(A091401(∑[and(2, -n)!]))`
-/

namespace A115654.P1192084996001571979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land 2 (-(n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098350 (A091401 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A115654.P1192084996001571979

/-!
# A115655: Both n and the reverse of n are brilliant numbers (A078972).

The programs for A115655, there is no canonical definition to state claims against.
-/

/-! ## A115655.P518458907227851160

`∩[A115665(n+1), A115666(n+1)]`
-/

namespace A115655.P518458907227851160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115655.P518458907227851160

/-! ## A115655.P2344096127414061012

`∩[A078972(n+1), A115666(n+1)]`
-/

namespace A115655.P2344096127414061012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115655.P2344096127414061012

/-! ## A115655.P519329765795050748

`∩[A115666(n+1), A199009(n+1)]`
-/

namespace A115655.P519329765795050748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115655.P519329765795050748

/-! ## A115655.P9254458723928965133

`∩[A115666(n+1), A162421(n+1)]`
-/

namespace A115655.P9254458723928965133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115655.P9254458723928965133

/-! ## A115655.P10873682296556104702

`∪[A084350(n+1), A097435(n+1)]`
-/

namespace A115655.P10873682296556104702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A115655.P10873682296556104702

/-!
# A115656: Both n and the reverse of n are powerful(1) numbers (A001694).

The programs for A115656, there is no canonical definition to state claims against.
-/

/-! ## A115656.P13417095632252416385

`A001694(lt[A055077(2*n+3), A236104(2*n+1)])`
-/

namespace A115656.P13417095632252416385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055077 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236104 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115656.P13417095632252416385

/-!
# A115657: Both k and the reverse of k are pentagonal numbers (A000326).

The programs for A115657, there is no canonical definition to state claims against.
-/

/-! ## A115657.P2199318242671686501

`A000326(eq[A208244(n+1), A217669(n)])`
-/

namespace A115657.P2199318242671686501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115657.P2199318242671686501

/-! ## A115657.P13515937622645783733

`A000326(lt[A001281(n), A010888(n+4)])`
-/

namespace A115657.P13515937622645783733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115657.P13515937622645783733

/-!
# A115659: Permutation of natural numbers generated by 2-rowed array shown below.

The programs for A115659, the canonical program `A115659.P16122307621890897941` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115659 has offset 1).

The definition of A115659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115659.P16122307621890897941

`a(n-4)+4` with `a(0)=0, a(1)=3, a(2)=1, a(3)=4, a(4)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115659

/-- `a(n-4)+4` -/
def P16122307621890897941.Spec : Prop :=
  ∀ n, (P16122307621890897941.a n : ℤ) = A115659 (n + 1)

theorem P16122307621890897941.correct : P16122307621890897941.Spec := by
  intro n
  simp only [A115659, Nat.add_sub_cancel]

end A115659

/-! ## A115659.P16365265524232375556

`2-(a((n-1)%4)-n)` with `a(0)=0`
-/

namespace A115659.P16365265524232375556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - (a (Int.tmod ((n : ℤ) - 1) 4).toNat - (n : ℤ))

end

end A115659.P16365265524232375556

namespace A115659

/-- `2-(a((n-1)%4)-n)` -/
def P16365265524232375556.Spec : Prop :=
  ∀ n, P16365265524232375556.a n = A115659 (n + 1)

end A115659

/-! ## A115659.P16867869259296351564

`2-(a(and(3, n-1))-n)` with `a(0)=0`
-/

namespace A115659.P16867869259296351564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - (a (Int.land 3 ((n : ℤ) - 1)).toNat - (n : ℤ))

end

end A115659.P16867869259296351564

namespace A115659

/-- `2-(a(and(3, n-1))-n)` -/
def P16867869259296351564.Spec : Prop :=
  ∀ n, P16867869259296351564.a n = A115659 (n + 1)

end A115659

/-! ## A115659.P11873548240263926199

`-xor(-n, gcd(2, a(n-1)))` with `a(0)=0`
-/

namespace A115659.P11873548240263926199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  -Int.xor (-(n : ℤ)) (Int.gcd 2 (a (n - 1)) : ℤ)

end

end A115659.P11873548240263926199

namespace A115659

/-- `-xor(-n, gcd(2, a(n-1)))` -/
def P11873548240263926199.Spec : Prop :=
  ∀ n, P11873548240263926199.a n = A115659 (n + 1)

end A115659

/-! ## A115659.P5605530483610518508

`1-xor(-2, a(n-2))` with `a(0)=0, a(1)=3, a(2)=1`
-/

namespace A115659.P5605530483610518508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 1] fun n a =>
  1 - Int.xor (-2) (a (n - 2))

end

end A115659.P5605530483610518508

namespace A115659

/-- `1-xor(-2, a(n-2))` -/
def P5605530483610518508.Spec : Prop :=
  ∀ n, P5605530483610518508.a n = A115659 (n + 1)

end A115659

/-! ## A115659.P4909262914290955521

`3-xor(1, 1-a(n-2))` with `a(0)=0, a(1)=3, a(2)=1`
-/

namespace A115659.P4909262914290955521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 1] fun n a =>
  3 - Int.xor 1 (1 - a (n - 2))

end

end A115659.P4909262914290955521

namespace A115659

/-- `3-xor(1, 1-a(n-2))` -/
def P4909262914290955521.Spec : Prop :=
  ∀ n, P4909262914290955521.a n = A115659 (n + 1)

end A115659

/-! ## A115659.P15033566728959665862

`n-2/(n-2-a(n-2))` with `a(0)=0, a(1)=3, a(2)=1`
-/

namespace A115659.P15033566728959665862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3, 1] fun n a =>
  (n : ℚ) - 2 / (((n : ℤ) - 2 : ℚ) - a (n - 2))

end

end A115659.P15033566728959665862

namespace A115659

/-- `n-2/(n-2-a(n-2))` -/
def P15033566728959665862.Spec : Prop :=
  ∀ n, P15033566728959665862.a n = (A115659 (n + 1) : ℚ)

end A115659

/-! ## A115659.P1409297086339405553

`A090964(n)-1`
-/

namespace A115659.P1409297086339405553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090964 n - 1

end

end A115659.P1409297086339405553

namespace A115659

/-- `A090964(n)-1` -/
def P1409297086339405553.Spec : Prop :=
  ∀ n, P1409297086339405553.a n = A115659 (n + 1)

end A115659

/-! ## A115659.P4990346627595556257

`A126091(n+1)-A093148(n)`
-/

namespace A115659.P4990346627595556257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126091 (n + 1) - A093148 n

end

end A115659.P4990346627595556257

namespace A115659

/-- `A126091(n+1)-A093148(n)` -/
def P4990346627595556257.Spec : Prop :=
  ∀ n, P4990346627595556257.a n = A115659 (n + 1)

end A115659

/-! ## A115659.P16108892588497279026

`A116468(n+1)-(A087960(n)+1)`
-/

namespace A115659.P16108892588497279026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116468 (n + 1) - (A087960 n + 1)

end

end A115659.P16108892588497279026

namespace A115659

/-- `A116468(n+1)-(A087960(n)+1)` -/
def P16108892588497279026.Spec : Prop :=
  ∀ n, P16108892588497279026.a n = A115659 (n + 1)

end A115659

/-! ## A115659.P12574856993689033938

`A004442(a(n-2)+2)` with `a(0)=0, a(1)=3, a(2)=1`
-/

namespace A115659.P12574856993689033938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 1] fun n a =>
  A004442 (a (n - 2) + 2).toNat

end

end A115659.P12574856993689033938

namespace A115659

/-- `A004442(a(n-2)+2)` -/
def P12574856993689033938.Spec : Prop :=
  ∀ n, P12574856993689033938.a n = A115659 (n + 1)

end A115659

/-! ## A115659.P12144103218172591057

`A014681(A116468(n+1))-1`
-/

namespace A115659.P12144103218172591057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A116468 (n + 1)).toNat - 1

end

end A115659.P12144103218172591057

namespace A115659

/-- `A014681(A116468(n+1))-1` -/
def P12144103218172591057.Spec : Prop :=
  ∀ n, P12144103218172591057.a n = A115659 (n + 1)

end A115659

/-! ## A115659.P17662923994018411763

`A133256(A014681(n)+1)-1`
-/

namespace A115659.P17662923994018411763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133256 (A014681 n + 1).toNat - 1

end

end A115659.P17662923994018411763

namespace A115659

/-- `A133256(A014681(n)+1)-1` -/
def P17662923994018411763.Spec : Prop :=
  ∀ n, P17662923994018411763.a n = A115659 (n + 1)

end A115659

/-! ## A115659.P1627274072715420890

`A133256(A065190(n+1))-1`
-/

namespace A115659.P1627274072715420890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133256 (A065190 (n + 1)).toNat - 1

end

end A115659.P1627274072715420890

namespace A115659

/-- `A133256(A065190(n+1))-1` -/
def P1627274072715420890.Spec : Prop :=
  ∀ n, P1627274072715420890.a n = A115659 (n + 1)

end A115659

/-! ## A115659.P5038316957026427032

`A023443(A090964(n))`
-/

namespace A115659.P5038316957026427032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A090964 n).toNat

end

end A115659.P5038316957026427032

namespace A115659

/-- `A023443(A090964(n))` -/
def P5038316957026427032.Spec : Prop :=
  ∀ n, P5038316957026427032.a n = A115659 (n + 1)

end A115659

/-! ## A115659.P2017286517747209921

`A080412(A065164(n+1))-1`
-/

namespace A115659.P2017286517747209921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (A065164 (n + 1)).toNat - 1

end

end A115659.P2017286517747209921

namespace A115659

/-- `A080412(A065164(n+1))-1` -/
def P2017286517747209921.Spec : Prop :=
  ∀ n, P2017286517747209921.a n = A115659 (n + 1)

end A115659

/-! ## A115659.P1348000662762574878

`A267182(A047575(n+1))-1`
-/

namespace A115659.P1348000662762574878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267182 (A047575 (n + 1)).toNat - 1

end

end A115659.P1348000662762574878

namespace A115659

/-- `A267182(A047575(n+1))-1` -/
def P1348000662762574878.Spec : Prop :=
  ∀ n, P1348000662762574878.a n = A115659 (n + 1)

end A115659

/-! ## A115659.P10216178235571323731

`A091999(n+1)-A261351(A091999(n+1)-n)`
-/

namespace A115659.P10216178235571323731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091999 (n + 1) - A261351 (A091999 (n + 1) - (n : ℤ)).toNat

end

end A115659.P10216178235571323731

namespace A115659

/-- `A091999(n+1)-A261351(A091999(n+1)-n)` -/
def P10216178235571323731.Spec : Prop :=
  ∀ n, P10216178235571323731.a n = A115659 (n + 1)

end A115659

/-! ## A115659.P11499150098751642085

`A307531(A363268(n+2))-1`
-/

namespace A115659.P11499150098751642085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307531 (A363268 (n + 2)).toNat - 1

end

end A115659.P11499150098751642085

namespace A115659

/-- `A307531(A363268(n+2))-1` -/
def P11499150098751642085.Spec : Prop :=
  ∀ n, P11499150098751642085.a n = A115659 (n + 1)

end A115659

/-! ## A115659.P1986324464259508963

`A131225(A178218(n+1))-1`
-/

namespace A115659.P1986324464259508963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131225 (A178218 (n + 1)).toNat - 1

end

end A115659.P1986324464259508963

namespace A115659

/-- `A131225(A178218(n+1))-1` -/
def P1986324464259508963.Spec : Prop :=
  ∀ n, P1986324464259508963.a n = A115659 (n + 1)

end A115659

/-!
# A115660: Expansion of (phi(q) * phi(q^6) - phi(q^2) * phi(q^3)) / 2 in powers of q where phi() is a Ramanujan theta function.

The programs for A115660, there is no canonical definition to state claims against.
-/

/-! ## A115660.P9799921429534035770

`(-1)^n*A128581(n+1)`
-/

namespace A115660.P9799921429534035770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A128581 (n + 1)

end

end A115660.P9799921429534035770

/-! ## A115660.P8725407472960474643

`A046113(n+1)-A000377(n+1)`
-/

namespace A115660.P8725407472960474643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 (n + 1) - A000377 (n + 1)

end

end A115660.P8725407472960474643

/-! ## A115660.P14761276389872223761

`A000377(n+1)-A108563(n+1)`
-/

namespace A115660.P14761276389872223761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (n + 1) - A108563 (n + 1)

end

end A115660.P14761276389872223761

/-! ## A115660.P6904249892154611439

`A128581(n+1)/A033999(n)`
-/

namespace A115660.P6904249892154611439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128581 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A115660.P6904249892154611439

/-! ## A115660.P17576140995767540015

`A046113(n+1)-A192013(n+1)`
-/

namespace A115660.P17576140995767540015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 (n + 1) - A192013 (n + 1)

end

end A115660.P17576140995767540015

/-! ## A115660.P12457381949562187376

`A263649(n+1)/A061347(n+1)`
-/

namespace A115660.P12457381949562187376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263649 (n + 1) : ℚ) / (A061347 (n + 1) : ℚ)

end

end A115660.P12457381949562187376

/-! ## A115660.P2319308765195649436

`A192013(n+1)-A108563(n+1)`
-/

namespace A115660.P2319308765195649436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192013 (n + 1) - A108563 (n + 1)

end

end A115660.P2319308765195649436

/-! ## A115660.P18096038485634488875

`(A046113(n+1)-A108563(n+1))/2`
-/

namespace A115660.P18096038485634488875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046113 (n + 1) - A108563 (n + 1) : ℚ) / 2

end

end A115660.P18096038485634488875

/-! ## A115660.P12550934273140106191

`lcm(2, A260309(n+1))-A000377(n+1)`
-/

namespace A115660.P12550934273140106191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A260309 (n + 1)) : ℤ) - A000377 (n + 1)

end

end A115660.P12550934273140106191

/-! ## A115660.P74155576592756235

`∑{d}[n+1, A049347(#-1)*A091337((n+1)/#)]`
-/

namespace A115660.P74155576592756235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049347 (d - 1) * A091337 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A115660.P74155576592756235

/-! ## A115660.P16572893400901369196

`A128581(A186813(n+1))`
-/

namespace A115660.P16572893400901369196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128581 (A186813 (n + 1)).toNat

end

end A115660.P16572893400901369196

/-! ## A115660.P16042199883860185055

`A128581(A022998(n+1))`
-/

namespace A115660.P16042199883860185055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128581 (A022998 (n + 1)).toNat

end

end A115660.P16042199883860185055

/-! ## A115660.P14357341986681793447

`A128581(A257088(n+1))`
-/

namespace A115660.P14357341986681793447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128581 (A257088 (n + 1)).toNat

end

end A115660.P14357341986681793447

/-! ## A115660.P7064622359757084194

`A128581(2*(n+1))`
-/

namespace A115660.P7064622359757084194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128581 (2 * (n + 1))

end

end A115660.P7064622359757084194

/-! ## A115660.P4001592592827367438

`or(A000007(n), A128581(A016789(n)-n))`
-/

namespace A115660.P4001592592827367438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A128581 (A016789 n - (n : ℤ)).toNat)

end

end A115660.P4001592592827367438

/-! ## A115660.P8475970851392635906

`A263649(3*(n+1))/2`
-/

namespace A115660.P8475970851392635906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263649 (3 * (n + 1)) : ℚ) / 2

end

end A115660.P8475970851392635906

/-! ## A115660.P7196696065318461524

`A260309(4*(n+1))-A000377(n+1)`
-/

namespace A115660.P7196696065318461524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260309 (4 * (n + 1)) - A000377 (n + 1)

end

end A115660.P7196696065318461524

/-! ## A115660.P17641952776771608546

`A128580(A085062(n))`
-/

namespace A115660.P17641952776771608546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128580 (A085062 n).toNat

end

end A115660.P17641952776771608546

/-!
# A115661: Numbers k which have the same number of distinct prime divisors as the reverse of k.

The programs for A115661, there is no canonical definition to state claims against.
-/

/-! ## A115661.P9463584429779546907

`∪[A085869(n+1), A115662(n+1)]`
-/

namespace A115661.P9463584429779546907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A115661.P9463584429779546907

/-! ## A115661.P11807469167520754994

`∪[A110751(n+1), A115662(n+1)]`
-/

namespace A115661.P11807469167520754994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A115661.P11807469167520754994

/-! ## A115661.P6754051986908190859

`eq[A001221(n+1), A001221(A004086(n+1))]+1`
-/

namespace A115661.P6754051986908190859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A004086 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A115661.P6754051986908190859

/-! ## A115661.P11226943610627479126

`eq[A034444(A004086(n+1)), A034444(n+1)]+1`
-/

namespace A115661.P11226943610627479126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A004086 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A115661.P11226943610627479126

/-! ## A115661.P11603148665939427511

`A118759(∪[A062687(n+1), A354746(n+1)])`
-/

namespace A115661.P11603148665939427511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354746 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A115661.P11603148665939427511

/-!
# A115662: Nonpalindromic k which have the same number of distinct prime divisors as the reverse of k.

The programs for A115662, there is no canonical definition to state claims against.
-/

/-! ## A115662.P15001808347805183776

`∩[A029742(n+1), A115661(n+1)]`
-/

namespace A115662.P15001808347805183776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115662.P15001808347805183776

/-! ## A115662.P8395501333870547456

`A118759(A354746(n+1))`
-/

namespace A115662.P8395501333870547456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A354746 (n + 1)).toNat

end

end A115662.P8395501333870547456

/-! ## A115662.P5151156064163366951

`A000196(A354746(n+1)²)`
-/

namespace A115662.P5151156064163366951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A354746 (n + 1) ^ 2).toNat

end

end A115662.P5151156064163366951

/-! ## A115662.P3280320481720675082

`filter[A115661(n+1), A377191(#)]`
-/

namespace A115662.P3280320481720675082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377191 (f1 j).toNat = 1) n)

end

end A115662.P3280320481720675082

/-!
# A115663: Prime numbers whose digit reversal is a brilliant number (A078972).

The programs for A115663, there is no canonical definition to state claims against.
-/

/-! ## A115663.P10025719814475226037

`A077500(A050990(n+5)^A100136(n))`
-/

namespace A115663.P10025719814475226037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077500 (SequenceMachineLib.roundAway ((A050990 (n + 5) : ℚ) ^ (A100136 n : ℤ))).toNat

end

end A115663.P10025719814475226037

/-! ## A115663.P11802556350793245180

`A145281(A197702(n+1)+A023213(n+5))`
-/

namespace A115663.P11802556350793245180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145281 (A197702 (n + 1) + A023213 (n + 5)).toNat

end

end A115663.P11802556350793245180

/-!
# A115664: Brilliant numbers (A078972) whose digit reversal is a prime number.

The programs for A115664, there is no canonical definition to state claims against.
-/

/-! ## A115664.P16726618053840041737

`∩[A076055(n+1), A078972(n+1)]`
-/

namespace A115664.P16726618053840041737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115664.P16726618053840041737

/-! ## A115664.P13265820600696250629

`∩[A078972(n+1), A095179(n+1)]`
-/

namespace A115664.P13265820600696250629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115664.P13265820600696250629

/-! ## A115664.P1368580420664713357

`∩[A061365(n+1), A078972(n+1)]`
-/

namespace A115664.P1368580420664713357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115664.P1368580420664713357

/-! ## A115664.P17920761992497002599

`A004086(p?[A004086(A078972(n+1))])`
-/

namespace A115664.P17920761992497002599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A078972 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A115664.P17920761992497002599

/-! ## A115664.P13576959147267628758

`∩[A078972(n+1), A115670(n+1)]`
-/

namespace A115664.P13576959147267628758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115664.P13576959147267628758

/-!
# A115665: Brilliant numbers (A078972) whose digit reversal is a semiprime (A001358).

The programs for A115665, there is no canonical definition to state claims against.
-/

/-! ## A115665.P13251867520152982535

`∩[A078972(n+1), A085751(n+1)]`
-/

namespace A115665.P13251867520152982535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115665.P13251867520152982535

/-! ## A115665.P9071100066390203953

`∩[A085751(n+1), A199009(n+1)]`
-/

namespace A115665.P9071100066390203953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115665.P9071100066390203953

/-! ## A115665.P6757099317262153334

`∩[A085751(n+1), A162421(n+1)]`
-/

namespace A115665.P6757099317262153334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115665.P6757099317262153334

/-! ## A115665.P10936218960581342834

`A087718(lt[A118128(2*n+1), A337112(n+3)])`
-/

namespace A115665.P10936218960581342834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118128 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337112 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087718 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115665.P10936218960581342834

/-!
# A115667: Squares whose digit reversal is a brilliant number (A078972).

The programs for A115667, there is no canonical definition to state claims against.
-/

/-! ## A115667.P18018305293864755592

`A115669(n+1)²`
-/

namespace A115667.P18018305293864755592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115669 (n + 1) ^ 2

end

end A115667.P18018305293864755592

/-! ## A115667.P11445559357505758278

`record[A115669(A152271(n))²]`
-/

namespace A115667.P11445559357505758278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115669 (A152271 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115667.P11445559357505758278

/-! ## A115667.P15838538463633883226

`A115669(n+1)^A051886(floor(n/4)-floor((n-1)/4))`
-/

namespace A115667.P15838538463633883226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115669 (n + 1) : ℚ) ^ (A051886 (⌊(n : ℚ) / 4⌋ - ⌊((n : ℤ) - 1 : ℚ) / 4⌋).toNat : ℤ)

end

end A115667.P15838538463633883226

/-! ## A115667.P13462667569021747786

`A115669(A000027(n+1))*A115669(n+1)`
-/

namespace A115667.P13462667569021747786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115669 (A000027 (n + 1)).toNat * A115669 (n + 1)

end

end A115667.P13462667569021747786

/-! ## A115667.P2769545236759470126

`A115669(n+1)^A000005(A000040(n+1))`
-/

namespace A115667.P2769545236759470126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115669 (n + 1) : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A115667.P2769545236759470126

/-! ## A115667.P12581779052241448014

`A115669(n+1)^A000005(A191017(n+1))`
-/

namespace A115667.P12581779052241448014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115669 (n + 1) : ℚ) ^ (A000005 (A191017 (n + 1)).toNat : ℤ)

end

end A115667.P12581779052241448014

/-! ## A115667.P16737746443232425214

`A002620(2*A115669(n+1))`
-/

namespace A115667.P16737746443232425214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A115669 (n + 1)).toNat

end

end A115667.P16737746443232425214

/-! ## A115667.P17361267391377662369

`A211521(2*A115669(n+1))`
-/

namespace A115667.P17361267391377662369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211521 (2 * A115669 (n + 1)).toNat

end

end A115667.P17361267391377662369

/-! ## A115667.P1638171144267693929

`∩[n², A115676(n+1)]`
-/

namespace A115667.P1638171144267693929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115667.P1638171144267693929

/-!
# A115668: Brilliant numbers (A078972) whose digit reversal is a square.

The programs for A115668, there is no canonical definition to state claims against.
-/

/-! ## A115668.P11314046949222392925

`∩[A115675(n+1), A115710(n+1)]`
-/

namespace A115668.P11314046949222392925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115668.P11314046949222392925

/-! ## A115668.P891886081542215647

`∩[A115675(n+1), A356417(n+1)]`
-/

namespace A115668.P891886081542215647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115668.P891886081542215647

/-! ## A115668.P3826519946031670218

`∩[A078972(n+1), A115710(n+1)]`
-/

namespace A115668.P3826519946031670218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115668.P3826519946031670218

/-! ## A115668.P16810234607384473686

`∩[A078972(n+1), A356417(n+1)]`
-/

namespace A115668.P16810234607384473686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115668.P16810234607384473686

/-! ## A115668.P13301852764607105599

`∩[A115710(n+1), A199009(n+1)]`
-/

namespace A115668.P13301852764607105599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115668.P13301852764607105599

/-!
# A115669: Numbers the reversal of whose square is a brilliant number (A078972).

The programs for A115669, there is no canonical definition to state claims against.
-/

/-! ## A115669.P7513211717707339225

`sqrt(A115667(n+1))`
-/

namespace A115669.P7513211717707339225
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A115667 (n + 1) : ℝ)

end

end A115669.P7513211717707339225

/-! ## A115669.P4783926034238407193

`root(A115667(n+1), A000034(2*n+1))`
-/

namespace A115669.P4783926034238407193
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A115667 (n + 1) : ℝ) ^ (1 / (A000034 (2 * n + 1) : ℝ))

end

end A115669.P4783926034238407193

/-! ## A115669.P16126389208150771870

`root(A115667(n+1), A020639(2*(n+1)))`
-/

namespace A115669.P16126389208150771870
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A115667 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A115669.P16126389208150771870

/-! ## A115669.P8099705052207609158

`root(A115667(n+1), 2)*A007318(C(2, n))`
-/

namespace A115669.P8099705052207609158
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A115667 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (Nat.choose 2 n) : ℝ)

end

end A115669.P8099705052207609158

/-! ## A115669.P2362150824961400492

`root(A115667(n+1), 2)%A000040(n+1)²`
-/

namespace A115669.P2362150824961400492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A115667 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000040 (n + 1) ^ 2)

end

end A115669.P2362150824961400492

/-!
# A115670: Semiprimes (A001358) whose digit reversal is prime.

The programs for A115670, there is no canonical definition to state claims against.
-/

/-! ## A115670.P2937854185190652725

`record[A066048(A076055(n+1))]`
-/

namespace A115670.P2937854185190652725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A076055 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115670.P2937854185190652725

/-! ## A115670.P9135081177361233931

`A004086(p?[A210616(n+1)])`
-/

namespace A115670.P9135081177361233931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A115670.P9135081177361233931

/-! ## A115670.P10770310773201522794

`A071786(p?[A210616(n+1)])`
-/

namespace A115670.P10770310773201522794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A115670.P10770310773201522794

/-! ## A115670.P12732439510732940907

`A210625(p?[A210616(n+1)])`
-/

namespace A115670.P12732439510732940907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210625 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A115670.P12732439510732940907

/-! ## A115670.P4549289384925955855

`A321474(p?[A210616(n+1)])`
-/

namespace A115670.P4549289384925955855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A115670.P4549289384925955855

/-! ## A115670.P10848360249050644452

`filter[A061365(n+1), A064911(#)]`
-/

namespace A115670.P10848360249050644452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A115670.P10848360249050644452

/-! ## A115670.P16463263911577833523

`filter[A074895(n+1), A064911(#)]`
-/

namespace A115670.P16463263911577833523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A115670.P16463263911577833523

/-! ## A115670.P16640556862615785816

`filter[A076055(n+1), A064911(#)]`
-/

namespace A115670.P16640556862615785816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A115670.P16640556862615785816

/-! ## A115670.P10704058535735329964

`filter[A095179(n+1), A064911(#)]`
-/

namespace A115670.P10704058535735329964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A115670.P10704058535735329964

/-! ## A115670.P11353585633378069839

`filter[A076055(n+1), A101040(#)]`
-/

namespace A115670.P11353585633378069839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A115670.P11353585633378069839

/-!
# A115671: Number of partitions of n into parts not congruent to 0, 2, 12, 14, 16, 18, 20, 30 (mod 32).

The programs for A115671, there is no canonical definition to state claims against.
-/

/-! ## A115671.P7098174830208892214

`abs(A245432(n))`
-/

namespace A115671.P7098174830208892214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A245432 n|

end

end A115671.P7098174830208892214

/-! ## A115671.P2599909784080322483

`A208856(abs(1-n))`
-/

namespace A115671.P2599909784080322483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208856 |1 - (n : ℤ)|.toNat

end

end A115671.P2599909784080322483

/-! ## A115671.P9778001137218118696

`ceil(A080054(n)/2)`
-/

namespace A115671.P9778001137218118696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A080054 n : ℚ) / 2⌉

end

end A115671.P9778001137218118696

/-! ## A115671.P7754357789793896481

`lcm(2, A080015(n))/2`
-/

namespace A115671.P7754357789793896481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A080015 n) : ℚ) / 2

end

end A115671.P7754357789793896481

/-! ## A115671.P13970011272259249280

`A080054(C(2, n+1)+n)/2`
-/

namespace A115671.P13970011272259249280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080054 (Nat.choose 2 (n + 1) + n) : ℚ) / 2

end

end A115671.P13970011272259249280

/-! ## A115671.P5021370186623036356

`A080054(A028310(n))/2`
-/

namespace A115671.P5021370186623036356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080054 (A028310 n).toNat : ℚ) / 2

end

end A115671.P5021370186623036356

/-! ## A115671.P9110809370361617142

`A057077(n)*A245432(n)`
-/

namespace A115671.P9110809370361617142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A245432 n

end

end A115671.P9110809370361617142

/-! ## A115671.P7601517520435225379

`A108494(n)/A280560(n)`
-/

namespace A115671.P7601517520435225379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108494 n : ℚ) / (A280560 n : ℚ)

end

end A115671.P7601517520435225379

/-! ## A115671.P7954999150394968612

`gcd(A000038(n), A245432(n))`
-/

namespace A115671.P7954999150394968612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A245432 n)

end

end A115671.P7954999150394968612

/-! ## A115671.P9235551573618010565

`lcm(A020985(n), A245432(n))`
-/

namespace A115671.P9235551573618010565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A245432 n)

end

end A115671.P9235551573618010565

/-! ## A115671.P11995202273609265770

`abs(A224216(A000007(n)+n))`
-/

namespace A115671.P11995202273609265770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A224216 (A000007 n + (n : ℤ)).toNat|

end

end A115671.P11995202273609265770

/-! ## A115671.P15001306986772595204

`A080054(A000007(n)+n)/2`
-/

namespace A115671.P15001306986772595204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080054 (A000007 n + (n : ℤ)).toNat : ℚ) / 2

end

end A115671.P15001306986772595204

/-! ## A115671.P1053911454978461662

`abs(A224216(abs(n-A000007(n))))`
-/

namespace A115671.P1053911454978461662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A224216 |(n : ℤ) - A000007 n|.toNat)|

end

end A115671.P1053911454978461662

/-! ## A115671.P7441911713442177406

`A080054(n)/(A052839(n)-A111133(n))`
-/

namespace A115671.P7441911713442177406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080054 n : ℚ) / (A052839 n - A111133 n : ℚ)

end

end A115671.P7441911713442177406

/-! ## A115671.P5721176081279373899

`A080054(n)/A080054(A015128(n)-A304627(n))`
-/

namespace A115671.P5721176081279373899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080054 n : ℚ) / (A080054 (A015128 n - A304627 n).toNat : ℚ)

end

end A115671.P5721176081279373899

/-! ## A115671.P14519540876711327391

`abs(A214639(abs(2-A103517(n))))`
-/

namespace A115671.P14519540876711327391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A214639 |2 - A103517 n|.toNat)|

end

end A115671.P14519540876711327391

/-! ## A115671.P2068265010630181849

`A080054(n)/A020639(A056895(2*n+1))`
-/

namespace A115671.P2068265010630181849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080054 n : ℚ) / (A020639 (A056895 (2 * n + 1)).toNat : ℚ)

end

end A115671.P2068265010630181849

/-! ## A115671.P9384047978335123321

`A080054(n)/A000122(n²)`
-/

namespace A115671.P9384047978335123321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080054 n : ℚ) / (A000122 (n ^ 2) : ℚ)

end

end A115671.P9384047978335123321

/-!
# A115673: Brilliant numbers (A078972) whose digit reversal is a cube.

The programs for A115673, there is no canonical definition to state claims against.
-/

/-! ## A115673.P10310597461098890992

`∩[A115675(n+1), A115712(n+1)]`
-/

namespace A115673.P10310597461098890992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115673.P10310597461098890992

/-!
# A115674: Cubes whose digit reversal is a brilliant number (A078972).

The programs for A115674, there is no canonical definition to state claims against.
-/

/-! ## A115674.P1062276190425709148

`∩[A000578(n), A115676(n+1)]`
-/

namespace A115674.P1062276190425709148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115674.P1062276190425709148

/-! ## A115674.P5731114067279190786

`∩[A052084(n+1), A115676(n+1)]`
-/

namespace A115674.P5731114067279190786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115674.P5731114067279190786

/-!
# A115675: Brilliant numbers (A078972) whose digit reversal is a powerful(1) number (A001694).

The programs for A115675, there is no canonical definition to state claims against.
-/

/-! ## A115675.P17181193866529614871

`∩[A078972(n+1), A115688(n+1)]`
-/

namespace A115675.P17181193866529614871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115675.P17181193866529614871

/-! ## A115675.P9481429986744740814

`∩[A115688(n+1), A199009(n+1)]`
-/

namespace A115675.P9481429986744740814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115675.P9481429986744740814

/-! ## A115675.P10986446148566002381

`∩[A115688(n+1), A157465(n+1)]`
-/

namespace A115675.P10986446148566002381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115675.P10986446148566002381

/-!
# A115676: Powerful(1) numbers (A001694) whose digit reversal is a brilliant number (A078972).

The programs for A115676, there is no canonical definition to state claims against.
-/

/-! ## A115676.P9167411801257446974

`A115667(n+1)%A115662(A115652(2*n+5))`
-/

namespace A115676.P9167411801257446974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115667 (n + 1)) (A115662 (A115652 (2 * n + 5)).toNat)

end

end A115676.P9167411801257446974

/-!
# A115679: Brilliant numbers (A078972) whose digit reversal is a pentagonal number (A000326).

The programs for A115679, there is no canonical definition to state claims against.
-/

/-! ## A115679.P13605870614969908342

`∩[A078972(n+1), A115708(n+1)]`
-/

namespace A115679.P13605870614969908342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115679.P13605870614969908342

/-!
# A115681: Brilliant numbers (A078972) whose digit reversal is the product of 2 palindromes greater than 1.

The programs for A115681, there is no canonical definition to state claims against.
-/

/-! ## A115681.P2675096982873203733

`∩[A078972(n+1), A115698(n+1)]`
-/

namespace A115681.P2675096982873203733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115681.P2675096982873203733

/-! ## A115681.P753640537815446648

`∩[A115698(n+1), A162421(n+1)]`
-/

namespace A115681.P753640537815446648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115681.P753640537815446648

/-! ## A115681.P5577329643830551899

`∩[A115698(n+1), A199009(n+1)]`
-/

namespace A115681.P5577329643830551899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115681.P5577329643830551899

/-!
# A115682: Triangular numbers whose digit reversal is a pentagonal number (A000326).

The programs for A115682, there is no canonical definition to state claims against.
-/

/-! ## A115682.P4772636964930036369

`∩[A247589(2*n+3), ∑[n]]`
-/

namespace A115682.P4772636964930036369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247589 (2 * n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A115682.P4772636964930036369

/-!
# A115683: Numbers that are the product of 2 palindromes greater than 1.

The programs for A115683, there is no canonical definition to state claims against.
-/

/-! ## A115683.P2163718986950799148

`∪[A078337(n+1), A141322(n+1)]`
-/

namespace A115683.P2163718986950799148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A115683.P2163718986950799148

/-! ## A115683.P12379541686518218925

`∪[A115684(n+1), A141322(n+1)]`
-/

namespace A115683.P12379541686518218925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A115683.P12379541686518218925

/-! ## A115683.P15615942207795056776

`∩[A140332(n+1), A088224(n+3)]`
-/

namespace A115683.P15615942207795056776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088224 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115683.P15615942207795056776

/-! ## A115683.P5306375026632770295

`∩[A088224(n+3), A368955(n+1)]`
-/

namespace A115683.P5306375026632770295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088224 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115683.P5306375026632770295

/-! ## A115683.P4639450084623065629

`∩[A133576(n+1), A140332(n+1)]`
-/

namespace A115683.P4639450084623065629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115683.P4639450084623065629

/-!
# A115684: Both n and the reverse of n are the product of 2 palindromes greater than 1.

The programs for A115684, there is no canonical definition to state claims against.
-/

/-! ## A115684.P2989075222449876539

`A389462(n+1)+A083918(A029542(n+1))`
-/

namespace A115684.P2989075222449876539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1) + A083918 (A029542 (n + 1)).toNat

end

end A115684.P2989075222449876539

/-!
# A115686: Powerful(1) numbers (A001694) whose digit reversal is a prime number.

The programs for A115686, there is no canonical definition to state claims against.
-/

/-! ## A115686.P15049088591914844413

`∩[A001694(n+1), A076055(n+1)]`
-/

namespace A115686.P15049088591914844413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115686.P15049088591914844413

/-! ## A115686.P18415944771423873870

`∩[A001694(n+1), A095179(n+1)]`
-/

namespace A115686.P18415944771423873870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115686.P18415944771423873870

/-! ## A115686.P16290588649434087495

`∩[A001694(n+1), A061365(n+1)]`
-/

namespace A115686.P16290588649434087495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115686.P16290588649434087495

/-! ## A115686.P9998290082098517431

`∩[A061365(n+1), A192636(n+1)]`
-/

namespace A115686.P9998290082098517431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115686.P9998290082098517431

/-! ## A115686.P6615666674414655287

`filter[A076055(n+1), A112526(#)]`
-/

namespace A115686.P6615666674414655287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A115686.P6615666674414655287

/-!
# A115688: Semiprimes (A001358) whose digit reversal is a powerful(1) number (A001694).

The programs for A115688, there is no canonical definition to state claims against.
-/

/-! ## A115688.P17092682720541708678

`∩[A118715(n+1), A351096(n+1)]`
-/

namespace A115688.P17092682720541708678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115688.P17092682720541708678

/-!
# A115689: Powerful(1) numbers (A001694) whose digit reversal is a square.

The programs for A115689, there is no canonical definition to state claims against.
-/

/-! ## A115689.P1756968014594751997

`∩[A001694(n+1), A356417(n+1)]`
-/

namespace A115689.P1756968014594751997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115689.P1756968014594751997

/-! ## A115689.P15018385386386844013

`∩[A115656(n+1), A356417(n+1)]`
-/

namespace A115689.P15018385386386844013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115689.P15018385386386844013

/-! ## A115689.P17913067876256374092

`filter[A356417(n+2), A112526(#)]`
-/

namespace A115689.P17913067876256374092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356417 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A115689.P17913067876256374092

/-! ## A115689.P6798892865098453534

`filter[A118715(n+2), A145377(#)]`
-/

namespace A115689.P6798892865098453534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118715 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145377 (f1 j).toNat = 1) n)

end

end A115689.P6798892865098453534

/-! ## A115689.P14464512912869363492

`filter[A118715(n+2), A195198(#)]`
-/

namespace A115689.P14464512912869363492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118715 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A195198 (f1 j).toNat = 1) n)

end

end A115689.P14464512912869363492

/-!
# A115690: Squares whose digit reversal is a powerful(1) number (A001694).

The programs for A115690, there is no canonical definition to state claims against.
-/

/-! ## A115690.P7155298726467210689

`∩[A115656(n+1), n²]`
-/

namespace A115690.P7155298726467210689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115656 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A115690.P7155298726467210689

/-! ## A115690.P13294813824072053692

`∩[A000290(n), A115656(n+1)]`
-/

namespace A115690.P13294813824072053692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115690.P13294813824072053692

/-! ## A115690.P17295521974589780767

`∩[A034793(n+1), A115656(n+1)]`
-/

namespace A115690.P17295521974589780767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115690.P17295521974589780767

/-! ## A115690.P16120608615532467969

`∩[A005214(n+1), A115656(n+1)]`
-/

namespace A115690.P16120608615532467969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115690.P16120608615532467969

/-! ## A115690.P335674500958647971

`∩[A146994(n+1), A115656(n+1)]`
-/

namespace A115690.P335674500958647971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115690.P335674500958647971

/-! ## A115690.P7050975791679748819

`∩[A109815(3*n+1), A115656(n+1)]`
-/

namespace A115690.P7050975791679748819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109815 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115690.P7050975791679748819

/-! ## A115690.P15410815117498497895

`∩[A331221(n+1), A115656(n+1)]`
-/

namespace A115690.P15410815117498497895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115690.P15410815117498497895

/-!
# A115693: Powerful(1) numbers (A001694) whose digit reversal is a cube.

The programs for A115693, there is no canonical definition to state claims against.
-/

/-! ## A115693.P13723174846779277800

`A001694(∩[A020492(n+1), A291154(n+1)])`
-/

namespace A115693.P13723174846779277800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291154 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A115693.P13723174846779277800

/-!
# A115694: Cubes whose digit reversal is a powerful(1) number (A001694).

The programs for A115694, there is no canonical definition to state claims against.
-/

/-! ## A115694.P10714618984276575075

`∩[A115656(n+1), n*n²]`
-/

namespace A115694.P10714618984276575075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115656 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A115694.P10714618984276575075

/-! ## A115694.P4688942462039856467

`∩[A000578(n), A115656(n+1)]`
-/

namespace A115694.P4688942462039856467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115694.P4688942462039856467

/-! ## A115694.P13304557566738449772

`∩[n*A000290(n), A115656(n+1)]`
-/

namespace A115694.P13304557566738449772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115694.P13304557566738449772

/-! ## A115694.P14822169719663851491

`∩[A109900(n), A115656(n+1)]`
-/

namespace A115694.P14822169719663851491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115694.P14822169719663851491

/-! ## A115694.P9495399055242076378

`∩[A109588(3*(n+1)), A115656(n+1)]`
-/

namespace A115694.P9495399055242076378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109588 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115694.P9495399055242076378

/-!
# A115696: Pentagonal numbers (A000326) whose digit reversal is a powerful(1) number (A001694).

The programs for A115696, there is no canonical definition to state claims against.
-/

/-! ## A115696.P8185470055023494867

`A066741(A297181(n+1)+1)`
-/

namespace A115696.P8185470055023494867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066741 (A297181 (n + 1) + 1).toNat

end

end A115696.P8185470055023494867

/-! ## A115696.P15233729536420947693

`∩[A074896(n+1), A000326(n)]`
-/

namespace A115696.P15233729536420947693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115696.P15233729536420947693

/-!
# A115697: Powerful(1) numbers (A001694) whose digit reversal is the product of 2 palindromes greater than 1.

The programs for A115697, there is no canonical definition to state claims against.
-/

/-! ## A115697.P2619013760463472340

`∩[A115684(n+1), A318612(n+1)]`
-/

namespace A115697.P2619013760463472340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115697.P2619013760463472340

/-!
# A115699: Primes whose digit reversal is the product of 2 palindromes greater than 1.

The programs for A115699, there is no canonical definition to state claims against.
-/

/-! ## A115699.P170044313474700304

`A306926(A008095(n+1)+1)`
-/

namespace A115699.P170044313474700304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306926 (A008095 (n + 1) + 1).toNat

end

end A115699.P170044313474700304

