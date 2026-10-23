import SequenceMachineLib
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C025

/-!
# A225600: Toothpick sequence related to integer partitions (see Comments lines for definition).

The programs for A225600, there is no canonical definition to state claims against.
-/

/-! ## A225600.P13366883003540834069

`A220517(n)+a(n-1)` with `a(0)=0`
-/

namespace A225600.P13366883003540834069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A220517 n + a (n - 1)

end

end A225600.P13366883003540834069

/-! ## A225600.P3917811398911480822

`∑[A220517(floor(acot(n)+n))]-1`
-/

namespace A225600.P3917811398911480822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220517 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A225600.P3917811398911480822

/-! ## A225600.P15019248474558852613

`∑[A220517(round(acot(n)+n))]-1`
-/

namespace A225600.P15019248474558852613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220517 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A225600.P15019248474558852613

/-! ## A225600.P435622454585259734

`∑[A220517(abs(1-n)+1)]-1`
-/

namespace A225600.P435622454585259734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220517 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A225600.P435622454585259734

/-! ## A225600.P16744878361015462890

`∪[∑[A220517(n+1)], A211978(n)]`
-/

namespace A225600.P16744878361015462890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220517 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211978 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A225600.P16744878361015462890

/-! ## A225600.P2381757957732155722

`∑[A057427(n)*A220517(A028310(n))]`
-/

namespace A225600.P2381757957732155722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A220517 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225600.P2381757957732155722

/-! ## A225600.P1740082099040182950

`∑[A220517(A028310(n))%A000070(n)]`
-/

namespace A225600.P1740082099040182950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220517 (A028310 n).toNat) (A000070 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225600.P1740082099040182950

/-! ## A225600.P10784716685045877927

`A153881(n+2)+∑[A220517(A028310(n))]`
-/

namespace A225600.P10784716685045877927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220517 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225600.P10784716685045877927

/-! ## A225600.P17742480435507622692

`∑[A220517(A233583(n+1))%A000203(n+1)]`
-/

namespace A225600.P17742480435507622692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220517 (A233583 (n + 1)).toNat) (A000203 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225600.P17742480435507622692

/-!
# A225601: a(n) = A000172(n)^n, where A000172(n) = Sum_{k=0..n} binomial(n,k)^3 forms the Franel numbers.

The programs for A225601, there is no canonical definition to state claims against.
-/

/-! ## A225601.P303229237349838851

`A000172(n)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A225601.P303229237349838851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000172 n ^ n

end

end A225601.P303229237349838851

/-! ## A225601.P11200682015803418362

`sqrt(A052144(n))^n`
-/

namespace A225601.P11200682015803418362
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A052144 n : ℝ) ^ n

end

end A225601.P11200682015803418362

/-! ## A225601.P11175059658487495532

`abs(Δ[A207318(n)])^n`
-/

namespace A225601.P11175059658487495532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| ^ n

end

end A225601.P11175059658487495532

/-! ## A225601.P3270002697481793211

`A309010(∑[n+3]+n+3)^n`
-/

namespace A225601.P3270002697481793211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3)) ^ n

end

end A225601.P3270002697481793211

/-! ## A225601.P8773187833418943736

`(A096191(round(sqrt(n²+1)))+1)^n`
-/

namespace A225601.P8773187833418943736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A096191 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1) ^ n

end

end A225601.P8773187833418943736

/-!
# A225602: a(n) = A002426(n^2), where A002426 is the central trinomial coefficients.

The programs for A225602, the canonical program `A225602.P3911621368011717902` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225602 has offset 0).

The definition of A225602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225602.P3911621368011717902

`A002426(n²)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A225602

/-- `A002426(n²)` -/
def P3911621368011717902.Spec : Prop :=
  ∀ n, P3911621368011717902.a n = A225602 n

theorem P3911621368011717902.correct : P3911621368011717902.Spec := by
  intro n
  simp only [A225602]

end A225602

/-! ## A225602.P8811938256338310021

`A005213(2*n²)`
-/

namespace A225602.P8811938256338310021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (2 * n ^ 2)

end

end A225602.P8811938256338310021

namespace A225602

/-- `A005213(2*n²)` -/
def P8811938256338310021.Spec : Prop :=
  ∀ n, P8811938256338310021.a n = A225602 n

end A225602

/-! ## A225602.P12693493937650860591

`or(1, A002426(A000290(n)))`
-/

namespace A225602.P12693493937650860591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002426 (A000290 n).toNat)

end

end A225602.P12693493937650860591

namespace A225602

/-- `or(1, A002426(A000290(n)))` -/
def P12693493937650860591.Spec : Prop :=
  ∀ n, P12693493937650860591.a n = A225602 n

end A225602

/-! ## A225602.P9515409823589129985

`gcd(A000038(n), A002426(A000384(n)-n*(n-1)))`
-/

namespace A225602.P9515409823589129985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A002426 (A000384 n - (n : ℤ) * ((n : ℤ) - 1)).toNat)

end

end A225602.P9515409823589129985

namespace A225602

/-- `gcd(A000038(n), A002426(A000384(n)-n*(n-1)))` -/
def P9515409823589129985.Spec : Prop :=
  ∀ n, (P9515409823589129985.a n : ℤ) = A225602 n

end A225602

/-! ## A225602.P8241729436740390456

`A002426(A000384(n)-n*(n-1))+A000038(3*n+3)`
-/

namespace A225602.P8241729436740390456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (A000384 n - (n : ℤ) * ((n : ℤ) - 1)).toNat + A000038 (3 * n + 3)

end

end A225602.P8241729436740390456

namespace A225602

/-- `A002426(A000384(n)-n*(n-1))+A000038(3*n+3)` -/
def P8241729436740390456.Spec : Prop :=
  ∀ n, P8241729436740390456.a n = A225602 n

end A225602

/-!
# A225603: Palindromic primes whose square is also a palindrome.

The programs for A225603, there is no canonical definition to state claims against.
-/

/-! ## A225603.P8024083878599904908

`∩[A002778(n+1), A088562(n+1)]`
-/

namespace A225603.P8024083878599904908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225603.P8024083878599904908

/-! ## A225603.P109332541632716932

`∩[A057135(n+1), A088562(n+1)]`
-/

namespace A225603.P109332541632716932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225603.P109332541632716932

/-! ## A225603.P17203165897752798332

`∩[A002778(n+1), A161721(n+1)]`
-/

namespace A225603.P17203165897752798332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225603.P17203165897752798332

/-! ## A225603.P11852886283734878693

`∩[A057135(n+1), A161721(n+1)]`
-/

namespace A225603.P11852886283734878693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225603.P11852886283734878693

/-! ## A225603.P6043308600595363130

`∩[A088562(n+1), A161721(n+1)]`
-/

namespace A225603.P6043308600595363130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225603.P6043308600595363130

/-!
# A225605: a(1) = least k such that 1/3 < H(k) - 1/3; a(2) = least k such that H(a(1)) - H(3) < H(k) - H(a(1)), and for n > 2, a(n) = least k such that H(a(n-1)) - H(a(n-2)) > H(k) - H(a(n-1)), where H = harmonic number.

The programs for A225605, the canonical program `A225605.P6904868935400976792` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225605 has offset 1).

The definition of A225605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225605.P6589336457302442289

`ogf((-5+x+2x^2+3x^3)/(-1+2x-x^4))`
-/

namespace A225605.P6589336457302442289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -1, -2, -3] [1, -2, 0, 0, 1] n

end

end A225605.P6589336457302442289

namespace A225605

/-- `ogf((-5+x+2x^2+3x^3)/(-1+2x-x^4))` -/
def P6589336457302442289.Spec : Prop :=
  ∀ n, P6589336457302442289.a n = A225605 (n + 1)

end A225605

/-! ## A225605.P6904868935400976792

`2*a(n-1)-a(n-4)` with `a(0)=5, a(1)=9, a(2)=16, a(3)=29`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A225605

/-- `2*a(n-1)-a(n-4)` -/
def P6904868935400976792.Spec : Prop :=
  ∀ n, P6904868935400976792.a n = A225605 (n + 1)

theorem P6904868935400976792.correct : P6904868935400976792.Spec := by
  intro n
  simp only [A225605, Nat.add_sub_cancel]

end A225605

/-! ## A225605.P2770650886655455143

`A018921(n)+1`
-/

namespace A225605.P2770650886655455143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018921 n + 1

end

end A225605.P2770650886655455143

namespace A225605

/-- `A018921(n)+1` -/
def P2770650886655455143.Spec : Prop :=
  ∀ n, P2770650886655455143.a n = A225605 (n + 1)

end A225605

/-! ## A225605.P9332505145632128405

`A192804(n+5)`
-/

namespace A225605.P9332505145632128405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 (n + 5)

end

end A225605.P9332505145632128405

namespace A225605

/-- `A192804(n+5)` -/
def P9332505145632128405.Spec : Prop :=
  ∀ n, P9332505145632128405.a n = A225605 (n + 1)

end A225605

/-! ## A225605.P12105407097284642614

`Δ[A325473(n+5)]`
-/

namespace A225605.P12105407097284642614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325473 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225605.P12105407097284642614

namespace A225605

/-- `Δ[A325473(n+5)]` -/
def P12105407097284642614.Spec : Prop :=
  ∀ n, P12105407097284642614.a n = A225605 (n + 1)

end A225605

/-! ## A225605.P13421569216148169631

`A008937(n+3)+1`
-/

namespace A225605.P13421569216148169631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 (n + 3) + 1

end

end A225605.P13421569216148169631

namespace A225605

/-- `A008937(n+3)+1` -/
def P13421569216148169631.Spec : Prop :=
  ∀ n, P13421569216148169631.a n = A225605 (n + 1)

end A225605

/-! ## A225605.P9244855268970717691

`A027084(n+3)+2`
-/

namespace A225605.P9244855268970717691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027084 (n + 3) + 2

end

end A225605.P9244855268970717691

namespace A225605

/-- `A027084(n+3)+2` -/
def P9244855268970717691.Spec : Prop :=
  ∀ n, P9244855268970717691.a n = A225605 (n + 1)

end A225605

/-! ## A225605.P8656718995499019508

`A288465(n+3)/2`
-/

namespace A225605.P8656718995499019508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288465 (n + 3) : ℚ) / 2

end

end A225605.P8656718995499019508

namespace A225605

/-- `A288465(n+3)/2` -/
def P8656718995499019508.Spec : Prop :=
  ∀ n, P8656718995499019508.a n = (A225605 (n + 1) : ℚ)

end A225605

/-! ## A225605.P6750414921997356149

`Δ[A062544(n+2)]+1`
-/

namespace A225605.P6750414921997356149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062544 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A225605.P6750414921997356149

namespace A225605

/-- `Δ[A062544(n+2)]+1` -/
def P6750414921997356149.Spec : Prop :=
  ∀ n, P6750414921997356149.a n = A225605 (n + 1)

end A225605

/-! ## A225605.P6848273352102124057

`∑[A282718(n+2)]+2`
-/

namespace A225605.P6848273352102124057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282718 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A225605.P6848273352102124057

namespace A225605

/-- `∑[A282718(n+2)]+2` -/
def P6848273352102124057.Spec : Prop :=
  ∀ n, P6848273352102124057.a n = A225605 (n + 1)

end A225605

/-! ## A225605.P8046903293020085750

`Δ[A356619(n+1)]+2`
-/

namespace A225605.P8046903293020085750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A225605.P8046903293020085750

namespace A225605

/-- `Δ[A356619(n+1)]+2` -/
def P8046903293020085750.Spec : Prop :=
  ∀ n, P8046903293020085750.a n = A225605 (n + 1)

end A225605

/-! ## A225605.P822684685052452320

`Δ[A007800(n+3)]+1`
-/

namespace A225605.P822684685052452320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007800 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A225605.P822684685052452320

namespace A225605

/-- `Δ[A007800(n+3)]+1` -/
def P822684685052452320.Spec : Prop :=
  ∀ n, P822684685052452320.a n = A225605 (n + 1)

end A225605

/-! ## A225605.P5184229904215840635

`Δ[A221949(n+3)]+2`
-/

namespace A225605.P5184229904215840635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221949 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A225605.P5184229904215840635

namespace A225605

/-- `Δ[A221949(n+3)]+2` -/
def P5184229904215840635.Spec : Prop :=
  ∀ n, P5184229904215840635.a n = A225605 (n + 1)

end A225605

/-! ## A225605.P12097794657416182626

`∑[A000073(n+4)]+3`
-/

namespace A225605.P12097794657416182626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A225605.P12097794657416182626

namespace A225605

/-- `∑[A000073(n+4)]+3` -/
def P12097794657416182626.Spec : Prop :=
  ∀ n, P12097794657416182626.a n = A225605 (n + 1)

end A225605

/-! ## A225605.P5647849782986584965

`A027083(n+3)/2+2`
-/

namespace A225605.P5647849782986584965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027083 (n + 3) : ℚ) / 2 + 2

end

end A225605.P5647849782986584965

namespace A225605

/-- `A027083(n+3)/2+2` -/
def P5647849782986584965.Spec : Prop :=
  ∀ n, P5647849782986584965.a n = (A225605 (n + 1) : ℚ)

end A225605

/-! ## A225605.P13940300149408730958

`∑[A308189(2*n+3)]+3`
-/

namespace A225605.P13940300149408730958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308189 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A225605.P13940300149408730958

namespace A225605

/-- `∑[A308189(2*n+3)]+3` -/
def P13940300149408730958.Spec : Prop :=
  ∀ n, P13940300149408730958.a n = A225605 (n + 1)

end A225605

/-! ## A225605.P13849164581423115144

`A301787(n+1)-a(n-1)` with `a(0)=5`
-/

namespace A225605.P13849164581423115144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A301787 (n + 1) - a (n - 1)

end

end A225605.P13849164581423115144

namespace A225605

/-- `A301787(n+1)-a(n-1)` -/
def P13849164581423115144.Spec : Prop :=
  ∀ n, P13849164581423115144.a n = A225605 (n + 1)

end A225605

/-! ## A225605.P13560687317755167426

`A164398(n+3)-a(n-1)` with `a(0)=5`
-/

namespace A225605.P13560687317755167426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A164398 (n + 3) - a (n - 1)

end

end A225605.P13560687317755167426

namespace A225605

/-- `A164398(n+3)-a(n-1)` -/
def P13560687317755167426.Spec : Prop :=
  ∀ n, P13560687317755167426.a n = A225605 (n + 1)

end A225605

/-! ## A225605.P13648822143912876378

`A325473(n+3)+A007800(n+2)`
-/

namespace A225605.P13648822143912876378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325473 (n + 3) + A007800 (n + 2)

end

end A225605.P13648822143912876378

namespace A225605

/-- `A325473(n+3)+A007800(n+2)` -/
def P13648822143912876378.Spec : Prop :=
  ∀ n, P13648822143912876378.a n = A225605 (n + 1)

end A225605

/-! ## A225605.P5370390494753816058

`A268306(n+2)+A268306(n+4)`
-/

namespace A225605.P5370390494753816058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268306 (n + 2) + A268306 (n + 4)

end

end A225605.P5370390494753816058

namespace A225605

/-- `A268306(n+2)+A268306(n+4)` -/
def P5370390494753816058.Spec : Prop :=
  ∀ n, P5370390494753816058.a n = A225605 (n + 1)

end A225605

/-!
# A225606: Number of distinct lines passing through 3 or more points in an n X n grid.

The programs for A225606, there is no canonical definition to state claims against.
-/

/-! ## A225606.P9065673500015040978

`A018808(n)-A018809(n)`
-/

namespace A225606.P9065673500015040978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018808 n - A018809 n

end

end A225606.P9065673500015040978

/-! ## A225606.P15670612754417942428

`2*A331780(n)-A018809(n)`
-/

namespace A225606.P15670612754417942428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331780 n - A018809 n

end

end A225606.P15670612754417942428

/-! ## A225606.P6630789595938293096

`A119438(n)-(n²+1)-A018809(n)`
-/

namespace A225606.P6630789595938293096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119438 n - (n ^ 2 + 1 : ℤ) - A018809 n

end

end A225606.P6630789595938293096

/-! ## A225606.P1792679368608278913

`A119438(n)-(A018809(n)+A002522(n))`
-/

namespace A225606.P1792679368608278913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119438 n - (A018809 n + A002522 n)

end

end A225606.P1792679368608278913

/-! ## A225606.P17100257718638597531

`A018808(n)%A018809(A233583(n+1))`
-/

namespace A225606.P17100257718638597531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018808 n) (A018809 (A233583 (n + 1)).toNat)

end

end A225606.P17100257718638597531

/-! ## A225606.P7733526348323643575

`A295707(C(2*n, 2)-n+1)-A018809(n)`
-/

namespace A225606.P7733526348323643575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 ((Nat.choose (2 * n) 2 : ℤ) - (n : ℤ) + 1).toNat - A018809 n

end

end A225606.P7733526348323643575

/-!
# A225607: If the run lengths of the binary representation of n are [1+r_1, 1+r_2, 1+r_3, ..., 1+r_k], then those of a(n) are [1+(r_1), 1+(r_1 XOR r_2), 1+(r_2 XOR r_3), ..., 1+(r_{k-1} XOR r_k)], where XOR denotes the XOR binary operator.

The programs for A225607, there is no canonical definition to state claims against.
-/

/-! ## A225607.P3472213306619024225

`A227987(A227987(A227987(n+1)%A333035(n)))`
-/

namespace A225607.P3472213306619024225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227987 (A227987 (Int.tmod (A227987 (n + 1)) (A333035 n)).toNat).toNat

end

end A225607.P3472213306619024225

/-! ## A225607.P10275801164203731430

`A227987(A227987(A105726(A105726(A227987(n+1)))))`
-/

namespace A225607.P10275801164203731430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227987 (A227987 (A105726 (A105726 (A227987 (n + 1)).toNat).toNat).toNat).toNat

end

end A225607.P10275801164203731430

/-! ## A225607.P11447837979945425493

`A227987(A227987(A227987(A226532(A226569(n+1)))))`
-/

namespace A225607.P11447837979945425493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227987 (A227987 (A227987 (A226532 (A226569 (n + 1)).toNat).toNat).toNat).toNat

end

end A225607.P11447837979945425493

/-!
# A225608: The largest n-digit number whose first k digits are divisible by k.

The programs for A225608, there is no canonical definition to state claims against.
-/

/-! ## A225608.P14144467307679688138

`A083896(A005651(n))+A057933(n+1)`
-/

namespace A225608.P14144467307679688138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083896 (A005651 n).toNat + A057933 (n + 1)

end

end A225608.P14144467307679688138

/-! ## A225608.P11846803115809087053

`A083896(A005651(n))+A064617(n+1)`
-/

namespace A225608.P11846803115809087053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083896 (A005651 n).toNat + A064617 (n + 1)

end

end A225608.P11846803115809087053

/-! ## A225608.P1741463996151299503

`A057933(n+1)+A035172(A064600(n))`
-/

namespace A225608.P1741463996151299503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057933 (n + 1) + A035172 (A064600 n).toNat

end

end A225608.P1741463996151299503

/-!
# A225609: Recurrence a(n) = 2^n*a(n-1) + a(n-2) with a(0)=0, a(1)=1.

The programs for A225609, the canonical program `A225609.P10079233109961524455` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225609 has offset 0).

The definition of A225609 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*a(n-1)+a(n-2)` (program `A225609.P10079233109961524455`, by `A225609.P10079233109961524455.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A225609.P10079233109961524455

`2^n*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A225609

/-- `2^n*a(n-1)+a(n-2)` -/
def P10079233109961524455.Spec : Prop :=
  ∀ n, (P10079233109961524455.a n : ℤ) = A225609 n

theorem P10079233109961524455.correct : P10079233109961524455.Spec := by
  intro n
  simp only [A225609]

end A225609

/-! ## A225609.P5147697877921473001

`a(n-2)+a(n-1)*A000079(n)` with `a(0)=0, a(1)=1`
-/

namespace A225609.P5147697877921473001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (n - 1) * A000079 n

end

end A225609.P5147697877921473001

namespace A225609

/-- `a(n-2)+a(n-1)*A000079(n)` -/
def P5147697877921473001.Spec : Prop :=
  ∀ n, P5147697877921473001.a n = A225609 n

end A225609

/-! ## A225609.P5660232233189956048

`A061377(n+1)-A015473(n+1)`
-/

namespace A225609.P5660232233189956048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061377 (n + 1) - A015473 (n + 1)

end

end A225609.P5660232233189956048

namespace A225609

/-- `A061377(n+1)-A015473(n+1)` -/
def P5660232233189956048.Spec : Prop :=
  ∀ n, P5660232233189956048.a n = A225609 n

end A225609

/-! ## A225609.P1358896955404386881

`A061377(A000027(n+1))%A015473(n+1)`
-/

namespace A225609.P1358896955404386881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061377 (A000027 (n + 1)).toNat) (A015473 (n + 1))

end

end A225609.P1358896955404386881

namespace A225609

/-- `A061377(A000027(n+1))%A015473(n+1)` -/
def P1358896955404386881.Spec : Prop :=
  ∀ n, P1358896955404386881.a n = A225609 n

end A225609

/-! ## A225609.P6124279947641948877

`A061377(n+1)%A015473(A000005(2^n))`
-/

namespace A225609.P6124279947641948877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061377 (n + 1)) (A015473 (A000005 (2 ^ n)).toNat)

end

end A225609.P6124279947641948877

namespace A225609

/-- `A061377(n+1)%A015473(A000005(2^n))` -/
def P6124279947641948877.Spec : Prop :=
  ∀ n, P6124279947641948877.a n = A225609 n

end A225609

/-!
# A225610: Total number of parts in all partitions of n plus the sum of largest parts in all partitions of n plus the number of partitions of n plus n.

The programs for A225610, there is no canonical definition to state claims against.
-/

/-! ## A225610.P10890303942524511963

`A093694(n)+A225596(n)`
-/

namespace A225610.P10890303942524511963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n + A225596 n

end

end A225610.P10890303942524511963

/-! ## A225610.P660875763871123747

`A211978(n)+A133041(n)`
-/

namespace A225610.P660875763871123747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211978 n + A133041 n

end

end A225610.P660875763871123747

/-! ## A225610.P1170280429395682174

`A093694(n)+A006128(n)+n`
-/

namespace A225610.P1170280429395682174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n + A006128 n + (n : ℤ)

end

end A225610.P1170280429395682174

/-! ## A225610.P14777342817452603265

`2*A006128(n)+A000041(n)+n`
-/

namespace A225610.P14777342817452603265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006128 n + A000041 n + (n : ℤ)

end

end A225610.P14777342817452603265

/-! ## A225610.P16745021892768253169

`A133041(n)+2*A006128(n)`
-/

namespace A225610.P16745021892768253169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n + 2 * A006128 n

end

end A225610.P16745021892768253169

/-! ## A225610.P12704523410262409110

`A000041(n)+A211978(n)+n`
-/

namespace A225610.P12704523410262409110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A211978 n + (n : ℤ))

end

end A225610.P12704523410262409110

/-! ## A225610.P17455033800958618776

`A211978(n)/2+A093694(n)+n`
-/

namespace A225610.P17455033800958618776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211978 n : ℚ) / 2 + (A093694 n + (n : ℤ) : ℚ)

end

end A225610.P17455033800958618776

/-! ## A225610.P15964299755272847415

`A000041(n)+A225596(n)+A006128(n)`
-/

namespace A225610.P15964299755272847415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A225596 n + A006128 n)

end

end A225610.P15964299755272847415

/-! ## A225610.P12027060699305185504

`A006128(n)+Δ[A339011(n)]+n`
-/

namespace A225610.P12027060699305185504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n + (f1 (n + 1) - f1 n + (n : ℤ))

end

end A225610.P12027060699305185504

/-! ## A225610.P2968779683663009567

`A093694(n)+A256010(n)/A006370(A004277(n))+n`
-/

namespace A225610.P2968779683663009567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093694 n : ℚ) + ((A256010 n : ℚ) / (A006370 (A004277 n).toNat : ℚ) + (n : ℚ))

end

end A225610.P2968779683663009567

/-! ## A225610.P12782266336069707788

`A093694(n)+A093694(n)-(A332284(n)+A332283(n))+n`
-/

namespace A225610.P12782266336069707788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n + (A093694 n - (A332284 n + A332283 n) + (n : ℤ))

end

end A225610.P12782266336069707788

/-!
# A225612: Partial sums of the binomial coefficients C(4*n,n).

The programs for A225612, the canonical program `A225612.P6133763593902213281` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225612 has offset 0).

The definition of A225612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225612.P6133763593902213281

`∑[A005810(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A225612

/-- `∑[A005810(n)]` -/
def P6133763593902213281.Spec : Prop :=
  ∀ n, P6133763593902213281.a n = A225612 n

theorem P6133763593902213281.correct : P6133763593902213281.Spec := by
  intro n
  simp only [A225612]

end A225612

/-! ## A225612.P15372241873348392630

`∑[A119304(∑[n])]`
-/

namespace A225612.P15372241873348392630
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119304 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225612.P15372241873348392630

namespace A225612

/-- `∑[A119304(∑[n])]` -/
def P15372241873348392630.Spec : Prop :=
  ∀ n, P15372241873348392630.a n = A225612 n

end A225612

/-! ## A225612.P14456966185452724651

`∑[A264773(∑[n])]`
-/

namespace A225612.P14456966185452724651
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264773 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225612.P14456966185452724651

namespace A225612

/-- `∑[A264773(∑[n])]` -/
def P14456966185452724651.Spec : Prop :=
  ∀ n, P14456966185452724651.a n = A225612 n

end A225612

/-! ## A225612.P18426825584616617689

`∑[A051036(4*n)]`
-/

namespace A225612.P18426825584616617689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051036 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225612.P18426825584616617689

namespace A225612

/-- `∑[A051036(4*n)]` -/
def P18426825584616617689.Spec : Prop :=
  ∀ n, P18426825584616617689.a n = A225612 n

end A225612

/-! ## A225612.P13764986809901008255

`4*A024720(n)-3`
-/

namespace A225612.P13764986809901008255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A024720 n - 3

end

end A225612.P13764986809901008255

namespace A225612

/-- `4*A024720(n)-3` -/
def P13764986809901008255.Spec : Prop :=
  ∀ n, P13764986809901008255.a n = A225612 n

end A225612

/-! ## A225612.P7569549438884379440

`∑[(3*n+1)*A002293(n)]`
-/

namespace A225612.P7569549438884379440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A002293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225612.P7569549438884379440

namespace A225612

/-- `∑[(3*n+1)*A002293(n)]` -/
def P7569549438884379440.Spec : Prop :=
  ∀ n, P7569549438884379440.a n = A225612 n

end A225612

/-! ## A225612.P796143146569188646

`∑[A002293(n)*A016777(n)]`
-/

namespace A225612.P796143146569188646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n * A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225612.P796143146569188646

namespace A225612

/-- `∑[A002293(n)*A016777(n)]` -/
def P796143146569188646.Spec : Prop :=
  ∀ n, P796143146569188646.a n = A225612 n

end A225612

/-! ## A225612.P3112260719689606362

`∑[record[A000034(n)*A208983(n)]]`
-/

namespace A225612.P3112260719689606362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A208983 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225612.P3112260719689606362

namespace A225612

/-- `∑[record[A000034(n)*A208983(n)]]` -/
def P3112260719689606362.Spec : Prop :=
  ∀ n, P3112260719689606362.a n = A225612 n

end A225612

/-! ## A225612.P17024271288718818512

`∑[2*A227995(n)]-A227995(n)`
-/

namespace A225612.P17024271288718818512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A227995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A227995 n

end

end A225612.P17024271288718818512

namespace A225612

/-- `∑[2*A227995(n)]-A227995(n)` -/
def P17024271288718818512.Spec : Prop :=
  ∀ n, P17024271288718818512.a n = A225612 n

end A225612

/-! ## A225612.P14231038343539040314

`∑[A002293(n)*A008619(A008458(n))]`
-/

namespace A225612.P14231038343539040314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n * A008619 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225612.P14231038343539040314

namespace A225612

/-- `∑[A002293(n)*A008619(A008458(n))]` -/
def P14231038343539040314.Spec : Prop :=
  ∀ n, P14231038343539040314.a n = A225612 n

end A225612

/-! ## A225612.P1161086958767028619

`∑[A016777(n)*A243663(A152947(n+1))]`
-/

namespace A225612.P1161086958767028619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n * A243663 (A152947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225612.P1161086958767028619

namespace A225612

/-- `∑[A016777(n)*A243663(A152947(n+1))]` -/
def P1161086958767028619.Spec : Prop :=
  ∀ n, P1161086958767028619.a n = A225612 n

end A225612

/-!
# A225613: The largest n-digit number whose first k digits are divisible by the k-th prime for k = 1..n.

The programs for A225613, there is no canonical definition to state claims against.
-/

/-! ## A225613.P590185748034507316

`A079206(∑[A143867(n+1)])`
-/

namespace A225613.P590185748034507316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079206 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225613.P590185748034507316

/-!
# A225615: Partial sums of the binomial coefficients C(5*n,n).

The programs for A225615, there is no canonical definition to state claims against.
-/

/-! ## A225615.P13113428276617982267

`∑[A001449(n)]`
-/

namespace A225615.P13113428276617982267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225615.P13113428276617982267

/-! ## A225615.P1808669683443078768

`∑[A051052(5*n)]`
-/

namespace A225615.P1808669683443078768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051052 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225615.P1808669683443078768

/-! ## A225615.P8193324923187709632

`5*A024721(n)-4`
-/

namespace A225615.P8193324923187709632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A024721 n - 4

end

end A225615.P8193324923187709632

/-! ## A225615.P1734363799670647221

`∑[A002294(n)*(4*n+1)]`
-/

namespace A225615.P1734363799670647221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 n * (4 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225615.P1734363799670647221

/-! ## A225615.P15975043873109544732

`∑[Δ[A000384(n)]*A002294(n)]`
-/

namespace A225615.P15975043873109544732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A002294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225615.P15975043873109544732

/-! ## A225615.P10034676538290140196

`∑[record[A009001(n)]*A002294(n)]`
-/

namespace A225615.P10034676538290140196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A002294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225615.P10034676538290140196

/-! ## A225615.P2467299066233198596

`∑[(A008586(n)+1)*A002294(n)]`
-/

namespace A225615.P2467299066233198596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008586 n + 1) * A002294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225615.P2467299066233198596

/-! ## A225615.P17343844436253047208

`∑[2*A227996(n)]-A227996(n)`
-/

namespace A225615.P17343844436253047208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A227996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A227996 n

end

end A225615.P17343844436253047208

/-! ## A225615.P15910149625178494915

`∑[C(5*n, n)]`
-/

namespace A225615.P15910149625178494915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (5 * n) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225615.P15910149625178494915

/-! ## A225615.P5051679791910184658

`a(n-1)+C(5*n, n)` with `a(0)=1`
-/

namespace A225615.P5051679791910184658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (5 * n) n

end

end A225615.P5051679791910184658

/-!
# A225617: Number of (strict) inversions in all standard Young tableaux of size n.

The programs for A225617, there is no canonical definition to state claims against.
-/

/-! ## A225617.P7395244562260817490

`∑[A343609(∑[A054894(n+1)])]`
-/

namespace A225617.P7395244562260817490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054894 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225617.P7395244562260817490

/-! ## A225617.P932266345286708348

`A036592(2*n)-A120401(A346076(2*n+1))`
-/

namespace A225617.P932266345286708348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036592 (2 * n) - A120401 (A346076 (2 * n + 1)).toNat

end

end A225617.P932266345286708348

/-!
# A225618: Number of weak inversions in all standard Young tableaux of size n.

The programs for A225618, there is no canonical definition to state claims against.
-/

/-! ## A225618.P14903862662271955581

`A132270(4*A081704(n))`
-/

namespace A225618.P14903862662271955581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (4 * A081704 n).toNat

end

end A225618.P14903862662271955581

/-! ## A225618.P16996283242265098779

`∑[∑[A230980(A155626(n))]]`
-/

namespace A225618.P16996283242265098779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A155626 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225618.P16996283242265098779

/-!
# A225620: Indices of partitions in the table of compositions of A228351.

The programs for A225620, there is no canonical definition to state claims against.
-/

/-! ## A225620.P11324380270375020598

`record[A030109(A161821(n+1))]`
-/

namespace A225620.P11324380270375020598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A161821 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225620.P11324380270375020598

/-! ## A225620.P3392620240961194733

`lt[n, 2*gcd(n, A233569(n))]`
-/

namespace A225620.P3392620240961194733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd (n : ℤ) (A233569 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225620.P3392620240961194733

/-! ## A225620.P11337477341516542205

`eq[n, A233569(abs(1-n)+1)]`
-/

namespace A225620.P11337477341516542205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233569 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225620.P11337477341516542205

/-! ## A225620.P16068942194636718146

`record[gcd(n+1, A233569(n+1))]`
-/

namespace A225620.P16068942194636718146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A233569 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225620.P16068942194636718146

/-! ## A225620.P7368706835160872276

`eq[n+1, A233569(C(n+1, n))]+1`
-/

namespace A225620.P7368706835160872276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233569 (Nat.choose (n + 1) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A225620.P7368706835160872276

/-! ## A225620.P7214845995725486731

`eq[n, A028310(A233569(n))]`
-/

namespace A225620.P7214845995725486731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A233569 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225620.P7214845995725486731

/-! ## A225620.P18264823851294681506

`record[A004277(n)-A233569(n)]`
-/

namespace A225620.P18264823851294681506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A233569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225620.P18264823851294681506

/-! ## A225620.P14948568556150129463

`record[A005843(n+1)-A233569(n+1)]`
-/

namespace A225620.P14948568556150129463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) - A233569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225620.P14948568556150129463

/-! ## A225620.P12980968157687591640

`eq[A233569(n)-n, A000010(n+2)%2]`
-/

namespace A225620.P12980968157687591640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233569 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225620.P12980968157687591640

/-! ## A225620.P13838171206449843517

`∩[A004744(n+1), A329399(n+1)]`
-/

namespace A225620.P13838171206449843517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225620.P13838171206449843517

/-!
# A225621: Central terms of the triangle in A074911.

The programs for A225621, there is no canonical definition to state claims against.
-/

/-! ## A225621.P5472774677302752543

`A074911(∑[4*n]+1)`
-/

namespace A225621.P5472774677302752543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074911 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A225621.P5472774677302752543

/-! ## A225621.P16235934211203833929

`lcm(gcd(2, ∏{p}[n, #]), A074911(n²+(n+1)²))`
-/

namespace A225621.P16235934211203833929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ) (A074911 (n ^ 2 + (n + 1) ^ 2))

end

end A225621.P16235934211203833929

/-! ## A225621.P6983756654760242993

`record[A003982(n)*A074911(n+1)]`
-/

namespace A225621.P6983756654760242993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A074911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225621.P6983756654760242993

/-! ## A225621.P11751924677214009693

`A074911(A001844(n))+A011655(3*n)`
-/

namespace A225621.P11751924677214009693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074911 (A001844 n).toNat + A011655 (3 * n)

end

end A225621.P11751924677214009693

/-! ## A225621.P794453334067695929

`A074911(A001844(n))%A090160(n+2)`
-/

namespace A225621.P794453334067695929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074911 (A001844 n).toNat) (A090160 (n + 2))

end

end A225621.P794453334067695929

/-!
# A225622: A(n,k) is the total number of parts in the set of partitions of an n X k rectangle into integer-sided squares, considering only the list of parts; square array A(n,k), n>=1, k>=1, read by antidiagonals.

The programs for A225622, there is no canonical definition to state claims against.
-/

/-! ## A225622.P14013615545236509209

`A073188(A090107(A267644(n+1)))`
-/

namespace A225622.P14013615545236509209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A090107 (A267644 (n + 1)).toNat).toNat

end

end A225622.P14013615545236509209

/-! ## A225622.P17758693886958088982

`A260999(A206994(n+1))+A004247(n)`
-/

namespace A225622.P17758693886958088982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A206994 (n + 1)).toNat + A004247 n

end

end A225622.P17758693886958088982

/-! ## A225622.P12957868772989373424

`A298888(n+1)+A154402(A189398(3*n+4))`
-/

namespace A225622.P12957868772989373424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298888 (n + 1) + A154402 (A189398 (3 * n + 4)).toNat

end

end A225622.P12957868772989373424

/-! ## A225622.P18225705372217238756

`A073188(A267644(n+1))%A302278(A000124(n+6)-6)`
-/

namespace A225622.P18225705372217238756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073188 (A267644 (n + 1)).toNat) (A302278 (A000124 (n + 6) - 6).toNat)

end

end A225622.P18225705372217238756

/-! ## A225622.P7167131671802953898

`A062362(A223202(n+1))`
-/

namespace A225622.P7167131671802953898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062362 (A223202 (n + 1)).toNat

end

end A225622.P7167131671802953898

/-!
# A225623: Number of ways to arrange 2n queens on an n X n chessboard, with no more than 2 queens in each row, column or diagonal.

The programs for A225623, there is no canonical definition to state claims against.
-/

/-! ## A225623.P3243811715064366545

`A110532(A168658(n)+n)`
-/

namespace A225623.P3243811715064366545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110532 (A168658 n + (n : ℤ)).toNat

end

end A225623.P3243811715064366545

/-! ## A225623.P811128700670488897

`or(A117539(2*n+3)%(n+1), A111811(n))`
-/

namespace A225623.P811128700670488897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A117539 (2 * n + 3)) (n + 1 : ℤ)) (A111811 n)

end

end A225623.P811128700670488897

/-!
# A225624: Triangle read by rows: T(n,k) is the number of descent sequences of length n with exactly k-1 descents, n>=1, 1<=k<=n.

The programs for A225624, there is no canonical definition to state claims against.
-/

/-! ## A225624.P7742263194588621095

`A348030(A002033(n))+A258198(2*A238396(n))`
-/

namespace A225624.P7742263194588621095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348030 (A002033 n).toNat + A258198 (2 * A238396 n).toNat

end

end A225624.P7742263194588621095

/-! ## A225624.P10136414939055806710

`C(A094727(n+1), A103054(A336574(n)))`
-/

namespace A225624.P10136414939055806710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A094727 (n + 1)).toNat (A103054 (A336574 n).toNat).toNat

end

end A225624.P10136414939055806710

/-! ## A225624.P17526324940226009761

`C(A053735(A221672(n+1)), A133819(n+1))`
-/

namespace A225624.P17526324940226009761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053735 (A221672 (n + 1)).toNat).toNat (A133819 (n + 1)).toNat

end

end A225624.P17526324940226009761

/-!
# A225625: Primes of the form floor(log(p)) + p^2, where p is prime.

The programs for A225625, there is no canonical definition to state claims against.
-/

/-! ## A225625.P1239828396329822275

`A007491(A225626(n+1))`
-/

namespace A225625.P1239828396329822275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (A225626 (n + 1)).toNat

end

end A225625.P1239828396329822275

/-! ## A225625.P11138747593819272718

`p?[A029832(n+1)+A005563(n)]`
-/

namespace A225625.P11138747593819272718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029832 (n + 1) + A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225625.P11138747593819272718

/-! ## A225625.P11789647435763597807

`p?[A029835(n+1)+A001248(n+1)]`
-/

namespace A225625.P11789647435763597807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029835 (n + 1) + A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225625.P11789647435763597807

/-! ## A225625.P970128127716003640

`p?[A064549(n+1)+A029834(n+1)]`
-/

namespace A225625.P970128127716003640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1) + A029834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225625.P970128127716003640

/-! ## A225625.P11115375971892499724

`p?[A065642(n+1)+A029834(n+1)]`
-/

namespace A225625.P11115375971892499724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (n + 1) + A029834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225625.P11115375971892499724

/-!
# A225626: Primes p such that floor(log(p)) + p^2 is prime.

The programs for A225626, there is no canonical definition to state claims against.
-/

/-! ## A225626.P6012445965785842767

`floor(sqrt(A225625(n+1)))`
-/

namespace A225626.P6012445965785842767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A225625 (n + 1))

end

end A225626.P6012445965785842767

/-! ## A225626.P15516315822024606701

`round(sqrt(A225625(n+1)))+A000038(n)%2`
-/

namespace A225626.P15516315822024606701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A225625 (n + 1) : ℝ)) + Int.tmod (A000038 n) 2

end

end A225626.P15516315822024606701

/-! ## A225626.P6950977917609657180

`A000265(round(sqrt(A225625(n+1))))`
-/

namespace A225626.P6950977917609657180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway (Real.sqrt (A225625 (n + 1) : ℝ))).toNat

end

end A225626.P6950977917609657180

/-! ## A225626.P6520333646489396423

`A006530(round(sqrt(A225625(n+1))))`
-/

namespace A225626.P6520333646489396423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A225625 (n + 1) : ℝ))).toNat

end

end A225626.P6520333646489396423

/-! ## A225626.P8258128236371099926

`A020639(round(sqrt(A225625(n+1))))`
-/

namespace A225626.P8258128236371099926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A225625 (n + 1) : ℝ))).toNat

end

end A225626.P8258128236371099926

/-! ## A225626.P13783799409259873118

`A020639(ceil(sqrt(A225625(n+1)))-1)`
-/

namespace A225626.P13783799409259873118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (⌈Real.sqrt (A225625 (n + 1) : ℝ)⌉ - 1).toNat

end

end A225626.P13783799409259873118

/-!
# A225627: a(n) = lcm(A000793(n),p1,p2,...,pk) for such a partition {p1+p2+...+pk} of n that maximizes this value among all partitions of n.

The programs for A225627, there is no canonical definition to state claims against.
-/

/-! ## A225627.P16267754425560839177

`A225636(n)*A000793(n)`
-/

namespace A225627.P16267754425560839177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225636 n * A000793 n

end

end A225627.P16267754425560839177

/-! ## A225627.P13316600946382149881

`A000142(n)/A074115(n)*A225636(n)`
-/

namespace A225627.P13316600946382149881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A074115 n : ℚ) * (A225636 n : ℚ)

end

end A225627.P13316600946382149881

/-! ## A225627.P18355472169335628963

`A003418(n)/A225558(n)*A225636(n)`
-/

namespace A225627.P18355472169335628963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A225558 n : ℚ) * (A225636 n : ℚ)

end

end A225627.P18355472169335628963

/-! ## A225627.P9233394961357649526

`A225636(n)*A256553(∑[A009490(n)]-1)`
-/

namespace A225627.P9233394961357649526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225636 n * A256553 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A225627.P9233394961357649526

/-! ## A225627.P1898359189932320804

`(A075059(n)-1)/A225558(n)*A225636(n)`
-/

namespace A225627.P1898359189932320804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075059 n - 1 : ℚ) / (A225558 n : ℚ) * (A225636 n : ℚ)

end

end A225627.P1898359189932320804

/-!
# A225628: a(n) = lcm(A225627(n),p1,p2,...,pk) for such a partition {p1+p2+...+pk} of n which maximizes this value among all partitions of n.

The programs for A225628, there is no canonical definition to state claims against.
-/

/-! ## A225628.P14741534180939642582

`gcd(A003418(n), A123108(28*30*n))`
-/

namespace A225628.P14741534180939642582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 n) (A123108 (28 * (30 * n)))

end

end A225628.P14741534180939642582

/-! ## A225628.P4973748115912783613

`gcd(A001106(A169827(n)), A003418(n))`
-/

namespace A225628.P4973748115912783613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001106 (A169827 n).toNat) (A003418 n)

end

end A225628.P4973748115912783613

/-! ## A225628.P6845202784466061709

`A003418(n)/A060131(A324090(n+1))`
-/

namespace A225628.P6845202784466061709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A060131 (A324090 (n + 1)).toNat : ℚ)

end

end A225628.P6845202784466061709

/-! ## A225628.P11873239162752377187

`A003418(n)/A060131(A324098(n+1))`
-/

namespace A225628.P11873239162752377187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A060131 (A324098 (n + 1)).toNat : ℚ)

end

end A225628.P11873239162752377187

/-! ## A225628.P12449500369977446125

`gcd(1-A075059(n), A055998(A169827(n)))`
-/

namespace A225628.P12449500369977446125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A075059 n) (A055998 (A169827 n).toNat)

end

end A225628.P12449500369977446125

/-!
# A225629: a(n) = Last value in column n of A225630 which is not yet the fixed point A003418(n) of that column.

The programs for A225629, there is no canonical definition to state claims against.
-/

/-! ## A225629.P9091775623974032069

`A003418(n)/A225637(n)`
-/

namespace A225629.P9091775623974032069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A225637 n : ℚ)

end

end A225629.P9091775623974032069

/-! ## A225629.P4658779598378530191

`(A075059(n)-1)/A225637(n)`
-/

namespace A225629.P4658779598378530191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075059 n - 1 : ℚ) / (A225637 n : ℚ)

end

end A225629.P4658779598378530191

/-! ## A225629.P1689294771989810304

`A139550(2*n)/A225637(n)`
-/

namespace A225629.P1689294771989810304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139550 (2 * n) : ℚ) / (A225637 n : ℚ)

end

end A225629.P1689294771989810304

/-! ## A225629.P4954136434937070432

`A120108(C(n, 2))/A225637(n)`
-/

namespace A225629.P4954136434937070432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120108 (Nat.choose n 2) : ℚ) / (A225637 n : ℚ)

end

end A225629.P4954136434937070432

/-! ## A225629.P3774810453619556406

`A120108(∑[n]-n)/A225637(n)`
-/

namespace A225629.P3774810453619556406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120108 (∑ j ∈ Finset.range (n + 1), f1 j - n) : ℚ) / (A225637 n : ℚ)

end

end A225629.P3774810453619556406

/-!
# A225630: Array of iterated Landau-like functions, starting maximization of LCM from the partition {1+1+...+1} of n, read downwards antidiagonals.

The programs for A225630, there is no canonical definition to state claims against.
-/

/-! ## A225630.P13832337839532515377

`A225631(∑[2*n]%comp[∑[n]])`
-/

namespace A225630.P13832337839532515377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225631 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A225630.P13832337839532515377

/-! ## A225630.P16707711391693877074

`A225631(∑[char[∑[n]]]²-n-1)`
-/

namespace A225630.P16707711391693877074
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225631 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A225630.P16707711391693877074

/-! ## A225630.P3875606449566019043

`A225631(A061579(n))+and(1, 2*n)`
-/

namespace A225630.P3875606449566019043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225631 (A061579 n).toNat + (Nat.land 1 (2 * n) : ℤ)

end

end A225630.P3875606449566019043

/-! ## A225630.P16747231106035241339

`A225631(A061579(n))%A038665(n)`
-/

namespace A225630.P16747231106035241339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225631 (A061579 n).toNat) (A038665 n)

end

end A225630.P16747231106035241339

/-! ## A225630.P7493216568812401164

`gcd(A298562(n)!, A225631(A061579(n)))`
-/

namespace A225630.P7493216568812401164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A298562 n).toNat : ℤ) (A225631 (A061579 n).toNat)

end

end A225630.P7493216568812401164

/-! ## A225630.P15887695053071707327

`A001511(2*n+1)*A225631(A061579(n))`
-/

namespace A225630.P15887695053071707327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A225631 (A061579 n).toNat

end

end A225630.P15887695053071707327

/-! ## A225630.P11462194002296317259

`A173441(A173441(n+1))*A225631(A061579(n))`
-/

namespace A225630.P11462194002296317259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173441 (A173441 (n + 1)).toNat * A225631 (A061579 n).toNat

end

end A225630.P11462194002296317259

/-! ## A225630.P3780744789998930259

`A154402(A340346(3*n+1))*A225631(A061579(n))`
-/

namespace A225630.P3780744789998930259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (A340346 (3 * n + 1)).toNat * A225631 (A061579 n).toNat

end

end A225630.P3780744789998930259

/-!
# A225631: Transpose of A225630.

The programs for A225631, there is no canonical definition to state claims against.
-/

/-! ## A225631.P4855630959366368699

`A225630(∑[2*n]%comp[∑[n]])`
-/

namespace A225631.P4855630959366368699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225630 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A225631.P4855630959366368699

/-! ## A225631.P16828108640543204249

`A225630(∑[char[∑[n]]]²-(n+1))`
-/

namespace A225631.P16828108640543204249
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225630 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A225631.P16828108640543204249

/-! ## A225631.P18363987603450323787

`A225630(A061579(n))%(∑[n+1]+1)`
-/

namespace A225631.P18363987603450323787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225630 (A061579 n).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A225631.P18363987603450323787

/-! ## A225631.P8198909488035682556

`A225630(A061579(n))^A178334(n)`
-/

namespace A225631.P8198909488035682556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225630 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A225631.P8198909488035682556

/-! ## A225631.P6504654758384559618

`lcm(A033999(n), A225630(A061579(n)))`
-/

namespace A225631.P6504654758384559618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A225630 (A061579 n).toNat)

end

end A225631.P6504654758384559618

/-! ## A225631.P8385437130527766944

`C(A225630(A061579(n)), A178334(n+1))`
-/

namespace A225631.P8385437130527766944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A225630 (A061579 n).toNat).toNat (A178334 (n + 1)).toNat

end

end A225631.P8385437130527766944

/-! ## A225631.P12101670896319806472

`A225630(A061579(n))+char[A364173(n+1)]`
-/

namespace A225631.P12101670896319806472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364173 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225630 (A061579 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A225631.P12101670896319806472

/-! ## A225631.P8494564837888749887

`A225630(A061579(n))/A051904(A015914(n+1))`
-/

namespace A225631.P8494564837888749887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225630 (A061579 n).toNat : ℚ) / (A051904 (A015914 (n + 1)).toNat : ℚ)

end

end A225631.P8494564837888749887

/-!
# A225633: Number of steps to reach a fixed point (A003418(n)), when starting from partition {1+1+1+...+1} of n and continuing with the process described in A225632.

The programs for A225633, there is no canonical definition to state claims against.
-/

/-! ## A225633.P888096222479850592

`A225634(n)-1`
-/

namespace A225633.P888096222479850592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225634 n - 1

end

end A225633.P888096222479850592

/-! ## A225633.P12591236278837334613

`A225654(n)+A225643(n)`
-/

namespace A225633.P12591236278837334613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225654 n + A225643 n

end

end A225633.P12591236278837334613

/-! ## A225633.P1687403704274025815

`A225644(n)+A225654(n)-1`
-/

namespace A225633.P1687403704274025815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 n + (A225654 n - 1)

end

end A225633.P1687403704274025815

/-! ## A225633.P483834552008586399

`A225638(n)+A226056(n)-1`
-/

namespace A225633.P483834552008586399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225638 n + (A226056 n - 1)

end

end A225633.P483834552008586399

/-! ## A225633.P6422719867012191961

`A002837(A225654(n)+A225644(n))`
-/

namespace A225633.P6422719867012191961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A225654 n + A225644 n).toNat

end

end A225633.P6422719867012191961

/-! ## A225633.P1074406786580518673

`A002837(A226056(n)+A225638(n))`
-/

namespace A225633.P1074406786580518673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A226056 n + A225638 n).toNat

end

end A225633.P1074406786580518673

/-! ## A225633.P7291126649147536228

`A004830(A225654(n)+A225644(n))`
-/

namespace A225633.P7291126649147536228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004830 (A225654 n + A225644 n).toNat

end

end A225633.P7291126649147536228

/-! ## A225633.P7194065093169079869

`A004830(A226056(n)+A225638(n))`
-/

namespace A225633.P7194065093169079869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004830 (A226056 n + A225638 n).toNat

end

end A225633.P7194065093169079869

/-! ## A225633.P1894337202961721480

`A008554(A225654(n)+A225644(n))`
-/

namespace A225633.P1894337202961721480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008554 (A225654 n + A225644 n).toNat

end

end A225633.P1894337202961721480

/-! ## A225633.P3512363214988849642

`A008554(A226056(n)+A225638(n))`
-/

namespace A225633.P3512363214988849642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008554 (A226056 n + A225638 n).toNat

end

end A225633.P3512363214988849642

/-!
# A225634: a(n) = Number of distinct values in column n of A225630.

The programs for A225634, there is no canonical definition to state claims against.
-/

/-! ## A225634.P10559595491825225993

`A225633(n)+1`
-/

namespace A225634.P10559595491825225993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225633 n + 1

end

end A225634.P10559595491825225993

/-! ## A225634.P17386118676548500839

`A225638(n)+A226056(n)`
-/

namespace A225634.P17386118676548500839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225638 n + A226056 n

end

end A225634.P17386118676548500839

/-! ## A225634.P17107028593605598860

`A005496(A225633(n))`
-/

namespace A225634.P17107028593605598860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A225633 n).toNat

end

end A225634.P17107028593605598860

/-! ## A225634.P12569958793687688491

`A260056(A225633(n)²)`
-/

namespace A225634.P12569958793687688491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260056 (A225633 n ^ 2).toNat

end

end A225634.P12569958793687688491

/-! ## A225634.P11702269267669200542

`A264766(A225633(n)²)`
-/

namespace A225634.P11702269267669200542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264766 (A225633 n ^ 2).toNat

end

end A225634.P11702269267669200542

/-! ## A225634.P12468346976915063709

`A008619(2*A225633(n))`
-/

namespace A225634.P12468346976915063709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A225633 n).toNat

end

end A225634.P12468346976915063709

/-! ## A225634.P206580501203685353

`A008612(6*A225633(n))`
-/

namespace A225634.P206580501203685353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A225633 n).toNat

end

end A225634.P206580501203685353

/-! ## A225634.P15228319703247544185

`A000005(2^A225633(n))`
-/

namespace A225634.P15228319703247544185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A225633 n : ℤ))).toNat

end

end A225634.P15228319703247544185

/-! ## A225634.P13748266221190919339

`A001511(2^A225633(n))`
-/

namespace A225634.P13748266221190919339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A225633 n : ℤ))).toNat

end

end A225634.P13748266221190919339

/-! ## A225634.P933366738268650858

`A002377(xor(16, A225633(n)))`
-/

namespace A225634.P933366738268650858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (Int.xor 16 (A225633 n)).toNat

end

end A225634.P933366738268650858

/-!
# A225635: Partial sums of A225634.

The programs for A225635, there is no canonical definition to state claims against.
-/

/-! ## A225635.P10202265793619210347

`∑[A225634(n)]`
-/

namespace A225635.P10202265793619210347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225635.P10202265793619210347

/-! ## A225635.P2745614129764253953

`∑[A225633(n)+1]`
-/

namespace A225635.P2745614129764253953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225633 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225635.P2745614129764253953

/-! ## A225635.P16692100922441472103

`record[2-A225632(n+1)+n]`
-/

namespace A225635.P16692100922441472103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A225632 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225635.P16692100922441472103

/-! ## A225635.P10281856243502557928

`∑[A005496(A225633(n))]`
-/

namespace A225635.P10281856243502557928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A225633 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225635.P10281856243502557928

/-! ## A225635.P6698549544276157267

`∑[A260056(A225633(n)²)]`
-/

namespace A225635.P6698549544276157267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260056 (A225633 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225635.P6698549544276157267

/-! ## A225635.P12284842005256610298

`∑[A264766(A225633(n)²)]`
-/

namespace A225635.P12284842005256610298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264766 (A225633 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225635.P12284842005256610298

/-! ## A225635.P9825939260698280869

`∑[A000005(2^A225633(n))]`
-/

namespace A225635.P9825939260698280869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A225633 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225635.P9825939260698280869

/-! ## A225635.P12318917081671113002

`∑[A001222(2*2^A225633(n))]`
-/

namespace A225635.P12318917081671113002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 * (2 : ℚ) ^ (A225633 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225635.P12318917081671113002

/-! ## A225635.P4721751646289742578

`∑[A001222(lcm(3, 2^A225633(n)))]`
-/

namespace A225635.P4721751646289742578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 3 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A225633 n : ℤ))))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225635.P4721751646289742578

/-! ## A225635.P3421545476363014683

`a(n-1)+A001222(2^A225633(n))+1` with `a(0)=1`
-/

namespace A225635.P3421545476363014683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A225633 n : ℤ))).toNat + 1)

end

end A225635.P3421545476363014683

/-!
# A225636: a(n) = A225627(n)/A000793(n).

The programs for A225636, there is no canonical definition to state claims against.
-/

/-! ## A225636.P9761670022950348595

`A225627(n)/A000793(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A225636.P9761670022950348595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225627 n : ℚ) / (A000793 n : ℚ)

end

end A225636.P9761670022950348595

/-! ## A225636.P10338486363798408943

`A074115(n)/A000142(n)*A225627(n)`
-/

namespace A225636.P10338486363798408943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074115 n : ℚ) / (A000142 n : ℚ) * (A225627 n : ℚ)

end

end A225636.P10338486363798408943

/-! ## A225636.P2206251638553958254

`A225558(n)/A003418(n)*A225627(n)`
-/

namespace A225636.P2206251638553958254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225558 n : ℚ) / (A003418 n : ℚ) * (A225627 n : ℚ)

end

end A225636.P2206251638553958254

/-! ## A225636.P5219030450752890701

`A225627(n)/A256553(∑[A009490(n)]-1)`
-/

namespace A225636.P5219030450752890701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009490 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225627 n : ℚ) / (A256553 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat : ℚ)

end

end A225636.P5219030450752890701

/-! ## A225636.P16282009510738214064

`A225627(n)/abs((A075059(n)-1)/A225558(n))`
-/

namespace A225636.P16282009510738214064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225627 n : ℚ) / |(A075059 n - 1 : ℚ) / (A225558 n : ℚ)|

end

end A225636.P16282009510738214064

/-!
# A225637: a(n) = A003418(n)/A225629(n).

The programs for A225637, there is no canonical definition to state claims against.
-/

/-! ## A225637.P9359123457786252195

`A003418(n)/A225629(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A225637.P9359123457786252195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A225629 n : ℚ)

end

end A225637.P9359123457786252195

/-! ## A225637.P1366722386926495658

`(A075059(n)-1)/A225629(n)`
-/

namespace A225637.P1366722386926495658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075059 n - 1 : ℚ) / (A225629 n : ℚ)

end

end A225637.P1366722386926495658

/-! ## A225637.P8933758641494316378

`A120108(C(n, 2))/A225629(n)`
-/

namespace A225637.P8933758641494316378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120108 (Nat.choose n 2) : ℚ) / (A225629 n : ℚ)

end

end A225637.P8933758641494316378

/-! ## A225637.P1418742777028329661

`A120108(∑[n]-n)/A225629(n)`
-/

namespace A225637.P1418742777028329661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120108 (∑ j ∈ Finset.range (n + 1), f1 j - n) : ℚ) / (A225629 n : ℚ)

end

end A225637.P1418742777028329661

/-! ## A225637.P15245299503409602261

`∏[A014963(∏{p}[n, #])]/A225629(n)`
-/

namespace A225637.P15245299503409602261
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A225629 n : ℚ)

end

end A225637.P15245299503409602261

/-!
# A225638: a(n) is the row index where the first term in column n of A225630 equivalent to some term in column n of A225640 is found from.

The programs for A225638, there is no canonical definition to state claims against.
-/

/-! ## A225638.P4823782257856809107

`A225639(n)+A225654(n)`
-/

namespace A225638.P4823782257856809107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225639 n + A225654 n

end

end A225638.P4823782257856809107

/-! ## A225638.P5964818964958030192

`A225634(n)-A226056(n)`
-/

namespace A225638.P5964818964958030192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225634 n - A226056 n

end

end A225638.P5964818964958030192

/-! ## A225638.P14723433639507356340

`A225654(n)+A225643(n)+1-A226056(n)`
-/

namespace A225638.P14723433639507356340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225654 n + (A225643 n + 1) - A226056 n

end

end A225638.P14723433639507356340

/-! ## A225638.P2501899910417603852

`A005555(A225643(n))+A225654(n)-A226056(n)`
-/

namespace A225638.P2501899910417603852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A225643 n).toNat + (A225654 n - A226056 n)

end

end A225638.P2501899910417603852

/-! ## A225638.P11730829890416929423

`A225633(n)+1-A226056(n)`
-/

namespace A225638.P11730829890416929423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225633 n + (1 - A226056 n)

end

end A225638.P11730829890416929423

/-! ## A225638.P4909290435818432771

`A005496(A225633(n))-A226056(n)`
-/

namespace A225638.P4909290435818432771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A225633 n).toNat - A226056 n

end

end A225638.P4909290435818432771

/-! ## A225638.P15272089706055890733

`A000005(2^A225633(n))-A226056(n)`
-/

namespace A225638.P15272089706055890733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A225633 n : ℤ))).toNat - A226056 n

end

end A225638.P15272089706055890733

/-! ## A225638.P1241005614074611564

`A002377(xor(16, A225633(n)))-A226056(n)`
-/

namespace A225638.P1241005614074611564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (Int.xor 16 (A225633 n)).toNat - A226056 n

end

end A225638.P1241005614074611564

/-! ## A225638.P14665269876965720402

`A225633(n)+A225639(n)-A225643(n)`
-/

namespace A225638.P14665269876965720402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225633 n + (A225639 n - A225643 n)

end

end A225638.P14665269876965720402

/-! ## A225638.P18408282228791604274

`A225644(n)+A225654(n)-A226056(n)`
-/

namespace A225638.P18408282228791604274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 n + (A225654 n - A226056 n)

end

end A225638.P18408282228791604274

/-!
# A225639: a(n) is the index of the first row in column n of A225640 where A226055(n) occurs.

The programs for A225639, there is no canonical definition to state claims against.
-/

/-! ## A225639.P16024079385942420063

`A225638(n)-A225654(n)`
-/

namespace A225639.P16024079385942420063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225638 n - A225654 n

end

end A225639.P16024079385942420063

/-! ## A225639.P17666161986118889985

`A225644(n)-A226056(n)`
-/

namespace A225639.P17666161986118889985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 n - A226056 n

end

end A225639.P17666161986118889985

/-! ## A225639.P1112449238977801205

`A225643(n)+1-A226056(n)`
-/

namespace A225639.P1112449238977801205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225643 n + (1 - A226056 n)

end

end A225639.P1112449238977801205

/-! ## A225639.P4613687942272462952

`A005555(A225643(n))-A226056(n)`
-/

namespace A225639.P4613687942272462952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A225643 n).toNat - A226056 n

end

end A225639.P4613687942272462952

/-! ## A225639.P3989331542803611250

`A000005(2^A225643(n))-A226056(n)`
-/

namespace A225639.P3989331542803611250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A225643 n : ℤ))).toNat - A226056 n

end

end A225639.P3989331542803611250

/-! ## A225639.P13569567708619475755

`A001222(2*2^A225643(n))-A226056(n)`
-/

namespace A225639.P13569567708619475755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 * (2 : ℚ) ^ (A225643 n : ℤ))).toNat - A226056 n

end

end A225639.P13569567708619475755

/-! ## A225639.P4012639391039685692

`A225638(n)+A225644(n)-A225634(n)`
-/

namespace A225639.P4012639391039685692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225638 n + (A225644 n - A225634 n)

end

end A225639.P4012639391039685692

/-! ## A225639.P8253254825771756426

`A225634(n)-(A226056(n)+A225654(n))`
-/

namespace A225639.P8253254825771756426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225634 n - (A226056 n + A225654 n)

end

end A225639.P8253254825771756426

/-!
# A225640: Array A(n,k) of iterated Landau-like functions, where on the row n=0 A(0,0)=1 and A(0,k>=1)=k, and the successive rows A(n,k) give a maximum value lcm(p1,p2,...,pj,A(n-1,k)) for all partitions {p1+p2+...+pj} of k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A225640, there is no canonical definition to state claims against.
-/

/-! ## A225640.P3522655212267436634

`A225641(∑[2*n]%comp[∑[n]])`
-/

namespace A225640.P3522655212267436634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225641 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A225640.P3522655212267436634

/-! ## A225640.P4208219324331451835

`A225641(∑[char[∑[n]]]²-(n+1))`
-/

namespace A225640.P4208219324331451835
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225641 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A225640.P4208219324331451835

/-! ## A225640.P9035814864235328531

`gcd(A000038(n), A225641(A061579(n)))`
-/

namespace A225640.P9035814864235328531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A225641 (A061579 n).toNat)

end

end A225640.P9035814864235328531

/-! ## A225640.P3652944286783321622

`lcm(A131554(n), A225641(A061579(n)))`
-/

namespace A225640.P3652944286783321622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131554 n) (A225641 (A061579 n).toNat)

end

end A225640.P3652944286783321622

/-! ## A225640.P254771862606955750

`and(A126646(n), A225641(A061579(n)))`
-/

namespace A225640.P254771862606955750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A225641 (A061579 n).toNat)

end

end A225640.P254771862606955750

/-! ## A225640.P6923981091856131983

`∑{d}[A225641(A061579(n)), A000010(#)]`
-/

namespace A225640.P6923981091856131983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225641 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A225640.P6923981091856131983

/-! ## A225640.P7124340248082402198

`A225641(A061579(n))^A014963(∑[n+1])`
-/

namespace A225640.P7124340248082402198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225641 (A061579 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A225640.P7124340248082402198

/-! ## A225640.P15238703892356248925

`A000108(C(2, n+2))*A225641(A061579(n))`
-/

namespace A225640.P15238703892356248925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A225641 (A061579 n).toNat

end

end A225640.P15238703892356248925

/-! ## A225640.P9480979634157748427

`A007318(and(1, n-1))*A225641(A061579(n))`
-/

namespace A225640.P9480979634157748427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 ((n : ℤ) - 1)).toNat * A225641 (A061579 n).toNat

end

end A225640.P9480979634157748427

/-!
# A225641: Transpose of A225640.

The programs for A225641, there is no canonical definition to state claims against.
-/

/-! ## A225641.P4162766228563992481

`A225640(∑[2*n]%comp[∑[n]])`
-/

namespace A225641.P4162766228563992481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225640 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A225641.P4162766228563992481

/-! ## A225641.P914575152122368185

`A225640(∑[char[∑[n]]]²-(n+1))`
-/

namespace A225641.P914575152122368185
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225640 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A225641.P914575152122368185

/-! ## A225641.P10651485579179675522

`or(char[1], A225640(A061579(n)))`
-/

namespace A225641.P10651485579179675522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A225640 (A061579 n).toNat)

end

end A225641.P10651485579179675522

/-! ## A225641.P5134812308353062335

`A225640(A061579(n))%A316938(n)`
-/

namespace A225641.P5134812308353062335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225640 (A061579 n).toNat) (A316938 n)

end

end A225641.P5134812308353062335

/-! ## A225641.P3678577569995356322

`∏{d}[A225640(A061579(n)), A014963(#)]`
-/

namespace A225641.P3678577569995356322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225640 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A225641.P3678577569995356322

/-! ## A225641.P17110047661011548213

`A007318(C(2, n))*A225640(A061579(n))`
-/

namespace A225641.P17110047661011548213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A225640 (A061579 n).toNat

end

end A225641.P17110047661011548213

/-! ## A225641.P10497985001120059482

`A225640(A061579(n))^A014963(∑[n+1])`
-/

namespace A225641.P10497985001120059482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225640 (A061579 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A225641.P10497985001120059482

/-! ## A225641.P4151328517429810460

`A000045(gcd(n, n+2))*A225640(A061579(n))`
-/

namespace A225641.P4151328517429810460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 2)) * A225640 (A061579 n).toNat

end

end A225641.P4151328517429810460

/-! ## A225641.P18194076568473642013

`C(A000010(n+1), n)!*A225640(A061579(n))`
-/

namespace A225641.P18194076568473642013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose (A000010 (n + 1)).toNat n) : ℤ) * A225640 (A061579 n).toNat

end

end A225641.P18194076568473642013

/-!
# A225642: Irregular table read by rows: n-th row gives distinct values of successively iterated Landau-like functions for n, starting with the initial value n.

The programs for A225642, there is no canonical definition to state claims against.
-/

/-! ## A225642.P2922289517197405190

`lcm(round((n-1)/2)+2, A109649(A048888(n)))`
-/

namespace A225642.P2922289517197405190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) + 2) (A109649 (A048888 n).toNat)

end

end A225642.P2922289517197405190

/-! ## A225642.P3765864636163889994

`lcm(A000267(n), A038548(A018039(n)))`
-/

namespace A225642.P3765864636163889994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000267 n) (A038548 (A018039 n).toNat)

end

end A225642.P3765864636163889994

/-! ## A225642.P7451643241644498721

`A047726(A263272(n)+A083278(n+1))`
-/

namespace A225642.P7451643241644498721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A263272 n + A083278 (n + 1)).toNat

end

end A225642.P7451643241644498721

/-! ## A225642.P7660762905303851846

`A121663(A007279(n)%A224717(n+1))`
-/

namespace A225642.P7660762905303851846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121663 (Int.tmod (A007279 n) (A224717 (n + 1))).toNat

end

end A225642.P7660762905303851846

/-! ## A225642.P4323001316646272883

`A344535(A353864(n)%A123829(n+1))`
-/

namespace A225642.P4323001316646272883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344535 (Int.tmod (A353864 n) (A123829 (n + 1))).toNat

end

end A225642.P4323001316646272883

/-!
# A225643: Number of steps to reach a fixed point (A003418(n)), when starting from partition {n} of n and continuing with the process described in A225642.

The programs for A225643, there is no canonical definition to state claims against.
-/

/-! ## A225643.P2579192693186318373

`A225644(n)-1`
-/

namespace A225643.P2579192693186318373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 n - 1

end

end A225643.P2579192693186318373

/-! ## A225643.P12544945842911915680

`A225639(n)+A226056(n)-1`
-/

namespace A225643.P12544945842911915680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225639 n + (A226056 n - 1)

end

end A225643.P12544945842911915680

/-! ## A225643.P16470242357276019506

`A002837(A226056(n)+A225639(n))`
-/

namespace A225643.P16470242357276019506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A226056 n + A225639 n).toNat

end

end A225643.P16470242357276019506

/-! ## A225643.P15983191804692762760

`A004830(A226056(n)+A225639(n))`
-/

namespace A225643.P15983191804692762760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004830 (A226056 n + A225639 n).toNat

end

end A225643.P15983191804692762760

/-! ## A225643.P9384345843223193590

`A008554(A226056(n)+A225639(n))`
-/

namespace A225643.P9384345843223193590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008554 (A226056 n + A225639 n).toNat

end

end A225643.P9384345843223193590

/-! ## A225643.P3434857229336751371

`A023443(A226056(n)+A225639(n))`
-/

namespace A225643.P3434857229336751371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A226056 n + A225639 n).toNat

end

end A225643.P3434857229336751371

/-! ## A225643.P11790353215859967848

`A033619(A226056(n)+A225639(n))`
-/

namespace A225643.P11790353215859967848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A226056 n + A225639 n).toNat

end

end A225643.P11790353215859967848

/-! ## A225643.P12602763921274092548

`A081331(A226056(n)+A225639(n))`
-/

namespace A225643.P12602763921274092548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081331 (A226056 n + A225639 n).toNat

end

end A225643.P12602763921274092548

/-! ## A225643.P17632808686729801624

`A001633(A226056(n)+A225639(n))%15`
-/

namespace A225643.P17632808686729801624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001633 (A226056 n + A225639 n).toNat) 15

end

end A225643.P17632808686729801624

/-!
# A225644: a(n) = number of distinct values in column n of A225640.

The programs for A225644, there is no canonical definition to state claims against.
-/

/-! ## A225644.P7471979928432396404

`A225643(n)+1`
-/

namespace A225644.P7471979928432396404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225643 n + 1

end

end A225644.P7471979928432396404

/-! ## A225644.P5158472501022329623

`A225639(n)+A226056(n)`
-/

namespace A225644.P5158472501022329623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225639 n + A226056 n

end

end A225644.P5158472501022329623

/-! ## A225644.P9838287716693323415

`A005496(A225643(n))`
-/

namespace A225644.P9838287716693323415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A225643 n).toNat

end

end A225644.P9838287716693323415

/-! ## A225644.P4528254849713507003

`A008619(2*A225643(n))`
-/

namespace A225644.P4528254849713507003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A225643 n).toNat

end

end A225644.P4528254849713507003

/-! ## A225644.P1223051605494448823

`A027656(2*A225643(n))`
-/

namespace A225644.P1223051605494448823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A225643 n).toNat

end

end A225644.P1223051605494448823

/-! ## A225644.P1433970715938032211

`A029579(2*A225643(n))`
-/

namespace A225644.P1433970715938032211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A225643 n).toNat

end

end A225644.P1433970715938032211

/-! ## A225644.P1042544694980830484

`A008612(6*A225643(n))`
-/

namespace A225644.P1042544694980830484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A225643 n).toNat

end

end A225644.P1042544694980830484

/-! ## A225644.P18040147578030832753

`A000005(2^A225643(n))`
-/

namespace A225644.P18040147578030832753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A225643 n : ℤ))).toNat

end

end A225644.P18040147578030832753

/-! ## A225644.P14355247451055075220

`A002377(or(16, A225643(n)))`
-/

namespace A225644.P14355247451055075220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (Int.lor 16 (A225643 n)).toNat

end

end A225644.P14355247451055075220

/-! ## A225644.P7576999924415129392

`A002377(xor(16, A225643(n)))`
-/

namespace A225644.P7576999924415129392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (Int.xor 16 (A225643 n)).toNat

end

end A225644.P7576999924415129392

/-!
# A225645: Partial sums of A225644.

The programs for A225645, there is no canonical definition to state claims against.
-/

/-! ## A225645.P14110950409090867031

`∑[A225644(n)]`
-/

namespace A225645.P14110950409090867031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225645.P14110950409090867031

/-! ## A225645.P296082744882450383

`∑[A225643(n)+1]`
-/

namespace A225645.P296082744882450383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225643 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225645.P296082744882450383

/-! ## A225645.P8190755649092787153

`lt[A225642(n+1), n+2]+1`
-/

namespace A225645.P8190755649092787153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225642 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A225645.P8190755649092787153

/-! ## A225645.P7598165578027849195

`∑[A005555(A225643(n))]`
-/

namespace A225645.P7598165578027849195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A225643 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225645.P7598165578027849195

/-! ## A225645.P14658428362581936987

`∑[A008619(2*A225643(n))]`
-/

namespace A225645.P14658428362581936987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A225643 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225645.P14658428362581936987

/-! ## A225645.P10983805820912263062

`∑[A226056(n)+A225639(n)]`
-/

namespace A225645.P10983805820912263062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226056 n + A225639 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225645.P10983805820912263062

/-! ## A225645.P11143367153360933381

`∑[A225634(n)-A225654(n)]`
-/

namespace A225645.P11143367153360933381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225634 n - A225654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225645.P11143367153360933381

/-! ## A225645.P17843660917450455033

`∑[A225633(n)+1]-∑[A225654(n)]`
-/

namespace A225645.P17843660917450455033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225633 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A225645.P17843660917450455033

/-!
# A225646: a(n) = lcm(n,p1,p2,...,pk) for such a partition of n which maximizes this value among all partitions {p1+p2+...pk} of n.

The programs for A225646, there is no canonical definition to state claims against.
-/

/-! ## A225646.P11081331505151035769

`(C(2, n+2)+n)*A225652(C(2, n+2)+n)`
-/

namespace A225646.P11081331505151035769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) + n : ℤ) * A225652 (Nat.choose 2 (n + 2) + n)

end

end A225646.P11081331505151035769

/-! ## A225646.P10873996030782363450

`round(sqrt(n²+1))*A225652(A028310(n))`
-/

namespace A225646.P10873996030782363450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) * A225652 (A028310 n).toNat

end

end A225646.P10873996030782363450

/-! ## A225646.P2554521844529615415

`round(1/acot(n))*A225652(A000038(n)+n)`
-/

namespace A225646.P2554521844529615415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) * A225652 (A000038 n + (n : ℤ)).toNat

end

end A225646.P2554521844529615415

/-! ## A225646.P13840832208415219011

`A028310(n)*A225652(A065033(2*n))`
-/

namespace A225646.P13840832208415219011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A225652 (A065033 (2 * n)).toNat

end

end A225646.P13840832208415219011

/-! ## A225646.P4146737493968827447

`A028310(n)*A225652(A123108(2*n))`
-/

namespace A225646.P4146737493968827447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A225652 (A123108 (2 * n)).toNat

end

end A225646.P4146737493968827447

/-!
# A225648: Positions of ones in A225650, numbers n such that n and A000793(n) are coprime.

The programs for A225648, there is no canonical definition to state claims against.
-/

/-! ## A225648.P8684748310270309773

`eq[1, A225650(n)]`
-/

namespace A225648.P8684748310270309773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225650 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225648.P8684748310270309773

/-! ## A225648.P5044212612459529166

`lt[A294473(A225650(n)+1), 2]`
-/

namespace A225648.P5044212612459529166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294473 (A225650 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A225648.P5044212612459529166

/-! ## A225648.P9315547941338878746

`lt[A225650(n)+A166486(n), 3]`
-/

namespace A225648.P9315547941338878746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225650 n + A166486 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A225648.P9315547941338878746

/-! ## A225648.P5184103762694983313

`lt[A225650(n), 4/A167817(n)]`
-/

namespace A225648.P5184103762694983313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225650 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (A167817 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A225648.P5184103762694983313

/-! ## A225648.P12916603945300407086

`record[A008475(n+1)/A225650(n+1)]`
-/

namespace A225648.P12916603945300407086
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008475 (n + 1) : ℚ) / (A225650 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225648.P12916603945300407086

/-! ## A225648.P7837972005556516475

`record[A008585(n)/A004139(A225650(n))]`
-/

namespace A225648.P7837972005556516475
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008585 n : ℚ) / (A004139 (A225650 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225648.P7837972005556516475

/-! ## A225648.P12303142431224347816

`lt[A225650(n), A000005(A225650(n)+1)]`
-/

namespace A225648.P12303142431224347816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225650 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A225650 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225648.P12303142431224347816

/-! ## A225648.P5280756820630634896

`lt[A225650(n), A004736(A225650(n)+1)]`
-/

namespace A225648.P5280756820630634896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225650 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A225650 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225648.P5280756820630634896

/-! ## A225648.P14389130027615812193

`lt[A001222(A225650(n))*A004767(n), 2]`
-/

namespace A225648.P14389130027615812193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A225650 n).toNat * A004767 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A225648.P14389130027615812193

/-! ## A225648.P5455874938602967642

`record[A057163(A057163(n))/A225650(n)]`
-/

namespace A225648.P5455874938602967642
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057163 (A057163 n).toNat : ℚ) / (A225650 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225648.P5455874938602967642

/-! ## A225648.P9193337785898242883

`record[A004396(n)/A225650(A004396(n))]`
-/

namespace A225648.P9193337785898242883
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004396 n : ℚ) / (A225650 (A004396 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225648.P9193337785898242883

/-! ## A225648.P8266057056741678652

`record[A195119(n)/A225650(A195119(n))]`
-/

namespace A225648.P8266057056741678652
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195119 n : ℚ) / (A225650 (A195119 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225648.P8266057056741678652

/-! ## A225648.P14531764411570095262

`eq[1, gcd(n, A000793(n))]`
-/

namespace A225648.P14531764411570095262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000793 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225648.P14531764411570095262

/-! ## A225648.P14444762451191661677

`record[n+1-A225650(n)^A000196(n)]`
-/

namespace A225648.P14444762451191661677
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A225650 n : ℚ) ^ (A000196 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225648.P14444762451191661677

/-!
# A225649: Positions of non-ones in A225650, numbers n such that n and A000793(n) have at least one common divisor > 1.

The programs for A225649, there is no canonical definition to state claims against.
-/

/-! ## A225649.P987459809075719322

`lt[1, A225650(n)]`
-/

namespace A225649.P987459809075719322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225650 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225649.P987459809075719322

/-! ## A225649.P10392931151361404671

`comp[A225648(n+1)]`
-/

namespace A225649.P10392931151361404671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A225649.P10392931151361404671

/-! ## A225649.P10876377265461761496

`lt[1, gcd(n, A000793(n))]`
-/

namespace A225649.P10876377265461761496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000793 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225649.P10876377265461761496

/-! ## A225649.P945574674646415872

`comp[record[A225648(A117910(n))]]`
-/

namespace A225649.P945574674646415872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225648 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A225649.P945574674646415872

/-! ## A225649.P2771331484681527084

`comp[record[A225648(A126759(n))]]`
-/

namespace A225649.P2771331484681527084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225648 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A225649.P2771331484681527084

/-! ## A225649.P8659285635827849371

`comp[record[A225648(A262519(n))]]`
-/

namespace A225649.P8659285635827849371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225648 (A262519 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A225649.P8659285635827849371

/-! ## A225649.P12176561753838671273

`comp[record[A225648(A263274(n))]]`
-/

namespace A225649.P12176561753838671273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225648 (A263274 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A225649.P12176561753838671273

/-! ## A225649.P8995703805990654785

`comp[record[A225648(A286554(n))]]`
-/

namespace A225649.P8995703805990654785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225648 (A286554 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A225649.P8995703805990654785

/-! ## A225649.P16772023868851834117

`eq[1, A043545(A225650(n)²)]`
-/

namespace A225649.P16772023868851834117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A225650 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225649.P16772023868851834117

/-! ## A225649.P15882084099468601449

`eq[0, A000212(C(2, A225650(n)))]`
-/

namespace A225649.P15882084099468601449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (Nat.choose 2 (A225650 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225649.P15882084099468601449

/-!
# A225650: The greatest common divisor of Landau g(n) and n.

The programs for A225650, there is no canonical definition to state claims against.
-/

/-! ## A225650.P1370915781571043410

`gcd(n, A000793(n))`
-/

namespace A225650.P1370915781571043410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000793 n)

end

end A225650.P1370915781571043410

/-! ## A225650.P14921159479177370759

`gcd(A002809(∑[char[A006644(n+1)]]), A254667(n))`
-/

namespace A225650.P14921159479177370759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006644 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002809 (∑ j ∈ Finset.range (n + 1), f1 j)) (A254667 n)

end

end A225650.P14921159479177370759

/-! ## A225650.P15832397835773271634

`gcd(A003418(n)/A225558(n), A254667(n))`
-/

namespace A225650.P15832397835773271634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A003418 n : ℚ) / (A225558 n : ℚ))) (A254667 n)

end

end A225650.P15832397835773271634

/-! ## A225650.P3133517469223540109

`gcd(A120108(A161680(n))/A225558(n), A065033(2*n))`
-/

namespace A225650.P3133517469223540109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A120108 (A161680 n).toNat : ℚ) / (A225558 n : ℚ))) (A065033 (2 * n))

end

end A225650.P3133517469223540109

/-! ## A225650.P9196813229479567293

`gcd(n!/A074115(n), A233583(n+1))`
-/

namespace A225650.P9196813229479567293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (A074115 n : ℚ))) (A233583 (n + 1))

end

end A225650.P9196813229479567293

/-! ## A225650.P7314025948686019671

`gcd(A000142(n)/A074115(n), A028310(n))`
-/

namespace A225650.P7314025948686019671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A000142 n : ℚ) / (A074115 n : ℚ))) (A028310 n)

end

end A225650.P7314025948686019671

/-!
# A225651: Numbers k that divide A000793(k).

The programs for A225651, there is no canonical definition to state claims against.
-/

/-! ## A225651.P1447191038573205703

`record[A225650(n)]`
-/

namespace A225651.P1447191038573205703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225651.P1447191038573205703

/-! ## A225651.P3937306619933698174

`lt[n, A225650(n+1)]+1`
-/

namespace A225651.P3937306619933698174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225650 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A225651.P3937306619933698174

/-! ## A225651.P5199322777516571483

`eq[n, A225650(A028310(n))]`
-/

namespace A225651.P5199322777516571483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225650 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225651.P5199322777516571483

/-! ## A225651.P14074701676368760604

`A225650(eq[n, A225650(n)])`
-/

namespace A225651.P14074701676368760604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225651.P14074701676368760604

/-! ## A225651.P17682666527263158762

`record[gcd(n, A000793(n))]`
-/

namespace A225651.P17682666527263158762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000793 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225651.P17682666527263158762

/-! ## A225651.P4728506131478638045

`lt[A000032(n), A123720(A225650(n))]`
-/

namespace A225651.P4728506131478638045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123720 (A225650 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225651.P4728506131478638045

/-!
# A225652: a(n) = (1/n) * lcm(n,p1,p2,...,pk) for that partition of n which maximizes this value among all partitions [p1,p2,...,pk] of n.

The programs for A225652, there is no canonical definition to state claims against.
-/

/-! ## A225652.P16608979950377751304

`A225646(n+1)/(n+1)`
-/

namespace A225652.P16608979950377751304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225646 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A225652.P16608979950377751304

/-! ## A225652.P11082439679766741633

`gcd(A106000(n)!, A129647(n+1))`
-/

namespace A225652.P11082439679766741633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A106000 n).toNat : ℤ) (A129647 (n + 1))

end

end A225652.P11082439679766741633

/-! ## A225652.P3471515189047469821

`A353637(2^n*Δ[n²])+A129647(n+1)`
-/

namespace A225652.P3471515189047469821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353637 ((2 ^ n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat + A129647 (n + 1)

end

end A225652.P3471515189047469821

/-! ## A225652.P18188522993388788442

`A129647(n+1)+A121373(p?[4*n+1]*p?[4*n+7])`
-/

namespace A225652.P18188522993388788442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129647 (n + 1) + A121373 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

end

end A225652.P18188522993388788442

/-! ## A225652.P16210543891337959819

`A129647(n+1)+A000007(A049602(n))`
-/

namespace A225652.P16210543891337959819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129647 (n + 1) + A000007 (A049602 n).toNat

end

end A225652.P16210543891337959819

/-!
# A225653: Numbers k such that A225634(k) = A225644(k).

The programs for A225653, there is no canonical definition to state claims against.
-/

/-! ## A225653.P14152661145454254285

`eq[0, A225654(n)]`
-/

namespace A225653.P14152661145454254285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225654 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225653.P14152661145454254285

/-! ## A225653.P11717238350763631248

`lt[A225654(round(sqrt(n²+1))), 1]`
-/

namespace A225653.P11717238350763631248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225654 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A225653.P11717238350763631248

/-! ## A225653.P15442598723059473873

`lt[A225654(n)+A185012(n), 1]`
-/

namespace A225653.P15442598723059473873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225654 n + A185012 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A225653.P15442598723059473873

/-! ## A225653.P4736215022654267839

`lt[A225654(n)-1, A000007(n)]`
-/

namespace A225653.P4736215022654267839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225654 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225653.P4736215022654267839

/-! ## A225653.P8303934355441042956

`lt[A000118(n)*A225654(n), 1]`
-/

namespace A225653.P8303934355441042956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 n * A225654 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A225653.P8303934355441042956

/-!
# A225654: a(n) = the number of surplus elements on the n-th row of A225632 compared to the n-th row of A225642.

The programs for A225654, there is no canonical definition to state claims against.
-/

/-! ## A225654.P11120489663960817757

`A225638(n)-A225639(n)`
-/

namespace A225654.P11120489663960817757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225638 n - A225639 n

end

end A225654.P11120489663960817757

/-! ## A225654.P3954312464396451961

`A225634(n)-A225644(n)`
-/

namespace A225654.P3954312464396451961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225634 n - A225644 n

end

end A225654.P3954312464396451961

/-! ## A225654.P4034660988290735113

`A005811(xor(A225638(n), A225639(n)))`
-/

namespace A225654.P4034660988290735113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (Int.xor (A225638 n) (A225639 n)).toNat

end

end A225654.P4034660988290735113

/-! ## A225654.P3385887755031979623

`A225638(n)+A057428(n)*A225639(n)`
-/

namespace A225654.P3385887755031979623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225638 n + A057428 n * A225639 n

end

end A225654.P3385887755031979623

/-! ## A225654.P10514389008991821991

`A226056(n)+A225638(n)-(A225643(n)+1)`
-/

namespace A225654.P10514389008991821991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226056 n + A225638 n - (A225643 n + 1)

end

end A225654.P10514389008991821991

/-! ## A225654.P13728859388184087549

`A002837(A225638(n)+A226056(n)-A225643(n))`
-/

namespace A225654.P13728859388184087549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A225638 n + (A226056 n - A225643 n)).toNat

end

end A225654.P13728859388184087549

/-! ## A225654.P7904765601995182260

`A002837(A225638(n)-(A225643(n)-A226056(n)))`
-/

namespace A225654.P7904765601995182260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A225638 n - (A225643 n - A226056 n)).toNat

end

end A225654.P7904765601995182260

/-! ## A225654.P14129437281114677960

`A225633(n)-A225643(n)`
-/

namespace A225654.P14129437281114677960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225633 n - A225643 n

end

end A225654.P14129437281114677960

/-! ## A225654.P15541566878079893757

`A225633(n)+1-A225644(n)`
-/

namespace A225654.P15541566878079893757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225633 n + (1 - A225644 n)

end

end A225654.P15541566878079893757

/-! ## A225654.P4695849574504118606

`A225633(n)-A002837(A225644(n))`
-/

namespace A225654.P4695849574504118606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225633 n - A002837 (A225644 n).toNat

end

end A225654.P4695849574504118606

/-!
# A225655: a(n) = largest LCM of partitions of n divisible by n.

The programs for A225655, there is no canonical definition to state claims against.
-/

/-! ## A225655.P12617207664334800097

`(n+1)*A225656(n+1)`
-/

namespace A225655.P12617207664334800097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A225656 (n + 1)

end

end A225655.P12617207664334800097

/-! ## A225655.P14876466561870466151

`lcm(n+1, A144907(A225656(n+1)²))`
-/

namespace A225655.P14876466561870466151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A144907 (A225656 (n + 1) ^ 2).toNat)

end

end A225655.P14876466561870466151

/-! ## A225655.P6482894638283366310

`(n+1)*A119963(A346097(n+1))`
-/

namespace A225655.P6482894638283366310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A119963 (A346097 (n + 1)).toNat

end

end A225655.P6482894638283366310

/-! ## A225655.P8897559687707417849

`lcm(n+1, A206487((n+1)²))`
-/

namespace A225655.P8897559687707417849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A206487 ((n + 1) ^ 2))

end

end A225655.P8897559687707417849

/-! ## A225655.P11328424610399115875

`(n+1)*A146378(C(n, floor(n/6)))`
-/

namespace A225655.P11328424610399115875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A146378 (Nat.choose n ⌊(n : ℚ) / 6⌋.toNat)

end

end A225655.P11328424610399115875

/-!
# A225656: a(n) = (1/n) * lcm(p1,p2,...,pk) for such a partition of n that this formula produces an integer and maximizes this value among all such partitions [p1,p2,...,pk] of n.

The programs for A225656, there is no canonical definition to state claims against.
-/

/-! ## A225656.P17847279110110398483

`A225655(n+1)/(n+1)`
-/

namespace A225656.P17847279110110398483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225655 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A225656.P17847279110110398483

/-! ## A225656.P7466059964733596578

`(n+1)^A008683(Δ[A007504(n)])*A225655(n+1)`
-/

namespace A225656.P7466059964733596578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (f1 (n + 1) - f1 n).toNat : ℤ) * (A225655 (n + 1) : ℚ)

end

end A225656.P7466059964733596578

/-! ## A225656.P6857883467786568955

`A056135(A056135(n+1)*A225655(n+1))`
-/

namespace A225656.P6857883467786568955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056135 (A056135 (n + 1) * A225655 (n + 1)).toNat

end

end A225656.P6857883467786568955

/-!
# A225657: Union of {6} and A000961.

The programs for A225657, the canonical program `A225657.P11652241519919339957` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225657 has offset 1).

The definition of A225657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9702 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225657.P181483957678043945

`∪[A000961(n+1), A027313(n)]`
-/

namespace A225657.P181483957678043945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027313 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225657.P181483957678043945

namespace A225657

/-- `∪[A000961(n+1), A027313(n)]` -/
def P181483957678043945.Spec : Prop :=
  ∀ n, (P181483957678043945.a n : ℤ) = A225657 (n + 1)

end A225657

/-! ## A225657.P1242461201040313261

`∪[A067133(n+1), A061345(n)]`
-/

namespace A225657.P1242461201040313261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225657.P1242461201040313261

namespace A225657

/-- `∪[A067133(n+1), A061345(n)]` -/
def P1242461201040313261.Spec : Prop :=
  ∀ n, (P1242461201040313261.a n : ℤ) = A225657 (n + 1)

end A225657

/-! ## A225657.P6116258891023605933

`filter[A072303(n+1), A354923(#)]`
-/

namespace A225657.P6116258891023605933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A225657.P6116258891023605933

namespace A225657

/-- `filter[A072303(n+1), A354923(#)]` -/
def P6116258891023605933.Spec : Prop :=
  ∀ n, P6116258891023605933.a n = A225657 (n + 1)

end A225657

/-! ## A225657.P11652241519919339957

`filter[A081061(n+1), A354923(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A225657

/-- `filter[A081061(n+1), A354923(#)]` -/
def P11652241519919339957.Spec : Prop :=
  ∀ n, P11652241519919339957.a n = A225657 (n + 1)

theorem P11652241519919339957.correct : P11652241519919339957.Spec := by
  intro n
  simp only [A225657, Nat.add_sub_cancel]

end A225657

/-! ## A225657.P1806193967467306818

`filter[A133810(n+1), A354923(#)]`
-/

namespace A225657.P1806193967467306818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A225657.P1806193967467306818

namespace A225657

/-- `filter[A133810(n+1), A354923(#)]` -/
def P1806193967467306818.Spec : Prop :=
  ∀ n, P1806193967467306818.a n = A225657 (n + 1)

end A225657

/-! ## A225657.P15511639993566357526

`filter[A141807(n+1), A354923(#)]`
-/

namespace A225657.P15511639993566357526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A225657.P15511639993566357526

namespace A225657

/-- `filter[A141807(n+1), A354923(#)]` -/
def P15511639993566357526.Spec : Prop :=
  ∀ n, P15511639993566357526.a n = A225657 (n + 1)

end A225657

/-! ## A225657.P2916493658737672945

`filter[A141807(n+1), A354924(#)]`
-/

namespace A225657.P2916493658737672945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A225657.P2916493658737672945

namespace A225657

/-- `filter[A141807(n+1), A354924(#)]` -/
def P2916493658737672945.Spec : Prop :=
  ∀ n, P2916493658737672945.a n = A225657 (n + 1)

end A225657

/-! ## A225657.P14655399624072513511

`filter[A133812(n+1), A354923(#)]`
-/

namespace A225657.P14655399624072513511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A225657.P14655399624072513511

namespace A225657

/-- `filter[A133812(n+1), A354923(#)]` -/
def P14655399624072513511.Spec : Prop :=
  ∀ n, P14655399624072513511.a n = A225657 (n + 1)

end A225657

/-! ## A225657.P8262658155853607157

`filter[A133812(n+1), A354924(#)]`
-/

namespace A225657.P8262658155853607157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A225657.P8262658155853607157

namespace A225657

/-- `filter[A133812(n+1), A354924(#)]` -/
def P8262658155853607157.Spec : Prop :=
  ∀ n, P8262658155853607157.a n = A225657 (n + 1)

end A225657

/-! ## A225657.P7661339035580147743

`filter[A242417(n+1), A354923(#)]`
-/

namespace A225657.P7661339035580147743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A225657.P7661339035580147743

namespace A225657

/-- `filter[A242417(n+1), A354923(#)]` -/
def P7661339035580147743.Spec : Prop :=
  ∀ n, P7661339035580147743.a n = A225657 (n + 1)

end A225657

/-! ## A225657.P6738569098463841801

`filter[A242417(n+1), A354924(#)]`
-/

namespace A225657.P6738569098463841801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A225657.P6738569098463841801

namespace A225657

/-- `filter[A242417(n+1), A354924(#)]` -/
def P6738569098463841801.Spec : Prop :=
  ∀ n, P6738569098463841801.a n = A225657 (n + 1)

end A225657

/-! ## A225657.P11320601069364177089

`∩[A242417(n+1), A141807(n+1)]`
-/

namespace A225657.P11320601069364177089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225657.P11320601069364177089

namespace A225657

/-- `∩[A242417(n+1), A141807(n+1)]` -/
def P11320601069364177089.Spec : Prop :=
  ∀ n, (P11320601069364177089.a n : ℤ) = A225657 (n + 1)

end A225657

/-! ## A225657.P11043853447208490025

`filter[A073491(n+1), A354923(#)]`
-/

namespace A225657.P11043853447208490025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A225657.P11043853447208490025

namespace A225657

/-- `filter[A073491(n+1), A354923(#)]` -/
def P11043853447208490025.Spec : Prop :=
  ∀ n, P11043853447208490025.a n = A225657 (n + 1)

end A225657

/-! ## A225657.P2659308755929672418

`filter[A242413(n+1), A354923(#)]`
-/

namespace A225657.P2659308755929672418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A225657.P2659308755929672418

namespace A225657

/-- `filter[A242413(n+1), A354923(#)]` -/
def P2659308755929672418.Spec : Prop :=
  ∀ n, P2659308755929672418.a n = A225657 (n + 1)

end A225657

/-! ## A225657.P16307139255445419471

`filter[A081306(n+1), A354923(#)]`
-/

namespace A225657.P16307139255445419471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A225657.P16307139255445419471

namespace A225657

/-- `filter[A081306(n+1), A354923(#)]` -/
def P16307139255445419471.Spec : Prop :=
  ∀ n, P16307139255445419471.a n = A225657 (n + 1)

end A225657

/-! ## A225657.P15669059416204794826

`filter[A395790(n+1), A354923(#)]`
-/

namespace A225657.P15669059416204794826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A225657.P15669059416204794826

namespace A225657

/-- `filter[A395790(n+1), A354923(#)]` -/
def P15669059416204794826.Spec : Prop :=
  ∀ n, P15669059416204794826.a n = A225657 (n + 1)

end A225657

/-! ## A225657.P8912776574900385993

`filter[A395790(n+1), A354924(#)]`
-/

namespace A225657.P8912776574900385993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A225657.P8912776574900385993

namespace A225657

/-- `filter[A395790(n+1), A354924(#)]` -/
def P8912776574900385993.Spec : Prop :=
  ∀ n, P8912776574900385993.a n = A225657 (n + 1)

end A225657

/-! ## A225657.P12329784502956661809

`filter[A081061(n+1), A294935(#)]`
-/

namespace A225657.P12329784502956661809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A225657.P12329784502956661809

namespace A225657

/-- `filter[A081061(n+1), A294935(#)]` -/
def P12329784502956661809.Spec : Prop :=
  ∀ n, P12329784502956661809.a n = A225657 (n + 1)

end A225657

/-! ## A225657.P11887412489995296551

`filter[A285710(n+1), A137794(#)]`
-/

namespace A225657.P11887412489995296551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A225657.P11887412489995296551

namespace A225657

/-- `filter[A285710(n+1), A137794(#)]` -/
def P11887412489995296551.Spec : Prop :=
  ∀ n, P11887412489995296551.a n = A225657 (n + 1)

end A225657

/-! ## A225657.P14853816635609329886

`filter[A141807(n+1), A294935(#)]`
-/

namespace A225657.P14853816635609329886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A225657.P14853816635609329886

namespace A225657

/-- `filter[A141807(n+1), A294935(#)]` -/
def P14853816635609329886.Spec : Prop :=
  ∀ n, P14853816635609329886.a n = A225657 (n + 1)

end A225657

/-!
# A225658: a(n) = n! + (n+1)! + 3*(n+2)!.

The programs for A225658, the canonical program `A225658.P9836252400510583743` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225658 has offset 0).

The definition of A225658 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!+(n+1)!+3*(n+2)!` (program `A225658.P9836252400510583743`, by `A225658.P9836252400510583743.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A225658.P9836252400510583743

`n!+(n+1)!+3*(n+2)!`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A225658

/-- `n!+(n+1)!+3*(n+2)!` -/
def P9836252400510583743.Spec : Prop :=
  ∀ n, (P9836252400510583743.a n : ℤ) = A225658 n

theorem P9836252400510583743.correct : P9836252400510583743.Spec := by
  intro n
  simp only [A225658]

end A225658

/-! ## A225658.P9806321635766126126

`(1/(n+1)+3)*(n+2)!`
-/

namespace A225658.P9806321635766126126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 / (n + 1 : ℚ) + 3) * (Nat.factorial (n + 2) : ℚ)

end

end A225658.P9806321635766126126

namespace A225658

/-- `(1/(n+1)+3)*(n+2)!` -/
def P9806321635766126126.Spec : Prop :=
  ∀ n, P9806321635766126126.a n = (A225658 n : ℚ)

end A225658

/-! ## A225658.P2156844734583377135

`(1/(n+1)+3)*∏[n+2]`
-/

namespace A225658.P2156844734583377135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 / (n + 1 : ℚ) + 3) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A225658.P2156844734583377135

namespace A225658

/-- `(1/(n+1)+3)*∏[n+2]` -/
def P2156844734583377135.Spec : Prop :=
  ∀ n, P2156844734583377135.a n = (A225658 n : ℚ)

end A225658

/-! ## A225658.P16815580110931709638

`A052560(n+2)+A001048(n+1)`
-/

namespace A225658.P16815580110931709638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052560 (n + 2) + A001048 (n + 1)

end

end A225658.P16815580110931709638

namespace A225658

/-- `A052560(n+2)+A001048(n+1)` -/
def P16815580110931709638.Spec : Prop :=
  ∀ n, P16815580110931709638.a n = A225658 n

end A225658

/-! ## A225658.P4178836209675478607

`A108217(n+2)+A052649(n+1)`
-/

namespace A225658.P4178836209675478607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108217 (n + 2) + A052649 (n + 1)

end

end A225658.P4178836209675478607

namespace A225658

/-- `A108217(n+2)+A052649(n+1)` -/
def P4178836209675478607.Spec : Prop :=
  ∀ n, P4178836209675478607.a n = A225658 n

end A225658

/-! ## A225658.P11810053930571461884

`A054119(n+2)+A052849(n+2)`
-/

namespace A225658.P11810053930571461884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054119 (n + 2) + A052849 (n + 2)

end

end A225658.P11810053930571461884

namespace A225658

/-- `A054119(n+2)+A052849(n+2)` -/
def P11810053930571461884.Spec : Prop :=
  ∀ n, P11810053930571461884.a n = A225658 n

end A225658

/-! ## A225658.P10258708362063584

`A000142(n+1)+A000142(n)*A003215(n+1)`
-/

namespace A225658.P10258708362063584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) + A000142 n * A003215 (n + 1)

end

end A225658.P10258708362063584

namespace A225658

/-- `A000142(n+1)+A000142(n)*A003215(n+1)` -/
def P10258708362063584.Spec : Prop :=
  ∀ n, P10258708362063584.a n = A225658 n

end A225658

/-!
# A225659: Primes p where p + sumOfDigits(p) +- 3 is prime.

The programs for A225659, there is no canonical definition to state claims against.
-/

/-! ## A225659.P11872843930357452150

`∩[A156756(n+1), A389482(n+1)]`
-/

namespace A225659.P11872843930357452150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225659.P11872843930357452150

/-! ## A225659.P6546474357122203539

`∩[A156756(n+1), A389483(n+1)]`
-/

namespace A225659.P6546474357122203539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225659.P6546474357122203539

/-! ## A225659.P347644519687481110

`A156756(A298534(n+1)%A065377(n+1))`
-/

namespace A225659.P347644519687481110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156756 (Int.tmod (A298534 (n + 1)) (A065377 (n + 1))).toNat

end

end A225659.P347644519687481110

/-! ## A225659.P9089670500939552183

`p?[A140281(n)]%A093648(n+1)`
-/

namespace A225659.P9089670500939552183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A093648 (n + 1))

end

end A225659.P9089670500939552183

/-! ## A225659.P11916585723355743754

`∩[A156756(n+1), A355301(n+1)]`
-/

namespace A225659.P11916585723355743754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225659.P11916585723355743754

/-!
# A225660: Number of nonrepeating vectors in a counting procedure that starts with the digits of (n base 2).

The programs for A225660, there is no canonical definition to state claims against.
-/

/-! ## A225660.P5245829957370923702

`A225661(record[A117966(n)])`
-/

namespace A225660.P5245829957370923702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225661 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225660.P5245829957370923702

/-! ## A225660.P17222081768884779082

`A225661(A005836(n+1))`
-/

namespace A225660.P17222081768884779082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225661 (A005836 (n + 1)).toNat

end

end A225660.P17222081768884779082

/-! ## A225660.P201063773587747487

`A225661(eq[1, A039966(n)])`
-/

namespace A225660.P201063773587747487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225661 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225660.P201063773587747487

/-! ## A225660.P13329820730278222040

`A225661(eq[n, A117966(n)])`
-/

namespace A225660.P13329820730278222040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225661 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225660.P13329820730278222040

/-! ## A225660.P14752134801520073121

`A225661(record[A004488(n)/2])`
-/

namespace A225660.P14752134801520073121
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004488 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225661 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A225660.P14752134801520073121

/-! ## A225660.P12054621121005587578

`A225661(record[n-A004488(n)])`
-/

namespace A225660.P12054621121005587578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225661 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225660.P12054621121005587578

/-! ## A225660.P1080277945972876674

`A225661(A004488(record[A004488(n)]))`
-/

namespace A225660.P1080277945972876674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225661 (A004488 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A225660.P1080277945972876674

/-! ## A225660.P16682299332512410140

`A225662(A000695(n))`
-/

namespace A225660.P16682299332512410140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225662 (A000695 n).toNat

end

end A225660.P16682299332512410140

/-! ## A225660.P15082661762511899602

`A225663(A033042(n))`
-/

namespace A225660.P15082661762511899602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225663 (A033042 n).toNat

end

end A225660.P15082661762511899602

/-!
# A225661: Number of nonrepeating vectors in a counting procedure that starts with the digits of (n base 3).

The programs for A225661, there is no canonical definition to state claims against.
-/

/-! ## A225661.P936424690885165721

`A225662(A023717(n))`
-/

namespace A225661.P936424690885165721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225662 (A023717 n).toNat

end

end A225661.P936424690885165721

/-! ## A225661.P751876202036759393

`A225663(record[A004515(n)/2])`
-/

namespace A225661.P751876202036759393
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004515 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225663 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A225661.P751876202036759393

/-! ## A225661.P8653794062641049786

`A225663(record[A004515(n)-n])`
-/

namespace A225661.P8653794062641049786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225663 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225661.P8653794062641049786

/-! ## A225661.P18267874150876709793

`A225663(record[gcd(n, A004515(n))])`
-/

namespace A225661.P18267874150876709793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A004515 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225663 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A225661.P18267874150876709793

/-! ## A225661.P8476520087245582249

`A225663(eq[2*n, A004515(n)])`
-/

namespace A225661.P8476520087245582249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225661.P8476520087245582249

/-! ## A225661.P16002217330623698834

`A225663(eq[n, A004515(n)/2])`
-/

namespace A225661.P16002217330623698834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004515 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225663 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A225661.P16002217330623698834

/-! ## A225661.P3536521590682947243

`A225663(eq[n, A004515(n)-n])`
-/

namespace A225661.P3536521590682947243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225661.P3536521590682947243

/-! ## A225661.P18382498808850415872

`A225663(eq[A004515(n), A005843(n)])`
-/

namespace A225661.P18382498808850415872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225663 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A225661.P18382498808850415872

/-! ## A225661.P3295140266993935411

`A225664(A007089(n))`
-/

namespace A225661.P3295140266993935411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225664 (A007089 n).toNat

end

end A225661.P3295140266993935411

/-! ## A225661.P8873876224729442659

`A225664(lt[A054055(n), 3])`
-/

namespace A225661.P8873876224729442659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225664 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A225661.P8873876224729442659

/-!
# A225662: Number of nonrepeating vectors in a counting procedure that starts with the digits of (n base 4).

The programs for A225662, there is no canonical definition to state claims against.
-/

/-! ## A225662.P12517476727998595744

`A225663(A020654(n+1))`
-/

namespace A225662.P12517476727998595744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225663 (A020654 (n + 1)).toNat

end

end A225662.P12517476727998595744

/-! ## A225662.P1639893328319115945

`A225664(A007090(n))`
-/

namespace A225662.P1639893328319115945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225664 (A007090 n).toNat

end

end A225662.P1639893328319115945

/-! ## A225662.P205202605800185703

`A225664(lt[A054055(n), 4])`
-/

namespace A225662.P205202605800185703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225664 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A225662.P205202605800185703

/-! ## A225662.P13018375855013561465

`A225664(record[A064770(n)])`
-/

namespace A225662.P13018375855013561465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225664 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225662.P13018375855013561465

/-!
# A225663: Number of nonrepeating vectors in a counting procedure that starts with the digits of (n base 5).

The programs for A225663, there is no canonical definition to state claims against.
-/

/-! ## A225663.P13901288219090027923

`A225664(A007091(n))`
-/

namespace A225663.P13901288219090027923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225664 (A007091 n).toNat

end

end A225663.P13901288219090027923

/-! ## A225663.P9541009644024676675

`A225664(lt[A054055(n), 5])`
-/

namespace A225663.P9541009644024676675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225664 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A225663.P9541009644024676675

/-! ## A225663.P15470348802336728000

`A225664(lt[A086066(n), 32])`
-/

namespace A225663.P15470348802336728000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225664 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A225663.P15470348802336728000

/-! ## A225663.P7832892412948594014

`A225664(A014263(n+1)/2)`
-/

namespace A225663.P7832892412948594014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225664 (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) / 2)).toNat

end

end A225663.P7832892412948594014

/-! ## A225663.P655349277371441898

`A225664(record[A106747(n)])`
-/

namespace A225663.P655349277371441898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225664 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225663.P655349277371441898

/-! ## A225663.P9414535262118554547

`A225664(eq[n, A167831(n)])`
-/

namespace A225663.P9414535262118554547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225664 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225663.P9414535262118554547

/-! ## A225663.P12549698233632182699

`A225664(record[A025480(A275775(n+1))])`
-/

namespace A225663.P12549698233632182699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A275775 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225664 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225663.P12549698233632182699

/-!
# A225664: Number of nonrepeating vectors in a counting procedure that starts with the digits of (n base 10).

The programs for A225664, there is no canonical definition to state claims against.
-/

/-! ## A225664.P14869528334447674322

`A225665(A102489(n))`
-/

namespace A225664.P14869528334447674322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225665 (A102489 n).toNat

end

end A225664.P14869528334447674322

/-! ## A225664.P8805543169395780800

`xor(A107846(A106452(n)), A349249(n))`
-/

namespace A225664.P8805543169395780800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A107846 (A106452 n).toNat) (A349249 n)

end

end A225664.P8805543169395780800

/-!
# A225667: Decimal expansion of 13-5*sqrt(5).

The programs for A225667, there is no canonical definition to state claims against.
-/

/-! ## A225667.P4613148739229864282

`A079585(n+1)-2*A000007(n)`
-/

namespace A225667.P4613148739229864282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079585 (n + 1 + 1) - 2 * A000007 n

end

end A225667.P4613148739229864282

/-! ## A225667.P15651966869625981786

`A109866(n+2)-C(2, (n+1)²)`
-/

namespace A225667.P15651966869625981786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (n + 2) - (Nat.choose 2 ((n + 1) ^ 2) : ℤ)

end

end A225667.P15651966869625981786

/-! ## A225667.P12697302453125416267

`A109866(A000038(n)+2+n)`
-/

namespace A225667.P12697302453125416267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (A000038 n + 2 + (n : ℤ)).toNat

end

end A225667.P12697302453125416267

/-! ## A225667.P3783413033707591806

`A094874(n+1-A019590(n+2))`
-/

namespace A225667.P3783413033707591806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094874 (((n + 1 : ℤ) - A019590 (n + 2)).toNat + 1)

end

end A225667.P3783413033707591806

/-! ## A225667.P17064878794202758518

`A109866(A057427(a(n-1)+1)+n+1)` with `a(0)=1`
-/

namespace A225667.P17064878794202758518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109866 (A057427 (a (n - 1) + 1).toNat + (n : ℤ) + 1).toNat

end

end A225667.P17064878794202758518

/-! ## A225667.P8999076741089415211

`A109866(A000041(and(1, a(n-1)))+n+1)` with `a(0)=1`
-/

namespace A225667.P8999076741089415211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109866 (A000041 (Int.land 1 (a (n - 1))).toNat + (n : ℤ) + 1).toNat

end

end A225667.P8999076741089415211

/-! ## A225667.P8047700727263439777

`A109866(A094102(a(n-1)²+1)+n+1)` with `a(0)=1`
-/

namespace A225667.P8047700727263439777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109866 (A094102 (a (n - 1) ^ 2 + 1).toNat + (n : ℤ) + 1).toNat

end

end A225667.P8047700727263439777

/-! ## A225667.P7560119973196905520

`A109866(A035002(and(1, a(n-1))+1)+n+1)` with `a(0)=1`
-/

namespace A225667.P7560119973196905520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109866 (A035002 (Int.land 1 (a (n - 1)) + 1).toNat + (n : ℤ) + 1).toNat

end

end A225667.P7560119973196905520

/-! ## A225667.P4026328180065594108

`A109866(C(a(n-1), A049872(a(n-1)))+n+1)` with `a(0)=1`
-/

namespace A225667.P4026328180065594108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109866 (Nat.choose (a (n - 1)).toNat (A049872 (a (n - 1)).toNat).toNat + n + 1)

end

end A225667.P4026328180065594108

/-! ## A225667.P10938725546001015524

`a(A024155(2*n+1))*A109866(n+2)` with `a(0)=1`
-/

namespace A225667.P10938725546001015524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A024155 (2 * n + 1)).toNat * A109866 (n + 2)

end

end A225667.P10938725546001015524

/-! ## A225667.P17853113987420263055

`A132338(A233583(2*n+1)-n)`
-/

namespace A225667.P17853113987420263055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132338 (A233583 (2 * n + 1) - (n : ℤ)).toNat

end

end A225667.P17853113987420263055

/-! ## A225667.P7341176072007952914

`A094874(floor(log2(A068156(n)+n)))`
-/

namespace A225667.P7341176072007952914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094874 (Nat.log 2 (A068156 n + (n : ℤ)).toNat + 1)

end

end A225667.P7341176072007952914

/-! ## A225667.P12093543851476548645

`A132338(n)-A255308(n²+2)`
-/

namespace A225667.P12093543851476548645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132338 n - A255308 (n ^ 2 + 2)

end

end A225667.P12093543851476548645

/-!
# A225668: a(n) = floor(4*log_2(n)).

The programs for A225668, the canonical program `A225668.P4840926415061456383` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225668 has offset 1).

The definition of A225668 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(4*log2(n+1))` (program `A225668.P4840926415061456383`, by `A225668.P4840926415061456383.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A225668.P4840926415061456383

`floor(4*log2(n+1))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A225668

/-- `floor(4*log2(n+1))` -/
def P4840926415061456383.Spec : Prop :=
  ∀ n, P4840926415061456383.a n = A225668 (n + 1)

theorem P4840926415061456383.correct : P4840926415061456383.Spec := by
  intro n
  simp only [A225668, Nat.add_sub_cancel]

end A225668

/-! ## A225668.P15689228914982829861

`abs(ceil(log2(acot((n+1)^4))))`
-/

namespace A225668.P15689228914982829861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈Real.logb 2 (SequenceMachineLib.acot ((n + 1) ^ 4 : ℝ))⌉|

end

end A225668.P15689228914982829861

namespace A225668

/-- `abs(ceil(log2(acot((n+1)^4))))` -/
def P15689228914982829861.Spec : Prop :=
  ∀ n, P15689228914982829861.a n = A225668 (n + 1)

end A225668

/-! ## A225668.P7325096828241776186

`-ceil(log2(acot((n+1)^4)))`
-/

namespace A225668.P7325096828241776186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈Real.logb 2 (SequenceMachineLib.acot ((n + 1) ^ 4 : ℝ))⌉

end

end A225668.P7325096828241776186

namespace A225668

/-- `-ceil(log2(acot((n+1)^4)))` -/
def P7325096828241776186.Spec : Prop :=
  ∀ n, P7325096828241776186.a n = A225668 (n + 1)

end A225668

/-! ## A225668.P16381391697058712428

`ceil(log2(C((n+1)²+1, 2)))`
-/

namespace A225668.P16381391697058712428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.choose ((n + 1) ^ 2 + 1) 2 : ℝ)⌉

end

end A225668.P16381391697058712428

namespace A225668

/-- `ceil(log2(C((n+1)²+1, 2)))` -/
def P16381391697058712428.Spec : Prop :=
  ∀ n, P16381391697058712428.a n = A225668 (n + 1)

end A225668

/-! ## A225668.P17781488520417857014

`or(floor(log2((n+1)²²)), char[4])`
-/

namespace A225668.P17781488520417857014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.log 2 (((n + 1) ^ 2) ^ 2)) (if ∃ j, f1 j = n then 1 else 0)

end

end A225668.P17781488520417857014

namespace A225668

/-- `or(floor(log2((n+1)²²)), char[4])` -/
def P17781488520417857014.Spec : Prop :=
  ∀ n, (P17781488520417857014.a n : ℤ) = A225668 (n + 1)

end A225668

/-! ## A225668.P14447955733296812101

`ceil(log2(A058310(n)))`
-/

namespace A225668.P14447955733296812101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A058310 n : ℝ)⌉

end

end A225668.P14447955733296812101

namespace A225668

/-- `ceil(log2(A058310(n)))` -/
def P14447955733296812101.Spec : Prop :=
  ∀ n, P14447955733296812101.a n = A225668 (n + 1)

end A225668

/-! ## A225668.P7576479292428332491

`ceil(log2(∑[A005898(n)]))`
-/

namespace A225668.P7576479292428332491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A225668.P7576479292428332491

namespace A225668

/-- `ceil(log2(∑[A005898(n)]))` -/
def P7576479292428332491.Spec : Prop :=
  ∀ n, P7576479292428332491.a n = A225668 (n + 1)

end A225668

/-! ## A225668.P9350986117076958497

`ceil(log2(A027441(n+1)))`
-/

namespace A225668.P9350986117076958497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A027441 (n + 1) : ℝ)⌉

end

end A225668.P9350986117076958497

namespace A225668

/-- `ceil(log2(A027441(n+1)))` -/
def P9350986117076958497.Spec : Prop :=
  ∀ n, P9350986117076958497.a n = A225668 (n + 1)

end A225668

/-! ## A225668.P6327935430096221807

`ceil(log2((A005563(n)+1)²+1))-1`
-/

namespace A225668.P6327935430096221807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((A005563 n + 1) ^ 2 + 1 : ℝ)⌉ - 1

end

end A225668.P6327935430096221807

namespace A225668

/-- `ceil(log2((A005563(n)+1)²+1))-1` -/
def P6327935430096221807.Spec : Prop :=
  ∀ n, P6327935430096221807.a n = A225668 (n + 1)

end A225668

/-! ## A225668.P266710787592461786

`ceil(log2(C(A000005(n+1)+n*(n+2), 2)+1))`
-/

namespace A225668.P266710787592461786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.choose (A000005 (n + 1) + (n * (n + 2) : ℤ)).toNat 2 + 1 : ℝ)⌉

end

end A225668.P266710787592461786

namespace A225668

/-- `ceil(log2(C(A000005(n+1)+n*(n+2), 2)+1))` -/
def P266710787592461786.Spec : Prop :=
  ∀ n, P266710787592461786.a n = A225668 (n + 1)

end A225668

/-! ## A225668.P10060807074668520510

`ceil(log2((n+1)²²+A004770(n+1)/5))-1`
-/

namespace A225668.P10060807074668520510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((((n + 1) ^ 2) ^ 2 : ℚ) + (A004770 (n + 1) : ℚ) / 5 : ℝ)⌉ - 1

end

end A225668.P10060807074668520510

namespace A225668

/-- `ceil(log2((n+1)²²+A004770(n+1)/5))-1` -/
def P10060807074668520510.Spec : Prop :=
  ∀ n, P10060807074668520510.a n = A225668 (n + 1)

end A225668

/-! ## A225668.P680813760433470911

`ceil(log2(A037270(n+1)))`
-/

namespace A225668.P680813760433470911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A037270 (n + 1) : ℝ)⌉

end

end A225668.P680813760433470911

namespace A225668

/-- `ceil(log2(A037270(n+1)))` -/
def P680813760433470911.Spec : Prop :=
  ∀ n, P680813760433470911.a n = A225668 (n + 1)

end A225668

/-! ## A225668.P11782242191390078709

`ceil(log2(A274323(n+1)))`
-/

namespace A225668.P11782242191390078709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A274323 (n + 1) : ℝ)⌉

end

end A225668.P11782242191390078709

namespace A225668

/-- `ceil(log2(A274323(n+1)))` -/
def P11782242191390078709.Spec : Prop :=
  ∀ n, P11782242191390078709.a n = A225668 (n + 1)

end A225668

/-! ## A225668.P6452302797640285935

`ceil(log2((A005563(n+1)-n+1)*A000217(n)+1))`
-/

namespace A225668.P6452302797640285935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((A005563 (n + 1) - (n : ℤ) + 1) * A000217 n + 1 : ℝ)⌉

end

end A225668.P6452302797640285935

namespace A225668

/-- `ceil(log2((A005563(n+1)-n+1)*A000217(n)+1))` -/
def P6452302797640285935.Spec : Prop :=
  ∀ n, P6452302797640285935.a n = A225668 (n + 1)

end A225668

/-! ## A225668.P16951479653590242109

`A358700((n+1)²)-1`
-/

namespace A225668.P16951479653590242109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358700 ((n + 1) ^ 2) - 1

end

end A225668.P16951479653590242109

namespace A225668

/-- `A358700((n+1)²)-1` -/
def P16951479653590242109.Spec : Prop :=
  ∀ n, P16951479653590242109.a n = A225668 (n + 1)

end A225668

/-! ## A225668.P2318926056292247174

`A002266(A004259((n+1)²))`
-/

namespace A225668.P2318926056292247174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A004259 ((n + 1) ^ 2)).toNat

end

end A225668.P2318926056292247174

namespace A225668

/-- `A002266(A004259((n+1)²))` -/
def P2318926056292247174.Spec : Prop :=
  ∀ n, P2318926056292247174.a n = A225668 (n + 1)

end A225668

/-!
# A225669: Slowest-growing sequence of odd primes whose reciprocals sum to 1.

The programs for A225669, there is no canonical definition to state claims against.
-/

/-! ## A225669.P1008861336547893357

`A118848(A032569(n+2))`
-/

namespace A225669.P1008861336547893357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118848 (A032569 (n + 2)).toNat

end

end A225669.P1008861336547893357

/-! ## A225669.P3502058125483969014

`A118848(A306360(n+2))`
-/

namespace A225669.P3502058125483969014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118848 (A306360 (n + 2)).toNat

end

end A225669.P3502058125483969014

/-! ## A225669.P17665737800886952605

`A394708(A347189(n+2))`
-/

namespace A225669.P17665737800886952605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394708 (A347189 (n + 2)).toNat

end

end A225669.P17665737800886952605

/-!
# A225670: Slowest-growing sequence of odd primes p where 1/(p+1) sums to 1 without actually reaching it.

The programs for A225670, there is no canonical definition to state claims against.
-/

/-! ## A225670.P11651203165780796149

`p?[record[A114570(n+3)]]`
-/

namespace A225670.P11651203165780796149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114570 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225670.P11651203165780796149

/-! ## A225670.P17760235565563900394

`record[p?[A274055(n+3)]]`
-/

namespace A225670.P17760235565563900394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274055 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225670.P17760235565563900394

/-! ## A225670.P17311851716176474223

`A000040(∑[C(∑[n], 7*n)+1])`
-/

namespace A225670.P17311851716176474223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) (7 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225670.P17311851716176474223

/-! ## A225670.P17890156933490753201

`A322184(A043717(n+1))`
-/

namespace A225670.P17890156933490753201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322184 (A043717 (n + 1)).toNat

end

end A225670.P17890156933490753201

/-! ## A225670.P16341905189033865800

`A322184(A044825(n+1))`
-/

namespace A225670.P16341905189033865800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322184 (A044825 (n + 1)).toNat

end

end A225670.P16341905189033865800

/-!
# A225671: Largest prime p(k) > p(n) such that 1/p(n) + 1/p(n+1) + ... + 1/p(k) < 1, where p(n) is the n-th prime.

The programs for A225671, there is no canonical definition to state claims against.
-/

/-! ## A225671.P10911846533532936873

`A008578(A092325(n+1))`
-/

namespace A225671.P10911846533532936873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A092325 (n + 1)).toNat

end

end A225671.P10911846533532936873

/-! ## A225671.P11604664943441912011

`A000040(A092325(n+1)-1)`
-/

namespace A225671.P11604664943441912011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A092325 (n + 1) - 1).toNat

end

end A225671.P11604664943441912011

/-! ## A225671.P13641847894954381263

`A008578(A137368(n+1)+n)`
-/

namespace A225671.P13641847894954381263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A137368 (n + 1) + (n : ℤ)).toNat

end

end A225671.P13641847894954381263

/-! ## A225671.P2885433231618869354

`A000040(A327600(n+1)+n)`
-/

namespace A225671.P2885433231618869354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A327600 (n + 1) + (n : ℤ)).toNat

end

end A225671.P2885433231618869354

/-!
# A225674: Triangular numbers of the form p*w, where p is a prime number and w is a prime power (A025475).

The programs for A225674, there is no canonical definition to state claims against.
-/

/-! ## A225674.P1620977529269259790

`C(A225675(n+1)+1, 2)`
-/

namespace A225674.P1620977529269259790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A225675 (n + 1) + 1).toNat 2

end

end A225674.P1620977529269259790

/-! ## A225674.P4676518556395702824

`A000217(A225675(n+1))`
-/

namespace A225674.P4676518556395702824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A225675 (n + 1)).toNat

end

end A225674.P4676518556395702824

/-! ## A225674.P7797510912232722096

`A161680(A225675(n+1)+1)`
-/

namespace A225674.P7797510912232722096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A225675 (n + 1) + 1).toNat

end

end A225674.P7797510912232722096

/-! ## A225674.P1755005805628943783

`A179865(A225675(n+1)+1)`
-/

namespace A225674.P1755005805628943783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A225675 (n + 1) + 1).toNat

end

end A225674.P1755005805628943783

/-! ## A225674.P6892779559035469977

`A000096(A225675(n+1)-1)+1`
-/

namespace A225674.P6892779559035469977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A225675 (n + 1) - 1).toNat + 1

end

end A225674.P6892779559035469977

/-!
# A225675: Numbers n such that triangular(n) is representable as p*w, where p is a prime number and w is a prime power (A025475).

The programs for A225675, there is no canonical definition to state claims against.
-/

/-! ## A225675.P10266694342973179481

`floor(sqrt(2*A225674(n+1)))`
-/

namespace A225675.P10266694342973179481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A225674 (n + 1))

end

end A225675.P10266694342973179481

/-! ## A225675.P11378328427767298164

`A000027(round(sqrt(2*A225674(n+1))))`
-/

namespace A225675.P11378328427767298164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (2 * A225674 (n + 1) : ℝ))).toNat

end

end A225675.P11378328427767298164

/-! ## A225675.P5872015306544919270

`round(sqrt(2*A225674(n+1)))%A001248(n+1)`
-/

namespace A225675.P5872015306544919270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A225674 (n + 1) : ℝ))) (A001248 (n + 1))

end

end A225675.P5872015306544919270

/-! ## A225675.P7748232456054683305

`ceil(sqrt(2*A225674(n+1))-A062157(2*n+1))`
-/

namespace A225675.P7748232456054683305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A225674 (n + 1) : ℝ) - (A062157 (2 * n + 1) : ℝ)⌉

end

end A225675.P7748232456054683305

/-! ## A225675.P11819085578048028561

`A080098(A225674(n+1))`
-/

namespace A225675.P11819085578048028561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A225674 (n + 1)).toNat

end

end A225675.P11819085578048028561

/-!
# A225676: Numbers n such that A054404(n) does not equal round(n/e).

The programs for A225676, there is no canonical definition to state claims against.
-/

/-! ## A225676.P7788166742037188537

`∩[A103762(n+1), A184588(n+1)]`
-/

namespace A225676.P7788166742037188537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225676.P7788166742037188537

/-! ## A225676.P9223980498867886637

`∩[A004526(A054385(2*n+1)), A103762(n+2)]`
-/

namespace A225676.P9223980498867886637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A054385 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103762 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225676.P9223980498867886637

/-! ## A225676.P10100011330079519287

`∩[A110654(A054385(2*n+3)-1), A103762(n+1)]`
-/

namespace A225676.P10100011330079519287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A054385 (2 * n + 3) - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225676.P10100011330079519287

/-! ## A225676.P4472737710245509819

`eq[∑{e}[A194523(n+1), #], A194520(n+1)]`
-/

namespace A225676.P4472737710245509819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194523 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194520 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A225676.P4472737710245509819

/-!
# A225677: Primes of the form p - (product of digits of p), where p is a prime.

The programs for A225677, there is no canonical definition to state claims against.
-/

/-! ## A225677.P16208436847573556323

`∪[A056709(n+1), A344477(n+1)]`
-/

namespace A225677.P16208436847573556323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225677.P16208436847573556323

/-! ## A225677.P3573880785140979391

`∪[A134809(n+1), A344477(n+1)]`
-/

namespace A225677.P3573880785140979391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225677.P3573880785140979391

/-! ## A225677.P9508562998771357057

`∪[A309488(n+1), A344477(n+1)]`
-/

namespace A225677.P9508562998771357057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225677.P9508562998771357057

/-! ## A225677.P4838172621980827393

`∪[A344477(n+1), A345728(n+1)]`
-/

namespace A225677.P4838172621980827393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225677.P4838172621980827393

/-!
# A225678: Triangle read by rows, T(n,k) = sum_{j=0..n} (-1)^(n+k+j) A(n,j)*C(j,n-k), A(n,j) the Eulerian numbers; n >= 0, k >= 0.

The programs for A225678, there is no canonical definition to state claims against.
-/

/-! ## A225678.P10382729384025570769

`∑[A291977(A014682(comp[2*n+3]))]`
-/

namespace A225678.P10382729384025570769
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291977 (A014682 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225678.P10382729384025570769

/-! ## A225678.P16432699890302641233

`A307012(ceil(cosh(A226874(n))))`
-/

namespace A225678.P16432699890302641233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307012 ⌈Real.cosh (A226874 n : ℝ)⌉.toNat

end

end A225678.P16432699890302641233

/-! ## A225678.P4998798040277945035

`A307012(round(cosh(A226874(n))))`
-/

namespace A225678.P4998798040277945035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307012 (SequenceMachineLib.roundAway (Real.cosh (A226874 n : ℝ))).toNat

end

end A225678.P4998798040277945035

/-! ## A225678.P4463518299746620235

`A317531(A267480(n)²+1)`
-/

namespace A225678.P4463518299746620235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317531 (A267480 n ^ 2 + 1).toNat

end

end A225678.P4463518299746620235

/-! ## A225678.P2787573350949486045

`ceil(Δ[A354597(A133041(n))/2])`
-/

namespace A225678.P2787573350949486045
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354597 (A133041 n).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A225678.P2787573350949486045

/-!
# A225679: Numerators of phi(k)/k, as k runs through the squarefree numbers (A005117).

The programs for A225679, the canonical program `A225679.P18090508762940475823` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225679 has offset 1).

The definition of A225679 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A005117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A225679.P18090508762940475823

`A000010(A005117(n+1))/gcd(A000010(A005117(n+1)), A005117(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A225679

/-- `A000010(A005117(n+1))/gcd(A000010(A005117(n+1)), A005117(n+1))` -/
def P18090508762940475823.Spec : Prop :=
  ∀ n, P18090508762940475823.a n = (A225679 (n + 1) : ℚ)

end A225679

/-! ## A225679.P969530115506559300

`A076512(A005117(n+1))`
-/

namespace A225679.P969530115506559300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (A005117 (n + 1)).toNat

end

end A225679.P969530115506559300

namespace A225679

/-- `A076512(A005117(n+1))` -/
def P969530115506559300.Spec : Prop :=
  ∀ n, P969530115506559300.a n = A225679 (n + 1)

end A225679

/-! ## A225679.P15594864366241015511

`A076512(sqrt(A062503(n+1)))`
-/

namespace A225679.P15594864366241015511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (SequenceMachineLib.roundAway (Real.sqrt (A062503 (n + 1) : ℝ))).toNat

end

end A225679.P15594864366241015511

namespace A225679

/-- `A076512(sqrt(A062503(n+1)))` -/
def P15594864366241015511.Spec : Prop :=
  ∀ n, P15594864366241015511.a n = A225679 (n + 1)

end A225679

/-! ## A225679.P15492654347540364509

`A076512(record[A007913(n+1)])`
-/

namespace A225679.P15492654347540364509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225679.P15492654347540364509

namespace A225679

/-- `A076512(record[A007913(n+1)])` -/
def P15492654347540364509.Spec : Prop :=
  ∀ n, P15492654347540364509.a n = A225679 (n + 1)

end A225679

/-! ## A225679.P13460361011024970821

`A076512(record[A007947(n+1)])`
-/

namespace A225679.P13460361011024970821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225679.P13460361011024970821

namespace A225679

/-- `A076512(record[A007947(n+1)])` -/
def P13460361011024970821.Spec : Prop :=
  ∀ n, P13460361011024970821.a n = A225679 (n + 1)

end A225679

/-! ## A225679.P13318228877460184432

`A294649(record[A007947(n+1)])`
-/

namespace A225679.P13318228877460184432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294649 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225679.P13318228877460184432

namespace A225679

/-- `A294649(record[A007947(n+1)])` -/
def P13318228877460184432.Spec : Prop :=
  ∀ n, P13318228877460184432.a n = A225679 (n + 1)

end A225679

/-! ## A225679.P7916516335676243228

`A294649(record[A015052(n+1)])`
-/

namespace A225679.P7916516335676243228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294649 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225679.P7916516335676243228

namespace A225679

/-- `A294649(record[A015052(n+1)])` -/
def P7916516335676243228.Spec : Prop :=
  ∀ n, P7916516335676243228.a n = A225679 (n + 1)

end A225679

/-! ## A225679.P11481422747885452563

`A294649(record[A015053(n+1)])`
-/

namespace A225679.P11481422747885452563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294649 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225679.P11481422747885452563

namespace A225679

/-- `A294649(record[A015053(n+1)])` -/
def P11481422747885452563.Spec : Prop :=
  ∀ n, P11481422747885452563.a n = A225679 (n + 1)

end A225679

/-! ## A225679.P10090156816722018938

`A294649(eq[A000010(n+1), A206369(n+1)]+1)`
-/

namespace A225679.P10090156816722018938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294649 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A225679.P10090156816722018938

namespace A225679

/-- `A294649(eq[A000010(n+1), A206369(n+1)]+1)` -/
def P10090156816722018938.Spec : Prop :=
  ∀ n, P10090156816722018938.a n = A225679 (n + 1)

end A225679

/-! ## A225679.P7997647448766252180

`A076512(A062503(n+1))`
-/

namespace A225679.P7997647448766252180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (A062503 (n + 1)).toNat

end

end A225679.P7997647448766252180

namespace A225679

/-- `A076512(A062503(n+1))` -/
def P7997647448766252180.Spec : Prop :=
  ∀ n, P7997647448766252180.a n = A225679 (n + 1)

end A225679

/-!
# A225680: Denominators of phi(k)/k, as k runs through the squarefree numbers (A005117).

The programs for A225680, the canonical program `A225680.P4214717189862335148` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225680 has offset 1).

The definition of A225680 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A005117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A225680.P4214717189862335148

`A005117(n+1)/gcd(A000010(A005117(n+1)), A005117(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A225680

/-- `A005117(n+1)/gcd(A000010(A005117(n+1)), A005117(n+1))` -/
def P4214717189862335148.Spec : Prop :=
  ∀ n, P4214717189862335148.a n = (A225680 (n + 1) : ℚ)

end A225680

/-! ## A225680.P9993505664041557857

`A319677(record[A007947(n+1)])`
-/

namespace A225680.P9993505664041557857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319677 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225680.P9993505664041557857

namespace A225680

/-- `A319677(record[A007947(n+1)])` -/
def P9993505664041557857.Spec : Prop :=
  ∀ n, P9993505664041557857.a n = A225680 (n + 1)

end A225680

/-! ## A225680.P4375651616314704001

`A005117(n+1)/A348928(A005117(n+1))`
-/

namespace A225680.P4375651616314704001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005117 (n + 1) : ℚ) / (A348928 (A005117 (n + 1)).toNat : ℚ)

end

end A225680.P4375651616314704001

namespace A225680

/-- `A005117(n+1)/A348928(A005117(n+1))` -/
def P4375651616314704001.Spec : Prop :=
  ∀ n, P4375651616314704001.a n = (A225680 (n + 1) : ℚ)

end A225680

/-! ## A225680.P11244675384131354868

`A319677(2*A005117(n+1)-A005117(n+1))`
-/

namespace A225680.P11244675384131354868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319677 (2 * A005117 (n + 1) - A005117 (n + 1)).toNat

end

end A225680.P11244675384131354868

namespace A225680

/-- `A319677(2*A005117(n+1)-A005117(n+1))` -/
def P11244675384131354868.Spec : Prop :=
  ∀ n, P11244675384131354868.a n = A225680 (n + 1)

end A225680

/-! ## A225680.P14822774077989445708

`A109395(A005117(n+1))`
-/

namespace A225680.P14822774077989445708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A005117 (n + 1)).toNat

end

end A225680.P14822774077989445708

namespace A225680

/-- `A109395(A005117(n+1))` -/
def P14822774077989445708.Spec : Prop :=
  ∀ n, P14822774077989445708.a n = A225680 (n + 1)

end A225680

/-! ## A225680.P726488656233011973

`A109395(sqrt(A062503(n+1)))`
-/

namespace A225680.P726488656233011973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (SequenceMachineLib.roundAway (Real.sqrt (A062503 (n + 1) : ℝ))).toNat

end

end A225680.P726488656233011973

namespace A225680

/-- `A109395(sqrt(A062503(n+1)))` -/
def P726488656233011973.Spec : Prop :=
  ∀ n, P726488656233011973.a n = A225680 (n + 1)

end A225680

/-! ## A225680.P7240383907923065209

`A109395(record[A007947(n+1)])`
-/

namespace A225680.P7240383907923065209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225680.P7240383907923065209

namespace A225680

/-- `A109395(record[A007947(n+1)])` -/
def P7240383907923065209.Spec : Prop :=
  ∀ n, P7240383907923065209.a n = A225680 (n + 1)

end A225680

/-! ## A225680.P13316350271658942790

`A109395(lt[n, A007947(n+1)]+1)`
-/

namespace A225680.P13316350271658942790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A225680.P13316350271658942790

namespace A225680

/-- `A109395(lt[n, A007947(n+1)]+1)` -/
def P13316350271658942790.Spec : Prop :=
  ∀ n, P13316350271658942790.a n = A225680 (n + 1)

end A225680

/-! ## A225680.P17589457344043325360

`A109395(eq[1, A008683(n+1)²]+1)`
-/

namespace A225680.P17589457344043325360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A225680.P17589457344043325360

namespace A225680

/-- `A109395(eq[1, A008683(n+1)²]+1)` -/
def P17589457344043325360.Spec : Prop :=
  ∀ n, P17589457344043325360.a n = A225680 (n + 1)

end A225680

/-! ## A225680.P3462103847735813015

`A109395(eq[n+1, A007947(n+1)]+1)`
-/

namespace A225680.P3462103847735813015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A225680.P3462103847735813015

namespace A225680

/-- `A109395(eq[n+1, A007947(n+1)]+1)` -/
def P3462103847735813015.Spec : Prop :=
  ∀ n, P3462103847735813015.a n = A225680 (n + 1)

end A225680

/-! ## A225680.P8765175381889338227

`A109395(eq[n, ∏{p}[n, #]])`
-/

namespace A225680.P8765175381889338227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A225680.P8765175381889338227

namespace A225680

/-- `A109395(eq[n, ∏{p}[n, #]])` -/
def P8765175381889338227.Spec : Prop :=
  ∀ n, P8765175381889338227.a n = A225680 (n + 1)

end A225680

/-! ## A225680.P15243091353871125526

`A295126(record[A007913(n+1)])`
-/

namespace A225680.P15243091353871125526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295126 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225680.P15243091353871125526

namespace A225680

/-- `A295126(record[A007913(n+1)])` -/
def P15243091353871125526.Spec : Prop :=
  ∀ n, P15243091353871125526.a n = A225680 (n + 1)

end A225680

/-! ## A225680.P9406623202613227215

`A295126(A005117(2*n+1-n))`
-/

namespace A225680.P9406623202613227215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295126 (A005117 (2 * n + 1 - n)).toNat

end

end A225680.P9406623202613227215

namespace A225680

/-- `A295126(A005117(2*n+1-n))` -/
def P9406623202613227215.Spec : Prop :=
  ∀ n, P9406623202613227215.a n = A225680 (n + 1)

end A225680

/-! ## A225680.P14621893284556417232

`A109395(eq[A001615(n+1), A048250(n+1)]+1)`
-/

namespace A225680.P14621893284556417232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A225680.P14621893284556417232

namespace A225680

/-- `A109395(eq[A001615(n+1), A048250(n+1)]+1)` -/
def P14621893284556417232.Spec : Prop :=
  ∀ n, P14621893284556417232.a n = A225680 (n + 1)

end A225680

/-!
# A225681: Number of binary words of length n that are not rich.

The programs for A225681, there is no canonical definition to state claims against.
-/

/-! ## A225681.P3518888759863273438

`2^n-A216264(n)`
-/

namespace A225681.P3518888759863273438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A216264 n

end

end A225681.P3518888759863273438

/-! ## A225681.P8099114035474102907

`abs(A000079(n)-A216264(n))`
-/

namespace A225681.P8099114035474102907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A216264 n|

end

end A225681.P8099114035474102907

/-! ## A225681.P956213810921818575

`and(-A216264(n), A000225(n))`
-/

namespace A225681.P956213810921818575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A216264 n) (A000225 n)

end

end A225681.P956213810921818575

/-! ## A225681.P5597246709562191082

`A000051(n)-(A216264(n)+1)`
-/

namespace A225681.P5597246709562191082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A216264 n + 1)

end

end A225681.P5597246709562191082

/-! ## A225681.P14889707680442563656

`A000918(n)+2-A216264(n)`
-/

namespace A225681.P14889707680442563656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n + (2 - A216264 n)

end

end A225681.P14889707680442563656

/-!
# A225682: Triangle read by rows: T(n,k) (0 <= k <= n) = chi(k)*binomial(n,k), where chi(k) = 1,-1,0 according as k == 0,1,2 mod 3.

The programs for A225682, the canonical program `A225682.P5315572198372636391` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225682 has offset 0).

The definition of A225682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225682.P5315572198372636391

`-(((n-(Δ[n²]+(n-comp[∑[n]])²))%3+1)*A007318(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A225682

/-- `-(((n-(Δ[n²]+(n-comp[∑[n]])²))%3+1)*A007318(n))` -/
def P5315572198372636391.Spec : Prop :=
  ∀ n, P5315572198372636391.a n = A225682 n

theorem P5315572198372636391.correct : P5315572198372636391.Spec := by
  intro n
  simp only [A225682]

end A225682

/-! ## A225682.P18328243540529899077

`A007318(n)*A049347(A163330(n))`
-/

namespace A225682.P18328243540529899077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A049347 (A163330 n).toNat

end

end A225682.P18328243540529899077

namespace A225682

/-- `A007318(n)*A049347(A163330(n))` -/
def P18328243540529899077.Spec : Prop :=
  ∀ n, P18328243540529899077.a n = A225682 n

end A225682

/-! ## A225682.P1994833985588530329

`A007318(n)*A030199(A059268(n))`
-/

namespace A225682.P1994833985588530329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A030199 (A059268 n).toNat

end

end A225682.P1994833985588530329

namespace A225682

/-- `A007318(n)*A030199(A059268(n))` -/
def P1994833985588530329.Spec : Prop :=
  ∀ n, P1994833985588530329.a n = A225682 n

end A225682

/-! ## A225682.P13994213265347255900

`Δ[A102363(n)]*A030199(A059268(n))`
-/

namespace A225682.P13994213265347255900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A030199 (A059268 n).toNat

end

end A225682.P13994213265347255900

namespace A225682

/-- `Δ[A102363(n)]*A030199(A059268(n))` -/
def P13994213265347255900.Spec : Prop :=
  ∀ n, P13994213265347255900.a n = A225682 n

end A225682

/-!
# A225683: Numbers divisible by their first digit squared.

The programs for A225683, there is no canonical definition to state claims against.
-/

/-! ## A225683.P12013579977322013411

`eq[lcm(n, A000030(n)²), A028310(n)]`
-/

namespace A225683.P12013579977322013411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A000030 n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225683.P12013579977322013411

/-!
# A225685: Number of words of length n over {0,1,2,3,4,5} which have no factor iji with i>j.

The programs for A225685, there is no canonical definition to state claims against.
-/

/-! ## A225685.P12771551327463698141

`A166047(A086735(n+1))`
-/

namespace A225685.P12771551327463698141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166047 (A086735 (n + 1)).toNat

end

end A225685.P12771551327463698141

/-!
# A225686: a(n) = Fibonacci(2*n^2), a "Somos-like" sequence.

The programs for A225686, there is no canonical definition to state claims against.
-/

/-! ## A225686.P15978975174142468676

`A001906((n+1)²)`
-/

namespace A225686.P15978975174142468676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 ((n + 1) ^ 2)

end

end A225686.P15978975174142468676

/-! ## A225686.P12320599080600466521

`A088305((n+1)²)`
-/

namespace A225686.P12320599080600466521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 ((n + 1) ^ 2)

end

end A225686.P12320599080600466521

/-! ## A225686.P16614035429927618189

`A000045(2*(n+1)²)`
-/

namespace A225686.P16614035429927618189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (n + 1) ^ 2)

end

end A225686.P16614035429927618189

/-! ## A225686.P11497213278232153191

`A237268((n+1)*(n+1))`
-/

namespace A225686.P11497213278232153191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237268 ((n + 1) * (n + 1))

end

end A225686.P11497213278232153191

/-! ## A225686.P15565932597952985274

`record[A000045(2*(1-n)²)]`
-/

namespace A225686.P15565932597952985274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225686.P15565932597952985274

/-!
# A225687: a(n) = A030124(n) - n.

The programs for A225687, there is no canonical definition to state claims against.
-/

/-! ## A225687.P13377353061640969020

`A030124(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A225687.P13377353061640969020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030124 (n + 1) - (n + 1 : ℤ)

end

end A225687.P13377353061640969020

/-! ## A225687.P15471545496788922321

`comp[A081689(n)]-n`
-/

namespace A225687.P15471545496788922321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081689 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A225687.P15471545496788922321

/-! ## A225687.P2132956230049487820

`∑[char[∑[A081688(n)]]]`
-/

namespace A225687.P2132956230049487820
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081688 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225687.P2132956230049487820

/-! ## A225687.P2956708358113278616

`∑[char[A056738(n+1)]]+1`
-/

namespace A225687.P2956708358113278616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056738 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A225687.P2956708358113278616

/-! ## A225687.P6028665484739135696

`Δ[A005228(n+1)]-(n+1)`
-/

namespace A225687.P6028665484739135696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A225687.P6028665484739135696

/-! ## A225687.P15276649718083697180

`a(n-1)+A056731(n)-1` with `a(0)=1`
-/

namespace A225687.P15276649718083697180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A056731 n - 1)

end

end A225687.P15276649718083697180

/-! ## A225687.P9011585235061859114

`comp[A167151(comp[2*n])-1]-n`
-/

namespace A225687.P9011585235061859114
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A225687.P9011585235061859114

/-! ## A225687.P6736284411603843697

`A023443(A030124(n+1)-n)`
-/

namespace A225687.P6736284411603843697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A030124 (n + 1) - (n : ℤ)).toNat

end

end A225687.P6736284411603843697

/-! ## A225687.P5438748998480265783

`A056738(n+1)-A081689(n)`
-/

namespace A225687.P5438748998480265783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056738 (n + 1) - A081689 n

end

end A225687.P5438748998480265783

/-! ## A225687.P2043742220495645214

`A061578(n+1)-A087156(n+1)`
-/

namespace A225687.P2043742220495645214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061578 (n + 1) - A087156 (n + 1)

end

end A225687.P2043742220495645214

/-! ## A225687.P12031593901423894610

`A056738(n+1)+1-A005228(n+1)`
-/

namespace A225687.P12031593901423894610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056738 (n + 1) + (1 - A005228 (n + 1))

end

end A225687.P12031593901423894610

/-! ## A225687.P18075940816575115793

`A005228(n+2)-(A005228(n+1)+n+1)`
-/

namespace A225687.P18075940816575115793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 2) - (A005228 (n + 1) + (n + 1 : ℤ))

end

end A225687.P18075940816575115793

/-! ## A225687.P2149155801727856969

`A081688(n+1)-n`
-/

namespace A225687.P2149155801727856969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081688 (n + 1) - (n : ℤ)

end

end A225687.P2149155801727856969

/-! ## A225687.P18371245399814029084

`Δ[A065130(n+1)]+1`
-/

namespace A225687.P18371245399814029084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A225687.P18371245399814029084

/-! ## A225687.P17896417415752271364

`Δ[A005228(n+1)-∑[n]]`
-/

namespace A225687.P17896417415752271364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225687.P17896417415752271364

/-! ## A225687.P15873796974885322120

`Δ[A005228(n+1)%A089594(n+1)]+1`
-/

namespace A225687.P15873796974885322120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005228 (n + 1)) (A089594 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A225687.P15873796974885322120

/-! ## A225687.P9423550458076540005

`A232746(A081688(n+1))`
-/

namespace A225687.P9423550458076540005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232746 (A081688 (n + 1)).toNat

end

end A225687.P9423550458076540005

/-! ## A225687.P15710574655743879100

`A232746(A030124(n+1)-1)`
-/

namespace A225687.P15710574655743879100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232746 (A030124 (n + 1) - 1).toNat

end

end A225687.P15710574655743879100

/-! ## A225687.P945307674802528407

`A232746(A061578(n+2)-2)`
-/

namespace A225687.P945307674802528407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232746 (A061578 (n + 2) - 2).toNat

end

end A225687.P945307674802528407

/-! ## A225687.P2749904036828053899

`A232746(A232746(n+1)+n+1)`
-/

namespace A225687.P2749904036828053899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232746 (A232746 (n + 1) + (n + 1 : ℤ)).toNat

end

end A225687.P2749904036828053899

/-!
# A225688: E.g.f.: sec(x)^3+(sec(x)^2*tan(x)).

The programs for A225688, there is no canonical definition to state claims against.
-/

/-! ## A225688.P10489745312549354336

`A225689(n)+abs(A122045(n))`
-/

namespace A225688.P10489745312549354336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225689 n + |A122045 n|

end

end A225688.P10489745312549354336

/-! ## A225688.P15012128563078840621

`A225689(n)+A008280(∑[n])`
-/

namespace A225688.P15012128563078840621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225689 n + A008280 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225688.P15012128563078840621

/-! ## A225688.P16187934713723148496

`record[A181937(n)]-A225689(n)`
-/

namespace A225688.P16187934713723148496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A225689 n

end

end A225688.P16187934713723148496

/-! ## A225688.P14684317259258693503

`record[A229892(n)]-A225689(n)`
-/

namespace A225688.P14684317259258693503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A225689 n

end

end A225688.P14684317259258693503

/-! ## A225688.P4550705692548324555

`A000111(n+2)-A225689(n)`
-/

namespace A225688.P4550705692548324555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (n + 2) - A225689 n

end

end A225688.P4550705692548324555

/-! ## A225688.P16948475371771840115

`record[A010094(n+1)]-A225689(n)`
-/

namespace A225688.P16948475371771840115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A225689 n

end

end A225688.P16948475371771840115

/-! ## A225688.P10427683273439470894

`A337193(n+2)/∑[n+1]`
-/

namespace A225688.P10427683273439470894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337193 (n + 2) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A225688.P10427683273439470894

/-!
# A225689: E.g.f.: sec(x)^2*tan(x)+sec(x)*tan(x)^2.

The programs for A225689, there is no canonical definition to state claims against.
-/

/-! ## A225689.P17844709975305113930

`A225688(n)-abs(A122045(n))`
-/

namespace A225689.P17844709975305113930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225688 n - |A122045 n|

end

end A225689.P17844709975305113930

/-! ## A225689.P14750015665687665943

`A225688(n)-A008280(∑[n])`
-/

namespace A225689.P14750015665687665943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225688 n - A008280 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225689.P14750015665687665943

/-! ## A225689.P6732413579909535171

`record[A181937(n)]-A225688(n)`
-/

namespace A225689.P6732413579909535171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A225688 n

end

end A225689.P6732413579909535171

/-! ## A225689.P17738653118795271048

`record[A229892(n)]-A225688(n)`
-/

namespace A225689.P17738653118795271048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A225688 n

end

end A225689.P17738653118795271048

/-! ## A225689.P17979806565125488377

`A000111(n+2)-A225688(n)`
-/

namespace A225689.P17979806565125488377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (n + 2) - A225688 n

end

end A225689.P17979806565125488377

/-! ## A225689.P9737531400848282742

`record[A010094(n+1)]-A225688(n)`
-/

namespace A225689.P9737531400848282742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A225688 n

end

end A225689.P9737531400848282742

/-!
# A225690: Number of Dyck paths of semilength n avoiding the pattern U^3 D^3 U D.

The programs for A225690, the canonical program `A225690.P15251627480802191528` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225690 has offset 0).

The definition of A225690 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225690.P15251627480802191528

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5, a(4)=13, a(5)=28, a(6)=48`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A225690

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P15251627480802191528.Spec : Prop :=
  ∀ n, P15251627480802191528.a n = A225690 n

theorem P15251627480802191528.correct : P15251627480802191528.Spec := by
  intro n
  simp only [A225690]

end A225690

/-!
# A225691: Number of Dyck paths of semilength n avoiding the pattern U^4 D^4 U D.

The programs for A225691, the canonical program `A225691.P17830926761379381320` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225691 has offset 0).

The definition of A225691 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225691.P17830926761379381320

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5, a(4)=14, a(5)=41, a(6)=110, a(7)=245, a(8)=450, a(9)=739`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A225691

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P17830926761379381320.Spec : Prop :=
  ∀ n, P17830926761379381320.a n = A225691 n

theorem P17830926761379381320.correct : P17830926761379381320.Spec := by
  intro n
  simp only [A225691]

end A225691

/-! ## A225691.P9649538874827171580

`A055086(∏[or(n, a(n-1))])` with `a(0)=1`
-/

namespace A225691.P9649538874827171580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lor n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A225691.P9649538874827171580

namespace A225691

/-- `A055086(∏[or(n, a(n-1))])` -/
def P9649538874827171580.Spec : Prop :=
  ∀ n, P9649538874827171580.a n = A225691 n

end A225691

/-! ## A225691.P11800534709285334617

`A161205(∏[or(n, a(n-1))])` with `a(0)=1`
-/

namespace A225691.P11800534709285334617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lor n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A225691.P11800534709285334617

namespace A225691

/-- `A161205(∏[or(n, a(n-1))])` -/
def P11800534709285334617.Spec : Prop :=
  ∀ n, P11800534709285334617.a n = A225691 n

end A225691

/-!
# A225692: Number of Dyck paths of semilength n avoiding the pattern U^(n-1) D^(n-1).

The programs for A225692, there is no canonical definition to state claims against.
-/

/-! ## A225692.P11439102354963708592

`∏[(n-3)/(n+3)+3]-1-(n+1)²`
-/

namespace A225692.P11439102354963708592
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 : ℚ) / (n + 3 : ℚ) + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1 - ((n + 1) ^ 2 : ℚ)

end

end A225692.P11439102354963708592

/-! ## A225692.P10451746948897387466

`∑[∑[A026012(n)-2]+1]`
-/

namespace A225692.P10451746948897387466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225692.P10451746948897387466

/-! ## A225692.P3554714596586360759

`∑[2-∑[2-Δ[A071724(n)]]]`
-/

namespace A225692.P3554714596586360759
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225692.P3554714596586360759

/-! ## A225692.P3727640222577248502

`∑[A000245(n+1)-Δ[n²]]`
-/

namespace A225692.P3727640222577248502
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225692.P3727640222577248502

/-! ## A225692.P10397758432423936821

`∑[∑[Δ[A000245(n)]-1]-n]`
-/

namespace A225692.P10397758432423936821
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225692.P10397758432423936821

/-!
# A225693: Alternating sum of digits of n.

The programs for A225693, there is no canonical definition to state claims against.
-/

/-! ## A225693.P10376151511741879010

`A055017(A004086(n))`
-/

namespace A225693.P10376151511741879010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A004086 n).toNat

end

end A225693.P10376151511741879010

/-! ## A225693.P5554968450772942934

`A055017(A056964(n)-n)`
-/

namespace A225693.P5554968450772942934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A056964 n - (n : ℤ)).toNat

end

end A225693.P5554968450772942934

/-! ## A225693.P7836299975118416068

`A000030(n)-A217657(A051022(n))`
-/

namespace A225693.P7836299975118416068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n - A217657 (A051022 n).toNat

end

end A225693.P7836299975118416068

/-! ## A225693.P16618770313865173039

`A088133(A056142(n))-A007953(n)`
-/

namespace A225693.P16618770313865173039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088133 (A056142 n).toNat - A007953 n

end

end A225693.P16618770313865173039

/-! ## A225693.P8783518021574469939

`A088133(A056142(n))-A076314(n)`
-/

namespace A225693.P8783518021574469939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088133 (A056142 n).toNat - A076314 n

end

end A225693.P8783518021574469939

/-! ## A225693.P6719906586672987671

`A000030(A056142(n))-A217657(n)`
-/

namespace A225693.P6719906586672987671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A056142 n).toNat - A217657 n

end

end A225693.P6719906586672987671

/-! ## A225693.P4737884817913146656

`A088133(A056142(n))+A076314(n)/A049347(3*n+4)`
-/

namespace A225693.P4737884817913146656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088133 (A056142 n).toNat : ℚ) + (A076314 n : ℚ) / (A049347 (3 * n + 4) : ℚ)

end

end A225693.P4737884817913146656

/-! ## A225693.P17300749338280025250

`A334387(n)-A066568(n)`
-/

namespace A225693.P17300749338280025250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334387 n - A066568 n

end

end A225693.P17300749338280025250

/-!
# A225694: Triangle read by rows of operator ordering coefficients corresponding to the Legendre polynomials L_n(x).

The programs for A225694, there is no canonical definition to state claims against.
-/

/-! ## A225694.P1105094816842658303

`A067992(A002372(n+1)+A000248(n))`
-/

namespace A225694.P1105094816842658303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067992 (A002372 (n + 1) + A000248 n).toNat

end

end A225694.P1105094816842658303

/-!
# A225697: Numerators of mass formula for vacuum graphs for a phi^4 field theory.

The programs for A225697, there is no canonical definition to state claims against.
-/

/-! ## A225697.P11237808445070223330

`A220412((n+1)*comp[or(2, n)+n])`
-/

namespace A225697.P11237808445070223330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220412 ((n + 1) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A225697.P11237808445070223330

/-!
# A225698: Denominators of mass formula for vacuum graphs for a phi^4 field theory.

The programs for A225698, there is no canonical definition to state claims against.
-/

/-! ## A225698.P2200589036184421527

`A060839(A067002(n))*A061549(n)`
-/

namespace A225698.P2200589036184421527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060839 (A067002 n).toNat * A061549 n

end

end A225698.P2200589036184421527

/-! ## A225698.P7008234545164529871

`lcm(A010888(A001147(n)), A061549(n))`
-/

namespace A225698.P7008234545164529871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010888 (A001147 n).toNat) (A061549 n)

end

end A225698.P7008234545164529871

/-!
# A225699: Numerators of coefficients arising from q-expansion of Integrate[eta[q^4]^8/eta[q^2]^4, q]/q where eta is the Dedekind eta function.

The programs for A225699, the canonical program `A225699.P15182149105449095167` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225699 has offset 0).

The definition of A225699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225699.P15182149105449095167

`lcm(4*(n+1), A005880(n))/(4*(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A225699

/-- `lcm(4*(n+1), A005880(n))/(4*(n+1))` -/
def P15182149105449095167.Spec : Prop :=
  ∀ n, P15182149105449095167.a n = (A225699 n : ℚ)

end A225699

/-! ## A225699.P15446046275965149734

`lcm(2*(n+1), A000203(2*n+1))/(2*(n+1))`
-/

namespace A225699.P15446046275965149734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (2 * (n + 1) : ℤ) (A000203 (2 * n + 1)) : ℚ) / (2 * (n + 1) : ℚ)

end

end A225699.P15446046275965149734

namespace A225699

/-- `lcm(2*(n+1), A000203(2*n+1))/(2*(n+1))` -/
def P15446046275965149734.Spec : Prop :=
  ∀ n, P15446046275965149734.a n = (A225699 n : ℚ)

end A225699

/-! ## A225699.P2181671117313010991

`A000203(2*n+1)/A339964(2*n+1)`
-/

namespace A225699.P2181671117313010991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (2 * n + 1) : ℚ) / (A339964 (2 * n + 1) : ℚ)

end

end A225699.P2181671117313010991

namespace A225699

/-- `A000203(2*n+1)/A339964(2*n+1)` -/
def P2181671117313010991.Spec : Prop :=
  ∀ n, P2181671117313010991.a n = (A225699 n : ℚ)

end A225699

/-! ## A225699.P12375633411450354283

`A339965(Δ[n²])`
-/

namespace A225699.P12375633411450354283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339965 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A225699.P12375633411450354283

namespace A225699

/-- `A339965(Δ[n²])` -/
def P12375633411450354283.Spec : Prop :=
  ∀ n, P12375633411450354283.a n = A225699 n

end A225699

/-! ## A225699.P5921078478933498650

`root(A339965(2*n+1), 2)²`
-/

namespace A225699.P5921078478933498650
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A339965 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A225699.P5921078478933498650

namespace A225699

/-- `root(A339965(2*n+1), 2)²` -/
def P5921078478933498650.Spec : Prop :=
  ∀ n, P5921078478933498650.a n = (A225699 n : ℝ)

end A225699

/-! ## A225699.P7149242592223861935

`or(char[1], A339965(A005408(n)))`
-/

namespace A225699.P7149242592223861935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A339965 (A005408 n).toNat)

end

end A225699.P7149242592223861935

namespace A225699

/-- `or(char[1], A339965(A005408(n)))` -/
def P7149242592223861935.Spec : Prop :=
  ∀ n, P7149242592223861935.a n = A225699 n

end A225699

/-! ## A225699.P17502131652403147949

`∑{d}[A339965(2*n+1), A000010(#)]`
-/

namespace A225699.P17502131652403147949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339965 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A225699.P17502131652403147949

namespace A225699

/-- `∑{d}[A339965(2*n+1), A000010(#)]` -/
def P17502131652403147949.Spec : Prop :=
  ∀ n, P17502131652403147949.a n = A225699 n

end A225699

/-! ## A225699.P6874327723228514946

`A007318(∑[n])*A339965(2*n+1)`
-/

namespace A225699.P6874327723228514946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A339965 (2 * n + 1)

end

end A225699.P6874327723228514946

namespace A225699

/-- `A007318(∑[n])*A339965(2*n+1)` -/
def P6874327723228514946.Spec : Prop :=
  ∀ n, P6874327723228514946.a n = A225699 n

end A225699

