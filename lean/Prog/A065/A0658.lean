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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C006
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
# A065800: Numbers k which, for some r, are r-digit maximizers of k/phi(k).

The programs for A065800, there is no canonical definition to state claims against.
-/

/-! ## A065800.P3584579651611177105

`lt[A055642(n), A328620(n)]`
-/

namespace A065800.P3584579651611177105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065800.P3584579651611177105

/-! ## A065800.P13247603697031975561

`lt[dr(A348783(n)), A328620(n)]`
-/

namespace A065800.P13247603697031975561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A348783 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A065800.P13247603697031975561

/-! ## A065800.P10107134077810801115

`record[A276094(A328118(n+2)-1)]`
-/

namespace A065800.P10107134077810801115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276094 (A328118 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065800.P10107134077810801115

/-! ## A065800.P15675941251275149001

`lt[A342002(n), A235224(A002264(n))]`
-/

namespace A065800.P15675941251275149001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342002 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (A002264 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065800.P15675941251275149001

/-!
# A065801: Least k such that n^k > 2^n.

The programs for A065801, the canonical program `A065801.P8989070980736403821` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065801 has offset 2).

The definition of A065801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065801.P3778693785101062507

`floor((n+2)/log2(n+2))+1`
-/

namespace A065801.P3778693785101062507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / Real.logb 2 (n + 2 : ℝ)⌋ + 1

end

end A065801.P3778693785101062507

namespace A065801

/-- `floor((n+2)/log2(n+2))+1` -/
def P3778693785101062507.Spec : Prop :=
  ∀ n, P3778693785101062507.a n = A065801 (n + 2)

end A065801

/-! ## A065801.P8989070980736403821

`A000027(A060508(n+2)+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065801

/-- `A000027(A060508(n+2)+1)` -/
def P8989070980736403821.Spec : Prop :=
  ∀ n, P8989070980736403821.a n = A065801 (n + 2)

theorem P8989070980736403821.correct : P8989070980736403821.Spec := by
  intro n
  simp only [A065801, Nat.add_sub_cancel]

end A065801

/-! ## A065801.P11341538595173523223

`∑{d}[A060508(n+2)+1, A000010(#)]`
-/

namespace A065801.P11341538595173523223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060508 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A065801.P11341538595173523223

namespace A065801

/-- `∑{d}[A060508(n+2)+1, A000010(#)]` -/
def P11341538595173523223.Spec : Prop :=
  ∀ n, P11341538595173523223.a n = A065801 (n + 2)

end A065801

/-! ## A065801.P3427118032952324674

`∏{d}[A060508(n+2)+1, A014963(#)]`
-/

namespace A065801.P3427118032952324674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060508 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A065801.P3427118032952324674

namespace A065801

/-- `∏{d}[A060508(n+2)+1, A014963(#)]` -/
def P3427118032952324674.Spec : Prop :=
  ∀ n, P3427118032952324674.a n = A065801 (n + 2)

end A065801

/-! ## A065801.P16622770569776087236

`(A060508(n+2)+1)%A000040(n+1)²`
-/

namespace A065801.P16622770569776087236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060508 (n + 2) + 1) (A000040 (n + 1) ^ 2)

end

end A065801.P16622770569776087236

namespace A065801

/-- `(A060508(n+2)+1)%A000040(n+1)²` -/
def P16622770569776087236.Spec : Prop :=
  ∀ n, P16622770569776087236.a n = A065801 (n + 2)

end A065801

/-! ## A065801.P2958865765493188899

`(A060508(n+2)+1)*A014963(gcd(n, n+1))`
-/

namespace A065801.P2958865765493188899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060508 (n + 2) + 1) * A014963 (Nat.gcd n (n + 1))

end

end A065801.P2958865765493188899

namespace A065801

/-- `(A060508(n+2)+1)*A014963(gcd(n, n+1))` -/
def P2958865765493188899.Spec : Prop :=
  ∀ n, P2958865765493188899.a n = A065801 (n + 2)

end A065801

/-! ## A065801.P18282066974319549521

`lcm(A060508(n+2)+1, A008683(A005117(n+1)))`
-/

namespace A065801.P18282066974319549521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060508 (n + 2) + 1) (A008683 (A005117 (n + 1)).toNat)

end

end A065801.P18282066974319549521

namespace A065801

/-- `lcm(A060508(n+2)+1, A008683(A005117(n+1)))` -/
def P18282066974319549521.Spec : Prop :=
  ∀ n, (P18282066974319549521.a n : ℤ) = A065801 (n + 2)

end A065801

/-! ## A065801.P17670321868728880072

`A020725(val(A060509(n+2), n+2))`
-/

namespace A065801.P17670321868728880072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.valuation (A060509 (n + 2)).toNat (n + 2))

end

end A065801.P17670321868728880072

namespace A065801

/-- `A020725(val(A060509(n+2), n+2))` -/
def P17670321868728880072.Spec : Prop :=
  ∀ n, P17670321868728880072.a n = A065801 (n + 2)

end A065801

/-! ## A065801.P5417354143385966417

`A000005(2^A060508(n+2))`
-/

namespace A065801.P5417354143385966417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A060508 (n + 2) : ℤ))).toNat

end

end A065801.P5417354143385966417

namespace A065801

/-- `A000005(2^A060508(n+2))` -/
def P5417354143385966417.Spec : Prop :=
  ∀ n, P5417354143385966417.a n = A065801 (n + 2)

end A065801

/-! ## A065801.P15799024617297854766

`A001222(2^(A060508(n+2)+1))`
-/

namespace A065801.P15799024617297854766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A060508 (n + 2) + 1 : ℤ))).toNat

end

end A065801.P15799024617297854766

namespace A065801

/-- `A001222(2^(A060508(n+2)+1))` -/
def P15799024617297854766.Spec : Prop :=
  ∀ n, P15799024617297854766.a n = A065801 (n + 2)

end A065801

/-!
# A065802: How small is the squeezed n-gon? Let s0 be the side of a regular n-gon and s1 the side of the maximal n-gon which can be squeezed between the former and its circumcircle. The n-th entry in the sequence is floor(s0/s1).

The programs for A065802, there is no canonical definition to state claims against.
-/

/-! ## A065802.P12511149630902122119

`A245302(n+3)-char[2*n+5]`
-/

namespace A065802.P12511149630902122119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245302 (n + 3) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A065802.P12511149630902122119

/-! ## A065802.P2254810517162146524

`A353362(A175805(n))+A008732(2*n)`
-/

namespace A065802.P2254810517162146524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353362 (A175805 n).toNat + A008732 (2 * n)

end

end A065802.P2254810517162146524

/-! ## A065802.P1361590325446100175

`A350255(A316474(n+2))+A214045(3*n+2)`
-/

namespace A065802.P1361590325446100175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350255 (A316474 (n + 2)).toNat + A214045 (3 * n + 2)

end

end A065802.P1361590325446100175

/-! ## A065802.P9627066489794451132

`A302486(2*n+3)-A319443(A000010(n+4))`
-/

namespace A065802.P9627066489794451132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302486 (2 * n + 3) - A319443 (A000010 (n + 4)).toNat

end

end A065802.P9627066489794451132

/-! ## A065802.P14929366423744668745

`A322791(A146952(n+2))`
-/

namespace A065802.P14929366423744668745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322791 (A146952 (n + 2)).toNat

end

end A065802.P14929366423744668745

/-!
# A065803: a(n) = (sigma_2(n) mod 2) * (sigma_2(n) mod 5). Residue-product modulo 2 and 5 of sum of square of divisors.

The programs for A065803, the canonical program `A065803.P10961158191132642769` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065803 has offset 1).

The definition of A065803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065803.P10961158191132642769

`Δ[floor(sqrt(n))]*A035187(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A065803

/-- `Δ[floor(sqrt(n))]*A035187(n+1)` -/
def P10961158191132642769.Spec : Prop :=
  ∀ n, P10961158191132642769.a n = A065803 (n + 1)

theorem P10961158191132642769.correct : P10961158191132642769.Spec := by
  intro n
  simp only [A065803, Nat.add_sub_cancel]

end A065803

/-! ## A065803.P5175332866334834976

`A035187(n+1)*A053866(n+1)`
-/

namespace A065803.P5175332866334834976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (n + 1) * A053866 (n + 1)

end

end A065803.P5175332866334834976

namespace A065803

/-- `A035187(n+1)*A053866(n+1)` -/
def P5175332866334834976.Spec : Prop :=
  ∀ n, P5175332866334834976.a n = A065803 (n + 1)

end A065803

/-! ## A065803.P13812815140387786246

`A035227(n+1)*A053866(n+1)`
-/

namespace A065803.P13812815140387786246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035227 (n + 1) * A053866 (n + 1)

end

end A065803.P13812815140387786246

namespace A065803

/-- `A035227(n+1)*A053866(n+1)` -/
def P13812815140387786246.Spec : Prop :=
  ∀ n, P13812815140387786246.a n = A065803 (n + 1)

end A065803

/-! ## A065803.P13458740502007911407

`floor(A035187(n+1)/A007913(n+1))`
-/

namespace A065803.P13458740502007911407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035187 (n + 1) : ℚ) / (A007913 (n + 1) : ℚ)⌋

end

end A065803.P13458740502007911407

namespace A065803

/-- `floor(A035187(n+1)/A007913(n+1))` -/
def P13458740502007911407.Spec : Prop :=
  ∀ n, P13458740502007911407.a n = A065803 (n + 1)

end A065803

/-! ## A065803.P8585431896384309374

`A035187(n^and(1, A000203(n+1))+1)`
-/

namespace A065803.P8585431896384309374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (SequenceMachineLib.roundAway ((n : ℚ) ^ (Int.land 1 (A000203 (n + 1)) : ℤ) + 1)).toNat

end

end A065803.P8585431896384309374

namespace A065803

/-- `A035187(n^and(1, A000203(n+1))+1)` -/
def P8585431896384309374.Spec : Prop :=
  ∀ n, P8585431896384309374.a n = A065803 (n + 1)

end A065803

/-! ## A065803.P4791043955968889762

`A000005(n+1)%2*A338946(A075712(n+1)+1)`
-/

namespace A065803.P4791043955968889762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1)) 2 * A338946 (A075712 (n + 1) + 1).toNat

end

end A065803.P4791043955968889762

namespace A065803

/-- `A000005(n+1)%2*A338946(A075712(n+1)+1)` -/
def P4791043955968889762.Spec : Prop :=
  ∀ n, P4791043955968889762.a n = A065803 (n + 1)

end A065803

/-! ## A065803.P17964747395579793243

`C(A160385(A116882(n+1)), A348733(n+1))`
-/

namespace A065803.P17964747395579793243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A160385 (A116882 (n + 1)).toNat).toNat (A348733 (n + 1)).toNat

end

end A065803.P17964747395579793243

namespace A065803

/-- `C(A160385(A116882(n+1)), A348733(n+1))` -/
def P17964747395579793243.Spec : Prop :=
  ∀ n, (P17964747395579793243.a n : ℤ) = A065803 (n + 1)

end A065803

/-! ## A065803.P7190990134056350836

`C(A216671(n+1), 4)`
-/

namespace A065803.P7190990134056350836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A216671 (n + 1)).toNat 4

end

end A065803.P7190990134056350836

namespace A065803

/-- `C(A216671(n+1), 4)` -/
def P7190990134056350836.Spec : Prop :=
  ∀ n, (P7190990134056350836.a n : ℤ) = A065803 (n + 1)

end A065803

/-! ## A065803.P18312196846809295557

`and(1, A353850(n+1)²)`
-/

namespace A065803.P18312196846809295557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A353850 (n + 1) ^ 2)

end

end A065803.P18312196846809295557

namespace A065803

/-- `and(1, A353850(n+1)²)` -/
def P18312196846809295557.Spec : Prop :=
  ∀ n, P18312196846809295557.a n = A065803 (n + 1)

end A065803

/-! ## A065803.P1807907231864375900

`and(char[n²-1], A059044(2*(n+1)))`
-/

namespace A065803.P1807907231864375900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A059044 (2 * (n + 1)))

end

end A065803.P1807907231864375900

namespace A065803

/-- `and(char[n²-1], A059044(2*(n+1)))` -/
def P1807907231864375900.Spec : Prop :=
  ∀ n, P1807907231864375900.a n = A065803 (n + 1)

end A065803

/-! ## A065803.P6185413802577179530

`∏{e}[(n+1)*(A267451(n)+1)², #+1]%2`
-/

namespace A065803.P6185413802577179530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A267451 n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)) % 2

end

end A065803.P6185413802577179530

namespace A065803

/-- `∏{e}[(n+1)*(A267451(n)+1)², #+1]%2` -/
def P6185413802577179530.Spec : Prop :=
  ∀ n, (P6185413802577179530.a n : ℤ) = A065803 (n + 1)

end A065803

/-! ## A065803.P5332674044983378401

`A260492(n+1)*A260492(n)`
-/

namespace A065803.P5332674044983378401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260492 (n + 1) * A260492 n

end

end A065803.P5332674044983378401

namespace A065803

/-- `A260492(n+1)*A260492(n)` -/
def P5332674044983378401.Spec : Prop :=
  ∀ n, P5332674044983378401.a n = A065803 (n + 1)

end A065803

/-! ## A065803.P14727557162560049932

`C(A000120(A035457(n)), A326055(n+1))`
-/

namespace A065803.P14727557162560049932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000120 (A035457 n).toNat).toNat (A326055 (n + 1)).toNat

end

end A065803.P14727557162560049932

namespace A065803

/-- `C(A000120(A035457(n)), A326055(n+1))` -/
def P14727557162560049932.Spec : Prop :=
  ∀ n, (P14727557162560049932.a n : ℤ) = A065803 (n + 1)

end A065803

/-! ## A065803.P14215177663687724602

`A001222(gcd(A285096(n+1), A285119(n+1)))`
-/

namespace A065803.P14215177663687724602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A285096 (n + 1)) (A285119 (n + 1)))

end

end A065803.P14215177663687724602

namespace A065803

/-- `A001222(gcd(A285096(n+1), A285119(n+1)))` -/
def P14215177663687724602.Spec : Prop :=
  ∀ n, P14215177663687724602.a n = A065803 (n + 1)

end A065803

/-! ## A065803.P9225393875800571829

`C(A014963(A344699(n+1)), A344695(n+1))`
-/

namespace A065803.P9225393875800571829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (A344699 (n + 1)).toNat).toNat (A344695 (n + 1)).toNat

end

end A065803.P9225393875800571829

namespace A065803

/-- `C(A014963(A344699(n+1)), A344695(n+1))` -/
def P9225393875800571829.Spec : Prop :=
  ∀ n, (P9225393875800571829.a n : ℤ) = A065803 (n + 1)

end A065803

/-! ## A065803.P7655108171155691982

`and(1, (4-A000005(n+1))^n)`
-/

namespace A065803.P7655108171155691982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((4 - A000005 (n + 1)) ^ n)

end

end A065803.P7655108171155691982

namespace A065803

/-- `and(1, (4-A000005(n+1))^n)` -/
def P7655108171155691982.Spec : Prop :=
  ∀ n, P7655108171155691982.a n = A065803 (n + 1)

end A065803

/-! ## A065803.P3666333977399069131

`A246142(or(14, ∏{e}[n+1, #+1]))`
-/

namespace A065803.P3666333977399069131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246142 (Nat.lor 14 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)))

end

end A065803.P3666333977399069131

namespace A065803

/-- `A246142(or(14, ∏{e}[n+1, #+1]))` -/
def P3666333977399069131.Spec : Prop :=
  ∀ n, P3666333977399069131.a n = A065803 (n + 1)

end A065803

/-! ## A065803.P925684558399346800

`A327517(4^val(∏{e}[n+1, #+1], 2))`
-/

namespace A065803.P925684558399346800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327517 (4 ^ SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) 2)

end

end A065803.P925684558399346800

namespace A065803

/-- `A327517(4^val(∏{e}[n+1, #+1], 2))` -/
def P925684558399346800.Spec : Prop :=
  ∀ n, P925684558399346800.a n = A065803 (n + 1)

end A065803

/-! ## A065803.P9014067811069349930

`A059841(Δ[∑[A032741(n)]²])`
-/

namespace A065803.P9014067811069349930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (f1 (n + 1) - f1 n).toNat

end

end A065803.P9014067811069349930

namespace A065803

/-- `A059841(Δ[∑[A032741(n)]²])` -/
def P9014067811069349930.Spec : Prop :=
  ∀ n, P9014067811069349930.a n = A065803 (n + 1)

end A065803

/-! ## A065803.P11170900477809717617

`A162642(2^A000005(n+1))`
-/

namespace A065803.P11170900477809717617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A000005 (n + 1) : ℤ))).toNat

end

end A065803.P11170900477809717617

namespace A065803

/-- `A162642(2^A000005(n+1))` -/
def P11170900477809717617.Spec : Prop :=
  ∀ n, P11170900477809717617.a n = A065803 (n + 1)

end A065803

/-!
# A065804: Earliest sequence with a(a(n))=n!.

The programs for A065804, there is no canonical definition to state claims against.
-/

/-! ## A065804.P12836084864306850550

`A072811(A319899(n+1)+A006134(n))`
-/

namespace A065804.P12836084864306850550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072811 (A319899 (n + 1) + A006134 n).toNat

end

end A065804.P12836084864306850550

/-! ## A065804.P16824538173604200578

`A324183(and(A012662(n), A012697(n+1)))`
-/

namespace A065804.P16824538173604200578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324183 (Int.land (A012662 n) (A012697 (n + 1))).toNat

end

end A065804.P16824538173604200578

/-!
# A065805: a(n) = Sum_{j=0..n} sigma_j(n).

The programs for A065805, there is no canonical definition to state claims against.
-/

/-! ## A065805.P15740258653769775795

`A236328(n+1)+Δ[A006218(n)]`
-/

namespace A065805.P15740258653769775795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236328 (n + 1) + (f1 (n + 1) - f1 n)

end

end A065805.P15740258653769775795

/-! ## A065805.P16822912383612847712

`A236328(n+1)+Δ[A054519(n)]`
-/

namespace A065805.P16822912383612847712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236328 (n + 1) + (f1 (n + 1) - f1 n)

end

end A065805.P16822912383612847712

/-! ## A065805.P16726477756646309455

`A236328(n+1)+A000005(n+1)`
-/

namespace A065805.P16726477756646309455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236328 (n + 1) + A000005 (n + 1)

end

end A065805.P16726477756646309455

/-! ## A065805.P9261858521252645111

`A236328(n+1)+A028310(∏{e}[n+1, #+1])`
-/

namespace A065805.P9261858521252645111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236328 (n + 1) + A028310 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A065805.P9261858521252645111

/-! ## A065805.P4741875189333042540

`A236328(n+1)+A045779(∏{e}[n+1, #+1])`
-/

namespace A065805.P4741875189333042540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236328 (n + 1) + A045779 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A065805.P4741875189333042540

/-!
# A065807: Squares with a smaller square as final digits.

The programs for A065807, there is no canonical definition to state claims against.
-/

/-! ## A065807.P15308188946354315053

`A065808(n+1)²`
-/

namespace A065807.P15308188946354315053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065808 (n + 1) ^ 2

end

end A065807.P15308188946354315053

/-! ## A065807.P7489431464814189204

`A065808(2*(n+1)-(n+1))^2`
-/

namespace A065807.P7489431464814189204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065808 (2 * (n + 1) - (n + 1)) ^ 2

end

end A065807.P7489431464814189204

/-! ## A065807.P11103525786460092003

`∪[A019547(n+1), A038678(n+1)]`
-/

namespace A065807.P11103525786460092003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A065807.P11103525786460092003

/-! ## A065807.P308949096418551199

`A065808(A000027(n+1))*A065808(n+1)`
-/

namespace A065807.P308949096418551199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065808 (A000027 (n + 1)).toNat * A065808 (n + 1)

end

end A065807.P308949096418551199

/-! ## A065807.P17296729706889727240

`A065808(n+1)*A065808((n+1)%A065808(n+1))`
-/

namespace A065807.P17296729706889727240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065808 (n + 1) * A065808 (Int.tmod (n + 1 : ℤ) (A065808 (n + 1))).toNat

end

end A065807.P17296729706889727240

/-! ## A065807.P1129326242155483488

`A000290(A065808(n+1)%A017114(n))`
-/

namespace A065807.P1129326242155483488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A065808 (n + 1)) (A017114 n)).toNat

end

end A065807.P1129326242155483488

/-! ## A065807.P5611031695831994164

`∩[A000290(A065808(n+1)), A000290(n)]`
-/

namespace A065807.P5611031695831994164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A065808 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065807.P5611031695831994164

/-! ## A065807.P11719939704513822172

`A000290(∪[A001126(n+1), A065808(n+1)])`
-/

namespace A065807.P11719939704513822172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065808 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A065807.P11719939704513822172

/-! ## A065807.P4938547905936071426

`A000290(∪[A038677(n+1), A065808(n+1)])`
-/

namespace A065807.P4938547905936071426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065808 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A065807.P4938547905936071426

/-! ## A065807.P3368123647056496249

`A000290(A065808(n+2)-Δ[A065808(n+1)])`
-/

namespace A065807.P3368123647056496249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A065808 (n + 2) - (f1 (n + 1) - f1 n)).toNat

end

end A065807.P3368123647056496249

/-! ## A065807.P9699360105929804360

`A000290(2*A065808(n+1)-A065808(n+1))`
-/

namespace A065807.P9699360105929804360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A065808 (n + 1) - A065808 (n + 1)).toNat

end

end A065807.P9699360105929804360

/-! ## A065807.P8105241288655371922

`A000290(gcd(2*A065808(n+1), A065808(n+1)))`
-/

namespace A065807.P8105241288655371922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.gcd (2 * A065808 (n + 1)) (A065808 (n + 1)))

end

end A065807.P8105241288655371922

/-! ## A065807.P1722479224489760418

`A065808(A026741(2*(n+1)))*A065808(n+1)`
-/

namespace A065807.P1722479224489760418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065808 (A026741 (2 * (n + 1))).toNat * A065808 (n + 1)

end

end A065807.P1722479224489760418

/-! ## A065807.P3636570545349510530

`A002620(2*A065808(n+1))`
-/

namespace A065807.P3636570545349510530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A065808 (n + 1)).toNat

end

end A065807.P3636570545349510530

/-! ## A065807.P10839869200599693872

`∪[A038678(n+1), A397247(n+1)]`
-/

namespace A065807.P10839869200599693872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A065807.P10839869200599693872

/-!
# A065808: Square of n has a smaller square as its final digits.

The programs for A065808, there is no canonical definition to state claims against.
-/

/-! ## A065808.P13244153525288816822

`sqrt(A065807(n+1))`
-/

namespace A065808.P13244153525288816822
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065807 (n + 1) : ℝ)

end

end A065808.P13244153525288816822

/-! ## A065808.P5021283240184256060

`A000027(root(A065807(n+1), 2))`
-/

namespace A065808.P5021283240184256060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A065807 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A065808.P5021283240184256060

/-! ## A065808.P11107753376689504937

`root(A065807(n+1), 2%A038677(n+1))`
-/

namespace A065808.P11107753376689504937
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A065807 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A038677 (n + 1)) : ℝ))

end

end A065808.P11107753376689504937

/-! ## A065808.P17231190526504138049

`root(A065807(n+1), 2)%A038678(n+1)`
-/

namespace A065808.P17231190526504138049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A065807 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A038678 (n + 1))

end

end A065808.P17231190526504138049

/-! ## A065808.P2809824983491404063

`root(A065807(n+1), A001316(A001316(n)))`
-/

namespace A065808.P2809824983491404063
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A065807 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A065808.P2809824983491404063

/-! ## A065808.P17003365228415517999

`A056926(A065807(n+1))%A039790(n+1)`
-/

namespace A065808.P17003365228415517999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056926 (A065807 (n + 1)).toNat) (A039790 (n + 1))

end

end A065808.P17003365228415517999

/-! ## A065808.P17151072177240305096

`A138554(A065807(n+1)+1)-1`
-/

namespace A065808.P17151072177240305096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138554 (A065807 (n + 1) + 1).toNat - 1

end

end A065808.P17151072177240305096

/-! ## A065808.P14671139554824375971

`A138554(A065807(n+1))%A017114(n)`
-/

namespace A065808.P14671139554824375971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138554 (A065807 (n + 1)).toNat) (A017114 n)

end

end A065808.P14671139554824375971

/-! ## A065808.P9599119961899708461

`A137734(A065807(n+1)-1)`
-/

namespace A065808.P9599119961899708461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A065807 (n + 1) - 1).toNat

end

end A065808.P9599119961899708461

/-!
# A065809: a(n) is the smallest number m > n such that m is palindromic in base n and is not palindromic in bases b with 2 <= b < n.

The programs for A065809, there is no canonical definition to state claims against.
-/

/-! ## A065809.P4360174871017640717

`lcm(n+3, A249634(n+2))`
-/

namespace A065809.P4360174871017640717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 3 : ℤ) (A249634 (n + 2))

end

end A065809.P4360174871017640717

/-! ## A065809.P11860778979750708749

`A249634(n+2)+A000038(A004523(n))`
-/

namespace A065809.P11860778979750708749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249634 (n + 2) + A000038 (A004523 n).toNat

end

end A065809.P11860778979750708749

/-! ## A065809.P7173672191339444180

`A249634(n+2)+A000038(A000212(n))`
-/

namespace A065809.P7173672191339444180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249634 (n + 2) + A000038 (A000212 n).toNat

end

end A065809.P7173672191339444180

/-! ## A065809.P7088671218488598401

`A249634(n+2)+A000038(A211539(n))`
-/

namespace A065809.P7088671218488598401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249634 (n + 2) + A000038 (A211539 n).toNat

end

end A065809.P7088671218488598401

/-! ## A065809.P585090723961462755

`A249634(n+2)+A000122(A249634(2*(n+1)))`
-/

namespace A065809.P585090723961462755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249634 (n + 2) + A000122 (A249634 (2 * (n + 1))).toNat

end

end A065809.P585090723961462755

/-!
# A065810: Sorted positions of the elements of the quasicyclic group Z+(2a+1)/(2^b) [a > 0 and a < 2^(b-1), b > 0] at the ]0,1[ side of the Stern-Brocot Tree (A007305/A007306).

The programs for A065810, there is no canonical definition to state claims against.
-/

/-! ## A065810.P16288668860203962114

`3*A065812(n+1)+1`
-/

namespace A065810.P16288668860203962114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A065812 (n + 1) + 1

end

end A065810.P16288668860203962114

/-! ## A065810.P2695315376296356921

`A065811(n+1)+1`
-/

namespace A065810.P2695315376296356921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065811 (n + 1) + 1

end

end A065810.P2695315376296356921

/-! ## A065810.P5905763616147964382

`A016777(A065812(n+1))`
-/

namespace A065810.P5905763616147964382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A065812 (n + 1)).toNat

end

end A065810.P5905763616147964382

/-! ## A065810.P17463743260974510113

`A008486(A065812(n+1)+1)-2`
-/

namespace A065810.P17463743260974510113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A065812 (n + 1) + 1).toNat - 2

end

end A065810.P17463743260974510113

/-! ## A065810.P7472654574042128467

`A008585(A065812(n+1))+A000120(A001316(n))`
-/

namespace A065810.P7472654574042128467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A065812 (n + 1)).toNat + A000120 (A001316 n).toNat

end

end A065810.P7472654574042128467

/-! ## A065810.P12217253692599904581

`A004482(A065811(n+1))`
-/

namespace A065810.P12217253692599904581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A065811 (n + 1)).toNat

end

end A065810.P12217253692599904581

/-! ## A065810.P1102573546261277875

`A004482(3*A065812(n+1))`
-/

namespace A065810.P1102573546261277875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (3 * A065812 (n + 1)).toNat

end

end A065810.P1102573546261277875

/-! ## A065810.P5693283891392530734

`eq[1, A109883(A007306(n+1))]`
-/

namespace A065810.P5693283891392530734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109883 (A007306 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065810.P5693283891392530734

/-! ## A065810.P14525425868488752591

`eq[1, A109883(A007306(n))]-1`
-/

namespace A065810.P14525425868488752591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109883 (A007306 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A065810.P14525425868488752591

/-! ## A065810.P13108884057504349392

`A008619(6*A065812(n+1))`
-/

namespace A065810.P13108884057504349392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (6 * A065812 (n + 1)).toNat

end

end A065810.P13108884057504349392

/-!
# A065811: a(n) = A065810(n)-1.

The programs for A065811, there is no canonical definition to state claims against.
-/

/-! ## A065811.P16862191306412282540

`A065810(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065811.P16862191306412282540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065810 (n + 1) - 1

end

end A065811.P16862191306412282540

/-! ## A065811.P4194822958583961640

`3*A065812(n+1)`
-/

namespace A065811.P4194822958583961640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A065812 (n + 1)

end

end A065811.P4194822958583961640

/-! ## A065811.P8979222958315907817

`A099837(3*n+2)+A065810(n+1)`
-/

namespace A065811.P8979222958315907817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (3 * n + 2) + A065810 (n + 1)

end

end A065811.P8979222958315907817

/-! ## A065811.P8325232967972974540

`abs(A065810(n+1)+A033999(2*n+3))`
-/

namespace A065811.P8325232967972974540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065810 (n + 1) + A033999 (2 * n + 3)|

end

end A065811.P8325232967972974540

/-! ## A065811.P3045264870786353835

`A355819(A039639(n+1))+A065810(n+1)`
-/

namespace A065811.P3045264870786353835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355819 (A039639 (n + 1)).toNat + A065810 (n + 1)

end

end A065811.P3045264870786353835

/-! ## A065811.P14134619968588645745

`(A099837(A001359(n+1))+A065810(n+1))%A001158(n+1)`
-/

namespace A065811.P14134619968588645745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099837 (A001359 (n + 1)).toNat + A065810 (n + 1)) (A001158 (n + 1))

end

end A065811.P14134619968588645745

/-! ## A065811.P5200604141271655030

`A008585(A065812(n+1))`
-/

namespace A065811.P5200604141271655030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A065812 (n + 1)).toNat

end

end A065811.P5200604141271655030

/-! ## A065811.P3684641389661151255

`A008486(A065812(n+1))-A000007(n)`
-/

namespace A065811.P3684641389661151255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A065812 (n + 1)).toNat - A000007 n

end

end A065811.P3684641389661151255

/-! ## A065811.P4573392588343624680

`A008486(A065812(n+1))%A004403(n)`
-/

namespace A065811.P4573392588343624680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008486 (A065812 (n + 1)).toNat) (A004403 n)

end

end A065811.P4573392588343624680

/-! ## A065811.P844502395103148383

`A008486(A065812(n+1)+n)-A008486(n)`
-/

namespace A065811.P844502395103148383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A065812 (n + 1) + (n : ℤ)).toNat - A008486 n

end

end A065811.P844502395103148383

/-!
# A065812: a(n) = A065811(n)/3.

The programs for A065812, there is no canonical definition to state claims against.
-/

/-! ## A065812.P8664002386978872213

`A065811(n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065812.P8664002386978872213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065811 (n + 1) : ℚ) / 3

end

end A065812.P8664002386978872213

/-! ## A065812.P9453519547122222617

`floor(A065810(n+1)/3)`
-/

namespace A065812.P9453519547122222617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065810 (n + 1) : ℚ) / 3⌋

end

end A065812.P9453519547122222617

/-! ## A065812.P16443278598416161124

`(A099837(3*n+2)+A065810(n+1))/3`
-/

namespace A065812.P16443278598416161124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099837 (3 * n + 2) + A065810 (n + 1) : ℚ) / 3

end

end A065812.P16443278598416161124

/-! ## A065812.P5291700026148754134

`eq[1, A240388(A240388(2*n+1))]`
-/

namespace A065812.P5291700026148754134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240388 (A240388 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065812.P5291700026148754134

/-! ## A065812.P15680605296273820751

`A002264(A065810(n+1))`
-/

namespace A065812.P15680605296273820751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A065810 (n + 1)).toNat

end

end A065812.P15680605296273820751

/-! ## A065812.P6094040756522873158

`A002264(A065811(n+1))`
-/

namespace A065812.P6094040756522873158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A065811 (n + 1)).toNat

end

end A065812.P6094040756522873158

/-! ## A065812.P14663714460670474192

`A008611(A065811(n+1)+1)`
-/

namespace A065812.P14663714460670474192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A065811 (n + 1) + 1).toNat

end

end A065812.P14663714460670474192

/-! ## A065812.P3798073947204958154

`A103627(A065811(n+1)+2)`
-/

namespace A065812.P3798073947204958154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A065811 (n + 1) + 2).toNat

end

end A065812.P3798073947204958154

/-! ## A065812.P1049849725566841442

`A051176(lcm(3, A065811(n+1)))`
-/

namespace A065812.P1049849725566841442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (Int.lcm 3 (A065811 (n + 1)))

end

end A065812.P1049849725566841442

/-! ## A065812.P12984966397580226784

`A341307(or(1, A065811(n+1)))`
-/

namespace A065812.P12984966397580226784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341307 (Int.lor 1 (A065811 (n + 1))).toNat

end

end A065812.P12984966397580226784

/-!
# A065813: Least m such that (p^(2*m+1)-1)/(p-1) is a prime, where p = prime(n).

The programs for A065813, there is no canonical definition to state claims against.
-/

/-! ## A065813.P7441123773967074157

`floor(A065854(n+1)/2)`
-/

namespace A065813.P7441123773967074157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065854 (n + 1) : ℚ) / 2⌋

end

end A065813.P7441123773967074157

/-! ## A065813.P1932541407698038316

`ceil(A279069(n+1)/2)`
-/

namespace A065813.P1932541407698038316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A279069 (n + 1) : ℚ) / 2⌉

end

end A065813.P1932541407698038316

/-! ## A065813.P3665389138318878859

`A279069(abs(1-n)+2)/2`
-/

namespace A065813.P3665389138318878859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279069 (|1 - (n : ℤ)| + 2).toNat : ℚ) / 2

end

end A065813.P3665389138318878859

/-! ## A065813.P17603490783092028828

`A004526(A065854(n+1))`
-/

namespace A065813.P17603490783092028828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A065854 (n + 1)).toNat

end

end A065813.P17603490783092028828

/-! ## A065813.P8774434959293038746

`A004525(A279069(n+1))`
-/

namespace A065813.P8774434959293038746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A279069 (n + 1)).toNat

end

end A065813.P8774434959293038746

/-! ## A065813.P13896953399032727305

`A000010(2*A065854(n+1))/2`
-/

namespace A065813.P13896953399032727305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * A065854 (n + 1)).toNat : ℚ) / 2

end

end A065813.P13896953399032727305

/-! ## A065813.P3267447016822567553

`(A065854(n+1)-1)/A020639(A000010(n+2))`
-/

namespace A065813.P3267447016822567553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065854 (n + 1) - 1 : ℚ) / (A020639 (A000010 (n + 2)).toNat : ℚ)

end

end A065813.P3267447016822567553

/-!
# A065814: a(n) = tau(n)^2 - tau(n^2), where tau(n) = A000005(n).

The programs for A065814, the canonical program `A065814.P14091942470070191405` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065814 has offset 1).

The definition of A065814 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035116, A048691, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065814.P14091942470070191405

`A035116(n+1)-A048691(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A065814

/-- `A035116(n+1)-A048691(n+1)` -/
def P14091942470070191405.Spec : Prop :=
  ∀ n, P14091942470070191405.a n = A065814 (n + 1)

theorem P14091942470070191405.correct : P14091942470070191405.Spec := by
  intro n
  simp only [A065814, Nat.add_sub_cancel]

end A065814

/-! ## A065814.P17060691313472206262

`A000005(n+1)²-A000005((n+1)²)`
-/

namespace A065814.P17060691313472206262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2 - A000005 ((n + 1) ^ 2)

end

end A065814.P17060691313472206262

namespace A065814

/-- `A000005(n+1)²-A000005((n+1)²)` -/
def P17060691313472206262.Spec : Prop :=
  ∀ n, P17060691313472206262.a n = A065814 (n + 1)

end A065814

/-! ## A065814.P2466530411909910134

`A333976(n+1)+A275387(n+1)`
-/

namespace A065814.P2466530411909910134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333976 (n + 1) + A275387 (n + 1)

end

end A065814.P2466530411909910134

namespace A065814

/-- `A333976(n+1)+A275387(n+1)` -/
def P2466530411909910134.Spec : Prop :=
  ∀ n, P2466530411909910134.a n = A065814 (n + 1)

end A065814

/-! ## A065814.P8440528228680899564

`A337524(n+1)-A055205(n+1)`
-/

namespace A065814.P8440528228680899564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337524 (n + 1) - A055205 (n + 1)

end

end A065814.P8440528228680899564

namespace A065814

/-- `A337524(n+1)-A055205(n+1)` -/
def P8440528228680899564.Spec : Prop :=
  ∀ n, P8440528228680899564.a n = A065814 (n + 1)

end A065814

/-! ## A065814.P17775008673904500289

`A394997(n+1)-A089233(n+1)`
-/

namespace A065814.P17775008673904500289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394997 (n + 1) - A089233 (n + 1)

end

end A065814.P17775008673904500289

namespace A065814

/-- `A394997(n+1)-A089233(n+1)` -/
def P17775008673904500289.Spec : Prop :=
  ∀ n, P17775008673904500289.a n = A065814 (n + 1)

end A065814

/-! ## A065814.P12648076161039108784

`Δ[A006218(n)]²-A048691(n+1)`
-/

namespace A065814.P12648076161039108784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A048691 (n + 1)

end

end A065814.P12648076161039108784

namespace A065814

/-- `Δ[A006218(n)]²-A048691(n+1)` -/
def P12648076161039108784.Spec : Prop :=
  ∀ n, P12648076161039108784.a n = A065814 (n + 1)

end A065814

/-! ## A065814.P6809233559440246324

`A000005(n+1)²-A048691(n+1)`
-/

namespace A065814.P6809233559440246324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2 - A048691 (n + 1)

end

end A065814.P6809233559440246324

namespace A065814

/-- `A000005(n+1)²-A048691(n+1)` -/
def P6809233559440246324.Spec : Prop :=
  ∀ n, P6809233559440246324.a n = A065814 (n + 1)

end A065814

/-! ## A065814.P16923957387601631050

`∑{d}[n+1, A032741(#)*A034444((n+1)/#)]`
-/

namespace A065814.P16923957387601631050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032741 d * A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065814.P16923957387601631050

namespace A065814

/-- `∑{d}[n+1, A032741(#)*A034444((n+1)/#)]` -/
def P16923957387601631050.Spec : Prop :=
  ∀ n, P16923957387601631050.a n = A065814 (n + 1)

end A065814

/-! ## A065814.P910962995197853371

`∑{d}[n+1, A035116(#)*A157658((n+1)/#)]`
-/

namespace A065814.P910962995197853371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035116 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065814.P910962995197853371

namespace A065814

/-- `∑{d}[n+1, A035116(#)*A157658((n+1)/#)]` -/
def P910962995197853371.Spec : Prop :=
  ∀ n, P910962995197853371.a n = A065814 (n + 1)

end A065814

/-! ## A065814.P15771831275903858798

`∑{d}[n+1, A008966(#)*A238952((n+1)/#)]`
-/

namespace A065814.P15771831275903858798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A238952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065814.P15771831275903858798

namespace A065814

/-- `∑{d}[n+1, A008966(#)*A238952((n+1)/#)]` -/
def P15771831275903858798.Spec : Prop :=
  ∀ n, P15771831275903858798.a n = A065814 (n + 1)

end A065814

/-! ## A065814.P162009017566823211

`∑{d}[n+1, A000005(#)*A293227((n+1)/#)]`
-/

namespace A065814.P162009017566823211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A293227 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065814.P162009017566823211

namespace A065814

/-- `∑{d}[n+1, A000005(#)*A293227((n+1)/#)]` -/
def P162009017566823211.Spec : Prop :=
  ∀ n, P162009017566823211.a n = A065814 (n + 1)

end A065814

/-! ## A065814.P17385623061890107737

`∑{d}[n+1, A322328(#)*A344617((n+1)/#)]`
-/

namespace A065814.P17385623061890107737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322328 d * A344617 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065814.P17385623061890107737

namespace A065814

/-- `∑{d}[n+1, A322328(#)*A344617((n+1)/#)]` -/
def P17385623061890107737.Spec : Prop :=
  ∀ n, P17385623061890107737.a n = A065814 (n + 1)

end A065814

/-! ## A065814.P1716424703374812138

`∑{d}[n+1, A048691(#)*A057427((n+1)/#-1)]`
-/

namespace A065814.P1716424703374812138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A057427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A065814.P1716424703374812138

namespace A065814

/-- `∑{d}[n+1, A048691(#)*A057427((n+1)/#-1)]` -/
def P1716424703374812138.Spec : Prop :=
  ∀ n, P1716424703374812138.a n = A065814 (n + 1)

end A065814

/-! ## A065814.P468498696241104415

`A066446(n+1)+A184389(n+1)-A048691(n+1)`
-/

namespace A065814.P468498696241104415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (n + 1) + (A184389 (n + 1) - A048691 (n + 1))

end

end A065814.P468498696241104415

namespace A065814

/-- `A066446(n+1)+A184389(n+1)-A048691(n+1)` -/
def P468498696241104415.Spec : Prop :=
  ∀ n, P468498696241104415.a n = A065814 (n + 1)

end A065814

/-! ## A065814.P8348801412664232841

`A066446(n+1)+A275387(n+1)-A089233(n+1)`
-/

namespace A065814.P8348801412664232841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (n + 1) + (A275387 (n + 1) - A089233 (n + 1))

end

end A065814.P8348801412664232841

namespace A065814

/-- `A066446(n+1)+A275387(n+1)-A089233(n+1)` -/
def P8348801412664232841.Spec : Prop :=
  ∀ n, P8348801412664232841.a n = A065814 (n + 1)

end A065814

/-! ## A065814.P5927166710581509773

`A184389(n+1)+A275387(n+1)-A018892(n+1)`
-/

namespace A065814.P5927166710581509773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1) + (A275387 (n + 1) - A018892 (n + 1))

end

end A065814.P5927166710581509773

namespace A065814

/-- `A184389(n+1)+A275387(n+1)-A018892(n+1)` -/
def P5927166710581509773.Spec : Prop :=
  ∀ n, P5927166710581509773.a n = A065814 (n + 1)

end A065814

/-! ## A065814.P2674062015876021218

`A035116(n+1)-A356574(n+1)/A000005(n+1)`
-/

namespace A065814.P2674062015876021218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035116 (n + 1) : ℚ) - (A356574 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A065814.P2674062015876021218

namespace A065814

/-- `A035116(n+1)-A356574(n+1)/A000005(n+1)` -/
def P2674062015876021218.Spec : Prop :=
  ∀ n, P2674062015876021218.a n = (A065814 (n + 1) : ℚ)

end A065814

/-! ## A065814.P662751934991730794

`A035116(n+1)-A000005((n+1)²)`
-/

namespace A065814.P662751934991730794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 1) - A000005 ((n + 1) ^ 2)

end

end A065814.P662751934991730794

namespace A065814

/-- `A035116(n+1)-A000005((n+1)²)` -/
def P662751934991730794.Spec : Prop :=
  ∀ n, P662751934991730794.a n = A065814 (n + 1)

end A065814

/-!
# A065815: Numbers k such that initial k digits in decimal portion of the Euler-Mascheroni constant form a prime number.

The programs for A065815, there is no canonical definition to state claims against.
-/

/-! ## A065815.P2908027064683044865

`A274374(n+1)+A117825(A016765(n))`
-/

namespace A065815.P2908027064683044865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274374 (n + 1) + A117825 (A016765 n).toNat

end

end A065815.P2908027064683044865

/-!
# A065816: Numbers k such that the alternating sum of digits of k^2 is 0.

The programs for A065816, the canonical program `A065816.P6014750472889023508` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065816 has offset 1).

The definition of A065816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065816.P6014750472889023508

`1+eq[0, A065796(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A065816

/-- `1+eq[0, A065796(n+1)]` -/
def P6014750472889023508.Spec : Prop :=
  ∀ n, (P6014750472889023508.a n : ℤ) = A065816 (n + 1)

theorem P6014750472889023508.correct : P6014750472889023508.Spec := by
  intro n
  simp only [A065816, Nat.add_sub_cancel]

end A065816

/-! ## A065816.P9400613862691700523

`A153152(eq[0, A065796(n+1)])`
-/

namespace A065816.P9400613862691700523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065816.P9400613862691700523

namespace A065816

/-- `A153152(eq[0, A065796(n+1)])` -/
def P9400613862691700523.Spec : Prop :=
  ∀ n, P9400613862691700523.a n = A065816 (n + 1)

end A065816

/-! ## A065816.P7596804879220157292

`eq[0, A065796(A000007(n)+n)]`
-/

namespace A065816.P7596804879220157292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065796 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065816.P7596804879220157292

namespace A065816

/-- `eq[0, A065796(A000007(n)+n)]` -/
def P7596804879220157292.Spec : Prop :=
  ∀ n, (P7596804879220157292.a n : ℤ) = A065816 (n + 1)

end A065816

/-! ## A065816.P12233598962667079798

`eq[0, A065796(A000038(n)+n)]`
-/

namespace A065816.P12233598962667079798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065796 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065816.P12233598962667079798

namespace A065816

/-- `eq[0, A065796(A000038(n)+n)]` -/
def P12233598962667079798.Spec : Prop :=
  ∀ n, (P12233598962667079798.a n : ℤ) = A065816 (n + 1)

end A065816

/-! ## A065816.P10551948650935625861

`eq[0, A065796(A233583(n+1))]`
-/

namespace A065816.P10551948650935625861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065796 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065816.P10551948650935625861

namespace A065816

/-- `eq[0, A065796(A233583(n+1))]` -/
def P10551948650935625861.Spec : Prop :=
  ∀ n, (P10551948650935625861.a n : ℤ) = A065816 (n + 1)

end A065816

/-!
# A065820: Numbers n such that sigma_6(n)/sigma_2(n) is prime.

The programs for A065820, there is no canonical definition to state claims against.
-/

/-! ## A065820.P11200116922651709875

`p?[A066111(n+1)]`
-/

namespace A065820.P11200116922651709875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065820.P11200116922651709875

/-! ## A065820.P12335864031443156489

`∩[A015919(n+1), A066111(n+1)]`
-/

namespace A065820.P12335864031443156489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065820.P12335864031443156489

/-! ## A065820.P7817927592792041244

`∩[A066111(n+1), A073485(n+1)]`
-/

namespace A065820.P7817927592792041244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065820.P7817927592792041244

/-! ## A065820.P8810789105450419414

`∩[A066111(n+1), A066720(n+1)]`
-/

namespace A065820.P8810789105450419414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065820.P8810789105450419414

/-! ## A065820.P11438282081713391734

`∩[A066111(n+1), A380525(n+1)]`
-/

namespace A065820.P11438282081713391734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065820.P11438282081713391734

/-! ## A065820.P13393979443194373117

`∩[A066111(n+1), A339817(n+1)]`
-/

namespace A065820.P13393979443194373117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065820.P13393979443194373117

/-! ## A065820.P11354492914018068842

`∩[A066111(n+1), A339879(n+1)]`
-/

namespace A065820.P11354492914018068842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065820.P11354492914018068842

/-! ## A065820.P6485020002777811599

`∩[A066111(n+1), A106118(n+1)]`
-/

namespace A065820.P6485020002777811599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065820.P6485020002777811599

/-! ## A065820.P15288079301818321045

`∩[A000040(n+1), A066111(n+1)]`
-/

namespace A065820.P15288079301818321045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065820.P15288079301818321045

/-! ## A065820.P6432107203802724277

`∩[A008578(n+1), A066111(n+1)]`
-/

namespace A065820.P6432107203802724277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065820.P6432107203802724277

/-! ## A065820.P8699091143745056068

`∩[A046022(n+1), A066111(n+1)]`
-/

namespace A065820.P8699091143745056068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065820.P8699091143745056068

/-! ## A065820.P5753339144462431487

`∩[A051948(n+1), A066111(n+1)]`
-/

namespace A065820.P5753339144462431487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065820.P5753339144462431487

/-! ## A065820.P9484896907906190570

`∩[A066111(n+1), A067126(n+1)]`
-/

namespace A065820.P9484896907906190570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065820.P9484896907906190570

/-! ## A065820.P8377073148979957285

`∩[A066111(n+1), A093515(n+1)]`
-/

namespace A065820.P8377073148979957285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065820.P8377073148979957285

/-! ## A065820.P9201472254174516290

`∩[A066111(n+1), A116974(n+1)]`
-/

namespace A065820.P9201472254174516290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065820.P9201472254174516290

/-! ## A065820.P13244361259056878176

`∩[A066111(n+1), A158611(n+1)]`
-/

namespace A065820.P13244361259056878176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065820.P13244361259056878176

/-! ## A065820.P16849895004955440055

`∩[A066111(n+1), A182986(n+1)]`
-/

namespace A065820.P16849895004955440055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065820.P16849895004955440055

/-! ## A065820.P6064509693310028849

`∩[A053813(n+1), A066111(n+1)]`
-/

namespace A065820.P6064509693310028849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065820.P6064509693310028849

/-! ## A065820.P11058587625180755937

`∩[A062972(n+1), A066111(n+1)]`
-/

namespace A065820.P11058587625180755937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065820.P11058587625180755937

/-!
# A065823: Numbers k such that 6*phi(k) = 5*sigma(k).

The programs for A065823, there is no canonical definition to state claims against.
-/

/-! ## A065823.P1291759612341224983

`A389593(n+1)/9`
-/

namespace A065823.P1291759612341224983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389593 (n + 1) : ℚ) / 9

end

end A065823.P1291759612341224983

/-!
# A065824: Smallest solution m to (n+1)*phi(m) = n*sigma(m), or -1 if no solution exists.

The programs for A065824, there is no canonical definition to state claims against.
-/

/-! ## A065824.P14323521682653752391

`A291932(2*n+3)`
-/

namespace A065824.P14323521682653752391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291932 (2 * n + 3)

end

end A065824.P14323521682653752391

/-! ## A065824.P4659080333024746284

`A069799(A291932(Δ[(n+1)²]))`
-/

namespace A065824.P4659080333024746284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (A291932 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A065824.P4659080333024746284

/-!
# A065825: Smallest k such that n numbers may be picked in {1,...,k} with no three terms in arithmetic progression.

The programs for A065825, there is no canonical definition to state claims against.
-/

/-! ## A065825.P11734992716923917374

`A005047(n+1)+1`
-/

namespace A065825.P11734992716923917374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005047 (n + 1) + 1

end

end A065825.P11734992716923917374

/-! ## A065825.P11660146477734788644

`lt[A003002(abs(1-n)), A003002(n)]`
-/

namespace A065825.P11660146477734788644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 |1 - (n : ℤ)|.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065825.P11660146477734788644

/-! ## A065825.P4770794471369892257

`record[Δ[A003002(n)]*A000027(n+1)]`
-/

namespace A065825.P4770794471369892257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065825.P4770794471369892257

/-! ## A065825.P15617553022181385485

`eq[1, A003002(n+1)-A003002(n)]+1`
-/

namespace A065825.P15617553022181385485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (n + 1) - A003002 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065825.P15617553022181385485

/-!
# A065826: Triangle with T(n,k) = k*E(n,k) where E(n,k) are Eulerian numbers A008292.

The programs for A065826, there is no canonical definition to state claims against.
-/

/-! ## A065826.P17820194275604636410

`A002260(n+1)*A008292(n+1)`
-/

namespace A065826.P17820194275604636410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A008292 (n + 1)

end

end A065826.P17820194275604636410

/-! ## A065826.P12131585521419942185

`(A002262(n)+1)*A008292(n+1)`
-/

namespace A065826.P12131585521419942185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A008292 (n + 1)

end

end A065826.P12131585521419942185

/-! ## A065826.P12246406168303095284

`(val(A055235(n), 3)+1)*A008292(n+1)`
-/

namespace A065826.P12246406168303095284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A055235 n).toNat 3 + 1 : ℤ) * A008292 (n + 1)

end

end A065826.P12246406168303095284

/-! ## A065826.P8941718989817527143

`(1-A057944(n)+n)*A008292(n+1)`
-/

namespace A065826.P8941718989817527143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057944 n + (n : ℤ)) * A008292 (n + 1)

end

end A065826.P8941718989817527143

/-! ## A065826.P2096085307834213761

`A002260(n+1)*A123125(lt[1, A002260(n+1)])`
-/

namespace A065826.P2096085307834213761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A123125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A065826.P2096085307834213761

/-! ## A065826.P8999231753211206204

`A008292(n+1)/A133819(n+1)*A133820(n+1)`
-/

namespace A065826.P8999231753211206204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) : ℚ) / (A133819 (n + 1) : ℚ) * (A133820 (n + 1) : ℚ)

end

end A065826.P8999231753211206204

/-! ## A065826.P6093749618410438129

`A008292(n+1)/A133820(n+1)*A133821(n+1)`
-/

namespace A065826.P6093749618410438129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) : ℚ) / (A133820 (n + 1) : ℚ) * (A133821 (n + 1) : ℚ)

end

end A065826.P6093749618410438129

/-! ## A065826.P1005807699336410694

`A008292(n+1)/A028246(n+1)*A019538(n+1)`
-/

namespace A065826.P1005807699336410694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) : ℚ) / (A028246 (n + 1) : ℚ) * (A019538 (n + 1) : ℚ)

end

end A065826.P1005807699336410694

/-! ## A065826.P15078644055436992077

`A000005(A059268(n))*A008292(n+1)`
-/

namespace A065826.P15078644055436992077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A008292 (n + 1)

end

end A065826.P15078644055436992077

/-! ## A065826.P10161860281482086805

`A000005(A059268(n))*A173018(A002024(n+1)+n)`
-/

namespace A065826.P10161860281482086805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A173018 (A002024 (n + 1) + (n : ℤ)).toNat

end

end A065826.P10161860281482086805

/-!
# A065827: Sum of squares of divisors of square numbers.

The programs for A065827, the canonical program `A065827.P4606986247344016180` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065827 has offset 1).

The definition of A065827 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065827.P4606986247344016180

`A001157((n+1)²)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A065827

/-- `A001157((n+1)²)` -/
def P4606986247344016180.Spec : Prop :=
  ∀ n, P4606986247344016180.a n = A065827 (n + 1)

theorem P4606986247344016180.correct : P4606986247344016180.Spec := by
  intro n
  simp only [A065827, Nat.add_sub_cancel]

end A065827

/-! ## A065827.P18020067522506622842

`A057660(n+1)*A065764(n+1)`
-/

namespace A065827.P18020067522506622842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057660 (n + 1) * A065764 (n + 1)

end

end A065827.P18020067522506622842

namespace A065827

/-- `A057660(n+1)*A065764(n+1)` -/
def P18020067522506622842.Spec : Prop :=
  ∀ n, P18020067522506622842.a n = A065827 (n + 1)

end A065827

/-! ## A065827.P13167198819494413549

`∑{d}[n+1, A000290(#)*A034678((n+1)/#)]`
-/

namespace A065827.P13167198819494413549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A034678 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065827.P13167198819494413549

namespace A065827

/-- `∑{d}[n+1, A000290(#)*A034678((n+1)/#)]` -/
def P13167198819494413549.Spec : Prop :=
  ∀ n, P13167198819494413549.a n = A065827 (n + 1)

end A065827

/-! ## A065827.P8051090116904673407

`∑{d}[n+1, A033196(#)*A068970((n+1)/#)]`
-/

namespace A065827.P8051090116904673407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033196 d * A068970 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065827.P8051090116904673407

namespace A065827

/-- `∑{d}[n+1, A033196(#)*A068970((n+1)/#)]` -/
def P8051090116904673407.Spec : Prop :=
  ∀ n, P8051090116904673407.a n = A065827 (n + 1)

end A065827

/-! ## A065827.P12817567031005726660

`∑{d}[n+1, A055491(#)*A065960((n+1)/#)]`
-/

namespace A065827.P12817567031005726660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055491 d * A065960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065827.P12817567031005726660

namespace A065827

/-- `∑{d}[n+1, A055491(#)*A065960((n+1)/#)]` -/
def P12817567031005726660.Spec : Prop :=
  ∀ n, P12817567031005726660.a n = A065827 (n + 1)

end A065827

/-! ## A065827.P5300442092764723662

`∑{d}[n+1, A181797(#)*A372952((n+1)/#)]`
-/

namespace A065827.P5300442092764723662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A181797 d * A372952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065827.P5300442092764723662

namespace A065827

/-- `∑{d}[n+1, A181797(#)*A372952((n+1)/#)]` -/
def P5300442092764723662.Spec : Prop :=
  ∀ n, P5300442092764723662.a n = A065827 (n + 1)

end A065827

/-! ## A065827.P1898224328145750176

`∑{d}[n+1, A334657(#)*A356533((n+1)/#)]`
-/

namespace A065827.P1898224328145750176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A334657 d * A356533 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065827.P1898224328145750176

namespace A065827

/-- `∑{d}[n+1, A334657(#)*A356533((n+1)/#)]` -/
def P1898224328145750176.Spec : Prop :=
  ∀ n, P1898224328145750176.a n = A065827 (n + 1)

end A065827

/-! ## A065827.P6220218693938945265

`∑{d}[(n+1)², #²]`
-/

namespace A065827.P6220218693938945265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 2

end

end A065827.P6220218693938945265

namespace A065827

/-- `∑{d}[(n+1)², #²]` -/
def P6220218693938945265.Spec : Prop :=
  ∀ n, (P6220218693938945265.a n : ℤ) = A065827 (n + 1)

end A065827

/-! ## A065827.P11931796087620579249

`A000203((n+1)²)*A057660(n+1)`
-/

namespace A065827.P11931796087620579249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1) ^ 2) * A057660 (n + 1)

end

end A065827.P11931796087620579249

namespace A065827

/-- `A000203((n+1)²)*A057660(n+1)` -/
def P11931796087620579249.Spec : Prop :=
  ∀ n, P11931796087620579249.a n = A065827 (n + 1)

end A065827

/-! ## A065827.P11142971247916593693

`sqrt(A356533((n+1)²))`
-/

namespace A065827.P11142971247916593693
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A356533 ((n + 1) ^ 2) : ℝ)

end

end A065827.P11142971247916593693

namespace A065827

/-- `sqrt(A356533((n+1)²))` -/
def P11142971247916593693.Spec : Prop :=
  ∀ n, P11142971247916593693.a n = (A065827 (n + 1) : ℝ)

end A065827

/-! ## A065827.P14151964307926220815

`A328259((n+1)²)/(n+1)²`
-/

namespace A065827.P14151964307926220815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328259 ((n + 1) ^ 2) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A065827.P14151964307926220815

namespace A065827

/-- `A328259((n+1)²)/(n+1)²` -/
def P14151964307926220815.Spec : Prop :=
  ∀ n, P14151964307926220815.a n = (A065827 (n + 1) : ℚ)

end A065827

/-! ## A065827.P1487942969553342713

`abs(1-A001157(A005563(n)+1))+1`
-/

namespace A065827.P1487942969553342713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A001157 (A005563 n + 1).toNat| + 1

end

end A065827.P1487942969553342713

namespace A065827

/-- `abs(1-A001157(A005563(n)+1))+1` -/
def P1487942969553342713.Spec : Prop :=
  ∀ n, P1487942969553342713.a n = A065827 (n + 1)

end A065827

/-! ## A065827.P3201837296465921127

`A001159((n+1)²)/A084218(n+1)`
-/

namespace A065827.P3201837296465921127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001159 ((n + 1) ^ 2) : ℚ) / (A084218 (n + 1) : ℚ)

end

end A065827.P3201837296465921127

namespace A065827

/-- `A001159((n+1)²)/A084218(n+1)` -/
def P3201837296465921127.Spec : Prop :=
  ∀ n, P3201837296465921127.a n = (A065827 (n + 1) : ℚ)

end A065827

/-! ## A065827.P4777358676271024540

`A001157(A005563(n)+1)%A198960(n)`
-/

namespace A065827.P4777358676271024540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001157 (A005563 n + 1).toNat) (A198960 n)

end

end A065827.P4777358676271024540

namespace A065827

/-- `A001157(A005563(n)+1)%A198960(n)` -/
def P4777358676271024540.Spec : Prop :=
  ∀ n, P4777358676271024540.a n = A065827 (n + 1)

end A065827

/-! ## A065827.P11836107077776043102

`A001157(A005563(n)+1)*A155050(val(n+1, 2))`
-/

namespace A065827.P11836107077776043102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A005563 n + 1).toNat * A155050 (SequenceMachineLib.valuation (n + 1) 2)

end

end A065827.P11836107077776043102

namespace A065827

/-- `A001157(A005563(n)+1)*A155050(val(n+1, 2))` -/
def P11836107077776043102.Spec : Prop :=
  ∀ n, P11836107077776043102.a n = A065827 (n + 1)

end A065827

/-!
# A065828: Binary digits found in the decimal expansion of Pi, listed with repetitions and in order of appearance.

The programs for A065828, there is no canonical definition to state claims against.
-/

/-! ## A065828.P17401460453631947005

`3-p?[3-A065836(n+1)]`
-/

namespace A065828.P17401460453631947005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A065836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065828.P17401460453631947005

/-! ## A065828.P15496992732879871743

`A000796(lt[A000796(n), 2])`
-/

namespace A065828.P15496992732879871743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A065828.P15496992732879871743

/-! ## A065828.P9415246803290408286

`A000796(eq[1, or(1, A000796(n))])`
-/

namespace A065828.P9415246803290408286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000796 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A065828.P9415246803290408286

/-! ## A065828.P13566924510859787599

`A000796(eq[A000796(n)², A000796(n)])`
-/

namespace A065828.P13566924510859787599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A065828.P13566924510859787599

/-! ## A065828.P729841559473495596

`A000796(eq[1, A000796(n)^A000796(n)])`
-/

namespace A065828.P729841559473495596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000796 (n + 1) : ℚ) ^ (A000796 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A065828.P729841559473495596

/-! ## A065828.P15544320019203857999

`A086994(lt[A086994(n), 2])`
-/

namespace A065828.P15544320019203857999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A065828.P15544320019203857999

/-! ## A065828.P5384588044136319769

`A086994(eq[A086994(n)², A086994(n)])`
-/

namespace A065828.P5384588044136319769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A065828.P5384588044136319769

/-! ## A065828.P863297106905162792

`A000796(eq[A000796(n), A030657(n+1)])`
-/

namespace A065828.P863297106905162792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A065828.P863297106905162792

/-! ## A065828.P15830765343927926370

`A000796(eq[A000796(n), A086995(n+1)])`
-/

namespace A065828.P15830765343927926370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A065828.P15830765343927926370

/-! ## A065828.P5090202959851991445

`A065830(n+1)%2`
-/

namespace A065828.P5090202959851991445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065830 (n + 1)) 2

end

end A065828.P5090202959851991445

/-! ## A065828.P2153559909085775882

`and(A048578(n), A065830(n+1))`
-/

namespace A065828.P2153559909085775882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A065830 (n + 1))

end

end A065828.P2153559909085775882

/-! ## A065828.P16013497856311744519

`and(A065830(n+1), A158388(n))`
-/

namespace A065828.P16013497856311744519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065830 (n + 1)) (A158388 n)

end

end A065828.P16013497856311744519

/-! ## A065828.P31489992929713390

`and(A065830(n+1), A066827(n+1))`
-/

namespace A065828.P31489992929713390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065830 (n + 1)) (A066827 (n + 1))

end

end A065828.P31489992929713390

/-! ## A065828.P5399293051467465725

`and(A020737(n), A065830(n+1))`
-/

namespace A065828.P5399293051467465725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A065830 (n + 1))

end

end A065828.P5399293051467465725

/-! ## A065828.P17408631261798432146

`and(A065830(n+1), A195744(n))`
-/

namespace A065828.P17408631261798432146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065830 (n + 1)) (A195744 n)

end

end A065828.P17408631261798432146

/-! ## A065828.P3054432546378052846

`and(A065830(n+1), A122041(n+1))`
-/

namespace A065828.P3054432546378052846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065830 (n + 1)) (A122041 (n + 1))

end

end A065828.P3054432546378052846

/-! ## A065828.P8118755258514482711

`and(A065830(n+1), A196657(n))`
-/

namespace A065828.P8118755258514482711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065830 (n + 1)) (A196657 n)

end

end A065828.P8118755258514482711

/-! ## A065828.P18062625324286380203

`and(and(1, A065830(n+1)), A051900(n))`
-/

namespace A065828.P18062625324286380203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.land 1 (A065830 (n + 1))) (A051900 n)

end

end A065828.P18062625324286380203

/-! ## A065828.P13755029196455227076

`and(A048479(n), A065830(n+1))`
-/

namespace A065828.P13755029196455227076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A065830 (n + 1))

end

end A065828.P13755029196455227076

/-!
# A065829: String formed from first n binary digits found in decimal expansion of Pi.

The programs for A065829, there is no canonical definition to state claims against.
-/

/-! ## A065829.P733138178790574474

`A065828(n+1)+10*a(n-1)` with `a(0)=1`
-/

namespace A065829.P733138178790574474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065828 (n + 1) + 10 * a (n - 1)

end

end A065829.P733138178790574474

/-! ## A065829.P12295816061043639405

`A007088(A065830(n+1))`
-/

namespace A065829.P12295816061043639405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A065830 (n + 1)).toNat

end

end A065829.P12295816061043639405

/-! ## A065829.P15422194139543429837

`A185544(2*A065830(n+1))`
-/

namespace A065829.P15422194139543429837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A065830 (n + 1)).toNat

end

end A065829.P15422194139543429837

/-! ## A065829.P17275282434566269426

`10*a(n-1)-A008683(Δ[A026021(2*n+1)])` with `a(0)=1`
-/

namespace A065829.P17275282434566269426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026021 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) - A008683 (f1 (n + 1) - f1 n).toNat

end

end A065829.P17275282434566269426

/-! ## A065829.P9248790603477326608

`A261299(n)+A178798(A307543(n))`
-/

namespace A065829.P9248790603477326608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261299 n + A178798 (A307543 n).toNat

end

end A065829.P9248790603477326608

/-!
# A065830: A065829 converted to base 10.

The programs for A065830, there is no canonical definition to state claims against.
-/

/-! ## A065830.P18031113237518778010

`A065828(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A065830.P18031113237518778010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065828 (n + 1) + 2 * a (n - 1)

end

end A065830.P18031113237518778010

/-! ## A065830.P9859661127381864285

`A329829(2^A004907(n+1))`
-/

namespace A065830.P9859661127381864285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329829 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A004907 (n + 1) : ℤ))).toNat

end

end A065830.P9859661127381864285

/-! ## A065830.P1852408546121151171

`A329829(2^A004918(n+1))`
-/

namespace A065830.P1852408546121151171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329829 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A004918 (n + 1) : ℤ))).toNat

end

end A065830.P1852408546121151171

/-! ## A065830.P17814541888825240019

`A329829(lcm(A000079(n), A294808(n)))`
-/

namespace A065830.P17814541888825240019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329829 (Int.lcm (A000079 n) (A294808 n))

end

end A065830.P17814541888825240019

/-! ## A065830.P8515777720379679835

`A329829(A000079(n)*A351241(n+1))`
-/

namespace A065830.P8515777720379679835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329829 (A000079 n * A351241 (n + 1)).toNat

end

end A065830.P8515777720379679835

/-!
# A065831: Primes found in A065830.

The programs for A065831, there is no canonical definition to state claims against.
-/

/-! ## A065831.P4602001882214429757

`A065830(A065832(n+1))`
-/

namespace A065831.P4602001882214429757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065830 (A065832 (n + 1)).toNat

end

end A065831.P4602001882214429757

/-!
# A065832: Numbers k such that the first k binary digits found in the base-10 expansion of Pi form a prime (when the decimal point is ignored).

The programs for A065832, there is no canonical definition to state claims against.
-/

/-! ## A065832.P1804960767375473410

`ceil(log2(A065831(n+1)))`
-/

namespace A065832.P1804960767375473410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A065831 (n + 1) : ℝ)⌉

end

end A065832.P1804960767375473410

/-!
# A065833: Ternary digits found in decimal expansion of Pi.

The programs for A065833, there is no canonical definition to state claims against.
-/

/-! ## A065833.P2167516829765027241

`A000796(lt[A000796(n), 3])`
-/

namespace A065833.P2167516829765027241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A065833.P2167516829765027241

/-! ## A065833.P13908176866253320077

`A000796(eq[0, 2%A000796(n)!])`
-/

namespace A065833.P13908176866253320077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 % Nat.factorial (A000796 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A065833.P13908176866253320077

/-! ## A065833.P4293782053921451907

`A000796(eq[A000796(n)%3, A000796(n)])`
-/

namespace A065833.P4293782053921451907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000796 (n + 1)) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A065833.P4293782053921451907

/-! ## A065833.P5066832096498203148

`A065835(n+1)%3`
-/

namespace A065833.P5066832096498203148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065835 (n + 1)) 3

end

end A065833.P5066832096498203148

/-! ## A065833.P9560759525863325013

`record[A065835(A126759(n))]%3`
-/

namespace A065833.P9560759525863325013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065835 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 3

end

end A065833.P9560759525863325013

/-! ## A065833.P18399254749544463610

`A065834(n+1)%5`
-/

namespace A065833.P18399254749544463610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065834 (n + 1)) 5

end

end A065833.P18399254749544463610

/-!
# A065834: String formed from first n ternary digits found in decimal expansion of Pi.

The programs for A065834, there is no canonical definition to state claims against.
-/

/-! ## A065834.P7418779006876681736

`A007089(A065835(n+1))`
-/

namespace A065834.P7418779006876681736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A065835 (n + 1)).toNat

end

end A065834.P7418779006876681736

/-! ## A065834.P1845782829279732074

`A000027(10*a(n-1)+2)` with `a(0)=1, a(1)=11`
-/

namespace A065834.P1845782829279732074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  A000027 (10 * a (n - 1) + 2).toNat

end

end A065834.P1845782829279732074

/-!
# A065835: A065834 converted to base 10.

The programs for A065835, there is no canonical definition to state claims against.
-/

/-! ## A065835.P4301532541944194997

`A065833(n+1)+3*a(n-1)` with `a(0)=1`
-/

namespace A065835.P4301532541944194997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065833 (n + 1) + 3 * a (n - 1)

end

end A065835.P4301532541944194997

/-! ## A065835.P350301133143727938

`A304110(a(n-1)-5*(1-a(n-1))+4)+1` with `a(0)=1`
-/

namespace A065835.P350301133143727938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A304110 (a (n - 1) - 5 * (1 - a (n - 1)) + 4).toNat + 1

end

end A065835.P350301133143727938

/-! ## A065835.P14433481811520751585

`A336592(∑[3^n]^((n+1)/∏{p}[n+1, gcd((n+1)*(n+2), #²)]))`
-/

namespace A065835.P14433481811520751585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336592 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.gcd ((n + 1) * (n + 2)) (p ^ 2) : ℕ) : ℚ) : ℝ))).toNat

end

end A065835.P14433481811520751585

/-!
# A065836: Quaternary digits found in decimal expansion of Pi.

The programs for A065836, there is no canonical definition to state claims against.
-/

/-! ## A065836.P10350651619851485997

`A000796(lt[A000796(n), 4])`
-/

namespace A065836.P10350651619851485997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A065836.P10350651619851485997

/-! ## A065836.P1098014542110868700

`A000796(eq[3, or(3, A000796(n))])`
-/

namespace A065836.P1098014542110868700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A000796 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A065836.P1098014542110868700

/-! ## A065836.P4502727835658871033

`A000796(eq[A000796(n)%4, A000796(n)])`
-/

namespace A065836.P4502727835658871033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000796 (n + 1)) 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A065836.P4502727835658871033

/-! ## A065836.P8982269384996685341

`A065838(n+1)%4`
-/

namespace A065836.P8982269384996685341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065838 (n + 1)) 4

end

end A065836.P8982269384996685341

/-! ## A065836.P16569297599237498093

`and(3, A065838(-xor(n, -1)))`
-/

namespace A065836.P16569297599237498093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A065838 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A065836.P16569297599237498093

/-! ## A065836.P18175479685960123712

`A065837(n+1)%5`
-/

namespace A065836.P18175479685960123712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065837 (n + 1)) 5

end

end A065836.P18175479685960123712

/-!
# A065837: String formed from first n quaternary digits found in decimal expansion of Pi.

The programs for A065837, there is no canonical definition to state claims against.
-/

/-! ## A065837.P4562532139781647357

`A007090(A065838(n+1))`
-/

namespace A065837.P4562532139781647357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A065838 (n + 1)).toNat

end

end A065837.P4562532139781647357

/-! ## A065837.P5074001761854653108

`A007090(or(A014514(n), A037772(n+1)))`
-/

namespace A065837.P5074001761854653108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (Int.lor (A014514 n) (A037772 (n + 1))).toNat

end

end A065837.P5074001761854653108

/-!
# A065838: A065837 converted to base 10.

The programs for A065838, there is no canonical definition to state claims against.
-/

/-! ## A065838.P10708607838697163169

`A065836(n+1)+4*a(n-1)` with `a(0)=3`
-/

namespace A065838.P10708607838697163169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A065836 (n + 1) + 4 * a (n - 1)

end

end A065838.P10708607838697163169

/-! ## A065838.P1029092576987686178

`floor(60*4^(n+1)/68)-A008616(A055145(n+1))`
-/

namespace A065838.P1029092576987686178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊60 * ((4 ^ (n + 1) : ℚ) / 68)⌋ - A008616 (A055145 (n + 1)).toNat

end

end A065838.P1029092576987686178

/-!
# A065839: Primes found in A065838.

The programs for A065839, there is no canonical definition to state claims against.
-/

/-! ## A065839.P17060804441053701413

`A065838(A065840(n+1))`
-/

namespace A065839.P17060804441053701413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065838 (A065840 (n + 1)).toNat

end

end A065839.P17060804441053701413

/-!
# A065841: a(1) = 1; a(2) = 2; a(3) = 3; a(n) is concatenation of a(n-3), a(n-2) and a(n-1).

The programs for A065841, there is no canonical definition to state claims against.
-/

/-! ## A065841.P15734467298274261127

`A165301(A034731(n+1))`
-/

namespace A065841.P15734467298274261127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165301 (A034731 (n + 1)).toNat

end

end A065841.P15734467298274261127

/-!
# A065842: a(1) = 1; a(2) = 2; a(3) = 3; a(n) is concatenation of a(n-3), a(n-2) and a(n-1); the digits on the right of the first 3 (if any) are then swapped with the digits on the left.

The programs for A065842, there is no canonical definition to state claims against.
-/

/-! ## A065842.P10027809178675019141

`A002275(a(n-2))²+2` with `a(0)=1, a(1)=2`
-/

namespace A065842.P10027809178675019141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A002275 (a (n - 2)).toNat ^ 2 + 2

end

end A065842.P10027809178675019141

/-!
# A065844: Let u be any string of n digits from {0,1,2}; let f(u) = number of distinct primes, not beginning with 0, formed by permuting the digits of u to a base-3 number; then a(n) = max_u f(u).

The programs for A065844, there is no canonical definition to state claims against.
-/

/-! ## A065844.P4081569676543418803

`A194287(round(A181066(n)+sqrt(n)))`
-/

namespace A065844.P4081569676543418803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194287 (SequenceMachineLib.roundAway ((A181066 n : ℝ) + Real.sqrt (n : ℝ))).toNat

end

end A065844.P4081569676543418803

/-! ## A065844.P7519673248340378764

`A330943(A084546(n)+A000081(n))`
-/

namespace A065844.P7519673248340378764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330943 (A084546 n + A000081 n).toNat

end

end A065844.P7519673248340378764

/-! ## A065844.P6525084284692067421

`A194287(A181066(n)+A100196(n))`
-/

namespace A065844.P6525084284692067421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194287 (A181066 n + A100196 n).toNat

end

end A065844.P6525084284692067421

/-! ## A065844.P17754140645290358743

`A383112(A198518(n+2))-A003415(n)`
-/

namespace A065844.P17754140645290358743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383112 (A198518 (n + 2)).toNat - A003415 n

end

end A065844.P17754140645290358743

/-!
# A065847: Let u be any string of n digits from {0,...,5}; let f(u) = number of distinct primes, not beginning with 0, formed by permuting the digits of u to a base-6 number; then a(n) = max_u f(u).

The programs for A065847, there is no canonical definition to state claims against.
-/

/-! ## A065847.P14757168252434240928

`A157271(A249395(n)+A097646(n+1))`
-/

namespace A065847.P14757168252434240928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A249395 n + A097646 (n + 1)).toNat

end

end A065847.P14757168252434240928

/-!
# A065848: Let u be any string of n digits from {0,...,6}; let f(u) = number of distinct primes, not beginning with 0, formed by permuting the digits of u to a base-7 number; then a(n) = max_u f(u).

The programs for A065848, there is no canonical definition to state claims against.
-/

/-! ## A065848.P15001682438584764870

`char[3]+∑[A316355(n^n)]`
-/

namespace A065848.P15001682438584764870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (n ^ n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A065848.P15001682438584764870

/-! ## A065848.P5108399626659472031

`∑[A321402(2*n)+n-1]+1`
-/

namespace A065848.P5108399626659472031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321402 (2 * n) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A065848.P5108399626659472031

/-!
# A065849: Let u be any string of n digits from {0,...,7}; let f(u) = number of distinct primes, not beginning with 0, formed by permuting the digits of u to a base-8 number; then a(n) = max_u f(u).

The programs for A065849, there is no canonical definition to state claims against.
-/

/-! ## A065849.P5635970497998509012

`A071912((n+1)^n+1)`
-/

namespace A065849.P5635970497998509012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071912 ((n + 1) ^ n + 1)

end

end A065849.P5635970497998509012

/-! ## A065849.P12678529463378035652

`A297551(A004645(n))`
-/

namespace A065849.P12678529463378035652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297551 (A004645 n).toNat

end

end A065849.P12678529463378035652

/-!
# A065850: Let u be any string of n digits from {0,...,8}; let f(u) = number of distinct primes, not beginning with 0, formed by permuting the digits of u to a base-9 number; then a(n) = max_u f(u).

The programs for A065850, there is no canonical definition to state claims against.
-/

/-! ## A065850.P13061755425014660820

`A300163(A037032(n+2))`
-/

namespace A065850.P13061755425014660820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300163 (A037032 (n + 2)).toNat

end

end A065850.P13061755425014660820

/-! ## A065850.P4295672704676067804

`∑[A184398(∏[A344607(n)])]`
-/

namespace A065850.P4295672704676067804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344607 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184398 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065850.P4295672704676067804

/-!
# A065851: Let u be any string of n digits from {0,...,9}; let f(u) = number of distinct primes, not beginning with 0, formed by permuting the digits of u; then a(n) = max_u f(u).

The programs for A065851, there is no canonical definition to state claims against.
-/

/-! ## A065851.P11081883891596780968

`A145393(A050029(n+1)+A000166(n+1))`
-/

namespace A065851.P11081883891596780968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145393 (A050029 (n + 1) + A000166 (n + 1)).toNat

end

end A065851.P11081883891596780968

/-! ## A065851.P3256322968808899670

`A100196(n!*∑[n])+1`
-/

namespace A065851.P3256322968808899670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)) + 1

end

end A065851.P3256322968808899670

/-!
# A065852: Let u be any string of 3 digits from {0,...,n-1}; let f(u) = number of distinct primes, not beginning with 0, formed by permuting the digits of u to a base-n number; then a(n) = max_u f(u).

The programs for A065852, there is no canonical definition to state claims against.
-/

/-! ## A065852.P3349984715419765694

`A000120(xor(A103424(n), A153418(n+1)))`
-/

namespace A065852.P3349984715419765694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A103424 n) (A153418 (n + 1))).toNat

end

end A065852.P3349984715419765694

/-! ## A065852.P11477310222547293962

`A125173(A046524(n+1)*A184165(n+1))`
-/

namespace A065852.P11477310222547293962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125173 (A046524 (n + 1) * A184165 (n + 1)).toNat

end

end A065852.P11477310222547293962

/-! ## A065852.P9392993887559436781

`A007088(xor(A103424(n), A153418(n+1)))%9`
-/

namespace A065852.P9392993887559436781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007088 (Int.xor (A103424 n) (A153418 (n + 1))).toNat) 9

end

end A065852.P9392993887559436781

/-! ## A065852.P7370324112926927415

`A008334(A049974(n+2))+∑{e}[n+1, #-val(#!, 2)]`
-/

namespace A065852.P7370324112926927415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008334 (A049974 (n + 2)).toNat + ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ))

end

end A065852.P7370324112926927415

/-! ## A065852.P12591640818260288091

`A139767(A027362(n+3))+A001222(n+1)`
-/

namespace A065852.P12591640818260288091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139767 (A027362 (n + 3)).toNat + A001222 (n + 1)

end

end A065852.P12591640818260288091

/-!
# A065854: Smallest prime q such that (p^q-1)/(p-1) is a prime, where p = prime(n).

The programs for A065854, there is no canonical definition to state claims against.
-/

/-! ## A065854.P12965047949630410067

`A279069(n+1)+1`
-/

namespace A065854.P12965047949630410067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279069 (n + 1) + 1

end

end A065854.P12965047949630410067

/-! ## A065854.P7347560466971914671

`ceil(n/98)+2*A065813(n+1)`
-/

namespace A065854.P7347560466971914671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 98⌉ + 2 * A065813 (n + 1)

end

end A065854.P7347560466971914671

/-! ## A065854.P17324476662338788833

`A020725(A279069(n+1))`
-/

namespace A065854.P17324476662338788833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A279069 (n + 1)).toNat

end

end A065854.P17324476662338788833

/-! ## A065854.P13155325361955513715

`A036452(n+1)*A065813(n+1)+1`
-/

namespace A065854.P13155325361955513715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (n + 1) * A065813 (n + 1) + 1

end

end A065854.P13155325361955513715

/-! ## A065854.P15489938394109157225

`A036453(n+1)*A065813(n+1)+1`
-/

namespace A065854.P15489938394109157225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A065813 (n + 1) + 1

end

end A065854.P15489938394109157225

/-! ## A065854.P15857662207460614735

`A000032(C(2, n+2))*A065813(n+1)+1`
-/

namespace A065854.P15857662207460614735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A065813 (n + 1) + 1

end

end A065854.P15857662207460614735

/-! ## A065854.P14523545447264538757

`A020639(A000010(n+2))*A065813(n+1)+1`
-/

namespace A065854.P14523545447264538757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A065813 (n + 1) + 1

end

end A065854.P14523545447264538757

/-! ## A065854.P8241258568761221045

`A020639(Δ[A000040(n+1)])*A065813(n+1)+1`
-/

namespace A065854.P8241258568761221045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (n + 1) - f1 n).toNat * A065813 (n + 1) + 1

end

end A065854.P8241258568761221045

/-! ## A065854.P5383990800201810509

`A020639(eq[2, A000005(n+1)])*A065813(n+1)+1`
-/

namespace A065854.P5383990800201810509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) * A065813 (n + 1) + 1

end

end A065854.P5383990800201810509

/-!
# A065855: Number of composites <= n.

The programs for A065855, the canonical program `A065855.P16805213270251966039` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065855 has offset 1).

The definition of A065855 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062298, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065855.P16805213270251966039

`A062298(n+1)-1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065855

/-- `A062298(n+1)-1` -/
def P16805213270251966039.Spec : Prop :=
  ∀ n, P16805213270251966039.a n = A065855 (n + 1)

theorem P16805213270251966039.correct : P16805213270251966039.Spec := by
  intro n
  simp only [A065855, Nat.add_sub_cancel]

end A065855

/-! ## A065855.P10139923100190980428

`n-A000720(n+1)`
-/

namespace A065855.P10139923100190980428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000720 (n + 1)

end

end A065855.P10139923100190980428

namespace A065855

/-- `n-A000720(n+1)` -/
def P10139923100190980428.Spec : Prop :=
  ∀ n, P10139923100190980428.a n = A065855 (n + 1)

end A065855

/-! ## A065855.P3050267838982887166

`∑[floor(atan(∑{e}[n+1, #]))]`
-/

namespace A065855.P3050267838982887166
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065855.P3050267838982887166

namespace A065855

/-- `∑[floor(atan(∑{e}[n+1, #]))]` -/
def P3050267838982887166.Spec : Prop :=
  ∀ n, P3050267838982887166.a n = A065855 (n + 1)

end A065855

/-! ## A065855.P14216388583838086815

`∑[char[lt[1, ∑{e}[n+1, #]]]]`
-/

namespace A065855.P14216388583838086815
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065855.P14216388583838086815

namespace A065855

/-- `∑[char[lt[1, ∑{e}[n+1, #]]]]` -/
def P14216388583838086815.Spec : Prop :=
  ∀ n, (P14216388583838086815.a n : ℤ) = A065855 (n + 1)

end A065855

/-! ## A065855.P5675364090874020014

`∑[C(n, ∏{p}[n+1, C(#, n)])]`
-/

namespace A065855.P5675364090874020014
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∏ p ∈ Nat.primeFactors (f2 n), Nat.choose p n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065855.P5675364090874020014

namespace A065855

/-- `∑[C(n, ∏{p}[n+1, C(#, n)])]` -/
def P5675364090874020014.Spec : Prop :=
  ∀ n, (P5675364090874020014.a n : ℤ) = A065855 (n + 1)

end A065855

/-! ## A065855.P5701555334624023542

`∑[∑{e}[∑{p}[∑{e}[n+1, #], #], #]]`
-/

namespace A065855.P5701555334624023542
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065855.P5701555334624023542

namespace A065855

/-- `∑[∑{e}[∑{p}[∑{e}[n+1, #], #], #]]` -/
def P5701555334624023542.Spec : Prop :=
  ∀ n, (P5701555334624023542.a n : ℤ) = A065855 (n + 1)

end A065855

/-! ## A065855.P14673260643083669502

`∑[char[lt[n+2, ∑{d}[n+1, #]]]]`
-/

namespace A065855.P14673260643083669502
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f5 n), d

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065855.P14673260643083669502

namespace A065855

/-- `∑[char[lt[n+2, ∑{d}[n+1, #]]]]` -/
def P14673260643083669502.Spec : Prop :=
  ∀ n, (P14673260643083669502.a n : ℤ) = A065855 (n + 1)

end A065855

/-! ## A065855.P17874467754466702165

`∑[1-∏{p}[n+1, val(#, n+1)]]`
-/

namespace A065855.P17874467754466702165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065855.P17874467754466702165

namespace A065855

/-- `∑[1-∏{p}[n+1, val(#, n+1)]]` -/
def P17874467754466702165.Spec : Prop :=
  ∀ n, P17874467754466702165.a n = A065855 (n + 1)

end A065855

/-! ## A065855.P2865121205723123955

`n-∑[∑{p}[n+1, val(#, n+1)]]`
-/

namespace A065855.P2865121205723123955
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A065855.P2865121205723123955

namespace A065855

/-- `n-∑[∑{p}[n+1, val(#, n+1)]]` -/
def P2865121205723123955.Spec : Prop :=
  ∀ n, P2865121205723123955.a n = A065855 (n + 1)

end A065855

/-! ## A065855.P1764091523928122739

`n-∑[∑{p}[n+1, C(#, n+1)]]`
-/

namespace A065855.P1764091523928122739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A065855.P1764091523928122739

namespace A065855

/-- `n-∑[∑{p}[n+1, C(#, n+1)]]` -/
def P1764091523928122739.Spec : Prop :=
  ∀ n, P1764091523928122739.a n = A065855 (n + 1)

end A065855

/-! ## A065855.P5357499879177630355

`∑[A066247(n+1)]`
-/

namespace A065855.P5357499879177630355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065855.P5357499879177630355

namespace A065855

/-- `∑[A066247(n+1)]` -/
def P5357499879177630355.Spec : Prop :=
  ∀ n, P5357499879177630355.a n = A065855 (n + 1)

end A065855

/-! ## A065855.P3863119752438600398

`∑[char[A072668(n+1)]]`
-/

namespace A065855.P3863119752438600398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065855.P3863119752438600398

namespace A065855

/-- `∑[char[A072668(n+1)]]` -/
def P3863119752438600398.Spec : Prop :=
  ∀ n, (P3863119752438600398.a n : ℤ) = A065855 (n + 1)

end A065855

/-! ## A065855.P16715473703977806668

`∑[char[A060462(n+2)]]`
-/

namespace A065855.P16715473703977806668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065855.P16715473703977806668

namespace A065855

/-- `∑[char[A060462(n+2)]]` -/
def P16715473703977806668.Spec : Prop :=
  ∀ n, (P16715473703977806668.a n : ℤ) = A065855 (n + 1)

end A065855

/-! ## A065855.P8152117922895038112

`∑[char[A113637(n+3)]]`
-/

namespace A065855.P8152117922895038112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113637 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065855.P8152117922895038112

namespace A065855

/-- `∑[char[A113637(n+3)]]` -/
def P8152117922895038112.Spec : Prop :=
  ∀ n, (P8152117922895038112.a n : ℤ) = A065855 (n + 1)

end A065855

/-! ## A065855.P14583889238277762727

`∑[A005171(n+1)]-1`
-/

namespace A065855.P14583889238277762727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A065855.P14583889238277762727

namespace A065855

/-- `∑[A005171(n+1)]-1` -/
def P14583889238277762727.Spec : Prop :=
  ∀ n, P14583889238277762727.a n = A065855 (n + 1)

end A065855

/-! ## A065855.P14053785512616542391

`∑[1-A080339(n+1)]`
-/

namespace A065855.P14053785512616542391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065855.P14053785512616542391

namespace A065855

/-- `∑[1-A080339(n+1)]` -/
def P14053785512616542391.Spec : Prop :=
  ∀ n, P14053785512616542391.a n = A065855 (n + 1)

end A065855

/-! ## A065855.P7949566827492785587

`n-∑[A010051(n+1)]`
-/

namespace A065855.P7949566827492785587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065855.P7949566827492785587

namespace A065855

/-- `n-∑[A010051(n+1)]` -/
def P7949566827492785587.Spec : Prop :=
  ∀ n, P7949566827492785587.a n = A065855 (n + 1)

end A065855

/-! ## A065855.P11012138771654898767

`A333996(n+1)-∑[n]`
-/

namespace A065855.P11012138771654898767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333996 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A065855.P11012138771654898767

namespace A065855

/-- `A333996(n+1)-∑[n]` -/
def P11012138771654898767.Spec : Prop :=
  ∀ n, P11012138771654898767.a n = A065855 (n + 1)

end A065855

/-! ## A065855.P15432256444832339081

`n+1-Δ[A002815(n)]`
-/

namespace A065855.P15432256444832339081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A065855.P15432256444832339081

namespace A065855

/-- `n+1-Δ[A002815(n)]` -/
def P15432256444832339081.Spec : Prop :=
  ∀ n, P15432256444832339081.a n = A065855 (n + 1)

end A065855

/-! ## A065855.P14180432032511538065

`1-A036234(n+1)+n`
-/

namespace A065855.P14180432032511538065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A036234 (n + 1) + (n : ℤ)

end

end A065855.P14180432032511538065

namespace A065855

/-- `1-A036234(n+1)+n` -/
def P14180432032511538065.Spec : Prop :=
  ∀ n, P14180432032511538065.a n = A065855 (n + 1)

end A065855

/-!
# A065856: The (2^n)-th composite number.

The programs for A065856, there is no canonical definition to state claims against.
-/

/-! ## A065856.P15714026655245255570

`A002808(2^n)`
-/

namespace A065856.P15714026655245255570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (2 ^ n)

end

end A065856.P15714026655245255570

/-! ## A065856.P1802299256784473791

`A018252(2^n+1)`
-/

namespace A065856.P1802299256784473791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (2 ^ n + 1)

end

end A065856.P1802299256784473791

/-! ## A065856.P2706426408573723300

`A141468(2^n+2)`
-/

namespace A065856.P2706426408573723300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (2 ^ n + 2)

end

end A065856.P2706426408573723300

/-! ## A065856.P2570763083124158442

`record[A002808(A029930(n))]`
-/

namespace A065856.P2570763083124158442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A029930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065856.P2570763083124158442

/-! ## A065856.P15787663729091523762

`record[A002808(A048483(n))]`
-/

namespace A065856.P15787663729091523762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A048483 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065856.P15787663729091523762

/-!
# A065857: The (10^n)-th composite number.

The programs for A065857, the canonical program `A065857.P4025716272230891271` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065857 has offset 0).

The definition of A065857 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065857.P4025716272230891271

`A002808(A011557(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A065857

/-- `A002808(A011557(n))` -/
def P4025716272230891271.Spec : Prop :=
  ∀ n, P4025716272230891271.a n = A065857 n

theorem P4025716272230891271.correct : P4025716272230891271.Spec := by
  intro n
  simp only [A065857]

end A065857

/-!
# A065858: m-th composite number c(m) = A002808(m), where m is the n-th prime number: a(n) = A002808(A000040(n)).

The programs for A065858, the canonical program `A065858.P14612648944669410725` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065858 has offset 1).

The definition of A065858 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065858.P14612648944669410725

`A002808(A000040(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A065858

/-- `A002808(A000040(n+1))` -/
def P14612648944669410725.Spec : Prop :=
  ∀ n, P14612648944669410725.a n = A065858 (n + 1)

theorem P14612648944669410725.correct : P14612648944669410725.Spec := by
  intro n
  simp only [A065858, Nat.add_sub_cancel]

end A065858

/-! ## A065858.P264676734918120228

`A088982(n+1)-A073168(n+1)`
-/

namespace A065858.P264676734918120228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088982 (n + 1) - A073168 (n + 1)

end

end A065858.P264676734918120228

namespace A065858

/-- `A088982(n+1)-A073168(n+1)` -/
def P264676734918120228.Spec : Prop :=
  ∀ n, P264676734918120228.a n = A065858 (n + 1)

end A065858

/-! ## A065858.P13117436561602521503

`A022449(n+2)`
-/

namespace A065858.P13117436561602521503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022449 (n + 2)

end

end A065858.P13117436561602521503

namespace A065858

/-- `A022449(n+2)` -/
def P13117436561602521503.Spec : Prop :=
  ∀ n, P13117436561602521503.a n = A065858 (n + 1)

end A065858

/-! ## A065858.P6638121420451530011

`A018252(p?[xor(1, n)+1]+1)`
-/

namespace A065858.P6638121420451530011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A065858.P6638121420451530011

namespace A065858

/-- `A018252(p?[xor(1, n)+1]+1)` -/
def P6638121420451530011.Spec : Prop :=
  ∀ n, P6638121420451530011.a n = A065858 (n + 1)

end A065858

/-! ## A065858.P5097334320895683109

`A018252(p?[round(sqrt(n)+n)]+1)`
-/

namespace A065858.P5097334320895683109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A065858.P5097334320895683109

namespace A065858

/-- `A018252(p?[round(sqrt(n)+n)]+1)` -/
def P5097334320895683109.Spec : Prop :=
  ∀ n, P5097334320895683109.a n = A065858 (n + 1)

end A065858

/-! ## A065858.P4741995418271885099

`A002808(Δ[A007504(n)])`
-/

namespace A065858.P4741995418271885099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (f1 (n + 1) - f1 n).toNat

end

end A065858.P4741995418271885099

namespace A065858

/-- `A002808(Δ[A007504(n)])` -/
def P4741995418271885099.Spec : Prop :=
  ∀ n, P4741995418271885099.a n = A065858 (n + 1)

end A065858

/-! ## A065858.P6579055488786005970

`A018252(A008864(n+1))`
-/

namespace A065858.P6579055488786005970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A008864 (n + 1)).toNat

end

end A065858.P6579055488786005970

namespace A065858

/-- `A018252(A008864(n+1))` -/
def P6579055488786005970.Spec : Prop :=
  ∀ n, P6579055488786005970.a n = A065858 (n + 1)

end A065858

/-! ## A065858.P15693815116884572772

`A018252(A028815(n+1))`
-/

namespace A065858.P15693815116884572772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A028815 (n + 1)).toNat

end

end A065858.P15693815116884572772

namespace A065858

/-- `A018252(A028815(n+1))` -/
def P15693815116884572772.Spec : Prop :=
  ∀ n, P15693815116884572772.a n = A065858 (n + 1)

end A065858

/-! ## A065858.P7793242834547978296

`A002808(A008578(n+2))`
-/

namespace A065858.P7793242834547978296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A008578 (n + 2)).toNat

end

end A065858.P7793242834547978296

namespace A065858

/-- `A002808(A008578(n+2))` -/
def P7793242834547978296.Spec : Prop :=
  ∀ n, P7793242834547978296.a n = A065858 (n + 1)

end A065858

/-! ## A065858.P7616517886868923629

`A002808(A182986(n+2))`
-/

namespace A065858.P7616517886868923629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A182986 (n + 2)).toNat

end

end A065858.P7616517886868923629

namespace A065858

/-- `A002808(A182986(n+2))` -/
def P7616517886868923629.Spec : Prop :=
  ∀ n, P7616517886868923629.a n = A065858 (n + 1)

end A065858

/-! ## A065858.P14984228806238972819

`A018252(Δ[A007504(n)]+1)`
-/

namespace A065858.P14984228806238972819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (n + 1) - f1 n + 1).toNat

end

end A065858.P14984228806238972819

namespace A065858

/-- `A018252(Δ[A007504(n)]+1)` -/
def P14984228806238972819.Spec : Prop :=
  ∀ n, P14984228806238972819.a n = A065858 (n + 1)

end A065858

/-! ## A065858.P3509982445823664677

`A018252(∑[A075526(n)]+2)`
-/

namespace A065858.P3509982445823664677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A065858.P3509982445823664677

namespace A065858

/-- `A018252(∑[A075526(n)]+2)` -/
def P3509982445823664677.Spec : Prop :=
  ∀ n, P3509982445823664677.a n = A065858 (n + 1)

end A065858

/-! ## A065858.P11803717341414958132

`A141468(Δ[A007504(n)]+2)`
-/

namespace A065858.P11803717341414958132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (f1 (n + 1) - f1 n + 2).toNat

end

end A065858.P11803717341414958132

namespace A065858

/-- `A141468(Δ[A007504(n)]+2)` -/
def P11803717341414958132.Spec : Prop :=
  ∀ n, P11803717341414958132.a n = A065858 (n + 1)

end A065858

/-! ## A065858.P16075841598706205659

`A002808(Δ[A175965(n+2)])`
-/

namespace A065858.P16075841598706205659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (f1 (n + 1) - f1 n).toNat

end

end A065858.P16075841598706205659

namespace A065858

/-- `A002808(Δ[A175965(n+2)])` -/
def P16075841598706205659.Spec : Prop :=
  ∀ n, P16075841598706205659.a n = A065858 (n + 1)

end A065858

/-! ## A065858.P16747509360417586036

`A002808(record[A037225(n)+1])`
-/

namespace A065858.P16747509360417586036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A065858.P16747509360417586036

namespace A065858

/-- `A002808(record[A037225(n)+1])` -/
def P16747509360417586036.Spec : Prop :=
  ∀ n, P16747509360417586036.a n = A065858 (n + 1)

end A065858

/-! ## A065858.P7582618329365257925

`A018252(record[A162753(n)+1])`
-/

namespace A065858.P7582618329365257925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A065858.P7582618329365257925

namespace A065858

/-- `A018252(record[A162753(n)+1])` -/
def P7582618329365257925.Spec : Prop :=
  ∀ n, P7582618329365257925.a n = A065858 (n + 1)

end A065858

/-! ## A065858.P17560620347562120021

`A002808(record[A006530(n+2)])`
-/

namespace A065858.P17560620347562120021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A065858.P17560620347562120021

namespace A065858

/-- `A002808(record[A006530(n+2)])` -/
def P17560620347562120021.Spec : Prop :=
  ∀ n, P17560620347562120021.a n = A065858 (n + 1)

end A065858

/-! ## A065858.P17210331495060331483

`A002808(record[A020639(n+2)])`
-/

namespace A065858.P17210331495060331483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A065858.P17210331495060331483

namespace A065858

/-- `A002808(record[A020639(n+2)])` -/
def P17210331495060331483.Spec : Prop :=
  ∀ n, P17210331495060331483.a n = A065858 (n + 1)

end A065858

/-! ## A065858.P9706401566769233831

`A018252(record[A037225(n)+2])`
-/

namespace A065858.P9706401566769233831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A065858.P9706401566769233831

namespace A065858

/-- `A018252(record[A037225(n)+2])` -/
def P9706401566769233831.Spec : Prop :=
  ∀ n, P9706401566769233831.a n = A065858 (n + 1)

end A065858

/-!
# A065859: Remainder when the n-th prime is divided by the n-th composite number.

The programs for A065859, the canonical program `A065859.P11041658421309913817` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065859 has offset 1).

The definition of A065859 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065859.P11041658421309913817

`A000040(n+1)%A002808(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A065859

/-- `A000040(n+1)%A002808(n+1)` -/
def P11041658421309913817.Spec : Prop :=
  ∀ n, P11041658421309913817.a n = A065859 (n + 1)

theorem P11041658421309913817.correct : P11041658421309913817.Spec := by
  intro n
  simp only [A065859, Nat.add_sub_cancel]

end A065859

/-! ## A065859.P8921991627498985475

`Δ[A007504(n)]%Δ[A053767(n)]`
-/

namespace A065859.P8921991627498985475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (n + 1) - f2 n)

end

end A065859.P8921991627498985475

namespace A065859

/-- `Δ[A007504(n)]%Δ[A053767(n)]` -/
def P8921991627498985475.Spec : Prop :=
  ∀ n, P8921991627498985475.a n = A065859 (n + 1)

end A065859

/-! ## A065859.P13509561153505091038

`A000040(n+1)%Δ[A053767(n)]`
-/

namespace A065859.P13509561153505091038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (f1 (n + 1) - f1 n)

end

end A065859.P13509561153505091038

namespace A065859

/-- `A000040(n+1)%Δ[A053767(n)]` -/
def P13509561153505091038.Spec : Prop :=
  ∀ n, P13509561153505091038.a n = A065859 (n + 1)

end A065859

/-! ## A065859.P6330076727217757969

`A064799(n+1)-A162738(n+1)`
-/

namespace A065859.P6330076727217757969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064799 (n + 1) - A162738 (n + 1)

end

end A065859.P6330076727217757969

namespace A065859

/-- `A064799(n+1)-A162738(n+1)` -/
def P6330076727217757969.Spec : Prop :=
  ∀ n, P6330076727217757969.a n = A065859 (n + 1)

end A065859

/-! ## A065859.P14623034991364357544

`A064799(n+1)%A002808(n+1)`
-/

namespace A065859.P14623034991364357544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064799 (n + 1)) (A002808 (n + 1))

end

end A065859.P14623034991364357544

namespace A065859

/-- `A064799(n+1)%A002808(n+1)` -/
def P14623034991364357544.Spec : Prop :=
  ∀ n, P14623034991364357544.a n = A065859 (n + 1)

end A065859

/-! ## A065859.P14661321909682246096

`sqrt(A001248(n+1))%Δ[A053767(n)]`
-/

namespace A065859.P14661321909682246096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) (f1 (n + 1) - f1 n)

end

end A065859.P14661321909682246096

namespace A065859

/-- `sqrt(A001248(n+1))%Δ[A053767(n)]` -/
def P14661321909682246096.Spec : Prop :=
  ∀ n, P14661321909682246096.a n = A065859 (n + 1)

end A065859

/-! ## A065859.P5739643971608478365

`(A008864(n+1)-1)%Δ[A053767(n)]`
-/

namespace A065859.P5739643971608478365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008864 (n + 1) - 1) (f1 (n + 1) - f1 n)

end

end A065859.P5739643971608478365

namespace A065859

/-- `(A008864(n+1)-1)%Δ[A053767(n)]` -/
def P5739643971608478365.Spec : Prop :=
  ∀ n, P5739643971608478365.a n = A065859 (n + 1)

end A065859

/-! ## A065859.P4622223769549764902

`∑[A054541(n+1)]%lt[1, A107286(n)]`
-/

namespace A065859.P4622223769549764902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ)

end

end A065859.P4622223769549764902

namespace A065859

/-- `∑[A054541(n+1)]%lt[1, A107286(n)]` -/
def P4622223769549764902.Spec : Prop :=
  ∀ n, P4622223769549764902.a n = A065859 (n + 1)

end A065859

/-! ## A065859.P17828557359045979607

`record[A259153(n+2)]%lt[1, A107286(n)]`
-/

namespace A065859.P17828557359045979607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ)

end

end A065859.P17828557359045979607

namespace A065859

/-- `record[A259153(n+2)]%lt[1, A107286(n)]` -/
def P17828557359045979607.Spec : Prop :=
  ∀ n, P17828557359045979607.a n = A065859 (n + 1)

end A065859

/-! ## A065859.P16085790724002609109

`(A006093(n+1)+1)%A141468(n+3)`
-/

namespace A065859.P16085790724002609109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1) + 1) (A141468 (n + 3))

end

end A065859.P16085790724002609109

namespace A065859

/-- `(A006093(n+1)+1)%A141468(n+3)` -/
def P16085790724002609109.Spec : Prop :=
  ∀ n, P16085790724002609109.a n = A065859 (n + 1)

end A065859

/-! ## A065859.P4199191134383868125

`(A086801(n+1)+3)%A141468(n+3)`
-/

namespace A065859.P4199191134383868125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086801 (n + 1) + 3) (A141468 (n + 3))

end

end A065859.P4199191134383868125

namespace A065859

/-- `(A086801(n+1)+3)%A141468(n+3)` -/
def P4199191134383868125.Spec : Prop :=
  ∀ n, P4199191134383868125.a n = A065859 (n + 1)

end A065859

/-! ## A065859.P1205842724961206966

`root(A030078(n+1), 3)%A141468(n+3)`
-/

namespace A065859.P1205842724961206966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A030078 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))) (A141468 (n + 3))

end

end A065859.P1205842724961206966

namespace A065859

/-- `root(A030078(n+1), 3)%A141468(n+3)` -/
def P1205842724961206966.Spec : Prop :=
  ∀ n, P1205842724961206966.a n = A065859 (n + 1)

end A065859

/-! ## A065859.P8079344627724699047

`A000040(n+1)-A002808(n+1)*A073458(n+1)`
-/

namespace A065859.P8079344627724699047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A002808 (n + 1) * A073458 (n + 1)

end

end A065859.P8079344627724699047

namespace A065859

/-- `A000040(n+1)-A002808(n+1)*A073458(n+1)` -/
def P8079344627724699047.Spec : Prop :=
  ∀ n, P8079344627724699047.a n = A065859 (n + 1)

end A065859

/-! ## A065859.P3479635867757581427

`A008578(n+2)%A002808(n+1)`
-/

namespace A065859.P3479635867757581427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2)) (A002808 (n + 1))

end

end A065859.P3479635867757581427

namespace A065859

/-- `A008578(n+2)%A002808(n+1)` -/
def P3479635867757581427.Spec : Prop :=
  ∀ n, P3479635867757581427.a n = A065859 (n + 1)

end A065859

/-! ## A065859.P1879285880002164116

`record[A006530(n+2)]%A018252(n+2)`
-/

namespace A065859.P1879285880002164116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A018252 (n + 2))

end

end A065859.P1879285880002164116

namespace A065859

/-- `record[A006530(n+2)]%A018252(n+2)` -/
def P1879285880002164116.Spec : Prop :=
  ∀ n, P1879285880002164116.a n = A065859 (n + 1)

end A065859

/-! ## A065859.P15240907018707045938

`record[A020639(n+2)]%A018252(n+2)`
-/

namespace A065859.P15240907018707045938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A018252 (n + 2))

end

end A065859.P15240907018707045938

namespace A065859

/-- `record[A020639(n+2)]%A018252(n+2)` -/
def P15240907018707045938.Spec : Prop :=
  ∀ n, P15240907018707045938.a n = A065859 (n + 1)

end A065859

/-! ## A065859.P1692112865945630224

`A067747(2*n+1)%A002808(n+1)`
-/

namespace A065859.P1692112865945630224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067747 (2 * n + 1)) (A002808 (n + 1))

end

end A065859.P1692112865945630224

namespace A065859

/-- `A067747(2*n+1)%A002808(n+1)` -/
def P1692112865945630224.Spec : Prop :=
  ∀ n, P1692112865945630224.a n = A065859 (n + 1)

end A065859

/-! ## A065859.P18205917319677963584

`A073846(2*(n+1))%A002808(n+1)`
-/

namespace A065859.P18205917319677963584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073846 (2 * (n + 1))) (A002808 (n + 1))

end

end A065859.P18205917319677963584

namespace A065859

/-- `A073846(2*(n+1))%A002808(n+1)` -/
def P18205917319677963584.Spec : Prop :=
  ∀ n, P18205917319677963584.a n = A065859 (n + 1)

end A065859

/-! ## A065859.P14821324732959041949

`p?[A167171(n+1)]%A018252(n+2)`
-/

namespace A065859.P14821324732959041949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A018252 (n + 2))

end

end A065859.P14821324732959041949

namespace A065859

/-- `p?[A167171(n+1)]%A018252(n+2)` -/
def P14821324732959041949.Spec : Prop :=
  ∀ n, P14821324732959041949.a n = A065859 (n + 1)

end A065859

/-!
# A065860: Remainder when the n-th composite number is divided by n.

The programs for A065860, the canonical program `A065860.P14952358247560601420` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065860 has offset 1).

The definition of A065860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065860.P14952358247560601420

`Δ[A053767(n)]%(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A065860

/-- `Δ[A053767(n)]%(n+1)` -/
def P14952358247560601420.Spec : Prop :=
  ∀ n, P14952358247560601420.a n = A065860 (n + 1)

theorem P14952358247560601420.correct : P14952358247560601420.Spec := by
  intro n
  simp only [A065860, Nat.add_sub_cancel]

end A065860

/-! ## A065860.P1157239488686513098

`A002808(n+1)%(n+1)`
-/

namespace A065860.P1157239488686513098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (n + 1)) (n + 1 : ℤ)

end

end A065860.P1157239488686513098

namespace A065860

/-- `A002808(n+1)%(n+1)` -/
def P1157239488686513098.Spec : Prop :=
  ∀ n, P1157239488686513098.a n = A065860 (n + 1)

end A065860

/-! ## A065860.P2679814551783356485

`A056653(n+1)%(n+1)`
-/

namespace A065860.P2679814551783356485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056653 (n + 1)) (n + 1 : ℤ)

end

end A065860.P2679814551783356485

namespace A065860

/-- `A056653(n+1)%(n+1)` -/
def P2679814551783356485.Spec : Prop :=
  ∀ n, P2679814551783356485.a n = A065860 (n + 1)

end A065860

/-! ## A065860.P7768818731039897915

`A073169(n+1)%(n+1)`
-/

namespace A065860.P7768818731039897915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073169 (n + 1)) (n + 1 : ℤ)

end

end A065860.P7768818731039897915

namespace A065860

/-- `A073169(n+1)%(n+1)` -/
def P7768818731039897915.Spec : Prop :=
  ∀ n, P7768818731039897915.a n = A065860 (n + 1)

end A065860

/-! ## A065860.P12462268170940139202

`A161537(n+1)%(n+1)`
-/

namespace A065860.P12462268170940139202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161537 (n + 1)) (n + 1 : ℤ)

end

end A065860.P12462268170940139202

namespace A065860

/-- `A161537(n+1)%(n+1)` -/
def P12462268170940139202.Spec : Prop :=
  ∀ n, P12462268170940139202.a n = A065860 (n + 1)

end A065860

/-! ## A065860.P13790585390204369255

`A191992(n+1)%(n+1)`
-/

namespace A065860.P13790585390204369255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191992 (n + 1)) (n + 1 : ℤ)

end

end A065860.P13790585390204369255

namespace A065860

/-- `A191992(n+1)%(n+1)` -/
def P13790585390204369255.Spec : Prop :=
  ∀ n, P13790585390204369255.a n = A065860 (n + 1)

end A065860

/-! ## A065860.P2223417649845495135

`A018252(n+2)%(n+1)`
-/

namespace A065860.P2223417649845495135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (n + 2)) (n + 1 : ℤ)

end

end A065860.P2223417649845495135

namespace A065860

/-- `A018252(n+2)%(n+1)` -/
def P2223417649845495135.Spec : Prop :=
  ∀ n, P2223417649845495135.a n = A065860 (n + 1)

end A065860

/-! ## A065860.P6546734133880782751

`A141468(n+3)%(n+1)`
-/

namespace A065860.P6546734133880782751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141468 (n + 3)) (n + 1 : ℤ)

end

end A065860.P6546734133880782751

namespace A065860

/-- `A141468(n+3)%(n+1)` -/
def P6546734133880782751.Spec : Prop :=
  ∀ n, P6546734133880782751.a n = A065860 (n + 1)

end A065860

/-! ## A065860.P13019265541898885755

`comp[C(A006530(n+1), n)]%(n+1)`
-/

namespace A065860.P13019265541898885755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 1)

end

end A065860.P13019265541898885755

namespace A065860

/-- `comp[C(A006530(n+1), n)]%(n+1)` -/
def P13019265541898885755.Spec : Prop :=
  ∀ n, (P13019265541898885755.a n : ℤ) = A065860 (n + 1)

end A065860

/-! ## A065860.P9712302010389221246

`(lt[1, A001222(n+1)]+1)%(n+1)`
-/

namespace A065860.P9712302010389221246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) % (n + 1)

end

end A065860.P9712302010389221246

namespace A065860

/-- `(lt[1, A001222(n+1)]+1)%(n+1)` -/
def P9712302010389221246.Spec : Prop :=
  ∀ n, (P9712302010389221246.a n : ℤ) = A065860 (n + 1)

end A065860

/-! ## A065860.P6784832768285578007

`(lt[2, A000005(n+1)]+1)%(n+1)`
-/

namespace A065860.P6784832768285578007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) % (n + 1)

end

end A065860.P6784832768285578007

namespace A065860

/-- `(lt[2, A000005(n+1)]+1)%(n+1)` -/
def P6784832768285578007.Spec : Prop :=
  ∀ n, (P6784832768285578007.a n : ℤ) = A065860 (n + 1)

end A065860

/-! ## A065860.P14713564385850269313

`(lt[A000010(n+1), n]+1)%(n+1)`
-/

namespace A065860.P14713564385850269313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) % (n + 1)

end

end A065860.P14713564385850269313

namespace A065860

/-- `(lt[A000010(n+1), n]+1)%(n+1)` -/
def P14713564385850269313.Spec : Prop :=
  ∀ n, (P14713564385850269313.a n : ℤ) = A065860 (n + 1)

end A065860

/-! ## A065860.P6528966399818534534

`(comp[A000040(n+1)-4]+4)%(n+1)`
-/

namespace A065860.P6528966399818534534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 4) % (n + 1)

end

end A065860.P6528966399818534534

namespace A065860

/-- `(comp[A000040(n+1)-4]+4)%(n+1)` -/
def P6528966399818534534.Spec : Prop :=
  ∀ n, (P6528966399818534534.a n : ℤ) = A065860 (n + 1)

end A065860

/-! ## A065860.P422917502643115301

`lt[A006530(abs(1-n)+1), n]%(n+1)`
-/

namespace A065860.P422917502643115301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n % (n + 1)

end

end A065860.P422917502643115301

namespace A065860

/-- `lt[A006530(abs(1-n)+1), n]%(n+1)` -/
def P422917502643115301.Spec : Prop :=
  ∀ n, (P422917502643115301.a n : ℤ) = A065860 (n + 1)

end A065860

/-! ## A065860.P7809972136739865250

`A171523(n+2)%(n+1)`
-/

namespace A065860.P7809972136739865250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171523 (n + 2)) (n + 1 : ℤ)

end

end A065860.P7809972136739865250

namespace A065860

/-- `A171523(n+2)%(n+1)` -/
def P7809972136739865250.Spec : Prop :=
  ∀ n, P7809972136739865250.a n = A065860 (n + 1)

end A065860

/-! ## A065860.P15502889732947118960

`Δ[A051349(n+1)]%(n+1)`
-/

namespace A065860.P15502889732947118960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A065860.P15502889732947118960

namespace A065860

/-- `Δ[A051349(n+1)]%(n+1)` -/
def P15502889732947118960.Spec : Prop :=
  ∀ n, P15502889732947118960.a n = A065860 (n + 1)

end A065860

/-! ## A065860.P15165579852955625506

`A065090(n+3)%(n+1)`
-/

namespace A065860.P15165579852955625506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065090 (n + 3)) (n + 1 : ℤ)

end

end A065860.P15165579852955625506

namespace A065860

/-- `A065090(n+3)%(n+1)` -/
def P15165579852955625506.Spec : Prop :=
  ∀ n, P15165579852955625506.a n = A065860 (n + 1)

end A065860

/-! ## A065860.P13917350851957594339

`A073368(A002808(n+1))`
-/

namespace A065860.P13917350851957594339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073368 (A002808 (n + 1)).toNat

end

end A065860.P13917350851957594339

namespace A065860

/-- `A073368(A002808(n+1))` -/
def P13917350851957594339.Spec : Prop :=
  ∀ n, P13917350851957594339.a n = A065860 (n + 1)

end A065860

/-! ## A065860.P2199709798251490749

`A073368(A018252(n+2))`
-/

namespace A065860.P2199709798251490749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073368 (A018252 (n + 2)).toNat

end

end A065860.P2199709798251490749

namespace A065860

/-- `A073368(A018252(n+2))` -/
def P2199709798251490749.Spec : Prop :=
  ∀ n, P2199709798251490749.a n = A065860 (n + 1)

end A065860

/-! ## A065860.P6378043763776486864

`(lt[1, A072499(n+1)]+1)%(n+1)`
-/

namespace A065860.P6378043763776486864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072499 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) % (n + 1)

end

end A065860.P6378043763776486864

namespace A065860

/-- `(lt[1, A072499(n+1)]+1)%(n+1)` -/
def P6378043763776486864.Spec : Prop :=
  ∀ n, (P6378043763776486864.a n : ℤ) = A065860 (n + 1)

end A065860

/-!
# A065861: Remainder when the n-th composite number is divided by pi(n), the number of primes not exceeding n.

The programs for A065861, the canonical program `A065861.P13523811029634715553` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065861 has offset 2).

The definition of A065861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065861.P13112295784115317579

`A002808(n+2)%A000720(n+2)`
-/

namespace A065861.P13112295784115317579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (n + 2)) (A000720 (n + 2))

end

end A065861.P13112295784115317579

namespace A065861

/-- `A002808(n+2)%A000720(n+2)` -/
def P13112295784115317579.Spec : Prop :=
  ∀ n, P13112295784115317579.a n = A065861 (n + 2)

end A065861

/-! ## A065861.P13684803025758979771

`A018252(n+3)%A000720(n+2)`
-/

namespace A065861.P13684803025758979771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (n + 3)) (A000720 (n + 2))

end

end A065861.P13684803025758979771

namespace A065861

/-- `A018252(n+3)%A000720(n+2)` -/
def P13684803025758979771.Spec : Prop :=
  ∀ n, P13684803025758979771.a n = A065861 (n + 2)

end A065861

/-! ## A065861.P13523811029634715553

`A056653(n+2)%∑[A010051(n+2)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A065861

/-- `A056653(n+2)%∑[A010051(n+2)]` -/
def P13523811029634715553.Spec : Prop :=
  ∀ n, P13523811029634715553.a n = A065861 (n + 2)

theorem P13523811029634715553.correct : P13523811029634715553.Spec := by
  intro n
  simp only [A065861, Nat.add_sub_cancel]

end A065861

/-! ## A065861.P3590033219095259553

`(A072668(n+2)+1)%A000720(n+2)`
-/

namespace A065861.P3590033219095259553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072668 (n + 2) + 1) (A000720 (n + 2))

end

end A065861.P3590033219095259553

namespace A065861

/-- `(A072668(n+2)+1)%A000720(n+2)` -/
def P3590033219095259553.Spec : Prop :=
  ∀ n, P3590033219095259553.a n = A065861 (n + 2)

end A065861

/-! ## A065861.P18358879831796920886

`A073846(2*n+5)%A000720(n+2)`
-/

namespace A065861.P18358879831796920886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073846 (2 * n + 5)) (A000720 (n + 2))

end

end A065861.P18358879831796920886

namespace A065861

/-- `A073846(2*n+5)%A000720(n+2)` -/
def P18358879831796920886.Spec : Prop :=
  ∀ n, P18358879831796920886.a n = A065861 (n + 2)

end A065861

/-!
# A065862: Remainder when n-th composite number is divided by the number of nonprimes not exceeding n.

The programs for A065862, the canonical program `A065862.P10454594518190021057` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065862 has offset 1).

The definition of A065862 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065862.P10454594518190021057

`A002808(n+1)%(n+1-A000720(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A065862

/-- `A002808(n+1)%(n+1-A000720(n+1))` -/
def P10454594518190021057.Spec : Prop :=
  ∀ n, P10454594518190021057.a n = A065862 (n + 1)

theorem P10454594518190021057.correct : P10454594518190021057.Spec := by
  intro n
  simp only [A065862, Nat.add_sub_cancel]

end A065862

/-! ## A065862.P3556588124265416427

`Δ[A053767(n)]%A062298(n+1)`
-/

namespace A065862.P3556588124265416427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A062298 (n + 1))

end

end A065862.P3556588124265416427

namespace A065862

/-- `Δ[A053767(n)]%A062298(n+1)` -/
def P3556588124265416427.Spec : Prop :=
  ∀ n, P3556588124265416427.a n = A065862 (n + 1)

end A065862

/-! ## A065862.P3406526789678622698

`A002808(n+1)%A062298(n+1)`
-/

namespace A065862.P3406526789678622698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (n + 1)) (A062298 (n + 1))

end

end A065862.P3406526789678622698

namespace A065862

/-- `A002808(n+1)%A062298(n+1)` -/
def P3406526789678622698.Spec : Prop :=
  ∀ n, P3406526789678622698.a n = A065862 (n + 1)

end A065862

/-! ## A065862.P14425061147882744431

`A056653(n+1)%A062298(n+1)`
-/

namespace A065862.P14425061147882744431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056653 (n + 1)) (A062298 (n + 1))

end

end A065862.P14425061147882744431

namespace A065862

/-- `A056653(n+1)%A062298(n+1)` -/
def P14425061147882744431.Spec : Prop :=
  ∀ n, P14425061147882744431.a n = A065862 (n + 1)

end A065862

/-! ## A065862.P17230703504345795484

`A018252(n+2)%A062298(n+1)`
-/

namespace A065862.P17230703504345795484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (n + 2)) (A062298 (n + 1))

end

end A065862.P17230703504345795484

namespace A065862

/-- `A018252(n+2)%A062298(n+1)` -/
def P17230703504345795484.Spec : Prop :=
  ∀ n, P17230703504345795484.a n = A065862 (n + 1)

end A065862

/-! ## A065862.P5039591974832377117

`(A072668(n+1)+1)%A062298(n+1)`
-/

namespace A065862.P5039591974832377117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072668 (n + 1) + 1) (A062298 (n + 1))

end

end A065862.P5039591974832377117

namespace A065862

/-- `(A072668(n+1)+1)%A062298(n+1)` -/
def P5039591974832377117.Spec : Prop :=
  ∀ n, P5039591974832377117.a n = A065862 (n + 1)

end A065862

/-! ## A065862.P12446268169116887142

`A000720(A007821(n+2))%(n+1-A000720(n+1))`
-/

namespace A065862.P12446268169116887142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A007821 (n + 2)).toNat) ((n + 1 : ℤ) - A000720 (n + 1))

end

end A065862.P12446268169116887142

namespace A065862

/-- `A000720(A007821(n+2))%(n+1-A000720(n+1))` -/
def P12446268169116887142.Spec : Prop :=
  ∀ n, P12446268169116887142.a n = A065862 (n + 1)

end A065862

/-! ## A065862.P2986233921223967596

`A073846(A144396(n+1))%A062298(n+1)`
-/

namespace A065862.P2986233921223967596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073846 (A144396 (n + 1)).toNat) (A062298 (n + 1))

end

end A065862.P2986233921223967596

namespace A065862

/-- `A073846(A144396(n+1))%A062298(n+1)` -/
def P2986233921223967596.Spec : Prop :=
  ∀ n, P2986233921223967596.a n = A065862 (n + 1)

end A065862

/-! ## A065862.P17283255233199638053

`A026234(A065091(n+1))%A062298(n+1)`
-/

namespace A065862.P17283255233199638053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026234 (A065091 (n + 1)).toNat) (A062298 (n + 1))

end

end A065862.P17283255233199638053

namespace A065862

/-- `A026234(A065091(n+1))%A062298(n+1)` -/
def P17283255233199638053.Spec : Prop :=
  ∀ n, P17283255233199638053.a n = A065862 (n + 1)

end A065862

/-!
# A065863: Remainder when n-th prime is divided by the number of nonprimes not exceeding n.

The programs for A065863, the canonical program `A065863.P10840527793315109714` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065863 has offset 1).

The definition of A065863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065863.P10840527793315109714

`A000040(n+1)%∑[∏{p}[n+1, C(#%n, #)]]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065863

/-- `A000040(n+1)%∑[∏{p}[n+1, C(#%n, #)]]` -/
def P10840527793315109714.Spec : Prop :=
  ∀ n, P10840527793315109714.a n = A065863 (n + 1)

theorem P10840527793315109714.correct : P10840527793315109714.Spec := by
  intro n
  simp only [A065863, Nat.add_sub_cancel]

end A065863

/-! ## A065863.P2214992587947772593

`Δ[A007504(n)]%A062298(n+1)`
-/

namespace A065863.P2214992587947772593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A062298 (n + 1))

end

end A065863.P2214992587947772593

namespace A065863

/-- `Δ[A007504(n)]%A062298(n+1)` -/
def P2214992587947772593.Spec : Prop :=
  ∀ n, P2214992587947772593.a n = A065863 (n + 1)

end A065863

/-! ## A065863.P16865468073834718678

`A000040(n+1)%A062298(n+1)`
-/

namespace A065863.P16865468073834718678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A062298 (n + 1))

end

end A065863.P16865468073834718678

namespace A065863

/-- `A000040(n+1)%A062298(n+1)` -/
def P16865468073834718678.Spec : Prop :=
  ∀ n, P16865468073834718678.a n = A065863 (n + 1)

end A065863

/-! ## A065863.P12936923959298537894

`A006005(n+1)%A062298(n+1)`
-/

namespace A065863.P12936923959298537894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (n + 1)) (A062298 (n + 1))

end

end A065863.P12936923959298537894

namespace A065863

/-- `A006005(n+1)%A062298(n+1)` -/
def P12936923959298537894.Spec : Prop :=
  ∀ n, P12936923959298537894.a n = A065863 (n + 1)

end A065863

/-! ## A065863.P8066169708489490364

`A083249(n+1)%A062298(n+1)`
-/

namespace A065863.P8066169708489490364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083249 (n + 1)) (A062298 (n + 1))

end

end A065863.P8066169708489490364

namespace A065863

/-- `A083249(n+1)%A062298(n+1)` -/
def P8066169708489490364.Spec : Prop :=
  ∀ n, P8066169708489490364.a n = A065863 (n + 1)

end A065863

/-! ## A065863.P16363056315516929551

`A161847(n+1)%A062298(n+1)`
-/

namespace A065863.P16363056315516929551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161847 (n + 1)) (A062298 (n + 1))

end

end A065863.P16363056315516929551

namespace A065863

/-- `A161847(n+1)%A062298(n+1)` -/
def P16363056315516929551.Spec : Prop :=
  ∀ n, P16363056315516929551.a n = A065863 (n + 1)

end A065863

/-! ## A065863.P4001656208800347705

`A167180(n+1)%A062298(n+1)`
-/

namespace A065863.P4001656208800347705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167180 (n + 1)) (A062298 (n + 1))

end

end A065863.P4001656208800347705

namespace A065863

/-- `A167180(n+1)%A062298(n+1)` -/
def P4001656208800347705.Spec : Prop :=
  ∀ n, P4001656208800347705.a n = A065863 (n + 1)

end A065863

/-! ## A065863.P17525431459547916261

`A171577(n+1)%A062298(n+1)`
-/

namespace A065863.P17525431459547916261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171577 (n + 1)) (A062298 (n + 1))

end

end A065863.P17525431459547916261

namespace A065863

/-- `A171577(n+1)%A062298(n+1)` -/
def P17525431459547916261.Spec : Prop :=
  ∀ n, P17525431459547916261.a n = A065863 (n + 1)

end A065863

/-! ## A065863.P3319053094112320263

`(A040976(n+1)+2)%A062298(n+1)`
-/

namespace A065863.P3319053094112320263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040976 (n + 1) + 2) (A062298 (n + 1))

end

end A065863.P3319053094112320263

namespace A065863

/-- `(A040976(n+1)+2)%A062298(n+1)` -/
def P3319053094112320263.Spec : Prop :=
  ∀ n, P3319053094112320263.a n = A065863 (n + 1)

end A065863

/-! ## A065863.P17356505480913934721

`A008578(n+2)%A062298(n+1)`
-/

namespace A065863.P17356505480913934721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2)) (A062298 (n + 1))

end

end A065863.P17356505480913934721

namespace A065863

/-- `A008578(n+2)%A062298(n+1)` -/
def P17356505480913934721.Spec : Prop :=
  ∀ n, P17356505480913934721.a n = A065863 (n + 1)

end A065863

/-! ## A065863.P9133406663553156209

`(record[A000010(n+1)]+1)%A062298(n+1)`
-/

namespace A065863.P9133406663553156209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1) (A062298 (n + 1))

end

end A065863.P9133406663553156209

namespace A065863

/-- `(record[A000010(n+1)]+1)%A062298(n+1)` -/
def P9133406663553156209.Spec : Prop :=
  ∀ n, P9133406663553156209.a n = A065863 (n + 1)

end A065863

/-! ## A065863.P197567934763884188

`(eq[1, A054024(n+1)]+1)%(A065855(n+1)+1)`
-/

namespace A065863.P197567934763884188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) (A065855 (n + 1) + 1)

end

end A065863.P197567934763884188

namespace A065863

/-- `(eq[1, A054024(n+1)]+1)%(A065855(n+1)+1)` -/
def P197567934763884188.Spec : Prop :=
  ∀ n, P197567934763884188.a n = A065863 (n + 1)

end A065863

/-! ## A065863.P1371461064326060814

`A073846(2*(n+1))%A062298(n+1)`
-/

namespace A065863.P1371461064326060814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073846 (2 * (n + 1))) (A062298 (n + 1))

end

end A065863.P1371461064326060814

namespace A065863

/-- `A073846(2*(n+1))%A062298(n+1)` -/
def P1371461064326060814.Spec : Prop :=
  ∀ n, P1371461064326060814.a n = A065863 (n + 1)

end A065863

/-! ## A065863.P13412841078390538347

`A006530(A062281(n+1))%A062298(n+1)`
-/

namespace A065863.P13412841078390538347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A062281 (n + 1)).toNat) (A062298 (n + 1))

end

end A065863.P13412841078390538347

namespace A065863

/-- `A006530(A062281(n+1))%A062298(n+1)` -/
def P13412841078390538347.Spec : Prop :=
  ∀ n, P13412841078390538347.a n = A065863 (n + 1)

end A065863

/-!
# A065864: Remainder when n is divided by the number of nonprimes not exceeding n.

The programs for A065864, the canonical program `A065864.P3235383946542202387` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065864 has offset 1).

The definition of A065864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065864.P2109158428830391663

`(n+1)%A062298(n+1)`
-/

namespace A065864.P2109158428830391663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A062298 (n + 1))

end

end A065864.P2109158428830391663

namespace A065864

/-- `(n+1)%A062298(n+1)` -/
def P2109158428830391663.Spec : Prop :=
  ∀ n, P2109158428830391663.a n = A065864 (n + 1)

end A065864

/-! ## A065864.P14164699861282920815

`A000720(n+1)%∑[∏{p}[n+1, C(#%n, #)]]`
-/

namespace A065864.P14164699861282920815
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (p % n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A065864.P14164699861282920815

namespace A065864

/-- `A000720(n+1)%∑[∏{p}[n+1, C(#%n, #)]]` -/
def P14164699861282920815.Spec : Prop :=
  ∀ n, P14164699861282920815.a n = A065864 (n + 1)

end A065864

/-! ## A065864.P14789126778190641790

`A000720(n+1)%A034886(n)`
-/

namespace A065864.P14789126778190641790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (n + 1)) (A034886 n)

end

end A065864.P14789126778190641790

namespace A065864

/-- `A000720(n+1)%A034886(n)` -/
def P14789126778190641790.Spec : Prop :=
  ∀ n, P14789126778190641790.a n = A065864 (n + 1)

end A065864

/-! ## A065864.P17375824632820256808

`∑[A010051(n+1)]%A034886(n)`
-/

namespace A065864.P17375824632820256808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A034886 n)

end

end A065864.P17375824632820256808

namespace A065864

/-- `∑[A010051(n+1)]%A034886(n)` -/
def P17375824632820256808.Spec : Prop :=
  ∀ n, P17375824632820256808.a n = A065864 (n + 1)

end A065864

/-! ## A065864.P3235383946542202387

`A000027(n+1)%∑[A005171(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A065864

/-- `A000027(n+1)%∑[A005171(n+1)]` -/
def P3235383946542202387.Spec : Prop :=
  ∀ n, P3235383946542202387.a n = A065864 (n + 1)

theorem P3235383946542202387.correct : P3235383946542202387.Spec := by
  intro n
  simp only [A065864, Nat.add_sub_cancel]

end A065864

/-! ## A065864.P16251988989973315228

`A166718(n+1)%(A000720(n+1)-A166718(n+1))`
-/

namespace A065864.P16251988989973315228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166718 (n + 1)) (A000720 (n + 1) - A166718 (n + 1))

end

end A065864.P16251988989973315228

namespace A065864

/-- `A166718(n+1)%(A000720(n+1)-A166718(n+1))` -/
def P16251988989973315228.Spec : Prop :=
  ∀ n, P16251988989973315228.a n = A065864 (n + 1)

end A065864

/-! ## A065864.P17021100539866433195

`A230980(n+1)%A255573(n+1)`
-/

namespace A065864.P17021100539866433195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230980 (n + 1)) (A255573 (n + 1))

end

end A065864.P17021100539866433195

namespace A065864

/-- `A230980(n+1)%A255573(n+1)` -/
def P17021100539866433195.Spec : Prop :=
  ∀ n, P17021100539866433195.a n = A065864 (n + 1)

end A065864

/-! ## A065864.P9173742026319936381

`A246074(n+1)%(A000720(n+1)-A246074(n+1))`
-/

namespace A065864.P9173742026319936381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246074 (n + 1)) (A000720 (n + 1) - A246074 (n + 1))

end

end A065864.P9173742026319936381

namespace A065864

/-- `A246074(n+1)%(A000720(n+1)-A246074(n+1))` -/
def P9173742026319936381.Spec : Prop :=
  ∀ n, P9173742026319936381.a n = A065864 (n + 1)

end A065864

/-! ## A065864.P1127735092658135056

`A061009(n+1)%A015753(n)`
-/

namespace A065864.P1127735092658135056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061009 (n + 1)) (A015753 n)

end

end A065864.P1127735092658135056

namespace A065864

/-- `A061009(n+1)%A015753(n)` -/
def P1127735092658135056.Spec : Prop :=
  ∀ n, P1127735092658135056.a n = A065864 (n + 1)

end A065864

/-! ## A065864.P11284092338327143289

`A048158(A256885(n+1))`
-/

namespace A065864.P11284092338327143289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (A256885 (n + 1)).toNat

end

end A065864.P11284092338327143289

namespace A065864

/-- `A048158(A256885(n+1))` -/
def P11284092338327143289.Spec : Prop :=
  ∀ n, P11284092338327143289.a n = A065864 (n + 1)

end A065864

/-!
# A065866: a(n) = n! * Catalan(n+1).

The programs for A065866, the canonical program `A065866.P4744219493298047151` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065866 has offset 0).

The definition of A065866 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065866.P4744219493298047151

`2*(2*n+1)!/(n+2)!`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065866

/-- `2*(2*n+1)!/(n+2)!` -/
def P4744219493298047151.Spec : Prop :=
  ∀ n, P4744219493298047151.a n = (A065866 n : ℚ)

end A065866

/-! ## A065866.P14567844829790483894

`n*(4*n+2)/(n+2)*a(n-1)` with `a(0)=1`
-/

namespace A065866.P14567844829790483894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n * (4 * n + 2) : ℚ) / (n + 2 : ℚ) * a (n - 1)

end

end A065866.P14567844829790483894

namespace A065866

/-- `n*(4*n+2)/(n+2)*a(n-1)` -/
def P14567844829790483894.Spec : Prop :=
  ∀ n, P14567844829790483894.a n = (A065866 n : ℚ)

end A065866

/-! ## A065866.P12327513492656013572

`A110371(n+1)/2`
-/

namespace A065866.P12327513492656013572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110371 (n + 1) : ℚ) / 2

end

end A065866.P12327513492656013572

namespace A065866

/-- `A110371(n+1)/2` -/
def P12327513492656013572.Spec : Prop :=
  ∀ n, P12327513492656013572.a n = (A065866 n : ℚ)

end A065866

/-! ## A065866.P15915366113541095064

`n!*∑[A071724(n)]`
-/

namespace A065866.P15915366113541095064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065866.P15915366113541095064

namespace A065866

/-- `n!*∑[A071724(n)]` -/
def P15915366113541095064.Spec : Prop :=
  ∀ n, P15915366113541095064.a n = A065866 n

end A065866

/-! ## A065866.P2457834253911361000

`n!*Δ[A014137(n)]`
-/

namespace A065866.P2457834253911361000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A065866.P2457834253911361000

namespace A065866

/-- `n!*Δ[A014137(n)]` -/
def P2457834253911361000.Spec : Prop :=
  ∀ n, P2457834253911361000.a n = A065866 n

end A065866

/-! ## A065866.P6262603572851888937

`n!*record[A097331(n)]`
-/

namespace A065866.P6262603572851888937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065866.P6262603572851888937

namespace A065866

/-- `n!*record[A097331(n)]` -/
def P6262603572851888937.Spec : Prop :=
  ∀ n, P6262603572851888937.a n = A065866 n

end A065866

/-! ## A065866.P16464404254253237702

`n!*record[A099364(n)]`
-/

namespace A065866.P16464404254253237702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065866.P16464404254253237702

namespace A065866

/-- `n!*record[A099364(n)]` -/
def P16464404254253237702.Spec : Prop :=
  ∀ n, P16464404254253237702.a n = A065866 n

end A065866

/-! ## A065866.P17325363701728795384

`n!*record[A126120(n)]`
-/

namespace A065866.P17325363701728795384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065866.P17325363701728795384

namespace A065866

/-- `n!*record[A126120(n)]` -/
def P17325363701728795384.Spec : Prop :=
  ∀ n, P17325363701728795384.a n = A065866 n

end A065866

/-! ## A065866.P7765243334745872827

`n!*A000108(n+1)`
-/

namespace A065866.P7765243334745872827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000108 (n + 1)

end

end A065866.P7765243334745872827

namespace A065866

/-- `n!*A000108(n+1)` -/
def P7765243334745872827.Spec : Prop :=
  ∀ n, P7765243334745872827.a n = A065866 n

end A065866

/-! ## A065866.P7490464964794763950

`n*a(n-1)*ratio[A000108(n)]` with `a(0)=1`
-/

namespace A065866.P7490464964794763950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))

end

end A065866.P7490464964794763950

namespace A065866

/-- `n*a(n-1)*ratio[A000108(n)]` -/
def P7490464964794763950.Spec : Prop :=
  ∀ n, P7490464964794763950.a n = (A065866 n : ℚ)

end A065866

/-!
# A065867: Primes which are the sum of a prime number of consecutive primes.

The programs for A065867, there is no canonical definition to state claims against.
-/

/-! ## A065867.P5680582857730759366

`A067377(lt[A295511(2*n+5), A089740(n+1)])`
-/

namespace A065867.P5680582857730759366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295511 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067377 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A065867.P5680582857730759366

/-! ## A065867.P4225105721075602608

`∩[A067377(n+1), A214432(n+1)]`
-/

namespace A065867.P4225105721075602608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065867.P4225105721075602608

/-! ## A065867.P8940124349764999703

`filter[A067377(n+1), A305387(#)]`
-/

namespace A065867.P8940124349764999703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305387 (f1 j).toNat = 1) n)

end

end A065867.P8940124349764999703

/-! ## A065867.P6917302250438987535

`A067377(n+2)%A124900(3*(n+1))`
-/

namespace A065867.P6917302250438987535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067377 (n + 2)) (A124900 (3 * (n + 1)))

end

end A065867.P6917302250438987535

/-!
# A065869: 

The programs for A065869, there is no canonical definition to state claims against.
-/

/-! ## A065869.P8241134361880865901

`A020501(A000040(n+2)²)`
-/

namespace A065869.P8241134361880865901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020501 (A000040 (n + 2) ^ 2).toNat

end

end A065869.P8241134361880865901

/-!
# A065870: n-th prime - n-th semiprime.

The programs for A065870, the canonical program `A065870.P5166953479567254549` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065870 has offset 1).

The definition of A065870 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001358, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065870.P5166953479567254549

`A000040(n+1)-A001358(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A065870

/-- `A000040(n+1)-A001358(n+1)` -/
def P5166953479567254549.Spec : Prop :=
  ∀ n, P5166953479567254549.a n = A065870 (n + 1)

theorem P5166953479567254549.correct : P5166953479567254549.Spec := by
  intro n
  simp only [A065870, Nat.add_sub_cancel]

end A065870

/-! ## A065870.P18359978098806349185

`Δ[A007504(n)]-A001358(n+1)`
-/

namespace A065870.P18359978098806349185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001358 (n + 1)

end

end A065870.P18359978098806349185

namespace A065870

/-- `Δ[A007504(n)]-A001358(n+1)` -/
def P18359978098806349185.Spec : Prop :=
  ∀ n, P18359978098806349185.a n = A065870 (n + 1)

end A065870

/-! ## A065870.P1253092598906840250

`A008864(n+1)-A088707(n+1)`
-/

namespace A065870.P1253092598906840250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A088707 (n + 1)

end

end A065870.P1253092598906840250

namespace A065870

/-- `A008864(n+1)-A088707(n+1)` -/
def P1253092598906840250.Spec : Prop :=
  ∀ n, P1253092598906840250.a n = A065870 (n + 1)

end A065870

/-! ## A065870.P16323194897368048470

`A014688(n+1)-A100493(n+1)`
-/

namespace A065870.P16323194897368048470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - A100493 (n + 1)

end

end A065870.P16323194897368048470

namespace A065870

/-- `A014688(n+1)-A100493(n+1)` -/
def P16323194897368048470.Spec : Prop :=
  ∀ n, P16323194897368048470.a n = A065870 (n + 1)

end A065870

/-! ## A065870.P12381514761924454767

`A175511(n+1)-A000040(n+1)`
-/

namespace A065870.P12381514761924454767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175511 (n + 1) - A000040 (n + 1)

end

end A065870.P12381514761924454767

namespace A065870

/-- `A175511(n+1)-A000040(n+1)` -/
def P12381514761924454767.Spec : Prop :=
  ∀ n, P12381514761924454767.a n = A065870 (n + 1)

end A065870

/-! ## A065870.P1373380959550602593

`A014689(n+1)-A175708(n+1)`
-/

namespace A065870.P1373380959550602593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) - A175708 (n + 1)

end

end A065870.P1373380959550602593

namespace A065870

/-- `A014689(n+1)-A175708(n+1)` -/
def P1373380959550602593.Spec : Prop :=
  ∀ n, P1373380959550602593.a n = A065870 (n + 1)

end A065870

/-! ## A065870.P10007419640827495305

`A006093(n+1)-A186621(n+1)`
-/

namespace A065870.P10007419640827495305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A186621 (n + 1)

end

end A065870.P10007419640827495305

namespace A065870

/-- `A006093(n+1)-A186621(n+1)` -/
def P10007419640827495305.Spec : Prop :=
  ∀ n, P10007419640827495305.a n = A065870 (n + 1)

end A065870

/-! ## A065870.P3010251173877603331

`A176004(n+1)-A031131(n+1)`
-/

namespace A065870.P3010251173877603331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176004 (n + 1) - A031131 (n + 1)

end

end A065870.P3010251173877603331

namespace A065870

/-- `A176004(n+1)-A031131(n+1)` -/
def P3010251173877603331.Spec : Prop :=
  ∀ n, P3010251173877603331.a n = A065870 (n + 1)

end A065870

/-! ## A065870.P2010821022415703205

`A133796(n+1)-A075818(n+1)`
-/

namespace A065870.P2010821022415703205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1) - A075818 (n + 1)

end

end A065870.P2010821022415703205

namespace A065870

/-- `A133796(n+1)-A075818(n+1)` -/
def P2010821022415703205.Spec : Prop :=
  ∀ n, P2010821022415703205.a n = A065870 (n + 1)

end A065870

/-! ## A065870.P2480111266014345995

`A100484(n+1)-A133796(n+1)`
-/

namespace A065870.P2480111266014345995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A133796 (n + 1)

end

end A065870.P2480111266014345995

namespace A065870

/-- `A100484(n+1)-A133796(n+1)` -/
def P2480111266014345995.Spec : Prop :=
  ∀ n, P2480111266014345995.a n = A065870 (n + 1)

end A065870

/-! ## A065870.P12955556940511952233

`Δ[A007504(n)]-sqrt(A074985(n+1))`
-/

namespace A065870.P12955556940511952233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℝ) - Real.sqrt (A074985 (n + 1) : ℝ)

end

end A065870.P12955556940511952233

namespace A065870

/-- `Δ[A007504(n)]-sqrt(A074985(n+1))` -/
def P12955556940511952233.Spec : Prop :=
  ∀ n, P12955556940511952233.a n = (A065870 (n + 1) : ℝ)

end A065870

/-! ## A065870.P14477664365293068391

`sqrt(A001248(n+1))-A001358(n+1)`
-/

namespace A065870.P14477664365293068391
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) - (A001358 (n + 1) : ℝ)

end

end A065870.P14477664365293068391

namespace A065870

/-- `sqrt(A001248(n+1))-A001358(n+1)` -/
def P14477664365293068391.Spec : Prop :=
  ∀ n, P14477664365293068391.a n = (A065870 (n + 1) : ℝ)

end A065870

/-! ## A065870.P777873119961179123

`A000040(n+1)-sqrt(A074985(n+1))`
-/

namespace A065870.P777873119961179123
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℝ) - Real.sqrt (A074985 (n + 1) : ℝ)

end

end A065870.P777873119961179123

namespace A065870

/-- `A000040(n+1)-sqrt(A074985(n+1))` -/
def P777873119961179123.Spec : Prop :=
  ∀ n, P777873119961179123.a n = (A065870 (n + 1) : ℝ)

end A065870

/-! ## A065870.P16441816566670306025

`A006093(n+1)+1-A001358(n+1)`
-/

namespace A065870.P16441816566670306025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A001358 (n + 1))

end

end A065870.P16441816566670306025

namespace A065870

/-- `A006093(n+1)+1-A001358(n+1)` -/
def P16441816566670306025.Spec : Prop :=
  ∀ n, P16441816566670306025.a n = A065870 (n + 1)

end A065870

/-! ## A065870.P3640942620939779895

`A008864(n+1)-(A001358(n+1)+1)`
-/

namespace A065870.P3640942620939779895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (A001358 (n + 1) + 1)

end

end A065870.P3640942620939779895

namespace A065870

/-- `A008864(n+1)-(A001358(n+1)+1)` -/
def P3640942620939779895.Spec : Prop :=
  ∀ n, P3640942620939779895.a n = A065870 (n + 1)

end A065870

/-! ## A065870.P6797895026889868343

`A000040(n+1)+1-A088707(n+1)`
-/

namespace A065870.P6797895026889868343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (1 - A088707 (n + 1))

end

end A065870.P6797895026889868343

namespace A065870

/-- `A000040(n+1)+1-A088707(n+1)` -/
def P6797895026889868343.Spec : Prop :=
  ∀ n, P6797895026889868343.a n = A065870 (n + 1)

end A065870

/-! ## A065870.P8445374581767233573

`A000040(n+1)-(A186621(n+1)+1)`
-/

namespace A065870.P8445374581767233573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A186621 (n + 1) + 1)

end

end A065870.P8445374581767233573

namespace A065870

/-- `A000040(n+1)-(A186621(n+1)+1)` -/
def P8445374581767233573.Spec : Prop :=
  ∀ n, P8445374581767233573.a n = A065870 (n + 1)

end A065870

/-! ## A065870.P9218458512210594702

`A040976(n+1)+2-A001358(n+1)`
-/

namespace A065870.P9218458512210594702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (2 - A001358 (n + 1))

end

end A065870.P9218458512210594702

namespace A065870

/-- `A040976(n+1)+2-A001358(n+1)` -/
def P9218458512210594702.Spec : Prop :=
  ∀ n, P9218458512210594702.a n = A065870 (n + 1)

end A065870

/-! ## A065870.P13334666176759718685

`A052147(n+1)-(A001358(n+1)+2)`
-/

namespace A065870.P13334666176759718685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - (A001358 (n + 1) + 2)

end

end A065870.P13334666176759718685

namespace A065870

/-- `A052147(n+1)-(A001358(n+1)+2)` -/
def P13334666176759718685.Spec : Prop :=
  ∀ n, P13334666176759718685.a n = A065870 (n + 1)

end A065870

/-! ## A065870.P2585597381345391339

`A006093(n+1)+2-A088707(n+1)`
-/

namespace A065870.P2585597381345391339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (2 - A088707 (n + 1))

end

end A065870.P2585597381345391339

namespace A065870

/-- `A006093(n+1)+2-A088707(n+1)` -/
def P2585597381345391339.Spec : Prop :=
  ∀ n, P2585597381345391339.a n = A065870 (n + 1)

end A065870

/-!
# A065871: Numbers k such that usigma(k) + 1 is a prime.

The programs for A065871, the canonical program `A065871.P16667973696206120642` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065871 has offset 1).

The definition of A065871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065871.P7211489623387827389

`eq[1, A001222(A034448(n+1)+1)]+1`
-/

namespace A065871.P7211489623387827389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A034448 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065871.P7211489623387827389

namespace A065871

/-- `eq[1, A001222(A034448(n+1)+1)]+1` -/
def P7211489623387827389.Spec : Prop :=
  ∀ n, (P7211489623387827389.a n : ℤ) = A065871 (n + 1)

end A065871

/-! ## A065871.P16667973696206120642

`lt[0, A010051(A034448(n+1)+1)]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A065871

/-- `lt[0, A010051(A034448(n+1)+1)]+1` -/
def P16667973696206120642.Spec : Prop :=
  ∀ n, (P16667973696206120642.a n : ℤ) = A065871 (n + 1)

theorem P16667973696206120642.correct : P16667973696206120642.Spec := by
  intro n
  simp only [A065871, Nat.add_sub_cancel]

end A065871

/-! ## A065871.P14821572265888987853

`eq[1, A054024(A034448(n+1)+1)]+1`
-/

namespace A065871.P14821572265888987853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A034448 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065871.P14821572265888987853

namespace A065871

/-- `eq[1, A054024(A034448(n+1)+1)]+1` -/
def P14821572265888987853.Spec : Prop :=
  ∀ n, (P14821572265888987853.a n : ℤ) = A065871 (n + 1)

end A065871

/-! ## A065871.P7152127284848797538

`eq[2, A300223(A034448(n+1)+1)]+1`
-/

namespace A065871.P7152127284848797538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300223 (A034448 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065871.P7152127284848797538

namespace A065871

/-- `eq[2, A300223(A034448(n+1)+1)]+1` -/
def P7152127284848797538.Spec : Prop :=
  ∀ n, (P7152127284848797538.a n : ℤ) = A065871 (n + 1)

end A065871

/-! ## A065871.P17583289693685496105

`record[(n+2)/A001222(A034448(n+2)+1)]`
-/

namespace A065871.P17583289693685496105
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A001222 (A034448 (n + 2) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065871.P17583289693685496105

namespace A065871

/-- `record[(n+2)/A001222(A034448(n+2)+1)]` -/
def P17583289693685496105.Spec : Prop :=
  ∀ n, P17583289693685496105.a n = (A065871 (n + 1) : ℚ)

end A065871

/-! ## A065871.P18134148354076664045

`record[(n+1)%A006530(A034448(n+1)+1)]`
-/

namespace A065871.P18134148354076664045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A006530 (A034448 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065871.P18134148354076664045

namespace A065871

/-- `record[(n+1)%A006530(A034448(n+1)+1)]` -/
def P18134148354076664045.Spec : Prop :=
  ∀ n, P18134148354076664045.a n = A065871 (n + 1)

end A065871

/-! ## A065871.P1807774906333889101

`eq[2, A000005(∑{d}[n+1, A254503(#)]+1)]+1`
-/

namespace A065871.P1807774906333889101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f3 n), A254503 d + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065871.P1807774906333889101

namespace A065871

/-- `eq[2, A000005(∑{d}[n+1, A254503(#)]+1)]+1` -/
def P1807774906333889101.Spec : Prop :=
  ∀ n, (P1807774906333889101.a n : ℤ) = A065871 (n + 1)

end A065871

/-! ## A065871.P6088794439856322858

`eq[0, A066246(A034448(n+1)+1)]+1`
-/

namespace A065871.P6088794439856322858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (A034448 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065871.P6088794439856322858

namespace A065871

/-- `eq[0, A066246(A034448(n+1)+1)]+1` -/
def P6088794439856322858.Spec : Prop :=
  ∀ n, (P6088794439856322858.a n : ℤ) = A065871 (n + 1)

end A065871

/-! ## A065871.P12328275430021476794

`lt[7*n, A014963(A034448(n+1)+1)²]+1`
-/

namespace A065871.P12328275430021476794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A034448 (n + 1) + 1).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A065871.P12328275430021476794

namespace A065871

/-- `lt[7*n, A014963(A034448(n+1)+1)²]+1` -/
def P12328275430021476794.Spec : Prop :=
  ∀ n, (P12328275430021476794.a n : ℤ) = A065871 (n + 1)

end A065871

/-!
# A065872: Numbers k such that usigma(k) - 1 is a prime (cf. A034448).

The programs for A065872, the canonical program `A065872.P15135297282855380107` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065872 has offset 1).

The definition of A065872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065872.P15135297282855380107

`eq[1, A001222(A063919(n+1)+n)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A065872

/-- `eq[1, A001222(A063919(n+1)+n)]+1` -/
def P15135297282855380107.Spec : Prop :=
  ∀ n, (P15135297282855380107.a n : ℤ) = A065872 (n + 1)

theorem P15135297282855380107.correct : P15135297282855380107.Spec := by
  intro n
  simp only [A065872, Nat.add_sub_cancel]

end A065872

/-! ## A065872.P2230542093664111050

`eq[2, A000005(A063919(n+1)+n)]+1`
-/

namespace A065872.P2230542093664111050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A063919 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065872.P2230542093664111050

namespace A065872

/-- `eq[2, A000005(A063919(n+1)+n)]+1` -/
def P2230542093664111050.Spec : Prop :=
  ∀ n, (P2230542093664111050.a n : ℤ) = A065872 (n + 1)

end A065872

/-! ## A065872.P16746417070477604174

`eq[1, ∑{e}[A034460(n+1)+n, #²]]+1`
-/

namespace A065872.P16746417070477604174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A065872.P16746417070477604174

namespace A065872

/-- `eq[1, ∑{e}[A034460(n+1)+n, #²]]+1` -/
def P16746417070477604174.Spec : Prop :=
  ∀ n, (P16746417070477604174.a n : ℤ) = A065872 (n + 1)

end A065872

/-! ## A065872.P2607751990354087927

`eq[1, ∑{e}[A345451(n+1), A000045(#+1)]]+1`
-/

namespace A065872.P2607751990354087927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, A000045 (Nat.factorization (f3 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065872.P2607751990354087927

namespace A065872

/-- `eq[1, ∑{e}[A345451(n+1), A000045(#+1)]]+1` -/
def P2607751990354087927.Spec : Prop :=
  ∀ n, (P2607751990354087927.a n : ℤ) = A065872 (n + 1)

end A065872

/-! ## A065872.P15662605027387866259

`eq[1, A091818(A063919(n+1)+n)/2]+1`
-/

namespace A065872.P15662605027387866259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091818 (A063919 (n + 1) + (n : ℤ)).toNat : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A065872.P15662605027387866259

namespace A065872

/-- `eq[1, A091818(A063919(n+1)+n)/2]+1` -/
def P15662605027387866259.Spec : Prop :=
  ∀ n, (P15662605027387866259.a n : ℤ) = A065872 (n + 1)

end A065872

/-!
# A065873: Numbers k such that usigma(k) +-1 are twin primes, where usigma(k) is the sum of the unitary divisors of k (A034448).

The programs for A065873, the canonical program `A065873.P13640204483334667154` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065873 has offset 1).

The definition of A065873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065873.P13640204483334667154

`∩[A065871(n+1), A065872(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A065873

/-- `∩[A065871(n+1), A065872(n+1)]` -/
def P13640204483334667154.Spec : Prop :=
  ∀ n, (P13640204483334667154.a n : ℤ) = A065873 (n + 1)

theorem P13640204483334667154.correct : P13640204483334667154.Spec := by
  intro n
  simp only [A065873, Nat.add_sub_cancel]

end A065873

/-!
# A065874: a(n) = (7^(n+1) - (-6)^(n+1))/13.

The programs for A065874, the canonical program `A065874.P1838138275124097795` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065874 has offset 0).

The definition of A065874 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7^(n+1)-(-6)^(n+1))/13` (program `A065874.P16222674565413484036`, by `A065874.P16222674565413484036.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065874.P1838138275124097795

`a(n-1)+42*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065874

/-- `a(n-1)+42*a(n-2)` -/
def P1838138275124097795.Spec : Prop :=
  ∀ n, (P1838138275124097795.a n : ℤ) = A065874 n

theorem P1838138275124097795.correct : P1838138275124097795.Spec := by
  intro n
  simp only [A065874]

end A065874

/-! ## A065874.P16222674565413484036

`(7^(n+1)-(-6)^(n+1))/13`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065874.P16222674565413484036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ (n + 1) : ℤ) - (-6) ^ (n + 1) : ℚ) / 13

end

end A065874.P16222674565413484036

namespace A065874

/-- `(7^(n+1)-(-6)^(n+1))/13` -/
def P16222674565413484036.Spec : Prop :=
  ∀ n, P16222674565413484036.a n = (A065874 n : ℚ)

theorem P16222674565413484036.correct : P16222674565413484036.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A065874, Nat.add_sub_cancel, A065874.P16222674565413484036.a, A065874.P1838138275124097795.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A065874, Nat.add_sub_cancel, A065874.P16222674565413484036.a, A065874.P1838138275124097795.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A065874

/-! ## A065874.P11703367218482729933

`7^n-6*a(n-1)` with `a(0)=1`
-/

namespace A065874.P11703367218482729933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (7 ^ n : ℤ) - 6 * a (n - 1)

end

end A065874.P11703367218482729933

namespace A065874

/-- `7^n-6*a(n-1)` -/
def P11703367218482729933.Spec : Prop :=
  ∀ n, P11703367218482729933.a n = A065874 n

end A065874

/-! ## A065874.P252514875846210141

`abs(6*a(n-1)-A000420(n))` with `a(0)=1`
-/

namespace A065874.P252514875846210141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |6 * a (n - 1) - A000420 n|

end

end A065874.P252514875846210141

namespace A065874

/-- `abs(6*a(n-1)-A000420(n))` -/
def P252514875846210141.Spec : Prop :=
  ∀ n, P252514875846210141.a n = A065874 n

end A065874

/-! ## A065874.P8671366502794938574

`A000420(n+1)%A166152(n+1)`
-/

namespace A065874.P8671366502794938574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000420 (n + 1)) (A166152 (n + 1))

end

end A065874.P8671366502794938574

namespace A065874

/-- `A000420(n+1)%A166152(n+1)` -/
def P8671366502794938574.Spec : Prop :=
  ∀ n, P8671366502794938574.a n = A065874 n

end A065874

/-! ## A065874.P4954419226354758139

`A072024(Δ[A264443(n+2)]+10)`
-/

namespace A065874.P4954419226354758139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072024 (f1 (n + 1) - f1 n + 10).toNat

end

end A065874.P4954419226354758139

namespace A065874

/-- `A072024(Δ[A264443(n+2)]+10)` -/
def P4954419226354758139.Spec : Prop :=
  ∀ n, P4954419226354758139.a n = A065874 n

end A065874

/-! ## A065874.P17675528515099137906

`A072024(A055999(n+6)-3-2*(n+1))`
-/

namespace A065874.P17675528515099137906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072024 (A055999 (n + 6) - 3 - (2 * (n + 1) : ℤ)).toNat

end

end A065874.P17675528515099137906

namespace A065874

/-- `A072024(A055999(n+6)-3-2*(n+1))` -/
def P17675528515099137906.Spec : Prop :=
  ∀ n, P17675528515099137906.a n = A065874 n

end A065874

/-! ## A065874.P15713058400500946470

`A081297(A000096(n+6)-6)`
-/

namespace A065874.P15713058400500946470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081297 (A000096 (n + 6) - 6).toNat

end

end A065874.P15713058400500946470

namespace A065874

/-- `A081297(A000096(n+6)-6)` -/
def P15713058400500946470.Spec : Prop :=
  ∀ n, P15713058400500946470.a n = A065874 n

end A065874

/-! ## A065874.P14204863059767556143

`A081297(A000217(n+7)-7)`
-/

namespace A065874.P14204863059767556143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081297 (A000217 (n + 7) - 7).toNat

end

end A065874.P14204863059767556143

namespace A065874

/-- `A081297(A000217(n+7)-7)` -/
def P14204863059767556143.Spec : Prop :=
  ∀ n, P14204863059767556143.a n = A065874 n

end A065874

/-! ## A065874.P9238571362732249963

`A081297(A000124(n+6)+n-1)`
-/

namespace A065874.P9238571362732249963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081297 (A000124 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A065874.P9238571362732249963

namespace A065874

/-- `A081297(A000124(n+6)+n-1)` -/
def P9238571362732249963.Spec : Prop :=
  ∀ n, P9238571362732249963.a n = A065874 n

end A065874

/-!
# A065875: Numbers k such that usigma(phi(k)) is a prime.

The programs for A065875, there is no canonical definition to state claims against.
-/

/-! ## A065875.P5252119473059086983

`filter[A003401(n+3), A296079(#)]`
-/

namespace A065875.P5252119473059086983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296079 (f1 j).toNat = 1) n)

end

end A065875.P5252119473059086983

/-! ## A065875.P16764930088809663836

`filter[A039698(n+3), A336477(#)]`
-/

namespace A065875.P16764930088809663836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039698 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A065875.P16764930088809663836

/-! ## A065875.P6663961793522355481

`filter[A180643(n+3), A336477(#)]`
-/

namespace A065875.P6663961793522355481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180643 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A065875.P6663961793522355481

/-!
# A065877: Non-Niven (or non-Harshad) numbers: numbers which are not a multiple of the sum of their digits.

The programs for A065877, the canonical program `A065877.P7795289949086454230` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065877 has offset 1).

The definition of A065877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8462 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065877.P14078952605449046248

`comp[A005349(n+1)-1]+1`
-/

namespace A065877.P14078952605449046248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A065877.P14078952605449046248

namespace A065877

/-- `comp[A005349(n+1)-1]+1` -/
def P14078952605449046248.Spec : Prop :=
  ∀ n, (P14078952605449046248.a n : ℤ) = A065877 (n + 1)

end A065877

/-! ## A065877.P7795289949086454230

`lt[n, lcm(n, ∑{digits}[n, #])]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065877

/-- `lt[n, lcm(n, ∑{digits}[n, #])]` -/
def P7795289949086454230.Spec : Prop :=
  ∀ n, (P7795289949086454230.a n : ℤ) = A065877 (n + 1)

theorem P7795289949086454230.correct : P7795289949086454230.Spec := by
  intro n
  simp only [A065877, Nat.add_sub_cancel]

end A065877

/-! ## A065877.P3954110683985880201

`lt[n, lcm(n, A007953(n))]`
-/

namespace A065877.P3954110683985880201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A007953 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065877.P3954110683985880201

namespace A065877

/-- `lt[n, lcm(n, A007953(n))]` -/
def P3954110683985880201.Spec : Prop :=
  ∀ n, (P3954110683985880201.a n : ℤ) = A065877 (n + 1)

end A065877

/-! ## A065877.P4657562772024247508

`lt[0, A070635(n+1)]+1`
-/

namespace A065877.P4657562772024247508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A065877.P4657562772024247508

namespace A065877

/-- `lt[0, A070635(n+1)]+1` -/
def P4657562772024247508.Spec : Prop :=
  ∀ n, (P4657562772024247508.a n : ℤ) = A065877 (n + 1)

end A065877

/-! ## A065877.P943590483659578234

`eq[1, A144262(n+1)]+1`
-/

namespace A065877.P943590483659578234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144262 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065877.P943590483659578234

namespace A065877

/-- `eq[1, A144262(n+1)]+1` -/
def P943590483659578234.Spec : Prop :=
  ∀ n, (P943590483659578234.a n : ℤ) = A065877 (n + 1)

end A065877

/-! ## A065877.P12958289072064357895

`lt[1, A065518(n+1)]+1`
-/

namespace A065877.P12958289072064357895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065518 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A065877.P12958289072064357895

namespace A065877

/-- `lt[1, A065518(n+1)]+1` -/
def P12958289072064357895.Spec : Prop :=
  ∀ n, (P12958289072064357895.a n : ℤ) = A065877 (n + 1)

end A065877

/-! ## A065877.P4980697315243931242

`lt[1, A144261(n+1)]+1`
-/

namespace A065877.P4980697315243931242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144261 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A065877.P4980697315243931242

namespace A065877

/-- `lt[1, A144261(n+1)]+1` -/
def P4980697315243931242.Spec : Prop :=
  ∀ n, (P4980697315243931242.a n : ℤ) = A065877 (n + 1)

end A065877

/-! ## A065877.P127373924426899785

`lt[A188641(n+1), 1]+1`
-/

namespace A065877.P127373924426899785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188641 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A065877.P127373924426899785

namespace A065877

/-- `lt[A188641(n+1), 1]+1` -/
def P127373924426899785.Spec : Prop :=
  ∀ n, (P127373924426899785.a n : ℤ) = A065877 (n + 1)

end A065877

/-! ## A065877.P6257933628466669468

`lt[A360074(n+1), n]+1`
-/

namespace A065877.P6257933628466669468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360074 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A065877.P6257933628466669468

namespace A065877

/-- `lt[A360074(n+1), n]+1` -/
def P6257933628466669468.Spec : Prop :=
  ∀ n, (P6257933628466669468.a n : ℤ) = A065877 (n + 1)

end A065877

/-! ## A065877.P11487437925386088417

`lt[0, A070635(A028310(n))]`
-/

namespace A065877.P11487437925386088417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A065877.P11487437925386088417

namespace A065877

/-- `lt[0, A070635(A028310(n))]` -/
def P11487437925386088417.Spec : Prop :=
  ∀ n, (P11487437925386088417.a n : ℤ) = A065877 (n + 1)

end A065877

/-! ## A065877.P5561825653986066695

`lt[gcd(n, A169805(n)), A007953(n)]`
-/

namespace A065877.P5561825653986066695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A169805 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A065877.P5561825653986066695

namespace A065877

/-- `lt[gcd(n, A169805(n)), A007953(n)]` -/
def P5561825653986066695.Spec : Prop :=
  ∀ n, (P5561825653986066695.a n : ℤ) = A065877 (n + 1)

end A065877

/-! ## A065877.P2948242695793064793

`A020725(eq[1, A188641(n+1)+1])`
-/

namespace A065877.P2948242695793064793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188641 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065877.P2948242695793064793

namespace A065877

/-- `A020725(eq[1, A188641(n+1)+1])` -/
def P2948242695793064793.Spec : Prop :=
  ∀ n, P2948242695793064793.a n = A065877 (n + 1)

end A065877

/-! ## A065877.P14488839474541439370

`lt[A062028(n), n*A065518(A028310(n))]`
-/

namespace A065877.P14488839474541439370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A065518 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065877.P14488839474541439370

namespace A065877

/-- `lt[A062028(n), n*A065518(A028310(n))]` -/
def P14488839474541439370.Spec : Prop :=
  ∀ n, (P14488839474541439370.a n : ℤ) = A065877 (n + 1)

end A065877

/-! ## A065877.P5671749006340759533

`lt[1, A065518(A233583(n+1))]`
-/

namespace A065877.P5671749006340759533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065518 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A065877.P5671749006340759533

namespace A065877

/-- `lt[1, A065518(A233583(n+1))]` -/
def P5671749006340759533.Spec : Prop :=
  ∀ n, (P5671749006340759533.a n : ℤ) = A065877 (n + 1)

end A065877

/-!
# A065878: Numbers which are not an integer multiple of their number of binary 1's.

The programs for A065878, the canonical program `A065878.P1041981114255732241` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065878 has offset 1).

The definition of A065878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065878.P1041981114255732241

`comp[A049445(n+1)-1]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A065878

/-- `comp[A049445(n+1)-1]+1` -/
def P1041981114255732241.Spec : Prop :=
  ∀ n, (P1041981114255732241.a n : ℤ) = A065878 (n + 1)

theorem P1041981114255732241.correct : P1041981114255732241.Spec := by
  intro n
  simp only [A065878, Nat.add_sub_cancel]

end A065878

/-! ## A065878.P376407481264263546

`lt[n, lcm(n, A000120(n))]`
-/

namespace A065878.P376407481264263546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A000120 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065878.P376407481264263546

namespace A065878

/-- `lt[n, lcm(n, A000120(n))]` -/
def P376407481264263546.Spec : Prop :=
  ∀ n, (P376407481264263546.a n : ℤ) = A065878 (n + 1)

end A065878

/-! ## A065878.P4744627272490215858

`lt[0, A199238(n+1)]+1`
-/

namespace A065878.P4744627272490215858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199238 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A065878.P4744627272490215858

namespace A065878

/-- `lt[0, A199238(n+1)]+1` -/
def P4744627272490215858.Spec : Prop :=
  ∀ n, (P4744627272490215858.a n : ℤ) = A065878 (n + 1)

end A065878

/-! ## A065878.P1879568811782240128

`eq[2, A226171(n+1)]+1`
-/

namespace A065878.P1879568811782240128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226171 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065878.P1879568811782240128

namespace A065878

/-- `eq[2, A226171(n+1)]+1` -/
def P1879568811782240128.Spec : Prop :=
  ∀ n, (P1879568811782240128.a n : ℤ) = A065878 (n + 1)

end A065878

/-! ## A065878.P11696741515826619635

`record[A235602(comp[floor(2^(n-1))])]`
-/

namespace A065878.P11696741515826619635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235602 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065878.P11696741515826619635

namespace A065878

/-- `record[A235602(comp[floor(2^(n-1))])]` -/
def P11696741515826619635.Spec : Prop :=
  ∀ n, P11696741515826619635.a n = A065878 (n + 1)

end A065878

/-! ## A065878.P12937073509374652041

`lt[n+1, A161765(n+1)]+1`
-/

namespace A065878.P12937073509374652041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161765 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A065878.P12937073509374652041

namespace A065878

/-- `lt[n+1, A161765(n+1)]+1` -/
def P12937073509374652041.Spec : Prop :=
  ∀ n, (P12937073509374652041.a n : ℤ) = A065878 (n + 1)

end A065878

/-! ## A065878.P13643079816020032989

`lt[A161764(n+1), n+1]+1`
-/

namespace A065878.P13643079816020032989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161764 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A065878.P13643079816020032989

namespace A065878

/-- `lt[A161764(n+1), n+1]+1` -/
def P13643079816020032989.Spec : Prop :=
  ∀ n, (P13643079816020032989.a n : ℤ) = A065878 (n + 1)

end A065878

/-! ## A065878.P9883402789203976007

`lt[0, (n+1)%A000120(n+1)]+1`
-/

namespace A065878.P9883402789203976007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000120 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A065878.P9883402789203976007

namespace A065878

/-- `lt[0, (n+1)%A000120(n+1)]+1` -/
def P9883402789203976007.Spec : Prop :=
  ∀ n, (P9883402789203976007.a n : ℤ) = A065878 (n + 1)

end A065878

/-! ## A065878.P2982049849306547025

`lt[A161764(A028310(n)), n]`
-/

namespace A065878.P2982049849306547025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161764 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A065878.P2982049849306547025

namespace A065878

/-- `lt[A161764(A028310(n)), n]` -/
def P2982049849306547025.Spec : Prop :=
  ∀ n, (P2982049849306547025.a n : ℤ) = A065878 (n + 1)

end A065878

/-! ## A065878.P17904970350202643559

`record[gcd(n, A091803(A226171(n+2)+1))+2]`
-/

namespace A065878.P17904970350202643559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A091803 (A226171 (n + 2) + 1).toNat) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065878.P17904970350202643559

namespace A065878

/-- `record[gcd(n, A091803(A226171(n+2)+1))+2]` -/
def P17904970350202643559.Spec : Prop :=
  ∀ n, (P17904970350202643559.a n : ℤ) = A065878 (n + 1)

end A065878

/-!
# A065879: a(n) is the smallest positive number that is n times the number of 1's in its binary expansion, or 0 if no such number exists.

The programs for A065879, there is no canonical definition to state claims against.
-/

/-! ## A065879.P8552271952397612317

`(n+1)*A272759(n+1)`
-/

namespace A065879.P8552271952397612317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A272759 (n + 1)

end

end A065879.P8552271952397612317

/-! ## A065879.P5371464053799800718

`A065880(n+1)%∑[A080535(n)]`
-/

namespace A065879.P5371464053799800718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065880 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065879.P5371464053799800718

/-! ## A065879.P8290602603845036393

`A065880(∑[A065413(n+1)²!])`
-/

namespace A065879.P8290602603845036393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A065413 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065880 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065879.P8290602603845036393

/-! ## A065879.P14509057113639494424

`A256119(C(n+2, 4))+A065880(n+1)`
-/

namespace A065879.P14509057113639494424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256119 (Nat.choose (n + 2) 4) + A065880 (n + 1)

end

end A065879.P14509057113639494424

/-! ## A065879.P8258736052251707230

`A118759(A065880(n+1))`
-/

namespace A065879.P8258736052251707230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A065880 (n + 1)).toNat

end

end A065879.P8258736052251707230

/-!
# A065880: Largest positive number that is n times the number of 1's in its binary expansion, or 0 if no such number exists.

The programs for A065880, there is no canonical definition to state claims against.
-/

/-! ## A065880.P18378172322470077745

`n*A272760(round(1/(n+1)+n))`
-/

namespace A065880.P18378172322470077745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A272760 (SequenceMachineLib.roundAway (1 / (n + 1 : ℚ) + (n : ℚ))).toNat

end

end A065880.P18378172322470077745

/-! ## A065880.P9958284981074905821

`∑{e}[2^n, A065879(#)]`
-/

namespace A065880.P9958284981074905821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A065879 (Nat.factorization (f1 n) p)

end

end A065880.P9958284981074905821

/-! ## A065880.P9835115922074726819

`A065879(A000038(n)+n)%A090572(n)`
-/

namespace A065880.P9835115922074726819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065879 (A000038 n + (n : ℤ)).toNat) (A090572 n)

end

end A065880.P9835115922074726819

/-! ## A065880.P2069114077344542299

`n*A003238(A335458(lcm(4, 2*n-n%2)))`
-/

namespace A065880.P2069114077344542299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003238 (A335458 (Int.lcm 4 ((2 * n : ℤ) - ((n % 2 : ℕ) : ℤ)))).toNat

end

end A065880.P2069114077344542299

/-! ## A065880.P16951818185071347717

`n*A124767(A333629(A333627(n)))`
-/

namespace A065880.P16951818185071347717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A124767 (A333629 (A333627 n).toNat).toNat

end

end A065880.P16951818185071347717

/-!
# A065881: Ultimate modulo 10: right-hand nonzero digit of n.

The programs for A065881, the canonical program `A065881.P12919191287620288312` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065881 has offset 1).

The definition of A065881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065881.P12919191287620288312

`((n+1)/10^val(n+1, 10))%10`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065881

/-- `((n+1)/10^val(n+1, 10))%10` -/
def P12919191287620288312.Spec : Prop :=
  ∀ n, P12919191287620288312.a n = A065881 (n + 1)

theorem P12919191287620288312.correct : P12919191287620288312.Spec := by
  intro n
  simp only [A065881, Nat.add_sub_cancel]

end A065881

/-! ## A065881.P6366223181207067662

`dr(A274206(n+1))`
-/

namespace A065881.P6366223181207067662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A274206 (n + 1))

end

end A065881.P6366223181207067662

namespace A065881

/-- `dr(A274206(n+1))` -/
def P6366223181207067662.Spec : Prop :=
  ∀ n, (P6366223181207067662.a n : ℤ) = A065881 (n + 1)

end A065881

/-! ## A065881.P10796324232144630153

`A004151(n+1)%10`
-/

namespace A065881.P10796324232144630153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004151 (n + 1)) 10

end

end A065881.P10796324232144630153

namespace A065881

/-- `A004151(n+1)%10` -/
def P10796324232144630153.Spec : Prop :=
  ∀ n, P10796324232144630153.a n = A065881 (n + 1)

end A065881

/-! ## A065881.P9954617069355165011

`A004719(n+1)%10`
-/

namespace A065881.P9954617069355165011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004719 (n + 1)) 10

end

end A065881.P9954617069355165011

namespace A065881

/-- `A004719(n+1)%10` -/
def P9954617069355165011.Spec : Prop :=
  ∀ n, P9954617069355165011.a n = A065881 (n + 1)

end A065881

/-! ## A065881.P15951067113799658250

`10-A251984((n+1)/10^val(n+1, 10))`
-/

namespace A065881.P15951067113799658250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A251984 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ))).toNat

end

end A065881.P15951067113799658250

namespace A065881

/-- `10-A251984((n+1)/10^val(n+1, 10))` -/
def P15951067113799658250.Spec : Prop :=
  ∀ n, P15951067113799658250.a n = A065881 (n + 1)

end A065881

/-! ## A065881.P608378287746824530

`A010889(A004184(n))`
-/

namespace A065881.P608378287746824530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010889 (A004184 n).toNat

end

end A065881.P608378287746824530

namespace A065881

/-- `A010889(A004184(n))` -/
def P608378287746824530.Spec : Prop :=
  ∀ n, P608378287746824530.a n = A065881 (n + 1)

end A065881

/-! ## A065881.P5777068266501806146

`A000030(A004086(n+1))`
-/

namespace A065881.P5777068266501806146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A004086 (n + 1)).toNat

end

end A065881.P5777068266501806146

namespace A065881

/-- `A000030(A004086(n+1))` -/
def P5777068266501806146.Spec : Prop :=
  ∀ n, P5777068266501806146.a n = A065881 (n + 1)

end A065881

/-! ## A065881.P8536804141113719619

`A010879(A004151(n+1))`
-/

namespace A065881.P8536804141113719619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004151 (n + 1)).toNat

end

end A065881.P8536804141113719619

namespace A065881

/-- `A010879(A004151(n+1))` -/
def P8536804141113719619.Spec : Prop :=
  ∀ n, P8536804141113719619.a n = A065881 (n + 1)

end A065881

/-! ## A065881.P191132558438239160

`A010879(A004719(n+1))`
-/

namespace A065881.P191132558438239160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004719 (n + 1)).toNat

end

end A065881.P191132558438239160

namespace A065881

/-- `A010879(A004719(n+1))` -/
def P191132558438239160.Spec : Prop :=
  ∀ n, P191132558438239160.a n = A065881 (n + 1)

end A065881

/-! ## A065881.P13190858232454898024

`A274206(A004184(n)+1)`
-/

namespace A065881.P13190858232454898024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (A004184 n + 1).toNat

end

end A065881.P13190858232454898024

namespace A065881

/-- `A274206(A004184(n)+1)` -/
def P13190858232454898024.Spec : Prop :=
  ∀ n, P13190858232454898024.a n = A065881 (n + 1)

end A065881

/-! ## A065881.P13347787274134567735

`A000030(A321474(n+1))`
-/

namespace A065881.P13347787274134567735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A321474 (n + 1)).toNat

end

end A065881.P13347787274134567735

namespace A065881

/-- `A000030(A321474(n+1))` -/
def P13347787274134567735.Spec : Prop :=
  ∀ n, P13347787274134567735.a n = A065881 (n + 1)

end A065881

/-! ## A065881.P12299963819960713473

`A054055(A355223(n)+1)`
-/

namespace A065881.P12299963819960713473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A355223 n + 1).toNat

end

end A065881.P12299963819960713473

namespace A065881

/-- `A054055(A355223(n)+1)` -/
def P12299963819960713473.Spec : Prop :=
  ∀ n, P12299963819960713473.a n = A065881 (n + 1)

end A065881

/-! ## A065881.P7214958123963469623

`A048376(n+1)%A040020(n)`
-/

namespace A065881.P7214958123963469623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048376 (n + 1)) (A040020 n)

end

end A065881.P7214958123963469623

namespace A065881

/-- `A048376(n+1)%A040020(n)` -/
def P7214958123963469623.Spec : Prop :=
  ∀ n, P7214958123963469623.a n = A065881 (n + 1)

end A065881

/-! ## A065881.P11617755392311564267

`A251984(∑{digits}[A251984(n+1), #])`
-/

namespace A065881.P11617755392311564267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A065881.P11617755392311564267

namespace A065881

/-- `A251984(∑{digits}[A251984(n+1), #])` -/
def P11617755392311564267.Spec : Prop :=
  ∀ n, P11617755392311564267.a n = A065881 (n + 1)

end A065881

/-! ## A065881.P17364269722889954088

`A000030(A056964(n+1)-(n+1))`
-/

namespace A065881.P17364269722889954088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A056964 (n + 1) - (n + 1 : ℤ)).toNat

end

end A065881.P17364269722889954088

namespace A065881

/-- `A000030(A056964(n+1)-(n+1))` -/
def P17364269722889954088.Spec : Prop :=
  ∀ n, P17364269722889954088.a n = A065881 (n + 1)

end A065881

/-! ## A065881.P18348406121878938136

`A004086(A274206(n+1)%A088707(n+1))`
-/

namespace A065881.P18348406121878938136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Int.tmod (A274206 (n + 1)) (A088707 (n + 1))).toNat

end

end A065881.P18348406121878938136

namespace A065881

/-- `A004086(A274206(n+1)%A088707(n+1))` -/
def P18348406121878938136.Spec : Prop :=
  ∀ n, P18348406121878938136.a n = A065881 (n + 1)

end A065881

/-! ## A065881.P5969337242724280970

`A030076(A251984(n+1))`
-/

namespace A065881.P5969337242724280970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030076 (A251984 (n + 1)).toNat

end

end A065881.P5969337242724280970

namespace A065881

/-- `A030076(A251984(n+1))` -/
def P5969337242724280970.Spec : Prop :=
  ∀ n, P5969337242724280970.a n = A065881 (n + 1)

end A065881

/-! ## A065881.P491515331968156544

`A251984(A251984(n+1))-A193581(A274206(n+1))`
-/

namespace A065881.P491515331968156544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A251984 (n + 1)).toNat - A193581 (A274206 (n + 1)).toNat

end

end A065881.P491515331968156544

namespace A065881

/-- `A251984(A251984(n+1))-A193581(A274206(n+1))` -/
def P491515331968156544.Spec : Prop :=
  ∀ n, P491515331968156544.a n = A065881 (n + 1)

end A065881

/-! ## A065881.P15090486196784191395

`A010879(A004086(A004086(A008592(n+1))))`
-/

namespace A065881.P15090486196784191395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004086 (A004086 (A008592 (n + 1)).toNat).toNat).toNat

end

end A065881.P15090486196784191395

namespace A065881

/-- `A010879(A004086(A004086(A008592(n+1))))` -/
def P15090486196784191395.Spec : Prop :=
  ∀ n, P15090486196784191395.a n = A065881 (n + 1)

end A065881

/-!
# A065882: Ultimate modulo 4: right-hand nonzero digit of n when written in base 4.

The programs for A065882, the canonical program `A065882.P15915198935150562604` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065882 has offset 1).

The definition of A065882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065882.P15915198935150562604

`((n+1)/4^val(n+1, 4))%4`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065882

/-- `((n+1)/4^val(n+1, 4))%4` -/
def P15915198935150562604.Spec : Prop :=
  ∀ n, P15915198935150562604.a n = A065882 (n + 1)

theorem P15915198935150562604.correct : P15915198935150562604.Spec := by
  intro n
  simp only [A065882, Nat.add_sub_cancel]

end A065882

/-! ## A065882.P1986460823954851357

`and(3, (n+1)/4^val(n+1, 4))`
-/

namespace A065882.P1986460823954851357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ)))

end

end A065882.P1986460823954851357

namespace A065882

/-- `and(3, (n+1)/4^val(n+1, 4))` -/
def P1986460823954851357.Spec : Prop :=
  ∀ n, P1986460823954851357.a n = A065882 (n + 1)

end A065882

/-! ## A065882.P15810748423070258897

`Δ[A069891(n)]%4`
-/

namespace A065882.P15810748423070258897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 4

end

end A065882.P15810748423070258897

namespace A065882

/-- `Δ[A069891(n)]%4` -/
def P15810748423070258897.Spec : Prop :=
  ∀ n, P15810748423070258897.a n = A065882 (n + 1)

end A065882

/-! ## A065882.P3340389176922073055

`A007913(n+1)%4`
-/

namespace A065882.P3340389176922073055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007913 (n + 1)) 4

end

end A065882.P3340389176922073055

namespace A065882

/-- `A007913(n+1)%4` -/
def P3340389176922073055.Spec : Prop :=
  ∀ n, P3340389176922073055.a n = A065882 (n + 1)

end A065882

/-! ## A065882.P16314406174134105996

`A065883(n+1)%4`
-/

namespace A065882.P16314406174134105996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065883 (n + 1)) 4

end

end A065882.P16314406174134105996

namespace A065882

/-- `A065883(n+1)%4` -/
def P16314406174134105996.Spec : Prop :=
  ∀ n, P16314406174134105996.a n = A065882 (n + 1)

end A065882

/-! ## A065882.P14377488148761730724

`A072400(n+1)%4`
-/

namespace A065882.P14377488148761730724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072400 (n + 1)) 4

end

end A065882.P14377488148761730724

namespace A065882

/-- `A072400(n+1)%4` -/
def P14377488148761730724.Spec : Prop :=
  ∀ n, P14377488148761730724.a n = A065882 (n + 1)

end A065882

/-! ## A065882.P9612472576432301231

`A338750(n+1)%4`
-/

namespace A065882.P9612472576432301231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338750 (n + 1)) 4

end

end A065882.P9612472576432301231

namespace A065882

/-- `A338750(n+1)%4` -/
def P9612472576432301231.Spec : Prop :=
  ∀ n, P9612472576432301231.a n = A065882 (n + 1)

end A065882

/-! ## A065882.P5916069708327063999

`A373188(n+1)%4`
-/

namespace A065882.P5916069708327063999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373188 (n + 1)) 4

end

end A065882.P5916069708327063999

namespace A065882

/-- `A373188(n+1)%4` -/
def P5916069708327063999.Spec : Prop :=
  ∀ n, P5916069708327063999.a n = A065882 (n + 1)

end A065882

/-! ## A065882.P9319179780866283354

`∑{d}[n+1, A006874(#)]%4`
-/

namespace A065882.P9319179780866283354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A006874 d) 4

end

end A065882.P9319179780866283354

namespace A065882

/-- `∑{d}[n+1, A006874(#)]%4` -/
def P9319179780866283354.Spec : Prop :=
  ∀ n, P9319179780866283354.a n = A065882 (n + 1)

end A065882

/-! ## A065882.P9675428287049616313

`(n+1-A326128(n+1))%4`
-/

namespace A065882.P9675428287049616313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) - A326128 (n + 1)) 4

end

end A065882.P9675428287049616313

namespace A065882

/-- `(n+1-A326128(n+1))%4` -/
def P9675428287049616313.Spec : Prop :=
  ∀ n, P9675428287049616313.a n = A065882 (n + 1)

end A065882

/-! ## A065882.P17606898022420400001

`((n+1)%A166466(n+1))%4`
-/

namespace A065882.P17606898022420400001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (n + 1 : ℤ) (A166466 (n + 1))) 4

end

end A065882.P17606898022420400001

namespace A065882

/-- `((n+1)%A166466(n+1))%4` -/
def P17606898022420400001.Spec : Prop :=
  ∀ n, P17606898022420400001.a n = A065882 (n + 1)

end A065882

/-! ## A065882.P16424715680623987506

`((n+1)/A000188(n+1)²)%4`
-/

namespace A065882.P16424715680623987506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (n + 1) ^ 2 : ℚ))) 4

end

end A065882.P16424715680623987506

namespace A065882

/-- `((n+1)/A000188(n+1)²)%4` -/
def P16424715680623987506.Spec : Prop :=
  ∀ n, P16424715680623987506.a n = A065882 (n + 1)

end A065882

/-! ## A065882.P8051546836587928930

`A010873(A007913(n+1))`
-/

namespace A065882.P8051546836587928930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A007913 (n + 1)).toNat

end

end A065882.P8051546836587928930

namespace A065882

/-- `A010873(A007913(n+1))` -/
def P8051546836587928930.Spec : Prop :=
  ∀ n, P8051546836587928930.a n = A065882 (n + 1)

end A065882

/-! ## A065882.P6711344876123411377

`A010873(A065883(n+1))`
-/

namespace A065882.P6711344876123411377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A065883 (n + 1)).toNat

end

end A065882.P6711344876123411377

namespace A065882

/-- `A010873(A065883(n+1))` -/
def P6711344876123411377.Spec : Prop :=
  ∀ n, P6711344876123411377.a n = A065882 (n + 1)

end A065882

/-! ## A065882.P11161942649488589741

`A089242(A037449(n+1))`
-/

namespace A065882.P11161942649488589741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089242 (A037449 (n + 1)).toNat

end

end A065882.P11161942649488589741

namespace A065882

/-- `A089242(A037449(n+1))` -/
def P11161942649488589741.Spec : Prop :=
  ∀ n, P11161942649488589741.a n = A065882 (n + 1)

end A065882

/-! ## A065882.P4317886585654637421

`A277708(A065338(n+1))`
-/

namespace A065882.P4317886585654637421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277708 (A065338 (n + 1)).toNat

end

end A065882.P4317886585654637421

namespace A065882

/-- `A277708(A065338(n+1))` -/
def P4317886585654637421.Spec : Prop :=
  ∀ n, P4317886585654637421.a n = A065882 (n + 1)

end A065882

/-! ## A065882.P3331157085763226895

`A010873(A373188(n+1))`
-/

namespace A065882.P3331157085763226895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A373188 (n + 1)).toNat

end

end A065882.P3331157085763226895

namespace A065882

/-- `A010873(A373188(n+1))` -/
def P3331157085763226895.Spec : Prop :=
  ∀ n, P3331157085763226895.a n = A065882 (n + 1)

end A065882

/-! ## A065882.P17516910367385689349

`2-Δ[A000120(A309952(n))]`
-/

namespace A065882.P17516910367385689349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A309952 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A065882.P17516910367385689349

namespace A065882

/-- `2-Δ[A000120(A309952(n))]` -/
def P17516910367385689349.Spec : Prop :=
  ∀ n, P17516910367385689349.a n = A065882 (n + 1)

end A065882

/-! ## A065882.P1405126147442683274

`A007880(A007913(n+1)-1)`
-/

namespace A065882.P1405126147442683274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007880 (A007913 (n + 1) - 1).toNat

end

end A065882.P1405126147442683274

namespace A065882

/-- `A007880(A007913(n+1)-1)` -/
def P1405126147442683274.Spec : Prop :=
  ∀ n, P1405126147442683274.a n = A065882 (n + 1)

end A065882

/-! ## A065882.P5564610903678806893

`and(3, A007913(A000027(n+1)))`
-/

namespace A065882.P5564610903678806893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A007913 (A000027 (n + 1)).toNat)

end

end A065882.P5564610903678806893

namespace A065882

/-- `and(3, A007913(A000027(n+1)))` -/
def P5564610903678806893.Spec : Prop :=
  ∀ n, P5564610903678806893.a n = A065882 (n + 1)

end A065882

/-!
# A065883: Remove factors of 4 from n (i.e., write n in base 4, drop final zeros, then rewrite in decimal).

The programs for A065883, the canonical program `A065883.P11028761589523276427` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065883 has offset 1).

The definition of A065883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065883.P11028761589523276427

`(n+1)/4^val(n+1, 4)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065883

/-- `(n+1)/4^val(n+1, 4)` -/
def P11028761589523276427.Spec : Prop :=
  ∀ n, P11028761589523276427.a n = (A065883 (n + 1) : ℚ)

end A065883

/-! ## A065883.P2938575623323580010

`(n+1)/4^A235127(n+1)`
-/

namespace A065883.P2938575623323580010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (4 : ℚ) ^ (A235127 (n + 1) : ℤ)

end

end A065883.P2938575623323580010

namespace A065883

/-- `(n+1)/4^A235127(n+1)` -/
def P2938575623323580010.Spec : Prop :=
  ∀ n, P2938575623323580010.a n = (A065883 (n + 1) : ℚ)

end A065883

/-! ## A065883.P10367646809819349955

`(n+1)*4^-val(n+1, 4)`
-/

namespace A065883.P10367646809819349955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (4 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 4 : ℤ) : ℤ)

end

end A065883.P10367646809819349955

namespace A065883

/-- `(n+1)*4^-val(n+1, 4)` -/
def P10367646809819349955.Spec : Prop :=
  ∀ n, P10367646809819349955.a n = (A065883 (n + 1) : ℚ)

end A065883

/-! ## A065883.P11438284321954156205

`n%(3*(n+1)/and(n+1, -(n+1)))+1`
-/

namespace A065883.P11438284321954156205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (SequenceMachineLib.roundAway (3 * ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)))) + 1

end

end A065883.P11438284321954156205

namespace A065883

/-- `n%(3*(n+1)/and(n+1, -(n+1)))+1` -/
def P11438284321954156205.Spec : Prop :=
  ∀ n, P11438284321954156205.a n = A065883 (n + 1)

end A065883

/-! ## A065883.P6145893358823038358

`(n+1)/A234957(n+1)`
-/

namespace A065883.P6145893358823038358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A234957 (n + 1) : ℚ)

end

end A065883.P6145893358823038358

namespace A065883

/-- `(n+1)/A234957(n+1)` -/
def P6145893358823038358.Spec : Prop :=
  ∀ n, P6145893358823038358.a n = (A065883 (n + 1) : ℚ)

end A065883

/-! ## A065883.P14381581594822919413

`(n+1)%A166466(n+1)`
-/

namespace A065883.P14381581594822919413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A166466 (n + 1))

end

end A065883.P14381581594822919413

namespace A065883

/-- `(n+1)%A166466(n+1)` -/
def P14381581594822919413.Spec : Prop :=
  ∀ n, P14381581594822919413.a n = A065883 (n + 1)

end A065883

/-! ## A065883.P15420631650041057963

`gcd(n+1, A373188(n+1))`
-/

namespace A065883.P15420631650041057963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A373188 (n + 1))

end

end A065883.P15420631650041057963

namespace A065883

/-- `gcd(n+1, A373188(n+1))` -/
def P15420631650041057963.Spec : Prop :=
  ∀ n, (P15420631650041057963.a n : ℤ) = A065883 (n + 1)

end A065883

/-! ## A065883.P4133343579366170544

`lcm(Δ[A069891(n)], A000265(n+1))`
-/

namespace A065883.P4133343579366170544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A000265 (n + 1))

end

end A065883.P4133343579366170544

namespace A065883

/-- `lcm(Δ[A069891(n)], A000265(n+1))` -/
def P4133343579366170544.Spec : Prop :=
  ∀ n, (P4133343579366170544.a n : ℤ) = A065883 (n + 1)

end A065883

/-! ## A065883.P6068891427750584397

`A264994(n+1-A055949(n+1))`
-/

namespace A065883.P6068891427750584397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264994 ((n + 1 : ℤ) - A055949 (n + 1)).toNat

end

end A065883.P6068891427750584397

namespace A065883

/-- `A264994(n+1-A055949(n+1))` -/
def P6068891427750584397.Spec : Prop :=
  ∀ n, P6068891427750584397.a n = A065883 (n + 1)

end A065883

/-! ## A065883.P3178873375632120963

`A264994(A055948(n+1)-(n+1))`
-/

namespace A065883.P3178873375632120963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264994 (A055948 (n + 1) - (n + 1 : ℤ)).toNat

end

end A065883.P3178873375632120963

namespace A065883

/-- `A264994(A055948(n+1)-(n+1))` -/
def P3178873375632120963.Spec : Prop :=
  ∀ n, P3178873375632120963.a n = A065883 (n + 1)

end A065883

/-! ## A065883.P16954383104713008192

`A000265(n+1)*A056832(n+1)`
-/

namespace A065883.P16954383104713008192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A056832 (n + 1)

end

end A065883.P16954383104713008192

namespace A065883

/-- `A000265(n+1)*A056832(n+1)` -/
def P16954383104713008192.Spec : Prop :=
  ∀ n, P16954383104713008192.a n = A065883 (n + 1)

end A065883

/-! ## A065883.P2033844623569856859

`(n+1)/A008833(A006519(n+1))`
-/

namespace A065883.P2033844623569856859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A008833 (A006519 (n + 1)).toNat : ℚ)

end

end A065883.P2033844623569856859

namespace A065883

/-- `(n+1)/A008833(A006519(n+1))` -/
def P2033844623569856859.Spec : Prop :=
  ∀ n, P2033844623569856859.a n = (A065883 (n + 1) : ℚ)

end A065883

/-! ## A065883.P13457504282837517627

`(n+1)/A006519(A214682(n+1))`
-/

namespace A065883.P13457504282837517627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006519 (A214682 (n + 1)).toNat : ℚ)

end

end A065883.P13457504282837517627

namespace A065883

/-- `(n+1)/A006519(A214682(n+1))` -/
def P13457504282837517627.Spec : Prop :=
  ∀ n, P13457504282837517627.a n = (A065883 (n + 1) : ℚ)

end A065883

/-! ## A065883.P2218594763121416255

`(n+1)/A006519(A327939(n+1))`
-/

namespace A065883.P2218594763121416255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006519 (A327939 (n + 1)).toNat : ℚ)

end

end A065883.P2218594763121416255

namespace A065883

/-- `(n+1)/A006519(A327939(n+1))` -/
def P2218594763121416255.Spec : Prop :=
  ∀ n, P2218594763121416255.a n = (A065883 (n + 1) : ℚ)

end A065883

/-! ## A065883.P12804983842496846101

`(n+1)/A008833(A327512(n+1))`
-/

namespace A065883.P12804983842496846101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A008833 (A327512 (n + 1)).toNat : ℚ)

end

end A065883.P12804983842496846101

namespace A065883

/-- `(n+1)/A008833(A327512(n+1))` -/
def P12804983842496846101.Spec : Prop :=
  ∀ n, P12804983842496846101.a n = (A065883 (n + 1) : ℚ)

end A065883

/-! ## A065883.P5561842372259544726

`(n+1)/A006519(A000188(n+1)²)`
-/

namespace A065883.P5561842372259544726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006519 (A000188 (n + 1) ^ 2).toNat : ℚ)

end

end A065883.P5561842372259544726

namespace A065883

/-- `(n+1)/A006519(A000188(n+1)²)` -/
def P5561842372259544726.Spec : Prop :=
  ∀ n, P5561842372259544726.a n = (A065883 (n + 1) : ℚ)

end A065883

/-! ## A065883.P17104546400598879610

`(2-A035263(n+1))*A000265(n+1)`
-/

namespace A065883.P17104546400598879610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A035263 (n + 1)) * A000265 (n + 1)

end

end A065883.P17104546400598879610

namespace A065883

/-- `(2-A035263(n+1))*A000265(n+1)` -/
def P17104546400598879610.Spec : Prop :=
  ∀ n, P17104546400598879610.a n = A065883 (n + 1)

end A065883

/-! ## A065883.P13203900392671081656

`gcd(2, A327938(n+1))*A000265(n+1)`
-/

namespace A065883.P13203900392671081656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A327938 (n + 1)) : ℤ) * A000265 (n + 1)

end

end A065883.P13203900392671081656

namespace A065883

/-- `gcd(2, A327938(n+1))*A000265(n+1)` -/
def P13203900392671081656.Spec : Prop :=
  ∀ n, P13203900392671081656.a n = A065883 (n + 1)

end A065883

/-! ## A065883.P12556154410471313696

`(2-A029883(n+1)²)*A000265(n+1)`
-/

namespace A065883.P12556154410471313696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A029883 (n + 1) ^ 2) * A000265 (n + 1)

end

end A065883.P12556154410471313696

namespace A065883

/-- `(2-A029883(n+1)²)*A000265(n+1)` -/
def P12556154410471313696.Spec : Prop :=
  ∀ n, P12556154410471313696.a n = A065883 (n + 1)

end A065883

/-! ## A065883.P8753864422875197835

`∑{d}[n+1, A046897(#)*A355689((n+1)/#)]`
-/

namespace A065883.P8753864422875197835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046897 d * A355689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065883.P8753864422875197835

namespace A065883

/-- `∑{d}[n+1, A046897(#)*A355689((n+1)/#)]` -/
def P8753864422875197835.Spec : Prop :=
  ∀ n, P8753864422875197835.a n = A065883 (n + 1)

end A065883

/-!
# A065884: a(n) = A065824(A047845(n+1)).

The programs for A065884, there is no canonical definition to state claims against.
-/

/-! ## A065884.P7923682426531910988

`A065824(A047845(n+2)%A121091(n+2))`
-/

namespace A065884.P7923682426531910988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065824 (Int.tmod (A047845 (n + 2)) (A121091 (n + 2))).toNat

end

end A065884.P7923682426531910988

/-! ## A065884.P10404274846162720533

`∏{p}[A291932(A071904(n+1)), #]`
-/

namespace A065884.P10404274846162720533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291932 (A071904 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A065884.P10404274846162720533

/-! ## A065884.P2563893489313302771

`A291932(A071904(n+1))+A010051(A129521(n+1))`
-/

namespace A065884.P2563893489313302771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291932 (A071904 (n + 1)).toNat + A010051 (A129521 (n + 1)).toNat

end

end A065884.P2563893489313302771

/-!
# A065885: a(n)-1, a(n) and a(n)+1 form three consecutive integers that can be factored into Fibonacci numbers.

The programs for A065885, the canonical program `A065885.P17730579912462143560` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065885 has offset 1).

The definition of A065885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065885.P17730579912462143560

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=5, a(4)=9, a(5)=25, a(6)=26, a(7)=64, a(8)=169, a(9)=441`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065885

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P17730579912462143560.Spec : Prop :=
  ∀ n, P17730579912462143560.a n = A065885 (n + 1)

theorem P17730579912462143560.correct : P17730579912462143560.Spec := by
  intro n
  simp only [A065885, Nat.add_sub_cancel]

end A065885

/-!
# A065886: Smallest square divisible by n!.

The programs for A065886, the canonical program `A065886.P10189673192464733251` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065886 has offset 0).

The definition of A065886 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053143, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065886.P9582900276421473088

`A065887(n)²`
-/

namespace A065886.P9582900276421473088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065887 n ^ 2

end

end A065886.P9582900276421473088

namespace A065886

/-- `A065887(n)²` -/
def P9582900276421473088.Spec : Prop :=
  ∀ n, P9582900276421473088.a n = A065886 n

end A065886

/-! ## A065886.P10189673192464733251

`A053143(A000142(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A065886

/-- `A053143(A000142(n))` -/
def P10189673192464733251.Spec : Prop :=
  ∀ n, P10189673192464733251.a n = A065886 n

theorem P10189673192464733251.correct : P10189673192464733251.Spec := by
  intro n
  simp only [A065886]

end A065886

/-! ## A065886.P3121847250867449416

`A065887(n)^(A254030(n)%3)`
-/

namespace A065886.P3121847250867449416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065887 n : ℚ) ^ (Int.tmod (A254030 n) 3 : ℤ)

end

end A065886.P3121847250867449416

namespace A065886

/-- `A065887(n)^(A254030(n)%3)` -/
def P3121847250867449416.Spec : Prop :=
  ∀ n, P3121847250867449416.a n = (A065886 n : ℚ)

end A065886

/-! ## A065886.P2882531269072168832

`A000142(n)*A055204(A028310(n))`
-/

namespace A065886.P2882531269072168832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A055204 (A028310 n).toNat

end

end A065886.P2882531269072168832

namespace A065886

/-- `A000142(n)*A055204(A028310(n))` -/
def P2882531269072168832.Spec : Prop :=
  ∀ n, P2882531269072168832.a n = A065886 n

end A065886

/-! ## A065886.P8021419823063685369

`A065887(n)^A020639(A310503(n))`
-/

namespace A065886.P8021419823063685369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065887 n : ℚ) ^ (A020639 (A310503 n).toNat : ℤ)

end

end A065886.P8021419823063685369

namespace A065886

/-- `A065887(n)^A020639(A310503(n))` -/
def P8021419823063685369.Spec : Prop :=
  ∀ n, P8021419823063685369.a n = (A065886 n : ℚ)

end A065886

/-! ## A065886.P1108473577142781234

`A065887(n)^A020639(A311340(n))`
-/

namespace A065886.P1108473577142781234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065887 n : ℚ) ^ (A020639 (A311340 n).toNat : ℤ)

end

end A065886.P1108473577142781234

namespace A065886

/-- `A065887(n)^A020639(A311340(n))` -/
def P1108473577142781234.Spec : Prop :=
  ∀ n, P1108473577142781234.a n = (A065886 n : ℚ)

end A065886

/-! ## A065886.P8320073420893372653

`A000142(n)*A249831(Δ[A000292(n)])`
-/

namespace A065886.P8320073420893372653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A249831 (f1 (n + 1) - f1 n).toNat

end

end A065886.P8320073420893372653

namespace A065886

/-- `A000142(n)*A249831(Δ[A000292(n)])` -/
def P8320073420893372653.Spec : Prop :=
  ∀ n, P8320073420893372653.a n = A065886 n

end A065886

/-! ## A065886.P13610216792904876845

`A000142(n)*A249831(A000217(n+1))`
-/

namespace A065886.P13610216792904876845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A249831 (A000217 (n + 1)).toNat

end

end A065886.P13610216792904876845

namespace A065886

/-- `A000142(n)*A249831(A000217(n+1))` -/
def P13610216792904876845.Spec : Prop :=
  ∀ n, P13610216792904876845.a n = A065886 n

end A065886

/-! ## A065886.P6047236366935055541

`A055204(A028310(n))*A081123(2*n)`
-/

namespace A065886.P6047236366935055541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055204 (A028310 n).toNat * A081123 (2 * n)

end

end A065886.P6047236366935055541

namespace A065886

/-- `A055204(A028310(n))*A081123(2*n)` -/
def P6047236366935055541.Spec : Prop :=
  ∀ n, P6047236366935055541.a n = A065886 n

end A065886

/-!
# A065887: Smallest number whose square is divisible by n!.

The programs for A065887, the canonical program `A065887.P4570226576753041376` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065887 has offset 0).

The definition of A065887 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065886, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065887.P4570226576753041376

`sqrt(A065886(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A065887

/-- `sqrt(A065886(n))` -/
def P4570226576753041376.Spec : Prop :=
  ∀ n, P4570226576753041376.a n = (A065887 n : ℝ)

end A065887

/-! ## A065887.P17656356615995447666

`n!/A055772(A065033(2*n))`
-/

namespace A065887.P17656356615995447666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A055772 (A065033 (2 * n)).toNat : ℚ)

end

end A065887.P17656356615995447666

namespace A065887

/-- `n!/A055772(A065033(2*n))` -/
def P17656356615995447666.Spec : Prop :=
  ∀ n, P17656356615995447666.a n = (A065887 n : ℚ)

end A065887

/-! ## A065887.P13019197590924623649

`n!/A055772(A123108(2*n))`
-/

namespace A065887.P13019197590924623649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A055772 (A123108 (2 * n)).toNat : ℚ)

end

end A065887.P13019197590924623649

namespace A065887

/-- `n!/A055772(A123108(2*n))` -/
def P13019197590924623649.Spec : Prop :=
  ∀ n, P13019197590924623649.a n = (A065887 n : ℚ)

end A065887

/-! ## A065887.P15639042325727809503

`A000142(n)/A055772(A028310(n))`
-/

namespace A065887.P15639042325727809503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A055772 (A028310 n).toNat : ℚ)

end

end A065887.P15639042325727809503

namespace A065887

/-- `A000142(n)/A055772(A028310(n))` -/
def P15639042325727809503.Spec : Prop :=
  ∀ n, P15639042325727809503.a n = (A065887 n : ℚ)

end A065887

/-! ## A065887.P6682717945068464923

`A000142(n)/A055772(A141044(n)-1+n)`
-/

namespace A065887.P6682717945068464923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A055772 (A141044 n - 1 + (n : ℤ)).toNat : ℚ)

end

end A065887.P6682717945068464923

namespace A065887

/-- `A000142(n)/A055772(A141044(n)-1+n)` -/
def P6682717945068464923.Spec : Prop :=
  ∀ n, P6682717945068464923.a n = (A065887 n : ℚ)

end A065887

/-! ## A065887.P12700246007700251188

`A000142(n)/A055772(n-(1-A141044(n)))`
-/

namespace A065887.P12700246007700251188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A055772 ((n : ℤ) - (1 - A141044 n)).toNat : ℚ)

end

end A065887.P12700246007700251188

namespace A065887

/-- `A000142(n)/A055772(n-(1-A141044(n)))` -/
def P12700246007700251188.Spec : Prop :=
  ∀ n, P12700246007700251188.a n = (A065887 n : ℚ)

end A065887

/-!
# A065888: a(n) = number of endofunctions on [n] with a 4-cycle a->b->c->d->a and for any x in [n], some iterate f^k(x) = a.

The programs for A065888, the canonical program `A065888.P2843144826586970166` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065888 has offset 4).

The definition of A065888 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065888.P2843144826586970166

`(n+3)*(n+2)*(n+1)*(n+4)^n`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065888

/-- `(n+3)*(n+2)*(n+1)*(n+4)^n` -/
def P2843144826586970166.Spec : Prop :=
  ∀ n, (P2843144826586970166.a n : ℤ) = A065888 (n + 4)

theorem P2843144826586970166.correct : P2843144826586970166.Spec := by
  intro n
  simp only [A065888, Nat.add_sub_cancel]

end A065888

/-! ## A065888.P14051656356998872090

`abs(2*(or(2, (n+3)*A081196(n)-1)+1))`
-/

namespace A065888.P14051656356998872090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (Int.lor 2 ((n + 3 : ℤ) * A081196 n - 1) + 1)|

end

end A065888.P14051656356998872090

namespace A065888

/-- `abs(2*(or(2, (n+3)*A081196(n)-1)+1))` -/
def P14051656356998872090.Spec : Prop :=
  ∀ n, P14051656356998872090.a n = A065888 (n + 4)

end A065888

/-! ## A065888.P12032874629286571797

`A201685(A052905(n)+9)`
-/

namespace A065888.P12032874629286571797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201685 (A052905 n + 9).toNat

end

end A065888.P12032874629286571797

namespace A065888

/-- `A201685(A052905(n)+9)` -/
def P12032874629286571797.Spec : Prop :=
  ∀ n, P12032874629286571797.a n = A065888 (n + 4)

end A065888

/-! ## A065888.P16364084741917005538

`A201685(A167614(n+2)+1)`
-/

namespace A065888.P16364084741917005538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201685 (A167614 (n + 2) + 1).toNat

end

end A065888.P16364084741917005538

namespace A065888

/-- `A201685(A167614(n+2)+1)` -/
def P16364084741917005538.Spec : Prop :=
  ∀ n, P16364084741917005538.a n = A065888 (n + 4)

end A065888

/-! ## A065888.P17451469419878068276

`A065889(n+4)+lcm(A065889(n+4), A081196(n))`
-/

namespace A065888.P17451469419878068276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065889 (n + 4) + (Int.lcm (A065889 (n + 4)) (A081196 n) : ℤ)

end

end A065888.P17451469419878068276

namespace A065888

/-- `A065889(n+4)+lcm(A065889(n+4), A081196(n))` -/
def P17451469419878068276.Spec : Prop :=
  ∀ n, P17451469419878068276.a n = A065888 (n + 4)

end A065888

/-!
# A065889: a(n) = number of unicyclic connected simple graphs whose cycle has length 4.

The programs for A065889, the canonical program `A065889.P5021309692457016998` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065889 has offset 4).

The definition of A065889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065889.P5021309692457016998

`12*C(n+4, 4)*(n+4)^(n-1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065889

/-- `12*C(n+4, 4)*(n+4)^(n-1)` -/
def P5021309692457016998.Spec : Prop :=
  ∀ n, P5021309692457016998.a n = (A065889 (n + 4) : ℚ)

end A065889

/-! ## A065889.P12671012848482122365

`(n+3)*(n+2)*(n+1)*(n+4)^n/2`
-/

namespace A065889.P12671012848482122365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3) * (n + 2) * (n + 1) * (n + 4) ^ n : ℚ) / 2

end

end A065889.P12671012848482122365

namespace A065889

/-- `(n+3)*(n+2)*(n+1)*(n+4)^n/2` -/
def P12671012848482122365.Spec : Prop :=
  ∀ n, P12671012848482122365.a n = (A065889 (n + 4) : ℚ)

end A065889

/-! ## A065889.P10079380923212431887

`3*A053508(n+4)`
-/

namespace A065889.P10079380923212431887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A053508 (n + 4)

end

end A065889.P10079380923212431887

namespace A065889

/-- `3*A053508(n+4)` -/
def P10079380923212431887.Spec : Prop :=
  ∀ n, P10079380923212431887.a n = A065889 (n + 4)

end A065889

/-! ## A065889.P9116127481363172370

`(n+3)*A081196(n)`
-/

namespace A065889.P9116127481363172370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A081196 n

end

end A065889.P9116127481363172370

namespace A065889

/-- `(n+3)*A081196(n)` -/
def P9116127481363172370.Spec : Prop :=
  ∀ n, P9116127481363172370.a n = A065889 (n + 4)

end A065889

/-! ## A065889.P5878875936978273509

`A098909(∑[n+1]+4)`
-/

namespace A065889.P5878875936978273509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098909 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A065889.P5878875936978273509

namespace A065889

/-- `A098909(∑[n+1]+4)` -/
def P5878875936978273509.Spec : Prop :=
  ∀ n, P5878875936978273509.a n = A065889 (n + 4)

end A065889

/-! ## A065889.P1012768474824925004

`A144209(A000217(n+5)-1)`
-/

namespace A065889.P1012768474824925004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144209 (A000217 (n + 5) - 1).toNat

end

end A065889.P1012768474824925004

namespace A065889

/-- `A144209(A000217(n+5)-1)` -/
def P1012768474824925004.Spec : Prop :=
  ∀ n, P1012768474824925004.a n = A065889 (n + 4)

end A065889

/-!
# A065890: Number of composites less than the n-th prime.

The programs for A065890, the canonical program `A065890.P15936493256530540462` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065890 has offset 1).

The definition of A065890 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014689, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065890.P15936493256530540462

`A014689(n+1)-1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A065890

/-- `A014689(n+1)-1` -/
def P15936493256530540462.Spec : Prop :=
  ∀ n, P15936493256530540462.a n = A065890 (n + 1)

theorem P15936493256530540462.correct : P15936493256530540462.Spec := by
  intro n
  simp only [A065890, Nat.add_sub_cancel]

end A065890

/-! ## A065890.P5507475341311201814

`A014692(n+1)-2`
-/

namespace A065890.P5507475341311201814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) - 2

end

end A065890.P5507475341311201814

namespace A065890

/-- `A014692(n+1)-2` -/
def P5507475341311201814.Spec : Prop :=
  ∀ n, P5507475341311201814.a n = A065890 (n + 1)

end A065890

/-! ## A065890.P14065349794212456325

`A000040(n+1)-(n+1)-1`
-/

namespace A065890.P14065349794212456325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (n + 1 : ℤ) - 1

end

end A065890.P14065349794212456325

namespace A065890

/-- `A000040(n+1)-(n+1)-1` -/
def P14065349794212456325.Spec : Prop :=
  ∀ n, P14065349794212456325.a n = A065890 (n + 1)

end A065890

/-! ## A065890.P12324305627106906733

`A065855(A000040(n+1))`
-/

namespace A065890.P12324305627106906733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A000040 (n + 1)).toNat

end

end A065890.P12324305627106906733

namespace A065890

/-- `A065855(A000040(n+1))` -/
def P12324305627106906733.Spec : Prop :=
  ∀ n, P12324305627106906733.a n = A065890 (n + 1)

end A065890

/-! ## A065890.P1124266386626390145

`∑[A075526(n)-1]`
-/

namespace A065890.P1124266386626390145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065890.P1124266386626390145

namespace A065890

/-- `∑[A075526(n)-1]` -/
def P1124266386626390145.Spec : Prop :=
  ∀ n, P1124266386626390145.a n = A065890 (n + 1)

end A065890

/-! ## A065890.P8126023421487994729

`A040976(n+1)-n`
-/

namespace A065890.P8126023421487994729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - (n : ℤ)

end

end A065890.P8126023421487994729

namespace A065890

/-- `A040976(n+1)-n` -/
def P8126023421487994729.Spec : Prop :=
  ∀ n, P8126023421487994729.a n = A065890 (n + 1)

end A065890

/-! ## A065890.P11106658966745711917

`∑[Δ[A028815(n)]-1]`
-/

namespace A065890.P11106658966745711917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065890.P11106658966745711917

namespace A065890

/-- `∑[Δ[A028815(n)]-1]` -/
def P11106658966745711917.Spec : Prop :=
  ∀ n, P11106658966745711917.a n = A065890 (n + 1)

end A065890

/-! ## A065890.P17748609576938577284

`∑[A230846(n+1)-2]`
-/

namespace A065890.P17748609576938577284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065890.P17748609576938577284

namespace A065890

/-- `∑[A230846(n+1)-2]` -/
def P17748609576938577284.Spec : Prop :=
  ∀ n, P17748609576938577284.a n = A065890 (n + 1)

end A065890

/-! ## A065890.P8770182615735166714

`Δ[A007504(n)]-(n+2)`
-/

namespace A065890.P8770182615735166714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A065890.P8770182615735166714

namespace A065890

/-- `Δ[A007504(n)]-(n+2)` -/
def P8770182615735166714.Spec : Prop :=
  ∀ n, P8770182615735166714.a n = A065890 (n + 1)

end A065890

/-! ## A065890.P6117415895402835542

`(A239636(n+1)-1)/2`
-/

namespace A065890.P6117415895402835542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239636 (n + 1) - 1 : ℚ) / 2

end

end A065890.P6117415895402835542

namespace A065890

/-- `(A239636(n+1)-1)/2` -/
def P6117415895402835542.Spec : Prop :=
  ∀ n, P6117415895402835542.a n = (A065890 (n + 1) : ℚ)

end A065890

/-! ## A065890.P9275810448968474812

`A006093(n+1)-(n+1)`
-/

namespace A065890.P9275810448968474812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - (n + 1 : ℤ)

end

end A065890.P9275810448968474812

namespace A065890

/-- `A006093(n+1)-(n+1)` -/
def P9275810448968474812.Spec : Prop :=
  ∀ n, P9275810448968474812.a n = A065890 (n + 1)

end A065890

/-! ## A065890.P8288277443958058242

`A086801(n+1)+1-n`
-/

namespace A065890.P8288277443958058242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + (1 - (n : ℤ))

end

end A065890.P8288277443958058242

namespace A065890

/-- `A086801(n+1)+1-n` -/
def P8288277443958058242.Spec : Prop :=
  ∀ n, P8288277443958058242.a n = A065890 (n + 1)

end A065890

/-! ## A065890.P15995455750414777491

`A131733(n+1)-1+n`
-/

namespace A065890.P15995455750414777491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 1) - 1 + (n : ℤ)

end

end A065890.P15995455750414777491

namespace A065890

/-- `A131733(n+1)-1+n` -/
def P15995455750414777491.Spec : Prop :=
  ∀ n, P15995455750414777491.a n = A065890 (n + 1)

end A065890

/-! ## A065890.P3526356427536876141

`A173072(n+1)-2+n`
-/

namespace A065890.P3526356427536876141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173072 (n + 1) - 2 + (n : ℤ)

end

end A065890.P3526356427536876141

namespace A065890

/-- `A173072(n+1)-2+n` -/
def P3526356427536876141.Spec : Prop :=
  ∀ n, P3526356427536876141.a n = A065890 (n + 1)

end A065890

/-! ## A065890.P16471648518756086215

`A008864(n+1)-(n+3)`
-/

namespace A065890.P16471648518756086215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (n + 3 : ℤ)

end

end A065890.P16471648518756086215

namespace A065890

/-- `A008864(n+1)-(n+3)` -/
def P16471648518756086215.Spec : Prop :=
  ∀ n, P16471648518756086215.a n = A065890 (n + 1)

end A065890

/-! ## A065890.P3361894419338820515

`A028815(n+1)-(n+3)`
-/

namespace A065890.P3361894419338820515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) - (n + 3 : ℤ)

end

end A065890.P3361894419338820515

namespace A065890

/-- `A028815(n+1)-(n+3)` -/
def P3361894419338820515.Spec : Prop :=
  ∀ n, P3361894419338820515.a n = A065890 (n + 1)

end A065890

/-! ## A065890.P9887520938311615525

`A052147(n+1)-(n+4)`
-/

namespace A065890.P9887520938311615525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - (n + 4 : ℤ)

end

end A065890.P9887520938311615525

namespace A065890

/-- `A052147(n+1)-(n+4)` -/
def P9887520938311615525.Spec : Prop :=
  ∀ n, P9887520938311615525.a n = A065890 (n + 1)

end A065890

/-! ## A065890.P17906300914248873485

`A113935(n+1)-(n+5)`
-/

namespace A065890.P17906300914248873485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) - (n + 5 : ℤ)

end

end A065890.P17906300914248873485

namespace A065890

/-- `A113935(n+1)-(n+5)` -/
def P17906300914248873485.Spec : Prop :=
  ∀ n, P17906300914248873485.a n = A065890 (n + 1)

end A065890

/-! ## A065890.P13078388783051163064

`A140777(n+1)/2-n`
-/

namespace A065890.P13078388783051163064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140777 (n + 1) : ℚ) / 2 - (n : ℚ)

end

end A065890.P13078388783051163064

namespace A065890

/-- `A140777(n+1)/2-n` -/
def P13078388783051163064.Spec : Prop :=
  ∀ n, P13078388783051163064.a n = (A065890 (n + 1) : ℚ)

end A065890

/-! ## A065890.P11391232833790472899

`A046933(n)+a(n-1)` with `a(0)=0`
-/

namespace A065890.P11391232833790472899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A046933 n + a (n - 1)

end

end A065890.P11391232833790472899

namespace A065890

/-- `A046933(n)+a(n-1)` -/
def P11391232833790472899.Spec : Prop :=
  ∀ n, P11391232833790472899.a n = A065890 (n + 1)

end A065890

/-!
# A065891: The a(n)-th composite number is 2^n.

The programs for A065891, the canonical program `A065891.P1397768470395087824` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065891 has offset 2).

The definition of A065891 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065855, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065891.P1397768470395087824

`A065855(2^(n+2))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A065891

/-- `A065855(2^(n+2))` -/
def P1397768470395087824.Spec : Prop :=
  ∀ n, P1397768470395087824.a n = A065891 (n + 2)

theorem P1397768470395087824.correct : P1397768470395087824.Spec := by
  intro n
  simp only [A065891, Nat.add_sub_cancel]

end A065891

/-! ## A065891.P15683437683258782747

`∑[A182095(n+1)+1]`
-/

namespace A065891.P15683437683258782747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182095 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065891.P15683437683258782747

namespace A065891

/-- `∑[A182095(n+1)+1]` -/
def P15683437683258782747.Spec : Prop :=
  ∀ n, P15683437683258782747.a n = A065891 (n + 2)

end A065891

/-! ## A065891.P3848561040755232680

`∑[2^(n+1)-A036378(n+1)]`
-/

namespace A065891.P3848561040755232680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A036378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065891.P3848561040755232680

namespace A065891

/-- `∑[2^(n+1)-A036378(n+1)]` -/
def P3848561040755232680.Spec : Prop :=
  ∀ n, P3848561040755232680.a n = A065891 (n + 2)

end A065891

/-! ## A065891.P15273823192047701383

`record[or(1, 2^n-1)-A007053(n)]`
-/

namespace A065891.P15273823192047701383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((2 ^ n : ℤ) - 1) - A007053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065891.P15273823192047701383

namespace A065891

/-- `record[or(1, 2^n-1)-A007053(n)]` -/
def P15273823192047701383.Spec : Prop :=
  ∀ n, P15273823192047701383.a n = A065891 (n + 2)

end A065891

/-! ## A065891.P2060236629926268035

`∑[2^(n+1)-Δ[A007053(n+1)]]`
-/

namespace A065891.P2060236629926268035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065891.P2060236629926268035

namespace A065891

/-- `∑[2^(n+1)-Δ[A007053(n+1)]]` -/
def P2060236629926268035.Spec : Prop :=
  ∀ n, P2060236629926268035.a n = A065891 (n + 2)

end A065891

/-!
# A065892: Which composite number is n! ?: a(n) = k such that A002808(k) = n!, or 0 if n! is not composite.

The programs for A065892, there is no canonical definition to state claims against.
-/

/-! ## A065892.P2310162947045499830

`(n+1)!-A003604(n+1)-1`
-/

namespace A065892.P2310162947045499830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A003604 (n + 1) - 1

end

end A065892.P2310162947045499830

/-! ## A065892.P4847061720739681920

`∑[A001563(n)]-A003604(n+1)`
-/

namespace A065892.P4847061720739681920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003604 (n + 1)

end

end A065892.P4847061720739681920

/-! ## A065892.P8972553693465712918

`∑[Δ[n!]-A061232(n)]`
-/

namespace A065892.P8972553693465712918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A061232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065892.P8972553693465712918

/-! ## A065892.P829198460174496737

`∑[A001563(n)-A061232(n)]`
-/

namespace A065892.P829198460174496737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 n - A061232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065892.P829198460174496737

/-! ## A065892.P1738310070627005375

`∑[Δ[A000142(n)]-A061232(n)]`
-/

namespace A065892.P1738310070627005375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A061232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065892.P1738310070627005375

/-!
# A065893: Which composite number is the square of n? Index of n^2 in A002808.

The programs for A065893, the canonical program `A065893.P16329416451500820683` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065893 has offset 1).

The definition of A065893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065893.P15817639149575191729

`A078435(n+1)-1`
-/

namespace A065893.P15817639149575191729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078435 (n + 1) - 1

end

end A065893.P15817639149575191729

namespace A065893

/-- `A078435(n+1)-1` -/
def P15817639149575191729.Spec : Prop :=
  ∀ n, P15817639149575191729.a n = A065893 (n + 1)

end A065893

/-! ## A065893.P7643987003752695887

`∑[A161182(n+1)]-1`
-/

namespace A065893.P7643987003752695887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A065893.P7643987003752695887

namespace A065893

/-- `∑[A161182(n+1)]-1` -/
def P7643987003752695887.Spec : Prop :=
  ∀ n, P7643987003752695887.a n = A065893 (n + 1)

end A065893

/-! ## A065893.P3038718290791120480

`n²-A147609(n+1)`
-/

namespace A065893.P3038718290791120480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A147609 (n + 1)

end

end A065893.P3038718290791120480

namespace A065893

/-- `n²-A147609(n+1)` -/
def P3038718290791120480.Spec : Prop :=
  ∀ n, P3038718290791120480.a n = A065893 (n + 1)

end A065893

/-! ## A065893.P5561957528209054655

`n*(n+2)-∑[A014085(n)]`
-/

namespace A065893.P5561957528209054655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065893.P5561957528209054655

namespace A065893

/-- `n*(n+2)-∑[A014085(n)]` -/
def P5561957528209054655.Spec : Prop :=
  ∀ n, P5561957528209054655.a n = A065893 (n + 1)

end A065893

/-! ## A065893.P16329416451500820683

`A028387(n)-A161187(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A065893

/-- `A028387(n)-A161187(n+1)` -/
def P16329416451500820683.Spec : Prop :=
  ∀ n, P16329416451500820683.a n = A065893 (n + 1)

theorem P16329416451500820683.correct : P16329416451500820683.Spec := by
  intro n
  simp only [A065893, Nat.add_sub_cancel]

end A065893

/-! ## A065893.P4508284966369638442

`A002522(n)-(A147609(n+1)+1)`
-/

namespace A065893.P4508284966369638442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n - (A147609 (n + 1) + 1)

end

end A065893.P4508284966369638442

namespace A065893

/-- `A002522(n)-(A147609(n+1)+1)` -/
def P4508284966369638442.Spec : Prop :=
  ∀ n, P4508284966369638442.a n = A065893 (n + 1)

end A065893

/-! ## A065893.P13531226992839873951

`n²+A016777(n)-A161187(n+1)`
-/

namespace A065893.P13531226992839873951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A016777 n - A161187 (n + 1))

end

end A065893.P13531226992839873951

namespace A065893

/-- `n²+A016777(n)-A161187(n+1)` -/
def P13531226992839873951.Spec : Prop :=
  ∀ n, P13531226992839873951.a n = A065893 (n + 1)

end A065893

/-! ## A065893.P16086699515294587911

`n*(n+2)-A038107(n+1)`
-/

namespace A065893.P16086699515294587911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℤ) - A038107 (n + 1)

end

end A065893.P16086699515294587911

namespace A065893

/-- `n*(n+2)-A038107(n+1)` -/
def P16086699515294587911.Spec : Prop :=
  ∀ n, P16086699515294587911.a n = A065893 (n + 1)

end A065893

/-! ## A065893.P14543297159928023483

`n²+A005843(n)-A038107(n+1)`
-/

namespace A065893.P14543297159928023483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A005843 n - A038107 (n + 1))

end

end A065893.P14543297159928023483

namespace A065893

/-- `n²+A005843(n)-A038107(n+1)` -/
def P14543297159928023483.Spec : Prop :=
  ∀ n, P14543297159928023483.a n = A065893 (n + 1)

end A065893

/-! ## A065893.P14508978846404479820

`A000290(n+1)-(A038107(n+1)+1)`
-/

namespace A065893.P14508978846404479820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - (A038107 (n + 1) + 1)

end

end A065893.P14508978846404479820

namespace A065893

/-- `A000290(n+1)-(A038107(n+1)+1)` -/
def P14508978846404479820.Spec : Prop :=
  ∀ n, P14508978846404479820.a n = A065893 (n + 1)

end A065893

/-! ## A065893.P14390614387187980492

`∑[A161182(n+1)%A161154(n+1)]`
-/

namespace A065893.P14390614387187980492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161182 (n + 1)) (A161154 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065893.P14390614387187980492

namespace A065893

/-- `∑[A161182(n+1)%A161154(n+1)]` -/
def P14390614387187980492.Spec : Prop :=
  ∀ n, P14390614387187980492.a n = A065893 (n + 1)

end A065893

/-! ## A065893.P13909579156575453015

`record[floor(sqrt(A000040(n+1)))²-n]-1`
-/

namespace A065893.P13909579156575453015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000040 (n + 1)) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A065893.P13909579156575453015

namespace A065893

/-- `record[floor(sqrt(A000040(n+1)))²-n]-1` -/
def P13909579156575453015.Spec : Prop :=
  ∀ n, P13909579156575453015.a n = A065893 (n + 1)

end A065893

/-! ## A065893.P532319707878863791

`(n+1)²-A000720((n+1)²)-1`
-/

namespace A065893.P532319707878863791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000720 ((n + 1) ^ 2) - 1

end

end A065893.P532319707878863791

namespace A065893

/-- `(n+1)²-A000720((n+1)²)-1` -/
def P532319707878863791.Spec : Prop :=
  ∀ n, P532319707878863791.a n = A065893 (n + 1)

end A065893

/-! ## A065893.P17023630215284284102

`n*(n+2)-A000720(n*(n+2)+1)`
-/

namespace A065893.P17023630215284284102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℤ) - A000720 (n * (n + 2) + 1)

end

end A065893.P17023630215284284102

namespace A065893

/-- `n*(n+2)-A000720(n*(n+2)+1)` -/
def P17023630215284284102.Spec : Prop :=
  ∀ n, P17023630215284284102.a n = A065893 (n + 1)

end A065893

/-! ## A065893.P3474953671445275436

`A305800(A132411(n+1))-1`
-/

namespace A065893.P3474953671445275436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (A132411 (n + 1)).toNat - 1

end

end A065893.P3474953671445275436

namespace A065893

/-- `A305800(A132411(n+1))-1` -/
def P3474953671445275436.Spec : Prop :=
  ∀ n, P3474953671445275436.a n = A065893 (n + 1)

end A065893

/-! ## A065893.P9609197703299109761

`A065855((n+1)²)`
-/

namespace A065893.P9609197703299109761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 ((n + 1) ^ 2)

end

end A065893.P9609197703299109761

namespace A065893

/-- `A065855((n+1)²)` -/
def P9609197703299109761.Spec : Prop :=
  ∀ n, P9609197703299109761.a n = A065893 (n + 1)

end A065893

/-! ## A065893.P18388142111669189015

`lt[val(A000005(A018252(n+1)), 2), 1]`
-/

namespace A065893.P18388142111669189015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000005 (A018252 (n + 1)).toNat).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065893.P18388142111669189015

namespace A065893

/-- `lt[val(A000005(A018252(n+1)), 2), 1]` -/
def P18388142111669189015.Spec : Prop :=
  ∀ n, (P18388142111669189015.a n : ℤ) = A065893 (n + 1)

end A065893

/-! ## A065893.P17172055106484907905

`A023443(A078435(n+1))`
-/

namespace A065893.P17172055106484907905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A078435 (n + 1)).toNat

end

end A065893.P17172055106484907905

namespace A065893

/-- `A023443(A078435(n+1))` -/
def P17172055106484907905.Spec : Prop :=
  ∀ n, P17172055106484907905.a n = A065893 (n + 1)

end A065893

/-! ## A065893.P3050194794662595180

`A289207(A305800((n+1)²))`
-/

namespace A065893.P3050194794662595180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A305800 ((n + 1) ^ 2)).toNat

end

end A065893.P3050194794662595180

namespace A065893

/-- `A289207(A305800((n+1)²))` -/
def P3050194794662595180.Spec : Prop :=
  ∀ n, P3050194794662595180.a n = A065893 (n + 1)

end A065893

/-! ## A065893.P13435544937095642748

`A066136((n+1)²)`
-/

namespace A065893.P13435544937095642748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066136 ((n + 1) ^ 2)

end

end A065893.P13435544937095642748

namespace A065893

/-- `A066136((n+1)²)` -/
def P13435544937095642748.Spec : Prop :=
  ∀ n, P13435544937095642748.a n = A065893 (n + 1)

end A065893

/-!
# A065894: Number of composites <= 10^n.

The programs for A065894, the canonical program `A065894.P12674390457359744932` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065894 has offset 0).

The definition of A065894 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006880, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065894.P12674390457359744932

`10^n-1-A006880(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065894

/-- `10^n-1-A006880(n)` -/
def P12674390457359744932.Spec : Prop :=
  ∀ n, P12674390457359744932.a n = A065894 n

theorem P12674390457359744932.correct : P12674390457359744932.Spec := by
  intro n
  simp only [A065894]

end A065894

/-! ## A065894.P8662873355453215049

`A002283(n)-∑[A006879(n)]`
-/

namespace A065894.P8662873355453215049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065894.P8662873355453215049

namespace A065894

/-- `A002283(n)-∑[A006879(n)]` -/
def P8662873355453215049.Spec : Prop :=
  ∀ n, P8662873355453215049.a n = A065894 n

end A065894

/-! ## A065894.P15323810516072357708

`A092871(n)+char[A007318(n)]`
-/

namespace A065894.P15323810516072357708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092871 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A065894.P15323810516072357708

namespace A065894

/-- `A092871(n)+char[A007318(n)]` -/
def P15323810516072357708.Spec : Prop :=
  ∀ n, P15323810516072357708.a n = A065894 n

end A065894

/-! ## A065894.P12876057015811855175

`10^n-A090226(n+1)`
-/

namespace A065894.P12876057015811855175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) - A090226 (n + 1)

end

end A065894.P12876057015811855175

namespace A065894

/-- `10^n-A090226(n+1)` -/
def P12876057015811855175.Spec : Prop :=
  ∀ n, P12876057015811855175.a n = A065894 n

end A065894

/-!
# A065895: Which composite number is n^n ?: a(n) = k such that A002808(k) = n^n, or 0 if n^n is not composite.

The programs for A065895, the canonical program `A065895.P12859102474593536539` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065895 has offset 1).

The definition of A065895 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064151, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065895.P12859102474593536539

`(n+1)^(n+1)-A064151(n+1)-1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065895

/-- `(n+1)^(n+1)-A064151(n+1)-1` -/
def P12859102474593536539.Spec : Prop :=
  ∀ n, P12859102474593536539.a n = A065895 (n + 1)

theorem P12859102474593536539.correct : P12859102474593536539.Spec := by
  intro n
  simp only [A065895, Nat.add_sub_cancel]

end A065895

/-! ## A065895.P9128540180791283758

`A048861(n+1)-A064151(n+1)`
-/

namespace A065895.P9128540180791283758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048861 (n + 1) - A064151 (n + 1)

end

end A065895.P9128540180791283758

namespace A065895

/-- `A048861(n+1)-A064151(n+1)` -/
def P9128540180791283758.Spec : Prop :=
  ∀ n, P9128540180791283758.a n = A065895 (n + 1)

end A065895

/-! ## A065895.P9452344621286699281

`A000312(n+1)-(A064151(n+1)+1)`
-/

namespace A065895.P9452344621286699281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 1) - (A064151 (n + 1) + 1)

end

end A065895.P9452344621286699281

namespace A065895

/-- `A000312(n+1)-(A064151(n+1)+1)` -/
def P9452344621286699281.Spec : Prop :=
  ∀ n, P9452344621286699281.a n = A065895 (n + 1)

end A065895

/-! ## A065895.P7654705503444918815

`A048861(n+1)-(∑[A066612(n+1)]-A066612(n+1))`
-/

namespace A065895.P7654705503444918815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048861 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j - A066612 (n + 1))

end

end A065895.P7654705503444918815

namespace A065895

/-- `A048861(n+1)-(∑[A066612(n+1)]-A066612(n+1))` -/
def P7654705503444918815.Spec : Prop :=
  ∀ n, P7654705503444918815.a n = A065895 (n + 1)

end A065895

/-!
# A065896: Number of composites <= 2*n.

The programs for A065896, the canonical program `A065896.P6289324140051326496` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065896 has offset 1).

The definition of A065896 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065855, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065896.P6289324140051326496

`A065855(2*(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A065896

/-- `A065855(2*(n+1))` -/
def P6289324140051326496.Spec : Prop :=
  ∀ n, P6289324140051326496.a n = A065896 (n + 1)

theorem P6289324140051326496.correct : P6289324140051326496.Spec := by
  intro n
  simp only [A065896, Nat.add_sub_cancel]

end A065896

/-! ## A065896.P344965795848587803

`∑[ceil(atan(∑{e}[2*n+1, #]))]`
-/

namespace A065896.P344965795848587803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065896.P344965795848587803

namespace A065896

/-- `∑[ceil(atan(∑{e}[2*n+1, #]))]` -/
def P344965795848587803.Spec : Prop :=
  ∀ n, P344965795848587803.a n = A065896 (n + 1)

end A065896

/-! ## A065896.P8722596109035714303

`A210469(n+1)+n`
-/

namespace A065896.P8722596109035714303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210469 (n + 1) + (n : ℤ)

end

end A065896.P8722596109035714303

namespace A065896

/-- `A210469(n+1)+n` -/
def P8722596109035714303.Spec : Prop :=
  ∀ n, P8722596109035714303.a n = A065896 (n + 1)

end A065896

/-! ## A065896.P16768563446343495744

`∑[2-A101264(n)]-2`
-/

namespace A065896.P16768563446343495744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A065896.P16768563446343495744

namespace A065896

/-- `∑[2-A101264(n)]-2` -/
def P16768563446343495744.Spec : Prop :=
  ∀ n, P16768563446343495744.a n = A065896 (n + 1)

end A065896

/-! ## A065896.P17035766542867786454

`comp[A047845(n+2)+n]`
-/

namespace A065896.P17035766542867786454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A065896.P17035766542867786454

namespace A065896

/-- `comp[A047845(n+2)+n]` -/
def P17035766542867786454.Spec : Prop :=
  ∀ n, (P17035766542867786454.a n : ℤ) = A065896 (n + 1)

end A065896

/-! ## A065896.P5574403986358444188

`∑[A323162(Δ[n²])]+n`
-/

namespace A065896.P5574403986358444188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A065896.P5574403986358444188

namespace A065896

/-- `∑[A323162(Δ[n²])]+n` -/
def P5574403986358444188.Spec : Prop :=
  ∀ n, P5574403986358444188.a n = A065896 (n + 1)

end A065896

/-! ## A065896.P11133523637021747051

`A305800(2*(n+1))-2`
-/

namespace A065896.P11133523637021747051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (2 * (n + 1)) - 2

end

end A065896.P11133523637021747051

namespace A065896

/-- `A305800(2*(n+1))-2` -/
def P11133523637021747051.Spec : Prop :=
  ∀ n, P11133523637021747051.a n = A065896 (n + 1)

end A065896

/-! ## A065896.P8605080356360319522

`Δ[n²]-A099802(n+1)`
-/

namespace A065896.P8605080356360319522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A099802 (n + 1)

end

end A065896.P8605080356360319522

namespace A065896

/-- `Δ[n²]-A099802(n+1)` -/
def P8605080356360319522.Spec : Prop :=
  ∀ n, P8605080356360319522.a n = A065896 (n + 1)

end A065896

/-! ## A065896.P3081465261966803286

`comp[comp[A102781(n+1)]+n]`
-/

namespace A065896.P3081465261966803286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A065896.P3081465261966803286

namespace A065896

/-- `comp[comp[A102781(n+1)]+n]` -/
def P3081465261966803286.Spec : Prop :=
  ∀ n, (P3081465261966803286.a n : ℤ) = A065896 (n + 1)

end A065896

/-! ## A065896.P9475213139548385269

`∑[A066247(2*n+1)]+n`
-/

namespace A065896.P9475213139548385269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A065896.P9475213139548385269

namespace A065896

/-- `∑[A066247(2*n+1)]+n` -/
def P9475213139548385269.Spec : Prop :=
  ∀ n, P9475213139548385269.a n = A065896 (n + 1)

end A065896

/-! ## A065896.P16497853219044316163

`∑[A202238(2*n+1)]+n`
-/

namespace A065896.P16497853219044316163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202238 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A065896.P16497853219044316163

namespace A065896

/-- `∑[A202238(2*n+1)]+n` -/
def P16497853219044316163.Spec : Prop :=
  ∀ n, P16497853219044316163.a n = A065896 (n + 1)

end A065896

/-! ## A065896.P3548218768640842457

`∑[ceil(atan(A001222(2*n+1)))]`
-/

namespace A065896.P3548218768640842457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A001222 (2 * n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065896.P3548218768640842457

namespace A065896

/-- `∑[ceil(atan(A001222(2*n+1)))]` -/
def P3548218768640842457.Spec : Prop :=
  ∀ n, P3548218768640842457.a n = A065896 (n + 1)

end A065896

/-! ## A065896.P16798222646089139018

`∑[ceil(sqrt(log(A000005(2*n+1))))]`
-/

namespace A065896.P16798222646089139018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.log (A000005 (2 * n + 1) : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065896.P16798222646089139018

namespace A065896

/-- `∑[ceil(sqrt(log(A000005(2*n+1))))]` -/
def P16798222646089139018.Spec : Prop :=
  ∀ n, P16798222646089139018.a n = A065896 (n + 1)

end A065896

/-! ## A065896.P1165609959015539393

`2*n-∑[A010051(2*n+1)]`
-/

namespace A065896.P1165609959015539393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065896.P1165609959015539393

namespace A065896

/-- `2*n-∑[A010051(2*n+1)]` -/
def P1165609959015539393.Spec : Prop :=
  ∀ n, P1165609959015539393.a n = A065896 (n + 1)

end A065896

/-! ## A065896.P2548783192621395197

`∑[2-C(2, A000005(n+1+n))]`
-/

namespace A065896.P2548783192621395197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose 2 (A000005 (n + 1 + n)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065896.P2548783192621395197

namespace A065896

/-- `∑[2-C(2, A000005(n+1+n))]` -/
def P2548783192621395197.Spec : Prop :=
  ∀ n, P2548783192621395197.a n = A065896 (n + 1)

end A065896

/-! ## A065896.P11569156084350654002

`comp[comp[floor(A006093(n+1)/2)]+n]`
-/

namespace A065896.P11569156084350654002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006093 (n + 1) : ℚ) / 2⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A065896.P11569156084350654002

namespace A065896

/-- `comp[comp[floor(A006093(n+1)/2)]+n]` -/
def P11569156084350654002.Spec : Prop :=
  ∀ n, (P11569156084350654002.a n : ℤ) = A065896 (n + 1)

end A065896

/-! ## A065896.P10695999914726003526

`∑[2-C(2*(n+1), A000203(2*n+1))]`
-/

namespace A065896.P10695999914726003526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose (2 * (n + 1)) (A000203 (2 * n + 1)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065896.P10695999914726003526

namespace A065896

/-- `∑[2-C(2*(n+1), A000203(2*n+1))]` -/
def P10695999914726003526.Spec : Prop :=
  ∀ n, P10695999914726003526.a n = A065896 (n + 1)

end A065896

/-! ## A065896.P8390133411633542344

`∑[2-C(A006530(4*n+2), 2*n+1)]`
-/

namespace A065896.P8390133411633542344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose (A006530 (4 * n + 2)).toNat (2 * n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065896.P8390133411633542344

namespace A065896

/-- `∑[2-C(A006530(4*n+2), 2*n+1)]` -/
def P8390133411633542344.Spec : Prop :=
  ∀ n, P8390133411633542344.a n = A065896 (n + 1)

end A065896

/-! ## A065896.P15639076454238460415

`2*n-∑[floor(A006530(2*n+1)/(n+2))]`
-/

namespace A065896.P15639076454238460415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006530 (2 * n + 1) : ℚ) / (n + 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065896.P15639076454238460415

namespace A065896

/-- `2*n-∑[floor(A006530(2*n+1)/(n+2))]` -/
def P15639076454238460415.Spec : Prop :=
  ∀ n, P15639076454238460415.a n = A065896 (n + 1)

end A065896

/-! ## A065896.P12157722413231339065

`2*n+1-∑[C(A000010(2*n+1), 2*n)]`
-/

namespace A065896.P12157722413231339065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (2 * n + 1)).toNat (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A065896.P12157722413231339065

namespace A065896

/-- `2*n+1-∑[C(A000010(2*n+1), 2*n)]` -/
def P12157722413231339065.Spec : Prop :=
  ∀ n, P12157722413231339065.a n = A065896 (n + 1)

end A065896

/-!
# A065897: The a(n)-th composite number is twice the n-th prime.

The programs for A065897, the canonical program `A065897.P15020235255577157710` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065897 has offset 1).

The definition of A065897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065897.P3582653573287066204

`A163468(n+1)-2`
-/

namespace A065897.P3582653573287066204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163468 (n + 1) - 2

end

end A065897.P3582653573287066204

namespace A065897

/-- `A163468(n+1)-2` -/
def P3582653573287066204.Spec : Prop :=
  ∀ n, P3582653573287066204.a n = A065897 (n + 1)

end A065897

/-! ## A065897.P8355713131643125493

`A120632(n+1)-(n+1)`
-/

namespace A065897.P8355713131643125493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120632 (n + 1) - (n + 1 : ℤ)

end

end A065897.P8355713131643125493

namespace A065897

/-- `A120632(n+1)-(n+1)` -/
def P8355713131643125493.Spec : Prop :=
  ∀ n, P8355713131643125493.a n = A065897 (n + 1)

end A065897

/-! ## A065897.P7476397300432123859

`A246514(n+1)+A014689(n+1)`
-/

namespace A065897.P7476397300432123859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246514 (n + 1) + A014689 (n + 1)

end

end A065897.P7476397300432123859

namespace A065897

/-- `A246514(n+1)+A014689(n+1)` -/
def P7476397300432123859.Spec : Prop :=
  ∀ n, P7476397300432123859.a n = A065897 (n + 1)

end A065897

/-! ## A065897.P17310053717769875758

`A334051(n+1)+A239636(n+1)`
-/

namespace A065897.P17310053717769875758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334051 (n + 1) + A239636 (n + 1)

end

end A065897.P17310053717769875758

namespace A065897

/-- `A334051(n+1)+A239636(n+1)` -/
def P17310053717769875758.Spec : Prop :=
  ∀ n, P17310053717769875758.a n = A065897 (n + 1)

end A065897

/-! ## A065897.P15020235255577157710

`A134591(n+1)-A063124(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A065897

/-- `A134591(n+1)-A063124(n+1)` -/
def P15020235255577157710.Spec : Prop :=
  ∀ n, P15020235255577157710.a n = A065897 (n + 1)

theorem P15020235255577157710.correct : P15020235255577157710.Spec := by
  intro n
  simp only [A065897, Nat.add_sub_cancel]

end A065897

/-! ## A065897.P7581378824199097118

`A246514(n+1)+A000040(n+1)-(n+1)`
-/

namespace A065897.P7581378824199097118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246514 (n + 1) + A000040 (n + 1) - (n + 1 : ℤ)

end

end A065897.P7581378824199097118

namespace A065897

/-- `A246514(n+1)+A000040(n+1)-(n+1)` -/
def P7581378824199097118.Spec : Prop :=
  ∀ n, P7581378824199097118.a n = A065897 (n + 1)

end A065897

/-! ## A065897.P11889047006999776780

`A305800(A100484(n+1))-2`
-/

namespace A065897.P11889047006999776780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (A100484 (n + 1)).toNat - 2

end

end A065897.P11889047006999776780

namespace A065897

/-- `A305800(A100484(n+1))-2` -/
def P11889047006999776780.Spec : Prop :=
  ∀ n, P11889047006999776780.a n = A065897 (n + 1)

end A065897

/-! ## A065897.P12719438802794438597

`A305800(A001747(n+2))-2`
-/

namespace A065897.P12719438802794438597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (A001747 (n + 2)).toNat - 2

end

end A065897.P12719438802794438597

namespace A065897

/-- `A305800(A001747(n+2))-2` -/
def P12719438802794438597.Spec : Prop :=
  ∀ n, P12719438802794438597.a n = A065897 (n + 1)

end A065897

/-! ## A065897.P16015997522504272900

`A305800(2*A000040(n+1))-2`
-/

namespace A065897.P16015997522504272900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (2 * A000040 (n + 1)).toNat - 2

end

end A065897.P16015997522504272900

namespace A065897

/-- `A305800(2*A000040(n+1))-2` -/
def P16015997522504272900.Spec : Prop :=
  ∀ n, P16015997522504272900.a n = A065897 (n + 1)

end A065897

/-! ## A065897.P10676283650281828487

`A065896(A000040(n+1))`
-/

namespace A065897.P10676283650281828487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (A000040 (n + 1)).toNat

end

end A065897.P10676283650281828487

namespace A065897

/-- `A065896(A000040(n+1))` -/
def P10676283650281828487.Spec : Prop :=
  ∀ n, P10676283650281828487.a n = A065897 (n + 1)

end A065897

/-! ## A065897.P15371024391928216253

`A065896(A008578(n+2))`
-/

namespace A065897.P15371024391928216253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (A008578 (n + 2)).toNat

end

end A065897.P15371024391928216253

namespace A065897

/-- `A065896(A008578(n+2))` -/
def P15371024391928216253.Spec : Prop :=
  ∀ n, P15371024391928216253.a n = A065897 (n + 1)

end A065897

/-! ## A065897.P3899596545840345086

`A065896(A182986(n+2))`
-/

namespace A065897.P3899596545840345086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (A182986 (n + 2)).toNat

end

end A065897.P3899596545840345086

namespace A065897

/-- `A065896(A182986(n+2))` -/
def P3899596545840345086.Spec : Prop :=
  ∀ n, P3899596545840345086.a n = A065897 (n + 1)

end A065897

/-! ## A065897.P1361401325848386252

`A065896(record[A006530(n+2)])`
-/

namespace A065897.P1361401325848386252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A065897.P1361401325848386252

namespace A065897

/-- `A065896(record[A006530(n+2)])` -/
def P1361401325848386252.Spec : Prop :=
  ∀ n, P1361401325848386252.a n = A065897 (n + 1)

end A065897

/-! ## A065897.P4059779606378851072

`A065896(record[A014963(n+2)])`
-/

namespace A065897.P4059779606378851072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A065897.P4059779606378851072

namespace A065897

/-- `A065896(record[A014963(n+2)])` -/
def P4059779606378851072.Spec : Prop :=
  ∀ n, P4059779606378851072.a n = A065897 (n + 1)

end A065897

/-! ## A065897.P8331362615123173356

`A065896(record[A020639(n+2)])`
-/

namespace A065897.P8331362615123173356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A065897.P8331362615123173356

namespace A065897

/-- `A065896(record[A020639(n+2)])` -/
def P8331362615123173356.Spec : Prop :=
  ∀ n, P8331362615123173356.a n = A065897 (n + 1)

end A065897

/-! ## A065897.P1784759501150102594

`A065896(A006093(n+1)+1)`
-/

namespace A065897.P1784759501150102594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (A006093 (n + 1) + 1).toNat

end

end A065897.P1784759501150102594

namespace A065897

/-- `A065896(A006093(n+1)+1)` -/
def P1784759501150102594.Spec : Prop :=
  ∀ n, P1784759501150102594.a n = A065897 (n + 1)

end A065897

/-! ## A065897.P7673330928203759196

`A065896(A040976(n+1)+2)`
-/

namespace A065897.P7673330928203759196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (A040976 (n + 1) + 2).toNat

end

end A065897.P7673330928203759196

namespace A065897

/-- `A065896(A040976(n+1)+2)` -/
def P7673330928203759196.Spec : Prop :=
  ∀ n, P7673330928203759196.a n = A065897 (n + 1)

end A065897

/-! ## A065897.P14941286358231350118

`A065855(2*A000040(n+1))`
-/

namespace A065897.P14941286358231350118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (2 * A000040 (n + 1)).toNat

end

end A065897.P14941286358231350118

namespace A065897

/-- `A065855(2*A000040(n+1))` -/
def P14941286358231350118.Spec : Prop :=
  ∀ n, P14941286358231350118.a n = A065897 (n + 1)

end A065897

/-! ## A065897.P16530708698957148978

`A065855(2*A008578(n+2))`
-/

namespace A065897.P16530708698957148978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (2 * A008578 (n + 2)).toNat

end

end A065897.P16530708698957148978

namespace A065897

/-- `A065855(2*A008578(n+2))` -/
def P16530708698957148978.Spec : Prop :=
  ∀ n, P16530708698957148978.a n = A065897 (n + 1)

end A065897

/-! ## A065897.P11766104712022541303

`A065855(2*p?[A000961(n+1)])`
-/

namespace A065897.P11766104712022541303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A065897.P11766104712022541303

namespace A065897

/-- `A065855(2*p?[A000961(n+1)])` -/
def P11766104712022541303.Spec : Prop :=
  ∀ n, P11766104712022541303.a n = A065897 (n + 1)

end A065897

/-!
# A065898: Which composite number is the product of first n primes (the n-th primorial number)?: a(n) = k such that A002808(k) = A002110(n), or 0 if A002110(n) is not composite.

The programs for A065898, there is no canonical definition to state claims against.
-/

/-! ## A065898.P762598013105165563

`A002110(n+1)-A000849(n+1)-1`
-/

namespace A065898.P762598013105165563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - A000849 (n + 1) - 1

end

end A065898.P762598013105165563

/-! ## A065898.P15124598395953093481

`∑[A061720(n)-A072236(n)]`
-/

namespace A065898.P15124598395953093481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061720 n - A072236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065898.P15124598395953093481

/-! ## A065898.P6583299710619676339

`∑[Δ[A002110(n)]-A072236(n)]`
-/

namespace A065898.P6583299710619676339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A072236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065898.P6583299710619676339

/-!
# A065899: a(n) is the index of the n-th compositorial number, A036691(n), in the sequence of composites (A002808).

The programs for A065899, there is no canonical definition to state claims against.
-/

/-! ## A065899.P11537838458907541245

`A065855(A036691(n+1))`
-/

namespace A065899.P11537838458907541245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A036691 (n + 1)).toNat

end

end A065899.P11537838458907541245

