import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C039
import Seq.B000.C041
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C002
import Seq.B007.C000
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
import Seq.Opaque.C010
import Seq.Opaque.C012
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

/-! ## A401706.P40893267261009488

`A327395(A304404(n+1))`
-/

namespace A401706.P40893267261009488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327395 (A304404 (n + 1)).toNat

end

end A401706.P40893267261009488

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

/-! ## A401708.P16691716694861992159

`gcd(A345994(n+1), A365547(n))`
-/

namespace A401708.P16691716694861992159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A345994 (n + 1)) (A365547 n)

end

end A401708.P16691716694861992159

/-! ## A401708.P3523089161406039971

`A330692(n+1)%A366153(n+1)`
-/

namespace A401708.P3523089161406039971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330692 (n + 1)) (A366153 (n + 1))

end

end A401708.P3523089161406039971

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

The programs for A401714, there is no canonical definition to state claims against.
-/

/-! ## A401714.P6768754910253124235

`Δ[fp[A393981(n+1)]]`
-/

namespace A401714.P6768754910253124235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393981 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A401714.P6768754910253124235

/-! ## A401714.P9168495009160341126

`A000007(A360543(n+1))`
-/

namespace A401714.P9168495009160341126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A360543 (n + 1)).toNat

end

end A401714.P9168495009160341126

/-! ## A401714.P3797418826536058033

`and(A015123(n), A401715(n+1))`
-/

namespace A401714.P3797418826536058033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015123 n) (A401715 (n + 1))

end

end A401714.P3797418826536058033

/-! ## A401714.P3182113353645488739

`and(A069403(n), A401715(n+1))`
-/

namespace A401714.P3182113353645488739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069403 n) (A401715 (n + 1))

end

end A401714.P3182113353645488739

/-! ## A401714.P13162925007914490020

`and(A084707(n), A401715(n+1))`
-/

namespace A401714.P13162925007914490020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084707 n) (A401715 (n + 1))

end

end A401714.P13162925007914490020

/-! ## A401714.P14951614556803152063

`and(A109793(n), A401715(n+1))`
-/

namespace A401714.P14951614556803152063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A109793 n) (A401715 (n + 1))

end

end A401714.P14951614556803152063

/-! ## A401714.P3646015947429185029

`and(A265802(n), A401715(n+1))`
-/

namespace A401714.P3646015947429185029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265802 n) (A401715 (n + 1))

end

end A401714.P3646015947429185029

/-! ## A401714.P2620067635083646417

`and(A104545(n), A401715(n+1))`
-/

namespace A401714.P2620067635083646417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104545 n) (A401715 (n + 1))

end

end A401714.P2620067635083646417

/-! ## A401714.P1482798512545175402

`and(A128500(n), A401715(n+1))`
-/

namespace A401714.P1482798512545175402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A128500 n) (A401715 (n + 1))

end

end A401714.P1482798512545175402

/-! ## A401714.P8474643003637956445

`and(A077996(n), A401715(n+1))`
-/

namespace A401714.P8474643003637956445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077996 n) (A401715 (n + 1))

end

end A401714.P8474643003637956445

/-! ## A401714.P11489722029304672043

`and(A078059(n), A401715(n+1))`
-/

namespace A401714.P11489722029304672043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078059 n) (A401715 (n + 1))

end

end A401714.P11489722029304672043

/-! ## A401714.P7617960007763825646

`and(A098480(n), A401715(n+1))`
-/

namespace A401714.P7617960007763825646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098480 n) (A401715 (n + 1))

end

end A401714.P7617960007763825646

/-! ## A401714.P4730494831031096389

`and(A144186(n), A401715(n+1))`
-/

namespace A401714.P4730494831031096389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A144186 n) (A401715 (n + 1))

end

end A401714.P4730494831031096389

/-! ## A401714.P16410694873200202990

`and(A068111(n), A401715(n+1))`
-/

namespace A401714.P16410694873200202990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068111 n) (A401715 (n + 1))

end

end A401714.P16410694873200202990

/-! ## A401714.P11418604217740685169

`and(A052948(n), A401715(n+1))`
-/

namespace A401714.P11418604217740685169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052948 n) (A401715 (n + 1))

end

end A401714.P11418604217740685169

/-! ## A401714.P6656802351011982836

`and(A077917(n), A401715(n+1))`
-/

namespace A401714.P6656802351011982836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077917 n) (A401715 (n + 1))

end

end A401714.P6656802351011982836

/-! ## A401714.P141336695696238816

`and(A108781(n), A401715(n+1))`
-/

namespace A401714.P141336695696238816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108781 n) (A401715 (n + 1))

end

end A401714.P141336695696238816

/-! ## A401714.P246696084424039804

`and(A108898(n), A401715(n+1))`
-/

namespace A401714.P246696084424039804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108898 n) (A401715 (n + 1))

end

end A401714.P246696084424039804

/-! ## A401714.P7386788166712881913

`and(A116390(n), A401715(n+1))`
-/

namespace A401714.P7386788166712881913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A116390 n) (A401715 (n + 1))

end

end A401714.P7386788166712881913

/-! ## A401714.P4632958677571039411

`and(A124698(n), A401715(n+1))`
-/

namespace A401714.P4632958677571039411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124698 n) (A401715 (n + 1))

end

end A401714.P4632958677571039411

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

The programs for A401716, there is no canonical definition to state claims against.
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

/-! ## A401716.P8478935060395761402

`A355447(n+1)*A401714(n+1)`
-/

namespace A401716.P8478935060395761402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355447 (n + 1) * A401714 (n + 1)

end

end A401716.P8478935060395761402

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

/-! ## A401716.P6331059495374538171

`A375933(n+1)*A401714(n+1)`
-/

namespace A401716.P6331059495374538171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375933 (n + 1) * A401714 (n + 1)

end

end A401716.P6331059495374538171

/-! ## A401716.P8474198932278352741

`A389905(n+1)*A401714(n+1)`
-/

namespace A401716.P8474198932278352741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389905 (n + 1) * A401714 (n + 1)

end

end A401716.P8474198932278352741

/-! ## A401716.P6435464469065739574

`A374247(n+1)*A401714(n+1)`
-/

namespace A401716.P6435464469065739574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374247 (n + 1) * A401714 (n + 1)

end

end A401716.P6435464469065739574

/-! ## A401716.P15089881191861445143

`A374247(n+1)*A401715(n+1)`
-/

namespace A401716.P15089881191861445143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374247 (n + 1) * A401715 (n + 1)

end

end A401716.P15089881191861445143

/-!
# A401717: a(n) = 1 if A003557(n) > A053669(n) and n is neither squarefree nor prime power, otherwise 0, where A003557(n) is n divided by its squarefree kernel, and A053669(n) is the smallest prime not dividing n.

The programs for A401717, there is no canonical definition to state claims against.
-/

/-! ## A401717.P2595911180210568003

`A355447(n+1)-A401716(n+1)`
-/

namespace A401717.P2595911180210568003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355447 (n + 1) - A401716 (n + 1)

end

end A401717.P2595911180210568003

/-! ## A401717.P17721156777897390035

`A355447(n+1)*(1-A401714(n+1))`
-/

namespace A401717.P17721156777897390035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355447 (n + 1) * (1 - A401714 (n + 1))

end

end A401717.P17721156777897390035

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

/-! ## A401717.P6894329073623770642

`A332284(n)%A355382(n+1)`
-/

namespace A401717.P6894329073623770642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332284 n) (A355382 (n + 1))

end

end A401717.P6894329073623770642

/-! ## A401717.P16472370121551663834

`A218128(n)%A355382(n+1)`
-/

namespace A401717.P16472370121551663834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218128 n) (A355382 (n + 1))

end

end A401717.P16472370121551663834

/-! ## A401717.P10294890028876469253

`and(A218128(n), A355447(n+1))`
-/

namespace A401717.P10294890028876469253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A218128 n) (A355447 (n + 1))

end

end A401717.P10294890028876469253

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
# A401724: a(n) = A276085(n) mod A342001(n), where A342001(n) = A003415(n)/A003557(n), and A276085 is fully additive with a(p) = p#/p.

The programs for A401724, there is no canonical definition to state claims against.
-/

/-! ## A401724.P1629585607848376943

`A276085(n+2)%A342001(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401724.P1629585607848376943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276085 (n + 2)) (A342001 (n + 2))

end

end A401724.P1629585607848376943

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

/-! ## A401779.P14309072938780563138

`A125753(A116735(n+2))`
-/

namespace A401779.P14309072938780563138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125753 (A116735 (n + 2)).toNat

end

end A401779.P14309072938780563138

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

/-! ## A401790.P15522316760735178025

`A136494(A266462(n))`
-/

namespace A401790.P15522316760735178025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136494 (A266462 n).toNat

end

end A401790.P15522316760735178025

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

