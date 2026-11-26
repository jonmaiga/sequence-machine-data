import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C013
import Seq.B001.C014
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C001
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
# A401700: Primes p for which there exists a noncomposite q < p such that (p# / q#) == +1 mod r, where p# = A034386(p), and r is the least prime larger than p.

The programs for A401700, there is no canonical definition to state claims against.
-/

/-! ## A401700.P1434485726269443728

`A000040(A401372(n+1))`
-/

namespace A401700.P1434485726269443728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A401372 (n + 1)).toNat

end

end A401700.P1434485726269443728

/-! ## A401700.P5269663397011174372

`A064989(A401373(n+1))`
-/

namespace A401700.P5269663397011174372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A401373 (n + 1)).toNat

end

end A401700.P5269663397011174372

/-!
# A401701: Noncomposites p for which there exists a noncomposite q <= p such that (p# / q#) == -1 mod r, where p# = A034386(p), and r is the least prime larger than p.

The programs for A401701, there is no canonical definition to state claims against.
-/

/-! ## A401701.P5686914316775851268

`A064989(A401061(n+1))`
-/

namespace A401701.P5686914316775851268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A401061 (n + 1)).toNat

end

end A401701.P5686914316775851268

/-! ## A401701.P4577539642442455007

`A008578(A401065(n+1)+1)`
-/

namespace A401701.P4577539642442455007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A401065 (n + 1) + 1).toNat

end

end A401701.P4577539642442455007

/-!
# A401702: Primes p for which there exists a noncomposite q <= p such that 2*(p# / q#) == -1 mod r, where p# = A034386(p), and r is the least prime larger than p.

The programs for A401702, there is no canonical definition to state claims against.
-/

/-! ## A401702.P10786686501492319565

`A000040(A401059(n+1))`
-/

namespace A401702.P10786686501492319565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A401059 (n + 1)).toNat

end

end A401702.P10786686501492319565

/-! ## A401702.P13356136842924828299

`A064989(A400843(n+1))`
-/

namespace A401702.P13356136842924828299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A400843 (n + 1)).toNat

end

end A401702.P13356136842924828299

/-! ## A401702.P8399396519931333945

`A008578(A401059(n+1)+1)`
-/

namespace A401702.P8399396519931333945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A401059 (n + 1) + 1).toNat

end

end A401702.P8399396519931333945

/-!
# A401703: Primes p for which there exists a noncomposite q <= p such that 3*(p# / q#) == -1 mod r, where p# = A034386(p), and r is the least prime larger than p.

The programs for A401703, there is no canonical definition to state claims against.
-/

/-! ## A401703.P2844341584564877117

`A064989(A401063(n+1))`
-/

namespace A401703.P2844341584564877117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A401063 (n + 1)).toNat

end

end A401703.P2844341584564877117

/-!
# A401704: Numbers k such that A401705(k) < A401707(k).

The programs for A401704, there is no canonical definition to state claims against.
-/

/-! ## A401704.P12588411201901796756

`∩[A102749(n+1), A118844(n+1)]`
-/

namespace A401704.P12588411201901796756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401704.P12588411201901796756

/-! ## A401704.P3559307158305756583

`∩[A102749(n+1), A274231(n+1)]`
-/

namespace A401704.P3559307158305756583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401704.P3559307158305756583

/-! ## A401704.P5737242394694445350

`∩[A102749(n+1), A298748(n+1)]`
-/

namespace A401704.P5737242394694445350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401704.P5737242394694445350

/-! ## A401704.P1819707948870829846

`filter[A102749(n+1), A103842(#)]`
-/

namespace A401704.P1819707948870829846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103842 (f1 j).toNat = 1) n)

end

end A401704.P1819707948870829846

/-! ## A401704.P13640356683567775964

`filter[A102749(n+1), A289748(#)]`
-/

namespace A401704.P13640356683567775964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289748 (f1 j).toNat = 1) n)

end

end A401704.P13640356683567775964

/-!
# A401705: a(n) is a unitary divisor d of n with gcd(d, sigma(d)) = 1 constructed by the algorithm B in Pollack & Pomerance "Prime-Perfect Numbers" paper. See comments for the description.

The programs for A401705, there is no canonical definition to state claims against.
-/

/-! ## A401705.P3525301950468416047

`(n+1)/A401706(n+1)`
-/

namespace A401705.P3525301950468416047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A401706 (n + 1) : ℚ)

end

end A401705.P3525301950468416047

/-!
# A401706: a(n) = n / A401705(n).

The programs for A401706, there is no canonical definition to state claims against.
-/

/-! ## A401706.P5314358418583494917

`(n+1)/A401705(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401706.P5314358418583494917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A401705 (n + 1) : ℚ)

end

end A401706.P5314358418583494917

/-! ## A401706.P4976216302707331321

`gcd(A319404(n+1), A327395(n+1))`
-/

namespace A401706.P4976216302707331321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A319404 (n + 1)) (A327395 (n + 1))

end

end A401706.P4976216302707331321

/-! ## A401706.P11900340730836262318

`and(A051119(n+1), A264803(n+1))`
-/

namespace A401706.P11900340730836262318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051119 (n + 1)) (A264803 (n + 1))

end

end A401706.P11900340730836262318

/-! ## A401706.P9998369607553960643

`A327395(A290480(n+1))`
-/

namespace A401706.P9998369607553960643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327395 (A290480 (n + 1)).toNat

end

end A401706.P9998369607553960643

/-! ## A401706.P12077314313382223277

`gcd(A350520(n), A351436(n+1))`
-/

namespace A401706.P12077314313382223277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A350520 n) (A351436 (n + 1))

end

end A401706.P12077314313382223277

/-!
# A401707: The largest unitary divisor d of n with gcd(d, sigma(d)) = 1.

The programs for A401707, there is no canonical definition to state claims against.
-/

/-! ## A401707.P3401824502012688141

`(n+1)/A401708(n+1)`
-/

namespace A401707.P3401824502012688141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A401708 (n + 1) : ℚ)

end

end A401707.P3401824502012688141

/-!
# A401708: a(n) = n / A401707(n), where A401707(n) is the largest unitary divisor d of n with gcd(d, sigma(d)) = 1.

The programs for A401708, there is no canonical definition to state claims against.
-/

/-! ## A401708.P11940657914461939289

`(n+1)/A401707(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401708.P11940657914461939289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A401707 (n + 1) : ℚ)

end

end A401708.P11940657914461939289

/-! ## A401708.P3709864390495444422

`gcd(A067625(n+1), A114536(n+1))`
-/

namespace A401708.P3709864390495444422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067625 (n + 1)) (A114536 (n + 1))

end

end A401708.P3709864390495444422

/-! ## A401708.P2644850169097337028

`and(A264803(n+1), A284600(n+1))`
-/

namespace A401708.P2644850169097337028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A264803 (n + 1)) (A284600 (n + 1))

end

end A401708.P2644850169097337028

/-! ## A401708.P10986333783300416199

`gcd(A185315(n), A345994(n+1))`
-/

namespace A401708.P10986333783300416199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185315 n) (A345994 (n + 1))

end

end A401708.P10986333783300416199

/-! ## A401708.P12135585905698071460

`gcd(A037219(n), A114536(n+1))`
-/

namespace A401708.P12135585905698071460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037219 n) (A114536 (n + 1))

end

end A401708.P12135585905698071460

/-!
# A401709: a(n) = sigma(n)/d, where d is the largest divisor d of sigma(n) that is relatively prime with n.

The programs for A401709, the canonical program `A401709.P2327155422441615527` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401709 has offset 1).

The definition of A401709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401709.P10303346294322294841

`A009194(n+1)*A401710(n+1)`
-/

namespace A401709.P10303346294322294841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1) * A401710 (n + 1)

end

end A401709.P10303346294322294841

namespace A401709

/-- `A009194(n+1)*A401710(n+1)` -/
def P10303346294322294841.Spec : Prop :=
  ∀ n, P10303346294322294841.a n = A401709 (n + 1)

end A401709

/-! ## A401709.P9375526223081429586

`A000203(n+1)/A401375(n+1)`
-/

namespace A401709.P9375526223081429586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A401375 (n + 1) : ℚ)

end

end A401709.P9375526223081429586

namespace A401709

/-- `A000203(n+1)/A401375(n+1)` -/
def P9375526223081429586.Spec : Prop :=
  ∀ n, P9375526223081429586.a n = (A401709 (n + 1) : ℚ)

end A401709

/-! ## A401709.P2327155422441615527

`gcd(A133900(n+1), A272211(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A401709

/-- `gcd(A133900(n+1), A272211(n+1))` -/
def P2327155422441615527.Spec : Prop :=
  ∀ n, (P2327155422441615527.a n : ℤ) = A401709 (n + 1)

theorem P2327155422441615527.correct : P2327155422441615527.Spec := by
  intro n
  simp only [A401709, Nat.add_sub_cancel]

end A401709

/-! ## A401709.P1932163678018330398

`A000203(n+1)*A401710(n+1)/A017665(n+1)`
-/

namespace A401709.P1932163678018330398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A401710 (n + 1) : ℚ) / (A017665 (n + 1) : ℚ)

end

end A401709.P1932163678018330398

namespace A401709

/-- `A000203(n+1)*A401710(n+1)/A017665(n+1)` -/
def P1932163678018330398.Spec : Prop :=
  ∀ n, P1932163678018330398.a n = (A401709 (n + 1) : ℚ)

end A401709

/-! ## A401709.P847040487836469920

`A009194(n+1)*A017665(n+1)/A401375(n+1)`
-/

namespace A401709.P847040487836469920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009194 (n + 1) * A017665 (n + 1) : ℚ) / (A401375 (n + 1) : ℚ)

end

end A401709.P847040487836469920

namespace A401709

/-- `A009194(n+1)*A017665(n+1)/A401375(n+1)` -/
def P847040487836469920.Spec : Prop :=
  ∀ n, P847040487836469920.a n = (A401709 (n + 1) : ℚ)

end A401709

/-! ## A401709.P6458260011952981725

`gcd(A117926(n+1), A143348(n+1))`
-/

namespace A401709.P6458260011952981725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117926 (n + 1)) (A143348 (n + 1))

end

end A401709.P6458260011952981725

namespace A401709

/-- `gcd(A117926(n+1), A143348(n+1))` -/
def P6458260011952981725.Spec : Prop :=
  ∀ n, (P6458260011952981725.a n : ℤ) = A401709 (n + 1)

end A401709

/-! ## A401709.P13990547661068551038

`gcd(A000203(n+1), A077163(n+1))`
-/

namespace A401709.P13990547661068551038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A077163 (n + 1))

end

end A401709.P13990547661068551038

namespace A401709

/-- `gcd(A000203(n+1), A077163(n+1))` -/
def P13990547661068551038.Spec : Prop :=
  ∀ n, (P13990547661068551038.a n : ℤ) = A401709 (n + 1)

end A401709

/-! ## A401709.P9295070494048231103

`gcd(A000203(n+1), A051190(n+1))`
-/

namespace A401709.P9295070494048231103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A051190 (n + 1))

end

end A401709.P9295070494048231103

namespace A401709

/-- `gcd(A000203(n+1), A051190(n+1))` -/
def P9295070494048231103.Spec : Prop :=
  ∀ n, (P9295070494048231103.a n : ℤ) = A401709 (n + 1)

end A401709

/-! ## A401709.P7157298131368447624

`gcd(A060866(n+1), A062776(n+1))`
-/

namespace A401709.P7157298131368447624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060866 (n + 1)) (A062776 (n + 1))

end

end A401709.P7157298131368447624

namespace A401709

/-- `gcd(A060866(n+1), A062776(n+1))` -/
def P7157298131368447624.Spec : Prop :=
  ∀ n, (P7157298131368447624.a n : ℤ) = A401709 (n + 1)

end A401709

/-! ## A401709.P10738599361273714533

`gcd(A000203(n+1), A152291(n))`
-/

namespace A401709.P10738599361273714533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A152291 n)

end

end A401709.P10738599361273714533

namespace A401709

/-- `gcd(A000203(n+1), A152291(n))` -/
def P10738599361273714533.Spec : Prop :=
  ∀ n, (P10738599361273714533.a n : ℤ) = A401709 (n + 1)

end A401709

/-!
# A401710: a(n) = A017665(n) / A401375(n), where A017665(n) = sigma(n)/gcd(n,sigma(n)), A401375(n) is the largest divisor of sigma(n) coprime with n, and sigma is the sum of divisors function.

The programs for A401710, the canonical program `A401710.P3001725798875368537` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401710 has offset 1).

The definition of A401710 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A401709, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401710.P3001725798875368537

`A401709(n+1)/A009194(n+1)`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A401710

/-- `A401709(n+1)/A009194(n+1)` -/
def P3001725798875368537.Spec : Prop :=
  ∀ n, P3001725798875368537.a n = (A401710 (n + 1) : ℚ)

end A401710

/-! ## A401710.P16529785314252722126

`A017665(n+1)/A401375(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401710.P16529785314252722126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017665 (n + 1) : ℚ) / (A401375 (n + 1) : ℚ)

end

end A401710.P16529785314252722126

namespace A401710

/-- `A017665(n+1)/A401375(n+1)` -/
def P16529785314252722126.Spec : Prop :=
  ∀ n, P16529785314252722126.a n = (A401710 (n + 1) : ℚ)

end A401710

/-! ## A401710.P14400827608004134050

`gcd(A017665(n+1), A077163(n+1))`
-/

namespace A401710.P14400827608004134050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017665 (n + 1)) (A077163 (n + 1))

end

end A401710.P14400827608004134050

namespace A401710

/-- `gcd(A017665(n+1), A077163(n+1))` -/
def P14400827608004134050.Spec : Prop :=
  ∀ n, (P14400827608004134050.a n : ℤ) = A401710 (n + 1)

end A401710

/-! ## A401710.P9922541384982843762

`gcd(A017665(n+1), A051190(n+1))`
-/

namespace A401710.P9922541384982843762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017665 (n + 1)) (A051190 (n + 1))

end

end A401710.P9922541384982843762

namespace A401710

/-- `gcd(A017665(n+1), A051190(n+1))` -/
def P9922541384982843762.Spec : Prop :=
  ∀ n, (P9922541384982843762.a n : ℤ) = A401710 (n + 1)

end A401710

/-! ## A401710.P7082316934191860945

`gcd(A017665(n+1), A241986(n))`
-/

namespace A401710.P7082316934191860945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017665 (n + 1)) (A241986 n)

end

end A401710.P7082316934191860945

namespace A401710

/-- `gcd(A017665(n+1), A241986(n))` -/
def P7082316934191860945.Spec : Prop :=
  ∀ n, (P7082316934191860945.a n : ℤ) = A401710 (n + 1)

end A401710

/-!
# A401714: a(n) = 1 if A003557(n) < A053669(n), otherwise 0, where A003557(n) is n divided by its squarefree kernel, and A053669(n) is the smallest prime not dividing n.

The programs for A401714, the canonical program `A401714.P6768754910253124235` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401714 has offset 1).

The definition of A401714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401714.P6768754910253124235

`Δ[fp[A393981(n+1)]]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A401714

/-- `Δ[fp[A393981(n+1)]]` -/
def P6768754910253124235.Spec : Prop :=
  ∀ n, P6768754910253124235.a n = A401714 (n + 1)

theorem P6768754910253124235.correct : P6768754910253124235.Spec := by
  intro n
  simp only [A401714, Nat.add_sub_cancel]

end A401714

/-! ## A401714.P9168495009160341126

`A000007(A360543(n+1))`
-/

namespace A401714.P9168495009160341126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A360543 (n + 1)).toNat

end

end A401714.P9168495009160341126

namespace A401714

/-- `A000007(A360543(n+1))` -/
def P9168495009160341126.Spec : Prop :=
  ∀ n, P9168495009160341126.a n = A401714 (n + 1)

end A401714

/-! ## A401714.P11004671503236465771

`A401715(n+1)`
-/

namespace A401714.P11004671503236465771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401715 (n + 1)

end

end A401714.P11004671503236465771

namespace A401714

/-- `A401715(n+1)` -/
def P11004671503236465771.Spec : Prop :=
  ∀ n, P11004671503236465771.a n = A401714 (n + 1)

end A401714

/-! ## A401714.P3048548780667587149

`A303709(A100953(n*A303709(n+1)))`
-/

namespace A401714.P3048548780667587149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303709 (A100953 ((n : ℤ) * A303709 (n + 1)).toNat).toNat

end

end A401714.P3048548780667587149

namespace A401714

/-- `A303709(A100953(n*A303709(n+1)))` -/
def P3048548780667587149.Spec : Prop :=
  ∀ n, P3048548780667587149.a n = A401714 (n + 1)

end A401714

/-! ## A401714.P7766524978399910831

`A267635(A369687(n+1))`
-/

namespace A401714.P7766524978399910831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 (A369687 (n + 1)).toNat

end

end A401714.P7766524978399910831

namespace A401714

/-- `A267635(A369687(n+1))` -/
def P7766524978399910831.Spec : Prop :=
  ∀ n, P7766524978399910831.a n = A401714 (n + 1)

end A401714

/-!
# A401715: a(n) = 1 if {sum of unitary divisors of n} plus {sum of squarefree divisors of n} >= 2*n, otherwise 0.

The programs for A401715, the canonical program `A401715.P1986271179111597576` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401715 has offset 1).

The definition of A401715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401715.P1986271179111597576

`Δ[fp[A389215(n+1)]]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A401715

/-- `Δ[fp[A389215(n+1)]]` -/
def P1986271179111597576.Spec : Prop :=
  ∀ n, P1986271179111597576.a n = A401715 (n + 1)

theorem P1986271179111597576.correct : P1986271179111597576.Spec := by
  intro n
  simp only [A401715, Nat.add_sub_cancel]

end A401715

/-!
# A401716: a(n) = 1 if A003557(n) < A053669(n) and n is neither squarefree nor prime power, otherwise 0, where A003557(n) is n divided by its squarefree kernel, and A053669(n) is the smallest prime not dividing n.

The programs for A401716, the canonical program `A401716.P8478935060395761402` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401716 has offset 1).

The definition of A401716 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355447, A401714, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401716.P5358702128733597159

`A355447(n+1)-A401717(n+1)`
-/

namespace A401716.P5358702128733597159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355447 (n + 1) - A401717 (n + 1)

end

end A401716.P5358702128733597159

namespace A401716

/-- `A355447(n+1)-A401717(n+1)` -/
def P5358702128733597159.Spec : Prop :=
  ∀ n, P5358702128733597159.a n = A401716 (n + 1)

theorem P5358702128733597159.correct : P5358702128733597159.Spec := by
  intro n
  simp only [A401716, Nat.add_sub_cancel, A401716.P5358702128733597159.a, A401716.P8478935060395761402.a, A355447, A355447.P2177856951054736842.a, A401714, A401714.P6768754910253124235.f2, A401714.P6768754910253124235.f1, A401714.P6768754910253124235.a, A401717, A401717.P2595911180210568003.a, A008966, A008966.P18444031257857153223.f1, A008966.P18444031257857153223.a, A010055, A010055.P13257247064813316035.f1, A010055.P13257247064813316035.a, A393981, A393981.P9621053353220262288.f1, A393981.P9621053353220262288.f2, A393981.P9621053353220262288.a, A003557, A003557.P6364735403900941810.a, A053669, A053669.P10326959857469451860.f1, A053669.P10326959857469451860.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A401716

/-! ## A401716.P8478935060395761402

`A355447(n+1)*A401714(n+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A401716

/-- `A355447(n+1)*A401714(n+1)` -/
def P8478935060395761402.Spec : Prop :=
  ∀ n, P8478935060395761402.a n = A401716 (n + 1)

theorem P8478935060395761402.correct : P8478935060395761402.Spec := by
  intro n
  simp only [A401716, Nat.add_sub_cancel]

end A401716

/-! ## A401716.P15617477453694657557

`Δ[fp[A363082(n+1)]]`
-/

namespace A401716.P15617477453694657557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363082 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A401716.P15617477453694657557

namespace A401716

/-- `Δ[fp[A363082(n+1)]]` -/
def P15617477453694657557.Spec : Prop :=
  ∀ n, P15617477453694657557.a n = A401716 (n + 1)

end A401716

/-! ## A401716.P6331059495374538171

`A375933(n+1)*A401714(n+1)`
-/

namespace A401716.P6331059495374538171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375933 (n + 1) * A401714 (n + 1)

end

end A401716.P6331059495374538171

namespace A401716

/-- `A375933(n+1)*A401714(n+1)` -/
def P6331059495374538171.Spec : Prop :=
  ∀ n, P6331059495374538171.a n = A401716 (n + 1)

end A401716

/-! ## A401716.P8474198932278352741

`A389905(n+1)*A401714(n+1)`
-/

namespace A401716.P8474198932278352741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389905 (n + 1) * A401714 (n + 1)

end

end A401716.P8474198932278352741

namespace A401716

/-- `A389905(n+1)*A401714(n+1)` -/
def P8474198932278352741.Spec : Prop :=
  ∀ n, P8474198932278352741.a n = A401716 (n + 1)

end A401716

/-! ## A401716.P6435464469065739574

`A374247(n+1)*A401714(n+1)`
-/

namespace A401716.P6435464469065739574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374247 (n + 1) * A401714 (n + 1)

end

end A401716.P6435464469065739574

namespace A401716

/-- `A374247(n+1)*A401714(n+1)` -/
def P6435464469065739574.Spec : Prop :=
  ∀ n, P6435464469065739574.a n = A401716 (n + 1)

end A401716

/-! ## A401716.P15089881191861445143

`A374247(n+1)*A401715(n+1)`
-/

namespace A401716.P15089881191861445143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374247 (n + 1) * A401715 (n + 1)

end

end A401716.P15089881191861445143

namespace A401716

/-- `A374247(n+1)*A401715(n+1)` -/
def P15089881191861445143.Spec : Prop :=
  ∀ n, P15089881191861445143.a n = A401716 (n + 1)

end A401716

/-!
# A401717: a(n) = 1 if A003557(n) > A053669(n) and n is neither squarefree nor prime power, otherwise 0, where A003557(n) is n divided by its squarefree kernel, and A053669(n) is the smallest prime not dividing n.

The programs for A401717, the canonical program `A401717.P2595911180210568003` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401717 has offset 1).

The definition of A401717 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355447, A401716, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401717.P2595911180210568003

`A355447(n+1)-A401716(n+1)`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A401717

/-- `A355447(n+1)-A401716(n+1)` -/
def P2595911180210568003.Spec : Prop :=
  ∀ n, P2595911180210568003.a n = A401717 (n + 1)

theorem P2595911180210568003.correct : P2595911180210568003.Spec := by
  intro n
  simp only [A401717, Nat.add_sub_cancel]

end A401717

/-! ## A401717.P17721156777897390035

`A355447(n+1)*(1-A401714(n+1))`
-/

namespace A401717.P17721156777897390035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355447 (n + 1) * (1 - A401714 (n + 1))

end

end A401717.P17721156777897390035

namespace A401717

/-- `A355447(n+1)*(1-A401714(n+1))` -/
def P17721156777897390035.Spec : Prop :=
  ∀ n, P17721156777897390035.a n = A401717 (n + 1)

theorem P17721156777897390035.correct : P17721156777897390035.Spec := by
  intro n
  simp only [A401717, Nat.add_sub_cancel, A401717.P17721156777897390035.a, A401717.P2595911180210568003.a, A355447, A355447.P2177856951054736842.a, A401714, A401714.P6768754910253124235.f2, A401714.P6768754910253124235.f1, A401714.P6768754910253124235.a, A401716, A401716.P8478935060395761402.a, A008966, A008966.P18444031257857153223.f1, A008966.P18444031257857153223.a, A010055, A010055.P13257247064813316035.f1, A010055.P13257247064813316035.a, A393981, A393981.P9621053353220262288.f1, A393981.P9621053353220262288.f2, A393981.P9621053353220262288.a, A003557, A003557.P6364735403900941810.a, A053669, A053669.P10326959857469451860.f1, A053669.P10326959857469451860.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A401717

/-! ## A401717.P15411126620978970544

`Δ[fp[A360765(n+1)]]`
-/

namespace A401717.P15411126620978970544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360765 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A401717.P15411126620978970544

namespace A401717

/-- `Δ[fp[A360765(n+1)]]` -/
def P15411126620978970544.Spec : Prop :=
  ∀ n, P15411126620978970544.a n = A401717 (n + 1)

end A401717

/-! ## A401717.P6894329073623770642

`A332284(n)%A355382(n+1)`
-/

namespace A401717.P6894329073623770642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332284 n) (A355382 (n + 1))

end

end A401717.P6894329073623770642

namespace A401717

/-- `A332284(n)%A355382(n+1)` -/
def P6894329073623770642.Spec : Prop :=
  ∀ n, P6894329073623770642.a n = A401717 (n + 1)

end A401717

/-! ## A401717.P16472370121551663834

`A218128(n)%A355382(n+1)`
-/

namespace A401717.P16472370121551663834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218128 n) (A355382 (n + 1))

end

end A401717.P16472370121551663834

namespace A401717

/-- `A218128(n)%A355382(n+1)` -/
def P16472370121551663834.Spec : Prop :=
  ∀ n, P16472370121551663834.a n = A401717 (n + 1)

end A401717

/-! ## A401717.P10294890028876469253

`and(A218128(n), A355447(n+1))`
-/

namespace A401717.P10294890028876469253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A218128 n) (A355447 (n + 1))

end

end A401717.P10294890028876469253

namespace A401717

/-- `and(A218128(n), A355447(n+1))` -/
def P10294890028876469253.Spec : Prop :=
  ∀ n, P10294890028876469253.a n = A401717 (n + 1)

end A401717

/-!
# A401718: Numbers k such that k is a multiple of A342002(k), and A327860(k) is a multiple of k.

The programs for A401718, there is no canonical definition to state claims against.
-/

/-! ## A401718.P2027421418077271857

`∩[A351087(n+1), A400155(n+1)]`
-/

namespace A401718.P2027421418077271857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401718.P2027421418077271857

/-!
# A401719: Numbers k such that A276085(k) is a multiple of A342001(k) and A003415(k) is a multiple of A276085(k), where A003415 is the arithmetic derivative, and A276085 is fully additive with a(p) = p#/p.

The programs for A401719, there is no canonical definition to state claims against.
-/

/-! ## A401719.P12011347389089598278

`filter[A401725(n+1), A373489(#)]`
-/

namespace A401719.P12011347389089598278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373489 (f1 j).toNat = 1) n)

end

end A401719.P12011347389089598278

/-! ## A401719.P4888279997574052700

`∩[A373490(n+1), A401725(n+1)]`
-/

namespace A401719.P4888279997574052700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401719.P4888279997574052700

/-! ## A401719.P16385164915990125495

`filter[A088725(n+1), A373489(#)]`
-/

namespace A401719.P16385164915990125495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373489 (f1 j).toNat = 1) n)

end

end A401719.P16385164915990125495

/-! ## A401719.P925489036226235432

`∩[A088725(n+1), A373490(n+1)]`
-/

namespace A401719.P925489036226235432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401719.P925489036226235432

/-! ## A401719.P4219975847431524319

`filter[A128649(n+1), A373489(#)]`
-/

namespace A401719.P4219975847431524319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373489 (f1 j).toNat = 1) n)

end

end A401719.P4219975847431524319

/-!
# A401723: Multiplicative with a(p^e) = (e*p)^e.

The programs for A401723, the canonical program `A401723.P14337066620754754660` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401723 has offset 1).

The definition of A401723 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112622, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401723.P14337066620754754660

`(n+1)*A112622(n+1)`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A401723

/-- `(n+1)*A112622(n+1)` -/
def P14337066620754754660.Spec : Prop :=
  ∀ n, P14337066620754754660.a n = A401723 (n + 1)

theorem P14337066620754754660.correct : P14337066620754754660.Spec := by
  intro n
  simp only [A401723, Nat.add_sub_cancel]

end A401723

/-! ## A401723.P13339962201624277863

`(n+1)*∏{e}[n+1, #^#]`
-/

namespace A401723.P13339962201624277863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ Nat.factorization (f1 n) p)

end

end A401723.P13339962201624277863

namespace A401723

/-- `(n+1)*∏{e}[n+1, #^#]` -/
def P13339962201624277863.Spec : Prop :=
  ∀ n, (P13339962201624277863.a n : ℤ) = A401723 (n + 1)

theorem P13339962201624277863.correct : P13339962201624277863.Spec := by
  intro n
  simp only [A401723, Nat.add_sub_cancel, A401723.P13339962201624277863.f1, A401723.P13339962201624277863.a, A401723.P14337066620754754660.a, A112622, A112622.P16165782016318550083.f1, A112622.P16165782016318550083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A401723

/-! ## A401723.P14876766505298043689

`(n+1)/∏{e}[n+1, #^-#]`
-/

namespace A401723.P14876766505298043689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) ^ (-(Nat.factorization (f1 n) p : ℤ) : ℤ))

end

end A401723.P14876766505298043689

namespace A401723

/-- `(n+1)/∏{e}[n+1, #^-#]` -/
def P14876766505298043689.Spec : Prop :=
  ∀ n, P14876766505298043689.a n = (A401723 (n + 1) : ℚ)

end A401723

/-!
# A401724: a(n) = A276085(n) mod A342001(n), where A342001(n) = A003415(n)/A003557(n), and A276085 is fully additive with a(p) = p#/p.

The programs for A401724, the canonical program `A401724.P1629585607848376943` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401724 has offset 2).

The definition of A401724 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401724.P1629585607848376943

`A276085(n+2)%A342001(n+2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A401724

/-- `A276085(n+2)%A342001(n+2)` -/
def P1629585607848376943.Spec : Prop :=
  ∀ n, P1629585607848376943.a n = A401724 (n + 2)

theorem P1629585607848376943.correct : P1629585607848376943.Spec := by
  intro n
  simp only [A401724, Nat.add_sub_cancel]

end A401724

/-!
# A401725: Numbers k such that A276085(k) is a multiple of A342001(k), where A342001(k) = A003415(k)/A003557(k), and A276085 is fully additive with a(p) = p#/p.

The programs for A401725, there is no canonical definition to state claims against.
-/

/-! ## A401725.P7463968878515434548

`∩[A088725(n+1), A401935(n+1)]`
-/

namespace A401725.P7463968878515434548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401725.P7463968878515434548

/-! ## A401725.P8850416404090385159

`∩[A346130(n+1), A401935(n+1)]`
-/

namespace A401725.P8850416404090385159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401725.P8850416404090385159

/-!
# A401726: Numbers k with no p^p-divisors, for which A276085(k) is a multiple of A342001(k) and A003415(k) is a multiple of A276085(k), where A342001(k) = A003415(k)/A003557(k), and A276085 is fully additive with a(p) = p#/p.

The programs for A401726, there is no canonical definition to state claims against.
-/

/-! ## A401726.P1526866601521219811

`∩[A400172(n+1), A401719(n+1)]`
-/

namespace A401726.P1526866601521219811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401726.P1526866601521219811

/-! ## A401726.P6571910015848801975

`filter[A400171(n+1), A030657(#)]`
-/

namespace A401726.P6571910015848801975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030657 (f1 j).toNat = 1) n)

end

end A401726.P6571910015848801975

/-! ## A401726.P16670577984231678193

`filter[A400171(n+1), A039985(#)]`
-/

namespace A401726.P16670577984231678193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039985 (f1 j).toNat = 1) n)

end

end A401726.P16670577984231678193

/-!
# A401727: Nonsquarefree numbers k with no p^p-factors, for which A276085(k) is a multiple of A083345(k), where A083345 is the numerator of the fully additive function with a(p) = 1/p, and A276085 is fully additive with a(p) = p#/p.

The programs for A401727, there is no canonical definition to state claims against.
-/

/-! ## A401727.P10192143314237782299

`filter[A401725(n+1), A371084(#)]`
-/

namespace A401727.P10192143314237782299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371084 (f1 j).toNat = 1) n)

end

end A401727.P10192143314237782299

/-! ## A401727.P891885347491308385

`filter[A401935(n+1), A371084(#)]`
-/

namespace A401727.P891885347491308385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371084 (f1 j).toNat = 1) n)

end

end A401727.P891885347491308385

/-! ## A401727.P9235400141529712952

`∩[A371083(n+1), A401725(n+1)]`
-/

namespace A401727.P9235400141529712952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401727.P9235400141529712952

/-! ## A401727.P3303529902223767994

`∩[A371083(n+1), A401935(n+1)]`
-/

namespace A401727.P3303529902223767994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401727.P3303529902223767994

/-!
# A401729: Numbers k such that A342002(k) is a multiple of k, where A342002(k) = A342001(A276086(k)).

The programs for A401729, there is no canonical definition to state claims against.
-/

/-! ## A401729.P7155696569974643218

`filter[A351087(n+1), A356162(#)]`
-/

namespace A401729.P7155696569974643218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356162 (f1 j).toNat = 1) n)

end

end A401729.P7155696569974643218

/-! ## A401729.P8191560430082645205

`A401731(n+1)`
-/

namespace A401729.P8191560430082645205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401731 (n + 1)

end

end A401729.P8191560430082645205

/-! ## A401729.P4969275174990240134

`filter[A401718(n+1), A356162(#)]`
-/

namespace A401729.P4969275174990240134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356162 (f1 j).toNat = 1) n)

end

end A401729.P4969275174990240134

/-! ## A401729.P204815269087383001

`filter[A401718(n+1), A374048(#)]`
-/

namespace A401729.P204815269087383001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374048 (f1 j).toNat = 1) n)

end

end A401729.P204815269087383001

/-! ## A401729.P11946177228599820401

`filter[A401718(n+1), A039963(#)]`
-/

namespace A401729.P11946177228599820401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039963 (f1 j).toNat = 1) n)

end

end A401729.P11946177228599820401

/-!
# A401730: Numbers k with no p^p-factors, such that A083345(k) is a multiple of A276085(k), where A083345 is the numerator of the fully additive function with a(p) = 1/p, and A276085 is fully additive with a(p) = p#/p.

The programs for A401730, there is no canonical definition to state claims against.
-/

/-! ## A401730.P4052839296841743666

`A401726(A401725(n+1))`
-/

namespace A401730.P4052839296841743666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401726 (A401725 (n + 1)).toNat

end

end A401730.P4052839296841743666

/-! ## A401730.P1161459965553061008

`filter[A400171(n+1), A102609(#)]`
-/

namespace A401730.P1161459965553061008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A401730.P1161459965553061008

/-!
# A401733: Number of factorizations of n into factors that have the same number of divisors.

The programs for A401733, there is no canonical definition to state claims against.
-/

/-! ## A401733.P11408142340006838008

`A401734(n+1)`
-/

namespace A401733.P11408142340006838008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401734 (n + 1)

end

end A401733.P11408142340006838008

/-! ## A401733.P2706060924306315187

`A183024(A329385(n+1))`
-/

namespace A401733.P2706060924306315187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183024 (A329385 (n + 1)).toNat

end

end A401733.P2706060924306315187

/-! ## A401733.P5018148262337728614

`A323305(A324202(n+1))`
-/

namespace A401733.P5018148262337728614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323305 (A324202 (n + 1)).toNat

end

end A401733.P5018148262337728614

/-! ## A401733.P13570878144763677374

`A000005(A088741(n+1)-A399774(n+1))`
-/

namespace A401733.P13570878144763677374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A088741 (n + 1) - A399774 (n + 1)).toNat

end

end A401733.P13570878144763677374

/-! ## A401733.P2307000685647380888

`A086454(A006241(n+1))`
-/

namespace A401733.P2307000685647380888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086454 (A006241 (n + 1)).toNat

end

end A401733.P2307000685647380888

/-!
# A401735: Lexicographically earliest square array of nonnegative integers, read by antidiagonals, with no axis-parallel square whose four corners are equal.

The programs for A401735, there is no canonical definition to state claims against.
-/

/-! ## A401735.P9211607748295124625

`A341514(A146956(n))`
-/

namespace A401735.P9211607748295124625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341514 (A146956 n).toNat

end

end A401735.P9211607748295124625

/-! ## A401735.P2516797232298289133

`A348213(A132476(n))`
-/

namespace A401735.P2516797232298289133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348213 (A132476 n).toNat

end

end A401735.P2516797232298289133

/-! ## A401735.P4536889740172240583

`A292252(A119673(n))`
-/

namespace A401735.P4536889740172240583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292252 (A119673 n).toNat

end

end A401735.P4536889740172240583

/-! ## A401735.P5927879542777787879

`A323878(A143683(n))`
-/

namespace A401735.P5927879542777787879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323878 (A143683 n).toNat

end

end A401735.P5927879542777787879

/-! ## A401735.P3320068727094147361

`A168570(A146956(n))`
-/

namespace A401735.P3320068727094147361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168570 (A146956 n).toNat

end

end A401735.P3320068727094147361

/-!
# A401736: Main diagonal of A401735.

The programs for A401736, there is no canonical definition to state claims against.
-/

/-! ## A401736.P6316381593473546721

`A401735(4*∑[n])`
-/

namespace A401736.P6316381593473546721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401735 (4 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A401736.P6316381593473546721

/-! ## A401736.P18022717890178452888

`A083912(A362227(n))`
-/

namespace A401736.P18022717890178452888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (A362227 n).toNat

end

end A401736.P18022717890178452888

/-! ## A401736.P13997144300930188781

`A322823(A052330(A052330(A052331(2*n+1))))`
-/

namespace A401736.P13997144300930188781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322823 (A052330 (A052330 (A052331 (2 * n + 1)).toNat).toNat).toNat

end

end A401736.P13997144300930188781

/-! ## A401736.P25762333360696930

`A322989(A322990(A322992(A289272(2*n+1))))`
-/

namespace A401736.P25762333360696930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322989 (A322990 (A322992 (A289272 (2 * n + 1)).toNat).toNat).toNat

end

end A401736.P25762333360696930

/-! ## A401736.P9858703731439023936

`A206483(A057335(n))`
-/

namespace A401736.P9858703731439023936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206483 (A057335 n).toNat

end

end A401736.P9858703731439023936

/-!
# A401737: Least k such that A401736(k) = n.

The programs for A401737, there is no canonical definition to state claims against.
-/

/-! ## A401737.P16823799471251803975

`fo[A401736(n)]`
-/

namespace A401737.P16823799471251803975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401736 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A401737.P16823799471251803975

/-!
# A401740: Pythagorean primes p for which the semiperimeter s and inradius r of the primitive Pythagorean triangle with hypotenuse p give another Pythagorean prime q = s^2 + r^2.

The programs for A401740, there is no canonical definition to state claims against.
-/

/-! ## A401740.P3151511951364675378

`A164927(A396636(n+2))`
-/

namespace A401740.P3151511951364675378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164927 (A396636 (n + 2)).toNat

end

end A401740.P3151511951364675378

/-! ## A401740.P15713160092265192415

`∩[A038899(n+1), A110134(n+1)]`
-/

namespace A401740.P15713160092265192415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401740.P15713160092265192415

/-!
# A401741: Sum of the squares of the semiperimeter s and inradius r of the primitive Pythagorean triangle with hypotenuse A002144(n): a(n) = s^2 + r^2.

The programs for A401741, there is no canonical definition to state claims against.
-/

/-! ## A401741.P13086254099991004509

`A002144(n+1)²+A002365(n+1)*A002366(n+1)`
-/

namespace A401741.P13086254099991004509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) ^ 2 + A002365 (n + 1) * A002366 (n + 1)

end

end A401741.P13086254099991004509

/-! ## A401741.P161953008777494059

`A401742(n+1)/A002144(n+1)`
-/

namespace A401741.P161953008777494059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A401742 (n + 1) : ℚ) / (A002144 (n + 1) : ℚ)

end

end A401741.P161953008777494059

/-! ## A401741.P15732823883824198360

`A401742(n+1)/A002313(n+2)`
-/

namespace A401741.P15732823883824198360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A401742 (n + 1) : ℚ) / (A002313 (n + 2) : ℚ)

end

end A401741.P15732823883824198360

/-!
# A401742: Square roots of the central entries in a six-square 3 X 3 magic-square construction from Pythagorean primes using the semiperimeter and inradius.

The programs for A401742, there is no canonical definition to state claims against.
-/

/-! ## A401742.P10481404229170007952

`A002144(n+1)*A401741(n+1)`
-/

namespace A401742.P10481404229170007952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) * A401741 (n + 1)

end

end A401742.P10481404229170007952

/-! ## A401742.P4046834803585380442

`A400365(n+1)*A401741(n+1)/A400364(n+1)`
-/

namespace A401742.P4046834803585380442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400365 (n + 1) * A401741 (n + 1) : ℚ) / (A400364 (n + 1) : ℚ)

end

end A401742.P4046834803585380442

/-! ## A401742.P14880986694214397028

`A401741(n+1)*A402008(n+1)/A402007(n+1)`
-/

namespace A401742.P14880986694214397028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A401741 (n + 1) * A402008 (n + 1) : ℚ) / (A402007 (n + 1) : ℚ)

end

end A401742.P14880986694214397028

/-! ## A401742.P7197419227120841559

`A002313(n+2)*A401741(n+1)`
-/

namespace A401742.P7197419227120841559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) * A401741 (n + 1)

end

end A401742.P7197419227120841559

/-!
# A401748: Finite sequences satisfying the A400000 visibility criterion, sorted first by length then lexicographically.

The programs for A401748, there is no canonical definition to state claims against.
-/

/-! ## A401748.P9976845566945642661

`A255318(A324204(n+1))`
-/

namespace A401748.P9976845566945642661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255318 (A324204 (n + 1)).toNat

end

end A401748.P9976845566945642661

/-! ## A401748.P10177141087423020532

`A320439(A045576(n+2))`
-/

namespace A401748.P10177141087423020532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320439 (A045576 (n + 2)).toNat

end

end A401748.P10177141087423020532

/-! ## A401748.P1296956882719349728

`A307431(A307432(A370874(n))+n+1)`
-/

namespace A401748.P1296956882719349728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307431 (A307432 (A370874 n).toNat + (n + 1 : ℤ)).toNat

end

end A401748.P1296956882719349728

/-! ## A401748.P17515384978473955753

`A037833(A217308(n))`
-/

namespace A401748.P17515384978473955753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A217308 n).toNat

end

end A401748.P17515384978473955753

/-! ## A401748.P5122764763310149351

`A073484(A255490(n))`
-/

namespace A401748.P5122764763310149351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073484 (A255490 n).toNat

end

end A401748.P5122764763310149351

/-!
# A401750: Table read by antidiagonals: T(n, k) is the height h of the shortest building which can see exactly h buildings due north and due west of itself, by rules in A400000.

The programs for A401750, there is no canonical definition to state claims against.
-/

/-! ## A401750.P10554965335260444192

`A058061(A213418(n+1))`
-/

namespace A401750.P10554965335260444192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058061 (A213418 (n + 1)).toNat

end

end A401750.P10554965335260444192

/-! ## A401750.P9588625949890578092

`A067148(A300215(n+1))`
-/

namespace A401750.P9588625949890578092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067148 (A300215 (n + 1)).toNat

end

end A401750.P9588625949890578092

/-! ## A401750.P6840847377973235169

`A391900(A223569(n+1))`
-/

namespace A401750.P6840847377973235169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391900 (A223569 (n + 1)).toNat

end

end A401750.P6840847377973235169

/-! ## A401750.P16343451929819487570

`A277322(A391259(n+1)²)`
-/

namespace A401750.P16343451929819487570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277322 (A391259 (n + 1) ^ 2).toNat

end

end A401750.P16343451929819487570

/-! ## A401750.P16547660035704215809

`A305832(A130328(n))`
-/

namespace A401750.P16547660035704215809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305832 (A130328 n).toNat

end

end A401750.P16547660035704215809

/-!
# A401751: Numbers k such that A051377(k) = 3*k/2.

The programs for A401751, there is no canonical definition to state claims against.
-/

/-! ## A401751.P6929662547772818725

`∩[A171949(n+1), A401784(n+1)]`
-/

namespace A401751.P6929662547772818725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401751.P6929662547772818725

/-! ## A401751.P9101816803999802544

`∩[A385097(n+1), A401784(n+1)]`
-/

namespace A401751.P9101816803999802544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401751.P9101816803999802544

/-!
# A401754: Square array read by antidiagonals upwards: T(n,k) is the n-th nonnegative integer that does not contain the string "k", with n >= 1, k >= 0.

The programs for A401754, there is no canonical definition to state claims against.
-/

/-! ## A401754.P7066058691091779441

`A352515(A130328(n))`
-/

namespace A401754.P7066058691091779441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352515 (A130328 n).toNat

end

end A401754.P7066058691091779441

/-!
# A401759: a(n) = number of primes p <= n, taken in decreasing order starting from the largest, that must be tried before reaching the first one for which 2*n - p is also prime.

The programs for A401759, there is no canonical definition to state claims against.
-/

/-! ## A401759.P4241494470863660499

`A000720(n+2)-A000720(A112823(n+2))+1`
-/

namespace A401759.P4241494470863660499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 2) - A000720 (A112823 (n + 2)).toNat + 1

end

end A401759.P4241494470863660499

/-! ## A401759.P8034627911619248010

`A000720(n+2)-A000720(n+2-A047160(n+2))+1`
-/

namespace A401759.P8034627911619248010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 2) - A000720 ((n + 2 : ℤ) - A047160 (n + 2)).toNat + 1

end

end A401759.P8034627911619248010

/-! ## A401759.P15721941544791130244

`gcd(A178686(n), A334541(n+1))`
-/

namespace A401759.P15721941544791130244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A178686 n) (A334541 (n + 1))

end

end A401759.P15721941544791130244

/-! ## A401759.P13167313096822968491

`A327103(A008814(n))`
-/

namespace A401759.P13167313096822968491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327103 (A008814 n).toNat

end

end A401759.P13167313096822968491

/-! ## A401759.P12131984354214572246

`A030600(A020235(n+1))`
-/

namespace A401759.P12131984354214572246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030600 (A020235 (n + 1)).toNat

end

end A401759.P12131984354214572246

/-!
# A401762: Number of distinct traces of length n of Wolfram's 2-state 3-symbol Turing machine; i.e., sequences of n (state, symbol read) pairs produced from an arbitrary tape and starting state.

The programs for A401762, there is no canonical definition to state claims against.
-/

/-! ## A401762.P15874525763011930815

`A343281(A293628(n))`
-/

namespace A401762.P15874525763011930815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343281 (A293628 n).toNat

end

end A401762.P15874525763011930815

/-!
# A401769: Averages of twin prime pairs that are 2-dense numbers A174973.

The programs for A401769, there is no canonical definition to state claims against.
-/

/-! ## A401769.P16672179663948907963

`∩[A014574(n+1), A174973(n+1)]`
-/

namespace A401769.P16672179663948907963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401769.P16672179663948907963

/-! ## A401769.P4310342593831892059

`∩[A056853(n+1), A174973(n+1)]`
-/

namespace A401769.P4310342593831892059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401769.P4310342593831892059

/-! ## A401769.P1704513460896545760

`∩[A174973(n+1), A258838(n+1)]`
-/

namespace A401769.P1704513460896545760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401769.P1704513460896545760

/-! ## A401769.P5436124248649573272

`∩[A014574(n+1), A279029(n+1)]`
-/

namespace A401769.P5436124248649573272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401769.P5436124248649573272

/-! ## A401769.P3592558983755733514

`∩[A056853(n+1), A279029(n+1)]`
-/

namespace A401769.P3592558983755733514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401769.P3592558983755733514

/-! ## A401769.P1614064677155456151

`∩[A258838(n+1), A279029(n+1)]`
-/

namespace A401769.P1614064677155456151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401769.P1614064677155456151

/-! ## A401769.P3516523145432052630

`filter[A014574(n+1), A365429(#)]`
-/

namespace A401769.P3516523145432052630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A401769.P3516523145432052630

/-! ## A401769.P14886444876237043081

`filter[A014574(n+1), A379968(#)]`
-/

namespace A401769.P14886444876237043081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A401769.P14886444876237043081

/-! ## A401769.P810965702797910660

`filter[A056853(n+1), A365429(#)]`
-/

namespace A401769.P810965702797910660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A401769.P810965702797910660

/-! ## A401769.P8395332856444164999

`filter[A056853(n+1), A379968(#)]`
-/

namespace A401769.P8395332856444164999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A401769.P8395332856444164999

/-! ## A401769.P674919731586193984

`filter[A258838(n+1), A365429(#)]`
-/

namespace A401769.P674919731586193984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A401769.P674919731586193984

/-! ## A401769.P15245386044935343498

`filter[A258838(n+1), A379968(#)]`
-/

namespace A401769.P15245386044935343498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A401769.P15245386044935343498

/-! ## A401769.P2369529670720121211

`filter[A167706(n+2), A365429(#)]`
-/

namespace A401769.P2369529670720121211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A401769.P2369529670720121211

/-! ## A401769.P17707754271630597185

`filter[A167706(n+2), A379968(#)]`
-/

namespace A401769.P17707754271630597185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A401769.P17707754271630597185

/-! ## A401769.P11311381217602779782

`filter[A398905(n+2), A365429(#)]`
-/

namespace A401769.P11311381217602779782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A401769.P11311381217602779782

/-! ## A401769.P16654508319361101330

`filter[A398905(n+3), A379968(#)]`
-/

namespace A401769.P16654508319361101330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398905 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A401769.P16654508319361101330

/-! ## A401769.P8902574551837205284

`filter[A174219(n+2), A365429(#)]`
-/

namespace A401769.P8902574551837205284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174219 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A401769.P8902574551837205284

/-! ## A401769.P13848907770077736805

`filter[A174219(n+3), A379968(#)]`
-/

namespace A401769.P13848907770077736805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174219 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A401769.P13848907770077736805

/-! ## A401769.P901791859304825870

`filter[A242040(n+1), A365429(#)]`
-/

namespace A401769.P901791859304825870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A401769.P901791859304825870

/-! ## A401769.P13745085760446961894

`filter[A242040(n+1), A379968(#)]`
-/

namespace A401769.P13745085760446961894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A401769.P13745085760446961894

/-!
# A401771: Number of non-periodic minimal perfectly balanced sets of order 2pq up to rotation, for p=prime(n), q=prime(k), n>=3, k>=2.

The programs for A401771, there is no canonical definition to state claims against.
-/

/-! ## A401771.P11086223763361395075

`6*A018370(n+1)`
-/

namespace A401771.P11086223763361395075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A018370 (n + 1)

end

end A401771.P11086223763361395075

/-!
# A401779: Number of free polyominoes with 2n cells that cannot be dissected into two (not necessarily congruent) polyominoes of size n.

The programs for A401779, there is no canonical definition to state claims against.
-/

/-! ## A401779.P10361503975522309093

`A125753(A096376(n))`
-/

namespace A401779.P10361503975522309093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125753 (A096376 n).toNat

end

end A401779.P10361503975522309093

/-!
# A401780: Total number of canonical (origin-fixed) isotypic composition transversals across all set partitions of the discrete cyclic lattice Z_n.

The programs for A401780, there is no canonical definition to state claims against.
-/

/-! ## A401780.P4889162740028016291

`A244970(A073190(n))`
-/

namespace A401780.P4889162740028016291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244970 (A073190 n).toNat

end

end A401780.P4889162740028016291

/-! ## A401780.P318376184016592645

`A007203(A247172(n+1))`
-/

namespace A401780.P318376184016592645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007203 (A247172 (n + 1)).toNat

end

end A401780.P318376184016592645

/-!
# A401790: Number of permutations of {1..n} such that all primes are in prime positions.

The programs for A401790, there is no canonical definition to state claims against.
-/

/-! ## A401790.P5169554184148164861

`a(n-1)*A026233(n)` with `a(0)=1`
-/

namespace A401790.P5169554184148164861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A026233 n

end

end A401790.P5169554184148164861

/-! ## A401790.P4952684107166983896

`A136494(A214319(n))`
-/

namespace A401790.P4952684107166983896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136494 (A214319 n).toNat

end

end A401790.P4952684107166983896

/-!
# A401791: a(n) = 1 if n is 1, a prime or n is not squarefree, otherwise 0.

The programs for A401791, the canonical program `A401791.P10376803313853072742` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401791 has offset 1).

The definition of A401791 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401791.P10376803313853072742

`A063524(n+1)+A010051(n+1)+A107078(n+1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A401791

/-- `A063524(n+1)+A010051(n+1)+A107078(n+1)` -/
def P10376803313853072742.Spec : Prop :=
  ∀ n, P10376803313853072742.a n = A401791 (n + 1)

theorem P10376803313853072742.correct : P10376803313853072742.Spec := by
  intro n
  simp only [A401791, Nat.add_sub_cancel]

end A401791

/-! ## A401791.P765816947806396258

`and(1, A366918(n+1))`
-/

namespace A401791.P765816947806396258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A366918 (n + 1))

end

end A401791.P765816947806396258

namespace A401791

/-- `and(1, A366918(n+1))` -/
def P765816947806396258.Spec : Prop :=
  ∀ n, P765816947806396258.a n = A401791 (n + 1)

end A401791

/-! ## A401791.P7223646922692855484

`Δ[fp[A363597(n+1)]]`
-/

namespace A401791.P7223646922692855484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A401791.P7223646922692855484

namespace A401791

/-- `Δ[fp[A363597(n+1)]]` -/
def P7223646922692855484.Spec : Prop :=
  ∀ n, P7223646922692855484.a n = A401791 (n + 1)

end A401791

/-! ## A401791.P5412682265217105757

`(A106743(n+1)^n)²`
-/

namespace A401791.P5412682265217105757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A106743 (n + 1) ^ n) ^ 2

end

end A401791.P5412682265217105757

namespace A401791

/-- `(A106743(n+1)^n)²` -/
def P5412682265217105757.Spec : Prop :=
  ∀ n, P5412682265217105757.a n = A401791 (n + 1)

end A401791

/-! ## A401791.P2705830821157801131

`(1-A354819(n+1))^n`
-/

namespace A401791.P2705830821157801131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A354819 (n + 1)) ^ n

end

end A401791.P2705830821157801131

namespace A401791

/-- `(1-A354819(n+1))^n` -/
def P2705830821157801131.Spec : Prop :=
  ∀ n, P2705830821157801131.a n = A401791 (n + 1)

end A401791

/-! ## A401791.P14199517865941140864

`A087049(A005451(n+1))`
-/

namespace A401791.P14199517865941140864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A005451 (n + 1)).toNat

end

end A401791.P14199517865941140864

namespace A401791

/-- `A087049(A005451(n+1))` -/
def P14199517865941140864.Spec : Prop :=
  ∀ n, P14199517865941140864.a n = A401791 (n + 1)

end A401791

/-! ## A401791.P9935823421237838118

`A010815(A074823(n+1))²`
-/

namespace A401791.P9935823421237838118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A074823 (n + 1)).toNat ^ 2

end

end A401791.P9935823421237838118

namespace A401791

/-- `A010815(A074823(n+1))²` -/
def P9935823421237838118.Spec : Prop :=
  ∀ n, P9935823421237838118.a n = A401791 (n + 1)

end A401791

/-! ## A401791.P11389503142967402932

`A054977(n)-A354819(n+1)`
-/

namespace A401791.P11389503142967402932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A354819 (n + 1)

end

end A401791.P11389503142967402932

namespace A401791

/-- `A054977(n)-A354819(n+1)` -/
def P11389503142967402932.Spec : Prop :=
  ∀ n, P11389503142967402932.a n = A401791 (n + 1)

end A401791

/-! ## A401791.P3344670183582457421

`A107078(n+1)+A080339(n+1)`
-/

namespace A401791.P3344670183582457421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (n + 1) + A080339 (n + 1)

end

end A401791.P3344670183582457421

namespace A401791

/-- `A107078(n+1)+A080339(n+1)` -/
def P3344670183582457421.Spec : Prop :=
  ∀ n, P3344670183582457421.a n = A401791 (n + 1)

end A401791

/-! ## A401791.P10317474124057584005

`A355447(n+1)+A010055(n+1)`
-/

namespace A401791.P10317474124057584005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355447 (n + 1) + A010055 (n + 1)

end

end A401791.P10317474124057584005

namespace A401791

/-- `A355447(n+1)+A010055(n+1)` -/
def P10317474124057584005.Spec : Prop :=
  ∀ n, P10317474124057584005.a n = A401791 (n + 1)

end A401791

/-! ## A401791.P14172970299930360476

`A007424(n+1)-A066247(n+1)`
-/

namespace A401791.P14172970299930360476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007424 (n + 1) - A066247 (n + 1)

end

end A401791.P14172970299930360476

namespace A401791

/-- `A007424(n+1)-A066247(n+1)` -/
def P14172970299930360476.Spec : Prop :=
  ∀ n, P14172970299930360476.a n = A401791 (n + 1)

end A401791

/-! ## A401791.P4777740430268628374

`A281188((A281188(n+1)+1)²)`
-/

namespace A401791.P4777740430268628374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281188 ((A281188 (n + 1) + 1) ^ 2).toNat

end

end A401791.P4777740430268628374

namespace A401791

/-- `A281188((A281188(n+1)+1)²)` -/
def P4777740430268628374.Spec : Prop :=
  ∀ n, P4777740430268628374.a n = A401791 (n + 1)

end A401791

/-! ## A401791.P2283724224712561654

`A008683(A156260(n+1))²`
-/

namespace A401791.P2283724224712561654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A156260 (n + 1)).toNat ^ 2

end

end A401791.P2283724224712561654

namespace A401791

/-- `A008683(A156260(n+1))²` -/
def P2283724224712561654.Spec : Prop :=
  ∀ n, P2283724224712561654.a n = A401791 (n + 1)

end A401791

/-! ## A401791.P14069563865471800787

`A071034(A050354(n+1))`
-/

namespace A401791.P14069563865471800787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071034 (A050354 (n + 1)).toNat

end

end A401791.P14069563865471800787

namespace A401791

/-- `A071034(A050354(n+1))` -/
def P14069563865471800787.Spec : Prop :=
  ∀ n, P14069563865471800787.a n = A401791 (n + 1)

end A401791

/-! ## A401791.P6710728492340076548

`gcd(A106743(n+1), A204274(n+1))`
-/

namespace A401791.P6710728492340076548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106743 (n + 1)) (A204274 (n + 1))

end

end A401791.P6710728492340076548

namespace A401791

/-- `gcd(A106743(n+1), A204274(n+1))` -/
def P6710728492340076548.Spec : Prop :=
  ∀ n, (P6710728492340076548.a n : ℤ) = A401791 (n + 1)

end A401791

/-! ## A401791.P3343359337371413867

`A281188(3^A281188(n+1))`
-/

namespace A401791.P3343359337371413867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281188 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A281188 (n + 1) : ℤ))).toNat

end

end A401791.P3343359337371413867

namespace A401791

/-- `A281188(3^A281188(n+1))` -/
def P3343359337371413867.Spec : Prop :=
  ∀ n, P3343359337371413867.a n = A401791 (n + 1)

end A401791

/-! ## A401791.P5546567117852060379

`gcd(A106743(n+1), A180491(n+1))`
-/

namespace A401791.P5546567117852060379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106743 (n + 1)) (A180491 (n + 1))

end

end A401791.P5546567117852060379

namespace A401791

/-- `gcd(A106743(n+1), A180491(n+1))` -/
def P5546567117852060379.Spec : Prop :=
  ∀ n, (P5546567117852060379.a n : ℤ) = A401791 (n + 1)

end A401791

/-!
# A401792: Array read by antidiagonals: T(m,n) is the number of nonempty convex vertex sets in the m X n king graph.

The programs for A401792, there is no canonical definition to state claims against.
-/

/-! ## A401792.P12084515988319481017

`A342511(A221165(n+1))`
-/

namespace A401792.P12084515988319481017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342511 (A221165 (n + 1)).toNat

end

end A401792.P12084515988319481017

/-!
# A401793: Number of nonempty convex vertex sets in the n X n king graph.

The programs for A401793, the canonical program `A401793.P6260511223612873365` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401793 has offset 1).

The definition of A401793 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401793.P6260511223612873365

`ogf((1+10x+30x^2+14x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401793

/-- `ogf((1+10x+30x^2+14x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P6260511223612873365.Spec : Prop :=
  ∀ n, P6260511223612873365.a n = A401793 (n + 1)

theorem P6260511223612873365.correct : P6260511223612873365.Spec := by
  intro n
  simp only [A401793, Nat.add_sub_cancel]

end A401793

/-! ## A401793.P849137189725280018

`n*(n+1)*((n+1)*(7*(n+1)-9)+11)/3+1`
-/

namespace A401793.P849137189725280018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((n + 1 : ℤ) * ((7 * (n + 1) : ℤ) - 9) + 11) : ℚ) / 3 + 1

end

end A401793.P849137189725280018

namespace A401793

/-- `n*(n+1)*((n+1)*(7*(n+1)-9)+11)/3+1` -/
def P849137189725280018.Spec : Prop :=
  ∀ n, P849137189725280018.a n = (A401793 (n + 1) : ℚ)

end A401793

/-! ## A401793.P11123606982212807086

`A401792((n+1)²+n²)`
-/

namespace A401793.P11123606982212807086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401792 ((n + 1) ^ 2 + n ^ 2)

end

end A401793.P11123606982212807086

namespace A401793

/-- `A401792((n+1)²+n²)` -/
def P11123606982212807086.Spec : Prop :=
  ∀ n, P11123606982212807086.a n = A401793 (n + 1)

end A401793

/-!
# A401795: Triangle read by rows: T(n,k) is the number of nonempty convex vertex sets with diameter k in the n-Fibonacci cube graph.

The programs for A401795, there is no canonical definition to state claims against.
-/

/-! ## A401795.P11297433909675468099

`A125749(A362924(n+1))`
-/

namespace A401795.P11297433909675468099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125749 (A362924 (n + 1)).toNat

end

end A401795.P11297433909675468099

/-!
# A401798: Triangle read by rows: T(n,k) is the number of nonempty convex vertex sets in the Johnson graph J(n, k).

The programs for A401798, there is no canonical definition to state claims against.
-/

/-! ## A401798.P8297388835206084914

`A127288(A046802(n))`
-/

namespace A401798.P8297388835206084914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127288 (A046802 n).toNat

end

end A401798.P8297388835206084914

/-! ## A401798.P3468705671313968056

`A171968(A157152(n))`
-/

namespace A401798.P3468705671313968056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171968 (A157152 n).toNat

end

end A401798.P3468705671313968056

/-! ## A401798.P8295479422835709200

`A175187(A155971(n))`
-/

namespace A401798.P8295479422835709200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175187 (A155971 n).toNat

end

end A401798.P8295479422835709200

/-! ## A401798.P13704006902858568876

`A113219(A328300(n))`
-/

namespace A401798.P13704006902858568876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113219 (A328300 n).toNat

end

end A401798.P13704006902858568876

/-! ## A401798.P4191120291406356265

`A057561(A142595(n+1))`
-/

namespace A401798.P4191120291406356265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057561 (A142595 (n + 1)).toNat

end

end A401798.P4191120291406356265

/-!
# A401799: Number of nonempty convex vertex sets in the n-tetrahedral (Johnson) graph.

The programs for A401799, the canonical program `A401799.P187161845506511648` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401799 has offset 3).

The definition of A401799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401799.P187161845506511648

`((n+3)²+3*(n+3)+8)*2^n-((n+3)^3-(n+3)²+2*(n+3)+1)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401799

/-- `((n+3)²+3*(n+3)+8)*2^n-((n+3)^3-(n+3)²+2*(n+3)+1)` -/
def P187161845506511648.Spec : Prop :=
  ∀ n, P187161845506511648.a n = A401799 (n + 3)

theorem P187161845506511648.correct : P187161845506511648.Spec := by
  intro n
  simp only [A401799, Nat.add_sub_cancel]

end A401799

/-! ## A401799.P17273325662118696431

`A401798(A167614(n+2))`
-/

namespace A401799.P17273325662118696431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401798 (A167614 (n + 2)).toNat

end

end A401799.P17273325662118696431

namespace A401799

/-- `A401798(A167614(n+2))` -/
def P17273325662118696431.Spec : Prop :=
  ∀ n, P17273325662118696431.a n = A401799 (n + 3)

end A401799

