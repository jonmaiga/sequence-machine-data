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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A364500: a(n) = gcd(n, A005940(n)).

The programs for A364500, the canonical program `A364500.P4741976009625240050` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364500 has offset 1).

The definition of A364500 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364500.P10803925118671369837

`(n+1)/A364501(n+1)`
-/

namespace A364500.P10803925118671369837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A364501 (n + 1) : ℚ)

end

end A364500.P10803925118671369837

namespace A364500

/-- `(n+1)/A364501(n+1)` -/
def P10803925118671369837.Spec : Prop :=
  ∀ n, P10803925118671369837.a n = (A364500 (n + 1) : ℚ)

end A364500

/-! ## A364500.P4741976009625240050

`gcd(n+1, A005940(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A364500

/-- `gcd(n+1, A005940(n+1))` -/
def P4741976009625240050.Spec : Prop :=
  ∀ n, (P4741976009625240050.a n : ℤ) = A364500 (n + 1)

theorem P4741976009625240050.correct : P4741976009625240050.Spec := by
  intro n
  simp only [A364500, Nat.add_sub_cancel]

end A364500

/-! ## A364500.P16660733113676682806

`A005940(n+1)/A364502(n+1)`
-/

namespace A364500.P16660733113676682806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (n + 1) : ℚ) / (A364502 (n + 1) : ℚ)

end

end A364500.P16660733113676682806

namespace A364500

/-- `A005940(n+1)/A364502(n+1)` -/
def P16660733113676682806.Spec : Prop :=
  ∀ n, P16660733113676682806.a n = (A364500 (n + 1) : ℚ)

end A364500

/-! ## A364500.P14172476780154400940

`A005940(A365430(n+1)+1)`
-/

namespace A364500.P14172476780154400940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A365430 (n + 1) + 1).toNat

end

end A364500.P14172476780154400940

namespace A364500

/-- `A005940(A365430(n+1)+1)` -/
def P14172476780154400940.Spec : Prop :=
  ∀ n, P14172476780154400940.a n = A364500 (n + 1)

end A364500

/-! ## A364500.P10142824803727309353

`gcd(A005940(n+1), A103517(n))`
-/

namespace A364500.P10142824803727309353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005940 (n + 1)) (A103517 n)

end

end A364500.P10142824803727309353

namespace A364500

/-- `gcd(A005940(n+1), A103517(n))` -/
def P10142824803727309353.Spec : Prop :=
  ∀ n, (P10142824803727309353.a n : ℤ) = A364500 (n + 1)

end A364500

/-! ## A364500.P9425828981055553827

`gcd(A000027(n+1), A364499(n+1))`
-/

namespace A364500.P9425828981055553827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A364499 (n + 1))

end

end A364500.P9425828981055553827

namespace A364500

/-- `gcd(A000027(n+1), A364499(n+1))` -/
def P9425828981055553827.Spec : Prop :=
  ∀ n, (P9425828981055553827.a n : ℤ) = A364500 (n + 1)

end A364500

/-! ## A364500.P15099017455374390333

`gcd(A364499(n+1)/2, A061019(n+1))`
-/

namespace A364500.P15099017455374390333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A364499 (n + 1) : ℚ) / 2)) (A061019 (n + 1))

end

end A364500.P15099017455374390333

namespace A364500

/-- `gcd(A364499(n+1)/2, A061019(n+1))` -/
def P15099017455374390333.Spec : Prop :=
  ∀ n, (P15099017455374390333.a n : ℤ) = A364500 (n + 1)

end A364500

/-! ## A364500.P17810827929838263665

`A108548(gcd(A108548(n+1), A332815(n)))`
-/

namespace A364500.P17810827929838263665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (Int.gcd (A108548 (n + 1)) (A332815 n))

end

end A364500.P17810827929838263665

namespace A364500

/-- `A108548(gcd(A108548(n+1), A332815(n)))` -/
def P17810827929838263665.Spec : Prop :=
  ∀ n, P17810827929838263665.a n = A364500 (n + 1)

end A364500

/-! ## A364500.P13255873330192841831

`gcd(A005940(A008619(2*n)), A008619(2*n))`
-/

namespace A364500.P13255873330192841831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005940 (A008619 (2 * n)).toNat) (A008619 (2 * n))

end

end A364500.P13255873330192841831

namespace A364500

/-- `gcd(A005940(A008619(2*n)), A008619(2*n))` -/
def P13255873330192841831.Spec : Prop :=
  ∀ n, (P13255873330192841831.a n : ℤ) = A364500 (n + 1)

end A364500

/-! ## A364500.P12271762788407338675

`gcd(A028310(n+1), A279338(A279344(2*n+1)))`
-/

namespace A364500.P12271762788407338675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 (n + 1)) (A279338 (A279344 (2 * n + 1)).toNat)

end

end A364500.P12271762788407338675

namespace A364500

/-- `gcd(A028310(n+1), A279338(A279344(2*n+1)))` -/
def P12271762788407338675.Spec : Prop :=
  ∀ n, (P12271762788407338675.a n : ℤ) = A364500 (n + 1)

end A364500

/-!
# A364501: a(n) = n / gcd(n, A005940(n)).

The programs for A364501, the canonical program `A364501.P11671779795574497897` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364501 has offset 1).

The definition of A364501 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364501.P11671779795574497897

`(n+1)/gcd(n+1, A005940(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A364501

/-- `(n+1)/gcd(n+1, A005940(n+1))` -/
def P11671779795574497897.Spec : Prop :=
  ∀ n, P11671779795574497897.a n = (A364501 (n + 1) : ℚ)

end A364501

/-! ## A364501.P8222697846744271233

`(n+1)/A364500(n+1)`
-/

namespace A364501.P8222697846744271233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A364500 (n + 1) : ℚ)

end

end A364501.P8222697846744271233

namespace A364501

/-- `(n+1)/A364500(n+1)` -/
def P8222697846744271233.Spec : Prop :=
  ∀ n, P8222697846744271233.a n = (A364501 (n + 1) : ℚ)

end A364501

/-! ## A364501.P17651128400044442806

`(n+1)/gcd(A005940(n+1), A103517(n))`
-/

namespace A364501.P17651128400044442806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A005940 (n + 1)) (A103517 n) : ℚ)

end

end A364501.P17651128400044442806

namespace A364501

/-- `(n+1)/gcd(A005940(n+1), A103517(n))` -/
def P17651128400044442806.Spec : Prop :=
  ∀ n, P17651128400044442806.a n = (A364501 (n + 1) : ℚ)

end A364501

/-! ## A364501.P6320341306254621855

`(n+1)/floor(A005940(n+1)/A364502(n+1))`
-/

namespace A364501.P6320341306254621855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (⌊(A005940 (n + 1) : ℚ) / (A364502 (n + 1) : ℚ)⌋ : ℚ)

end

end A364501.P6320341306254621855

namespace A364501

/-- `(n+1)/floor(A005940(n+1)/A364502(n+1))` -/
def P6320341306254621855.Spec : Prop :=
  ∀ n, P6320341306254621855.a n = (A364501 (n + 1) : ℚ)

end A364501

/-! ## A364501.P13842473736219551600

`A000027(n+1)/gcd(A000027(n+1), A364499(n+1))`
-/

namespace A364501.P13842473736219551600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (Int.gcd (A000027 (n + 1)) (A364499 (n + 1)) : ℚ)

end

end A364501.P13842473736219551600

namespace A364501

/-- `A000027(n+1)/gcd(A000027(n+1), A364499(n+1))` -/
def P13842473736219551600.Spec : Prop :=
  ∀ n, P13842473736219551600.a n = (A364501 (n + 1) : ℚ)

end A364501

/-! ## A364501.P4828403435235223213

`A054531(A364500(n+1)+A000217(n))`
-/

namespace A364501.P4828403435235223213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A364500 (n + 1) + A000217 n).toNat

end

end A364501.P4828403435235223213

namespace A364501

/-- `A054531(A364500(n+1)+A000217(n))` -/
def P4828403435235223213.Spec : Prop :=
  ∀ n, P4828403435235223213.a n = A364501 (n + 1)

end A364501

/-! ## A364501.P1911753065581600726

`A126988(A364500(n+1)+A000217(n))`
-/

namespace A364501.P1911753065581600726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A364500 (n + 1) + A000217 n).toNat

end

end A364501.P1911753065581600726

namespace A364501

/-- `A126988(A364500(n+1)+A000217(n))` -/
def P1911753065581600726.Spec : Prop :=
  ∀ n, P1911753065581600726.a n = A364501 (n + 1)

end A364501

/-!
# A364502: a(n) = A005940(n) / gcd(n, A005940(n)).

The programs for A364502, the canonical program `A364502.P9871908459785644473` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364502 has offset 1).

The definition of A364502 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364502.P9871908459785644473

`A005940(n+1)/gcd(n+1, A005940(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A364502

/-- `A005940(n+1)/gcd(n+1, A005940(n+1))` -/
def P9871908459785644473.Spec : Prop :=
  ∀ n, P9871908459785644473.a n = (A364502 (n + 1) : ℚ)

end A364502

/-! ## A364502.P13165855999585456692

`A005940(A365432(n+1)+1)`
-/

namespace A364502.P13165855999585456692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A365432 (n + 1) + 1).toNat

end

end A364502.P13165855999585456692

namespace A364502

/-- `A005940(A365432(n+1)+1)` -/
def P13165855999585456692.Spec : Prop :=
  ∀ n, P13165855999585456692.a n = A364502 (n + 1)

end A364502

/-! ## A364502.P14605853529378741687

`A005940(n+1)/A364500(n+1)`
-/

namespace A364502.P14605853529378741687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (n + 1) : ℚ) / (A364500 (n + 1) : ℚ)

end

end A364502.P14605853529378741687

namespace A364502

/-- `A005940(n+1)/A364500(n+1)` -/
def P14605853529378741687.Spec : Prop :=
  ∀ n, P14605853529378741687.a n = (A364502 (n + 1) : ℚ)

end A364502

/-! ## A364502.P4431298523724675174

`A005940(n+1)/gcd(A005940(n+1), A103517(n))`
-/

namespace A364502.P4431298523724675174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (n + 1) : ℚ) / (Int.gcd (A005940 (n + 1)) (A103517 n) : ℚ)

end

end A364502.P4431298523724675174

namespace A364502

/-- `A005940(n+1)/gcd(A005940(n+1), A103517(n))` -/
def P4431298523724675174.Spec : Prop :=
  ∀ n, P4431298523724675174.a n = (A364502 (n + 1) : ℚ)

end A364502

/-! ## A364502.P10627772092207676458

`A364501(n+1)+A364499(n+1)/A364500(n+1)`
-/

namespace A364502.P10627772092207676458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364501 (n + 1) : ℚ) + (A364499 (n + 1) : ℚ) / (A364500 (n + 1) : ℚ)

end

end A364502.P10627772092207676458

namespace A364502

/-- `A364501(n+1)+A364499(n+1)/A364500(n+1)` -/
def P10627772092207676458.Spec : Prop :=
  ∀ n, P10627772092207676458.a n = (A364502 (n + 1) : ℚ)

end A364502

/-! ## A364502.P15234418381355020241

`(A340362(n+1)+A340364(n+1)*A340366(n+1))/A364500(n+1)`
-/

namespace A364502.P15234418381355020241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340362 (n + 1) + A340364 (n + 1) * A340366 (n + 1) : ℚ) / (A364500 (n + 1) : ℚ)

end

end A364502.P15234418381355020241

namespace A364502

/-- `(A340362(n+1)+A340364(n+1)*A340366(n+1))/A364500(n+1)` -/
def P15234418381355020241.Spec : Prop :=
  ∀ n, P15234418381355020241.a n = (A364502 (n + 1) : ℚ)

end A364502

/-! ## A364502.P11309147858097766356

`A279338(A279344(n))/A364500(n+1)`
-/

namespace A364502.P11309147858097766356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279338 (A279344 n).toNat : ℚ) / (A364500 (n + 1) : ℚ)

end

end A364502.P11309147858097766356

namespace A364502

/-- `A279338(A279344(n))/A364500(n+1)` -/
def P11309147858097766356.Spec : Prop :=
  ∀ n, P11309147858097766356.a n = (A364502 (n + 1) : ℚ)

end A364502

/-! ## A364502.P9614898597406759564

`A292602(4*n+3)/A364500(n+1)`
-/

namespace A364502.P9614898597406759564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292602 (4 * n + 3) : ℚ) / (A364500 (n + 1) : ℚ)

end

end A364502.P9614898597406759564

namespace A364502

/-- `A292602(4*n+3)/A364500(n+1)` -/
def P9614898597406759564.Spec : Prop :=
  ∀ n, P9614898597406759564.a n = (A364502 (n + 1) : ℚ)

end A364502

/-!
# A364504: Number of tilings of an n X n square using dominoes and trominoes (of any shape).

The programs for A364504, there is no canonical definition to state claims against.
-/

/-! ## A364504.P7983700577339832279

`A364457(∑[4*n])`
-/

namespace A364504.P7983700577339832279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A364504.P7983700577339832279

/-!
# A364505: T(n, k) = number of k-dimensional faces in the BME polytope on n species, 0 <= k <= binomial(n, 2) - n.

The programs for A364505, there is no canonical definition to state claims against.
-/

/-! ## A364505.P14548580692217670939

`A206428(n!)+char[∑[n]]+1`
-/

namespace A364505.P14548580692217670939
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206428 (Nat.factorial n) + (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ)

end

end A364505.P14548580692217670939

/-!
# A364506: Square array read by ascending antidiagonals: T(n,k) = (2*k)!/k! * ( (2*n*k)! * ((2*n+1)*k)! )/( (n*k)!^2 * ((n+1)*k)!^2 ).

The programs for A364506, there is no canonical definition to state claims against.
-/

/-! ## A364506.P2454723928323397261

`A060538(n+1)*A272901(A029494(n+1))`
-/

namespace A364506.P2454723928323397261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060538 (n + 1) * A272901 (A029494 (n + 1)).toNat

end

end A364506.P2454723928323397261

/-! ## A364506.P16188310927063219743

`A060538(n+1)*A180843(A208501(n+3))`
-/

namespace A364506.P16188310927063219743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060538 (n + 1) * A180843 (A208501 (n + 3)).toNat

end

end A364506.P16188310927063219743

/-! ## A364506.P14706892057313154228

`A060538(n+1)*A194838(A089759(3*(n+1)))`
-/

namespace A364506.P14706892057313154228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060538 (n + 1) * A194838 (A089759 (3 * (n + 1))).toNat

end

end A364506.P14706892057313154228

/-! ## A364506.P16074994684452220476

`A187783(2*A014132(n+1)-n)*A330749(A283314(n))`
-/

namespace A364506.P16074994684452220476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (2 * A014132 (n + 1) - (n : ℤ)).toNat * A330749 (A283314 n).toNat

end

end A364506.P16074994684452220476

/-!
# A364507: a(n) = (5*n)!*(4*n)! / ((3*n)!^2 * (2*n)! * n!).

The programs for A364507, the canonical program `A364507.P494326996507162261` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364507 has offset 0).

The definition of A364507 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364507.P494326996507162261

`C(4*n, n)*C(5*n, 2*n)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A364507

/-- `C(4*n, n)*C(5*n, 2*n)` -/
def P494326996507162261.Spec : Prop :=
  ∀ n, (P494326996507162261.a n : ℤ) = A364507 n

theorem P494326996507162261.correct : P494326996507162261.Spec := by
  intro n
  simp only [A364507]

end A364507

/-! ## A364507.P8895630546397099774

`A371400(A062725(n))`
-/

namespace A364507.P8895630546397099774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371400 (A062725 n).toNat

end

end A364507.P8895630546397099774

namespace A364507

/-- `A371400(A062725(n))` -/
def P8895630546397099774.Spec : Prop :=
  ∀ n, P8895630546397099774.a n = A364507 n

end A364507

/-! ## A364507.P14992931328532703043

`A371400(A062728(n))`
-/

namespace A364507.P14992931328532703043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371400 (A062728 n).toNat

end

end A364507.P14992931328532703043

namespace A364507

/-- `A371400(A062728(n))` -/
def P14992931328532703043.Spec : Prop :=
  ∀ n, P14992931328532703043.a n = A364507 n

end A364507

/-! ## A364507.P3701888035347962252

`A001450(n)*A005810(n)`
-/

namespace A364507.P3701888035347962252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001450 n * A005810 n

end

end A364507.P3701888035347962252

namespace A364507

/-- `A001450(n)*A005810(n)` -/
def P3701888035347962252.Spec : Prop :=
  ∀ n, P3701888035347962252.a n = A364507 n

theorem P3701888035347962252.correct : P3701888035347962252.Spec := by
  intro n
  simp only [A364507, Nat.add_sub_cancel, A364507.P3701888035347962252.a, A364507.P494326996507162261.a, A001450, A001450.P15480000550435913586.a, A005810, A005810.P5008475447009585536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A364507

/-! ## A364507.P13745515899009043956

`A005810(n)*A190152(∑[4*n])`
-/

namespace A364507.P13745515899009043956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005810 n * A190152 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A364507.P13745515899009043956

namespace A364507

/-- `A005810(n)*A190152(∑[4*n])` -/
def P13745515899009043956.Spec : Prop :=
  ∀ n, P13745515899009043956.a n = A364507 n

end A364507

/-!
# A364508: a(n) = (7*n)!*(6*n)!*(2*n)! / ((4*n)!^2 * (3*n)!^2 * n!).

The programs for A364508, there is no canonical definition to state claims against.
-/

/-! ## A364508.P16887912163187685485

`C(7*n, 3*n)*C(6*n, 3*n)*C(2*n, n)/C(4*n, n)`
-/

namespace A364508.P16887912163187685485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (7 * n) (3 * n) * Nat.choose (6 * n) (3 * n) * Nat.choose (2 * n) n : ℚ) / (Nat.choose (4 * n) n : ℚ)

end

end A364508.P16887912163187685485

/-! ## A364508.P2536389220470623922

`A364506(A052905(n+1)+1)`
-/

namespace A364508.P2536389220470623922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364506 (A052905 (n + 1) + 1).toNat

end

end A364508.P2536389220470623922

/-!
# A364510: a(n) = binomial(4*n, n)^2.

The programs for A364510, the canonical program `A364510.P12973199541091697625` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364510 has offset 0).

The definition of A364510 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*n, n)²` (program `A364510.P12973199541091697625`, by `A364510.P12973199541091697625.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A364510.P12973199541091697625

`C(4*n, n)²`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A364510

/-- `C(4*n, n)²` -/
def P12973199541091697625.Spec : Prop :=
  ∀ n, (P12973199541091697625.a n : ℤ) = A364510 n

theorem P12973199541091697625.correct : P12973199541091697625.Spec := by
  intro n
  simp only [A364510]

end A364510

/-! ## A364510.P6093659204316355

`A005810(n)²`
-/

namespace A364510.P6093659204316355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005810 n ^ 2

end

end A364510.P6093659204316355

namespace A364510

/-- `A005810(n)²` -/
def P6093659204316355.Spec : Prop :=
  ∀ n, P6093659204316355.a n = A364510 n

theorem P6093659204316355.correct : P6093659204316355.Spec := by
  intro n
  simp only [A364510, Nat.add_sub_cancel, A364510.P6093659204316355.a, A364510.P12973199541091697625.a, A005810, A005810.P5008475447009585536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A364510

/-! ## A364510.P1338446195244208292

`A119304(∑[n])²`
-/

namespace A364510.P1338446195244208292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119304 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A364510.P1338446195244208292

namespace A364510

/-- `A119304(∑[n])²` -/
def P1338446195244208292.Spec : Prop :=
  ∀ n, P1338446195244208292.a n = A364510 n

end A364510

/-! ## A364510.P6303561976852454843

`A264773(∑[n])²`
-/

namespace A364510.P6303561976852454843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264773 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A364510.P6303561976852454843

namespace A364510

/-- `A264773(∑[n])²` -/
def P6303561976852454843.Spec : Prop :=
  ∀ n, P6303561976852454843.a n = A364510 n

end A364510

/-! ## A364510.P7864447539307923587

`record[A119304(n)²]`
-/

namespace A364510.P7864447539307923587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119304 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364510.P7864447539307923587

namespace A364510

/-- `record[A119304(n)²]` -/
def P7864447539307923587.Spec : Prop :=
  ∀ n, P7864447539307923587.a n = A364510 n

end A364510

/-! ## A364510.P4702675292415989085

`record[A264773(n)²]`
-/

namespace A364510.P4702675292415989085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264773 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364510.P4702675292415989085

namespace A364510

/-- `record[A264773(n)²]` -/
def P4702675292415989085.Spec : Prop :=
  ∀ n, P4702675292415989085.a n = A364510 n

end A364510

/-! ## A364510.P8554896040603774838

`A051036(4*n)²`
-/

namespace A364510.P8554896040603774838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051036 (4 * n) ^ 2

end

end A364510.P8554896040603774838

namespace A364510

/-- `A051036(4*n)²` -/
def P8554896040603774838.Spec : Prop :=
  ∀ n, P8554896040603774838.a n = A364510 n

end A364510

/-! ## A364510.P8616924287100507693

`(1-A154918(∑[n]))²`
-/

namespace A364510.P8616924287100507693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A154918 (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A364510.P8616924287100507693

namespace A364510

/-- `(1-A154918(∑[n]))²` -/
def P8616924287100507693.Spec : Prop :=
  ∀ n, P8616924287100507693.a n = A364510 n

end A364510

/-! ## A364510.P15959439735777581616

`record[C(n, A110962(n))²]`
-/

namespace A364510.P15959439735777581616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A110962 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364510.P15959439735777581616

namespace A364510

/-- `record[C(n, A110962(n))²]` -/
def P15959439735777581616.Spec : Prop :=
  ∀ n, (P15959439735777581616.a n : ℤ) = A364510 n

end A364510

/-! ## A364510.P16643186774518860263

`record[C(n, A188134(n))²]`
-/

namespace A364510.P16643186774518860263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A188134 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364510.P16643186774518860263

namespace A364510

/-- `record[C(n, A188134(n))²]` -/
def P16643186774518860263.Spec : Prop :=
  ∀ n, (P16643186774518860263.a n : ℤ) = A364510 n

end A364510

/-!
# A364511: a(n) = (6*n)!*(5*n)!*(2*n)! / ((4*n)!^2 * (3*n)! * n!^2).

The programs for A364511, there is no canonical definition to state claims against.
-/

/-! ## A364511.P5639115518902589742

`C(6*n, 3*n)*C(5*n, n)*C(2*n, n)/C(4*n, n)`
-/

namespace A364511.P5639115518902589742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (6 * n) (3 * n) * Nat.choose (5 * n) n * Nat.choose (2 * n) n : ℚ) / (Nat.choose (4 * n) n : ℚ)

end

end A364511.P5639115518902589742

/-! ## A364511.P1712184160273719360

`A364509(∑[n+4]+2)`
-/

namespace A364511.P1712184160273719360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364509 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A364511.P1712184160273719360

/-!
# A364512: a(n) = (6*n)!^2/((5*n)! * (3*n)!^2 * n!).

The programs for A364512, there is no canonical definition to state claims against.
-/

/-! ## A364512.P14796224601092799674

`C(6*n, 3*n)*C(6*n, n)`
-/

namespace A364512.P14796224601092799674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (6 * n) (3 * n) * Nat.choose (6 * n) n

end

end A364512.P14796224601092799674

/-! ## A364512.P12918856388057751574

`A004355(n)*A066802(n)`
-/

namespace A364512.P12918856388057751574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004355 n * A066802 n

end

end A364512.P12918856388057751574

/-!
# A364514: a(0) = 1 and a(n) = [x^n] (1 - x)^(2*n) * Legendre_P(n-1, (1 + x)/(1 - x)) for n >= 1.

The programs for A364514, there is no canonical definition to state claims against.
-/

/-! ## A364514.P2839505078317637488

`A245086(n)-2*A361716(n)`
-/

namespace A364514.P2839505078317637488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245086 n - 2 * A361716 n

end

end A364514.P2839505078317637488

/-! ## A364514.P10321948374495598769

`A364513(∑[n+2]-1)`
-/

namespace A364514.P10321948374495598769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364513 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A364514.P10321948374495598769

/-!
# A364515: a(n) = (1/2) * (6*n)!*(2*n)!^2/((3*n)!*(4*n)!*n!^3) for n >= 1 with a(0) = 1.

The programs for A364515, there is no canonical definition to state claims against.
-/

/-! ## A364515.P3512757808231014772

`A088218(n)*A211419(n)`
-/

namespace A364515.P3512757808231014772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n * A211419 n

end

end A364515.P3512757808231014772

/-! ## A364515.P2816800797952493997

`A100100(A000217(n))*A211419(n)`
-/

namespace A364515.P2816800797952493997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100100 (A000217 n).toNat * A211419 n

end

end A364515.P2816800797952493997

/-! ## A364515.P10432400691323946102

`A038572(A092392(∑[n]))*A211419(n)`
-/

namespace A364515.P10432400691323946102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A092392 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat * A211419 n

end

end A364515.P10432400691323946102

/-! ## A364515.P17593418240334985912

`A038572(A159965(∑[n]))*A211419(n)`
-/

namespace A364515.P17593418240334985912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A159965 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat * A211419 n

end

end A364515.P17593418240334985912

/-! ## A364515.P11235165710571005916

`A038572(A210736(2*n+1))*A211419(n)`
-/

namespace A364515.P11235165710571005916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A210736 (2 * n + 1)).toNat * A211419 n

end

end A364515.P11235165710571005916

/-!
# A364516: a(n) = (2/3) * (8*n)!*(3*n)!^2/((6*n)!*(4*n)!*(2*n)!*n!^2) for n >= 1, with a(0) = 1.

The programs for A364516, there is no canonical definition to state claims against.
-/

/-! ## A364516.P8528462554217133488

`A364513(eq[6, A025581(n)])`
-/

namespace A364516.P8528462554217133488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364516.P8528462554217133488

/-!
# A364520: a(n) = (7*n)!*(n/2)!/((7*n/2)!*(n)!*(3*n)!).

The programs for A364520, there is no canonical definition to state claims against.
-/

/-! ## A364520.P14825403631326343371

`A054335(A139276(n))`
-/

namespace A364520.P14825403631326343371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 (A139276 n).toNat

end

end A364520.P14825403631326343371

/-! ## A364520.P17672643461452178461

`A054335(A033586(n)-n)`
-/

namespace A364520.P17672643461452178461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 (A033586 n - (n : ℤ)).toNat

end

end A364520.P17672643461452178461

/-! ## A364520.P13252636674378396213

`A054335(A046092(2*n)-n)`
-/

namespace A364520.P13252636674378396213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 (A046092 (2 * n) - (n : ℤ)).toNat

end

end A364520.P13252636674378396213

/-! ## A364520.P16636398028037795985

`A205813(A360416(n+1))`
-/

namespace A364520.P16636398028037795985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205813 (A360416 (n + 1)).toNat

end

end A364520.P16636398028037795985

/-! ## A364520.P12966899417521878439

`A205813(A077591(n+1)-n)`
-/

namespace A364520.P12966899417521878439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205813 (A077591 (n + 1) - (n : ℤ)).toNat

end

end A364520.P12966899417521878439

/-!
# A364522: G.f. satisfies A(x) = 1 + x*A(x) + x^5*A(x)^5.

The programs for A364522, there is no canonical definition to state claims against.
-/

/-! ## A364522.P15264309738473092681

`A353784(A003060(n))+A000389(n)`
-/

namespace A364522.P15264309738473092681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353784 (A003060 n).toNat + A000389 n

end

end A364522.P15264309738473092681

/-! ## A364522.P13904636348447213303

`A006585(A350447(n))+A000389(n)`
-/

namespace A364522.P13904636348447213303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006585 (A350447 n).toNat + A000389 n

end

end A364522.P13904636348447213303

/-! ## A364522.P4887472731887736878

`A347437(A279561(n))+A000389(n)`
-/

namespace A364522.P4887472731887736878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347437 (A279561 n).toNat + A000389 n

end

end A364522.P4887472731887736878

/-! ## A364522.P3582132356377825653

`A212384(n)-A180649(A179006(n))`
-/

namespace A364522.P3582132356377825653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212384 n - A180649 (A179006 n).toNat

end

end A364522.P3582132356377825653

/-! ## A364522.P8015050877660811787

`A184955(A005117(n+1))+A139398(n)`
-/

namespace A364522.P8015050877660811787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A005117 (n + 1)).toNat + A139398 n

end

end A364522.P8015050877660811787

/-!
# A364523: G.f. satisfies A(x) = 1 + x*A(x) + x^6*A(x)^6.

The programs for A364523, there is no canonical definition to state claims against.
-/

/-! ## A364523.P592484316570694804

`A047788(A213000(n))+A000579(n)`
-/

namespace A364523.P592484316570694804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047788 (A213000 n).toNat + A000579 n

end

end A364523.P592484316570694804

/-! ## A364523.P1054061207306084765

`A254440(A061674(n))+A000579(n)`
-/

namespace A364523.P1054061207306084765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254440 (A061674 n).toNat + A000579 n

end

end A364523.P1054061207306084765

/-! ## A364523.P9927162383784055232

`A212385(n)-A196082(A212390(n))`
-/

namespace A364523.P9927162383784055232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212385 n - A196082 (A212390 n).toNat

end

end A364523.P9927162383784055232

/-! ## A364523.P14080700380159790698

`A128084(A185284(3*n))+A000579(n)`
-/

namespace A364523.P14080700380159790698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128084 (A185284 (3 * n)).toNat + A000579 n

end

end A364523.P14080700380159790698

/-! ## A364523.P7478463707311061928

`A075900(A185037(2*n+1))+A000579(n)`
-/

namespace A364523.P7478463707311061928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075900 (A185037 (2 * n + 1)).toNat + A000579 n

end

end A364523.P7478463707311061928

/-!
# A364524: Expansion of e.g.f. (1-x)^3/(1-3x+2x^2-x^3).

The programs for A364524, there is no canonical definition to state claims against.
-/

/-! ## A364524.P6469288378711172802

`A026741(A288269(n))`
-/

namespace A364524.P6469288378711172802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A288269 n).toNat

end

end A364524.P6469288378711172802

/-! ## A364524.P2803489863200555757

`A004526(A288269(n)+1)`
-/

namespace A364524.P2803489863200555757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A288269 n + 1).toNat

end

end A364524.P2803489863200555757

/-!
# A364525: a(n) is the number of distinct ways to partition the set {1,2,...,n} into nonempty subsets such that the sum of the pi(x)*(pi(x) + 1)/2 values of each subset's size x equals n, where pi() is the prime counting function given by A000720.

The programs for A364525, there is no canonical definition to state claims against.
-/

/-! ## A364525.P10347820512001072735

`floor(sqrt(A337522(n)/2))`
-/

namespace A364525.P10347820512001072735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A337522 n : ℚ) / 2 : ℝ)⌋

end

end A364525.P10347820512001072735

/-! ## A364525.P15427734754204674413

`A135660(A050535(n))`
-/

namespace A364525.P15427734754204674413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A050535 n).toNat

end

end A364525.P15427734754204674413

/-! ## A364525.P10223281441750538508

`A259361(A275310(n))`
-/

namespace A364525.P10223281441750538508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A275310 n).toNat

end

end A364525.P10223281441750538508

/-! ## A364525.P17183113546235648593

`A265570(A289976(n))`
-/

namespace A364525.P17183113546235648593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265570 (A289976 n).toNat

end

end A364525.P17183113546235648593

/-! ## A364525.P7520229728982351395

`A135662(A124761(n)+A035349(n))`
-/

namespace A364525.P7520229728982351395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (A124761 n + A035349 n).toNat

end

end A364525.P7520229728982351395

/-!
# A364526: Number of compositions (ordered partitions) of n into parts not greater than sqrt(n).

The programs for A364526, there is no canonical definition to state claims against.
-/

/-! ## A364526.P5447745571866584291

`A004151(A369220(n))`
-/

namespace A364526.P5447745571866584291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A369220 n).toNat

end

end A364526.P5447745571866584291

/-! ## A364526.P14643650490045129523

`A369220(A055645(n))`
-/

namespace A364526.P14643650490045129523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369220 (A055645 n).toNat

end

end A364526.P14643650490045129523

/-! ## A364526.P5265127971420766813

`A369220(A341709(n))`
-/

namespace A364526.P5265127971420766813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369220 (A341709 n).toNat

end

end A364526.P5265127971420766813

/-! ## A364526.P18022804400515377763

`A369220(A262545(n+1))`
-/

namespace A364526.P18022804400515377763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369220 (A262545 (n + 1)).toNat

end

end A364526.P18022804400515377763

/-! ## A364526.P3140969684037493927

`A369220(n*A368873(n))`
-/

namespace A364526.P3140969684037493927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369220 ((n : ℤ) * A368873 n).toNat

end

end A364526.P3140969684037493927

/-!
# A364528: Number of 1's required to build -n using +, -, *, and parentheses.

The programs for A364528, there is no canonical definition to state claims against.
-/

/-! ## A364528.P1326333149810572459

`A070939(A378033(2*n+3)+A102309(2*(n+2)))`
-/

namespace A364528.P1326333149810572459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A378033 (2 * n + 3) + A102309 (2 * (n + 2))).toNat

end

end A364528.P1326333149810572459

/-! ## A364528.P4419274405508845691

`A029837(A122945(3*n+2)+A007438(2*(n+2)))`
-/

namespace A364528.P4419274405508845691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A122945 (3 * n + 2) + A007438 (2 * (n + 2))).toNat

end

end A364528.P4419274405508845691

/-! ## A364528.P12772174639967851542

`A070939(A003963(2*n+1)*A328335(2*(n+2)))`
-/

namespace A364528.P12772174639967851542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A003963 (2 * n + 1) * A328335 (2 * (n + 2))).toNat

end

end A364528.P12772174639967851542

/-! ## A364528.P6939578320123752142

`A246435(A324695(2*(n+1))+A136027(n+1))`
-/

namespace A364528.P6939578320123752142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246435 (A324695 (2 * (n + 1)) + A136027 (n + 1)).toNat

end

end A364528.P6939578320123752142

/-! ## A364528.P9554811130660135789

`A029837(A378037(3*n+2)+A007438(2*(n+2)))`
-/

namespace A364528.P9554811130660135789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A378037 (3 * n + 2) + A007438 (2 * (n + 2))).toNat

end

end A364528.P9554811130660135789

/-!
# A364533: Number of strict integer partitions of n containing the sum of no pair of distinct parts. A variation of sum-free strict partitions.

The programs for A364533, there is no canonical definition to state claims against.
-/

/-! ## A364533.P2747812210995802418

`A000009(n)-A364670(n)`
-/

namespace A364533.P2747812210995802418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A364670 n

end

end A364533.P2747812210995802418

/-! ## A364533.P1417187935589393438

`A111133(n)+1-A364670(n)`
-/

namespace A364533.P1417187935589393438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + 1 - A364670 n

end

end A364533.P1417187935589393438

/-! ## A364533.P12231875998856299331

`A172033(2*n)-A364670(n)`
-/

namespace A364533.P12231875998856299331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (2 * n) - A364670 n

end

end A364533.P12231875998856299331

/-! ## A364533.P7905532047459240665

`A238708(n)+A003114(n)-A364670(n)`
-/

namespace A364533.P7905532047459240665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238708 n + A003114 n - A364670 n

end

end A364533.P7905532047459240665

/-! ## A364533.P13594910358611526368

`A000041(n)-A047967(n)-A364670(n)`
-/

namespace A364533.P13594910358611526368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A047967 n - A364670 n

end

end A364533.P13594910358611526368

/-! ## A364533.P10238270704492460798

`A363226(n)+A364346(n)-A364670(n)`
-/

namespace A364533.P10238270704492460798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363226 n + (A364346 n - A364670 n)

end

end A364533.P10238270704492460798

/-!
# A364534: Number of subsets of {1..n} containing some element equal to the sum of two or more distinct other elements. A variation of sum-full subsets without re-used elements.

The programs for A364534, there is no canonical definition to state claims against.
-/

/-! ## A364534.P5859351378301505794

`2^n-A151897(n)`
-/

namespace A364534.P5859351378301505794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A151897 n

end

end A364534.P5859351378301505794

/-! ## A364534.P1245307720139977342

`abs(A000079(n)-A151897(n))`
-/

namespace A364534.P1245307720139977342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A151897 n|

end

end A364534.P1245307720139977342

/-! ## A364534.P1745294816422398835

`and(-A151897(n), A000225(n))`
-/

namespace A364534.P1745294816422398835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A151897 n) (A000225 n)

end

end A364534.P1745294816422398835

/-! ## A364534.P18198816083382036504

`A000051(n)-(A151897(n)+1)`
-/

namespace A364534.P18198816083382036504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A151897 n + 1)

end

end A364534.P18198816083382036504

/-! ## A364534.P4911037617803552615

`A085489(n)+A088809(n)-A151897(n)`
-/

namespace A364534.P4911037617803552615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085489 n + (A088809 n - A151897 n)

end

end A364534.P4911037617803552615

/-!
# A364536: Number of strict integer partitions of n where some part is a difference of two consecutive parts.

The programs for A364536, there is no canonical definition to state claims against.
-/

/-! ## A364536.P1795301862364412529

`A000009(n)-A364464(n)`
-/

namespace A364536.P1795301862364412529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A364464 n

end

end A364536.P1795301862364412529

/-! ## A364536.P11903807768466184218

`abs(A081360(n))-A364464(n)`
-/

namespace A364536.P11903807768466184218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A364464 n

end

end A364536.P11903807768466184218

/-! ## A364536.P3898493326397505879

`A111133(n)+1-A364464(n)`
-/

namespace A364536.P3898493326397505879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (1 - A364464 n)

end

end A364536.P3898493326397505879

/-! ## A364536.P11196119514483767322

`A172033(2*n)-A364464(n)`
-/

namespace A364536.P11196119514483767322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (2 * n) - A364464 n

end

end A364536.P11196119514483767322

/-! ## A364536.P9983420810944277408

`A364916(A000217(n))-A364464(n)`
-/

namespace A364536.P9983420810944277408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 (A000217 n).toNat - A364464 n

end

end A364536.P9983420810944277408

/-! ## A364536.P16794801651713140366

`A240855(n)+A240861(n)-A364464(n)`
-/

namespace A364536.P16794801651713140366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240855 n + (A240861 n - A364464 n)

end

end A364536.P16794801651713140366

/-! ## A364536.P9415955836715455162

`A364272(n)+A364349(n)-A364464(n)`
-/

namespace A364536.P9415955836715455162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364272 n + (A364349 n - A364464 n)

end

end A364536.P9415955836715455162

/-!
# A364537: Heinz numbers of integer partitions where some part is the difference of two consecutive parts.

The programs for A364537, there is no canonical definition to state claims against.
-/

/-! ## A364537.P5469895905505380853

`∪[A350845(n+1), A364462(n+1)]`
-/

namespace A364537.P5469895905505380853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364537.P5469895905505380853

/-! ## A364537.P12730412144574941036

`A364348(comp[A308759(n)-11*n])`
-/

namespace A364537.P12730412144574941036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308759 n - (11 * n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364348 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A364537.P12730412144574941036

/-!
# A364539: G.f. satisfies A(x) = 1 + x*A(x) + x^3*A(x)^5.

The programs for A364539, there is no canonical definition to state claims against.
-/

/-! ## A364539.P15805077166328274750

`or(A008929(n+1), A340854(A126757(n+1)))`
-/

namespace A364539.P15805077166328274750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008929 (n + 1)) (A340854 (A126757 (n + 1)).toNat)

end

end A364539.P15805077166328274750

/-! ## A364539.P14316153126677006038

`A380059(A032557(n+1))+A335803(A367342(n+1))`
-/

namespace A364539.P14316153126677006038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380059 (A032557 (n + 1)).toNat + A335803 (A367342 (n + 1)).toNat

end

end A364539.P14316153126677006038

/-! ## A364539.P16069226818844197111

`A380059(A032563(n+1))+A335803(A367342(n+1))`
-/

namespace A364539.P16069226818844197111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380059 (A032563 (n + 1)).toNat + A335803 (A367342 (n + 1)).toNat

end

end A364539.P16069226818844197111

/-!
# A364540: Numbers k for which A005940(k) < k.

The programs for A364540, there is no canonical definition to state claims against.
-/

/-! ## A364540.P11137607840088084931

`1+A356450(n+1)`
-/

namespace A364540.P11137607840088084931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A356450 (n + 1)

end

end A364540.P11137607840088084931

/-! ## A364540.P986530884244052391

`∩[A004751(n+1), A364541(n+1)]`
-/

namespace A364540.P986530884244052391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364540.P986530884244052391

/-! ## A364540.P17827756226411880031

`lt[A005940(n+1), n]+1`
-/

namespace A364540.P17827756226411880031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A364540.P17827756226411880031

/-! ## A364540.P13614969863237039414

`A020725(A356450(n+1))`
-/

namespace A364540.P13614969863237039414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A356450 (n + 1)).toNat

end

end A364540.P13614969863237039414

/-! ## A364540.P11511733927451409080

`lt[A005940(A028310(n)), n]`
-/

namespace A364540.P11511733927451409080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A364540.P11511733927451409080

/-! ## A364540.P8439090953257956082

`A153152(lt[A005940(n+1), n])`
-/

namespace A364540.P8439090953257956082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A364540.P8439090953257956082

/-! ## A364540.P5529550206334122480

`∩[A161992(n+1), A364541(n+1)]`
-/

namespace A364540.P5529550206334122480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364540.P5529550206334122480

/-! ## A364540.P17401798787510043731

`A005941(A356455(n+1))`
-/

namespace A364540.P17401798787510043731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (A356455 (n + 1)).toNat

end

end A364540.P17401798787510043731

/-!
# A364541: Numbers k for which A005940(k) <= k.

The programs for A364541, there is no canonical definition to state claims against.
-/

/-! ## A364541.P13766164834135381876

`∪[A029747(n+1), A364540(n+1)]`
-/

namespace A364541.P13766164834135381876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364541.P13766164834135381876

/-! ## A364541.P5562715984380418862

`∪[A048645(n+1), A364540(n+1)]`
-/

namespace A364541.P5562715984380418862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364541.P5562715984380418862

/-! ## A364541.P10822695941706007518

`∪[A364540(n+1), A364546(n+1)]`
-/

namespace A364541.P10822695941706007518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364541.P10822695941706007518

/-! ## A364541.P8382916915285908170

`lt[A324394(n)*A324395(n), n+2]+1`
-/

namespace A364541.P8382916915285908170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324394 n * A324395 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A364541.P8382916915285908170

/-! ## A364541.P9754015847702670593

`lt[A364499(n+1), 1]+1`
-/

namespace A364541.P9754015847702670593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364499 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A364541.P9754015847702670593

/-! ## A364541.P5628801768063726691

`lt[A005940(n+1), n+2]+1`
-/

namespace A364541.P5628801768063726691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A364541.P5628801768063726691

/-! ## A364541.P17684250100801336588

`lt[A005940(A028310(n)), n+1]`
-/

namespace A364541.P17684250100801336588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A364541.P17684250100801336588

/-! ## A364541.P9992276776705550712

`lt[A366260(A303768(n)), A004526(2*(n+2))]+1`
-/

namespace A364541.P9992276776705550712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366260 (A303768 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A364541.P9992276776705550712

/-! ## A364541.P12696332738055041232

`lt[(A324055(n)+A324054(n))/2, A004526(2*(n+2))]+1`
-/

namespace A364541.P12696332738055041232
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324055 n + A324054 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A364541.P12696332738055041232

/-!
# A364542: Numbers k for which A005940(k) >= k.

The programs for A364542, the canonical program `A364542.P8346645904742885432` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364542 has offset 1).

The definition of A364542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364542.P3084542980599576778

`comp[A356450(n+1)]+1`
-/

namespace A364542.P3084542980599576778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A364542.P3084542980599576778

namespace A364542

/-- `comp[A356450(n+1)]+1` -/
def P3084542980599576778.Spec : Prop :=
  ∀ n, (P3084542980599576778.a n : ℤ) = A364542 (n + 1)

end A364542

/-! ## A364542.P12441392810236044245

`comp[A364540(n+1)-1]+1`
-/

namespace A364542.P12441392810236044245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364540 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A364542.P12441392810236044245

namespace A364542

/-- `comp[A364540(n+1)-1]+1` -/
def P12441392810236044245.Spec : Prop :=
  ∀ n, (P12441392810236044245.a n : ℤ) = A364542 (n + 1)

end A364542

/-! ## A364542.P8346645904742885432

`lt[n, A324394(n)*A324395(n)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A364542

/-- `lt[n, A324394(n)*A324395(n)]+1` -/
def P8346645904742885432.Spec : Prop :=
  ∀ n, (P8346645904742885432.a n : ℤ) = A364542 (n + 1)

theorem P8346645904742885432.correct : P8346645904742885432.Spec := by
  intro n
  simp only [A364542, Nat.add_sub_cancel]

end A364542

/-! ## A364542.P13934727885570641189

`lt[n, A005940(n+1)]+1`
-/

namespace A364542.P13934727885570641189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A364542.P13934727885570641189

namespace A364542

/-- `lt[n, A005940(n+1)]+1` -/
def P13934727885570641189.Spec : Prop :=
  ∀ n, (P13934727885570641189.a n : ℤ) = A364542 (n + 1)

end A364542

/-! ## A364542.P3037751453001572743

`eq[1, A286101(floor(n/A005940(n+1))+1)]+1`
-/

namespace A364542.P3037751453001572743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286101 (⌊(n : ℚ) / (A005940 (n + 1) : ℚ)⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A364542.P3037751453001572743

namespace A364542

/-- `eq[1, A286101(floor(n/A005940(n+1))+1)]+1` -/
def P3037751453001572743.Spec : Prop :=
  ∀ n, (P3037751453001572743.a n : ℤ) = A364542 (n + 1)

end A364542

/-! ## A364542.P4947899877983044623

`lt[A190858(n+1), A261695(n)]`
-/

namespace A364542.P4947899877983044623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A364542.P4947899877983044623

namespace A364542

/-- `lt[A190858(n+1), A261695(n)]` -/
def P4947899877983044623.Spec : Prop :=
  ∀ n, (P4947899877983044623.a n : ℤ) = A364542 (n + 1)

end A364542

/-! ## A364542.P9908863444091918475

`lt[A022856(n+1), A007865(A139251(n))]`
-/

namespace A364542.P9908863444091918475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007865 (A139251 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A364542.P9908863444091918475

namespace A364542

/-- `lt[A022856(n+1), A007865(A139251(n))]` -/
def P9908863444091918475.Spec : Prop :=
  ∀ n, (P9908863444091918475.a n : ℤ) = A364542 (n + 1)

end A364542

/-!
# A364543: Odd numbers k for which A005940(k) <= k.

The programs for A364543, there is no canonical definition to state claims against.
-/

/-! ## A364543.P8735117140289797617

`∩[2*n+1, A364541(n+1)]`
-/

namespace A364543.P8735117140289797617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364543.P8735117140289797617

/-! ## A364543.P1290702929802922075

`record[A093178(A364541(n+1))]`
-/

namespace A364543.P1290702929802922075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A364541 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364543.P1290702929802922075

/-! ## A364543.P13881506203139986358

`∩[A364541(n+1), A004273(n)]`
-/

namespace A364543.P13881506203139986358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364543.P13881506203139986358

/-! ## A364543.P12955926040171497971

`∩[A364541(n+1), A060747(n)]`
-/

namespace A364543.P12955926040171497971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364543.P12955926040171497971

/-! ## A364543.P14082205382854187634

`filter[A364541(n+1), A000035(#)]`
-/

namespace A364543.P14082205382854187634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A364543.P14082205382854187634

/-!
# A364544: Numbers k such that k divides A005940(k).

The programs for A364544, there is no canonical definition to state claims against.
-/

/-! ## A364544.P15087477157546166967

`record[A364500(n+1)]`
-/

namespace A364544.P15087477157546166967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364544.P15087477157546166967

/-! ## A364544.P977396534504646720

`eq[1, A364501(n+1)]+1`
-/

namespace A364544.P977396534504646720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364501 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A364544.P977396534504646720

/-! ## A364544.P7091408482433207272

`A364500(eq[n+1, A364500(n+1)]+1)`
-/

namespace A364544.P7091408482433207272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A364544.P7091408482433207272

/-! ## A364544.P8401350803913164518

`record[gcd(n+1, A005940(n+1))]`
-/

namespace A364544.P8401350803913164518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A005940 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364544.P8401350803913164518

/-! ## A364544.P15533624643842925000

`record[A005940(n+1)/A364502(n+1)]`
-/

namespace A364544.P15533624643842925000
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (n + 1) : ℚ) / (A364502 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364544.P15533624643842925000

/-!
# A364545: Odd numbers k such that k divides A005940(k).

The programs for A364545, there is no canonical definition to state claims against.
-/

/-! ## A364545.P5941752479205621820

`∩[A364544(n+1), A364561(n+1)]`
-/

namespace A364545.P5941752479205621820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364545.P5941752479205621820

/-! ## A364545.P11261686703792769032

`record[A000265(A364544(n+1))]`
-/

namespace A364545.P11261686703792769032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A364544 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364545.P11261686703792769032

/-! ## A364545.P16658020206377016723

`∩[A062505(n+1), A364544(n+1)]`
-/

namespace A364545.P16658020206377016723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364545.P16658020206377016723

/-! ## A364545.P4972311090663439881

`∩[A176847(n+1), A364544(n+1)]`
-/

namespace A364545.P4972311090663439881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364545.P4972311090663439881

/-! ## A364545.P6555032231361323204

`∩[A004273(n), A364544(n+1)]`
-/

namespace A364545.P6555032231361323204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364545.P6555032231361323204

/-!
# A364546: Numbers k such that k is a multiple of A005940(k).

The programs for A364546, there is no canonical definition to state claims against.
-/

/-! ## A364546.P18295257980995034990

`eq[1, A365431(n+1)]+1`
-/

namespace A364546.P18295257980995034990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365431 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A364546.P18295257980995034990

/-!
# A364548: Numbers k such that k divides A005941(k).

The programs for A364548, there is no canonical definition to state claims against.
-/

/-! ## A364548.P8230870542115276762

`record[gcd(n+1, A005941(n+1))]`
-/

namespace A364548.P8230870542115276762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A005941 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364548.P8230870542115276762

/-! ## A364548.P3239803829091580883

`record[gcd(A000027(n+1), A364559(n+1))]`
-/

namespace A364548.P3239803829091580883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A364559 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364548.P3239803829091580883

/-! ## A364548.P6527976944010197617

`eq[A277314(n), A284002(n)]`
-/

namespace A364548.P6527976944010197617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277314 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284002 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364548.P6527976944010197617

/-!
# A364549: Odd numbers k that divide A005941(k).

The programs for A364549, there is no canonical definition to state claims against.
-/

/-! ## A364549.P6453306926035642253

`∩[2*n+1, A364548(n+1)]`
-/

namespace A364549.P6453306926035642253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364549.P6453306926035642253

/-! ## A364549.P4035311148649133200

`filter[A364548(n+1), A000035(#)]`
-/

namespace A364549.P4035311148649133200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A364549.P4035311148649133200

/-! ## A364549.P7356874948637707100

`filter[A364548(n+1), A374134(#)]`
-/

namespace A364549.P7356874948637707100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A364549.P7356874948637707100

/-!
# A364551: Odd numbers k such that k is a multiple of A005941(k).

The programs for A364551, there is no canonical definition to state claims against.
-/

/-! ## A364551.P15354360359270713854

`record[A000265(A364550(n+1))]`
-/

namespace A364551.P15354360359270713854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A364550 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364551.P15354360359270713854

/-! ## A364551.P7351719604751794291

`∩[A108347(n+1), A364550(n+1)]`
-/

namespace A364551.P7351719604751794291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364551.P7351719604751794291

/-!
# A364552: G.f. satisfies A(x) = 1 + x*A(x) + x^4*A(x)^3.

The programs for A364552, there is no canonical definition to state claims against.
-/

/-! ## A364552.P9844165535980879004

`∑[A364403(n)]`
-/

namespace A364552.P9844165535980879004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364403 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364552.P9844165535980879004

/-! ## A364552.P6492901102777670655

`A157271(A393246(n))`
-/

namespace A364552.P6492901102777670655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A393246 n).toNat

end

end A364552.P6492901102777670655

/-! ## A364552.P4462459750025668400

`A157271(A364591(n)+A144700(n))`
-/

namespace A364552.P4462459750025668400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A364591 n + A144700 n).toNat

end

end A364552.P4462459750025668400

/-! ## A364552.P12869832773037241781

`A167662(A003522(n))`
-/

namespace A364552.P12869832773037241781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167662 (A003522 n).toNat

end

end A364552.P12869832773037241781

/-! ## A364552.P6591891357366805100

`A359415(A112805(n+2))`
-/

namespace A364552.P6591891357366805100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359415 (A112805 (n + 2)).toNat

end

end A364552.P6591891357366805100

/-!
# A364553: Number of edges in the n-Pell graph.

The programs for A364553, the canonical program `A364553.P11336014436204490130` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364553 has offset 0).

The definition of A364553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364553.P11336014436204490130

`4*a(n-1)-2*a(n-2)-4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=18`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A364553

/-- `4*a(n-1)-2*a(n-2)-4*a(n-3)-a(n-4)` -/
def P11336014436204490130.Spec : Prop :=
  ∀ n, P11336014436204490130.a n = A364553 n

theorem P11336014436204490130.correct : P11336014436204490130.Spec := by
  intro n
  simp only [A364553]

end A364553

/-! ## A364553.P225598082056809457

`n*A000129(n+1)/2`
-/

namespace A364553.P225598082056809457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A000129 (n + 1) : ℚ) / 2

end

end A364553.P225598082056809457

namespace A364553

/-- `n*A000129(n+1)/2` -/
def P225598082056809457.Spec : Prop :=
  ∀ n, P225598082056809457.a n = (A364553 n : ℚ)

end A364553

/-! ## A364553.P15213246779078389057

`(A093967(n)+A364636(n))/2`
-/

namespace A364553.P15213246779078389057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093967 n + A364636 n : ℚ) / 2

end

end A364553.P15213246779078389057

namespace A364553

/-- `(A093967(n)+A364636(n))/2` -/
def P15213246779078389057.Spec : Prop :=
  ∀ n, P15213246779078389057.a n = (A364553 n : ℚ)

theorem P15213246779078389057.correct : P15213246779078389057.Spec := by
  intro n
  simp only [A364553, Nat.add_sub_cancel, A364553.P15213246779078389057.a, A364553.P11336014436204490130.a, A093967, A093967.P7229199660564859914.a, A364636, A364636.P14583533737754547880.a, A000129, A000129.P3563729298025900801.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A364553

/-! ## A364553.P16917420506276956339

`ogf((x+x^2)/(1-4x+2x^2+4x^3+x^4))`
-/

namespace A364553.P16917420506276956339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -4, 2, 4, 1] n

end

end A364553.P16917420506276956339

namespace A364553

/-- `ogf((x+x^2)/(1-4x+2x^2+4x^3+x^4))` -/
def P16917420506276956339.Spec : Prop :=
  ∀ n, P16917420506276956339.a n = A364553 n

end A364553

/-! ## A364553.P17124761355619422482

`∑[A119915(n)]`
-/

namespace A364553.P17124761355619422482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364553.P17124761355619422482

namespace A364553

/-- `∑[A119915(n)]` -/
def P17124761355619422482.Spec : Prop :=
  ∀ n, P17124761355619422482.a n = A364553 n

end A364553

/-! ## A364553.P16951311223056243376

`n/2*∑[A001333(n)]`
-/

namespace A364553.P16951311223056243376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A364553.P16951311223056243376

namespace A364553

/-- `n/2*∑[A001333(n)]` -/
def P16951311223056243376.Spec : Prop :=
  ∀ n, P16951311223056243376.a n = (A364553 n : ℚ)

end A364553

/-! ## A364553.P14774967190336185102

`n/2*A215928(n+1)`
-/

namespace A364553.P14774967190336185102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A215928 (n + 1) : ℚ)

end

end A364553.P14774967190336185102

namespace A364553

/-- `n/2*A215928(n+1)` -/
def P14774967190336185102.Spec : Prop :=
  ∀ n, P14774967190336185102.a n = (A364553 n : ℚ)

end A364553

/-! ## A364553.P15492968285064387660

`A026741(n)*A041011(n)`
-/

namespace A364553.P15492968285064387660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n * A041011 n

end

end A364553.P15492968285064387660

namespace A364553

/-- `A026741(n)*A041011(n)` -/
def P15492968285064387660.Spec : Prop :=
  ∀ n, P15492968285064387660.a n = A364553 n

end A364553

/-! ## A364553.P17025748059757118051

`∑[A331321(n)-A052542(n)]`
-/

namespace A364553.P17025748059757118051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331321 n - A052542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364553.P17025748059757118051

namespace A364553

/-- `∑[A331321(n)-A052542(n)]` -/
def P17025748059757118051.Spec : Prop :=
  ∀ n, P17025748059757118051.a n = A364553 n

end A364553

/-! ## A364553.P16022998765267194098

`A006645(n+1)+A006645(n)`
-/

namespace A364553.P16022998765267194098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n + 1) + A006645 n

end

end A364553.P16022998765267194098

namespace A364553

/-- `A006645(n+1)+A006645(n)` -/
def P16022998765267194098.Spec : Prop :=
  ∀ n, P16022998765267194098.a n = A364553 n

end A364553

/-! ## A364553.P10326243574646048819

`A026937(n)-A000129(n+1)`
-/

namespace A364553.P10326243574646048819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026937 n - A000129 (n + 1)

end

end A364553.P10326243574646048819

namespace A364553

/-- `A026937(n)-A000129(n+1)` -/
def P10326243574646048819.Spec : Prop :=
  ∀ n, P10326243574646048819.a n = A364553 n

end A364553

/-! ## A364553.P11212247567404087455

`A093967(n+1)-A026937(n)`
-/

namespace A364553.P11212247567404087455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093967 (n + 1) - A026937 n

end

end A364553.P11212247567404087455

namespace A364553

/-- `A093967(n+1)-A026937(n)` -/
def P11212247567404087455.Spec : Prop :=
  ∀ n, P11212247567404087455.a n = A364553 n

end A364553

/-! ## A364553.P9559209683860168456

`A026937(n)-A215928(n+1)`
-/

namespace A364553.P9559209683860168456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026937 n - A215928 (n + 1)

end

end A364553.P9559209683860168456

namespace A364553

/-- `A026937(n)-A215928(n+1)` -/
def P9559209683860168456.Spec : Prop :=
  ∀ n, P9559209683860168456.a n = A364553 n

end A364553

/-! ## A364553.P12893310960997881450

`A026937(n)+A054447(n)-A292327(n)`
-/

namespace A364553.P12893310960997881450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026937 n + (A054447 n - A292327 n)

end

end A364553.P12893310960997881450

namespace A364553

/-- `A026937(n)+A054447(n)-A292327(n)` -/
def P12893310960997881450.Spec : Prop :=
  ∀ n, P12893310960997881450.a n = A364553 n

end A364553

/-! ## A364553.P16331021670545470429

`A026937(n)-A000129(n)-A001333(n)`
-/

namespace A364553.P16331021670545470429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026937 n - A000129 n - A001333 n

end

end A364553.P16331021670545470429

namespace A364553

/-- `A026937(n)-A000129(n)-A001333(n)` -/
def P16331021670545470429.Spec : Prop :=
  ∀ n, P16331021670545470429.a n = A364553 n

end A364553

/-! ## A364553.P11411791612943991858

`A026937(n)+A088210(n)-A088211(n+1)`
-/

namespace A364553.P11411791612943991858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026937 n + (A088210 n - A088211 (n + 1))

end

end A364553.P11411791612943991858

namespace A364553

/-- `A026937(n)+A088210(n)-A088211(n+1)` -/
def P11411791612943991858.Spec : Prop :=
  ∀ n, P11411791612943991858.a n = A364553 n

end A364553

/-! ## A364553.P2579243444903651882

`A286814(n+1)+A292327(n)-A292327(n+1)`
-/

namespace A364553.P2579243444903651882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286814 (n + 1) + (A292327 n - A292327 (n + 1))

end

end A364553.P2579243444903651882

namespace A364553

/-- `A286814(n+1)+A292327(n)-A292327(n+1)` -/
def P2579243444903651882.Spec : Prop :=
  ∀ n, P2579243444903651882.a n = A364553 n

end A364553

/-! ## A364553.P1774960788878867324

`A093967(n+1)/A036289(n+1)*A036289(n)`
-/

namespace A364553.P1774960788878867324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093967 (n + 1) : ℚ) / (A036289 (n + 1) : ℚ) * (A036289 n : ℚ)

end

end A364553.P1774960788878867324

namespace A364553

/-- `A093967(n+1)/A036289(n+1)*A036289(n)` -/
def P1774960788878867324.Spec : Prop :=
  ∀ n, P1774960788878867324.a n = (A364553 n : ℚ)

end A364553

/-! ## A364553.P7966261511863469784

`A209687(∑[n+2])`
-/

namespace A364553.P7966261511863469784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209687 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A364553.P7966261511863469784

namespace A364553

/-- `A209687(∑[n+2])` -/
def P7966261511863469784.Spec : Prop :=
  ∀ n, P7966261511863469784.a n = A364553 n

end A364553

/-!
# A364554: a(n) = number of primes of the form T(k)/n, for some k, where T(k)=A000217(k) is a triangular number.

The programs for A364554, there is no canonical definition to state claims against.
-/

/-! ## A364554.P10778197216165724168

`A344617(A323351(n))+A001227(n+1)`
-/

namespace A364554.P10778197216165724168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344617 (A323351 n).toNat + A001227 (n + 1)

end

end A364554.P10778197216165724168

/-! ## A364554.P13068882737620753469

`A328966(A001358(2*n+3))+A295890(n)`
-/

namespace A364554.P13068882737620753469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328966 (A001358 (2 * n + 3)).toNat + A295890 n

end

end A364554.P13068882737620753469

/-! ## A364554.P8010311488068722301

`A124760(A040331(3*n)*A249707(n+3))`
-/

namespace A364554.P8010311488068722301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A040331 (3 * n) * A249707 (n + 3)).toNat

end

end A364554.P8010311488068722301

/-! ## A364554.P5485476769593523117

`A010882(A304712(n)*A347877(3*n+4))`
-/

namespace A364554.P5485476769593523117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A304712 n * A347877 (3 * n + 4)).toNat

end

end A364554.P5485476769593523117

/-! ## A364554.P17987581205558570294

`A344088(and(A000203(n+1), A284116(3*(n+1))))`
-/

namespace A364554.P17987581205558570294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344088 (Int.land (A000203 (n + 1)) (A284116 (3 * (n + 1)))).toNat

end

end A364554.P17987581205558570294

/-!
# A364555: Numbers m such that no triangular number is m times a prime.

The programs for A364555, there is no canonical definition to state claims against.
-/

/-! ## A364555.P9668948681361231268

`eq[0, A364554(n+1)]+1`
-/

namespace A364555.P9668948681361231268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364554 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A364555.P9668948681361231268

/-!
# A364556: Number of tilings of a 5 X n rectangle using dominoes and trominoes (of any shape).

The programs for A364556, there is no canonical definition to state claims against.
-/

/-! ## A364556.P6324074375690069053

`A364457(A141214(n+2)+8)`
-/

namespace A364556.P6324074375690069053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (A141214 (n + 2) + 8).toNat

end

end A364556.P6324074375690069053

/-! ## A364556.P422559234929550852

`A364457(eq[5, A130270(n+1)])`
-/

namespace A364556.P422559234929550852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364556.P422559234929550852

/-! ## A364556.P11157426104534036870

`A364457(eq[6, A346533(n+1)])`
-/

namespace A364556.P11157426104534036870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364556.P11157426104534036870

/-! ## A364556.P17367041837456114333

`A364457(A034856(n+4)+n+2)`
-/

namespace A364556.P17367041837456114333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (A034856 (n + 4) + (n + 2 : ℤ)).toNat

end

end A364556.P17367041837456114333

/-! ## A364556.P2104127937380205819

`A364457(abs(A000096(n+5)-7)+2)`
-/

namespace A364556.P2104127937380205819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (|A000096 (n + 5) - 7| + 2).toNat

end

end A364556.P2104127937380205819

/-!
# A364557: Möbius transform of A005941.

The programs for A364557, the canonical program `A364557.P16113127302810243144` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364557 has offset 1).

The definition of A364557 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297167, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364557.P16113127302810243144

`2^A297167(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A364557

/-- `2^A297167(n+1)` -/
def P16113127302810243144.Spec : Prop :=
  ∀ n, P16113127302810243144.a n = (A364557 (n + 1) : ℚ)

end A364557

/-! ## A364557.P5438946903208476823

`2^((A297113(n+1)-1)%(n+1))`
-/

namespace A364557.P5438946903208476823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod (A297113 (n + 1) - 1) (n + 1 : ℤ) : ℤ)

end

end A364557.P5438946903208476823

namespace A364557

/-- `2^((A297113(n+1)-1)%(n+1))` -/
def P5438946903208476823.Spec : Prop :=
  ∀ n, P5438946903208476823.a n = (A364557 (n + 1) : ℚ)

end A364557

/-! ## A364557.P8655023303639463566

`A000079(A297167(n+1))`
-/

namespace A364557.P8655023303639463566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A297167 (n + 1)).toNat

end

end A364557.P8655023303639463566

namespace A364557

/-- `A000079(A297167(n+1))` -/
def P8655023303639463566.Spec : Prop :=
  ∀ n, P8655023303639463566.a n = A364557 (n + 1)

end A364557

/-! ## A364557.P7993124934827741155

`A011782(A297113(n+1))`
-/

namespace A364557.P7993124934827741155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A297113 (n + 1)).toNat

end

end A364557.P7993124934827741155

namespace A364557

/-- `A011782(A297113(n+1))` -/
def P7993124934827741155.Spec : Prop :=
  ∀ n, P7993124934827741155.a n = A364557 (n + 1)

end A364557

/-! ## A364557.P735629767025149376

`A297112(A028310(n)+1)`
-/

namespace A364557.P735629767025149376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297112 (A028310 n + 1).toNat

end

end A364557.P735629767025149376

namespace A364557

/-- `A297112(A028310(n)+1)` -/
def P735629767025149376.Spec : Prop :=
  ∀ n, P735629767025149376.a n = A364557 (n + 1)

end A364557

/-! ## A364557.P1846285848497290628

`A297112(A254667(n+1))`
-/

namespace A364557.P1846285848497290628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297112 (A254667 (n + 1)).toNat

end

end A364557.P1846285848497290628

namespace A364557

/-- `A297112(A254667(n+1))` -/
def P1846285848497290628.Spec : Prop :=
  ∀ n, P1846285848497290628.a n = A364557 (n + 1)

end A364557

/-! ## A364557.P17360966352553474218

`A297112(A054977(n)+n)`
-/

namespace A364557.P17360966352553474218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297112 (A054977 n + (n : ℤ)).toNat

end

end A364557.P17360966352553474218

namespace A364557

/-- `A297112(A054977(n)+n)` -/
def P17360966352553474218.Spec : Prop :=
  ∀ n, P17360966352553474218.a n = A364557 (n + 1)

end A364557

/-! ## A364557.P15746251661927691375

`A297112(n+1)+A000007(n)`
-/

namespace A364557.P15746251661927691375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297112 (n + 1) + A000007 n

end

end A364557.P15746251661927691375

namespace A364557

/-- `A297112(n+1)+A000007(n)` -/
def P15746251661927691375.Spec : Prop :=
  ∀ n, P15746251661927691375.a n = A364557 (n + 1)

end A364557

/-! ## A364557.P17253817689589264711

`A364558(n+1)+A000010(n+1)`
-/

namespace A364557.P17253817689589264711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364558 (n + 1) + A000010 (n + 1)

end

end A364557.P17253817689589264711

namespace A364557

/-- `A364558(n+1)+A000010(n+1)` -/
def P17253817689589264711.Spec : Prop :=
  ∀ n, P17253817689589264711.a n = A364557 (n + 1)

end A364557

/-! ## A364557.P7932922373928549952

`A297112(lcm(2, n+1))`
-/

namespace A364557.P7932922373928549952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297112 (Nat.lcm 2 (n + 1))

end

end A364557.P7932922373928549952

namespace A364557

/-- `A297112(lcm(2, n+1))` -/
def P7932922373928549952.Spec : Prop :=
  ∀ n, P7932922373928549952.a n = A364557 (n + 1)

end A364557

/-! ## A364557.P11002178200155388729

`A297112(A109043(n+1))`
-/

namespace A364557.P11002178200155388729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297112 (A109043 (n + 1)).toNat

end

end A364557.P11002178200155388729

namespace A364557

/-- `A297112(A109043(n+1))` -/
def P11002178200155388729.Spec : Prop :=
  ∀ n, P11002178200155388729.a n = A364557 (n + 1)

end A364557

/-! ## A364557.P4055182032094176908

`A297112(A233583(n+2))`
-/

namespace A364557.P4055182032094176908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297112 (A233583 (n + 2)).toNat

end

end A364557.P4055182032094176908

namespace A364557

/-- `A297112(A233583(n+2))` -/
def P4055182032094176908.Spec : Prop :=
  ∀ n, P4055182032094176908.a n = A364557 (n + 1)

end A364557

/-! ## A364557.P1237642245306332972

`gcd(A009116(n), A297112(n+1))`
-/

namespace A364557.P1237642245306332972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009116 n) (A297112 (n + 1))

end

end A364557.P1237642245306332972

namespace A364557

/-- `gcd(A009116(n), A297112(n+1))` -/
def P1237642245306332972.Spec : Prop :=
  ∀ n, (P1237642245306332972.a n : ℤ) = A364557 (n + 1)

end A364557

/-! ## A364557.P11867689468622498338

`gcd(A000079(n), A297106(n+1))`
-/

namespace A364557.P11867689468622498338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A297106 (n + 1))

end

end A364557.P11867689468622498338

namespace A364557

/-- `gcd(A000079(n), A297106(n+1))` -/
def P11867689468622498338.Spec : Prop :=
  ∀ n, (P11867689468622498338.a n : ℤ) = A364557 (n + 1)

end A364557

/-! ## A364557.P4745411052452329719

`gcd(A297112(n+1)+A003945(n), A003945(n))`
-/

namespace A364557.P4745411052452329719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A297112 (n + 1) + A003945 n) (A003945 n)

end

end A364557.P4745411052452329719

namespace A364557

/-- `gcd(A297112(n+1)+A003945(n), A003945(n))` -/
def P4745411052452329719.Spec : Prop :=
  ∀ n, (P4745411052452329719.a n : ℤ) = A364557 (n + 1)

end A364557

/-!
# A364558: a(n) = A364557(n) - A000010(n), where A364557 is the Möbius transform of A005941, and A000010 (Euler phi) is the Möbius transform of A000027.

The programs for A364558, the canonical program `A364558.P4794245862484388362` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364558 has offset 1).

The definition of A364558 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A364557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364558.P4794245862484388362

`A364557(n+1)-A000010(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A364558

/-- `A364557(n+1)-A000010(n+1)` -/
def P4794245862484388362.Spec : Prop :=
  ∀ n, P4794245862484388362.a n = A364558 (n + 1)

theorem P4794245862484388362.correct : P4794245862484388362.Spec := by
  intro n
  simp only [A364558, Nat.add_sub_cancel]

end A364558

/-! ## A364558.P14824008244067713031

`A000079(A297167(n+1))-A000010(n+1)`
-/

namespace A364558.P14824008244067713031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A297167 (n + 1)).toNat - A000010 (n + 1)

end

end A364558.P14824008244067713031

namespace A364558

/-- `A000079(A297167(n+1))-A000010(n+1)` -/
def P14824008244067713031.Spec : Prop :=
  ∀ n, P14824008244067713031.a n = A364558 (n + 1)

end A364558

/-! ## A364558.P16807119039367747782

`A011782(A297113(n+1))-A000010(n+1)`
-/

namespace A364558.P16807119039367747782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A297113 (n + 1)).toNat - A000010 (n + 1)

end

end A364558.P16807119039367747782

namespace A364558

/-- `A011782(A297113(n+1))-A000010(n+1)` -/
def P16807119039367747782.Spec : Prop :=
  ∀ n, P16807119039367747782.a n = A364558 (n + 1)

end A364558

/-! ## A364558.P5491273156769317299

`A297112(A109043(n+1))-Δ[A002088(n)]`
-/

namespace A364558.P5491273156769317299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297112 (A109043 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A364558.P5491273156769317299

namespace A364558

/-- `A297112(A109043(n+1))-Δ[A002088(n)]` -/
def P5491273156769317299.Spec : Prop :=
  ∀ n, P5491273156769317299.a n = A364558 (n + 1)

end A364558

/-! ## A364558.P16880435182273831307

`A297112(A109043(n+1))-Δ[A005728(n)]`
-/

namespace A364558.P16880435182273831307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297112 (A109043 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A364558.P16880435182273831307

namespace A364558

/-- `A297112(A109043(n+1))-Δ[A005728(n)]` -/
def P16880435182273831307.Spec : Prop :=
  ∀ n, P16880435182273831307.a n = A364558 (n + 1)

end A364558

/-! ## A364558.P10336695306110198811

`A297112(A109043(n+1))-A349137(Δ[n²])`
-/

namespace A364558.P10336695306110198811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297112 (A109043 (n + 1)).toNat - A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A364558.P10336695306110198811

namespace A364558

/-- `A297112(A109043(n+1))-A349137(Δ[n²])` -/
def P10336695306110198811.Spec : Prop :=
  ∀ n, P10336695306110198811.a n = A364558 (n + 1)

end A364558

/-!
# A364559: a(n) = A005941(n) - n.

The programs for A364559, the canonical program `A364559.P17766999660544483635` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364559 has offset 1).

The definition of A364559 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005941, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364559.P17766999660544483635

`A005941(n+1)-(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A364559

/-- `A005941(n+1)-(n+1)` -/
def P17766999660544483635.Spec : Prop :=
  ∀ n, P17766999660544483635.a n = A364559 (n + 1)

theorem P17766999660544483635.correct : P17766999660544483635.Spec := by
  intro n
  simp only [A364559, Nat.add_sub_cancel]

end A364559

/-! ## A364559.P6728221954014312041

`-A364499(A005941(n+1))`
-/

namespace A364559.P6728221954014312041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A364499 (A005941 (n + 1)).toNat

end

end A364559.P6728221954014312041

namespace A364559

/-- `-A364499(A005941(n+1))` -/
def P6728221954014312041.Spec : Prop :=
  ∀ n, P6728221954014312041.a n = A364559 (n + 1)

end A364559

/-! ## A364559.P5295683804590855714

`A156552(n+1)-n`
-/

namespace A364559.P5295683804590855714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) - (n : ℤ)

end

end A364559.P5295683804590855714

namespace A364559

/-- `A156552(n+1)-n` -/
def P5295683804590855714.Spec : Prop :=
  ∀ n, P5295683804590855714.a n = A364559 (n + 1)

theorem P5295683804590855714.correct : P5295683804590855714.Spec := by
  intro n
  simp only [A364559, Nat.add_sub_cancel, A364559.P5295683804590855714.a, A364559.P17766999660544483635.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A156552, A156552.P4268073137713085227.a, A364557, A364557.P16113127302810243144.a, A297167, A297167.P13113550866660970867.a, A001221, A001221.P10258181745752134128.a, A252464, A252464.P11274602121942962009.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A364559

/-! ## A364559.P15318475819804525402

`∑{d}[n+1, A364558(#)]`
-/

namespace A364559.P15318475819804525402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A364558 d

end

end A364559.P15318475819804525402

namespace A364559

/-- `∑{d}[n+1, A364558(#)]` -/
def P15318475819804525402.Spec : Prop :=
  ∀ n, P15318475819804525402.a n = A364559 (n + 1)

end A364559

/-! ## A364559.P16431052632731437401

`A048675(n+1)+A323905(n+1)-n`
-/

namespace A364559.P16431052632731437401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1) + (A323905 (n + 1) - (n : ℤ))

end

end A364559.P16431052632731437401

namespace A364559

/-- `A048675(n+1)+A323905(n+1)-n` -/
def P16431052632731437401.Spec : Prop :=
  ∀ n, P16431052632731437401.a n = A364559 (n + 1)

theorem P16431052632731437401.correct : P16431052632731437401.Spec := by
  intro n
  simp only [A364559, Nat.add_sub_cancel, A364559.P16431052632731437401.a, A364559.P17766999660544483635.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A323905, A323905.P339970777162455812.a, A156552, A156552.P4268073137713085227.a, A297108, A297108.P15990807296291497671.a, A364557, A364557.P16113127302810243144.a, A131577, A131577.P3998309598604981540.a, A297109, A297109.P3226708849595875613.a, A297167, A297167.P13113550866660970867.a, A001221, A001221.P10258181745752134128.a, A020500, A020500.P12751166166803317150.f1, A020500.P12751166166803317150.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, A252464, A252464.P11274602121942962009.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A364559

/-! ## A364559.P14934507186717231034

`A297112(n+1)+A297168(n+1)-n`
-/

namespace A364559.P14934507186717231034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297112 (n + 1) + (A297168 (n + 1) - (n : ℤ))

end

end A364559.P14934507186717231034

namespace A364559

/-- `A297112(n+1)+A297168(n+1)-n` -/
def P14934507186717231034.Spec : Prop :=
  ∀ n, P14934507186717231034.a n = A364559 (n + 1)

theorem P14934507186717231034.correct : P14934507186717231034.Spec := by
  intro n
  simp only [A364559, Nat.add_sub_cancel, A364559.P14934507186717231034.a, A364559.P17766999660544483635.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A297112, A297112.P4192810520716380487.a, A297168, A297168.P17205494295370266601.a, A131577, A131577.P3998309598604981540.a, A156552, A156552.P4268073137713085227.a, A297113, A297113.P441289280190658386.a, A364557, A364557.P16113127302810243144.a, A046660, A046660.P3614759855976580945.a, A061395, A061395.P8431317036300486107.a, A297167, A297167.P13113550866660970867.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A252464, A252464.P11274602121942962009.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A364559

/-! ## A364559.P5799704795819664062

`A323244(n+1)+A324865(n+1)-n`
-/

namespace A364559.P5799704795819664062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323244 (n + 1) + (A324865 (n + 1) - (n : ℤ))

end

end A364559.P5799704795819664062

namespace A364559

/-- `A323244(n+1)+A324865(n+1)-n` -/
def P5799704795819664062.Spec : Prop :=
  ∀ n, P5799704795819664062.a n = A364559 (n + 1)

end A364559

/-! ## A364559.P14622441897859937689

`A323243(n+1)-(A324865(n+1)+n)`
-/

namespace A364559.P14622441897859937689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (n + 1) - (A324865 (n + 1) + (n : ℤ))

end

end A364559.P14622441897859937689

namespace A364559

/-- `A323243(n+1)-(A324865(n+1)+n)` -/
def P14622441897859937689.Spec : Prop :=
  ∀ n, P14622441897859937689.a n = A364559 (n + 1)

end A364559

/-! ## A364559.P11024940669887276209

`A292380(n+1)+A292382(n+1)-n`
-/

namespace A364559.P11024940669887276209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292380 (n + 1) + (A292382 (n + 1) - (n : ℤ))

end

end A364559.P11024940669887276209

namespace A364559

/-- `A292380(n+1)+A292382(n+1)-n` -/
def P11024940669887276209.Spec : Prop :=
  ∀ n, P11024940669887276209.a n = A364559 (n + 1)

end A364559

/-! ## A364559.P1009309948186942762

`A305418(A091202(n+1))-n`
-/

namespace A364559.P1009309948186942762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305418 (A091202 (n + 1)).toNat - (n : ℤ)

end

end A364559.P1009309948186942762

namespace A364559

/-- `A305418(A091202(n+1))-n` -/
def P1009309948186942762.Spec : Prop :=
  ∀ n, P1009309948186942762.a n = A364559 (n + 1)

end A364559

/-! ## A364559.P15124645113559413030

`A332816(A108548(n+1))-n`
-/

namespace A364559.P15124645113559413030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332816 (A108548 (n + 1)).toNat - (n : ℤ)

end

end A364559.P15124645113559413030

namespace A364559

/-- `A332816(A108548(n+1))-n` -/
def P15124645113559413030.Spec : Prop :=
  ∀ n, P15124645113559413030.a n = A364559 (n + 1)

end A364559

/-! ## A364559.P11301606236270021944

`A252754(A250245(n+1))-n`
-/

namespace A364559.P11301606236270021944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252754 (A250245 (n + 1)).toNat - (n : ℤ)

end

end A364559.P11301606236270021944

namespace A364559

/-- `A252754(A250245(n+1))-n` -/
def P11301606236270021944.Spec : Prop :=
  ∀ n, P11301606236270021944.a n = A364559 (n + 1)

end A364559

/-! ## A364559.P7811954065384006469

`A269388(A302025(n+1))-n`
-/

namespace A364559.P7811954065384006469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269388 (A302025 (n + 1)).toNat - (n : ℤ)

end

end A364559.P7811954065384006469

namespace A364559

/-- `A269388(A302025(n+1))-n` -/
def P7811954065384006469.Spec : Prop :=
  ∀ n, P7811954065384006469.a n = A364559 (n + 1)

end A364559

/-! ## A364559.P847883978914398349

`A244153(A048673(n+1))-n`
-/

namespace A364559.P847883978914398349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244153 (A048673 (n + 1)).toNat - (n : ℤ)

end

end A364559.P847883978914398349

namespace A364559

/-- `A244153(A048673(n+1))-n` -/
def P847883978914398349.Spec : Prop :=
  ∀ n, P847883978914398349.a n = A364559 (n + 1)

end A364559

/-! ## A364559.P13714230799564562165

`A244153(A245608(A245605(n+1)))-n`
-/

namespace A364559.P13714230799564562165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244153 (A245608 (A245605 (n + 1)).toNat).toNat - (n : ℤ)

end

end A364559.P13714230799564562165

namespace A364559

/-- `A244153(A245608(A245605(n+1)))-n` -/
def P13714230799564562165.Spec : Prop :=
  ∀ n, P13714230799564562165.a n = A364559 (n + 1)

end A364559

/-!
# A364560: Numbers k for which A156552(k) < k.

The programs for A364560, the canonical program `A364560.P18245569746642784695` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364560 has offset 1).

The definition of A364560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 402 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364560.P18245569746642784695

`lt[A364559(n+1), 1]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A364560

/-- `lt[A364559(n+1), 1]+1` -/
def P18245569746642784695.Spec : Prop :=
  ∀ n, (P18245569746642784695.a n : ℤ) = A364560 (n + 1)

theorem P18245569746642784695.correct : P18245569746642784695.Spec := by
  intro n
  simp only [A364560, Nat.add_sub_cancel]

end A364560

/-! ## A364560.P18361566865597457487

`lt[A156552(gcd(n, C(2, n))), n]`
-/

namespace A364560.P18361566865597457487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (Nat.gcd n (Nat.choose 2 n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A364560.P18361566865597457487

namespace A364560

/-- `lt[A156552(gcd(n, C(2, n))), n]` -/
def P18361566865597457487.Spec : Prop :=
  ∀ n, (P18361566865597457487.a n : ℤ) = A364560 (n + 1)

end A364560

/-! ## A364560.P14050092729860558815

`lt[A156552(n+1), n+1]+1`
-/

namespace A364560.P14050092729860558815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A364560.P14050092729860558815

namespace A364560

/-- `lt[A156552(n+1), n+1]+1` -/
def P14050092729860558815.Spec : Prop :=
  ∀ n, (P14050092729860558815.a n : ℤ) = A364560 (n + 1)

end A364560

/-! ## A364560.P13316590780711178408

`lt[A005941(n+1), n+2]+1`
-/

namespace A364560.P13316590780711178408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A364560.P13316590780711178408

namespace A364560

/-- `lt[A005941(n+1), n+2]+1` -/
def P13316590780711178408.Spec : Prop :=
  ∀ n, (P13316590780711178408.a n : ℤ) = A364560 (n + 1)

end A364560

/-! ## A364560.P7475102617976431859

`lt[A156552(A028310(n)), n]`
-/

namespace A364560.P7475102617976431859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A364560.P7475102617976431859

namespace A364560

/-- `lt[A156552(A028310(n)), n]` -/
def P7475102617976431859.Spec : Prop :=
  ∀ n, (P7475102617976431859.a n : ℤ) = A364560 (n + 1)

end A364560

/-!
# A364561: Odd numbers k for which A156552(k) < k.

The programs for A364561, the canonical program `A364561.P16788681190764430068` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364561 has offset 1).

The definition of A364561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 724 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364561.P17958307332771457468

`∩[2*n+1, A364560(n+1)]`
-/

namespace A364561.P17958307332771457468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364561.P17958307332771457468

namespace A364561

/-- `∩[2*n+1, A364560(n+1)]` -/
def P17958307332771457468.Spec : Prop :=
  ∀ n, (P17958307332771457468.a n : ℤ) = A364561 (n + 1)

end A364561

/-! ## A364561.P16788681190764430068

`record[A000265(A364560(n+1))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A364561

/-- `record[A000265(A364560(n+1))]` -/
def P16788681190764430068.Spec : Prop :=
  ∀ n, P16788681190764430068.a n = A364561 (n + 1)

theorem P16788681190764430068.correct : P16788681190764430068.Spec := by
  intro n
  simp only [A364561, Nat.add_sub_cancel]

end A364561

/-! ## A364561.P11597363229403063065

`∩[A364560(n+1), A004273(n)]`
-/

namespace A364561.P11597363229403063065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364561.P11597363229403063065

namespace A364561

/-- `∩[A364560(n+1), A004273(n)]` -/
def P11597363229403063065.Spec : Prop :=
  ∀ n, (P11597363229403063065.a n : ℤ) = A364561 (n + 1)

end A364561

/-! ## A364561.P17665757280565163993

`∩[A364560(n+1), A060747(n)]`
-/

namespace A364561.P17665757280565163993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364561.P17665757280565163993

namespace A364561

/-- `∩[A364560(n+1), A060747(n)]` -/
def P17665757280565163993.Spec : Prop :=
  ∀ n, (P17665757280565163993.a n : ℤ) = A364561 (n + 1)

end A364561

/-! ## A364561.P541330433234869061

`∩[A364560(n+1), A005843(n)+1]`
-/

namespace A364561.P541330433234869061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364561.P541330433234869061

namespace A364561

/-- `∩[A364560(n+1), A005843(n)+1]` -/
def P541330433234869061.Spec : Prop :=
  ∀ n, (P541330433234869061.a n : ℤ) = A364561 (n + 1)

end A364561

/-! ## A364561.P7018216548026400032

`filter[A364560(n+1), A000035(#)]`
-/

namespace A364561.P7018216548026400032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A364561.P7018216548026400032

namespace A364561

/-- `filter[A364560(n+1), A000035(#)]` -/
def P7018216548026400032.Spec : Prop :=
  ∀ n, P7018216548026400032.a n = A364561 (n + 1)

end A364561

/-! ## A364561.P4674052653135287491

`A005408(lt[A156552(2*n+1), A005408(n)])`
-/

namespace A364561.P4674052653135287491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A364561.P4674052653135287491

namespace A364561

/-- `A005408(lt[A156552(2*n+1), A005408(n)])` -/
def P4674052653135287491.Spec : Prop :=
  ∀ n, P4674052653135287491.a n = A364561 (n + 1)

end A364561

/-!
# A364562: Numbers k for which A156552(k) > k.

The programs for A364562, the canonical program `A364562.P5902964476958358656` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364562 has offset 1).

The definition of A364562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1840 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364562.P5902964476958358656

`lt[1, A364559(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A364562

/-- `lt[1, A364559(n+1)]+1` -/
def P5902964476958358656.Spec : Prop :=
  ∀ n, (P5902964476958358656.a n : ℤ) = A364562 (n + 1)

theorem P5902964476958358656.correct : P5902964476958358656.Spec := by
  intro n
  simp only [A364562, Nat.add_sub_cancel]

end A364562

/-! ## A364562.P3301772954254754050

`lt[n, A156552(n+1)]+1`
-/

namespace A364562.P3301772954254754050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A364562.P3301772954254754050

namespace A364562

/-- `lt[n, A156552(n+1)]+1` -/
def P3301772954254754050.Spec : Prop :=
  ∀ n, (P3301772954254754050.a n : ℤ) = A364562 (n + 1)

end A364562

/-! ## A364562.P6795942771883366938

`lt[n, A156552(gcd(n, C(2, n)))]`
-/

namespace A364562.P6795942771883366938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A364562.P6795942771883366938

namespace A364562

/-- `lt[n, A156552(gcd(n, C(2, n)))]` -/
def P6795942771883366938.Spec : Prop :=
  ∀ n, (P6795942771883366938.a n : ℤ) = A364562 (n + 1)

end A364562

/-! ## A364562.P1065923614698307935

`lt[n+1, A005941(n+1)]+1`
-/

namespace A364562.P1065923614698307935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A364562.P1065923614698307935

namespace A364562

/-- `lt[n+1, A005941(n+1)]+1` -/
def P1065923614698307935.Spec : Prop :=
  ∀ n, (P1065923614698307935.a n : ℤ) = A364562 (n + 1)

end A364562

/-! ## A364562.P9565792040735825438

`lt[n, A156552(A028310(n))]`
-/

namespace A364562.P9565792040735825438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A364562.P9565792040735825438

namespace A364562

/-- `lt[n, A156552(A028310(n))]` -/
def P9565792040735825438.Spec : Prop :=
  ∀ n, (P9565792040735825438.a n : ℤ) = A364562 (n + 1)

end A364562

/-! ## A364562.P6224304982686579668

`lt[A004277(n), A156552(A004277(n))]`
-/

namespace A364562.P6224304982686579668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A364562.P6224304982686579668

namespace A364562

/-- `lt[A004277(n), A156552(A004277(n))]` -/
def P6224304982686579668.Spec : Prop :=
  ∀ n, (P6224304982686579668.a n : ℤ) = A364562 (n + 1)

end A364562

/-!
# A364563: Difference k - A005940(k) computed for those odd numbers k for which the difference is nonnegative.

The programs for A364563, there is no canonical definition to state claims against.
-/

/-! ## A364563.P7187113069296365239

`-A364499(A364543(n+1))`
-/

namespace A364563.P7187113069296365239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A364499 (A364543 (n + 1)).toNat

end

end A364563.P7187113069296365239

/-!
# A364564: Largest prime factor computed for those odd numbers k for which A156552(k) < k.

The programs for A364564, the canonical program `A364564.P7433085332368225178` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364564 has offset 1).

The definition of A364564 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A364561, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364564.P7433085332368225178

`A006530(A364561(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A364564

/-- `A006530(A364561(n+1))` -/
def P7433085332368225178.Spec : Prop :=
  ∀ n, P7433085332368225178.a n = A364564 (n + 1)

theorem P7433085332368225178.correct : P7433085332368225178.Spec := by
  intro n
  simp only [A364564, Nat.add_sub_cancel]

end A364564

/-! ## A364564.P2618804728772304312

`A002034(∏{p}[A364561(n+1), #])`
-/

namespace A364564.P2618804728772304312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A364564.P2618804728772304312

namespace A364564

/-- `A002034(∏{p}[A364561(n+1), #])` -/
def P2618804728772304312.Spec : Prop :=
  ∀ n, P2618804728772304312.a n = A364564 (n + 1)

end A364564

/-! ## A364564.P9121698942559725097

`A085392(2*A364561(n+1))`
-/

namespace A364564.P9121698942559725097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * A364561 (n + 1)).toNat

end

end A364564.P9121698942559725097

namespace A364564

/-- `A085392(2*A364561(n+1))` -/
def P9121698942559725097.Spec : Prop :=
  ∀ n, P9121698942559725097.a n = A364564 (n + 1)

end A364564

/-! ## A364564.P15806258840002166573

`A002034(gcd(A034386(n+3), A364561(n+1)))`
-/

namespace A364564.P15806258840002166573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (Int.gcd (A034386 (n + 3)) (A364561 (n + 1)))

end

end A364564.P15806258840002166573

namespace A364564

/-- `A002034(gcd(A034386(n+3), A364561(n+1)))` -/
def P15806258840002166573.Spec : Prop :=
  ∀ n, P15806258840002166573.a n = A364564 (n + 1)

end A364564

/-!
# A364565: Numbers k at which point A364557 (the Möbius transform of A005941) is equal to A000010 (Euler phi function).

The programs for A364565, there is no canonical definition to state claims against.
-/

/-! ## A364565.P11999636423099534666

`eq[0, A364558(n+1)]+1`
-/

namespace A364565.P11999636423099534666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364558 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A364565.P11999636423099534666

/-! ## A364565.P5024263926955422049

`filter[A140642(n), A336477(#)]`
-/

namespace A364565.P5024263926955422049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A364565.P5024263926955422049

/-! ## A364565.P16386889664366185090

`∩[A003401(n+1), A140642(n)]`
-/

namespace A364565.P16386889664366185090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140642 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364565.P16386889664366185090

/-! ## A364565.P9308443869075924045

`∩[A140642(n), A143513(n+1)]`
-/

namespace A364565.P9308443869075924045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364565.P9308443869075924045

/-! ## A364565.P15952210630360510706

`filter[A173643(n+1), A336477(#)]`
-/

namespace A364565.P15952210630360510706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A364565.P15952210630360510706

/-!
# A364566: Numbers k such that A364557(k) < A000010(k), where A364557 is the Möbius transform of A005941, and A000010 is Euler totient function phi.

The programs for A364566, the canonical program `A364566.P8108627064955290039` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364566 has offset 1).

The definition of A364566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 463 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364566.P8108627064955290039

`lt[A364557(n+1), A000010(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A364566

/-- `lt[A364557(n+1), A000010(n+1)]+1` -/
def P8108627064955290039.Spec : Prop :=
  ∀ n, (P8108627064955290039.a n : ℤ) = A364566 (n + 1)

theorem P8108627064955290039.correct : P8108627064955290039.Spec := by
  intro n
  simp only [A364566, Nat.add_sub_cancel]

end A364566

/-! ## A364566.P11323827514394260217

`lt[A364558(n+1)+1, A288257(n+1)]+1`
-/

namespace A364566.P11323827514394260217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364558 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288257 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A364566.P11323827514394260217

namespace A364566

/-- `lt[A364558(n+1)+1, A288257(n+1)]+1` -/
def P11323827514394260217.Spec : Prop :=
  ∀ n, (P11323827514394260217.a n : ℤ) = A364566 (n + 1)

end A364566

/-! ## A364566.P10226499870172874823

`lt[A364558(n+1), A154272(3*n+2)]+1`
-/

namespace A364566.P10226499870172874823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A364566.P10226499870172874823

namespace A364566

/-- `lt[A364558(n+1), A154272(3*n+2)]+1` -/
def P10226499870172874823.Spec : Prop :=
  ∀ n, (P10226499870172874823.a n : ℤ) = A364566 (n + 1)

end A364566

/-! ## A364566.P8386536985010175992

`lt[A364558(A008574(n)), 0]`
-/

namespace A364566.P8386536985010175992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364558 (A008574 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A364566.P8386536985010175992

namespace A364566

/-- `lt[A364558(A008574(n)), 0]` -/
def P8386536985010175992.Spec : Prop :=
  ∀ n, (P8386536985010175992.a n : ℤ) = A364566 (n + 1)

end A364566

/-! ## A364566.P17682482815899891829

`eq[A161098(n+1), A219964(n)]`
-/

namespace A364566.P17682482815899891829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364566.P17682482815899891829

namespace A364566

/-- `eq[A161098(n+1), A219964(n)]` -/
def P17682482815899891829.Spec : Prop :=
  ∀ n, (P17682482815899891829.a n : ℤ) = A364566 (n + 1)

end A364566

/-!
# A364567: a(n) = A297112(A005940(1+n)), where A297112 is the Möbius transform of A156552 [the inverse of map n -> A005940(1+n)].

The programs for A364567, the canonical program `A364567.P9242672006614262804` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364567 has offset 0).

The definition of A364567 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A297112, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364567.P9242672006614262804

`A297112(A005940(1+n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A364567

/-- `A297112(A005940(1+n))` -/
def P9242672006614262804.Spec : Prop :=
  ∀ n, P9242672006614262804.a n = A364567 n

theorem P9242672006614262804.correct : P9242672006614262804.Spec := by
  intro n
  simp only [A364567]

end A364567

/-! ## A364567.P7710771434240141636

`A290077(n)-A364568(n)`
-/

namespace A364567.P7710771434240141636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290077 n - A364568 n

end

end A364567.P7710771434240141636

namespace A364567

/-- `A290077(n)-A364568(n)` -/
def P7710771434240141636.Spec : Prop :=
  ∀ n, P7710771434240141636.a n = A364567 n

theorem P7710771434240141636.correct : P7710771434240141636.Spec := by
  intro n
  simp only [A364567, Nat.add_sub_cancel, A364567.P7710771434240141636.a, A364567.P9242672006614262804.a, A005940, A005940.P5942875842694471387.a, A290077, A290077.P1811018423005109397.a, A297112, A297112.P4192810520716380487.a, A364568, A364568.P5776167922759784493.a, A000010, A000010.P4673923239450215316.a, A122111, A122111.P18124015185857335041.a, A131577, A131577.P3998309598604981540.a, A253563, A253563.P3695549317124564486.a, A297113, A297113.P441289280190658386.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A003557, A003557.P6364735403900941810.a, A025480, A025480.P15873863116418380882.a, A046660, A046660.P3614759855976580945.a, A061395, A061395.P8431317036300486107.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, A005187, A005187.P3874015513960485494.a, A006519, A006519.P10435570611646570274.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A029837, A029837.P1050578713049589.a, A052126, A052126.P1944428405920482243.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A364567

/-! ## A364567.P14722944431938983345

`2*A053644(n)/A277561(n)`
-/

namespace A364567.P14722944431938983345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A053644 n : ℚ) / (A277561 n : ℚ))

end

end A364567.P14722944431938983345

namespace A364567

/-- `2*A053644(n)/A277561(n)` -/
def P14722944431938983345.Spec : Prop :=
  ∀ n, P14722944431938983345.a n = (A364567 n : ℚ)

end A364567

/-! ## A364567.P14689480973271032803

`A364571(A213064(n))`
-/

namespace A364567.P14689480973271032803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364571 (A213064 n).toNat

end

end A364567.P14689480973271032803

namespace A364567

/-- `A364571(A213064(n))` -/
def P14689480973271032803.Spec : Prop :=
  ∀ n, P14689480973271032803.a n = A364567 n

end A364567

/-! ## A364567.P10227446033164419412

`A053644(xor(n, floor(n/2))+n)/A277561(n)`
-/

namespace A364567.P10227446033164419412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053644 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + (n : ℤ)).toNat : ℚ) / (A277561 n : ℚ)

end

end A364567.P10227446033164419412

namespace A364567

/-- `A053644(xor(n, floor(n/2))+n)/A277561(n)` -/
def P10227446033164419412.Spec : Prop :=
  ∀ n, P10227446033164419412.a n = (A364567 n : ℚ)

end A364567

/-! ## A364567.P13428305874486029417

`A000010(A005940(n+1))-A364568(n)`
-/

namespace A364567.P13428305874486029417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A005940 (n + 1)).toNat - A364568 n

end

end A364567.P13428305874486029417

namespace A364567

/-- `A000010(A005940(n+1))-A364568(n)` -/
def P13428305874486029417.Spec : Prop :=
  ∀ n, P13428305874486029417.a n = A364567 n

end A364567

/-! ## A364567.P3425193755019230247

`A297112(A364499(n+1)+n+1)`
-/

namespace A364567.P3425193755019230247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297112 (A364499 (n + 1) + (n + 1 : ℤ)).toNat

end

end A364567.P3425193755019230247

namespace A364567

/-- `A297112(A364499(n+1)+n+1)` -/
def P3425193755019230247.Spec : Prop :=
  ∀ n, P3425193755019230247.a n = A364567 n

end A364567

/-! ## A364567.P4457209753774695237

`A297112(A253563(n))`
-/

namespace A364567.P4457209753774695237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297112 (A253563 n).toNat

end

end A364567.P4457209753774695237

namespace A364567

/-- `A297112(A253563(n))` -/
def P4457209753774695237.Spec : Prop :=
  ∀ n, P4457209753774695237.a n = A364567 n

end A364567

/-! ## A364567.P9837080230754674198

`A297112(A163511(A156552(A163511(n))))`
-/

namespace A364567.P9837080230754674198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297112 (A163511 (A156552 (A163511 n).toNat).toNat).toNat

end

end A364567.P9837080230754674198

namespace A364567

/-- `A297112(A163511(A156552(A163511(n))))` -/
def P9837080230754674198.Spec : Prop :=
  ∀ n, P9837080230754674198.a n = A364567 n

end A364567

/-!
# A364568: a(n) = A290077(n) - A364567(n).

The programs for A364568, the canonical program `A364568.P5776167922759784493` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364568 has offset 0).

The definition of A364568 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A290077, A364567, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364568.P5776167922759784493

`A290077(n)-A364567(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A364568

/-- `A290077(n)-A364567(n)` -/
def P5776167922759784493.Spec : Prop :=
  ∀ n, P5776167922759784493.a n = A364568 n

theorem P5776167922759784493.correct : P5776167922759784493.Spec := by
  intro n
  simp only [A364568]

end A364568

/-! ## A364568.P16537006929123351924

`A000010(A005940(n+1))-A364567(n)`
-/

namespace A364568.P16537006929123351924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A005940 (n + 1)).toNat - A364567 n

end

end A364568.P16537006929123351924

namespace A364568

/-- `A000010(A005940(n+1))-A364567(n)` -/
def P16537006929123351924.Spec : Prop :=
  ∀ n, P16537006929123351924.a n = A364568 n

end A364568

/-! ## A364568.P15807714222561307901

`A290077(n)-A297112(A005940(n+1))`
-/

namespace A364568.P15807714222561307901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290077 n - A297112 (A005940 (n + 1)).toNat

end

end A364568.P15807714222561307901

namespace A364568

/-- `A290077(n)-A297112(A005940(n+1))` -/
def P15807714222561307901.Spec : Prop :=
  ∀ n, P15807714222561307901.a n = A364568 n

end A364568

/-! ## A364568.P17332983492494711132

`A290077(n)-A297112(A324394(n)*A324395(n))`
-/

namespace A364568.P17332983492494711132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290077 n - A297112 (A324394 n * A324395 n).toNat

end

end A364568.P17332983492494711132

namespace A364568

/-- `A290077(n)-A297112(A324394(n)*A324395(n))` -/
def P17332983492494711132.Spec : Prop :=
  ∀ n, P17332983492494711132.a n = A364568 n

end A364568

/-! ## A364568.P9733652177552502594

`A290077(n)-A297112(A337375(n)*A337376(n))`
-/

namespace A364568.P9733652177552502594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290077 n - A297112 (A337375 n * A337376 n).toNat

end

end A364568.P9733652177552502594

namespace A364568

/-- `A290077(n)-A297112(A337375(n)*A337376(n))` -/
def P9733652177552502594.Spec : Prop :=
  ∀ n, P9733652177552502594.a n = A364568 n

end A364568

/-! ## A364568.P8174655849466649605

`A290077(n)-A297112((A324055(n)+A324054(n))/2)`
-/

namespace A364568.P8174655849466649605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290077 n - A297112 (SequenceMachineLib.roundAway ((A324055 n + A324054 n : ℚ) / 2)).toNat

end

end A364568.P8174655849466649605

namespace A364568

/-- `A290077(n)-A297112((A324055(n)+A324054(n))/2)` -/
def P8174655849466649605.Spec : Prop :=
  ∀ n, P8174655849466649605.a n = A364568 n

end A364568

/-! ## A364568.P2820029175660810655

`A290077(n)-A297112(A340364(n+1)*A340365(n+1))`
-/

namespace A364568.P2820029175660810655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290077 n - A297112 (A340364 (n + 1) * A340365 (n + 1)).toNat

end

end A364568.P2820029175660810655

namespace A364568

/-- `A290077(n)-A297112(A340364(n+1)*A340365(n+1))` -/
def P2820029175660810655.Spec : Prop :=
  ∀ n, P2820029175660810655.a n = A364568 n

end A364568

/-! ## A364568.P18106768621177209258

`A290077(n)-A297112(A364500(n+1)*A364502(n+1))`
-/

namespace A364568.P18106768621177209258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290077 n - A297112 (A364500 (n + 1) * A364502 (n + 1)).toNat

end

end A364568.P18106768621177209258

namespace A364568

/-- `A290077(n)-A297112(A364500(n+1)*A364502(n+1))` -/
def P18106768621177209258.Spec : Prop :=
  ∀ n, P18106768621177209258.a n = A364568 n

end A364568

/-!
# A364569: Length of the common prefix in the binary expansions of A156552(n) and n-1 [= A156552(A005940(n))].

The programs for A364569, there is no canonical definition to state claims against.
-/

/-! ## A364569.P1973888153394146657

`A252464(n+1)-A364570(n+1)`
-/

namespace A364569.P1973888153394146657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - A364570 (n + 1)

end

end A364569.P1973888153394146657

/-! ## A364569.P17691860957654046373

`A056239(A325351(n+1))-A364570(n+1)`
-/

namespace A364569.P17691860957654046373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A325351 (n + 1)).toNat - A364570 (n + 1)

end

end A364569.P17691860957654046373

/-! ## A364569.P380283556794058566

`A364954(n+1)+A364955(n+1)-A364570(n+1)`
-/

namespace A364569.P380283556794058566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364954 (n + 1) + (A364955 (n + 1) - A364570 (n + 1))

end

end A364569.P380283556794058566

/-! ## A364569.P8389244694098071145

`A061395(A332462(n+1))-A364570(n+1)`
-/

namespace A364569.P8389244694098071145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A332462 (n + 1)).toNat - A364570 (n + 1)

end

end A364569.P8389244694098071145

/-! ## A364569.P16877740437294354937

`A065120(A171462(n+1))%A125784(n)`
-/

namespace A364569.P16877740437294354937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065120 (A171462 (n + 1)).toNat) (A125784 n)

end

end A364569.P16877740437294354937

/-!
# A364570: a(n) = A252464(n) - A364569(n), where A364569(n) is the length of the common prefix in the binary expansions of A156552(n) and n-1 [= A156552(A005940(n))].

The programs for A364570, there is no canonical definition to state claims against.
-/

/-! ## A364570.P688321760011481766

`A252464(n+1)-A364569(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364570.P688321760011481766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - A364569 (n + 1)

end

end A364570.P688321760011481766

/-! ## A364570.P2362289410338590150

`A056239(A325351(n+1))-A364569(n+1)`
-/

namespace A364570.P2362289410338590150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A325351 (n + 1)).toNat - A364569 (n + 1)

end

end A364570.P2362289410338590150

/-! ## A364570.P15697697243588090831

`A332894(A108548(n+1))-A364569(n+1)`
-/

namespace A364570.P15697697243588090831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332894 (A108548 (n + 1)).toNat - A364569 (n + 1)

end

end A364570.P15697697243588090831

/-! ## A364570.P16401568166922020652

`A364954(n+1)+A364955(n+1)-A364569(n+1)`
-/

namespace A364570.P16401568166922020652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364954 (n + 1) + (A364955 (n + 1) - A364569 (n + 1))

end

end A364570.P16401568166922020652

/-! ## A364570.P7291565629092787851

`A061395(A332462(n+1))-A364569(n+1)`
-/

namespace A364570.P7291565629092787851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A332462 (n + 1)).toNat - A364569 (n + 1)

end

end A364570.P7291565629092787851

/-!
# A364571: a(n) = A297171(A163511(n)), where A297171 is the Möbius transform of the inverse permutation of A163511.

The programs for A364571, the canonical program `A364571.P11561737275834834825` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364571 has offset 0).

The definition of A364571 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A297171, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364571.P11561737275834834825

`A297171(A163511(n))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A364571

/-- `A297171(A163511(n))` -/
def P11561737275834834825.Spec : Prop :=
  ∀ n, P11561737275834834825.a n = A364571 n

theorem P11561737275834834825.correct : P11561737275834834825.Spec := by
  intro n
  simp only [A364571]

end A364571

/-! ## A364571.P2347928538986584049

`A297171(A364258(n)+n)`
-/

namespace A364571.P2347928538986584049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297171 (A364258 n + (n : ℤ)).toNat

end

end A364571.P2347928538986584049

namespace A364571

/-- `A297171(A364258(n)+n)` -/
def P2347928538986584049.Spec : Prop :=
  ∀ n, P2347928538986584049.a n = A364571 n

theorem P2347928538986584049.correct : P2347928538986584049.Spec := by
  intro n
  simp only [A364571, Nat.add_sub_cancel, A364571.P2347928538986584049.a, A364571.P11561737275834834825.a, A163511, A163511.P5635496813650871695.a, A297171, A297171.P15785350754724193361.f1, A297171.P15785350754724193361.a, A364258, A364258.P6786196179042320049.a, A008683, A008683.P18254306604665478110.a, A145342, A145342.P11180459690303212781.a, A243071, A243071.P12484383641158862297.a, A253563, A253563.P3695549317124564486.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A025480, A025480.P15873863116418380882.a, A122111, A122111.P18124015185857335041.a, A132971, A132971.P9197609016375066540.a, A145341, A145341.P17834554394848515737.a, A156552, A156552.P4268073137713085227.a, A253566, A253566.P9103107584596957047.a, A005187, A005187.P3874015513960485494.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A006519, A006519.P10435570611646570274.a, A030101, A030101.P16184294017372777612.a, A055010, A055010.P5809687151668349460.a, A064989, A064989.P13349672914146769936.a, A085357, A085357.P3258697467278337073.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A106400, A106400.P11201390576172776043.a, A252464, A252464.P11274602121942962009.a, A253564, A253564.P2152431909121566970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A364571

/-!
# A364574: Dirichlet inverse of A005941.

The programs for A364574, there is no canonical definition to state claims against.
-/

/-! ## A364574.P9025106612976789186

`A364575(A156552(n+1))`
-/

namespace A364574.P9025106612976789186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364575 (A156552 (n + 1)).toNat

end

end A364574.P9025106612976789186

/-! ## A364574.P9056553071603848257

`A364575(A005941(n+1)-1)`
-/

namespace A364574.P9056553071603848257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364575 (A005941 (n + 1) - 1).toNat

end

end A364574.P9056553071603848257

/-! ## A364574.P16716071279066196907

`A364575(A364559(n+1)+n)`
-/

namespace A364574.P16716071279066196907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364575 (A364559 (n + 1) + (n : ℤ)).toNat

end

end A364574.P16716071279066196907

/-! ## A364574.P7650400364055774358

`A364575(∑{d}[n+1, A297112(#)])`
-/

namespace A364574.P7650400364055774358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364575 (∑ d ∈ Nat.divisors (f1 n), A297112 d).toNat

end

end A364574.P7650400364055774358

/-! ## A364574.P13903033340221745066

`A364575(A324865(n+1)+A323244(n+1))`
-/

namespace A364574.P13903033340221745066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364575 (A324865 (n + 1) + A323244 (n + 1)).toNat

end

end A364574.P13903033340221745066

/-!
# A364575: a(n) = A364574(A005940(1+n)), where A364574 is the Dirichlet inverse of A005941 [the inverse permutation of A005940].

The programs for A364575, there is no canonical definition to state claims against.
-/

/-! ## A364575.P16098709628758126273

`A364574(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364575.P16098709628758126273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364574 (A005940 (1 + n)).toNat

end

end A364575.P16098709628758126273

/-! ## A364575.P13338811516697515233

`A364574(A340362(n+1)+A324106(n+1))`
-/

namespace A364575.P13338811516697515233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364574 (A340362 (n + 1) + A324106 (n + 1)).toNat

end

end A364575.P13338811516697515233

/-! ## A364575.P12980842028618569730

`A364574(A324641(n+1)-A324640(n+1))`
-/

namespace A364575.P12980842028618569730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364574 (A324641 (n + 1) - A324640 (n + 1)).toNat

end

end A364575.P12980842028618569730

/-! ## A364575.P11459803830721797298

`A364574(A340364(n+1)*A340365(n+1))`
-/

namespace A364575.P11459803830721797298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364574 (A340364 (n + 1) * A340365 (n + 1)).toNat

end

end A364575.P11459803830721797298

/-! ## A364575.P18349813168672101733

`A364574(A364500(n+1)*A364502(n+1))`
-/

namespace A364575.P18349813168672101733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364574 (A364500 (n + 1) * A364502 (n + 1)).toNat

end

end A364575.P18349813168672101733

/-!
# A364576: Starting from k=1, each subsequent term is the next larger odd k such that A156552(k) < k and the ratio A156552(k)/k is nearer to 1.0 than for any previous k in the sequence.

The programs for A364576, there is no canonical definition to state claims against.
-/

/-! ## A364576.P6589343770052896542

`A167221(a(n-1))` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A364576.P6589343770052896542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  A167221 (a (n - 1)).toNat

end

end A364576.P6589343770052896542

/-!
# A364577: Lexicographically earliest infinite sequence such that a(i) = a(j) => A294898(i) = A294898(j) and A329697(i) = A329697(j), for all i, j >= 1.

The programs for A364577, there is no canonical definition to state claims against.
-/

/-! ## A364577.P3468770499989244309

`gcd(A054633(n), A292161(A002384(n+1)))`
-/

namespace A364577.P3468770499989244309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054633 n) (A292161 (A002384 (n + 1)).toNat)

end

end A364577.P3468770499989244309

/-!
# A364578: a(n) is the smallest n-digit number whose sum of digits is n.

The programs for A364578, the canonical program `A364578.P15279271467164295840` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364578 has offset 1).

The definition of A364578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364578.P15279271467164295840

`A051885(n)+A011557(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A364578

/-- `A051885(n)+A011557(n)` -/
def P15279271467164295840.Spec : Prop :=
  ∀ n, P15279271467164295840.a n = A364578 (n + 1)

theorem P15279271467164295840.correct : P15279271467164295840.Spec := by
  intro n
  simp only [A364578, Nat.add_sub_cancel]

end A364578

/-! ## A364578.P16612077504013817593

`A002283(n)+A051885(n)+1`
-/

namespace A364578.P16612077504013817593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n + (A051885 n + 1)

end

end A364578.P16612077504013817593

namespace A364578

/-- `A002283(n)+A051885(n)+1` -/
def P16612077504013817593.Spec : Prop :=
  ∀ n, P16612077504013817593.a n = A364578 (n + 1)

theorem P16612077504013817593.correct : P16612077504013817593.Spec := by
  intro n
  simp only [A364578, Nat.add_sub_cancel, A364578.P16612077504013817593.a, A364578.P15279271467164295840.a, A002283, A002283.P2252111154706607536.a, A011557, A011557.P11220211478167790856.a, A051885, A051885.P11585152797781986562.a, A037124, A037124.P10531659379818548989.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A364578

/-! ## A364578.P123008614896248267

`A002275(n+1)+A051885(n)-A002275(n)`
-/

namespace A364578.P123008614896248267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) + (A051885 n - A002275 n)

end

end A364578.P123008614896248267

namespace A364578

/-- `A002275(n+1)+A051885(n)-A002275(n)` -/
def P123008614896248267.Spec : Prop :=
  ∀ n, P123008614896248267.a n = A364578 (n + 1)

end A364578

/-! ## A364578.P13303462344521809920

`A263019(A051885(n+1))+A051885(n)`
-/

namespace A364578.P13303462344521809920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263019 (A051885 (n + 1)).toNat + A051885 n

end

end A364578.P13303462344521809920

namespace A364578

/-- `A263019(A051885(n+1))+A051885(n)` -/
def P13303462344521809920.Spec : Prop :=
  ∀ n, P13303462344521809920.a n = A364578 (n + 1)

end A364578

/-! ## A364578.P10588307509934500674

`A199124(n+1)+A051885(n)-A199190(n+1)`
-/

namespace A364578.P10588307509934500674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199124 (n + 1) + (A051885 n - A199190 (n + 1))

end

end A364578.P10588307509934500674

namespace A364578

/-- `A199124(n+1)+A051885(n)-A199190(n+1)` -/
def P10588307509934500674.Spec : Prop :=
  ∀ n, P10588307509934500674.a n = A364578 (n + 1)

end A364578

/-!
# A364579: Fifth Lie-Betti number of a path graph on n vertices.

The programs for A364579, there is no canonical definition to state claims against.
-/

/-! ## A364579.P14131388845996803763

`A239499(A327975(n+2))`
-/

namespace A364579.P14131388845996803763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239499 (A327975 (n + 2)).toNat

end

end A364579.P14131388845996803763

/-! ## A364579.P1990371223576610412

`A375634(n)-A375625(A375625(n))`
-/

namespace A364579.P1990371223576610412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375634 n - A375625 (A375625 n).toNat

end

end A364579.P1990371223576610412

/-!
# A364582: a(n) is the least number with exactly n divisors of the form 3*k+1.

The programs for A364582, there is no canonical definition to state claims against.
-/

/-! ## A364582.P7751286351404778849

`A003963(record[A343104(n+1)])`
-/

namespace A364582.P7751286351404778849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A364582.P7751286351404778849

/-! ## A364582.P14339676300549921460

`A000005(A047863(n))*A324588(n+1)`
-/

namespace A364582.P14339676300549921460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A047863 n).toNat * A324588 (n + 1)

end

end A364582.P14339676300549921460

/-! ## A364582.P10076672904687164636

`A010063(2*n)*A339399(A000079(n))`
-/

namespace A364582.P10076672904687164636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010063 (2 * n) * A339399 (A000079 n).toNat

end

end A364582.P10076672904687164636

/-!
# A364583: a(n) is the least number with exactly n divisors of the form 3*k+2.

The programs for A364583, there is no canonical definition to state claims against.
-/

/-! ## A364583.P12491195240821503973

`A003963(A343105(n))`
-/

namespace A364583.P12491195240821503973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A343105 n).toNat

end

end A364583.P12491195240821503973

/-! ## A364583.P13409668336298340624

`record[A175183(A007318(n))]`
-/

namespace A364583.P13409668336298340624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175183 (A007318 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364583.P13409668336298340624

/-! ## A364583.P4744630411389061180

`A395812(A024646(n+1))`
-/

namespace A364583.P4744630411389061180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395812 (A024646 (n + 1)).toNat

end

end A364583.P4744630411389061180

/-!
# A364584: a(n) is the least number with exactly n divisors of the form 4*k+1.

The programs for A364584, there is no canonical definition to state claims against.
-/

/-! ## A364584.P16072258604136742465

`A071053(A002378(n)*A209236(n+1))`
-/

namespace A364584.P16072258604136742465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 (A002378 n * A209236 (n + 1)).toNat

end

end A364584.P16072258604136742465

/-!
# A364585: a(n) is the least number with exactly n divisors of the form 4*k+3.

The programs for A364585, there is no canonical definition to state claims against.
-/

/-! ## A364585.P10125541720699333634

`A000265(A000142(n+4)/(4-(-1)^n))`
-/

namespace A364585.P10125541720699333634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A000142 (n + 4) : ℚ) / (4 - (-1) ^ n : ℚ))).toNat

end

end A364585.P10125541720699333634

/-! ## A364585.P16567399545620065384

`and(A000265(A261381(n+4)), A002283(2*n+1))`
-/

namespace A364585.P16567399545620065384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000265 (A261381 (n + 4)).toNat) (A002283 (2 * n + 1))

end

end A364585.P16567399545620065384

/-!
# A364586: a(n) is the least number with exactly n divisors of the form 5*k+1.

The programs for A364586, there is no canonical definition to state claims against.
-/

/-! ## A364586.P2388960424696205095

`A007953(A378155(n))*A265947(n)`
-/

namespace A364586.P2388960424696205095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A378155 n).toNat * A265947 n

end

end A364586.P2388960424696205095

/-!
# A364587: Clique covering number, independence number, and Shannon capacity of the n-Lucas cube graph.

The programs for A364587, the canonical program `A364587.P7734309394871139276` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364587 has offset 1).

The definition of A364587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364587.P7734309394871139276

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A364587

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` -/
def P7734309394871139276.Spec : Prop :=
  ∀ n, P7734309394871139276.a n = A364587 (n + 1)

theorem P7734309394871139276.correct : P7734309394871139276.Spec := by
  intro n
  simp only [A364587, Nat.add_sub_cancel]

end A364587

/-! ## A364587.P6364988780817905821

`A173714(n)+1`
-/

namespace A364587.P6364988780817905821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173714 n + 1

end

end A364587.P6364988780817905821

namespace A364587

/-- `A173714(n)+1` -/
def P6364988780817905821.Spec : Prop :=
  ∀ n, P6364988780817905821.a n = A364587 (n + 1)

end A364587

/-! ## A364587.P18416381271106011895

`A004695(n+1)+A001611(n)`
-/

namespace A364587.P18416381271106011895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (n + 1) + A001611 n

end

end A364587.P18416381271106011895

namespace A364587

/-- `A004695(n+1)+A001611(n)` -/
def P18416381271106011895.Spec : Prop :=
  ∀ n, P18416381271106011895.a n = A364587 (n + 1)

end A364587

/-! ## A364587.P15402540337833925932

`A147997(n+1)+A000045(n)`
-/

namespace A364587.P15402540337833925932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 (n + 1) + A000045 n

end

end A364587.P15402540337833925932

namespace A364587

/-- `A147997(n+1)+A000045(n)` -/
def P15402540337833925932.Spec : Prop :=
  ∀ n, P15402540337833925932.a n = A364587 (n + 1)

end A364587

/-! ## A364587.P5294063196273060733

`A173173(n+2)+A173173(n)`
-/

namespace A364587.P5294063196273060733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 (n + 2) + A173173 n

end

end A364587.P5294063196273060733

namespace A364587

/-- `A173173(n+2)+A173173(n)` -/
def P5294063196273060733.Spec : Prop :=
  ∀ n, P5294063196273060733.a n = A364587 (n + 1)

end A364587

/-! ## A364587.P11275862546166797284

`A108014(n)+1-A278718(n)`
-/

namespace A364587.P11275862546166797284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108014 n + (1 - A278718 n)

end

end A364587.P11275862546166797284

namespace A364587

/-- `A108014(n)+1-A278718(n)` -/
def P11275862546166797284.Spec : Prop :=
  ∀ n, P11275862546166797284.a n = A364587 (n + 1)

end A364587

/-! ## A364587.P1619798059278956331

`A366043(n+1)+1-A131561(n)`
-/

namespace A364587.P1619798059278956331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366043 (n + 1) + (1 - A131561 n)

end

end A364587.P1619798059278956331

namespace A364587

/-- `A366043(n+1)+1-A131561(n)` -/
def P1619798059278956331.Spec : Prop :=
  ∀ n, P1619798059278956331.a n = A364587 (n + 1)

end A364587

/-! ## A364587.P10254979542495404004

`A000045(n+2)-A201864(n+1)`
-/

namespace A364587.P10254979542495404004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - A201864 (n + 1)

end

end A364587.P10254979542495404004

namespace A364587

/-- `A000045(n+2)-A201864(n+1)` -/
def P10254979542495404004.Spec : Prop :=
  ∀ n, P10254979542495404004.a n = A364587 (n + 1)

end A364587

/-! ## A364587.P15009928672388182724

`A173495(n+1)+A131532(2*n)`
-/

namespace A364587.P15009928672388182724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173495 (n + 1) + A131532 (2 * n)

end

end A364587.P15009928672388182724

namespace A364587

/-- `A173495(n+1)+A131532(2*n)` -/
def P15009928672388182724.Spec : Prop :=
  ∀ n, P15009928672388182724.a n = A364587 (n + 1)

end A364587

/-! ## A364587.P2856018104678228894

`floor(∑[a(n-1)+a(n-2)]/2)` with `a(0)=3, a(1)=2, a(2)=1`
-/

namespace A364587.P2856018104678228894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋

end

end A364587.P2856018104678228894

namespace A364587

/-- `floor(∑[a(n-1)+a(n-2)]/2)` -/
def P2856018104678228894.Spec : Prop :=
  ∀ n, P2856018104678228894.a n = A364587 (n + 1)

end A364587

/-! ## A364587.P5643246275062543625

`floor(A000211(n+1)/2)`
-/

namespace A364587.P5643246275062543625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000211 (n + 1) : ℚ) / 2⌋

end

end A364587.P5643246275062543625

namespace A364587

/-- `floor(A000211(n+1)/2)` -/
def P5643246275062543625.Spec : Prop :=
  ∀ n, P5643246275062543625.a n = A364587 (n + 1)

end A364587

/-! ## A364587.P13719207969115169236

`ceil(A001612(n+1)/2)`
-/

namespace A364587.P13719207969115169236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001612 (n + 1) : ℚ) / 2⌉

end

end A364587.P13719207969115169236

namespace A364587

/-- `ceil(A001612(n+1)/2)` -/
def P13719207969115169236.Spec : Prop :=
  ∀ n, P13719207969115169236.a n = A364587 (n + 1)

end A364587

/-! ## A364587.P13133616345048208939

`ceil(A001610(n)/2)+1`
-/

namespace A364587.P13133616345048208939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001610 n : ℚ) / 2⌉ + 1

end

end A364587.P13133616345048208939

namespace A364587

/-- `ceil(A001610(n)/2)+1` -/
def P13133616345048208939.Spec : Prop :=
  ∀ n, P13133616345048208939.a n = A364587 (n + 1)

end A364587

/-! ## A364587.P7157478629417948394

`A000032(n+1)-A245968(n+1)`
-/

namespace A364587.P7157478629417948394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - A245968 (n + 1)

end

end A364587.P7157478629417948394

namespace A364587

/-- `A000032(n+1)-A245968(n+1)` -/
def P7157478629417948394.Spec : Prop :=
  ∀ n, P7157478629417948394.a n = A364587 (n + 1)

end A364587

/-!
# A364588: G.f. satisfies A(x) = 1/(1-x) + x^2*A(x)^4.

The programs for A364588, there is no canonical definition to state claims against.
-/

/-! ## A364588.P3571557635028492232

`A060384(A148688(n+1))`
-/

namespace A364588.P3571557635028492232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A148688 (n + 1)).toNat

end

end A364588.P3571557635028492232

/-! ## A364588.P17582822188233289452

`A349536(A045632(n+1))`
-/

namespace A364588.P17582822188233289452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349536 (A045632 (n + 1)).toNat

end

end A364588.P17582822188233289452

/-! ## A364588.P4485431686088448846

`A067434((A149784(n)+1)/2)`
-/

namespace A364588.P4485431686088448846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (SequenceMachineLib.roundAway ((A149784 n + 1 : ℚ) / 2)).toNat

end

end A364588.P4485431686088448846

/-! ## A364588.P1184204891787478444

`A350470(n+2)+A273886(A360233(n))`
-/

namespace A364588.P1184204891787478444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350470 (n + 2) + A273886 (A360233 n).toNat

end

end A364588.P1184204891787478444

/-!
# A364589: G.f. satisfies A(x) = 1/(1-x) + x^3*A(x)^3.

The programs for A364589, there is no canonical definition to state claims against.
-/

/-! ## A364589.P11887750583449622128

`A238781(∑[A008331(n+1)])`
-/

namespace A364589.P11887750583449622128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238781 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A364589.P11887750583449622128

/-! ## A364589.P773032922479051872

`A202842(n)+A098841(A307967(n+3))`
-/

namespace A364589.P773032922479051872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202842 n + A098841 (A307967 (n + 3)).toNat

end

end A364589.P773032922479051872

/-! ## A364589.P6529937297217813384

`A183090(A049864(n))`
-/

namespace A364589.P6529937297217813384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183090 (A049864 n).toNat

end

end A364589.P6529937297217813384

/-! ## A364589.P1661174484439603850

`A204164(A053617(n))`
-/

namespace A364589.P1661174484439603850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A053617 n).toNat

end

end A364589.P1661174484439603850

/-! ## A364589.P2256571610259076105

`A085736(A202842(n))`
-/

namespace A364589.P2256571610259076105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A202842 n).toNat

end

end A364589.P2256571610259076105

/-!
# A364590: G.f. satisfies A(x) = 1/(1-x) + x^4*A(x)^3.

The programs for A364590, there is no canonical definition to state claims against.
-/

/-! ## A364590.P7406427920292061802

`A065033(A098482(n)^A061674(n))`
-/

namespace A364590.P7406427920292061802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.roundAway ((A098482 n : ℚ) ^ (A061674 n : ℤ))).toNat

end

end A364590.P7406427920292061802

/-! ## A364590.P11996459177491970747

`A065033(C(A098482(n), A061674(n)))`
-/

namespace A364590.P11996459177491970747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Nat.choose (A098482 n).toNat (A061674 n).toNat)

end

end A364590.P11996459177491970747

/-! ## A364590.P3058069073124737184

`A065033(A098482(n)^A366126(3*n+4))`
-/

namespace A364590.P3058069073124737184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.roundAway ((A098482 n : ℚ) ^ (A366126 (3 * n + 4) : ℤ))).toNat

end

end A364590.P3058069073124737184

/-! ## A364590.P5803868663976993706

`A065033(C(A098482(n), A366126(3*n+4)))`
-/

namespace A364590.P5803868663976993706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Nat.choose (A098482 n).toNat (A366126 (3 * n + 4)).toNat)

end

end A364590.P5803868663976993706

/-! ## A364590.P9308070444008396275

`A001651(A098482(n)^A184257(n+1))+1-A098482(n)`
-/

namespace A364590.P9308070444008396275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (SequenceMachineLib.roundAway ((A098482 n : ℚ) ^ (A184257 (n + 1) : ℤ))).toNat + 1 - A098482 n

end

end A364590.P9308070444008396275

/-!
# A364591: G.f. satisfies A(x) = 1/(1-x) + x^4*A(x)^4.

The programs for A364591, there is no canonical definition to state claims against.
-/

/-! ## A364591.P14771581545653771339

`A157271(A374585(n))`
-/

namespace A364591.P14771581545653771339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A374585 n).toNat

end

end A364591.P14771581545653771339

/-! ## A364591.P17984827915673540309

`A359415(A144700(n))`
-/

namespace A364591.P17984827915673540309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359415 (A144700 n).toNat

end

end A364591.P17984827915673540309

/-! ## A364591.P9075883657417553087

`A000196(∑[A143815(n)])`
-/

namespace A364591.P9075883657417553087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A364591.P9075883657417553087

/-! ## A364591.P15814433297184585563

`A369525(n)+A025426(A249233(n+1))`
-/

namespace A364591.P15814433297184585563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369525 n + A025426 (A249233 (n + 1)).toNat

end

end A364591.P15814433297184585563

/-! ## A364591.P14979208370379868321

`A128861(A001383(n))`
-/

namespace A364591.P14979208370379868321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128861 (A001383 n).toNat

end

end A364591.P14979208370379868321

/-!
# A364592: G.f. satisfies A(x) = 1/(1-x) + x*(1-x)*A(x)^4.

The programs for A364592, there is no canonical definition to state claims against.
-/

/-! ## A364592.P8412966488003061480

`∑[A382916(n)]`
-/

namespace A364592.P8412966488003061480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364592.P8412966488003061480

/-!
# A364593: G.f. satisfies A(x) = 1/(1-x) + x^2*(1-x)*A(x)^3.

The programs for A364593, there is no canonical definition to state claims against.
-/

/-! ## A364593.P7614977173564247678

`∑[A376489(n)]`
-/

namespace A364593.P7614977173564247678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364593.P7614977173564247678

/-!
# A364594: G.f. satisfies A(x) = 1/(1-x) + x^2*(1-x)*A(x)^4.

The programs for A364594, there is no canonical definition to state claims against.
-/

/-! ## A364594.P1833144589313596203

`A054404(A068875(n)+2)`
-/

namespace A364594.P1833144589313596203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A068875 n + 2).toNat

end

end A364594.P1833144589313596203

/-! ## A364594.P15605150159320677994

`A054404(2*(A000108(n)+1))`
-/

namespace A364594.P15605150159320677994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (2 * (A000108 n + 1)).toNat

end

end A364594.P15605150159320677994

/-! ## A364594.P13690654108969280244

`A054404(A089408(2*(n+1))+2)`
-/

namespace A364594.P13690654108969280244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A089408 (2 * (n + 1)) + 2).toNat

end

end A364594.P13690654108969280244

/-!
# A364595: G.f. satisfies A(x) = 1/(1-x) + x^3*(1-x)*A(x)^3.

The programs for A364595, there is no canonical definition to state claims against.
-/

/-! ## A364595.P17889406145523192648

`A257212(A148169(n))`
-/

namespace A364595.P17889406145523192648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257212 (A148169 n).toNat

end

end A364595.P17889406145523192648

/-!
# A364596: G.f. satisfies A(x) = 1/(1-x) + x^3*(1-x)*A(x)^4.

The programs for A364596, there is no canonical definition to state claims against.
-/

/-! ## A364596.P16380930133982125035

`A356316(A157133(n))`
-/

namespace A364596.P16380930133982125035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356316 (A157133 n).toNat

end

end A364596.P16380930133982125035

/-! ## A364596.P14085837204170978628

`A316495(A202842(n))`
-/

namespace A364596.P14085837204170978628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316495 (A202842 n).toNat

end

end A364596.P14085837204170978628

/-! ## A364596.P11320166685755536034

`A316495(A202849(n))`
-/

namespace A364596.P11320166685755536034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316495 (A202849 n).toNat

end

end A364596.P11320166685755536034

/-! ## A364596.P13978472554364410889

`A356316(A367462(n))`
-/

namespace A364596.P13978472554364410889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356316 (A367462 n).toNat

end

end A364596.P13978472554364410889

/-! ## A364596.P9199922096247548245

`A338190(A392779(n))`
-/

namespace A364596.P9199922096247548245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338190 (A392779 n).toNat

end

end A364596.P9199922096247548245

/-!
# A364597: G.f. satisfies A(x) = 1/(1-x) + x^3*(1-x)*A(x)^5.

The programs for A364597, there is no canonical definition to state claims against.
-/

/-! ## A364597.P1361434853228405988

`A188014(A000244(n))+A035079(n)`
-/

namespace A364597.P1361434853228405988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A000244 n).toNat + A035079 n

end

end A364597.P1361434853228405988

/-! ## A364597.P2885509372823258365

`A262689(A014258(n)+A000142(n))`
-/

namespace A364597.P2885509372823258365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A014258 n + A000142 n).toNat

end

end A364597.P2885509372823258365

/-! ## A364597.P3080371250173262489

`A178692(A074909(n))+A111588(ceil(2^(n-1)))`
-/

namespace A364597.P3080371250173262489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178692 (A074909 n).toNat + A111588 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A364597.P3080371250173262489

/-! ## A364597.P2304341444308123777

`A178692(A074909(n))+A054404(2*(A307789(n)+1))`
-/

namespace A364597.P2304341444308123777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178692 (A074909 n).toNat + A054404 (2 * (A307789 n + 1)).toNat

end

end A364597.P2304341444308123777

/-!
# A364598: a(n) is the least number with exactly n divisors of the form 5*k+2.

The programs for A364598, there is no canonical definition to state claims against.
-/

/-! ## A364598.P15637840610059242364

`A178877(A106677(n)+1)`
-/

namespace A364598.P15637840610059242364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178877 (A106677 n + 1).toNat

end

end A364598.P15637840610059242364

/-! ## A364598.P12634353750216849110

`∩[A015937(n+1), A385484(n+1)]`
-/

namespace A364598.P12634353750216849110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364598.P12634353750216849110

/-!
# A364599: a(n) is the least number with exactly n divisors of the form 5*k+3.

The programs for A364599, there is no canonical definition to state claims against.
-/

/-! ## A364599.P4776620212739473095

`A102443(A059826(n))`
-/

namespace A364599.P4776620212739473095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102443 (A059826 n).toNat

end

end A364599.P4776620212739473095

/-! ## A364599.P4062797855036697792

`A336693(∑[A097250(n)])`
-/

namespace A364599.P4062797855036697792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336693 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A364599.P4062797855036697792

