import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C035
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C005
import Seq.B005.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
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
# A397801: 3-adic valuation of the quadruple factorial of n.

The programs for A397801, the canonical program `A397801.P10674669512506407556` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397801 has offset 0).

The definition of A397801 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397801.P10674669512506407556

`a(n-4)+A007949(n)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A397801

/-- `a(n-4)+A007949(n)` -/
def P10674669512506407556.Spec : Prop :=
  ∀ n, P10674669512506407556.a n = A397801 n

theorem P10674669512506407556.correct : P10674669512506407556.Spec := by
  intro n
  simp only [A397801]

end A397801

/-! ## A397801.P137674400376254089

`A007949(A007662(n))`
-/

namespace A397801.P137674400376254089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A007662 n).toNat

end

end A397801.P137674400376254089

namespace A397801

/-- `A007949(A007662(n))` -/
def P137674400376254089.Spec : Prop :=
  ∀ n, P137674400376254089.a n = A397801 n

end A397801

/-! ## A397801.P17712585066050755042

`val(A372995(n), 3)`
-/

namespace A397801.P17712585066050755042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A372995 n).toNat 3

end

end A397801.P17712585066050755042

namespace A397801

/-- `val(A372995(n), 3)` -/
def P17712585066050755042.Spec : Prop :=
  ∀ n, (P17712585066050755042.a n : ℤ) = A397801 n

end A397801

/-! ## A397801.P8367540664184394811

`val(A007662(n), log2(A115291(3*n+4)))`
-/

namespace A397801.P8367540664184394811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007662 n).toNat (SequenceMachineLib.roundAway (Real.logb 2 (A115291 (3 * n + 4) : ℝ))).toNat

end

end A397801.P8367540664184394811

namespace A397801

/-- `val(A007662(n), log2(A115291(3*n+4)))` -/
def P8367540664184394811.Spec : Prop :=
  ∀ n, (P8367540664184394811.a n : ℤ) = A397801 n

end A397801

/-! ## A397801.P1645663325825072623

`val(A114800(2*n), 3)`
-/

namespace A397801.P1645663325825072623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A114800 (2 * n)).toNat 3

end

end A397801.P1645663325825072623

namespace A397801

/-- `val(A114800(2*n), 3)` -/
def P1645663325825072623.Spec : Prop :=
  ∀ n, (P1645663325825072623.a n : ℤ) = A397801 n

end A397801

/-!
# A397802: Expansion of e.g.f. sinh( 1 / (2 - exp(x)) - 1 ).

The programs for A397802, there is no canonical definition to state claims against.
-/

/-! ## A397802.P18209623836552255310

`A075729(n)-A396914(n)`
-/

namespace A397802.P18209623836552255310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075729 n - A396914 n

end

end A397802.P18209623836552255310

/-! ## A397802.P14100986144252666219

`A004526(xor(A064063(n), A096304(n+1)))`
-/

namespace A397802.P14100986144252666219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.xor (A064063 n) (A096304 (n + 1))).toNat

end

end A397802.P14100986144252666219

/-!
# A397803: a(n) = 2^((3^n - 1)/2).

The programs for A397803, the canonical program `A397803.P13251402341683626943` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397803 has offset 0).

The definition of A397803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397803.P13251402341683626943

`2^((3^n-1)/2)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A397803

/-- `2^((3^n-1)/2)` -/
def P13251402341683626943.Spec : Prop :=
  ∀ n, P13251402341683626943.a n = (A397803 n : ℝ)

end A397803

/-!
# A397808: Decimal representation of the Collatz iteration encoding of n.

The programs for A397808, there is no canonical definition to state claims against.
-/

/-! ## A397808.P431505080205025986

`A088697(A304715(n+1))`
-/

namespace A397808.P431505080205025986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088697 (A304715 (n + 1)).toNat

end

end A397808.P431505080205025986

/-! ## A397808.P10681055300725088124

`A030109(A125711(n+1))`
-/

namespace A397808.P10681055300725088124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A125711 (n + 1)).toNat

end

end A397808.P10681055300725088124

/-!
# A397820: The positive integers ordered by decreasing values of n -> prime(n+1)/prime(n).

The programs for A397820, there is no canonical definition to state claims against.
-/

/-! ## A397820.P10125714770657839990

`A000720(A130789(n+1))`
-/

namespace A397820.P10125714770657839990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A130789 (n + 1)).toNat

end

end A397820.P10125714770657839990

/-! ## A397820.P7587666381551026696

`A344616(A130789(n+1)+A000007(2*n+1))`
-/

namespace A397820.P7587666381551026696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A130789 (n + 1) + A000007 (2 * n + 1)).toNat

end

end A397820.P7587666381551026696

/-!
# A397828: Reduced Dedekind psi function: a(p1^e1*...*pN^eN) = lcm((p1+1)*p1^(e1-1), ..., (pN+1)*pN^(eN-1)).

The programs for A397828, there is no canonical definition to state claims against.
-/

/-! ## A397828.P14551379013751165094

`gcd(A001615(n+1), A001615(A341659(n+1)))`
-/

namespace A397828.P14551379013751165094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001615 (n + 1)) (A001615 (A341659 (n + 1)).toNat)

end

end A397828.P14551379013751165094

/-!
# A397833: Number of binary words of length n containing the consecutive word abab.

The programs for A397833, the canonical program `A397833.P6945550512634513775` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397833 has offset 0).

The definition of A397833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397833.P6945550512634513775

`2^n-A118870(n)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A397833

/-- `2^n-A118870(n)` -/
def P6945550512634513775.Spec : Prop :=
  ∀ n, P6945550512634513775.a n = A397833 n

theorem P6945550512634513775.correct : P6945550512634513775.Spec := by
  intro n
  simp only [A397833]

end A397833

/-! ## A397833.P12949939026209764770

`∑[A367396(abs(1-n))]`
-/

namespace A397833.P12949939026209764770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367396 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397833.P12949939026209764770

namespace A397833

/-- `∑[A367396(abs(1-n))]` -/
def P12949939026209764770.Spec : Prop :=
  ∀ n, P12949939026209764770.a n = A397833 n

end A397833

/-! ## A397833.P5757967903288360084

`∑[A367396(n)]-A367396(n)`
-/

namespace A397833.P5757967903288360084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A367396 n

end

end A397833.P5757967903288360084

namespace A397833

/-- `∑[A367396(n)]-A367396(n)` -/
def P5757967903288360084.Spec : Prop :=
  ∀ n, P5757967903288360084.a n = A397833 n

end A397833

/-! ## A397833.P4156266810325247320

`A135661(A123922(n))`
-/

namespace A397833.P4156266810325247320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A123922 n).toNat

end

end A397833.P4156266810325247320

namespace A397833

/-- `A135661(A123922(n))` -/
def P4156266810325247320.Spec : Prop :=
  ∀ n, P4156266810325247320.a n = A397833 n

end A397833

/-! ## A397833.P8754385200055541249

`A300997(A229202(n))`
-/

namespace A397833.P8754385200055541249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300997 (A229202 n).toNat

end

end A397833.P8754385200055541249

namespace A397833

/-- `A300997(A229202(n))` -/
def P8754385200055541249.Spec : Prop :=
  ∀ n, P8754385200055541249.a n = A397833 n

end A397833

/-!
# A397834: Number of binary words of length n containing the consecutive word ababab.

The programs for A397834, there is no canonical definition to state claims against.
-/

/-! ## A397834.P5866345606952046073

`A155902(A018791(n))`
-/

namespace A397834.P5866345606952046073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155902 (A018791 n).toNat

end

end A397834.P5866345606952046073

/-! ## A397834.P9507897634274783506

`A155902(A143662(n))`
-/

namespace A397834.P9507897634274783506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155902 (A143662 n).toNat

end

end A397834.P9507897634274783506

/-! ## A397834.P90142280050487867

`A348960(A001631(n))`
-/

namespace A397834.P90142280050487867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348960 (A001631 n).toNat

end

end A397834.P90142280050487867

/-! ## A397834.P18098096328787458191

`A155902(A018792(n+1))`
-/

namespace A397834.P18098096328787458191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155902 (A018792 (n + 1)).toNat

end

end A397834.P18098096328787458191

/-! ## A397834.P3795183880392678450

`A155902(A151975(n+1))`
-/

namespace A397834.P3795183880392678450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155902 (A151975 (n + 1)).toNat

end

end A397834.P3795183880392678450

/-!
# A397835: Number of ternary words of length n over {a,b,c} containing the consecutive word abcabc.

The programs for A397835, the canonical program `A397835.P15543943406779029277` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397835 has offset 0).

The definition of A397835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397835.P15543943406779029277

`3^n-A397837(n)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A397835

/-- `3^n-A397837(n)` -/
def P15543943406779029277.Spec : Prop :=
  ∀ n, P15543943406779029277.a n = A397835 n

theorem P15543943406779029277.correct : P15543943406779029277.Spec := by
  intro n
  simp only [A397835]

end A397835

/-! ## A397835.P14283606344057971917

`A000244(n)%A397837(n)`
-/

namespace A397835.P14283606344057971917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n) (A397837 n)

end

end A397835.P14283606344057971917

namespace A397835

/-- `A000244(n)%A397837(n)` -/
def P14283606344057971917.Spec : Prop :=
  ∀ n, P14283606344057971917.a n = A397835 n

end A397835

/-! ## A397835.P2969344638556275582

`A210716(A046938(n))`
-/

namespace A397835.P2969344638556275582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210716 (A046938 n).toNat

end

end A397835.P2969344638556275582

namespace A397835

/-- `A210716(A046938(n))` -/
def P2969344638556275582.Spec : Prop :=
  ∀ n, P2969344638556275582.a n = A397835 n

end A397835

/-! ## A397835.P12142801697360599082

`A374633(A325918(n))`
-/

namespace A397835.P12142801697360599082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374633 (A325918 n).toNat

end

end A397835.P12142801697360599082

namespace A397835

/-- `A374633(A325918(n))` -/
def P12142801697360599082.Spec : Prop :=
  ∀ n, P12142801697360599082.a n = A397835 n

end A397835

/-! ## A397835.P2731726116972965769

`A210716(A366969(n+1))`
-/

namespace A397835.P2731726116972965769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210716 (A366969 (n + 1)).toNat

end

end A397835.P2731726116972965769

namespace A397835

/-- `A210716(A366969(n+1))` -/
def P2731726116972965769.Spec : Prop :=
  ∀ n, P2731726116972965769.a n = A397835 n

end A397835

/-!
# A397837: Number of ternary words of length n over {a,b,c} avoiding the consecutive word abcabc.

The programs for A397837, the canonical program `A397837.P11095280767987462011` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397837 has offset 0).

The definition of A397837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397837.P11095280767987462011

`3*a(n-1)-a(n-3)+3*a(n-4)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27, a(4)=81, a(5)=243`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A397837

/-- `3*a(n-1)-a(n-3)+3*a(n-4)-a(n-6)` -/
def P11095280767987462011.Spec : Prop :=
  ∀ n, P11095280767987462011.a n = A397837 n

theorem P11095280767987462011.correct : P11095280767987462011.Spec := by
  intro n
  simp only [A397837]

end A397837

/-! ## A397837.P1477913368152880354

`3^n-A397835(n)`
-/

namespace A397837.P1477913368152880354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A397835 n

end

end A397837.P1477913368152880354

namespace A397837

/-- `3^n-A397835(n)` -/
def P1477913368152880354.Spec : Prop :=
  ∀ n, P1477913368152880354.a n = A397837 n

theorem P1477913368152880354.correct : P1477913368152880354.Spec := by
  intro n
  simp only [A397837, Nat.add_sub_cancel, A397837.P1477913368152880354.a, A397837.P11095280767987462011.a, A397835, A397835.P15543943406779029277.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A397837

/-! ## A397837.P8341855024438056352

`A000244(n)-A007953(A324435(n+3))`
-/

namespace A397837.P8341855024438056352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - A007953 (A324435 (n + 3)).toNat

end

end A397837.P8341855024438056352

namespace A397837

/-- `A000244(n)-A007953(A324435(n+3))` -/
def P8341855024438056352.Spec : Prop :=
  ∀ n, P8341855024438056352.a n = A397837 n

end A397837

/-! ## A397837.P11363008676868051738

`A000244(n)-A217987(A364915(n+3))`
-/

namespace A397837.P11363008676868051738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - A217987 (A364915 (n + 3)).toNat

end

end A397837.P11363008676868051738

namespace A397837

/-- `A000244(n)-A217987(A364915(n+3))` -/
def P11363008676868051738.Spec : Prop :=
  ∀ n, P11363008676868051738.a n = A397837 n

end A397837

/-!
# A397838: Antidiagonal products of the multifactorial array.

The programs for A397838, there is no canonical definition to state claims against.
-/

/-! ## A397838.P4726593797130575373

`∏{p}[∏[n!], (n+2-#)!]`
-/

namespace A397838.P4726593797130575373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial ((n + 2 : ℤ) - (p : ℤ)).toNat

end

end A397838.P4726593797130575373

/-! ## A397838.P2391386074768756112

`A140110(A191721(n))`
-/

namespace A397838.P2391386074768756112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140110 (A191721 n).toNat

end

end A397838.P2391386074768756112

/-!
# A397848: Near-repdigit primes such that no rearrangement of their digits (without leading zeros) results in any other prime number.

The programs for A397848, there is no canonical definition to state claims against.
-/

/-! ## A397848.P8833466143572990642

`∩[A164937(n+1), A246044(n+1)]`
-/

namespace A397848.P8833466143572990642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397848.P8833466143572990642

/-! ## A397848.P3104343827642052756

`∩[A210666(n+1), A246044(n+1)]`
-/

namespace A397848.P3104343827642052756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397848.P3104343827642052756

/-! ## A397848.P8252030483241124366

`∩[A164937(n+1), A245808(n+1)]`
-/

namespace A397848.P8252030483241124366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397848.P8252030483241124366

/-!
# A397850: Number of tilings of a 4 X n rectangle using straight trominoes and Z-tetrominoes.

The programs for A397850, there is no canonical definition to state claims against.
-/

/-! ## A397850.P9408235347310716166

`A145105(A079284(n))`
-/

namespace A397850.P9408235347310716166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145105 (A079284 n).toNat

end

end A397850.P9408235347310716166

/-!
# A397851: The factorial base expansion of a(n) equals the canonical snowball representation of n.

The programs for A397851, there is no canonical definition to state claims against.
-/

/-! ## A397851.P741335289670511010

`A322001(A397794(n))`
-/

namespace A397851.P741335289670511010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322001 (A397794 n).toNat

end

end A397851.P741335289670511010

/-!
# A397857: G.f. A(x) satisfies A(x) = 1 + x * (1+x)^3 * A(x * (1+x)).

The programs for A397857, there is no canonical definition to state claims against.
-/

/-! ## A397857.P14501334822398796312

`A006087(A149585(n))`
-/

namespace A397857.P14501334822398796312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006087 (A149585 n).toNat

end

end A397857.P14501334822398796312

/-! ## A397857.P8365087140842345761

`A358521(A115451(n+2)-(2*n+1))`
-/

namespace A397857.P8365087140842345761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358521 (A115451 (n + 2) - (2 * n + 1 : ℤ)).toNat

end

end A397857.P8365087140842345761

/-!
# A397858: G.f. A(x) satisfies A(x) = 1 + x * A(x * (1+x)^2).

The programs for A397858, there is no canonical definition to state claims against.
-/

/-! ## A397858.P15561340746713459166

`A088937(A089407(n))`
-/

namespace A397858.P15561340746713459166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088937 (A089407 n).toNat

end

end A397858.P15561340746713459166

/-! ## A397858.P9612839406254070031

`A106432(A082149(n))`
-/

namespace A397858.P9612839406254070031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A082149 n).toNat

end

end A397858.P9612839406254070031

/-! ## A397858.P12997129910663641651

`A088937(A289588(n))`
-/

namespace A397858.P12997129910663641651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088937 (A289588 n).toNat

end

end A397858.P12997129910663641651

/-!
# A397860: G.f. A(x) satisfies A(x) = 1 + x * (1+x)^3 * A(x * (1+x)^2).

The programs for A397860, there is no canonical definition to state claims against.
-/

/-! ## A397860.P18002918549083682543

`A059930(A066076(n+1))-A196169(3*n+4)`
-/

namespace A397860.P18002918549083682543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059930 (A066076 (n + 1)).toNat - A196169 (3 * n + 4)

end

end A397860.P18002918549083682543

/-!
# A397861: G.f. A(x) satisfies A(x) = 1 + x * A(x * (1+x)^3).

The programs for A397861, there is no canonical definition to state claims against.
-/

/-! ## A397861.P7330105452742605054

`A244479(A004211(n))+A000700(n)`
-/

namespace A397861.P7330105452742605054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 (A004211 n).toNat + A000700 n

end

end A397861.P7330105452742605054

/-!
# A397862: G.f. A(x) satisfies A(x) = 1 + x * (1+x) * A(x * (1+x)^3).

The programs for A397862, there is no canonical definition to state claims against.
-/

/-! ## A397862.P8907579194605674136

`A358062(∑[n!])`
-/

namespace A397862.P8907579194605674136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358062 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397862.P8907579194605674136

/-! ## A397862.P2923247288954558884

`A000006(A003242(∑[n]))`
-/

namespace A397862.P2923247288954558884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A003242 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A397862.P2923247288954558884

/-!
# A397863: G.f. A(x) satisfies A(x) = 1 + x * (1+x)^2 * A(x * (1+x)^3).

The programs for A397863, there is no canonical definition to state claims against.
-/

/-! ## A397863.P12107214956931660473

`A116928(A057524(n))`
-/

namespace A397863.P12107214956931660473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116928 (A057524 n).toNat

end

end A397863.P12107214956931660473

/-! ## A397863.P7344060304139508907

`A116928(∑[∑[A028310(n)]])`
-/

namespace A397863.P7344060304139508907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116928 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A397863.P7344060304139508907

/-!
# A397877: Length of the repeating part of row n of A281001.

The programs for A397877, there is no canonical definition to state claims against.
-/

/-! ## A397877.P9341042979244259844

`A383748(A383747(A005117(A005117(n+1))))`
-/

namespace A397877.P9341042979244259844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383748 (A383747 (A005117 (A005117 (n + 1)).toNat).toNat).toNat

end

end A397877.P9341042979244259844

/-! ## A397877.P727000106289363368

`A003589(A234388(n+1))`
-/

namespace A397877.P727000106289363368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003589 (A234388 (n + 1)).toNat

end

end A397877.P727000106289363368

/-! ## A397877.P13503773481557836405

`A077199(A376017(n+1))`
-/

namespace A397877.P13503773481557836405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077199 (A376017 (n + 1)).toNat

end

end A397877.P13503773481557836405

/-! ## A397877.P18037885605584369138

`A217586(A007147(n+4))+2`
-/

namespace A397877.P18037885605584369138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217586 (A007147 (n + 4)).toNat + 2

end

end A397877.P18037885605584369138

/-! ## A397877.P7917047105522594032

`xor(2, A100821(n+1+A003961(n+5)))`
-/

namespace A397877.P7917047105522594032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A100821 ((n + 1 : ℤ) + A003961 (n + 5)).toNat)

end

end A397877.P7917047105522594032

/-!
# A397879: Largest integer of the form r^k whose base-n alternating digital root is r and whose number of base-n digits is k.

The programs for A397879, there is no canonical definition to state claims against.
-/

/-! ## A397879.P11432513920821617894

`(n+1)^A005251(A034386(n))`
-/

namespace A397879.P11432513920821617894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A005251 (A034386 n).toNat : ℤ)

end

end A397879.P11432513920821617894

/-!
# A397881: E.g.f. A(x) satisfies A(x) = 1 + x * exp(x) * A(x * exp(2*x)).

The programs for A397881, there is no canonical definition to state claims against.
-/

/-! ## A397881.P13558852426228618318

`A033865(A151473(n))`
-/

namespace A397881.P13558852426228618318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (A151473 n).toNat

end

end A397881.P13558852426228618318

/-!
# A397882: E.g.f. A(x) satisfies A(x) = 1 + x * exp(2*x) * A(x * exp(2*x)).

The programs for A397882, there is no canonical definition to state claims against.
-/

/-! ## A397882.P16629004722849036529

`A396965(n+1)/(n+1)`
-/

namespace A397882.P16629004722849036529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396965 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A397882.P16629004722849036529

/-!
# A397883: a(n) = r(2,n,2) where r(m,n,k) is the number of possible outcomes in a race with n participants that contains exactly k ties of size at least m.

The programs for A397883, there is no canonical definition to state claims against.
-/

/-! ## A397883.P14867434419172951218

`A003736(n+2)%A216345(A168268(2*n))`
-/

namespace A397883.P14867434419172951218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003736 (n + 2)) (A216345 (A168268 (2 * n)).toNat)

end

end A397883.P14867434419172951218

/-!
# A397889: Maximum size of a 3-symmetric tripod packing of order n.

The programs for A397889, there is no canonical definition to state claims against.
-/

/-! ## A397889.P14588431338993410179

`A001651(A282168(n+1))`
-/

namespace A397889.P14588431338993410179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A282168 (n + 1)).toNat

end

end A397889.P14588431338993410179

/-! ## A397889.P6428114220101430141

`A390737(n)+A024193(n+1)`
-/

namespace A397889.P6428114220101430141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390737 n + A024193 (n + 1)

end

end A397889.P6428114220101430141

/-! ## A397889.P15581741190940087519

`A087823(n+1)+A046992(n+1)`
-/

namespace A397889.P15581741190940087519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087823 (n + 1) + A046992 (n + 1)

end

end A397889.P15581741190940087519

/-! ## A397889.P16683777265815901330

`A001651(floor(∑[A005379(n)+4]/3))`
-/

namespace A397889.P16683777265815901330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋.toNat

end

end A397889.P16683777265815901330

/-! ## A397889.P9119353961040733124

`A007494(A282168(n+1))-A279185(n+1)`
-/

namespace A397889.P9119353961040733124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A282168 (n + 1)).toNat - A279185 (n + 1)

end

end A397889.P9119353961040733124

/-!
# A397890: Minimum binary length of a standard-order composition with n distinct runs; bit length of A351015(n).

The programs for A397890, the canonical program `A397890.P17401045601756210256` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397890 has offset 0).

The definition of A397890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397890.P14657490737695222970

`∑[∑[char[A054519(n)]]]`
-/

namespace A397890.P14657490737695222970
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397890.P14657490737695222970

namespace A397890

/-- `∑[∑[char[A054519(n)]]]` -/
def P14657490737695222970.Spec : Prop :=
  ∀ n, (P14657490737695222970.a n : ℤ) = A397890 n

end A397890

/-! ## A397890.P12818594974480040570

`∑[comp[∑[A000005(n+1)+1]]-n]+n`
-/

namespace A397890.P12818594974480040570
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A397890.P12818594974480040570

namespace A397890

/-- `∑[comp[∑[A000005(n+1)+1]]-n]+n` -/
def P12818594974480040570.Spec : Prop :=
  ∀ n, P12818594974480040570.a n = A397890 n

end A397890

/-! ## A397890.P17401045601756210256

`∑[A061017(n+1)]-A061017(n+1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A397890

/-- `∑[A061017(n+1)]-A061017(n+1)` -/
def P17401045601756210256.Spec : Prop :=
  ∀ n, P17401045601756210256.a n = A397890 n

theorem P17401045601756210256.correct : P17401045601756210256.Spec := by
  intro n
  simp only [A397890]

end A397890

/-! ## A397890.P387298801101818633

`∑[ceil(log2(A272919(n+1)))]`
-/

namespace A397890.P387298801101818633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A272919 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397890.P387298801101818633

namespace A397890

/-- `∑[ceil(log2(A272919(n+1)))]` -/
def P387298801101818633.Spec : Prop :=
  ∀ n, P387298801101818633.a n = A397890 n

end A397890

/-! ## A397890.P1479193479764223023

`∑[A029837(A272919(n+1))]`
-/

namespace A397890.P1479193479764223023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A272919 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397890.P1479193479764223023

namespace A397890

/-- `∑[A029837(A272919(n+1))]` -/
def P1479193479764223023.Spec : Prop :=
  ∀ n, P1479193479764223023.a n = A397890 n

end A397890

/-!
# A397894: E.g.f. A(x) satisfies A(x) = 1 + x * exp(-x) * A(x * exp(x)).

The programs for A397894, there is no canonical definition to state claims against.
-/

/-! ## A397894.P14232050465298676553

`A365661(A293710(n+1))`
-/

namespace A397894.P14232050465298676553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365661 (A293710 (n + 1)).toNat

end

end A397894.P14232050465298676553

/-! ## A397894.P17743835769584153988

`A001068(A112957(n+1)-A244125(n))`
-/

namespace A397894.P17743835769584153988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A112957 (n + 1) - A244125 n).toNat

end

end A397894.P17743835769584153988

/-!
# A397897: a(n) = Sum_{j=1..n} (-1)^(j+1) * j * prime(n-j+1).

The programs for A397897, the canonical program `A397897.P2133859419162163201` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397897 has offset 0).

The definition of A397897 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397897.P2133859419162163201

`A000040(n)-2*a(n-1)-a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A397897

/-- `A000040(n)-2*a(n-1)-a(n-2)` -/
def P2133859419162163201.Spec : Prop :=
  ∀ n, P2133859419162163201.a n = A397897 n

theorem P2133859419162163201.correct : P2133859419162163201.Spec := by
  intro n
  simp only [A397897]

end A397897

/-! ## A397897.P63849065271477274

`A008347(n)-a(n-1)` with `a(0)=0`
-/

namespace A397897.P63849065271477274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008347 n - a (n - 1)

end

end A397897.P63849065271477274

namespace A397897

/-- `A008347(n)-a(n-1)` -/
def P63849065271477274.Spec : Prop :=
  ∀ n, P63849065271477274.a n = A397897 n

end A397897

