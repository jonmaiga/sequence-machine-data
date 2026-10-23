import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A183600: 1/6 the number of (n+1)X7 0..2 arrays with every 2X2 subblock containing all three values.

The programs for A183600, there is no canonical definition to state claims against.
-/

/-! ## A183600.P4869118277109841430

`A183603(A374007(n+1))`
-/

namespace A183600.P4869118277109841430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 (A374007 (n + 1)).toNat

end

end A183600.P4869118277109841430

/-! ## A183600.P12893358287645248956

`A183603(A167499(n+4)+1)`
-/

namespace A183600.P12893358287645248956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 (A167499 (n + 4) + 1).toNat

end

end A183600.P12893358287645248956

/-! ## A183600.P9423012030441281405

`A183603(A167614(n+4)+3)`
-/

namespace A183600.P9423012030441281405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 (A167614 (n + 4) + 3).toNat

end

end A183600.P9423012030441281405

/-! ## A183600.P17427200332159524135

`A183603(A000124(n+5)+5)`
-/

namespace A183600.P17427200332159524135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 (A000124 (n + 5) + 5).toNat

end

end A183600.P17427200332159524135

/-!
# A183601: 1/6 the number of (n+1)X8 0..2 arrays with every 2X2 subblock containing all three values.

The programs for A183601, there is no canonical definition to state claims against.
-/

/-! ## A183601.P10565372623452947296

`A183603(A374008(n+1))`
-/

namespace A183601.P10565372623452947296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 (A374008 (n + 1)).toNat

end

end A183601.P10565372623452947296

/-! ## A183601.P6183025739461604285

`A183603(eq[10, A185782(n+1)])`
-/

namespace A183601.P6183025739461604285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183601.P6183025739461604285

/-! ## A183601.P4200444928559077706

`A183603(eq[7, A004736(n+1)]+1)`
-/

namespace A183601.P4200444928559077706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A183601.P4200444928559077706

/-!
# A183602: 1/6 the number of (n+1)X9 0..2 arrays with every 2X2 subblock containing all three values.

The programs for A183602, there is no canonical definition to state claims against.
-/

/-! ## A183602.P7126525245432020765

`A183603(A374009(n+1))`
-/

namespace A183602.P7126525245432020765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 (A374009 (n + 1)).toNat

end

end A183602.P7126525245432020765

/-! ## A183602.P15232711064351481384

`A183603(eq[12, A185782(n+1)])`
-/

namespace A183602.P15232711064351481384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183602.P15232711064351481384

/-! ## A183602.P5883188795766948176

`A183603(Δ[A006503(n)]+5*(n+5)+1)`
-/

namespace A183602.P5883188795766948176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183603 (f1 (n + 1) - f1 n + (5 * (n + 5) : ℤ) + 1).toNat

end

end A183602.P5883188795766948176

/-!
# A183603: T(n,k)=1/6 the number of (n+1)X(k+1) 0..2 arrays with every 2X2 subblock containing all three values.

The programs for A183603, there is no canonical definition to state claims against.
-/

/-! ## A183603.P15214951139861326149

`A210413(n+1)-A210183(n+1)`
-/

namespace A183603.P15214951139861326149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210413 (n + 1) - A210183 (n + 1)

end

end A183603.P15214951139861326149

/-! ## A183603.P3562531904153414059

`A183594(n+1)-A210267(n+1)`
-/

namespace A183603.P3562531904153414059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183594 (n + 1) - A210267 (n + 1)

end

end A183603.P3562531904153414059

/-!
# A183604: E.g.f.: Sum_{n>=0} (1+x)^(n^2)*x^n/n!.

The programs for A183604, there is no canonical definition to state claims against.
-/

/-! ## A183604.P15285541090240131838

`A091563(A244320(n^n))`
-/

namespace A183604.P15285541090240131838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091563 (A244320 (n ^ n)).toNat

end

end A183604.P15285541090240131838

/-! ## A183604.P15043145852666620496

`A341733(n+4)%A328006(n)+1`
-/

namespace A183604.P15043145852666620496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341733 (n + 4)) (A328006 n) + 1

end

end A183604.P15043145852666620496

/-!
# A183605: E.g.f.: Sum_{n>=0} (1+x)^(n!)*x^n/n!.

The programs for A183605, there is no canonical definition to state claims against.
-/

/-! ## A183605.P5436353117443381656

`A256072(2*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A183605.P5436353117443381656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A256072 (2 * a (n - 2)).toNat

end

end A183605.P5436353117443381656

/-! ## A183605.P2371220053383555120

`∑[A325238(A351937(n))]`
-/

namespace A183605.P2371220053383555120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325238 (A351937 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183605.P2371220053383555120

/-!
# A183606: G.f. satisfies: [x^(n+1)] A(x)^n = n*(n+1)*{[x^n] A(x)^n} for n>=0.

The programs for A183606, there is no canonical definition to state claims against.
-/

/-! ## A183606.P13037766377376872542

`A008619(A002870(comp[2*n+3]+1))`
-/

namespace A183606.P13037766377376872542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A002870 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A183606.P13037766377376872542

/-! ## A183606.P14518433534226735007

`A308975(A073941(2*(n+2)))+A227862(n)`
-/

namespace A183606.P14518433534226735007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308975 (A073941 (2 * (n + 2))).toNat + A227862 n

end

end A183606.P14518433534226735007

/-!
# A183607: G.f. satisfies: A(x) = 1/(1 - x - x*{d/dx x^2*A'(x)/A(x)}).

The programs for A183607, there is no canonical definition to state claims against.
-/

/-! ## A183607.P2848667622745784863

`A055256(n^(n+1)+1)`
-/

namespace A183607.P2848667622745784863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055256 (n ^ (n + 1) + 1)

end

end A183607.P2848667622745784863

/-!
# A183608: G.f.: A(x) = Sum_{n>=0} x^n * C(x)^(n^2), where C(x) = 1 + x*C(x)^2 is the g.f. of the Catalan numbers (A000108).

The programs for A183608, there is no canonical definition to state claims against.
-/

/-! ## A183608.P9943341810853891260

`A049093(A238639(n))`
-/

namespace A183608.P9943341810853891260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (A238639 n).toNat

end

end A183608.P9943341810853891260

/-! ## A183608.P7360023399245797895

`A258037(A326412(n))`
-/

namespace A183608.P7360023399245797895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258037 (A326412 n).toNat

end

end A183608.P7360023399245797895

/-!
# A183609: a(n) = Sum_{k=0..n-1} binomial(n^2+k^2, k) * (n-k)^2/(n^2 + k^2) for n>0 with a(0)=1.

The programs for A183609, there is no canonical definition to state claims against.
-/

/-! ## A183609.P11483232933181690817

`or(n, A331027(A316473(n+1)))`
-/

namespace A183609.P11483232933181690817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A331027 (A316473 (n + 1)).toNat)

end

end A183609.P11483232933181690817

/-! ## A183609.P4601182519550584561

`A256450(A015083(n))-A001764(n)`
-/

namespace A183609.P4601182519550584561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256450 (A015083 n).toNat - A001764 n

end

end A183609.P4601182519550584561

/-!
# A183610: Rectangular table where T(n,k) is the sum of the n-th powers of the k-th row of multinomial coefficients in triangle A036038 for n>=0, k>=0, as read by antidiagonals.

The programs for A183610, there is no canonical definition to state claims against.
-/

/-! ## A183610.P6583501523634699576

`A088676(A205497(n+1))`
-/

namespace A183610.P6583501523634699576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088676 (A205497 (n + 1)).toNat

end

end A183610.P6583501523634699576

/-! ## A183610.P8500215611310708861

`∑{e}[A018900(A029847(n)), #]`
-/

namespace A183610.P8500215611310708861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (A029847 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A183610.P8500215611310708861

/-! ## A183610.P3869209370419815568

`A225644(A046802(abs(1-n)))`
-/

namespace A183610.P3869209370419815568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (A046802 |1 - (n : ℤ)|.toNat).toNat

end

end A183610.P3869209370419815568

/-! ## A183610.P6863919320819977853

`A225644(A022166(log2(ceil(2^(n-1)))))`
-/

namespace A183610.P6863919320819977853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (A022166 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat).toNat

end

end A183610.P6863919320819977853

/-! ## A183610.P11539938324407806796

`A305932(A144048(n)^A303694(n))`
-/

namespace A183610.P11539938324407806796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305932 (SequenceMachineLib.roundAway ((A144048 n : ℚ) ^ (A303694 n : ℤ))).toNat

end

end A183610.P11539938324407806796

/-!
# A183611: E.g.f. satisfies: A'(x) = A(x)^2 + x*A(x)^3, with A(0) = 1.

The programs for A183611, there is no canonical definition to state claims against.
-/

/-! ## A183611.P8350047061519613868

`A039775((n+1)^n-(n-2))`
-/

namespace A183611.P8350047061519613868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039775 (((n + 1) ^ n : ℤ) - ((n : ℤ) - 2)).toNat

end

end A183611.P8350047061519613868

/-! ## A183611.P17199497933871675577

`A004525(∑[A295553(n)])`
-/

namespace A183611.P17199497933871675577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A183611.P17199497933871675577

/-!
# A183613: a(n) = 3^^(n+1) modulo 10^n.

The programs for A183613, there is no canonical definition to state claims against.
-/

/-! ## A183613.P16026269624971030257

`∑[A011557(n)*A133613(n)]`
-/

namespace A183613.P16026269624971030257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A133613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183613.P16026269624971030257

/-! ## A183613.P65991110074699969

`A000027(∑[A133613(n)*A290545(n)])`
-/

namespace A183613.P65991110074699969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133613 n * A290545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A183613.P65991110074699969

/-!
# A183614: 1/120 the number of (n+1)X(n+1) 0..4 arrays with every 2X2 subblock containing four distinct values.

The programs for A183614, there is no canonical definition to state claims against.
-/

/-! ## A183614.P5532714528475129112

`A183622((n+1)²+n²)`
-/

namespace A183614.P5532714528475129112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183622 ((n + 1) ^ 2 + n ^ 2)

end

end A183614.P5532714528475129112

/-!
# A183615: 1/120 the number of (n+1) X 3 0..4 arrays with every 2 X 2 subblock containing four distinct values.

The programs for A183615, the canonical program `A183615.P17549398995811298838` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183615 has offset 1).

The definition of A183615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183615.P6734222887288314320

`ogf((6-16x)/(1-12x+24x^2))`
-/

namespace A183615.P6734222887288314320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -16] [1, -12, 24] n

end

end A183615.P6734222887288314320

namespace A183615

/-- `ogf((6-16x)/(1-12x+24x^2))` -/
def P6734222887288314320.Spec : Prop :=
  ∀ n, P6734222887288314320.a n = A183615 (n + 1)

end A183615

/-! ## A183615.P17549398995811298838

`12*a(n-1)-24*a(n-2)` with `a(0)=6, a(1)=56`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183615

/-- `12*a(n-1)-24*a(n-2)` -/
def P17549398995811298838.Spec : Prop :=
  ∀ n, P17549398995811298838.a n = A183615 (n + 1)

theorem P17549398995811298838.correct : P17549398995811298838.Spec := by
  intro n
  simp only [A183615, Nat.add_sub_cancel]

end A183615

/-! ## A183615.P2859447579033640748

`A000079(n)*A287807(n+1)`
-/

namespace A183615.P2859447579033640748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A287807 (n + 1)

end

end A183615.P2859447579033640748

namespace A183615

/-- `A000079(n)*A287807(n+1)` -/
def P2859447579033640748.Spec : Prop :=
  ∀ n, P2859447579033640748.a n = A183615 (n + 1)

end A183615

/-! ## A183615.P10071768531287007413

`A000079(n+1)*Δ[A086405(n)]`
-/

namespace A183615.P10071768531287007413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * (f1 (n + 1) - f1 n)

end

end A183615.P10071768531287007413

namespace A183615

/-- `A000079(n+1)*Δ[A086405(n)]` -/
def P10071768531287007413.Spec : Prop :=
  ∀ n, P10071768531287007413.a n = A183615 (n + 1)

end A183615

/-! ## A183615.P4754505143566699015

`2*A000079(n)*Δ[A086405(n)]`
-/

namespace A183615.P4754505143566699015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n * (f1 (n + 1) - f1 n)

end

end A183615.P4754505143566699015

namespace A183615

/-- `2*A000079(n)*Δ[A086405(n)]` -/
def P4754505143566699015.Spec : Prop :=
  ∀ n, P4754505143566699015.a n = A183615 (n + 1)

end A183615

/-! ## A183615.P15104655406842868444

`Δ[Δ[A094433(n+1)]]*A000079(n+1)`
-/

namespace A183615.P15104655406842868444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094433 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 (n + 1)

end

end A183615.P15104655406842868444

namespace A183615

/-- `Δ[Δ[A094433(n+1)]]*A000079(n+1)` -/
def P15104655406842868444.Spec : Prop :=
  ∀ n, P15104655406842868444.a n = A183615 (n + 1)

end A183615

/-! ## A183615.P1229125972915302756

`(A086405(n+1)-A086405(n))*A000079(n+1)`
-/

namespace A183615.P1229125972915302756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086405 (n + 1) - A086405 n) * A000079 (n + 1)

end

end A183615.P1229125972915302756

namespace A183615

/-- `(A086405(n+1)-A086405(n))*A000079(n+1)` -/
def P1229125972915302756.Spec : Prop :=
  ∀ n, P1229125972915302756.a n = A183615 (n + 1)

end A183615

/-!
# A183616: 1/120 the number of (n+1) X 4 0..4 arrays with every 2 X 2 subblock containing four distinct values.

The programs for A183616, there is no canonical definition to state claims against.
-/

/-! ## A183616.P10584309603931867043

`A183622(∑[n+2]+4)`
-/

namespace A183616.P10584309603931867043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183622 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183616.P10584309603931867043

/-! ## A183616.P10644317772485832490

`lcm(2, A183622(A167614(n+1)))`
-/

namespace A183616.P10644317772485832490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183622 (A167614 (n + 1)).toNat)

end

end A183616.P10644317772485832490

/-! ## A183616.P4856432942596798163

`A183622(A167614(n+1))+A014083(n)`
-/

namespace A183616.P4856432942596798163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183622 (A167614 (n + 1)).toNat + A014083 n

end

end A183616.P4856432942596798163

/-! ## A183616.P13158856926073488433

`A183622(A167614(n+1))+A054900(n)`
-/

namespace A183616.P13158856926073488433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183622 (A167614 (n + 1)).toNat + A054900 n

end

end A183616.P13158856926073488433

/-! ## A183616.P1308066899843059286

`A114295(n)*A183622(A167614(n+1))`
-/

namespace A183616.P1308066899843059286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114295 n * A183622 (A167614 (n + 1)).toNat

end

end A183616.P1308066899843059286

/-!
# A183617: 1/120 the number of (n+1) X 5 0..4 arrays with every 2 X 2 subblock containing four distinct values.

The programs for A183617, there is no canonical definition to state claims against.
-/

/-! ## A183617.P6972807562227587239

`A183622(A374004(n+1))`
-/

namespace A183617.P6972807562227587239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183622 (A374004 (n + 1)).toNat

end

end A183617.P6972807562227587239

/-! ## A183617.P15985645075348600929

`A183622(A052905(n)+9)`
-/

namespace A183617.P15985645075348600929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183622 (A052905 n + 9).toNat

end

end A183617.P15985645075348600929

/-! ## A183617.P3365944220898182066

`A183622(A055999(n)+10)`
-/

namespace A183617.P3365944220898182066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183622 (A055999 n + 10).toNat

end

end A183617.P3365944220898182066

/-! ## A183617.P2300619170123336979

`A183622(A167614(n+2)+1)`
-/

namespace A183617.P2300619170123336979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183622 (A167614 (n + 2) + 1).toNat

end

end A183617.P2300619170123336979

/-! ## A183617.P15401533843159862653

`A183622(Δ[A023545(n+1)-n²])`
-/

namespace A183617.P15401533843159862653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183622 (f1 (n + 1) - f1 n).toNat

end

end A183617.P15401533843159862653

/-!
# A183618: 1/120 the number of (n+1)X6 0..4 arrays with every 2X2 subblock containing four distinct values.

The programs for A183618, there is no canonical definition to state claims against.
-/

/-! ## A183618.P14052450720365530487

`A183622(A374005(n+1))`
-/

namespace A183618.P14052450720365530487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183622 (A374005 (n + 1)).toNat

end

end A183618.P14052450720365530487

/-! ## A183618.P3634476447470525157

`A183622(A155212(n)+13)`
-/

namespace A183618.P3634476447470525157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183622 (A155212 n + 13).toNat

end

end A183618.P3634476447470525157

/-! ## A183618.P16911739729127444836

`A183622(A056000(n)+15)`
-/

namespace A183618.P16911739729127444836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183622 (A056000 n + 15).toNat

end

end A183618.P16911739729127444836

/-! ## A183618.P17733643067755766573

`A183622(eq[6, A131818(n+1)])`
-/

namespace A183618.P17733643067755766573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183622 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183618.P17733643067755766573

/-! ## A183618.P12906293573225114723

`A183622(eq[4, A193592(n)])`
-/

namespace A183618.P12906293573225114723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183622 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183618.P12906293573225114723

/-!
# A183619: 1/120 the number of (n+1)X7 0..4 arrays with every 2X2 subblock containing four distinct values.

The programs for A183619, there is no canonical definition to state claims against.
-/

/-! ## A183619.P245123860093381009

`A183622(A374007(n+1))`
-/

namespace A183619.P245123860093381009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183622 (A374007 (n + 1)).toNat

end

end A183619.P245123860093381009

/-! ## A183619.P963819991484185567

`A183622(eq[7, A131818(n+1)])`
-/

namespace A183619.P963819991484185567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183622 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183619.P963819991484185567

/-! ## A183619.P6510173029872254744

`A183622(eq[3, A219347(n)])`
-/

namespace A183619.P6510173029872254744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183622 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183619.P6510173029872254744

/-! ## A183619.P13765543152421766968

`A183622(eq[5, A193592(n)])`
-/

namespace A183619.P13765543152421766968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183622 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183619.P13765543152421766968

/-! ## A183619.P16171033171537793188

`A183622(eq[6, A200370(n+1)])`
-/

namespace A183619.P16171033171537793188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183622 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183619.P16171033171537793188

/-!
# A183620: 1/120 the number of (n+1)X8 0..4 arrays with every 2X2 subblock containing four distinct values.

The programs for A183620, there is no canonical definition to state claims against.
-/

/-! ## A183620.P7322411388834096770

`A183622(A374008(n+1))`
-/

namespace A183620.P7322411388834096770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183622 (A374008 (n + 1)).toNat

end

end A183620.P7322411388834096770

/-! ## A183620.P3244213939243111199

`A183622(eq[4, A219347(n)])`
-/

namespace A183620.P3244213939243111199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183622 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183620.P3244213939243111199

/-! ## A183620.P6242865819073351038

`A183622(eq[8, A131818(n+1)])`
-/

namespace A183620.P6242865819073351038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183622 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183620.P6242865819073351038

/-!
# A183621: 1/120 the number of (n+1)X9 0..4 arrays with every 2X2 subblock containing four distinct values.

The programs for A183621, there is no canonical definition to state claims against.
-/

/-! ## A183621.P18442102615851568884

`A183622(A374009(n+1))`
-/

namespace A183621.P18442102615851568884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183622 (A374009 (n + 1)).toNat

end

end A183621.P18442102615851568884

/-! ## A183621.P16516104231992205134

`A183622(eq[9, A131818(n+1)])`
-/

namespace A183621.P16516104231992205134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183622 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183621.P16516104231992205134

/-!
# A183622: T(n,k)=1/120 the number of (n+1)X(k+1) 0..4 arrays with every 2X2 subblock containing four distinct values.

The programs for A183622, there is no canonical definition to state claims against.
-/

/-! ## A183622.P15879643563309684817

`A034695(A149794(n+1))`
-/

namespace A183622.P15879643563309684817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034695 (A149794 (n + 1)).toNat

end

end A183622.P15879643563309684817

/-! ## A183622.P9765043070491882264

`A034695(round((2^n/sqrt(5))^A295879(n+1))+1)`
-/

namespace A183622.P9765043070491882264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034695 (SequenceMachineLib.roundAway (((2 ^ n : ℝ) / Real.sqrt (5 : ℝ)) ^ (A295879 (n + 1) : ℤ)) + 1).toNat

end

end A183622.P9765043070491882264

/-! ## A183622.P2140425422768318541

`A034695(A330663(n)+A243354(n+1))`
-/

namespace A183622.P2140425422768318541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034695 (A330663 n + A243354 (n + 1)).toNat

end

end A183622.P2140425422768318541

/-!
# A183623: Number of (n+1) X (n+1) 0..2 arrays with every 2 X 2 subblock summing to 4.

The programs for A183623, the canonical program `A183623.P10802822870144826526` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183623 has offset 1).

The definition of A183623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183623.P10802822870144826526

`(2^(n+2)-2)²+2*3^(n+2)-3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183623

/-- `(2^(n+2)-2)²+2*3^(n+2)-3` -/
def P10802822870144826526.Spec : Prop :=
  ∀ n, P10802822870144826526.a n = A183623 (n + 1)

theorem P10802822870144826526.correct : P10802822870144826526.Spec := by
  intro n
  simp only [A183623, Nat.add_sub_cancel]

end A183623

/-! ## A183623.P6450246080688221631

`A183632(∑[4*n]+1)`
-/

namespace A183623.P6450246080688221631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183632 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183623.P6450246080688221631

namespace A183623

/-- `A183632(∑[4*n]+1)` -/
def P6450246080688221631.Spec : Prop :=
  ∀ n, P6450246080688221631.a n = A183623 (n + 1)

end A183623

/-! ## A183623.P15138147348490004901

`or(1, A183632(A001844(n)))`
-/

namespace A183623.P15138147348490004901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183632 (A001844 n).toNat)

end

end A183623.P15138147348490004901

namespace A183623

/-- `or(1, A183632(A001844(n)))` -/
def P15138147348490004901.Spec : Prop :=
  ∀ n, P15138147348490004901.a n = A183623 (n + 1)

end A183623

/-! ## A183623.P1057137526746327467

`record[A003982(n)*A183632(n+1)]`
-/

namespace A183623.P1057137526746327467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A183632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183623.P1057137526746327467

namespace A183623

/-- `record[A003982(n)*A183632(n+1)]` -/
def P1057137526746327467.Spec : Prop :=
  ∀ n, P1057137526746327467.a n = A183623 (n + 1)

end A183623

/-! ## A183623.P11540720965966706777

`record[root(A183632(n+1), A143182(n))]`
-/

namespace A183623.P11540720965966706777
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183632 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183623.P11540720965966706777

namespace A183623

/-- `record[root(A183632(n+1), A143182(n))]` -/
def P11540720965966706777.Spec : Prop :=
  ∀ n, P11540720965966706777.a n = (A183623 (n + 1) : ℝ)

end A183623

/-!
# A183624: Number of (n+1) X 2 0..2 arrays with every 2 x 2 subblock summing to 4.

The programs for A183624, the canonical program `A183624.P5127553162645094958` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183624 has offset 1).

The definition of A183624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183624.P5127553162645094958

`A254028(n+2)-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A183624

/-- `A254028(n+2)-1` -/
def P5127553162645094958.Spec : Prop :=
  ∀ n, P5127553162645094958.a n = A183624 (n + 1)

theorem P5127553162645094958.correct : P5127553162645094958.Spec := by
  intro n
  simp only [A183624, Nat.add_sub_cancel]

end A183624

/-! ## A183624.P110383213766201652

`A085279(n+3)+2`
-/

namespace A183624.P110383213766201652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085279 (n + 3) + 2

end

end A183624.P110383213766201652

namespace A183624

/-- `A085279(n+3)+2` -/
def P110383213766201652.Spec : Prop :=
  ∀ n, P110383213766201652.a n = A183624 (n + 1)

end A183624

/-! ## A183624.P13863847193084991007

`A072674(n+2)+5`
-/

namespace A183624.P13863847193084991007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072674 (n + 2) + 5

end

end A183624.P13863847193084991007

namespace A183624

/-- `A072674(n+2)+5` -/
def P13863847193084991007.Spec : Prop :=
  ∀ n, P13863847193084991007.a n = A183624 (n + 1)

end A183624

/-! ## A183624.P6150557380237473514

`2*A099754(n+2)+1`
-/

namespace A183624.P6150557380237473514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099754 (n + 2) + 1

end

end A183624.P6150557380237473514

namespace A183624

/-- `2*A099754(n+2)+1` -/
def P6150557380237473514.Spec : Prop :=
  ∀ n, P6150557380237473514.a n = A183624 (n + 1)

end A183624

/-! ## A183624.P17364085903631678105

`2*A094374(n+2)+3`
-/

namespace A183624.P17364085903631678105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094374 (n + 2) + 3

end

end A183624.P17364085903631678105

namespace A183624

/-- `2*A094374(n+2)+3` -/
def P17364085903631678105.Spec : Prop :=
  ∀ n, P17364085903631678105.a n = A183624 (n + 1)

end A183624

/-! ## A183624.P8587563199494926354

`∑[2*A007689(n+1)]+9`
-/

namespace A183624.P8587563199494926354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 9

end

end A183624.P8587563199494926354

namespace A183624

/-- `∑[2*A007689(n+1)]+9` -/
def P8587563199494926354.Spec : Prop :=
  ∀ n, P8587563199494926354.a n = A183624 (n + 1)

end A183624

/-! ## A183624.P7396548329954777044

`A173657(n+2)+2^(n+2)`
-/

namespace A183624.P7396548329954777044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173657 (n + 2) + (2 ^ (n + 2) : ℤ)

end

end A183624.P7396548329954777044

namespace A183624

/-- `A173657(n+2)+2^(n+2)` -/
def P7396548329954777044.Spec : Prop :=
  ∀ n, P7396548329954777044.a n = A183624 (n + 1)

end A183624

/-! ## A183624.P15693226124345590341

`A168607(n+2)+2^(n+3)`
-/

namespace A183624.P15693226124345590341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168607 (n + 2) + (2 ^ (n + 3) : ℤ)

end

end A183624.P15693226124345590341

namespace A183624

/-- `A168607(n+2)+2^(n+3)` -/
def P15693226124345590341.Spec : Prop :=
  ∀ n, P15693226124345590341.a n = A183624 (n + 1)

end A183624

/-! ## A183624.P11622461939543464853

`A259821(n+2)+2^(n+3)`
-/

namespace A183624.P11622461939543464853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259821 (n + 2) + (2 ^ (n + 3) : ℤ)

end

end A183624.P11622461939543464853

namespace A183624

/-- `A259821(n+2)+2^(n+3)` -/
def P11622461939543464853.Spec : Prop :=
  ∀ n, P11622461939543464853.a n = A183624 (n + 1)

end A183624

/-! ## A183624.P13034565351491943008

`A052548(n+3)+3^(n+2)`
-/

namespace A183624.P13034565351491943008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 (n + 3) + (3 ^ (n + 2) : ℤ)

end

end A183624.P13034565351491943008

namespace A183624

/-- `A052548(n+3)+3^(n+2)` -/
def P13034565351491943008.Spec : Prop :=
  ∀ n, P13034565351491943008.a n = A183624 (n + 1)

end A183624

/-! ## A183624.P5006496520569892334

`A133140(n+3)+3^(n+2)`
-/

namespace A183624.P5006496520569892334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133140 (n + 3) + (3 ^ (n + 2) : ℤ)

end

end A183624.P5006496520569892334

namespace A183624

/-- `A133140(n+3)+3^(n+2)` -/
def P5006496520569892334.Spec : Prop :=
  ∀ n, P5006496520569892334.a n = A183624 (n + 1)

end A183624

/-! ## A183624.P12014504944045699880

`2*(∑[A001550(n+1)-1]+1)+7`
-/

namespace A183624.P12014504944045699880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001550 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 7

end

end A183624.P12014504944045699880

namespace A183624

/-- `2*(∑[A001550(n+1)-1]+1)+7` -/
def P12014504944045699880.Spec : Prop :=
  ∀ n, P12014504944045699880.a n = A183624 (n + 1)

end A183624

/-! ## A183624.P15660296498354028954

`A254365(n+2)-A175161(n)`
-/

namespace A183624.P15660296498354028954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254365 (n + 2) - A175161 n

end

end A183624.P15660296498354028954

namespace A183624

/-- `A254365(n+2)-A175161(n)` -/
def P15660296498354028954.Spec : Prop :=
  ∀ n, P15660296498354028954.a n = A183624 (n + 1)

end A183624

/-! ## A183624.P14639940663073745420

`9*A007689(n)-A000918(n)`
-/

namespace A183624.P14639940663073745420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A007689 n - A000918 n

end

end A183624.P14639940663073745420

namespace A183624

/-- `9*A007689(n)-A000918(n)` -/
def P14639940663073745420.Spec : Prop :=
  ∀ n, P14639940663073745420.a n = A183624 (n + 1)

end A183624

/-! ## A183624.P16770610046160141504

`A001550(n+2)+A000051(n+2)`
-/

namespace A183624.P16770610046160141504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001550 (n + 2) + A000051 (n + 2)

end

end A183624.P16770610046160141504

namespace A183624

/-- `A001550(n+2)+A000051(n+2)` -/
def P16770610046160141504.Spec : Prop :=
  ∀ n, P16770610046160141504.a n = A183624 (n + 1)

end A183624

/-! ## A183624.P12541513227713639284

`A034472(n+2)+A000051(n+3)`
-/

namespace A183624.P12541513227713639284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 (n + 2) + A000051 (n + 3)

end

end A183624.P12541513227713639284

namespace A183624

/-- `A034472(n+2)+A000051(n+3)` -/
def P12541513227713639284.Spec : Prop :=
  ∀ n, P12541513227713639284.a n = A183624 (n + 1)

end A183624

/-! ## A183624.P4728372013782560660

`A103457(n+2)+A083318(n+3)`
-/

namespace A183624.P4728372013782560660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103457 (n + 2) + A083318 (n + 3)

end

end A183624.P4728372013782560660

namespace A183624

/-- `A103457(n+2)+A083318(n+3)` -/
def P4728372013782560660.Spec : Prop :=
  ∀ n, P4728372013782560660.a n = A183624 (n + 1)

end A183624

/-! ## A183624.P16923447000662578155

`A254365(n+1)+2*A168611(n+1)`
-/

namespace A183624.P16923447000662578155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254365 (n + 1) + 2 * A168611 (n + 1)

end

end A183624.P16923447000662578155

namespace A183624

/-- `A254365(n+1)+2*A168611(n+1)` -/
def P16923447000662578155.Spec : Prop :=
  ∀ n, P16923447000662578155.a n = A183624 (n + 1)

end A183624

/-! ## A183624.P2270227468648126895

`6*A007689(n)+A007689(n+1)+2`
-/

namespace A183624.P2270227468648126895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A007689 n + (A007689 (n + 1) + 2)

end

end A183624.P2270227468648126895

namespace A183624

/-- `6*A007689(n)+A007689(n+1)+2` -/
def P2270227468648126895.Spec : Prop :=
  ∀ n, P2270227468648126895.a n = A183624 (n + 1)

end A183624

/-! ## A183624.P11995097227951268142

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=19, a(1)=45, a(2)=115`
-/

namespace A183624.P11995097227951268142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [19, 45, 115] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 6 * a (n - 3)

end

end A183624.P11995097227951268142

namespace A183624

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P11995097227951268142.Spec : Prop :=
  ∀ n, P11995097227951268142.a n = A183624 (n + 1)

end A183624

/-!
# A183625: Number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock summing to 4.

The programs for A183625, the canonical program `A183625.P17615891382779643584` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183625 has offset 1).

The definition of A183625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183625.P17615891382779643584

`3*A271743(n+5)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A183625

/-- `3*A271743(n+5)` -/
def P17615891382779643584.Spec : Prop :=
  ∀ n, P17615891382779643584.a n = A183625 (n + 1)

theorem P17615891382779643584.correct : P17615891382779643584.Spec := by
  intro n
  simp only [A183625, Nat.add_sub_cancel]

end A183625

/-! ## A183625.P11873976941457491016

`A254362(n+2)+A153973(n+3)`
-/

namespace A183625.P11873976941457491016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254362 (n + 2) + A153973 (n + 3)

end

end A183625.P11873976941457491016

namespace A183625

/-- `A254362(n+2)+A153973(n+3)` -/
def P11873976941457491016.Spec : Prop :=
  ∀ n, P11873976941457491016.a n = A183625 (n + 1)

end A183625

/-! ## A183625.P7228089861481732334

`A048578(n+2)+A254365(n+2)+1`
-/

namespace A183625.P7228089861481732334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 (n + 2) + (A254365 (n + 2) + 1)

end

end A183625.P7228089861481732334

namespace A183625

/-- `A048578(n+2)+A254365(n+2)+1` -/
def P7228089861481732334.Spec : Prop :=
  ∀ n, P7228089861481732334.a n = A183625 (n + 1)

end A183625

/-! ## A183625.P9149300763897550685

`A168614(n+2)+A254368(n+2)-8`
-/

namespace A183625.P9149300763897550685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168614 (n + 2) + (A254368 (n + 2) - 8)

end

end A183625.P9149300763897550685

namespace A183625

/-- `A168614(n+2)+A254368(n+2)-8` -/
def P9149300763897550685.Spec : Prop :=
  ∀ n, P9149300763897550685.a n = A183625 (n + 1)

end A183625

/-! ## A183625.P5492524317183938583

`A062709(n+3)+A271743(n+6)+5`
-/

namespace A183625.P5492524317183938583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062709 (n + 3) + (A271743 (n + 6) + 5)

end

end A183625.P5492524317183938583

namespace A183625

/-- `A062709(n+3)+A271743(n+6)+5` -/
def P5492524317183938583.Spec : Prop :=
  ∀ n, P5492524317183938583.a n = A183625 (n + 1)

end A183625

/-! ## A183625.P765639982385590426

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=45, a(1)=87, a(2)=189`
-/

namespace A183625.P765639982385590426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [45, 87, 189] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 6 * a (n - 3)

end

end A183625.P765639982385590426

namespace A183625

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P765639982385590426.Spec : Prop :=
  ∀ n, P765639982385590426.a n = A183625 (n + 1)

end A183625

/-! ## A183625.P6898771982092596677

`(A235878(n+2)+30)/3`
-/

namespace A183625.P6898771982092596677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235878 (n + 2) + 30 : ℚ) / 3

end

end A183625.P6898771982092596677

namespace A183625

/-- `(A235878(n+2)+30)/3` -/
def P6898771982092596677.Spec : Prop :=
  ∀ n, P6898771982092596677.a n = (A183625 (n + 1) : ℚ)

end A183625

/-!
# A183626: Number of (n+1) X 4 0..2 arrays with every 2 X 2 subblock summing to 4.

The programs for A183626, the canonical program `A183626.P17793019024115659213` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183626 has offset 1).

The definition of A183626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183626.P17395461443935134000

`A235879(n+1)-(A305155(n)+1)`
-/

namespace A183626.P17395461443935134000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235879 (n + 1) - (A305155 n + 1)

end

end A183626.P17395461443935134000

namespace A183626

/-- `A235879(n+1)-(A305155(n)+1)` -/
def P17395461443935134000.Spec : Prop :=
  ∀ n, P17395461443935134000.a n = A183626 (n + 1)

end A183626

/-! ## A183626.P17793019024115659213

`A183624(n+1)+6*A175161(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A183626

/-- `A183624(n+1)+6*A175161(n)` -/
def P17793019024115659213.Spec : Prop :=
  ∀ n, P17793019024115659213.a n = A183626 (n + 1)

theorem P17793019024115659213.correct : P17793019024115659213.Spec := by
  intro n
  simp only [A183626, Nat.add_sub_cancel]

end A183626

/-! ## A183626.P3991874716203278617

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=115, a(1)=189, a(2)=355`
-/

namespace A183626.P3991874716203278617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [115, 189, 355] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 6 * a (n - 3)

end

end A183626.P3991874716203278617

namespace A183626

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P3991874716203278617.Spec : Prop :=
  ∀ n, P3991874716203278617.a n = A183626 (n + 1)

end A183626

/-! ## A183626.P4709935479062301341

`A183632(∑[n+2]+4)`
-/

namespace A183626.P4709935479062301341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183632 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183626.P4709935479062301341

namespace A183626

/-- `A183632(∑[n+2]+4)` -/
def P4709935479062301341.Spec : Prop :=
  ∀ n, P4709935479062301341.a n = A183626 (n + 1)

end A183626

/-! ## A183626.P9611722771019202503

`or(1, A183632(A167614(n+1)))`
-/

namespace A183626.P9611722771019202503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183632 (A167614 (n + 1)).toNat)

end

end A183626.P9611722771019202503

namespace A183626

/-- `or(1, A183632(A167614(n+1)))` -/
def P9611722771019202503.Spec : Prop :=
  ∀ n, P9611722771019202503.a n = A183626 (n + 1)

end A183626

/-!
# A183627: Number of (n+1) X 5 0..2 arrays with every 2 x 2 subblock summing to 4.

The programs for A183627, the canonical program `A183627.P6655771687484451531` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183627 has offset 1).

The definition of A183627 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183627.P6655771687484451531

`3*(60+5*2^(2+n+1)+3^(n+1))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183627

/-- `3*(60+5*2^(2+n+1)+3^(n+1))` -/
def P6655771687484451531.Spec : Prop :=
  ∀ n, (P6655771687484451531.a n : ℤ) = A183627 (n + 1)

theorem P6655771687484451531.correct : P6655771687484451531.Spec := by
  intro n
  simp only [A183627, Nat.add_sub_cancel]

end A183627

/-! ## A183627.P4725265282399433261

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=309, a(1)=447, a(2)=741`
-/

namespace A183627.P4725265282399433261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [309, 447, 741] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 6 * a (n - 3)

end

end A183627.P4725265282399433261

namespace A183627

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P4725265282399433261.Spec : Prop :=
  ∀ n, P4725265282399433261.a n = A183627 (n + 1)

theorem P4725265282399433261.correct : P4725265282399433261.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A183627, Nat.add_sub_cancel, A183627.P4725265282399433261.a, A183627.P6655771687484451531.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A183627, Nat.add_sub_cancel, A183627.P4725265282399433261.a, A183627.P6655771687484451531.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A183627

/-! ## A183627.P16620705997636720025

`A183632(∑[n+3]+7)`
-/

namespace A183627.P16620705997636720025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183632 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A183627.P16620705997636720025

namespace A183627

/-- `A183632(∑[n+3]+7)` -/
def P16620705997636720025.Spec : Prop :=
  ∀ n, P16620705997636720025.a n = A183627 (n + 1)

end A183627

/-! ## A183627.P4946984686367061070

`lcm(3, A183632(A167614(n+2)+1))`
-/

namespace A183627.P4946984686367061070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A183632 (A167614 (n + 2) + 1).toNat)

end

end A183627.P4946984686367061070

namespace A183627

/-- `lcm(3, A183632(A167614(n+2)+1))` -/
def P4946984686367061070.Spec : Prop :=
  ∀ n, (P4946984686367061070.a n : ℤ) = A183627 (n + 1)

end A183627

/-!
# A183628: Number of (n+1)X6 0..2 arrays with every 2x2 subblock summing to 4.

The programs for A183628, the canonical program `A183628.P13024838454957801524` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183628 has offset 1).

The definition of A183628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183628.P13024838454957801524

`124*2^(n+1)+3*3^(n+1)+602`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183628

/-- `124*2^(n+1)+3*3^(n+1)+602` -/
def P13024838454957801524.Spec : Prop :=
  ∀ n, (P13024838454957801524.a n : ℤ) = A183628 (n + 1)

theorem P13024838454957801524.correct : P13024838454957801524.Spec := by
  intro n
  simp only [A183628, Nat.add_sub_cancel]

end A183628

/-! ## A183628.P8912625253078756044

`A183632(C(n+5, 2)+5)`
-/

namespace A183628.P8912625253078756044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183632 (Nat.choose (n + 5) 2 + 5)

end

end A183628.P8912625253078756044

namespace A183628

/-- `A183632(C(n+5, 2)+5)` -/
def P8912625253078756044.Spec : Prop :=
  ∀ n, P8912625253078756044.a n = A183628 (n + 1)

end A183628

/-! ## A183628.P18215912607365602358

`A183632(A374005(n+1))`
-/

namespace A183628.P18215912607365602358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183632 (A374005 (n + 1)).toNat

end

end A183628.P18215912607365602358

namespace A183628

/-- `A183632(A374005(n+1))` -/
def P18215912607365602358.Spec : Prop :=
  ∀ n, P18215912607365602358.a n = A183628 (n + 1)

end A183628

/-! ## A183628.P18382349113916152270

`A183632(A155212(n)+13)`
-/

namespace A183628.P18382349113916152270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183632 (A155212 n + 13).toNat

end

end A183628.P18382349113916152270

namespace A183628

/-- `A183632(A155212(n)+13)` -/
def P18382349113916152270.Spec : Prop :=
  ∀ n, P18382349113916152270.a n = A183628 (n + 1)

end A183628

/-! ## A183628.P6630222213549799565

`A183632(A056000(n)+15)`
-/

namespace A183628.P6630222213549799565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183632 (A056000 n + 15).toNat

end

end A183628.P6630222213549799565

namespace A183628

/-- `A183632(A056000(n)+15)` -/
def P6630222213549799565.Spec : Prop :=
  ∀ n, P6630222213549799565.a n = A183628 (n + 1)

end A183628

/-!
# A183629: Number of (n+1) X 7 0..2 arrays with every 2 X 2 subblock summing to 4.

The programs for A183629, there is no canonical definition to state claims against.
-/

/-! ## A183629.P8116340468630751914

`A183632(A374007(n+1))`
-/

namespace A183629.P8116340468630751914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183632 (A374007 (n + 1)).toNat

end

end A183629.P8116340468630751914

/-! ## A183629.P5945246413138049892

`A183632(A056115(n)+21)`
-/

namespace A183629.P5945246413138049892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183632 (A056115 n + 21).toNat

end

end A183629.P5945246413138049892

/-! ## A183629.P6248821844085181196

`A183632(A167499(n+4)+1)`
-/

namespace A183629.P6248821844085181196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183632 (A167499 (n + 4) + 1).toNat

end

end A183629.P6248821844085181196

/-! ## A183629.P13219581491242288199

`A183632(A167614(n+4)+3)`
-/

namespace A183629.P13219581491242288199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183632 (A167614 (n + 4) + 3).toNat

end

end A183629.P13219581491242288199

/-! ## A183629.P12612787797689770614

`A183632(A000124(n+5)+5)`
-/

namespace A183629.P12612787797689770614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183632 (A000124 (n + 5) + 5).toNat

end

end A183629.P12612787797689770614

/-!
# A183630: Number of (n+1) X 8 0..2 arrays with every 2 X 2 subblock summing to 4.

The programs for A183630, there is no canonical definition to state claims against.
-/

/-! ## A183630.P9768842172842587518

`A183632(A374008(n+1))`
-/

namespace A183630.P9768842172842587518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183632 (A374008 (n + 1)).toNat

end

end A183630.P9768842172842587518

/-! ## A183630.P251075106345963905

`A183632(A167487(n+5))`
-/

namespace A183630.P251075106345963905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183632 (A167487 (n + 5)).toNat

end

end A183630.P251075106345963905

/-! ## A183630.P11190666260527727739

`A183632(A056119(n)+28)`
-/

namespace A183630.P11190666260527727739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183632 (A056119 n + 28).toNat

end

end A183630.P11190666260527727739

/-! ## A183630.P17700096540325579390

`A183632(eq[11, A066657(n)])`
-/

namespace A183630.P17700096540325579390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183630.P17700096540325579390

/-! ## A183630.P16088433726866920489

`A183632(A167614(n+5)+4)`
-/

namespace A183630.P16088433726866920489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183632 (A167614 (n + 5) + 4).toNat

end

end A183630.P16088433726866920489

/-!
# A183631: Number of (n+1) X 9 0..2 arrays with every 2 X 2 subblock summing to 4.

The programs for A183631, there is no canonical definition to state claims against.
-/

/-! ## A183631.P9526286804404549204

`A183632(A374009(n+1))`
-/

namespace A183631.P9526286804404549204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183632 (A374009 (n + 1)).toNat

end

end A183631.P9526286804404549204

/-! ## A183631.P12756661221645041581

`A183632(eq[13, A066657(n)])`
-/

namespace A183631.P12756661221645041581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183631.P12756661221645041581

/-! ## A183631.P11874047473634475683

`A183632(A000217(n+7)+8)`
-/

namespace A183631.P11874047473634475683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183632 (A000217 (n + 7) + 8).toNat

end

end A183631.P11874047473634475683

/-! ## A183631.P13180432696840709222

`A183632(eq[9, A131818(n+1)])`
-/

namespace A183631.P13180432696840709222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183631.P13180432696840709222

/-! ## A183631.P11030033082960395960

`A183632(A056126(n)+29)`
-/

namespace A183631.P11030033082960395960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183632 (A056126 n + 29).toNat

end

end A183631.P11030033082960395960

/-!
# A183633: Number of (n+1) X (n+1) 0..3 arrays with every 2 X 2 subblock summing to 6.

The programs for A183633, the canonical program `A183633.P17029456753738138109` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183633 has offset 1).

The definition of A183633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183633.P17029456753738138109

`4*(2^(n+1)-1)*3^(n+2)+4*2^(n+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183633

/-- `4*(2^(n+1)-1)*3^(n+2)+4*2^(n+1)` -/
def P17029456753738138109.Spec : Prop :=
  ∀ n, P17029456753738138109.a n = A183633 (n + 1)

theorem P17029456753738138109.correct : P17029456753738138109.Spec := by
  intro n
  simp only [A183633, Nat.add_sub_cancel]

end A183633

/-! ## A183633.P5098278085658015182

`4*Δ[∑[3^n*∑[2^n]]+2*a(n-1)]` with `a(0)=1`
-/

namespace A183633.P5098278085658015182
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A183633.P5098278085658015182

namespace A183633

/-- `4*Δ[∑[3^n*∑[2^n]]+2*a(n-1)]` -/
def P5098278085658015182.Spec : Prop :=
  ∀ n, P5098278085658015182.a n = A183633 (n + 1)

end A183633

/-! ## A183633.P336629213146414832

`Δ[4*A021029(n)]`
-/

namespace A183633.P336629213146414832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A021029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183633.P336629213146414832

namespace A183633

/-- `Δ[4*A021029(n)]` -/
def P336629213146414832.Spec : Prop :=
  ∀ n, P336629213146414832.a n = A183633 (n + 1)

end A183633

/-! ## A183633.P8390996733789087047

`4*A001240(n+2)`
-/

namespace A183633.P8390996733789087047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001240 (n + 2)

end

end A183633.P8390996733789087047

namespace A183633

/-- `4*A001240(n+2)` -/
def P8390996733789087047.Spec : Prop :=
  ∀ n, P8390996733789087047.a n = A183633 (n + 1)

end A183633

/-!
# A183634: Number of (n+1) X 2 0..3 arrays with every 2 x 2 subblock summing to 6.

The programs for A183634, the canonical program `A183634.P9956752237045625953` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183634 has offset 1).

The definition of A183634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183634.P9956752237045625953

`2+2^(n+3)+2*3^(n+2)+4^(n+2)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183634

/-- `2+2^(n+3)+2*3^(n+2)+4^(n+2)` -/
def P9956752237045625953.Spec : Prop :=
  ∀ n, (P9956752237045625953.a n : ℤ) = A183634 (n + 1)

theorem P9956752237045625953.correct : P9956752237045625953.Spec := by
  intro n
  simp only [A183634, Nat.add_sub_cancel]

end A183634

/-!
# A183635: Number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock summing to 6.

The programs for A183635, the canonical program `A183635.P9450013236605902664` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183635 has offset 1).

The definition of A183635 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183635.P9450013236605902664

`18+3*2^(n+4)+2*3^(n+3)+4^(n+2)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183635

/-- `18+3*2^(n+4)+2*3^(n+3)+4^(n+2)` -/
def P9450013236605902664.Spec : Prop :=
  ∀ n, (P9450013236605902664.a n : ℤ) = A183635 (n + 1)

theorem P9450013236605902664.correct : P9450013236605902664.Spec := by
  intro n
  simp only [A183635, Nat.add_sub_cancel]

end A183635

/-! ## A183635.P4852264558066958233

`A183642(∑[n+1]+2)`
-/

namespace A183635.P4852264558066958233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183642 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183635.P4852264558066958233

namespace A183635

/-- `A183642(∑[n+1]+2)` -/
def P4852264558066958233.Spec : Prop :=
  ∀ n, P4852264558066958233.a n = A183635 (n + 1)

end A183635

/-! ## A183635.P18307652275459438152

`record[A183642(A183234(n+1))]`
-/

namespace A183635.P18307652275459438152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183642 (A183234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183635.P18307652275459438152

namespace A183635

/-- `record[A183642(A183234(n+1))]` -/
def P18307652275459438152.Spec : Prop :=
  ∀ n, P18307652275459438152.a n = A183635 (n + 1)

end A183635

/-! ## A183635.P10178911510725845442

`lcm(2, A183642(A000096(n)+3))`
-/

namespace A183635.P10178911510725845442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183642 (A000096 n + 3).toNat)

end

end A183635.P10178911510725845442

namespace A183635

/-- `lcm(2, A183642(A000096(n)+3))` -/
def P10178911510725845442.Spec : Prop :=
  ∀ n, (P10178911510725845442.a n : ℤ) = A183635 (n + 1)

end A183635

/-! ## A183635.P3112481954085092389

`record[A183642(A328371(n+1)+2)]`
-/

namespace A183635.P3112481954085092389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183642 (A328371 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183635.P3112481954085092389

namespace A183635

/-- `record[A183642(A328371(n+1)+2)]` -/
def P3112481954085092389.Spec : Prop :=
  ∀ n, P3112481954085092389.a n = A183635 (n + 1)

end A183635

/-!
# A183636: Number of (n+1) X 4 0..3 arrays with every 2 X 2 subblock summing to 6.

The programs for A183636, the canonical program `A183636.P12233766480362232716` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183636 has offset 1).

The definition of A183636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183636.P12233766480362232716

`110+25*2^(n+3)+14*3^(n+2)+4^(n+2)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183636

/-- `110+25*2^(n+3)+14*3^(n+2)+4^(n+2)` -/
def P12233766480362232716.Spec : Prop :=
  ∀ n, (P12233766480362232716.a n : ℤ) = A183636 (n + 1)

theorem P12233766480362232716.correct : P12233766480362232716.Spec := by
  intro n
  simp only [A183636, Nat.add_sub_cancel]

end A183636

/-! ## A183636.P8417629970386107850

`A183642(∑[n+2]+4)`
-/

namespace A183636.P8417629970386107850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183642 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183636.P8417629970386107850

namespace A183636

/-- `A183642(∑[n+2]+4)` -/
def P8417629970386107850.Spec : Prop :=
  ∀ n, P8417629970386107850.a n = A183636 (n + 1)

end A183636

/-! ## A183636.P14959387641130213370

`lcm(2, A183642(A167614(n+1)))`
-/

namespace A183636.P14959387641130213370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183642 (A167614 (n + 1)).toNat)

end

end A183636.P14959387641130213370

namespace A183636

/-- `lcm(2, A183642(A167614(n+1)))` -/
def P14959387641130213370.Spec : Prop :=
  ∀ n, (P14959387641130213370.a n : ℤ) = A183636 (n + 1)

end A183636

/-! ## A183636.P434294094369660888

`record[A183642(n+4)/A091965(n)]`
-/

namespace A183636.P434294094369660888
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183642 (n + 4) : ℚ) / (A091965 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183636.P434294094369660888

namespace A183636

/-- `record[A183642(n+4)/A091965(n)]` -/
def P434294094369660888.Spec : Prop :=
  ∀ n, P434294094369660888.a n = (A183636 (n + 1) : ℚ)

end A183636

/-!
# A183637: Number of (n+1) X 5 0..3 arrays with every 2 X 2 subblock summing to 6.

The programs for A183637, the canonical program `A183637.P4310086035842700839` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183637 has offset 1).

The definition of A183637 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183637.P4310086035842700839

`570+45*2^(n+4)+10*3^(n+3)+4^(n+2)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183637

/-- `570+45*2^(n+4)+10*3^(n+3)+4^(n+2)` -/
def P4310086035842700839.Spec : Prop :=
  ∀ n, (P4310086035842700839.a n : ℤ) = A183637 (n + 1)

theorem P4310086035842700839.correct : P4310086035842700839.Spec := by
  intro n
  simp only [A183637, Nat.add_sub_cancel]

end A183637

/-! ## A183637.P11627851677563814252

`A183642(∑[n+3]+7)`
-/

namespace A183637.P11627851677563814252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183642 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A183637.P11627851677563814252

namespace A183637

/-- `A183642(∑[n+3]+7)` -/
def P11627851677563814252.Spec : Prop :=
  ∀ n, P11627851677563814252.a n = A183637 (n + 1)

end A183637

/-! ## A183637.P4661532575310892259

`lcm(2, A183642(A141214(n+1)))`
-/

namespace A183637.P4661532575310892259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183642 (A141214 (n + 1)).toNat)

end

end A183637.P4661532575310892259

namespace A183637

/-- `lcm(2, A183642(A141214(n+1)))` -/
def P4661532575310892259.Spec : Prop :=
  ∀ n, (P4661532575310892259.a n : ℤ) = A183637 (n + 1)

end A183637

/-!
# A183638: Number of (n+1) X 6 0..3 arrays with every 2 X 2 subblock summing to 6.

The programs for A183638, there is no canonical definition to state claims against.
-/

/-! ## A183638.P7053265710390314609

`A183642(A374005(n+1))`
-/

namespace A183638.P7053265710390314609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183642 (A374005 (n + 1)).toNat

end

end A183638.P7053265710390314609

/-! ## A183638.P2056496028922886585

`A183642(A167499(n+3))`
-/

namespace A183638.P2056496028922886585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183642 (A167499 (n + 3)).toNat

end

end A183638.P2056496028922886585

/-! ## A183638.P18194958612205291440

`A183642(A155212(n)+13)`
-/

namespace A183638.P18194958612205291440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183642 (A155212 n + 13).toNat

end

end A183638.P18194958612205291440

/-! ## A183638.P3184629137113808602

`A183642(A056000(n)+15)`
-/

namespace A183638.P3184629137113808602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183642 (A056000 n + 15).toNat

end

end A183638.P3184629137113808602

/-! ## A183638.P12528893252936532783

`A183642(eq[7, A066657(n)])`
-/

namespace A183638.P12528893252936532783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183642 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183638.P12528893252936532783

/-!
# A183639: Number of (n+1) X 7 0..3 arrays with every 2 X 2 subblock summing to 6.

The programs for A183639, there is no canonical definition to state claims against.
-/

/-! ## A183639.P6591155201959544086

`A183642(A374007(n+1))`
-/

namespace A183639.P6591155201959544086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183642 (A374007 (n + 1)).toNat

end

end A183639.P6591155201959544086

/-! ## A183639.P14822493935999687931

`A183642(A056115(n)+21)`
-/

namespace A183639.P14822493935999687931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183642 (A056115 n + 21).toNat

end

end A183639.P14822493935999687931

/-! ## A183639.P15659041480865298114

`A183642(A167614(n+4)+3)`
-/

namespace A183639.P15659041480865298114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183642 (A167614 (n + 4) + 3).toNat

end

end A183639.P15659041480865298114

/-! ## A183639.P9468341402048609520

`A183642(A000124(n+5)+5)`
-/

namespace A183639.P9468341402048609520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183642 (A000124 (n + 5) + 5).toNat

end

end A183639.P9468341402048609520

/-! ## A183639.P13534877486630709398

`A183642(A000217(n+5)+6)`
-/

namespace A183639.P13534877486630709398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183642 (A000217 (n + 5) + 6).toNat

end

end A183639.P13534877486630709398

/-!
# A183640: Number of (n+1) X 8 0..3 arrays with every 2 X 2 subblock summing to 6.

The programs for A183640, there is no canonical definition to state claims against.
-/

/-! ## A183640.P10924608114824067133

`A183642(A374008(n+1))`
-/

namespace A183640.P10924608114824067133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183642 (A374008 (n + 1)).toNat

end

end A183640.P10924608114824067133

/-! ## A183640.P4732911323657348000

`A183642(A167487(n+5))`
-/

namespace A183640.P4732911323657348000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183642 (A167487 (n + 5)).toNat

end

end A183640.P4732911323657348000

/-! ## A183640.P15011384670252138533

`A183642(eq[11, A066657(n)])`
-/

namespace A183640.P15011384670252138533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183642 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183640.P15011384670252138533

/-! ## A183640.P1998251554986709554

`A183642(A166136(n+5)+1)`
-/

namespace A183640.P1998251554986709554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183642 (A166136 (n + 5) + 1).toNat

end

end A183640.P1998251554986709554

/-! ## A183640.P5692778269908572968

`A183642(A167614(n+5)+4)`
-/

namespace A183640.P5692778269908572968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183642 (A167614 (n + 5) + 4).toNat

end

end A183640.P5692778269908572968

/-!
# A183641: Number of (n+1) X 9 0..3 arrays with every 2 X 2 subblock summing to 6.

The programs for A183641, there is no canonical definition to state claims against.
-/

/-! ## A183641.P205823867346159072

`A183642(A374009(n+1))`
-/

namespace A183641.P205823867346159072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183642 (A374009 (n + 1)).toNat

end

end A183641.P205823867346159072

/-! ## A183641.P6307294999482911906

`A183642(eq[5, A219347(n)])`
-/

namespace A183641.P6307294999482911906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183642 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183641.P6307294999482911906

/-! ## A183641.P9744599107885014521

`A183642(eq[7, A193592(n)])`
-/

namespace A183641.P9744599107885014521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183642 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183641.P9744599107885014521

/-! ## A183641.P9053476339770342725

`A183642(eq[13, A066657(n)])`
-/

namespace A183641.P9053476339770342725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183642 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183641.P9053476339770342725

/-! ## A183641.P11858708492959394403

`A183642(Δ[A183906(n+4)])`
-/

namespace A183641.P11858708492959394403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183906 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183642 (f1 (n + 1) - f1 n).toNat

end

end A183641.P11858708492959394403

/-!
# A183643: Number of (n+1) X (n+1) 0..4 arrays with every 2 X 2 subblock summing to 8.

The programs for A183643, there is no canonical definition to state claims against.
-/

/-! ## A183643.P16395942167512336140

`A183652(∑[4*n]+1)`
-/

namespace A183643.P16395942167512336140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183652 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183643.P16395942167512336140

/-! ## A183643.P1384580539795494545

`A178401(n)*A183652(n²+(n+1)²)`
-/

namespace A183643.P1384580539795494545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178401 n * A183652 (n ^ 2 + (n + 1) ^ 2)

end

end A183643.P1384580539795494545

/-!
# A183644: Number of (n+1) X 2 0..4 arrays with every 2 X 2 subblock summing to 8.

The programs for A183644, the canonical program `A183644.P16626996791095448195` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183644 has offset 1).

The definition of A183644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183644.P16626996791095448195

`2+2^(n+3)+2^(2*(n+1)+3)+2*3^(n+2)+5^(n+2)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183644

/-- `2+2^(n+3)+2^(2*(n+1)+3)+2*3^(n+2)+5^(n+2)` -/
def P16626996791095448195.Spec : Prop :=
  ∀ n, (P16626996791095448195.a n : ℤ) = A183644 (n + 1)

theorem P16626996791095448195.correct : P16626996791095448195.Spec := by
  intro n
  simp only [A183644, Nat.add_sub_cancel]

end A183644

/-! ## A183644.P1266438330568352092

`A051672(A052905(n+3)+1)`
-/

namespace A183644.P1266438330568352092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051672 (A052905 (n + 3) + 1).toNat

end

end A183644.P1266438330568352092

namespace A183644

/-- `A051672(A052905(n+3)+1)` -/
def P1266438330568352092.Spec : Prop :=
  ∀ n, P1266438330568352092.a n = A183644 (n + 1)

end A183644

/-! ## A183644.P14759576639881250355

`A051672(A000124(n+5)+n+1)`
-/

namespace A183644.P14759576639881250355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051672 (A000124 (n + 5) + (n + 1 : ℤ)).toNat

end

end A183644.P14759576639881250355

namespace A183644

/-- `A051672(A000124(n+5)+n+1)` -/
def P14759576639881250355.Spec : Prop :=
  ∀ n, P14759576639881250355.a n = A183644 (n + 1)

end A183644

/-!
# A183645: Number of (n+1) X 3 0..4 arrays with every 2 X 2 subblock summing to 8.

The programs for A183645, the canonical program `A183645.P10155070556498920446` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183645 has offset 1).

The definition of A183645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183645.P10155070556498920446

`5*5^(n+1)+24*4^(n+1)+36*3^(n+1)+36*2^(n+1)+24`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183645

/-- `5*5^(n+1)+24*4^(n+1)+36*3^(n+1)+36*2^(n+1)+24` -/
def P10155070556498920446.Spec : Prop :=
  ∀ n, (P10155070556498920446.a n : ℤ) = A183645 (n + 1)

theorem P10155070556498920446.correct : P10155070556498920446.Spec := by
  intro n
  simp only [A183645, Nat.add_sub_cancel]

end A183645

/-! ## A183645.P9297787085006947275

`A183652(∑[n+1]+2)`
-/

namespace A183645.P9297787085006947275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183652 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183645.P9297787085006947275

namespace A183645

/-- `A183652(∑[n+1]+2)` -/
def P9297787085006947275.Spec : Prop :=
  ∀ n, P9297787085006947275.a n = A183645 (n + 1)

end A183645

/-! ## A183645.P15060129813104664588

`record[A183652(A183234(n+1))]`
-/

namespace A183645.P15060129813104664588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183652 (A183234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183645.P15060129813104664588

namespace A183645

/-- `record[A183652(A183234(n+1))]` -/
def P15060129813104664588.Spec : Prop :=
  ∀ n, P15060129813104664588.a n = A183645 (n + 1)

end A183645

/-! ## A183645.P17648664971489676825

`record[A010054(n)*A183652(n+2)]`
-/

namespace A183645.P17648664971489676825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A183652 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183645.P17648664971489676825

namespace A183645

/-- `record[A010054(n)*A183652(n+2)]` -/
def P17648664971489676825.Spec : Prop :=
  ∀ n, P17648664971489676825.a n = A183645 (n + 1)

end A183645

/-! ## A183645.P17968027482192046493

`record[A183652(n+2)/A214676(n+1)]`
-/

namespace A183645.P17968027482192046493
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183652 (n + 2) : ℚ) / (A214676 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183645.P17968027482192046493

namespace A183645

/-- `record[A183652(n+2)/A214676(n+1)]` -/
def P17968027482192046493.Spec : Prop :=
  ∀ n, P17968027482192046493.a n = (A183645 (n + 1) : ℚ)

end A183645

/-!
# A183646: Number of (n+1) X 4 0..4 arrays with every 2 X 2 subblock summing to 8.

The programs for A183646, the canonical program `A183646.P5029843546868540384` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183646 has offset 1).

The definition of A183646 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183646.P5029843546868540384

`5*5^(n+1)+56*4^(n+1)+150*3^(n+1)+220*2^(n+1)+194`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183646

/-- `5*5^(n+1)+56*4^(n+1)+150*3^(n+1)+220*2^(n+1)+194` -/
def P5029843546868540384.Spec : Prop :=
  ∀ n, (P5029843546868540384.a n : ℤ) = A183646 (n + 1)

theorem P5029843546868540384.correct : P5029843546868540384.Spec := by
  intro n
  simp only [A183646, Nat.add_sub_cancel]

end A183646

/-! ## A183646.P2141588359264763609

`A183652(∑[n+2]+4)`
-/

namespace A183646.P2141588359264763609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183652 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183646.P2141588359264763609

namespace A183646

/-- `A183652(∑[n+2]+4)` -/
def P2141588359264763609.Spec : Prop :=
  ∀ n, P2141588359264763609.a n = A183646 (n + 1)

end A183646

/-! ## A183646.P1499300613127312844

`or(1, A183652(A167614(n+1)))`
-/

namespace A183646.P1499300613127312844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183652 (A167614 (n + 1)).toNat)

end

end A183646.P1499300613127312844

namespace A183646

/-- `or(1, A183652(A167614(n+1)))` -/
def P1499300613127312844.Spec : Prop :=
  ∀ n, P1499300613127312844.a n = A183646 (n + 1)

end A183646

/-!
# A183647: Number of (n+1) X 5 0..4 arrays with every 2 X 2 subblock summing to 8.

The programs for A183647, there is no canonical definition to state claims against.
-/

/-! ## A183647.P6922739203965653253

`A183652(∑[n+3]+7)`
-/

namespace A183647.P6922739203965653253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183652 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A183647.P6922739203965653253

/-! ## A183647.P10453934186866812647

`or(1, A183652(A374004(n+1)))`
-/

namespace A183647.P10453934186866812647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183652 (A374004 (n + 1)).toNat)

end

end A183647.P10453934186866812647

/-! ## A183647.P4617993498284820271

`A185284(n)+A183652(A374004(n+1))`
-/

namespace A183647.P4617993498284820271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A183652 (A374004 (n + 1)).toNat

end

end A183647.P4617993498284820271

/-! ## A183647.P3639104744970347547

`A256974(n)+A183652(A374004(n+1))`
-/

namespace A183647.P3639104744970347547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 n + A183652 (A374004 (n + 1)).toNat

end

end A183647.P3639104744970347547

/-! ## A183647.P13276524621208826780

`A326593(n)+A183652(A374004(n+1))`
-/

namespace A183647.P13276524621208826780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326593 n + A183652 (A374004 (n + 1)).toNat

end

end A183647.P13276524621208826780

/-!
# A183648: Number of (n+1) X 6 0..4 arrays with every 2 X 2 subblock summing to 8.

The programs for A183648, there is no canonical definition to state claims against.
-/

/-! ## A183648.P11176239767694259335

`A183652(C(n+5, 2)+5)`
-/

namespace A183648.P11176239767694259335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183652 (Nat.choose (n + 5) 2 + 5)

end

end A183648.P11176239767694259335

/-! ## A183648.P11953482416391098680

`A183652(A374005(n+1))`
-/

namespace A183648.P11953482416391098680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183652 (A374005 (n + 1)).toNat

end

end A183648.P11953482416391098680

/-! ## A183648.P18361728241533882461

`A183652(A155212(n)+13)`
-/

namespace A183648.P18361728241533882461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183652 (A155212 n + 13).toNat

end

end A183648.P18361728241533882461

/-! ## A183648.P2705452405607086427

`A183652(A056000(n)+15)`
-/

namespace A183648.P2705452405607086427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183652 (A056000 n + 15).toNat

end

end A183648.P2705452405607086427

/-! ## A183648.P10112604003380571103

`A183652(eq[7, A066657(n)])`
-/

namespace A183648.P10112604003380571103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183648.P10112604003380571103

/-!
# A183649: Number of (n+1) X 7 0..4 arrays with every 2 X 2 subblock summing to 8.

The programs for A183649, there is no canonical definition to state claims against.
-/

/-! ## A183649.P3839633588013431118

`A183652(∑[n+5]+16)`
-/

namespace A183649.P3839633588013431118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183652 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A183649.P3839633588013431118

/-! ## A183649.P1218767410007064473

`A183652(A000217(n+5)+6)+A000035(2*(n+1))`
-/

namespace A183649.P1218767410007064473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183652 (A000217 (n + 5) + 6).toNat + A000035 (2 * (n + 1))

end

end A183649.P1218767410007064473

/-! ## A183649.P2638210934095140708

`A183652(A000217(n+5)+6)+A060689(2*n+5)`
-/

namespace A183649.P2638210934095140708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183652 (A000217 (n + 5) + 6).toNat + A060689 (2 * n + 5)

end

end A183649.P2638210934095140708

/-!
# A183650: Number of (n+1) X 8 0..4 arrays with every 2 X 2 subblock summing to 8.

The programs for A183650, there is no canonical definition to state claims against.
-/

/-! ## A183650.P16977012055307682649

`A183652(A374008(n+1))`
-/

namespace A183650.P16977012055307682649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183652 (A374008 (n + 1)).toNat

end

end A183650.P16977012055307682649

/-!
# A183651: Number of (n+1) X 9 0..4 arrays with every 2 X 2 subblock summing to 8.

The programs for A183651, there is no canonical definition to state claims against.
-/

/-! ## A183651.P4653424660249325448

`A183652(eq[5, A219347(n)])`
-/

namespace A183651.P4653424660249325448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183651.P4653424660249325448

/-!
# A183653: Number of (n+1) X (n+1) 0..5 arrays with every 2 X 2 subblock summing to 10.

The programs for A183653, there is no canonical definition to state claims against.
-/

/-! ## A183653.P1508516558143023232

`A183662(∑[4*n]+1)`
-/

namespace A183653.P1508516558143023232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183662 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183653.P1508516558143023232

/-!
# A183654: Number of (n+1) X 2 0..5 arrays with every 2 X 2 subblock summing to 10.

The programs for A183654, the canonical program `A183654.P6995490803079003047` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183654 has offset 1).

The definition of A183654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183654.P6995490803079003047

`6*6^(n+1)+10*5^(n+1)+8*4^(n+1)+6*3^(n+1)+4*2^(n+1)+2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183654

/-- `6*6^(n+1)+10*5^(n+1)+8*4^(n+1)+6*3^(n+1)+4*2^(n+1)+2` -/
def P6995490803079003047.Spec : Prop :=
  ∀ n, (P6995490803079003047.a n : ℤ) = A183654 (n + 1)

theorem P6995490803079003047.correct : P6995490803079003047.Spec := by
  intro n
  simp only [A183654, Nat.add_sub_cancel]

end A183654

/-! ## A183654.P7260653023369508237

`A051672(A000217(n+7)-5)`
-/

namespace A183654.P7260653023369508237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051672 (A000217 (n + 7) - 5).toNat

end

end A183654.P7260653023369508237

namespace A183654

/-- `A051672(A000217(n+7)-5)` -/
def P7260653023369508237.Spec : Prop :=
  ∀ n, P7260653023369508237.a n = A183654 (n + 1)

end A183654

/-! ## A183654.P6227668751701654130

`A051672(A000124(n+7)-6)`
-/

namespace A183654.P6227668751701654130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051672 (A000124 (n + 7) - 6).toNat

end

end A183654.P6227668751701654130

namespace A183654

/-- `A051672(A000124(n+7)-6)` -/
def P6227668751701654130.Spec : Prop :=
  ∀ n, P6227668751701654130.a n = A183654 (n + 1)

end A183654

/-! ## A183654.P2122099212832091006

`A051672(A166136(n+4)+2*(n+1))`
-/

namespace A183654.P2122099212832091006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051672 (A166136 (n + 4) + (2 * (n + 1) : ℤ)).toNat

end

end A183654.P2122099212832091006

namespace A183654

/-- `A051672(A166136(n+4)+2*(n+1))` -/
def P2122099212832091006.Spec : Prop :=
  ∀ n, P2122099212832091006.a n = A183654 (n + 1)

end A183654

/-!
# A183655: Number of (n+1) X 3 0..5 arrays with every 2 X 2 subblock summing to 10.

The programs for A183655, the canonical program `A183655.P5825865633543994029` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183655 has offset 1).

The definition of A183655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183655.P5825865633543994029

`6*6^(n+1)+30*5^(n+1)+48*4^(n+1)+54*3^(n+1)+48*2^(n+1)+30`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183655

/-- `6*6^(n+1)+30*5^(n+1)+48*4^(n+1)+54*3^(n+1)+48*2^(n+1)+30` -/
def P5825865633543994029.Spec : Prop :=
  ∀ n, (P5825865633543994029.a n : ℤ) = A183655 (n + 1)

theorem P5825865633543994029.correct : P5825865633543994029.Spec := by
  intro n
  simp only [A183655, Nat.add_sub_cancel]

end A183655

/-! ## A183655.P8763991787920749988

`A183662(∑[n+1]+2)`
-/

namespace A183655.P8763991787920749988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183662 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183655.P8763991787920749988

namespace A183655

/-- `A183662(∑[n+1]+2)` -/
def P8763991787920749988.Spec : Prop :=
  ∀ n, P8763991787920749988.a n = A183655 (n + 1)

end A183655

/-! ## A183655.P8200296524954103630

`record[A183662(A183234(n+1))]`
-/

namespace A183655.P8200296524954103630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183662 (A183234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183655.P8200296524954103630

namespace A183655

/-- `record[A183662(A183234(n+1))]` -/
def P8200296524954103630.Spec : Prop :=
  ∀ n, P8200296524954103630.a n = A183655 (n + 1)

end A183655

/-! ## A183655.P7342207205319451350

`record[A010054(n)*A183662(n+2)]`
-/

namespace A183655.P7342207205319451350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A183662 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183655.P7342207205319451350

namespace A183655

/-- `record[A010054(n)*A183662(n+2)]` -/
def P7342207205319451350.Spec : Prop :=
  ∀ n, P7342207205319451350.a n = A183655 (n + 1)

end A183655

/-! ## A183655.P7610117420090367941

`record[A183662(n+3)/A049375(n+1)]`
-/

namespace A183655.P7610117420090367941
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183662 (n + 3) : ℚ) / (A049375 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183655.P7610117420090367941

namespace A183655

/-- `record[A183662(n+3)/A049375(n+1)]` -/
def P7610117420090367941.Spec : Prop :=
  ∀ n, P7610117420090367941.a n = (A183655 (n + 1) : ℚ)

end A183655

/-!
# A183656: Number of (n+1) X 4 0..5 arrays with every 2 X 2 subblock summing to 10.

The programs for A183656, the canonical program `A183656.P2861034606803301067` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183656 has offset 1).

The definition of A183656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183656.P2861034606803301067

`6*6^(n+1)+70*5^(n+1)+200*4^(n+1)+330*3^(n+1)+388*2^(n+1)+302`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183656

/-- `6*6^(n+1)+70*5^(n+1)+200*4^(n+1)+330*3^(n+1)+388*2^(n+1)+302` -/
def P2861034606803301067.Spec : Prop :=
  ∀ n, (P2861034606803301067.a n : ℤ) = A183656 (n + 1)

theorem P2861034606803301067.correct : P2861034606803301067.Spec := by
  intro n
  simp only [A183656, Nat.add_sub_cancel]

end A183656

/-! ## A183656.P18277352551788346385

`A183662(∑[n+2]+4)`
-/

namespace A183656.P18277352551788346385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183662 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183656.P18277352551788346385

namespace A183656

/-- `A183662(∑[n+2]+4)` -/
def P18277352551788346385.Spec : Prop :=
  ∀ n, P18277352551788346385.a n = A183656 (n + 1)

end A183656

/-! ## A183656.P2746251893237405727

`lcm(2, A183662(A167614(n+1)))`
-/

namespace A183656.P2746251893237405727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183662 (A167614 (n + 1)).toNat)

end

end A183656.P2746251893237405727

namespace A183656

/-- `lcm(2, A183662(A167614(n+1)))` -/
def P2746251893237405727.Spec : Prop :=
  ∀ n, (P2746251893237405727.a n : ℤ) = A183656 (n + 1)

end A183656

/-! ## A183656.P8536835742466255612

`or(A000038(n), A183662(A167614(n+1)))`
-/

namespace A183656.P8536835742466255612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A183662 (A167614 (n + 1)).toNat)

end

end A183656.P8536835742466255612

namespace A183656

/-- `or(A000038(n), A183662(A167614(n+1)))` -/
def P8536835742466255612.Spec : Prop :=
  ∀ n, P8536835742466255612.a n = A183656 (n + 1)

end A183656

/-!
# A183657: Number of (n+1) X 5 0..5 arrays with every 2 X 2 subblock summing to 10.

The programs for A183657, there is no canonical definition to state claims against.
-/

/-! ## A183657.P3706632764608880061

`A183662(A374004(n+1))`
-/

namespace A183657.P3706632764608880061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183662 (A374004 (n + 1)).toNat

end

end A183657.P3706632764608880061

/-! ## A183657.P2030582051818872685

`A183662(A141214(n)+7)`
-/

namespace A183657.P2030582051818872685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183662 (A141214 n + 7).toNat

end

end A183657.P2030582051818872685

/-! ## A183657.P17451843208918156314

`A183662(A052905(n)+9)`
-/

namespace A183657.P17451843208918156314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183662 (A052905 n + 9).toNat

end

end A183657.P17451843208918156314

/-! ## A183657.P10465350977639728713

`A183662(A055999(n)+10)`
-/

namespace A183657.P10465350977639728713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183662 (A055999 n + 10).toNat

end

end A183657.P10465350977639728713

/-! ## A183657.P2611299146878916392

`A183662(eq[5, A066657(n)])`
-/

namespace A183657.P2611299146878916392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183662 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183657.P2611299146878916392

/-!
# A183658: Number of (n+1) X 6 0..5 arrays with every 2 X 2 subblock summing to 10.

The programs for A183658, there is no canonical definition to state claims against.
-/

/-! ## A183658.P11323876415860789570

`A183662((n²+9*n+4)/2+13)`
-/

namespace A183658.P11323876415860789570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183662 (SequenceMachineLib.roundAway ((n ^ 2 + 9 * n + 4 : ℚ) / 2 + 13)).toNat

end

end A183658.P11323876415860789570

/-!
# A183659: Number of (n+1) X 7 0..5 arrays with every 2 X 2 subblock summing to 10.

The programs for A183659, there is no canonical definition to state claims against.
-/

/-! ## A183659.P7114006226837811442

`A183662(A374007(n+1))`
-/

namespace A183659.P7114006226837811442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183662 (A374007 (n + 1)).toNat

end

end A183659.P7114006226837811442

/-! ## A183659.P8961808320675854718

`A183662(A052905(n+3))`
-/

namespace A183659.P8961808320675854718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183662 (A052905 (n + 3)).toNat

end

end A183659.P8961808320675854718

/-! ## A183659.P12797581984061302185

`A183662(eq[3, A219347(n)])`
-/

namespace A183659.P12797581984061302185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183662 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183659.P12797581984061302185

/-!
# A183660: Number of (n+1) X 8 0..5 arrays with every 2 X 2 subblock summing to 10.

The programs for A183660, there is no canonical definition to state claims against.
-/

/-! ## A183660.P9606668941102885361

`A183662(C(n+7, 2)+n+1)`
-/

namespace A183660.P9606668941102885361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183662 (Nat.choose (n + 7) 2 + (n + 1))

end

end A183660.P9606668941102885361

/-! ## A183660.P2677098682357862638

`A183662(A374008(n+1))`
-/

namespace A183660.P2677098682357862638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183662 (A374008 (n + 1)).toNat

end

end A183660.P2677098682357862638

/-!
# A183661: Number of (n+1) X 9 0..5 arrays with every 2 X 2 subblock summing to 10.

The programs for A183661, there is no canonical definition to state claims against.
-/

/-! ## A183661.P245755677733361097

`A183662(A374009(n+1))`
-/

namespace A183661.P245755677733361097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183662 (A374009 (n + 1)).toNat

end

end A183661.P245755677733361097

/-!
# A183663: Number of (n+1) X (n+1) 0..6 arrays with every 2 X 2 subblock summing to 12.

The programs for A183663, there is no canonical definition to state claims against.
-/

/-! ## A183663.P8467344905918353744

`A183672(∑[4*n]+1)`
-/

namespace A183663.P8467344905918353744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183672 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183663.P8467344905918353744

/-!
# A183664: Number of (n+1) X 2 0..6 arrays with every 2 X 2 subblock summing to 12.

The programs for A183664, the canonical program `A183664.P10951039784674155652` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183664 has offset 1).

The definition of A183664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183664.P10951039784674155652

`A001554(n+2)+A001553(n+2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A183664

/-- `A001554(n+2)+A001553(n+2)` -/
def P10951039784674155652.Spec : Prop :=
  ∀ n, P10951039784674155652.a n = A183664 (n + 1)

theorem P10951039784674155652.correct : P10951039784674155652.Spec := by
  intro n
  simp only [A183664, Nat.add_sub_cancel]

end A183664

/-! ## A183664.P11701497330457201640

`A254145(n+2)-A254031(n+2)`
-/

namespace A183664.P11701497330457201640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254145 (n + 2) - A254031 (n + 2)

end

end A183664.P11701497330457201640

namespace A183664

/-- `A254145(n+2)-A254031(n+2)` -/
def P11701497330457201640.Spec : Prop :=
  ∀ n, P11701497330457201640.a n = A183664 (n + 1)

end A183664

/-! ## A183664.P13058592320294888196

`A051672(A161680(n+9)-6)`
-/

namespace A183664.P13058592320294888196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051672 (A161680 (n + 9) - 6).toNat

end

end A183664.P13058592320294888196

namespace A183664

/-- `A051672(A161680(n+9)-6)` -/
def P13058592320294888196.Spec : Prop :=
  ∀ n, P13058592320294888196.a n = A183664 (n + 1)

end A183664

/-! ## A183664.P359525631656389428

`A051672(A000124(n+7)+n+1)`
-/

namespace A183664.P359525631656389428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051672 (A000124 (n + 7) + (n + 1 : ℤ)).toNat

end

end A183664.P359525631656389428

namespace A183664

/-- `A051672(A000124(n+7)+n+1)` -/
def P359525631656389428.Spec : Prop :=
  ∀ n, P359525631656389428.a n = A183664 (n + 1)

end A183664

/-! ## A183664.P11886493957286811423

`A051672(A000217(n+7)+n+2)`
-/

namespace A183664.P11886493957286811423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051672 (A000217 (n + 7) + (n + 2 : ℤ)).toNat

end

end A183664.P11886493957286811423

namespace A183664

/-- `A051672(A000217(n+7)+n+2)` -/
def P11886493957286811423.Spec : Prop :=
  ∀ n, P11886493957286811423.a n = A183664 (n + 1)

end A183664

/-!
# A183665: Number of (n+1) X 3 0..6 arrays with every 2 X 2 subblock summing to 12.

The programs for A183665, there is no canonical definition to state claims against.
-/

/-! ## A183665.P1997958288570844939

`A183672(∑[n+1]+2)`
-/

namespace A183665.P1997958288570844939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183672 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183665.P1997958288570844939

/-! ## A183665.P8327571667581046300

`record[A183672(A183234(n+1))]`
-/

namespace A183665.P8327571667581046300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183672 (A183234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183665.P8327571667581046300

/-! ## A183665.P7647955938270479622

`or(1, A183672(A133263(n+1)))`
-/

namespace A183665.P7647955938270479622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183672 (A133263 (n + 1)).toNat)

end

end A183665.P7647955938270479622

/-! ## A183665.P16087314671336837402

`record[A010054(n)*A183672(n+2)]`
-/

namespace A183665.P16087314671336837402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A183672 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183665.P16087314671336837402

/-! ## A183665.P2586772465810774589

`record[gcd(A002262(n), A183672(n+2))]`
-/

namespace A183665.P2586772465810774589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A183672 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183665.P2586772465810774589

/-!
# A183666: Number of (n+1) X 4 0..6 arrays with every 2 X 2 subblock summing to 12.

The programs for A183666, there is no canonical definition to state claims against.
-/

/-! ## A183666.P1424197292363747430

`A183672(∑[n+2]+4)`
-/

namespace A183666.P1424197292363747430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183672 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183666.P1424197292363747430

/-! ## A183666.P4979441885969980345

`or(1, A183672(A167614(n+1)))`
-/

namespace A183666.P4979441885969980345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183672 (A167614 (n + 1)).toNat)

end

end A183666.P4979441885969980345

/-! ## A183666.P1822476858343246616

`record[A183672(n+4)/A167432(n)]`
-/

namespace A183666.P1822476858343246616
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183672 (n + 4) : ℚ) / (A167432 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183666.P1822476858343246616

/-! ## A183666.P16739393988660520313

`A183672(A167614(n+1))+A025468(n)`
-/

namespace A183666.P16739393988660520313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183672 (A167614 (n + 1)).toNat + A025468 n

end

end A183666.P16739393988660520313

/-! ## A183666.P9350093972914887385

`A183672(A167614(n+1))+A035042(n)`
-/

namespace A183666.P9350093972914887385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183672 (A167614 (n + 1)).toNat + A035042 n

end

end A183666.P9350093972914887385

/-!
# A183667: Number of (n+1) X 5 0..6 arrays with every 2 X 2 subblock summing to 12.

The programs for A183667, there is no canonical definition to state claims against.
-/

/-! ## A183667.P7063021782574329310

`A183672(∑[n+3]+7)`
-/

namespace A183667.P7063021782574329310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183672 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A183667.P7063021782574329310

/-! ## A183667.P14324663661648512756

`A183672(A052905(n)+9)+A035695(n+1)`
-/

namespace A183667.P14324663661648512756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183672 (A052905 n + 9).toNat + A035695 (n + 1)

end

end A183667.P14324663661648512756

/-!
# A183668: Number of (n+1) X 6 0..6 arrays with every 2 X 2 subblock summing to 12.

The programs for A183668, there is no canonical definition to state claims against.
-/

/-! ## A183668.P18346099254273558287

`A183672(A374005(n+1))`
-/

namespace A183668.P18346099254273558287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183672 (A374005 (n + 1)).toNat

end

end A183668.P18346099254273558287

/-! ## A183668.P9271909706426312786

`A183672(A167499(n+3))`
-/

namespace A183668.P9271909706426312786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183672 (A167499 (n + 3)).toNat

end

end A183668.P9271909706426312786

/-! ## A183668.P14291871918662308199

`A183672(A155212(n)+13)`
-/

namespace A183668.P14291871918662308199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183672 (A155212 n + 13).toNat

end

end A183668.P14291871918662308199

/-!
# A183669: Number of (n+1) X 7 0..6 arrays with every 2 X 2 subblock summing to 12.

The programs for A183669, there is no canonical definition to state claims against.
-/

/-! ## A183669.P13738481530029326298

`A183672(A374007(n+1))`
-/

namespace A183669.P13738481530029326298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183672 (A374007 (n + 1)).toNat

end

end A183669.P13738481530029326298

/-!
# A183670: Number of (n+1) X 8 0..6 arrays with every 2 X 2 subblock summing to 12.

The programs for A183670, there is no canonical definition to state claims against.
-/

/-! ## A183670.P16128875919906213382

`A183672(A055999(n+4))`
-/

namespace A183670.P16128875919906213382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183672 (A055999 (n + 4)).toNat

end

end A183670.P16128875919906213382

/-!
# A183673: Number of (n+1)X(n+1) 0..7 arrays with every 2X2 subblock summing to 14.

The programs for A183673, there is no canonical definition to state claims against.
-/

/-! ## A183673.P12194535160930931762

`A183680(∑[4*n]+1)`
-/

namespace A183673.P12194535160930931762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183680 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183673.P12194535160930931762

/-!
# A183674: Number of (n+1) X 2 0..7 arrays with every 2 X 2 subblock summing to 14.

The programs for A183674, the canonical program `A183674.P5950663328750644984` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183674 has offset 1).

The definition of A183674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183674.P5950663328750644984

`A001555(n+2)+A001554(n+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A183674

/-- `A001555(n+2)+A001554(n+2)` -/
def P5950663328750644984.Spec : Prop :=
  ∀ n, P5950663328750644984.a n = A183674 (n + 1)

theorem P5950663328750644984.correct : P5950663328750644984.Spec := by
  intro n
  simp only [A183674, Nat.add_sub_cancel]

end A183674

/-! ## A183674.P2571948366125320375

`A254146(n+2)-A254144(n+2)`
-/

namespace A183674.P2571948366125320375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254146 (n + 2) - A254144 (n + 2)

end

end A183674.P2571948366125320375

namespace A183674

/-- `A254146(n+2)-A254144(n+2)` -/
def P2571948366125320375.Spec : Prop :=
  ∀ n, P2571948366125320375.a n = A183674 (n + 1)

end A183674

/-! ## A183674.P12652836675497426339

`A051672(2*(n+1)+A000217(n+7)+8)`
-/

namespace A183674.P12652836675497426339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051672 ((2 * (n + 1) : ℤ) + (A000217 (n + 7) + 8)).toNat

end

end A183674.P12652836675497426339

namespace A183674

/-- `A051672(2*(n+1)+A000217(n+7)+8)` -/
def P12652836675497426339.Spec : Prop :=
  ∀ n, P12652836675497426339.a n = A183674 (n + 1)

end A183674

/-! ## A183674.P14597485976319451230

`A183680(∑[n]+1)`
-/

namespace A183674.P14597485976319451230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183680 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183674.P14597485976319451230

namespace A183674

/-- `A183680(∑[n]+1)` -/
def P14597485976319451230.Spec : Prop :=
  ∀ n, P14597485976319451230.a n = A183674 (n + 1)

end A183674

/-! ## A183674.P15442970388625790978

`record[A183680(n+1)]`
-/

namespace A183674.P15442970388625790978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183674.P15442970388625790978

namespace A183674

/-- `record[A183680(n+1)]` -/
def P15442970388625790978.Spec : Prop :=
  ∀ n, P15442970388625790978.a n = A183674 (n + 1)

end A183674

/-!
# A183675: Number of (n+1) X 3 0..7 arrays with every 2 X 2 subblock summing to 14.

The programs for A183675, there is no canonical definition to state claims against.
-/

/-! ## A183675.P8214782747788632825

`A183680(∑[n+1]+2)`
-/

namespace A183675.P8214782747788632825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183680 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183675.P8214782747788632825

/-! ## A183675.P5896008636882725447

`record[A183680(A183234(n+1))]`
-/

namespace A183675.P5896008636882725447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183680 (A183234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183675.P5896008636882725447

/-! ## A183675.P5381282873172459664

`record[A010054(n)*A183680(n+2)]`
-/

namespace A183675.P5381282873172459664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A183680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183675.P5381282873172459664

/-! ## A183675.P10432027824129109550

`record[A183680(abs(A201163(n)))]`
-/

namespace A183675.P10432027824129109550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183680 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183675.P10432027824129109550

/-! ## A183675.P10107288357692129668

`lcm(2, A183680(A000096(n+1)))`
-/

namespace A183675.P10107288357692129668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183680 (A000096 (n + 1)).toNat)

end

end A183675.P10107288357692129668

/-!
# A183676: Number of (n+1) X 4 0..7 arrays with every 2 X 2 subblock summing to 14.

The programs for A183676, there is no canonical definition to state claims against.
-/

/-! ## A183676.P3808512269588183346

`A183680(∑[n+2]+4)`
-/

namespace A183676.P3808512269588183346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183680 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183676.P3808512269588183346

/-! ## A183676.P3286654538149546064

`lcm(2, A183680(A167614(n+1)))`
-/

namespace A183676.P3286654538149546064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183680 (A167614 (n + 1)).toNat)

end

end A183676.P3286654538149546064

/-! ## A183676.P11839727967531033981

`record[A183680(n+4)/A143495(n+3)]`
-/

namespace A183676.P11839727967531033981
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183680 (n + 4) : ℚ) / (A143495 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183676.P11839727967531033981

/-! ## A183676.P3445913753493741621

`A183680(A167614(n+1))+A011738(n)`
-/

namespace A183676.P3445913753493741621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183680 (A167614 (n + 1)).toNat + A011738 n

end

end A183676.P3445913753493741621

/-! ## A183676.P4337334270650928861

`A183680(A167614(n+1))+A062329(n)`
-/

namespace A183676.P4337334270650928861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183680 (A167614 (n + 1)).toNat + A062329 n

end

end A183676.P4337334270650928861

/-!
# A183677: Number of (n+1) X 5 0..7 arrays with every 2 X 2 subblock summing to 14.

The programs for A183677, there is no canonical definition to state claims against.
-/

/-! ## A183677.P5431740649711031263

`A183680(∑[n+3]+7)`
-/

namespace A183677.P5431740649711031263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183680 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A183677.P5431740649711031263

/-! ## A183677.P17877845722617393819

`A183680(A052905(n)+9)+char[18]`
-/

namespace A183677.P17877845722617393819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183680 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A183677.P17877845722617393819

/-! ## A183677.P3979743694520510536

`A183680(A374004(n+1))*A257743(n+1)`
-/

namespace A183677.P3979743694520510536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183680 (A374004 (n + 1)).toNat * A257743 (n + 1)

end

end A183677.P3979743694520510536

/-! ## A183677.P17779657557063619350

`A183680(A052905(n)+9)/A007318(C(2, n))`
-/

namespace A183677.P17779657557063619350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183680 (A052905 n + 9).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A183677.P17779657557063619350

/-!
# A183678: Number of (n+1) X 6 0..7 arrays with every 2 X 2 subblock summing to 14.

The programs for A183678, there is no canonical definition to state claims against.
-/

/-! ## A183678.P6194030269126277177

`A183680(∑[n+5]+6)`
-/

namespace A183678.P6194030269126277177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183680 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A183678.P6194030269126277177

/-!
# A183679: Number of (n+1) X 7 0..7 arrays with every 2 X 2 subblock summing to 14.

The programs for A183679, there is no canonical definition to state claims against.
-/

/-! ## A183679.P3463479025363915672

`A183680(C(n+7, 2)-n)`
-/

namespace A183679.P3463479025363915672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183680 (Nat.choose (n + 7) 2 - n)

end

end A183679.P3463479025363915672

/-!
# A183681: Number of (n+1)X(n+1) binary arrays with every 2X2 subblock nonsingular.

The programs for A183681, there is no canonical definition to state claims against.
-/

/-! ## A183681.P17129936861105682406

`A204706(n+1)-1`
-/

namespace A183681.P17129936861105682406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204706 (n + 1) - 1

end

end A183681.P17129936861105682406

/-! ## A183681.P14377742306090610660

`A183688(∑[4*n]+1)`
-/

namespace A183681.P14377742306090610660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183688 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183681.P14377742306090610660

/-! ## A183681.P6715341450268312562

`A204713(A001844(n))-1`
-/

namespace A183681.P6715341450268312562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204713 (A001844 n).toNat - 1

end

end A183681.P6715341450268312562

/-! ## A183681.P4614572785079736929

`A204713(A046092(n)+1)-1`
-/

namespace A183681.P4614572785079736929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204713 (A046092 n + 1).toNat - 1

end

end A183681.P4614572785079736929

/-! ## A183681.P3529424486928016876

`xor(A000005(gcd(n, n+1)), A204706(n+1))`
-/

namespace A183681.P3529424486928016876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000005 (Nat.gcd n (n + 1))) (A204706 (n + 1))

end

end A183681.P3529424486928016876

/-!
# A183682: Number of (n+1) X 3 binary arrays with every 2 X 2 subblock nonsingular.

The programs for A183682, the canonical program `A183682.P9077725578486908699` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183682 has offset 1).

The definition of A183682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183682.P13955653488094663799

`ogf((12+20x)/(1-x-4x^2))`
-/

namespace A183682.P13955653488094663799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, 20] [1, -1, -4] n

end

end A183682.P13955653488094663799

namespace A183682

/-- `ogf((12+20x)/(1-x-4x^2))` -/
def P13955653488094663799.Spec : Prop :=
  ∀ n, P13955653488094663799.a n = A183682 (n + 1)

end A183682

/-! ## A183682.P9077725578486908699

`a(n-1)+4*a(n-2)` with `a(0)=12, a(1)=32`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183682

/-- `a(n-1)+4*a(n-2)` -/
def P9077725578486908699.Spec : Prop :=
  ∀ n, (P9077725578486908699.a n : ℤ) = A183682 (n + 1)

theorem P9077725578486908699.correct : P9077725578486908699.Spec := by
  intro n
  simp only [A183682, Nat.add_sub_cancel]

end A183682

/-! ## A183682.P10031569772625586104

`4*Δ[A183774(n)]`
-/

namespace A183682.P10031569772625586104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n)

end

end A183682.P10031569772625586104

namespace A183682

/-- `4*Δ[A183774(n)]` -/
def P10031569772625586104.Spec : Prop :=
  ∀ n, P10031569772625586104.a n = A183682 (n + 1)

end A183682

/-! ## A183682.P10138313459435132220

`A204707(n+1)-1`
-/

namespace A183682.P10138313459435132220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204707 (n + 1) - 1

end

end A183682.P10138313459435132220

namespace A183682

/-- `A204707(n+1)-1` -/
def P10138313459435132220.Spec : Prop :=
  ∀ n, P10138313459435132220.a n = A183682 (n + 1)

end A183682

/-! ## A183682.P9632954753598164641

`abs(Δ[4*A122112(n)])`
-/

namespace A183682.P9632954753598164641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A122112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A183682.P9632954753598164641

namespace A183682

/-- `abs(Δ[4*A122112(n)])` -/
def P9632954753598164641.Spec : Prop :=
  ∀ n, P9632954753598164641.a n = A183682 (n + 1)

end A183682

/-! ## A183682.P17617101438724672954

`2*Δ[A277236(n+1)]`
-/

namespace A183682.P17617101438724672954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A183682.P17617101438724672954

namespace A183682

/-- `2*Δ[A277236(n+1)]` -/
def P17617101438724672954.Spec : Prop :=
  ∀ n, P17617101438724672954.a n = A183682 (n + 1)

end A183682

/-! ## A183682.P14814077530396063912

`lcm(Δ[4*A122112(n)], A087960(n))`
-/

namespace A183682.P14814077530396063912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A122112 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A087960 n)

end

end A183682.P14814077530396063912

namespace A183682

/-- `lcm(Δ[4*A122112(n)], A087960(n))` -/
def P14814077530396063912.Spec : Prop :=
  ∀ n, (P14814077530396063912.a n : ℤ) = A183682 (n + 1)

end A183682

/-! ## A183682.P445059922008094909

`A159612(n+2)+A159612(n+3)`
-/

namespace A183682.P445059922008094909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159612 (n + 2) + A159612 (n + 3)

end

end A183682.P445059922008094909

namespace A183682

/-- `A159612(n+2)+A159612(n+3)` -/
def P445059922008094909.Spec : Prop :=
  ∀ n, P445059922008094909.a n = A183682 (n + 1)

end A183682

/-! ## A183682.P2971947302611572192

`xor(A000005(gcd(n, n+1)), A204707(n+1))`
-/

namespace A183682.P2971947302611572192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000005 (Nat.gcd n (n + 1))) (A204707 (n + 1))

end

end A183682.P2971947302611572192

namespace A183682

/-- `xor(A000005(gcd(n, n+1)), A204707(n+1))` -/
def P2971947302611572192.Spec : Prop :=
  ∀ n, P2971947302611572192.a n = A183682 (n + 1)

end A183682

/-! ## A183682.P1111524594450881575

`Δ[A205219(n+1)]`
-/

namespace A183682.P1111524594450881575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183682.P1111524594450881575

namespace A183682

/-- `Δ[A205219(n+1)]` -/
def P1111524594450881575.Spec : Prop :=
  ∀ n, P1111524594450881575.a n = A183682 (n + 1)

end A183682

/-! ## A183682.P10121694024789196775

`Δ[Δ[A183774(n+1)]]`
-/

namespace A183682.P10121694024789196775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183774 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183682.P10121694024789196775

namespace A183682

/-- `Δ[Δ[A183774(n+1)]]` -/
def P10121694024789196775.Spec : Prop :=
  ∀ n, P10121694024789196775.a n = A183682 (n + 1)

end A183682

/-! ## A183682.P3535838230183040751

`Δ[abs(Δ[A122112(n+1)])]`
-/

namespace A183682.P3535838230183040751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122112 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183682.P3535838230183040751

namespace A183682

/-- `Δ[abs(Δ[A122112(n+1)])]` -/
def P3535838230183040751.Spec : Prop :=
  ∀ n, P3535838230183040751.a n = A183682 (n + 1)

end A183682

/-! ## A183682.P962443484203105066

`A205220(n+1)-A205219(n+1)`
-/

namespace A183682.P962443484203105066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205220 (n + 1) - A205219 (n + 1)

end

end A183682.P962443484203105066

namespace A183682

/-- `A205220(n+1)-A205219(n+1)` -/
def P962443484203105066.Spec : Prop :=
  ∀ n, P962443484203105066.a n = A183682 (n + 1)

end A183682

/-! ## A183682.P11140364909003156774

`A205219(n+2)-A205219(n+1)`
-/

namespace A183682.P11140364909003156774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205219 (n + 2) - A205219 (n + 1)

end

end A183682.P11140364909003156774

namespace A183682

/-- `A205219(n+2)-A205219(n+1)` -/
def P11140364909003156774.Spec : Prop :=
  ∀ n, P11140364909003156774.a n = A183682 (n + 1)

end A183682

/-! ## A183682.P13978405394057867749

`A026597(n+3)-A026597(n+1)`
-/

namespace A183682.P13978405394057867749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026597 (n + 3) - A026597 (n + 1)

end

end A183682.P13978405394057867749

namespace A183682

/-- `A026597(n+3)-A026597(n+1)` -/
def P13978405394057867749.Spec : Prop :=
  ∀ n, P13978405394057867749.a n = A183682 (n + 1)

end A183682

/-! ## A183682.P6930363502375494548

`Δ[Δ[A122112(n+1)]*A087960(2*n)]`
-/

namespace A183682.P6930363502375494548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122112 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A087960 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183682.P6930363502375494548

namespace A183682

/-- `Δ[Δ[A122112(n+1)]*A087960(2*n)]` -/
def P6930363502375494548.Spec : Prop :=
  ∀ n, P6930363502375494548.a n = A183682 (n + 1)

end A183682

/-! ## A183682.P2551391144892317823

`Δ[A185761(n+1)/2]`
-/

namespace A183682.P2551391144892317823
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185761 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183682.P2551391144892317823

namespace A183682

/-- `Δ[A185761(n+1)/2]` -/
def P2551391144892317823.Spec : Prop :=
  ∀ n, P2551391144892317823.a n = (A183682 (n + 1) : ℚ)

end A183682

/-! ## A183682.P9884262125545331287

`Δ[A204707(n+2)/4]`
-/

namespace A183682.P9884262125545331287
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204707 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183682.P9884262125545331287

namespace A183682

/-- `Δ[A204707(n+2)/4]` -/
def P9884262125545331287.Spec : Prop :=
  ∀ n, P9884262125545331287.a n = (A183682 (n + 1) : ℚ)

end A183682

/-! ## A183682.P12958165537871413774

`Δ[Δ[A259290(n+1)/2]]`
-/

namespace A183682.P12958165537871413774
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259290 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183682.P12958165537871413774

namespace A183682

/-- `Δ[Δ[A259290(n+1)/2]]` -/
def P12958165537871413774.Spec : Prop :=
  ∀ n, P12958165537871413774.a n = (A183682 (n + 1) : ℚ)

end A183682

/-!
# A183683: Number of (n+1) X 5 binary arrays with every 2 X 2 subblock nonsingular.

The programs for A183683, the canonical program `A183683.P18309910416399168940` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183683 has offset 1).

The definition of A183683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183683.P18309910416399168940

`13*a(n-2)+16*a(n-3)` with `a(0)=48, a(1)=208, a(2)=832`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183683

/-- `13*a(n-2)+16*a(n-3)` -/
def P18309910416399168940.Spec : Prop :=
  ∀ n, (P18309910416399168940.a n : ℤ) = A183683 (n + 1)

theorem P18309910416399168940.correct : P18309910416399168940.Spec := by
  intro n
  simp only [A183683, Nat.add_sub_cancel]

end A183683

/-! ## A183683.P13465390654190250957

`A204709(n+1)-1`
-/

namespace A183683.P13465390654190250957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204709 (n + 1) - 1

end

end A183683.P13465390654190250957

namespace A183683

/-- `A204709(n+1)-1` -/
def P13465390654190250957.Spec : Prop :=
  ∀ n, P13465390654190250957.a n = A183683 (n + 1)

end A183683

/-! ## A183683.P10211724235862895424

`xor(1, A204709(A000027(n+1)))`
-/

namespace A183683.P10211724235862895424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A204709 (A000027 (n + 1)).toNat)

end

end A183683.P10211724235862895424

namespace A183683

/-- `xor(1, A204709(A000027(n+1)))` -/
def P10211724235862895424.Spec : Prop :=
  ∀ n, P10211724235862895424.a n = A183683 (n + 1)

end A183683

/-! ## A183683.P15796871589524699877

`xor(char[A029578(n)], A204709(n+1))`
-/

namespace A183683.P15796871589524699877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A204709 (n + 1))

end

end A183683.P15796871589524699877

namespace A183683

/-- `xor(char[A029578(n)], A204709(n+1))` -/
def P15796871589524699877.Spec : Prop :=
  ∀ n, P15796871589524699877.a n = A183683 (n + 1)

end A183683

/-! ## A183683.P3863418247730715116

`xor(char[A347769(n)], A204709(n+1))`
-/

namespace A183683.P3863418247730715116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347769 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A204709 (n + 1))

end

end A183683.P3863418247730715116

namespace A183683

/-- `xor(char[A347769(n)], A204709(n+1))` -/
def P3863418247730715116.Spec : Prop :=
  ∀ n, P3863418247730715116.a n = A183683 (n + 1)

end A183683

/-! ## A183683.P5613673162006575376

`xor(A000035(2*n+1), A204709(n+1))`
-/

namespace A183683.P5613673162006575376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (2 * n + 1)) (A204709 (n + 1))

end

end A183683.P5613673162006575376

namespace A183683

/-- `xor(A000035(2*n+1), A204709(n+1))` -/
def P5613673162006575376.Spec : Prop :=
  ∀ n, P5613673162006575376.a n = A183683 (n + 1)

end A183683

/-! ## A183683.P6327499829804409426

`xor(A001511(2*n+1), A204709(n+1))`
-/

namespace A183683.P6327499829804409426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001511 (2 * n + 1)) (A204709 (n + 1))

end

end A183683.P6327499829804409426

namespace A183683

/-- `xor(A001511(2*n+1), A204709(n+1))` -/
def P6327499829804409426.Spec : Prop :=
  ∀ n, P6327499829804409426.a n = A183683 (n + 1)

end A183683

/-! ## A183683.P3888917652876964975

`xor(A000005(gcd(n, n+1)), A204709(n+1))`
-/

namespace A183683.P3888917652876964975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000005 (Nat.gcd n (n + 1))) (A204709 (n + 1))

end

end A183683.P3888917652876964975

namespace A183683

/-- `xor(A000005(gcd(n, n+1)), A204709(n+1))` -/
def P3888917652876964975.Spec : Prop :=
  ∀ n, P3888917652876964975.a n = A183683 (n + 1)

end A183683

/-!
# A183684: Number of (n+1) X 6 binary arrays with every 2 X 2 subblock nonsingular.

The programs for A183684, there is no canonical definition to state claims against.
-/

/-! ## A183684.P7424286779083690457

`A204710(n+1)-1`
-/

namespace A183684.P7424286779083690457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204710 (n + 1) - 1

end

end A183684.P7424286779083690457

/-! ## A183684.P1935813685104404603

`xor(1, A204710(A000027(n+1)))`
-/

namespace A183684.P1935813685104404603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A204710 (A000027 (n + 1)).toNat)

end

end A183684.P1935813685104404603

/-! ## A183684.P12488611616503211137

`xor(char[A029578(n)], A204710(n+1))`
-/

namespace A183684.P12488611616503211137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A204710 (n + 1))

end

end A183684.P12488611616503211137

/-! ## A183684.P11736008047567728243

`xor(char[A064680(n)], A204710(n+1))`
-/

namespace A183684.P11736008047567728243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A204710 (n + 1))

end

end A183684.P11736008047567728243

/-! ## A183684.P3775509043444386353

`xor(A000035(2*n+1), A204710(n+1))`
-/

namespace A183684.P3775509043444386353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (2 * n + 1)) (A204710 (n + 1))

end

end A183684.P3775509043444386353

/-! ## A183684.P515676565936781419

`xor(A000005(gcd(n, n+1)), A204710(n+1))`
-/

namespace A183684.P515676565936781419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000005 (Nat.gcd n (n + 1))) (A204710 (n + 1))

end

end A183684.P515676565936781419

/-! ## A183684.P6383633569423519727

`xor(char[A002262(n)], A204710(n+1))`
-/

namespace A183684.P6383633569423519727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A204710 (n + 1))

end

end A183684.P6383633569423519727

/-!
# A183685: Number of (n+1) X 7 binary arrays with every 2 X 2 subblock nonsingular.

The programs for A183685, there is no canonical definition to state claims against.
-/

/-! ## A183685.P16791768896945167416

`A204711(n+1)-1`
-/

namespace A183685.P16791768896945167416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204711 (n + 1) - 1

end

end A183685.P16791768896945167416

/-! ## A183685.P8841773420036993066

`xor(1, A204711(A000027(n+1)))`
-/

namespace A183685.P8841773420036993066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A204711 (A000027 (n + 1)).toNat)

end

end A183685.P8841773420036993066

/-! ## A183685.P12667390444102844499

`xor(char[A029578(n)], A204711(n+1))`
-/

namespace A183685.P12667390444102844499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A204711 (n + 1))

end

end A183685.P12667390444102844499

/-! ## A183685.P16080796338025269614

`xor(char[A064680(n)], A204711(n+1))`
-/

namespace A183685.P16080796338025269614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A204711 (n + 1))

end

end A183685.P16080796338025269614

/-! ## A183685.P6033152554993434415

`xor(A000035(2*n+1), A204711(n+1))`
-/

namespace A183685.P6033152554993434415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (2 * n + 1)) (A204711 (n + 1))

end

end A183685.P6033152554993434415

/-! ## A183685.P11657371799916627559

`xor(A000005(gcd(n, n+1)), A204711(n+1))`
-/

namespace A183685.P11657371799916627559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000005 (Nat.gcd n (n + 1))) (A204711 (n + 1))

end

end A183685.P11657371799916627559

/-! ## A183685.P12567022684924371980

`xor(char[A002262(n)], A204711(n+1))`
-/

namespace A183685.P12567022684924371980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A204711 (n + 1))

end

end A183685.P12567022684924371980

/-!
# A183686: Number of (n+1)X8 binary arrays with every 2X2 subblock nonsingular.

The programs for A183686, there is no canonical definition to state claims against.
-/

/-! ## A183686.P17824627364071162472

`A204712(n+1)-1`
-/

namespace A183686.P17824627364071162472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204712 (n + 1) - 1

end

end A183686.P17824627364071162472

/-! ## A183686.P6879016059999990382

`xor(char[A008612(n)], A204712(n+1))`
-/

namespace A183686.P6879016059999990382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A204712 (n + 1))

end

end A183686.P6879016059999990382

/-! ## A183686.P11070727348806840111

`xor(char[A061579(n)], A204712(n+1))`
-/

namespace A183686.P11070727348806840111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A204712 (n + 1))

end

end A183686.P11070727348806840111

/-! ## A183686.P15131344425972083058

`xor(char[A078898(n)], A204712(n+1))`
-/

namespace A183686.P15131344425972083058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A204712 (n + 1))

end

end A183686.P15131344425972083058

/-! ## A183686.P1907080514270087801

`xor(char[A222235(n)], A204712(n+1))`
-/

namespace A183686.P1907080514270087801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A204712 (n + 1))

end

end A183686.P1907080514270087801

/-! ## A183686.P4280993057458492874

`xor(char[A234025(n)], A204712(n+1))`
-/

namespace A183686.P4280993057458492874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234025 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A204712 (n + 1))

end

end A183686.P4280993057458492874

/-! ## A183686.P5337668627465454687

`xor(A007318(∑[n+1]), A204712(n+1))`
-/

namespace A183686.P5337668627465454687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)) (A204712 (n + 1))

end

end A183686.P5337668627465454687

/-! ## A183686.P2366613821286555014

`xor(A000005(gcd(n, n+1)), A204712(n+1))`
-/

namespace A183686.P2366613821286555014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000005 (Nat.gcd n (n + 1))) (A204712 (n + 1))

end

end A183686.P2366613821286555014

/-!
# A183687: Number of (n+1)X9 binary arrays with every 2X2 subblock nonsingular.

The programs for A183687, there is no canonical definition to state claims against.
-/

/-! ## A183687.P1495497358773706894

`A183688(eq[13, A066657(n)])`
-/

namespace A183687.P1495497358773706894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183688 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183687.P1495497358773706894

/-! ## A183687.P15625333471159190786

`A183688(eq[9, A131818(n+1)])`
-/

namespace A183687.P15625333471159190786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183688 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183687.P15625333471159190786

/-! ## A183687.P3832700186231539479

`A183688(A374009(n+1))`
-/

namespace A183687.P3832700186231539479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183688 (A374009 (n + 1)).toNat

end

end A183687.P3832700186231539479

/-! ## A183687.P1272704323151832429

`A183688(eq[5, A219347(n)])`
-/

namespace A183687.P1272704323151832429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183688 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183687.P1272704323151832429

/-! ## A183687.P805484741557685702

`A183688(eq[7, A193592(n)])`
-/

namespace A183687.P805484741557685702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183688 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183687.P805484741557685702

/-!
# A183688: T(n,k)=Number of (n+1)X(k+1) binary arrays with every 2X2 subblock nonsingular.

The programs for A183688, there is no canonical definition to state claims against.
-/

/-! ## A183688.P7817155096736166771

`A204713(n+1)-1`
-/

namespace A183688.P7817155096736166771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204713 (n + 1) - 1

end

end A183688.P7817155096736166771

/-! ## A183688.P6043168828975491284

`xor(1, A204713(A000027(n+1)))`
-/

namespace A183688.P6043168828975491284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A204713 (A000027 (n + 1)).toNat)

end

end A183688.P6043168828975491284

/-! ## A183688.P13500393023447062030

`xor(char[A029578(n)], A204713(n+1))`
-/

namespace A183688.P13500393023447062030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A204713 (n + 1))

end

end A183688.P13500393023447062030

/-! ## A183688.P7532433940902798111

`xor(char[A057979(n)], A204713(n+1))`
-/

namespace A183688.P7532433940902798111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A204713 (n + 1))

end

end A183688.P7532433940902798111

/-! ## A183688.P10273462870339002749

`xor(char[A321726(n)], A204713(n+1))`
-/

namespace A183688.P10273462870339002749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321726 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A204713 (n + 1))

end

end A183688.P10273462870339002749

/-! ## A183688.P7842127991812230965

`xor(char[A061395(n+1)], A204713(n+1))`
-/

namespace A183688.P7842127991812230965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A204713 (n + 1))

end

end A183688.P7842127991812230965

/-! ## A183688.P9922152680394854302

`xor(char[A114327(n)+n], A204713(n+1))`
-/

namespace A183688.P9922152680394854302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A204713 (n + 1))

end

end A183688.P9922152680394854302

/-! ## A183688.P4729904824008295805

`xor(A014963(10*(n+1)), A204713(n+1))`
-/

namespace A183688.P4729904824008295805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (10 * (n + 1))) (A204713 (n + 1))

end

end A183688.P4729904824008295805

/-! ## A183688.P4598256254841426254

`xor(A055396(10*(n+1)), A204713(n+1))`
-/

namespace A183688.P4598256254841426254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055396 (10 * (n + 1))) (A204713 (n + 1))

end

end A183688.P4598256254841426254

/-! ## A183688.P10391107426384249808

`xor(A000188(∏{p}[n+1, #]), A204713(n+1))`
-/

namespace A183688.P10391107426384249808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000188 (∏ p ∈ Nat.primeFactors (f1 n), p)) (A204713 (n + 1))

end

end A183688.P10391107426384249808

/-! ## A183688.P3643518102936165627

`xor(A000188(A007947(n+1)), A204713(n+1))`
-/

namespace A183688.P3643518102936165627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000188 (A007947 (n + 1)).toNat) (A204713 (n + 1))

end

end A183688.P3643518102936165627

/-! ## A183688.P14413051350779712875

`xor(A000188(A006530(n+2)), A204713(n+1))`
-/

namespace A183688.P14413051350779712875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000188 (A006530 (n + 2)).toNat) (A204713 (n + 1))

end

end A183688.P14413051350779712875

/-! ## A183688.P2308271114022622699

`xor(char[A055396(n+1)], A204713(n+1))`
-/

namespace A183688.P2308271114022622699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A204713 (n + 1))

end

end A183688.P2308271114022622699

/-! ## A183688.P14626862253856291116

`xor(A000188(2*A000040(n+2)), A204713(n+1))`
-/

namespace A183688.P14626862253856291116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000188 (2 * A000040 (n + 2)).toNat) (A204713 (n + 1))

end

end A183688.P14626862253856291116

/-!
# A183689: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock nonsingular.

The programs for A183689, there is no canonical definition to state claims against.
-/

/-! ## A183689.P12095472064967677040

`A183698((n+1)²+n²)`
-/

namespace A183689.P12095472064967677040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183698 ((n + 1) ^ 2 + n ^ 2)

end

end A183689.P12095472064967677040

/-!
# A183690: Number of (n+1) X 2 0..2 arrays with every 2 X 2 subblock nonsingular.

The programs for A183690, the canonical program `A183690.P10642067527330083066` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183690 has offset 1).

The definition of A183690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183690.P13336926265230154345

`Δ[ogf((8+10x)/(1-6x-3x^2+8x^3))]`
-/

namespace A183690.P13336926265230154345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 10] [1, -6, -3, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183690.P13336926265230154345

namespace A183690

/-- `Δ[ogf((8+10x)/(1-6x-3x^2+8x^3))]` -/
def P13336926265230154345.Spec : Prop :=
  ∀ n, P13336926265230154345.a n = A183690 (n + 1)

end A183690

/-! ## A183690.P10642067527330083066

`5*a(n-1)+8*a(n-2)` with `a(0)=50, a(1)=314`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183690

/-- `5*a(n-1)+8*a(n-2)` -/
def P10642067527330083066.Spec : Prop :=
  ∀ n, (P10642067527330083066.a n : ℤ) = A183690 (n + 1)

theorem P10642067527330083066.correct : P10642067527330083066.Spec := by
  intro n
  simp only [A183690, Nat.add_sub_cancel]

end A183690

/-! ## A183690.P4955385309397927925

`A183698(∑[n]+1)`
-/

namespace A183690.P4955385309397927925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183698 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183690.P4955385309397927925

namespace A183690

/-- `A183698(∑[n]+1)` -/
def P4955385309397927925.Spec : Prop :=
  ∀ n, P4955385309397927925.a n = A183690 (n + 1)

end A183690

/-! ## A183690.P9677475869308722646

`lcm(2, A183698(A000124(n)))`
-/

namespace A183690.P9677475869308722646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183698 (A000124 n).toNat)

end

end A183690.P9677475869308722646

namespace A183690

/-- `lcm(2, A183698(A000124(n)))` -/
def P9677475869308722646.Spec : Prop :=
  ∀ n, (P9677475869308722646.a n : ℤ) = A183690 (n + 1)

end A183690

/-! ## A183690.P17669883242493902823

`record[gcd(A002262(n), A183698(n+1))]`
-/

namespace A183690.P17669883242493902823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A183698 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183690.P17669883242493902823

namespace A183690

/-- `record[gcd(A002262(n), A183698(n+1))]` -/
def P17669883242493902823.Spec : Prop :=
  ∀ n, (P17669883242493902823.a n : ℤ) = A183690 (n + 1)

end A183690

/-!
# A183691: Number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock nonsingular.

The programs for A183691, there is no canonical definition to state claims against.
-/

/-! ## A183691.P9332064356458443076

`A183698(∑[n+1]+2)`
-/

namespace A183691.P9332064356458443076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183698 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183691.P9332064356458443076

/-! ## A183691.P11110101621777557045

`record[A183698(A130270(n+1)+2)]`
-/

namespace A183691.P11110101621777557045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183698 (A130270 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183691.P11110101621777557045

/-! ## A183691.P6076489519151358434

`record[gcd(A002262(n), A183698(n+2))]`
-/

namespace A183691.P6076489519151358434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A183698 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183691.P6076489519151358434

/-! ## A183691.P12234237648248028718

`record[A183698(abs(A201163(n)))]`
-/

namespace A183691.P12234237648248028718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183698 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183691.P12234237648248028718

/-! ## A183691.P2855973966352097832

`record[A183698(Δ[A003453(n+5)])]`
-/

namespace A183691.P2855973966352097832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183698 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183691.P2855973966352097832

/-!
# A183692: Number of (n+1)X4 0..2 arrays with every 2X2 subblock nonsingular.

The programs for A183692, there is no canonical definition to state claims against.
-/

/-! ## A183692.P14949571385096863377

`A183698(∑[n+2]+4)`
-/

namespace A183692.P14949571385096863377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183698 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183692.P14949571385096863377

/-! ## A183692.P2752184677459843803

`lcm(2, A183698(A167614(n+1)))`
-/

namespace A183692.P2752184677459843803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183698 (A167614 (n + 1)).toNat)

end

end A183692.P2752184677459843803

/-! ## A183692.P15724663795833042644

`record[A183698(A130270(n+1)+3)]`
-/

namespace A183692.P15724663795833042644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183698 (A130270 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183692.P15724663795833042644

/-! ## A183692.P915096303662971507

`A033999(2*n)*A183698(A167614(n+1))`
-/

namespace A183692.P915096303662971507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A183698 (A167614 (n + 1)).toNat

end

end A183692.P915096303662971507

/-! ## A183692.P13914475589549576792

`A183698(A167614(n+1))%A183703(n+1)`
-/

namespace A183692.P13914475589549576792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183698 (A167614 (n + 1)).toNat) (A183703 (n + 1))

end

end A183692.P13914475589549576792

/-!
# A183693: Number of (n+1)X5 0..2 arrays with every 2X2 subblock nonsingular.

The programs for A183693, there is no canonical definition to state claims against.
-/

/-! ## A183693.P7598647323821463043

`A183698(∑[a(n-1)+1])` with `a(0)=10, a(1)=4`
-/

namespace A183693.P7598647323821463043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183698 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183693.P7598647323821463043

/-! ## A183693.P15022908621085594488

`A183698(A052905(n)+9)`
-/

namespace A183693.P15022908621085594488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183698 (A052905 n + 9).toNat

end

end A183693.P15022908621085594488

/-! ## A183693.P7542795958858172333

`A183698(A167614(n+2)+1)`
-/

namespace A183693.P7542795958858172333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183698 (A167614 (n + 2) + 1).toNat

end

end A183693.P7542795958858172333

/-! ## A183693.P13031820196370340372

`A183698(A055998(n+2))`
-/

namespace A183693.P13031820196370340372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183698 (A055998 (n + 2)).toNat

end

end A183693.P13031820196370340372

/-! ## A183693.P15258749055947871824

`A183698(A155212(n)+5)`
-/

namespace A183693.P15258749055947871824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183698 (A155212 n + 5).toNat

end

end A183693.P15258749055947871824

/-!
# A183694: Number of (n+1)X6 0..2 arrays with every 2X2 subblock nonsingular.

The programs for A183694, there is no canonical definition to state claims against.
-/

/-! ## A183694.P5162856030201415504

`A183698(A374005(n+1))`
-/

namespace A183694.P5162856030201415504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183698 (A374005 (n + 1)).toNat

end

end A183694.P5162856030201415504

/-! ## A183694.P1808454031331536065

`A183698(A167499(n+3))`
-/

namespace A183694.P1808454031331536065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183698 (A167499 (n + 3)).toNat

end

end A183694.P1808454031331536065

/-! ## A183694.P14483533105301172105

`A183698(A167487(n+3)-2)`
-/

namespace A183694.P14483533105301172105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183698 (A167487 (n + 3) - 2).toNat

end

end A183694.P14483533105301172105

/-! ## A183694.P2663027883346891462

`A183698(Δ[A264443(n)])`
-/

namespace A183694.P2663027883346891462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183698 (f1 (n + 1) - f1 n).toNat

end

end A183694.P2663027883346891462

/-! ## A183694.P18342659106904342201

`A183698(A046691(n+3))`
-/

namespace A183694.P18342659106904342201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183698 (A046691 (n + 3)).toNat

end

end A183694.P18342659106904342201

