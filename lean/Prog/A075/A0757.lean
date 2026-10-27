import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
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
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A075700: Decimal expansion of -zeta'(0).

The programs for A075700, there is no canonical definition to state claims against.
-/

/-! ## A075700.P8917813813223012068

`9-A110544(n)`
-/

namespace A075700.P8917813813223012068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A110544 n

end

end A075700.P8917813813223012068

/-! ## A075700.P16492641993818555513

`A122914(n+1)+A020761(n)`
-/

namespace A075700.P16492641993818555513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122914 (n + 1 + 1) + A020761 n

end

end A075700.P16492641993818555513

/-!
# A075701: a(1)=1, a(n+1)=sigma(a(n))-2*a(n).

The programs for A075701, the canonical program `A075701.P14381727279557985460` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075701 has offset 1).

The definition of A075701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075701.P14381727279557985460

`A000203(abs(a(n-1)))-2*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075701

/-- `A000203(abs(a(n-1)))-2*a(n-1)` -/
def P14381727279557985460.Spec : Prop :=
  ∀ n, P14381727279557985460.a n = A075701 (n + 1)

theorem P14381727279557985460.correct : P14381727279557985460.Spec := by
  intro n
  simp only [A075701, Nat.add_sub_cancel]

end A075701

/-!
# A075704: p and 12*p+1 are both primes.

The programs for A075704, the canonical program `A075704.P3489623955875780024` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075704 has offset 0).

The definition of A075704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 956 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075704.P15217078726629310225

`p?[2*A139529(n+1)+1]`
-/

namespace A075704.P15217078726629310225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139529 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075704.P15217078726629310225

namespace A075704

/-- `p?[2*A139529(n+1)+1]` -/
def P15217078726629310225.Spec : Prop :=
  ∀ n, P15217078726629310225.a n = A075704 n

end A075704

/-! ## A075704.P3489623955875780024

`p?[A110801(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A075704

/-- `p?[A110801(n+1)]` -/
def P3489623955875780024.Spec : Prop :=
  ∀ n, P3489623955875780024.a n = A075704 n

theorem P3489623955875780024.correct : P3489623955875780024.Spec := by
  intro n
  simp only [A075704]

end A075704

/-! ## A075704.P17790020709800413501

`record[A006530(A110801(n+2))]`
-/

namespace A075704.P17790020709800413501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A110801 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075704.P17790020709800413501

namespace A075704

/-- `record[A006530(A110801(n+2))]` -/
def P17790020709800413501.Spec : Prop :=
  ∀ n, P17790020709800413501.a n = A075704 n

end A075704

/-! ## A075704.P17051679136091913404

`filter[A110801(n+1), A010051(#)]`
-/

namespace A075704.P17051679136091913404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A075704.P17051679136091913404

namespace A075704

/-- `filter[A110801(n+1), A010051(#)]` -/
def P17051679136091913404.Spec : Prop :=
  ∀ n, P17051679136091913404.a n = A075704 n

end A075704

/-! ## A075704.P12040918268962975720

`∩[A110801(n+1), A042990(n)]`
-/

namespace A075704.P12040918268962975720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075704.P12040918268962975720

namespace A075704

/-- `∩[A110801(n+1), A042990(n)]` -/
def P12040918268962975720.Spec : Prop :=
  ∀ n, (P12040918268962975720.a n : ℤ) = A075704 n

end A075704

/-! ## A075704.P15482176782821704154

`∩[A000040(n+1), A110801(n+1)]`
-/

namespace A075704.P15482176782821704154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075704.P15482176782821704154

namespace A075704

/-- `∩[A000040(n+1), A110801(n+1)]` -/
def P15482176782821704154.Spec : Prop :=
  ∀ n, (P15482176782821704154.a n : ℤ) = A075704 n

end A075704

/-! ## A075704.P711057171148943184

`∩[A045311(n+1), A110801(n+1)]`
-/

namespace A075704.P711057171148943184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075704.P711057171148943184

namespace A075704

/-- `∩[A045311(n+1), A110801(n+1)]` -/
def P711057171148943184.Spec : Prop :=
  ∀ n, (P711057171148943184.a n : ℤ) = A075704 n

end A075704

/-! ## A075704.P760934060263064455

`∩[A045405(n+1), A110801(n+1)]`
-/

namespace A075704.P760934060263064455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075704.P760934060263064455

namespace A075704

/-- `∩[A045405(n+1), A110801(n+1)]` -/
def P760934060263064455.Spec : Prop :=
  ∀ n, (P760934060263064455.a n : ℤ) = A075704 n

end A075704

/-! ## A075704.P11496337368843498876

`∩[A049545(n+1), A110801(n+1)]`
-/

namespace A075704.P11496337368843498876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075704.P11496337368843498876

namespace A075704

/-- `∩[A049545(n+1), A110801(n+1)]` -/
def P11496337368843498876.Spec : Prop :=
  ∀ n, (P11496337368843498876.a n : ℤ) = A075704 n

end A075704

/-! ## A075704.P5884238572213980418

`∩[A065091(n+1), A110801(n+1)]`
-/

namespace A075704.P5884238572213980418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075704.P5884238572213980418

namespace A075704

/-- `∩[A065091(n+1), A110801(n+1)]` -/
def P5884238572213980418.Spec : Prop :=
  ∀ n, (P5884238572213980418.a n : ℤ) = A075704 n

end A075704

/-! ## A075704.P4566346044391857232

`∩[A110801(n+1), A175787(n+1)]`
-/

namespace A075704.P4566346044391857232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075704.P4566346044391857232

namespace A075704

/-- `∩[A110801(n+1), A175787(n+1)]` -/
def P4566346044391857232.Spec : Prop :=
  ∀ n, (P4566346044391857232.a n : ℤ) = A075704 n

end A075704

/-! ## A075704.P247653957105106529

`∩[A110801(n+1), A182986(n+1)]`
-/

namespace A075704.P247653957105106529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075704.P247653957105106529

namespace A075704

/-- `∩[A110801(n+1), A182986(n+1)]` -/
def P247653957105106529.Spec : Prop :=
  ∀ n, (P247653957105106529.a n : ℤ) = A075704 n

end A075704

/-! ## A075704.P610726504806372498

`p?[A005408(A139529(n+1))]`
-/

namespace A075704.P610726504806372498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A139529 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075704.P610726504806372498

namespace A075704

/-- `p?[A005408(A139529(n+1))]` -/
def P610726504806372498.Spec : Prop :=
  ∀ n, P610726504806372498.a n = A075704 n

end A075704

/-! ## A075704.P1174537818548559001

`A006530((A158018(n+1)-1)/2)`
-/

namespace A075704.P1174537818548559001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A158018 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A075704.P1174537818548559001

namespace A075704

/-- `A006530((A158018(n+1)-1)/2)` -/
def P1174537818548559001.Spec : Prop :=
  ∀ n, P1174537818548559001.a n = A075704 n

end A075704

/-! ## A075704.P14183675217421348747

`filter[A110801(n+2), A080339(#)]`
-/

namespace A075704.P14183675217421348747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110801 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A075704.P14183675217421348747

namespace A075704

/-- `filter[A110801(n+2), A080339(#)]` -/
def P14183675217421348747.Spec : Prop :=
  ∀ n, P14183675217421348747.a n = A075704 n

end A075704

/-! ## A075704.P12609507049360236454

`filter[A110801(n+2), A080545(#)]`
-/

namespace A075704.P12609507049360236454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110801 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A075704.P12609507049360236454

namespace A075704

/-- `filter[A110801(n+2), A080545(#)]` -/
def P12609507049360236454.Spec : Prop :=
  ∀ n, P12609507049360236454.a n = A075704 n

end A075704

/-! ## A075704.P12070232262480382855

`∩[A110801(n+1), A176162(n+1)]`
-/

namespace A075704.P12070232262480382855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075704.P12070232262480382855

namespace A075704

/-- `∩[A110801(n+1), A176162(n+1)]` -/
def P12070232262480382855.Spec : Prop :=
  ∀ n, (P12070232262480382855.a n : ℤ) = A075704 n

end A075704

/-! ## A075704.P5566476942688211775

`p?[eq[1, A001222(12*n+1)]]`
-/

namespace A075704.P5566476942688211775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (12 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A075704.P5566476942688211775

namespace A075704

/-- `p?[eq[1, A001222(12*n+1)]]` -/
def P5566476942688211775.Spec : Prop :=
  ∀ n, (P5566476942688211775.a n : ℤ) = A075704 n

end A075704

/-! ## A075704.P8713606163214814516

`p?[eq[2, A000005(12*n+1)]]`
-/

namespace A075704.P8713606163214814516
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (12 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A075704.P8713606163214814516

namespace A075704

/-- `p?[eq[2, A000005(12*n+1)]]` -/
def P8713606163214814516.Spec : Prop :=
  ∀ n, (P8713606163214814516.a n : ℤ) = A075704 n

end A075704

/-! ## A075704.P16461256740367909107

`p?[lt[A000005(12*(n+1)+1), 3]+1]`
-/

namespace A075704.P16461256740367909107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (12 * (n + 1) + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A075704.P16461256740367909107

namespace A075704

/-- `p?[lt[A000005(12*(n+1)+1), 3]+1]` -/
def P16461256740367909107.Spec : Prop :=
  ∀ n, (P16461256740367909107.a n : ℤ) = A075704 n

end A075704

/-!
# A075705: Safe primes (A005385) (p and (p-1)/2 are primes) such that 6*p+1 is also prime.

The programs for A075705, there is no canonical definition to state claims against.
-/

/-! ## A075705.P2996319660786562820

`∩[A005385(n+1), A007693(n+1)]`
-/

namespace A075705.P2996319660786562820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075705.P2996319660786562820

/-! ## A075705.P4922635073689398124

`∩[A007693(n+1), A065966(n+1)]`
-/

namespace A075705.P4922635073689398124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075705.P4922635073689398124

/-! ## A075705.P13944522187788336388

`∩[A007693(n+1), A395563(n+1)]`
-/

namespace A075705.P13944522187788336388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075705.P13944522187788336388

/-! ## A075705.P9395223770832019342

`∩[A007693(n+1), A072055(n+1)]`
-/

namespace A075705.P9395223770832019342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075705.P9395223770832019342

/-! ## A075705.P14750669035019419366

`∩[A007693(n+1), A124109(n+1)]`
-/

namespace A075705.P14750669035019419366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075705.P14750669035019419366

/-! ## A075705.P4658822169940503982

`∩[A007693(n+1), A088707(n+1)]`
-/

namespace A075705.P4658822169940503982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075705.P4658822169940503982

/-! ## A075705.P17468430686026001698

`∩[A005385(n+1), A024899(n+1)]`
-/

namespace A075705.P17468430686026001698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075705.P17468430686026001698

/-! ## A075705.P881160247679156428

`∩[A005385(n+1), A364869(n+1)]`
-/

namespace A075705.P881160247679156428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075705.P881160247679156428

/-! ## A075705.P9428395107538466798

`p?[A260518(A000040(n+1))]`
-/

namespace A075705.P9428395107538466798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260518 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075705.P9428395107538466798

/-! ## A075705.P12456948460756983310

`p?[A260518(A005384(n+1))]`
-/

namespace A075705.P12456948460756983310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260518 (A005384 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075705.P12456948460756983310

/-!
# A075706: Safe primes (A005385) (p and (p-1)/2 are primes) such that 8*p+1 (A023228) is also prime.

The programs for A075706, the canonical program `A075706.P15836604231121024393` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075706 has offset 1).

The definition of A075706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 868 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075706.P14786545015647521042

`∩[A005385(n+1), A023228(n+1)]`
-/

namespace A075706.P14786545015647521042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075706.P14786545015647521042

namespace A075706

/-- `∩[A005385(n+1), A023228(n+1)]` -/
def P14786545015647521042.Spec : Prop :=
  ∀ n, (P14786545015647521042.a n : ℤ) = A075706 (n + 1)

end A075706

/-! ## A075706.P15836604231121024393

`∩[A023228(n+1), A065966(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A075706

/-- `∩[A023228(n+1), A065966(n+1)]` -/
def P15836604231121024393.Spec : Prop :=
  ∀ n, (P15836604231121024393.a n : ℤ) = A075706 (n + 1)

theorem P15836604231121024393.correct : P15836604231121024393.Spec := by
  intro n
  simp only [A075706, Nat.add_sub_cancel]

end A075706

/-! ## A075706.P830874764948834067

`∩[A023228(n+1), A391049(n+1)]`
-/

namespace A075706.P830874764948834067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075706.P830874764948834067

namespace A075706

/-- `∩[A023228(n+1), A391049(n+1)]` -/
def P830874764948834067.Spec : Prop :=
  ∀ n, (P830874764948834067.a n : ℤ) = A075706 (n + 1)

end A075706

/-! ## A075706.P13543246424027127655

`∩[A023228(n+1), A395563(n+1)]`
-/

namespace A075706.P13543246424027127655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075706.P13543246424027127655

namespace A075706

/-- `∩[A023228(n+1), A395563(n+1)]` -/
def P13543246424027127655.Spec : Prop :=
  ∀ n, (P13543246424027127655.a n : ℤ) = A075706 (n + 1)

end A075706

/-! ## A075706.P12107171977764886732

`∩[A023228(n+1), A072055(n+1)]`
-/

namespace A075706.P12107171977764886732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075706.P12107171977764886732

namespace A075706

/-- `∩[A023228(n+1), A072055(n+1)]` -/
def P12107171977764886732.Spec : Prop :=
  ∀ n, (P12107171977764886732.a n : ℤ) = A075706 (n + 1)

end A075706

/-! ## A075706.P13273886925329921990

`∩[A005123(n+1), A005385(n+1)]`
-/

namespace A075706.P13273886925329921990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075706.P13273886925329921990

namespace A075706

/-- `∩[A005123(n+1), A005385(n+1)]` -/
def P13273886925329921990.Spec : Prop :=
  ∀ n, (P13273886925329921990.a n : ℤ) = A075706 (n + 1)

end A075706

/-! ## A075706.P11465784028797506800

`p?[A002659(p?[A105134(n+1)])]`
-/

namespace A075706.P11465784028797506800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105134 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002659 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075706.P11465784028797506800

namespace A075706

/-- `p?[A002659(p?[A105134(n+1)])]` -/
def P11465784028797506800.Spec : Prop :=
  ∀ n, P11465784028797506800.a n = A075706 (n + 1)

end A075706

/-!
# A075707: Safe primes (A005385) (p and (p-1)/2 are primes) such that 12*p+1 is also prime.

The programs for A075707, the canonical program `A075707.P9445237608610281782` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075707 has offset 1).

The definition of A075707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 536 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075707.P9717932357372983491

`∩[A005385(n+1), A075704(n)]`
-/

namespace A075707.P9717932357372983491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075704 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075707.P9717932357372983491

namespace A075707

/-- `∩[A005385(n+1), A075704(n)]` -/
def P9717932357372983491.Spec : Prop :=
  ∀ n, (P9717932357372983491.a n : ℤ) = A075707 (n + 1)

end A075707

/-! ## A075707.P9445237608610281782

`∩[A065966(n+1), A075704(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A075707

/-- `∩[A065966(n+1), A075704(n)]` -/
def P9445237608610281782.Spec : Prop :=
  ∀ n, (P9445237608610281782.a n : ℤ) = A075707 (n + 1)

theorem P9445237608610281782.correct : P9445237608610281782.Spec := by
  intro n
  simp only [A075707, Nat.add_sub_cancel]

end A075707

/-! ## A075707.P10378298100729695711

`∩[A395563(n+1), A075704(n)]`
-/

namespace A075707.P10378298100729695711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075704 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075707.P10378298100729695711

namespace A075707

/-- `∩[A395563(n+1), A075704(n)]` -/
def P10378298100729695711.Spec : Prop :=
  ∀ n, (P10378298100729695711.a n : ℤ) = A075707 (n + 1)

end A075707

/-! ## A075707.P694185433707652397

`∩[A072055(n+1), A075704(n)]`
-/

namespace A075707.P694185433707652397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075704 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075707.P694185433707652397

namespace A075707

/-- `∩[A072055(n+1), A075704(n)]` -/
def P694185433707652397.Spec : Prop :=
  ∀ n, (P694185433707652397.a n : ℤ) = A075707 (n + 1)

end A075707

/-! ## A075707.P12586014746332607149

`∩[A124109(n+1), A075704(n)]`
-/

namespace A075707.P12586014746332607149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075704 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075707.P12586014746332607149

namespace A075707

/-- `∩[A124109(n+1), A075704(n)]` -/
def P12586014746332607149.Spec : Prop :=
  ∀ n, (P12586014746332607149.a n : ℤ) = A075707 (n + 1)

end A075707

/-! ## A075707.P2668508472445750940

`∩[A088707(n+1), A075704(n)]`
-/

namespace A075707.P2668508472445750940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075704 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075707.P2668508472445750940

namespace A075707

/-- `∩[A088707(n+1), A075704(n)]` -/
def P2668508472445750940.Spec : Prop :=
  ∀ n, (P2668508472445750940.a n : ℤ) = A075707 (n + 1)

end A075707

/-! ## A075707.P3203938818757592405

`∩[A005385(n+1), A110801(n+1)]`
-/

namespace A075707.P3203938818757592405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075707.P3203938818757592405

namespace A075707

/-- `∩[A005385(n+1), A110801(n+1)]` -/
def P3203938818757592405.Spec : Prop :=
  ∀ n, (P3203938818757592405.a n : ℤ) = A075707 (n + 1)

end A075707

/-!
# A075708: Sum of the divisors of 2^n - 1.

The programs for A075708, the canonical program `A075708.P839927732500946037` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075708 has offset 1).

The definition of A075708 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075708.P839927732500946037

`A000203(2^(n+1)-1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075708

/-- `A000203(2^(n+1)-1)` -/
def P839927732500946037.Spec : Prop :=
  ∀ n, P839927732500946037.a n = A075708 (n + 1)

theorem P839927732500946037.correct : P839927732500946037.Spec := by
  intro n
  simp only [A075708, Nat.add_sub_cancel]

end A075708

/-! ## A075708.P4110473589689709727

`∑[A329890(n+1)]`
-/

namespace A075708.P4110473589689709727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075708.P4110473589689709727

namespace A075708

/-- `∑[A329890(n+1)]` -/
def P4110473589689709727.Spec : Prop :=
  ∀ n, P4110473589689709727.a n = A075708 (n + 1)

end A075708

/-! ## A075708.P13205350202558969072

`A329890(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A075708.P13205350202558969072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A329890 (n + 1) + a (A023443 n).toNat

end

end A075708.P13205350202558969072

namespace A075708

/-- `A329890(n+1)+a(A023443(n))` -/
def P13205350202558969072.Spec : Prop :=
  ∀ n, P13205350202558969072.a n = A075708 (n + 1)

end A075708

/-! ## A075708.P10421450105080092776

`∑[2^(n+1)-A329891(n+1)]`
-/

namespace A075708.P10421450105080092776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A329891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075708.P10421450105080092776

namespace A075708

/-- `∑[2^(n+1)-A329891(n+1)]` -/
def P10421450105080092776.Spec : Prop :=
  ∀ n, P10421450105080092776.a n = A075708 (n + 1)

end A075708

/-! ## A075708.P18112285270567333664

`abs(∑[A000079(n+1)-A329891(n+1)])`
-/

namespace A075708.P18112285270567333664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A329891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A075708.P18112285270567333664

namespace A075708

/-- `abs(∑[A000079(n+1)-A329891(n+1)])` -/
def P18112285270567333664.Spec : Prop :=
  ∀ n, P18112285270567333664.a n = A075708 (n + 1)

end A075708

/-! ## A075708.P9143506801254333115

`∑[2*A329891(n+1)-A329892(n+1)]`
-/

namespace A075708.P9143506801254333115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A329891 (n + 1) - A329892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075708.P9143506801254333115

namespace A075708

/-- `∑[2*A329891(n+1)-A329892(n+1)]` -/
def P9143506801254333115.Spec : Prop :=
  ∀ n, P9143506801254333115.a n = A075708 (n + 1)

end A075708

/-! ## A075708.P16053249779660184854

`A366603(n+1)/A069061(n+1)`
-/

namespace A075708.P16053249779660184854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366603 (n + 1) : ℚ) / (A069061 (n + 1) : ℚ)

end

end A075708.P16053249779660184854

namespace A075708

/-- `A366603(n+1)/A069061(n+1)` -/
def P16053249779660184854.Spec : Prop :=
  ∀ n, P16053249779660184854.a n = (A075708 (n + 1) : ℚ)

end A075708

/-!
# A075709: Upper irredundance number for kings graph K_n on n^2 nodes.

The programs for A075709, there is no canonical definition to state claims against.
-/

/-! ## A075709.P17220126304482355232

`∑[n+1-a(n-1)]` with `a(0)=1, a(1)=0, a(2)=3, a(3)=0, a(4)=5, a(5)=0`
-/

namespace A075709.P17220126304482355232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3, 0, 5, 0] fun n f1 =>
  (n + 1 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075709.P17220126304482355232

/-! ## A075709.P12329363027716695309

`n*(n+1)/2+round((n+3)*(n+7)/28)-a(n-1)` with `a(0)=1`
-/

namespace A075709.P12329363027716695309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * ((n + 1 : ℚ) / 2) + ((SequenceMachineLib.roundAway ((n + 3 : ℚ) * ((n + 7 : ℚ) / 28)) : ℚ) - a (n - 1))

end

end A075709.P12329363027716695309

/-! ## A075709.P379769262829031334

`A293260(n+1)+∑[log2(gcd(2, n))]²`
-/

namespace A075709.P379769262829031334
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A293260 (n + 1) : ℝ) + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A075709.P379769262829031334

/-! ## A075709.P8079914129085959171

`∑[(n+1-a(n-1))*A025819(n)]` with `a(0)=1`
-/

namespace A075709.P8079914129085959171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n + 1 : ℤ) - f1 (n - 1)) * A025819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075709.P8079914129085959171

/-! ## A075709.P16224037004957858644

`∑[∑{digits}[n^8, (#%2)!]%A336913(n+1)]`
-/

namespace A075709.P16224037004957858644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial (x % 2)).sum : ℕ) : ℤ) (A336913 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075709.P16224037004957858644

/-!
# A075712: Rearrangement of primes into Germain groups (or Cunningham chains).

The programs for A075712, there is no canonical definition to state claims against.
-/

/-! ## A075712.P4478842019000242040

`p?[A348855(n+1)]`
-/

namespace A075712.P4478842019000242040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075712.P4478842019000242040

/-! ## A075712.P17146085313058016082

`filter[A348855(n+1), A010051(#)]`
-/

namespace A075712.P17146085313058016082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A075712.P17146085313058016082

/-! ## A075712.P5400418132485071639

`filter[A348855(n+1), A302777(#)]`
-/

namespace A075712.P5400418132485071639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A075712.P5400418132485071639

/-! ## A075712.P2131738158661009906

`filter[A348855(n+1), A323153(#)]`
-/

namespace A075712.P2131738158661009906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A075712.P2131738158661009906

/-! ## A075712.P2008888018480621993

`filter[A348855(n+1), A353499(#)]`
-/

namespace A075712.P2008888018480621993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A075712.P2008888018480621993

/-! ## A075712.P7125719849144326758

`filter[A348855(n+2), A323152(#)]`
-/

namespace A075712.P7125719849144326758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348855 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A075712.P7125719849144326758

/-! ## A075712.P11383236548237400165

`filter[A348855(n+2), A340371(#)]`
-/

namespace A075712.P11383236548237400165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348855 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A075712.P11383236548237400165

/-! ## A075712.P1908213813421828367

`A006530(2*p?[A348855(-xor(n, -1))])`
-/

namespace A075712.P1908213813421828367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348855 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075712.P1908213813421828367

/-! ## A075712.P16262907408104538082

`A028310(p?[A348855(-xor(n, -1))])`
-/

namespace A075712.P16262907408104538082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348855 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075712.P16262907408104538082

/-! ## A075712.P18115301758937744447

`filter[A348855(n+2), A080339(#)]`
-/

namespace A075712.P18115301758937744447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348855 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A075712.P18115301758937744447

/-!
# A075721: a(n+1) = least k with sum of prime factors (with repetition) = a(n)+1 with a(0) = 2.

The programs for A075721, there is no canonical definition to state claims against.
-/

/-! ## A075721.P3930976579550450713

`A056240(a(n-1)+1)` with `a(0)=2`
-/

namespace A075721.P3930976579550450713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A056240 (a (n - 1) + 1).toNat

end

end A075721.P3930976579550450713

/-! ## A075721.P16645923594149794634

`A056240(A020725(a(n-1)))` with `a(0)=2`
-/

namespace A075721.P16645923594149794634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A056240 (A020725 (a (n - 1)).toNat).toNat

end

end A075721.P16645923594149794634

/-! ## A075721.P7579102466439281562

`A056240(A131732(2*a(n-1)))` with `a(0)=2`
-/

namespace A075721.P7579102466439281562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A056240 (A131732 (2 * a (n - 1)).toNat).toNat

end

end A075721.P7579102466439281562

/-!
# A075723: Numbers n such that 1 + n + n^6 is a prime.

The programs for A075723, there is no canonical definition to state claims against.
-/

/-! ## A075723.P2328880968274209803

`record[A138567(n+1)+A120562(n)]`
-/

namespace A075723.P2328880968274209803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138567 (n + 1) + A120562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075723.P2328880968274209803

/-!
# A075726: a(n) = Pi * n^2 rounded off.

The programs for A075726, the canonical program `A075726.P17851996568599737352` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075726 has offset 0).

The definition of A075726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075726.P17851996568599737352

`round(π*n²)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075726

/-- `round(π*n²)` -/
def P17851996568599737352.Spec : Prop :=
  ∀ n, P17851996568599737352.a n = A075726 n

theorem P17851996568599737352.correct : P17851996568599737352.Spec := by
  intro n
  simp only [A075726]

end A075726

/-! ## A075726.P8187017128992379211

`ceil(atan(A016742(n))*A001105(n))`
-/

namespace A075726.P8187017128992379211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A016742 n : ℝ) * (A001105 n : ℝ)⌉

end

end A075726.P8187017128992379211

namespace A075726

/-- `ceil(atan(A016742(n))*A001105(n))` -/
def P8187017128992379211.Spec : Prop :=
  ∀ n, P8187017128992379211.a n = A075726 n

end A075726

/-! ## A075726.P6697798878016711952

`record[A000035(n)*A033551(n+1)]`
-/

namespace A075726.P6697798878016711952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A033551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075726.P6697798878016711952

namespace A075726

/-- `record[A000035(n)*A033551(n+1)]` -/
def P6697798878016711952.Spec : Prop :=
  ∀ n, P6697798878016711952.a n = A075726 n

end A075726

/-! ## A075726.P15349274041738166741

`record[A033551(n+1)*A088705(n)]`
-/

namespace A075726.P15349274041738166741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033551 (n + 1) * A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075726.P15349274041738166741

namespace A075726

/-- `record[A033551(n+1)*A088705(n)]` -/
def P15349274041738166741.Spec : Prop :=
  ∀ n, P15349274041738166741.a n = A075726 n

end A075726

/-! ## A075726.P10241394798142837143

`record[A033551(n+1)-A167297(n+1)]`
-/

namespace A075726.P10241394798142837143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033551 (n + 1) - A167297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075726.P10241394798142837143

namespace A075726

/-- `record[A033551(n+1)-A167297(n+1)]` -/
def P10241394798142837143.Spec : Prop :=
  ∀ n, P10241394798142837143.a n = A075726 n

end A075726

/-! ## A075726.P6619588297955704711

`A022853(n²)`
-/

namespace A075726.P6619588297955704711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 (n ^ 2)

end

end A075726.P6619588297955704711

namespace A075726

/-- `A022853(n²)` -/
def P6619588297955704711.Spec : Prop :=
  ∀ n, P6619588297955704711.a n = A075726 n

end A075726

/-! ## A075726.P16987076519729564733

`xor(1, xor(1, A022853(n*n)))`
-/

namespace A075726.P16987076519729564733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A022853 (n * n)))

end

end A075726.P16987076519729564733

namespace A075726

/-- `xor(1, xor(1, A022853(n*n)))` -/
def P16987076519729564733.Spec : Prop :=
  ∀ n, P16987076519729564733.a n = A075726 n

end A075726

/-! ## A075726.P8760848810598799761

`record[A022853(A123596(n))]`
-/

namespace A075726.P8760848810598799761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 (A123596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075726.P8760848810598799761

namespace A075726

/-- `record[A022853(A123596(n))]` -/
def P8760848810598799761.Spec : Prop :=
  ∀ n, P8760848810598799761.a n = A075726 n

end A075726

/-! ## A075726.P4956689060078659044

`record[A022853(A048865(n+1)^2)]`
-/

namespace A075726.P4956689060078659044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 (A048865 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075726.P4956689060078659044

namespace A075726

/-- `record[A022853(A048865(n+1)^2)]` -/
def P4956689060078659044.Spec : Prop :=
  ∀ n, P4956689060078659044.a n = A075726 n

end A075726

/-! ## A075726.P9213682520969964255

`A022853(n*n)*A263765(n*n)`
-/

namespace A075726.P9213682520969964255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 (n * n) * A263765 (n * n)

end

end A075726.P9213682520969964255

namespace A075726

/-- `A022853(n*n)*A263765(n*n)` -/
def P9213682520969964255.Spec : Prop :=
  ∀ n, P9213682520969964255.a n = A075726 n

end A075726

/-! ## A075726.P2801411010263852913

`A022853(A000290(n))%A001504(n)`
-/

namespace A075726.P2801411010263852913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022853 (A000290 n).toNat) (A001504 n)

end

end A075726.P2801411010263852913

namespace A075726

/-- `A022853(A000290(n))%A001504(n)` -/
def P2801411010263852913.Spec : Prop :=
  ∀ n, P2801411010263852913.a n = A075726 n

end A075726

/-! ## A075726.P18365623026671087276

`A022853(n*n)*A304042(A000217(n))`
-/

namespace A075726.P18365623026671087276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 (n * n) * A304042 (A000217 n).toNat

end

end A075726.P18365623026671087276

namespace A075726

/-- `A022853(n*n)*A304042(A000217(n))` -/
def P18365623026671087276.Spec : Prop :=
  ∀ n, P18365623026671087276.a n = A075726 n

end A075726

/-! ## A075726.P14398550158185682935

`A011793(A001227(n+1))*A022853(n*n)`
-/

namespace A075726.P14398550158185682935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011793 (A001227 (n + 1)).toNat * A022853 (n * n)

end

end A075726.P14398550158185682935

namespace A075726

/-- `A011793(A001227(n+1))*A022853(n*n)` -/
def P14398550158185682935.Spec : Prop :=
  ∀ n, P14398550158185682935.a n = A075726 n

end A075726

/-! ## A075726.P13938044639527264389

`A022853(n*n)*A046951(A001097(n+1))`
-/

namespace A075726.P13938044639527264389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 (n * n) * A046951 (A001097 (n + 1)).toNat

end

end A075726.P13938044639527264389

namespace A075726

/-- `A022853(n*n)*A046951(A001097(n+1))` -/
def P13938044639527264389.Spec : Prop :=
  ∀ n, P13938044639527264389.a n = A075726 n

end A075726

/-! ## A075726.P3301990787998683230

`A022853(n*n)%A001097(A038632(n+1))`
-/

namespace A075726.P3301990787998683230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022853 (n * n)) (A001097 (A038632 (n + 1)).toNat)

end

end A075726.P3301990787998683230

namespace A075726

/-- `A022853(n*n)%A001097(A038632(n+1))` -/
def P3301990787998683230.Spec : Prop :=
  ∀ n, P3301990787998683230.a n = A075726 n

end A075726

/-! ## A075726.P14817531270267869487

`A213177(A000217(n))+A022853(A000290(n))`
-/

namespace A075726.P14817531270267869487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A000217 n).toNat + A022853 (A000290 n).toNat

end

end A075726.P14817531270267869487

namespace A075726

/-- `A213177(A000217(n))+A022853(A000290(n))` -/
def P14817531270267869487.Spec : Prop :=
  ∀ n, P14817531270267869487.a n = A075726 n

end A075726

/-! ## A075726.P18161584527221037169

`ceil(A038130(n²)/2)`
-/

namespace A075726.P18161584527221037169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A038130 (n ^ 2) : ℚ) / 2⌉

end

end A075726.P18161584527221037169

namespace A075726

/-- `ceil(A038130(n²)/2)` -/
def P18161584527221037169.Spec : Prop :=
  ∀ n, P18161584527221037169.a n = A075726 n

end A075726

/-!
# A075727: a(n) = 2 Pi * n rounded off.

The programs for A075727, the canonical program `A075727.P9224500291066450500` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075727 has offset 1).

The definition of A075727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075727.P9224500291066450500

`round(2*π*n)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075727

/-- `round(2*π*n)` -/
def P9224500291066450500.Spec : Prop :=
  ∀ n, P9224500291066450500.a n = A075727 (n + 1)

theorem P9224500291066450500.correct : P9224500291066450500.Spec := by
  intro n
  simp only [A075727, Nat.add_sub_cancel]

end A075727

/-! ## A075727.P315472171267005549

`lt[cos(1/2), cos(n)]`
-/

namespace A075727.P315472171267005549
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos ((1 : ℚ) / 2 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075727.P315472171267005549

namespace A075727

/-- `lt[cos(1/2), cos(n)]` -/
def P315472171267005549.Spec : Prop :=
  ∀ n, (P315472171267005549.a n : ℤ) = A075727 (n + 1)

end A075727

/-! ## A075727.P11043797710832249306

`A022853(2*n)`
-/

namespace A075727.P11043797710832249306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 (2 * n)

end

end A075727.P11043797710832249306

namespace A075727

/-- `A022853(2*n)` -/
def P11043797710832249306.Spec : Prop :=
  ∀ n, P11043797710832249306.a n = A075727 (n + 1)

end A075727

/-! ## A075727.P6135874399365611345

`ceil(A038130(2*n)/2)`
-/

namespace A075727.P6135874399365611345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A038130 (2 * n) : ℚ) / 2⌉

end

end A075727.P6135874399365611345

namespace A075727

/-- `ceil(A038130(2*n)/2)` -/
def P6135874399365611345.Spec : Prop :=
  ∀ n, P6135874399365611345.a n = A075727 (n + 1)

end A075727

/-! ## A075727.P3372960662691512961

`floor(A004082(2*n+1)/2)`
-/

namespace A075727.P3372960662691512961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004082 (2 * n + 1) : ℚ) / 2⌋

end

end A075727.P3372960662691512961

namespace A075727

/-- `floor(A004082(2*n+1)/2)` -/
def P3372960662691512961.Spec : Prop :=
  ∀ n, P3372960662691512961.a n = A075727 (n + 1)

end A075727

/-! ## A075727.P1032538695600828330

`A038130(2*n)-A038130(n)`
-/

namespace A075727.P1032538695600828330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038130 (2 * n) - A038130 n

end

end A075727.P1032538695600828330

namespace A075727

/-- `A038130(2*n)-A038130(n)` -/
def P1032538695600828330.Spec : Prop :=
  ∀ n, P1032538695600828330.a n = A075727 (n + 1)

end A075727

/-! ## A075727.P12695989567640323352

`A004082(2*n+1)-A004082(n+1)`
-/

namespace A075727.P12695989567640323352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004082 (2 * n + 1) - A004082 (n + 1)

end

end A075727.P12695989567640323352

namespace A075727

/-- `A004082(2*n+1)-A004082(n+1)` -/
def P12695989567640323352.Spec : Prop :=
  ∀ n, P12695989567640323352.a n = A075727 (n + 1)

end A075727

/-! ## A075727.P16284093446111049170

`∩[A022853(n), A246395(n)]`
-/

namespace A075727.P16284093446111049170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246395 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075727.P16284093446111049170

namespace A075727

/-- `∩[A022853(n), A246395(n)]` -/
def P16284093446111049170.Spec : Prop :=
  ∀ n, (P16284093446111049170.a n : ℤ) = A075727 (n + 1)

end A075727

/-! ## A075727.P9399039119659203221

`∩[A026309(n+1), A022853(n)]`
-/

namespace A075727.P9399039119659203221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075727.P9399039119659203221

namespace A075727

/-- `∩[A026309(n+1), A022853(n)]` -/
def P9399039119659203221.Spec : Prop :=
  ∀ n, (P9399039119659203221.a n : ℤ) = A075727 (n + 1)

end A075727

/-! ## A075727.P12216545290479739469

`∩[A026311(n+1), A022853(n)]`
-/

namespace A075727.P12216545290479739469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075727.P12216545290479739469

namespace A075727

/-- `∩[A026311(n+1), A022853(n)]` -/
def P12216545290479739469.Spec : Prop :=
  ∀ n, (P12216545290479739469.a n : ℤ) = A075727 (n + 1)

end A075727

/-! ## A075727.P15701130349882713024

`∩[A246404(n+1), A022853(n)]`
-/

namespace A075727.P15701130349882713024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075727.P15701130349882713024

namespace A075727

/-- `∩[A246404(n+1), A022853(n)]` -/
def P15701130349882713024.Spec : Prop :=
  ∀ n, (P15701130349882713024.a n : ℤ) = A075727 (n + 1)

end A075727

/-! ## A075727.P10701729414618246290

`∩[A131503(n+1), A022853(n)]`
-/

namespace A075727.P10701729414618246290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075727.P10701729414618246290

namespace A075727

/-- `∩[A131503(n+1), A022853(n)]` -/
def P10701729414618246290.Spec : Prop :=
  ∀ n, (P10701729414618246290.a n : ℤ) = A075727 (n + 1)

end A075727

/-! ## A075727.P9744159866840545336

`∩[A246441(n+1), A022853(n)]`
-/

namespace A075727.P9744159866840545336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075727.P9744159866840545336

namespace A075727

/-- `∩[A246441(n+1), A022853(n)]` -/
def P9744159866840545336.Spec : Prop :=
  ∀ n, (P9744159866840545336.a n : ℤ) = A075727 (n + 1)

end A075727

/-! ## A075727.P6688649433138780788

`A004526(A004082(2*n+1))`
-/

namespace A075727.P6688649433138780788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004082 (2 * n + 1)).toNat

end

end A075727.P6688649433138780788

namespace A075727

/-- `A004526(A004082(2*n+1))` -/
def P6688649433138780788.Spec : Prop :=
  ∀ n, P6688649433138780788.a n = A075727 (n + 1)

end A075727

/-! ## A075727.P16475383853014521700

`A082964(A022844(A022853(n+n)))`
-/

namespace A075727.P16475383853014521700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082964 (A022844 (A022853 (n + n)).toNat).toNat

end

end A075727.P16475383853014521700

namespace A075727

/-- `A082964(A022844(A022853(n+n)))` -/
def P16475383853014521700.Spec : Prop :=
  ∀ n, P16475383853014521700.a n = A075727 (n + 1)

end A075727

/-!
# A075728: Records in abs(sigma(n)-2*n) (absolute value of A033879).

The programs for A075728, the canonical program `A075728.P10269947681919127988` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075728 has offset 1).

The definition of A075728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075728.P10269947681919127988

`record[abs(2*(n+1)-A000203(n+1))]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075728

/-- `record[abs(2*(n+1)-A000203(n+1))]` -/
def P10269947681919127988.Spec : Prop :=
  ∀ n, P10269947681919127988.a n = A075728 (n + 1)

theorem P10269947681919127988.correct : P10269947681919127988.Spec := by
  intro n
  simp only [A075728, Nat.add_sub_cancel]

end A075728

/-! ## A075728.P4114671498433518786

`record[abs(A000010(n+1)-A051709(n+1))]`
-/

namespace A075728.P4114671498433518786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000010 (n + 1) - A051709 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075728.P4114671498433518786

namespace A075728

/-- `record[abs(A000010(n+1)-A051709(n+1))]` -/
def P4114671498433518786.Spec : Prop :=
  ∀ n, P4114671498433518786.a n = A075728 (n + 1)

end A075728

/-! ## A075728.P6707658154125899595

`record[abs(A033879(n+1))]`
-/

namespace A075728.P6707658154125899595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033879 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075728.P6707658154125899595

namespace A075728

/-- `record[abs(A033879(n+1))]` -/
def P6707658154125899595.Spec : Prop :=
  ∀ n, P6707658154125899595.a n = A075728 (n + 1)

end A075728

/-! ## A075728.P7468628347833843619

`abs(A033879(A074918(n+1)))`
-/

namespace A075728.P7468628347833843619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033879 (A074918 (n + 1)).toNat|

end

end A075728.P7468628347833843619

namespace A075728

/-- `abs(A033879(A074918(n+1)))` -/
def P7468628347833843619.Spec : Prop :=
  ∀ n, P7468628347833843619.a n = A075728 (n + 1)

end A075728

/-! ## A075728.P946275821799433222

`record[gcd(2*(n+1)-A000203(n+1), A033879(n+1))]`
-/

namespace A075728.P946275821799433222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * (n + 1) : ℤ) - A000203 (n + 1)) (A033879 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075728.P946275821799433222

namespace A075728

/-- `record[gcd(2*(n+1)-A000203(n+1), A033879(n+1))]` -/
def P946275821799433222.Spec : Prop :=
  ∀ n, (P946275821799433222.a n : ℤ) = A075728 (n + 1)

end A075728

/-! ## A075728.P639289715074556736

`∑{d}[A033879(A074918(n+1)), A000010(#)]`
-/

namespace A075728.P639289715074556736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A074918 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A075728.P639289715074556736

namespace A075728

/-- `∑{d}[A033879(A074918(n+1)), A000010(#)]` -/
def P639289715074556736.Spec : Prop :=
  ∀ n, P639289715074556736.a n = A075728 (n + 1)

end A075728

/-! ## A075728.P10833750267219004164

`record[abs(A033880(n+1))]`
-/

namespace A075728.P10833750267219004164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033880 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075728.P10833750267219004164

namespace A075728

/-- `record[abs(A033880(n+1))]` -/
def P10833750267219004164.Spec : Prop :=
  ∀ n, P10833750267219004164.a n = A075728 (n + 1)

end A075728

/-! ## A075728.P4885463726961832605

`record[abs(1-A237588(n+1))]`
-/

namespace A075728.P4885463726961832605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A237588 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075728.P4885463726961832605

namespace A075728

/-- `record[abs(1-A237588(n+1))]` -/
def P4885463726961832605.Spec : Prop :=
  ∀ n, P4885463726961832605.a n = A075728 (n + 1)

end A075728

/-! ## A075728.P3938953509172141348

`record[abs(1-A245092(n)+n)]`
-/

namespace A075728.P3938953509172141348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A245092 n + (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075728.P3938953509172141348

namespace A075728

/-- `record[abs(1-A245092(n)+n)]` -/
def P3938953509172141348.Spec : Prop :=
  ∀ n, P3938953509172141348.a n = A075728 (n + 1)

end A075728

/-! ## A075728.P6536324149043979536

`record[abs(n+1-A001065(n+1))]`
-/

namespace A075728.P6536324149043979536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - A001065 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075728.P6536324149043979536

namespace A075728

/-- `record[abs(n+1-A001065(n+1))]` -/
def P6536324149043979536.Spec : Prop :=
  ∀ n, P6536324149043979536.a n = A075728 (n + 1)

theorem P6536324149043979536.correct : P6536324149043979536.Spec := by
  intro n
  simp only [A075728, Nat.add_sub_cancel, A075728.P6536324149043979536.f1, A075728.P6536324149043979536.a, A075728.P10269947681919127988.f1, A075728.P10269947681919127988.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075728

/-! ## A075728.P15013745312221406413

`record[abs(2*n-A064987(n+1)/(n+1)+2)]`
-/

namespace A075728.P15013745312221406413
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℚ) - (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) + 2|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075728.P15013745312221406413

namespace A075728

/-- `record[abs(2*n-A064987(n+1)/(n+1)+2)]` -/
def P15013745312221406413.Spec : Prop :=
  ∀ n, P15013745312221406413.a n = (A075728 (n + 1) : ℚ)

end A075728

/-! ## A075728.P3308786974039425068

`record[abs(A326068(2*(n+1)))]`
-/

namespace A075728.P3308786974039425068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A326068 (2 * (n + 1))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075728.P3308786974039425068

namespace A075728

/-- `record[abs(A326068(2*(n+1)))]` -/
def P3308786974039425068.Spec : Prop :=
  ∀ n, P3308786974039425068.a n = A075728 (n + 1)

end A075728

/-!
# A075729: Number of different hierarchical orderings that can be formed from n labeled elements: these are divided into groups and the elements in each group are then arranged in a "preferential arrangement" or "weak order" as in A000670.

The programs for A075729, there is no canonical definition to state claims against.
-/

/-! ## A075729.P2825027690518792477

`A321000(floor(2/acot(n))+C(n, 2))`
-/

namespace A075729.P2825027690518792477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321000 (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ + (Nat.choose n 2 : ℤ)).toNat

end

end A075729.P2825027690518792477

/-! ## A075729.P11567609435278798734

`A321000(ceil(abs(e-∑[n+2]))-n)`
-/

namespace A075729.P11567609435278798734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321000 (⌈|Real.exp 1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)|⌉ - (n : ℤ)).toNat

end

end A075729.P11567609435278798734

/-! ## A075729.P2243268410664405211

`A326626(n)+A321000(A347553(n+3))`
-/

namespace A075729.P2243268410664405211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326626 n + A321000 (A347553 (n + 3)).toNat

end

end A075729.P2243268410664405211

/-! ## A075729.P15661708945441651712

`gcd(A088155(n), A321000(A347553(n+3)))`
-/

namespace A075729.P15661708945441651712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A088155 n) (A321000 (A347553 (n + 3)).toNat)

end

end A075729.P15661708945441651712

/-! ## A075729.P412759969438054164

`or(A151755(n), A321000(A347553(n+3)))`
-/

namespace A075729.P412759969438054164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151755 n) (A321000 (A347553 (n + 3)).toNat)

end

end A075729.P412759969438054164

/-!
# A075730: Squares of odd semiprimes A046315, odd numbers divisible by exactly 2 primes (counted with multiplicity).

The programs for A075730, the canonical program `A075730.P2011606577070419046` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075730 has offset 1).

The definition of A075730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075730.P2011606577070419046

`A046315(n+1)²`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A075730

/-- `A046315(n+1)²` -/
def P2011606577070419046.Spec : Prop :=
  ∀ n, P2011606577070419046.a n = A075730 (n + 1)

theorem P2011606577070419046.correct : P2011606577070419046.Spec := by
  intro n
  simp only [A075730, Nat.add_sub_cancel]

end A075730

/-! ## A075730.P8677061870543075263

`(A176406(n+1)+2)²`
-/

namespace A075730.P8677061870543075263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176406 (n + 1) + 2) ^ 2

end

end A075730.P8677061870543075263

namespace A075730

/-- `(A176406(n+1)+2)²` -/
def P8677061870543075263.Spec : Prop :=
  ∀ n, P8677061870543075263.a n = A075730 (n + 1)

theorem P8677061870543075263.correct : P8677061870543075263.Spec := by
  intro n
  simp only [A075730, Nat.add_sub_cancel, A075730.P8677061870543075263.a, A075730.P2011606577070419046.a, A046315, A046315.P4459434404324554998.a, A176406, A176406.P4368198873740272747.a, A001358, A001358.P632087320844056370.a, A289182, A289182.P4409354960599188013.f1, A289182.P4409354960599188013.f2, A289182.P4409354960599188013.a, A088707, A088707.P7291141647877559993.a, A106138, A106138.P1314688240599968597.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075730

/-! ## A075730.P90614075096848649

`(2*eq[2, A001222(2*n+1)]+1)²`
-/

namespace A075730.P90614075096848649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A075730.P90614075096848649

namespace A075730

/-- `(2*eq[2, A001222(2*n+1)]+1)²` -/
def P90614075096848649.Spec : Prop :=
  ∀ n, (P90614075096848649.a n : ℤ) = A075730 (n + 1)

end A075730

/-! ## A075730.P1829308770858355466

`A001358(A289182(n+1))²`
-/

namespace A075730.P1829308770858355466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A289182 (n + 1)).toNat ^ 2

end

end A075730.P1829308770858355466

namespace A075730

/-- `A001358(A289182(n+1))²` -/
def P1829308770858355466.Spec : Prop :=
  ∀ n, P1829308770858355466.a n = A075730 (n + 1)

end A075730

/-! ## A075730.P3942288613094396636

`A046315(A000027(n+1))^2`
-/

namespace A075730.P3942288613094396636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (A000027 (n + 1)).toNat ^ 2

end

end A075730.P3942288613094396636

namespace A075730

/-- `A046315(A000027(n+1))^2` -/
def P3942288613094396636.Spec : Prop :=
  ∀ n, P3942288613094396636.a n = A075730 (n + 1)

end A075730

/-! ## A075730.P1681017706935952906

`record[A000265(A001358(n+3))²]`
-/

namespace A075730.P1681017706935952906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A001358 (n + 3)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075730.P1681017706935952906

namespace A075730

/-- `record[A000265(A001358(n+3))²]` -/
def P1681017706935952906.Spec : Prop :=
  ∀ n, P1681017706935952906.a n = A075730 (n + 1)

end A075730

/-! ## A075730.P13163972539382532904

`(A100484(n+1)-A131634(n+1))²`
-/

namespace A075730.P13163972539382532904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 1) - A131634 (n + 1)) ^ 2

end

end A075730.P13163972539382532904

namespace A075730

/-- `(A100484(n+1)-A131634(n+1))²` -/
def P13163972539382532904.Spec : Prop :=
  ∀ n, P13163972539382532904.a n = A075730 (n + 1)

theorem P13163972539382532904.correct : P13163972539382532904.Spec := by
  intro n
  simp only [A075730, Nat.add_sub_cancel, A075730.P13163972539382532904.a, A075730.P2011606577070419046.a, A046315, A046315.P4459434404324554998.a, A100484, A100484.P9678625670825099636.a, A131634, A131634.P13301814298976685454.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A289182, A289182.P4409354960599188013.f1, A289182.P4409354960599188013.f2, A289182.P4409354960599188013.a, A088707, A088707.P7291141647877559993.a, A106138, A106138.P1314688240599968597.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075730

/-! ## A075730.P13086650893384415212

`(A100484(n+1)-A282844(n+1))²`
-/

namespace A075730.P13086650893384415212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 1) - A282844 (n + 1)) ^ 2

end

end A075730.P13086650893384415212

namespace A075730

/-- `(A100484(n+1)-A282844(n+1))²` -/
def P13086650893384415212.Spec : Prop :=
  ∀ n, P13086650893384415212.a n = A075730 (n + 1)

theorem P13086650893384415212.correct : P13086650893384415212.Spec := by
  intro n
  simp only [A075730, Nat.add_sub_cancel, A075730.P13086650893384415212.a, A075730.P2011606577070419046.a, A046315, A046315.P4459434404324554998.a, A100484, A100484.P9678625670825099636.a, A282844, A282844.P8395875720531729438.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A289182, A289182.P4409354960599188013.f1, A289182.P4409354960599188013.f2, A289182.P4409354960599188013.a, A088707, A088707.P7291141647877559993.a, A106138, A106138.P1314688240599968597.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075730

/-! ## A075730.P10234254866703741688

`(2*A000040(n+1)-A282844(n+1))²`
-/

namespace A075730.P10234254866703741688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A000040 (n + 1) - A282844 (n + 1)) ^ 2

end

end A075730.P10234254866703741688

namespace A075730

/-- `(2*A000040(n+1)-A282844(n+1))²` -/
def P10234254866703741688.Spec : Prop :=
  ∀ n, P10234254866703741688.a n = A075730 (n + 1)

theorem P10234254866703741688.correct : P10234254866703741688.Spec := by
  intro n
  simp only [A075730, Nat.add_sub_cancel, A075730.P10234254866703741688.a, A075730.P2011606577070419046.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046315, A046315.P4459434404324554998.a, A282844, A282844.P8395875720531729438.a, A001358, A001358.P632087320844056370.a, A100484, A100484.P9678625670825099636.a, A289182, A289182.P4409354960599188013.f1, A289182.P4409354960599188013.f2, A289182.P4409354960599188013.a, A088707, A088707.P7291141647877559993.a, A106138, A106138.P1314688240599968597.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075730

/-! ## A075730.P6496874094309183880

`(A001749(n+1)/2-A131634(n+1))²`
-/

namespace A075730.P6496874094309183880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001749 (n + 1) : ℚ) / 2 - (A131634 (n + 1) : ℚ)) ^ 2

end

end A075730.P6496874094309183880

namespace A075730

/-- `(A001749(n+1)/2-A131634(n+1))²` -/
def P6496874094309183880.Spec : Prop :=
  ∀ n, P6496874094309183880.a n = (A075730 (n + 1) : ℚ)

theorem P6496874094309183880.correct : P6496874094309183880.Spec := by
  intro n
  simp only [A075730, Nat.add_sub_cancel, A075730.P6496874094309183880.a, A075730.P2011606577070419046.a, A001749, A001749.P16106244962881767471.a, A046315, A046315.P4459434404324554998.a, A131634, A131634.P13301814298976685454.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A100484, A100484.P9678625670825099636.a, A289182, A289182.P4409354960599188013.f1, A289182.P4409354960599188013.f2, A289182.P4409354960599188013.a, A088707, A088707.P7291141647877559993.a, A106138, A106138.P1314688240599968597.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075730

/-! ## A075730.P7996553556393755880

`A046315(A000027(n+1))*A046315(n+1)`
-/

namespace A075730.P7996553556393755880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (A000027 (n + 1)).toNat * A046315 (n + 1)

end

end A075730.P7996553556393755880

namespace A075730

/-- `A046315(A000027(n+1))*A046315(n+1)` -/
def P7996553556393755880.Spec : Prop :=
  ∀ n, P7996553556393755880.a n = A075730 (n + 1)

end A075730

/-! ## A075730.P6945267794108078799

`A046315(n+1)^A001222(A001358(n+1))`
-/

namespace A075730.P6945267794108078799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046315 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A075730.P6945267794108078799

namespace A075730

/-- `A046315(n+1)^A001222(A001358(n+1))` -/
def P6945267794108078799.Spec : Prop :=
  ∀ n, P6945267794108078799.a n = (A075730 (n + 1) : ℚ)

end A075730

/-! ## A075730.P85932516284906005

`(A100484(n+1)-A131634(n+1))*A046315(n+1)`
-/

namespace A075730.P85932516284906005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 1) - A131634 (n + 1)) * A046315 (n + 1)

end

end A075730.P85932516284906005

namespace A075730

/-- `(A100484(n+1)-A131634(n+1))*A046315(n+1)` -/
def P85932516284906005.Spec : Prop :=
  ∀ n, P85932516284906005.a n = A075730 (n + 1)

theorem P85932516284906005.correct : P85932516284906005.Spec := by
  intro n
  simp only [A075730, Nat.add_sub_cancel, A075730.P85932516284906005.a, A075730.P2011606577070419046.a, A046315, A046315.P4459434404324554998.a, A100484, A100484.P9678625670825099636.a, A131634, A131634.P13301814298976685454.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A289182, A289182.P4409354960599188013.f1, A289182.P4409354960599188013.f2, A289182.P4409354960599188013.a, A088707, A088707.P7291141647877559993.a, A106138, A106138.P1314688240599968597.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075730

/-! ## A075730.P4784021584957820711

`(A282844(n+1)-A100484(n+1))*A046315(n+1)`
-/

namespace A075730.P4784021584957820711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A282844 (n + 1) - A100484 (n + 1)) * A046315 (n + 1)

end

end A075730.P4784021584957820711

namespace A075730

/-- `(A282844(n+1)-A100484(n+1))*A046315(n+1)` -/
def P4784021584957820711.Spec : Prop :=
  ∀ n, P4784021584957820711.a n = A075730 (n + 1)

theorem P4784021584957820711.correct : P4784021584957820711.Spec := by
  intro n
  simp only [A075730, Nat.add_sub_cancel, A075730.P4784021584957820711.a, A075730.P2011606577070419046.a, A046315, A046315.P4459434404324554998.a, A100484, A100484.P9678625670825099636.a, A282844, A282844.P8395875720531729438.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A289182, A289182.P4409354960599188013.f1, A289182.P4409354960599188013.f2, A289182.P4409354960599188013.a, A088707, A088707.P7291141647877559993.a, A106138, A106138.P1314688240599968597.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075730

/-! ## A075730.P3174328999121430946

`A008683(A006881(n+1))*A046315(n+1)*A046315(n+1)`
-/

namespace A075730.P3174328999121430946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006881 (n + 1)).toNat * A046315 (n + 1) * A046315 (n + 1)

end

end A075730.P3174328999121430946

namespace A075730

/-- `A008683(A006881(n+1))*A046315(n+1)*A046315(n+1)` -/
def P3174328999121430946.Spec : Prop :=
  ∀ n, P3174328999121430946.a n = A075730 (n + 1)

end A075730

/-! ## A075730.P9881797326160138697

`A046315(n+1)*A057427(A300752(n+1))*A046315(n+1)`
-/

namespace A075730.P9881797326160138697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1) * A057427 (A300752 (n + 1)).toNat * A046315 (n + 1)

end

end A075730.P9881797326160138697

namespace A075730

/-- `A046315(n+1)*A057427(A300752(n+1))*A046315(n+1)` -/
def P9881797326160138697.Spec : Prop :=
  ∀ n, P9881797326160138697.a n = A075730 (n + 1)

end A075730

/-! ## A075730.P3689337884910022502

`A046315(n+1)^A001222(A046315(n+2))`
-/

namespace A075730.P3689337884910022502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046315 (n + 1) : ℚ) ^ (A001222 (A046315 (n + 2)).toNat : ℤ)

end

end A075730.P3689337884910022502

namespace A075730

/-- `A046315(n+1)^A001222(A046315(n+2))` -/
def P3689337884910022502.Spec : Prop :=
  ∀ n, P3689337884910022502.a n = (A075730 (n + 1) : ℚ)

end A075730

/-! ## A075730.P10777712855187933975

`(eq[1, A353480(n+1)]+1)²`
-/

namespace A075730.P10777712855187933975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A075730.P10777712855187933975

namespace A075730

/-- `(eq[1, A353480(n+1)]+1)²` -/
def P10777712855187933975.Spec : Prop :=
  ∀ n, (P10777712855187933975.a n : ℤ) = A075730 (n + 1)

end A075730

/-! ## A075730.P12730412522771086956

`(eq[2, A317531(n+1)]+1)²`
-/

namespace A075730.P12730412522771086956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317531 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A075730.P12730412522771086956

namespace A075730

/-- `(eq[2, A317531(n+1)]+1)²` -/
def P12730412522771086956.Spec : Prop :=
  ∀ n, (P12730412522771086956.a n : ℤ) = A075730 (n + 1)

end A075730

/-! ## A075730.P6597643913315880604

`(eq[-a(n-1), A001222(n+1)]+1)²` with `a(0)=2`
-/

namespace A075730.P6597643913315880604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) ^ 2

end

end A075730.P6597643913315880604

namespace A075730

/-- `(eq[-a(n-1), A001222(n+1)]+1)²` -/
def P6597643913315880604.Spec : Prop :=
  ∀ n, (P6597643913315880604.a n : ℤ) = A075730 (n + 1)

end A075730

/-!
# A075731: Fibonacci numbers F(k) for k squarefree (A005117).

The programs for A075731, the canonical program `A075731.P10395991786095525384` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075731 has offset 1).

The definition of A075731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075731.P10395991786095525384

`A000045(record[∏{p}[n, #]])`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075731

/-- `A000045(record[∏{p}[n, #]])` -/
def P10395991786095525384.Spec : Prop :=
  ∀ n, P10395991786095525384.a n = A075731 (n + 1)

theorem P10395991786095525384.correct : P10395991786095525384.Spec := by
  intro n
  simp only [A075731, Nat.add_sub_cancel]

end A075731

/-! ## A075731.P12198220679862705692

`A167816(record[∏{p}[n, #]])`
-/

namespace A075731.P12198220679862705692
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167816 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A075731.P12198220679862705692

namespace A075731

/-- `A167816(record[∏{p}[n, #]])` -/
def P12198220679862705692.Spec : Prop :=
  ∀ n, P12198220679862705692.a n = A075731 (n + 1)

end A075731

/-! ## A075731.P13220676607993210820

`A264800(record[∏{p}[n, #]])`
-/

namespace A075731.P13220676607993210820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A075731.P13220676607993210820

namespace A075731

/-- `A264800(record[∏{p}[n, #]])` -/
def P13220676607993210820.Spec : Prop :=
  ∀ n, P13220676607993210820.a n = A075731 (n + 1)

end A075731

/-! ## A075731.P8199801545014429700

`A000045(eq[n, ∏{p}[n, #]])`
-/

namespace A075731.P8199801545014429700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A075731.P8199801545014429700

namespace A075731

/-- `A000045(eq[n, ∏{p}[n, #]])` -/
def P8199801545014429700.Spec : Prop :=
  ∀ n, P8199801545014429700.a n = A075731 (n + 1)

end A075731

/-! ## A075731.P2409501711323241530

`A000045(A005117(n+1))`
-/

namespace A075731.P2409501711323241530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A005117 (n + 1)).toNat

end

end A075731.P2409501711323241530

namespace A075731

/-- `A000045(A005117(n+1))` -/
def P2409501711323241530.Spec : Prop :=
  ∀ n, P2409501711323241530.a n = A075731 (n + 1)

end A075731

/-! ## A075731.P6587292161952533330

`A059974(A302491(n+1))`
-/

namespace A075731.P6587292161952533330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059974 (A302491 (n + 1)).toNat

end

end A075731.P6587292161952533330

namespace A075731

/-- `A059974(A302491(n+1))` -/
def P6587292161952533330.Spec : Prop :=
  ∀ n, P6587292161952533330.a n = A075731 (n + 1)

end A075731

/-! ## A075731.P4258682332737863470

`A280688(A133466(n+1))`
-/

namespace A075731.P4258682332737863470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280688 (A133466 (n + 1)).toNat

end

end A075731.P4258682332737863470

namespace A075731

/-- `A280688(A133466(n+1))` -/
def P4258682332737863470.Spec : Prop :=
  ∀ n, P4258682332737863470.a n = A075731 (n + 1)

end A075731

/-! ## A075731.P15399964465697681155

`A000071(record[A055231(n+1)])+1`
-/

namespace A075731.P15399964465697681155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A075731.P15399964465697681155

namespace A075731

/-- `A000071(record[A055231(n+1)])+1` -/
def P15399964465697681155.Spec : Prop :=
  ∀ n, P15399964465697681155.a n = A075731 (n + 1)

end A075731

/-! ## A075731.P17371291343541798103

`A000045(A243348(n+1)+n+1)`
-/

namespace A075731.P17371291343541798103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A243348 (n + 1) + (n + 1 : ℤ)).toNat

end

end A075731.P17371291343541798103

namespace A075731

/-- `A000045(A243348(n+1)+n+1)` -/
def P17371291343541798103.Spec : Prop :=
  ∀ n, P17371291343541798103.a n = A075731 (n + 1)

end A075731

/-!
# A075732: Fibonacci numbers F(k) for k not squarefree (A013929).

The programs for A075732, the canonical program `A075732.P15581762830098997151` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075732 has offset 0).

The definition of A075732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075732.P15581762830098997151

`A000045(lt[1, ∏{e}[n, #]])`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075732

/-- `A000045(lt[1, ∏{e}[n, #]])` -/
def P15581762830098997151.Spec : Prop :=
  ∀ n, P15581762830098997151.a n = A075732 n

theorem P15581762830098997151.correct : P15581762830098997151.Spec := by
  intro n
  simp only [A075732]

end A075732

/-! ## A075732.P17759819112781660625

`A000045(lt[∏{p}[n, #], n])`
-/

namespace A075732.P17759819112781660625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A075732.P17759819112781660625

namespace A075732

/-- `A000045(lt[∏{p}[n, #], n])` -/
def P17759819112781660625.Spec : Prop :=
  ∀ n, P17759819112781660625.a n = A075732 n

end A075732

/-! ## A075732.P6759035309248197606

`A000045(A013929(n+1))`
-/

namespace A075732.P6759035309248197606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A013929 (n + 1)).toNat

end

end A075732.P6759035309248197606

namespace A075732

/-- `A000045(A013929(n+1))` -/
def P6759035309248197606.Spec : Prop :=
  ∀ n, P6759035309248197606.a n = A075732 n

end A075732

/-! ## A075732.P10559156283742686909

`A000045(A162966(n+2))`
-/

namespace A075732.P10559156283742686909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A162966 (n + 2)).toNat

end

end A075732.P10559156283742686909

namespace A075732

/-- `A000045(A162966(n+2))` -/
def P10559156283742686909.Spec : Prop :=
  ∀ n, P10559156283742686909.a n = A075732 n

end A075732

/-! ## A075732.P16673062998713849946

`A123736(A062320(n+1))`
-/

namespace A075732.P16673062998713849946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123736 (A062320 (n + 1)).toNat

end

end A075732.P16673062998713849946

namespace A075732

/-- `A123736(A062320(n+1))` -/
def P16673062998713849946.Spec : Prop :=
  ∀ n, P16673062998713849946.a n = A075732 n

end A075732

/-!
# A075733: Array of coefficients in Zagier's polynomials P_(n,0)(x).

The programs for A075733, there is no canonical definition to state claims against.
-/

/-! ## A075733.P8204339917082332246

`A075615(A133280(n+1))`
-/

namespace A075733.P8204339917082332246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075615 (A133280 (n + 1)).toNat

end

end A075733.P8204339917082332246

/-! ## A075733.P13827463220273595315

`A075615(A001614(n+2)-1)`
-/

namespace A075733.P13827463220273595315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075615 (A001614 (n + 2) - 1).toNat

end

end A075733.P13827463220273595315

/-! ## A075733.P12743372377517776439

`A075615(lt[A075615(n+1)², n])`
-/

namespace A075733.P12743372377517776439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075615 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075615 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A075733.P12743372377517776439

/-! ## A075733.P8112515072003372454

`A075615(∑[A006530(A130321(n))])`
-/

namespace A075733.P8112515072003372454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A130321 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075615 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075733.P8112515072003372454

/-! ## A075733.P13995074819963881372

`A075615(∑[A020639(A130321(n))])`
-/

namespace A075733.P13995074819963881372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A130321 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075615 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075733.P13995074819963881372

/-!
# A075734: Fibonacci numbers F(k) when k is a product of an even number of distinct primes A030229 (mu(k)=1).

The programs for A075734, the canonical program `A075734.P17183931831588121213` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075734 has offset 1).

The definition of A075734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075734.P17183931831588121213

`A000045(record[∏{p}[n, -#]])`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075734

/-- `A000045(record[∏{p}[n, -#]])` -/
def P17183931831588121213.Spec : Prop :=
  ∀ n, P17183931831588121213.a n = A075734 (n + 1)

theorem P17183931831588121213.correct : P17183931831588121213.Spec := by
  intro n
  simp only [A075734, Nat.add_sub_cancel]

end A075734

/-! ## A075734.P17950318159444834103

`A000045(A030229(n+1))`
-/

namespace A075734.P17950318159444834103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A030229 (n + 1)).toNat

end

end A075734.P17950318159444834103

namespace A075734

/-- `A000045(A030229(n+1))` -/
def P17950318159444834103.Spec : Prop :=
  ∀ n, P17950318159444834103.a n = A075734 (n + 1)

end A075734

/-! ## A075734.P11741053978998578787

`A000045(A090705(2*n+1))`
-/

namespace A075734.P11741053978998578787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A090705 (2 * n + 1)).toNat

end

end A075734.P11741053978998578787

namespace A075734

/-- `A000045(A090705(2*n+1))` -/
def P11741053978998578787.Spec : Prop :=
  ∀ n, P11741053978998578787.a n = A075734 (n + 1)

end A075734

/-! ## A075734.P4928590184248429429

`A115338(A077448(n+1))`
-/

namespace A075734.P4928590184248429429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115338 (A077448 (n + 1)).toNat

end

end A075734.P4928590184248429429

namespace A075734

/-- `A115338(A077448(n+1))` -/
def P4928590184248429429.Spec : Prop :=
  ∀ n, P4928590184248429429.a n = A075734 (n + 1)

end A075734

/-!
# A075735: Squarefree Fibonacci numbers with an even number of prime factors (mu(n)=1).

The programs for A075735, the canonical program `A075735.P8566099337576240137` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075735 has offset 1).

The definition of A075735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075735.P8566099337576240137

`A000045(eq[1, A174340(n+1)]+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A075735

/-- `A000045(eq[1, A174340(n+1)]+1)` -/
def P8566099337576240137.Spec : Prop :=
  ∀ n, P8566099337576240137.a n = A075735 (n + 1)

theorem P8566099337576240137.correct : P8566099337576240137.Spec := by
  intro n
  simp only [A075735, Nat.add_sub_cancel]

end A075735

/-! ## A075735.P599583115525836970

`A000045(record[(n+1)*A174340(n+1)])`
-/

namespace A075735.P599583115525836970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A174340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A075735.P599583115525836970

namespace A075735

/-- `A000045(record[(n+1)*A174340(n+1)])` -/
def P599583115525836970.Spec : Prop :=
  ∀ n, P599583115525836970.a n = A075735 (n + 1)

end A075735

/-! ## A075735.P12708839747601626628

`A212804(record[(n+2)*A174340(n+1)])`
-/

namespace A075735.P12708839747601626628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A174340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A075735.P12708839747601626628

namespace A075735

/-- `A212804(record[(n+2)*A174340(n+1)])` -/
def P12708839747601626628.Spec : Prop :=
  ∀ n, P12708839747601626628.a n = A075735 (n + 1)

end A075735

/-! ## A075735.P4123076420415200499

`A000045(record[(n+1)^A174340(n+1)])`
-/

namespace A075735.P4123076420415200499
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A174340 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A075735.P4123076420415200499

namespace A075735

/-- `A000045(record[(n+1)^A174340(n+1)])` -/
def P4123076420415200499.Spec : Prop :=
  ∀ n, P4123076420415200499.a n = A075735 (n + 1)

end A075735

/-! ## A075735.P8661877054121289884

`A212804(record[(n+2)^A174340(n+1)])`
-/

namespace A075735.P8661877054121289884
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A174340 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A075735.P8661877054121289884

namespace A075735

/-- `A212804(record[(n+2)^A174340(n+1)])` -/
def P8661877054121289884.Spec : Prop :=
  ∀ n, P8661877054121289884.a n = A075735 (n + 1)

end A075735

/-!
# A075736: Fibonacci numbers F(k) as k runs through the products of an odd number of distinct primes A030059 (mu(k)=-1).

The programs for A075736, the canonical program `A075736.P78316521861569086` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075736 has offset 1).

The definition of A075736 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030059, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A075736.P78316521861569086

`A000045(A030059(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A075736

/-- `A000045(A030059(n+1))` -/
def P78316521861569086.Spec : Prop :=
  ∀ n, P78316521861569086.a n = A075736 (n + 1)

theorem P78316521861569086.correct : P78316521861569086.Spec := by
  intro n
  simp only [A075736, Nat.add_sub_cancel]

end A075736

/-! ## A075736.P13610197338030839752

`A000045(sqrt(A077438(n+1)))`
-/

namespace A075736.P13610197338030839752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.sqrt (A077438 (n + 1) : ℝ))).toNat

end

end A075736.P13610197338030839752

namespace A075736

/-- `A000045(sqrt(A077438(n+1)))` -/
def P13610197338030839752.Spec : Prop :=
  ∀ n, P13610197338030839752.a n = A075736 (n + 1)

end A075736

/-! ## A075736.P13493620810087543658

`record[A000045(A080305(n+1))]`
-/

namespace A075736.P13493620810087543658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A080305 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075736.P13493620810087543658

namespace A075736

/-- `record[A000045(A080305(n+1))]` -/
def P13493620810087543658.Spec : Prop :=
  ∀ n, P13493620810087543658.a n = A075736 (n + 1)

end A075736

/-! ## A075736.P1714581554321384455

`A000045(A090705(2*(n+1)))`
-/

namespace A075736.P1714581554321384455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A090705 (2 * (n + 1))).toNat

end

end A075736.P1714581554321384455

namespace A075736

/-- `A000045(A090705(2*(n+1)))` -/
def P1714581554321384455.Spec : Prop :=
  ∀ n, P1714581554321384455.a n = A075736 (n + 1)

end A075736

/-! ## A075736.P17313376747108576500

`A000045(lt[A008683(n+1), 0]+1)`
-/

namespace A075736.P17313376747108576500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A075736.P17313376747108576500

namespace A075736

/-- `A000045(lt[A008683(n+1), 0]+1)` -/
def P17313376747108576500.Spec : Prop :=
  ∀ n, P17313376747108576500.a n = A075736 (n + 1)

end A075736

/-! ## A075736.P9677760340410145998

`A000045(eq[1, -A008683(n+1)]+1)`
-/

namespace A075736.P9677760340410145998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A075736.P9677760340410145998

namespace A075736

/-- `A000045(eq[1, -A008683(n+1)]+1)` -/
def P9677760340410145998.Spec : Prop :=
  ∀ n, P9677760340410145998.a n = A075736 (n + 1)

end A075736

/-! ## A075736.P13502276253241165424

`record[A000045(and(n+1, A008683(n+1)))]`
-/

namespace A075736.P13502276253241165424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land (n + 1 : ℤ) (A008683 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075736.P13502276253241165424

namespace A075736

/-- `record[A000045(and(n+1, A008683(n+1)))]` -/
def P13502276253241165424.Spec : Prop :=
  ∀ n, P13502276253241165424.a n = A075736 (n + 1)

end A075736

/-! ## A075736.P6144373079794056613

`A000045(eq[0, A008683(n+1)+1]+1)`
-/

namespace A075736.P6144373079794056613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A075736.P6144373079794056613

namespace A075736

/-- `A000045(eq[0, A008683(n+1)+1]+1)` -/
def P6144373079794056613.Spec : Prop :=
  ∀ n, P6144373079794056613.a n = A075736 (n + 1)

end A075736

/-! ## A075736.P17611173098465191197

`record[A000045(ceil((n+1)^-A008683(n+1)))]`
-/

namespace A075736.P17611173098465191197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈(n + 1 : ℚ) ^ (-A008683 (n + 1) : ℤ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075736.P17611173098465191197

namespace A075736

/-- `record[A000045(ceil((n+1)^-A008683(n+1)))]` -/
def P17611173098465191197.Spec : Prop :=
  ∀ n, P17611173098465191197.a n = A075736 (n + 1)

end A075736

/-!
# A075737: Prime Fibonacci numbers with prime indices.

The programs for A075737, there is no canonical definition to state claims against.
-/

/-! ## A075737.P2505202660469075196

`record[A338762(n+1)]`
-/

namespace A075737.P2505202660469075196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075737.P2505202660469075196

/-! ## A075737.P12434154209539554694

`record[A325626(n+2)]`
-/

namespace A075737.P12434154209539554694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325626 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075737.P12434154209539554694

/-! ## A075737.P4873962062908916305

`record[A139044(2*n+1)]`
-/

namespace A075737.P4873962062908916305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139044 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075737.P4873962062908916305

/-! ## A075737.P3280613504335955450

`record[A001578(p?[2*n+1])]`
-/

namespace A075737.P3280613504335955450
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001578 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075737.P3280613504335955450

/-! ## A075737.P7630748430916581853

`record[A060383(p?[2*n+1])]`
-/

namespace A075737.P7630748430916581853
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060383 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075737.P7630748430916581853

/-!
# A075738: Squarefree Fibonacci numbers whose indices are also squarefree.

The programs for A075738, the canonical program `A075738.P1287665059764294177` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075738 has offset 1).

The definition of A075738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075738.P1287665059764294177

`A000045(∩[A005117(n+1), A037918(n+1)])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A075738

/-- `A000045(∩[A005117(n+1), A037918(n+1)])` -/
def P1287665059764294177.Spec : Prop :=
  ∀ n, P1287665059764294177.a n = A075738 (n + 1)

theorem P1287665059764294177.correct : P1287665059764294177.Spec := by
  intro n
  simp only [A075738, Nat.add_sub_cancel]

end A075738

/-! ## A075738.P3081211897916678852

`A000045(∩[A037918(n+1), A348506(n+1)])`
-/

namespace A075738.P3081211897916678852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A075738.P3081211897916678852

namespace A075738

/-- `A000045(∩[A037918(n+1), A348506(n+1)])` -/
def P3081211897916678852.Spec : Prop :=
  ∀ n, P3081211897916678852.a n = A075738 (n + 1)

end A075738

/-! ## A075738.P9580826196131965664

`A000045(A087246(n+1)%A275251(n+1))`
-/

namespace A075738.P9580826196131965664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A087246 (n + 1)) (A275251 (n + 1))).toNat

end

end A075738.P9580826196131965664

namespace A075738

/-- `A000045(A087246(n+1)%A275251(n+1))` -/
def P9580826196131965664.Spec : Prop :=
  ∀ n, P9580826196131965664.a n = A075738 (n + 1)

end A075738

/-! ## A075738.P13845567654868363361

`A000045(eq[1, A326644(2*n)])`
-/

namespace A075738.P13845567654868363361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326644 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075738.P13845567654868363361

namespace A075738

/-- `A000045(eq[1, A326644(2*n)])` -/
def P13845567654868363361.Spec : Prop :=
  ∀ n, P13845567654868363361.a n = A075738 (n + 1)

end A075738

/-! ## A075738.P16722248708352781191

`filter[A075731(n+1), A008966(#)]`
-/

namespace A075738.P16722248708352781191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A075738.P16722248708352781191

namespace A075738

/-- `filter[A075731(n+1), A008966(#)]` -/
def P16722248708352781191.Spec : Prop :=
  ∀ n, P16722248708352781191.a n = A075738 (n + 1)

end A075738

/-!
# A075739: Nonsquarefree Fibonacci numbers whose indices are also not squarefree.

The programs for A075739, there is no canonical definition to state claims against.
-/

/-! ## A075739.P2679243255670957759

`∩[A061899(n+1), A075732(n)]`
-/

namespace A075739.P2679243255670957759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075732 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075739.P2679243255670957759

/-! ## A075739.P5106609912379661879

`∩[A075732(n), A000045(A037917(n+1))]`
-/

namespace A075739.P5106609912379661879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075732 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A037917 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075739.P5106609912379661879

/-! ## A075739.P1277050360221202711

`A000045(∩[A013929(n+1), A037917(n+1)])`
-/

namespace A075739.P1277050360221202711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037917 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A075739.P1277050360221202711

/-! ## A075739.P8088069348313370029

`∩[A000045(A013929(n+1)), A061899(n+1)]`
-/

namespace A075739.P8088069348313370029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A013929 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075739.P8088069348313370029

/-! ## A075739.P6269880145796031065

`∩[A212804(A037917(n+1)+1), A075732(n)]`
-/

namespace A075739.P6269880145796031065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A037917 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075732 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075739.P6269880145796031065

/-!
# A075740: Squarefree Fibonacci numbers which are the product of an even number of distinct primes and whose index is also squarefree and the product of an even number of distinct primes.

The programs for A075740, there is no canonical definition to state claims against.
-/

/-! ## A075740.P4344370293276389791

`A000045(A084278(n+1))`
-/

namespace A075740.P4344370293276389791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A084278 (n + 1)).toNat

end

end A075740.P4344370293276389791

/-! ## A075740.P15309915973541360452

`A212804(A084278(n+1)+1)`
-/

namespace A075740.P15309915973541360452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A084278 (n + 1) + 1).toNat

end

end A075740.P15309915973541360452

/-! ## A075740.P17339740531175053662

`A053602(2*A084278(n+1))`
-/

namespace A075740.P17339740531175053662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A084278 (n + 1)).toNat

end

end A075740.P17339740531175053662

/-! ## A075740.P6675398213309624966

`lcm(A033999(n), A236191(A084278(n+1)))`
-/

namespace A075740.P6675398213309624966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A236191 (A084278 (n + 1)).toNat)

end

end A075740.P6675398213309624966

/-! ## A075740.P15100068826339080241

`A000071(A084278(n+1))+A020985(n)²`
-/

namespace A075740.P15100068826339080241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A084278 (n + 1)).toNat + A020985 n ^ 2

end

end A075740.P15100068826339080241

/-! ## A075740.P7071855819642959608

`A000071(A084278(n+1))+gcd(3, A001316(n))`
-/

namespace A075740.P7071855819642959608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A084278 (n + 1)).toNat + (Int.gcd 3 (A001316 n) : ℤ)

end

end A075740.P7071855819642959608

/-! ## A075740.P12343968300563811330

`char[A116966(n)]*A000071(A084278(n+1))+1`
-/

namespace A075740.P12343968300563811330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000071 (A084278 (n + 1)).toNat + 1

end

end A075740.P12343968300563811330

/-! ## A075740.P11138571437334141445

`A294935(2*n+1)+A000071(A084278(n+1))`
-/

namespace A075740.P11138571437334141445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294935 (2 * n + 1) + A000071 (A084278 (n + 1)).toNat

end

end A075740.P11138571437334141445

/-! ## A075740.P9313207111828044424

`A000071(A084278(n+1))+A007318(gcd(n, n+1))`
-/

namespace A075740.P9313207111828044424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A084278 (n + 1)).toNat + A007318 (Nat.gcd n (n + 1))

end

end A075740.P9313207111828044424

/-!
# A075741: Smallest a(n)>2 such that all integers strictly between a(n)-n and a(n) are composite.

The programs for A075741, there is no canonical definition to state claims against.
-/

/-! ## A075741.P10665449490381362850

`A104138(n)+1+n`
-/

namespace A075741.P10665449490381362850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 n + 1 + (n : ℤ)

end

end A075741.P10665449490381362850

/-! ## A075741.P1917796410378434904

`1-(A001489(n)-A104138(n))`
-/

namespace A075741.P1917796410378434904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A001489 n - A104138 n)

end

end A075741.P1917796410378434904

/-! ## A075741.P12616909844280199737

`A030296(A109613(n))+n-A000007(n)`
-/

namespace A075741.P12616909844280199737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030296 (A109613 n).toNat + ((n : ℤ) - A000007 n)

end

end A075741.P12616909844280199737

/-! ## A075741.P2984806782959860391

`A030296(A109613(n))-(A054977(n)-(n+1))`
-/

namespace A075741.P2984806782959860391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030296 (A109613 n).toNat - (A054977 n - (n + 1 : ℤ))

end

end A075741.P2984806782959860391

/-! ## A075741.P6681724573465029430

`A030296(A109613(n))+n-A080339(3*(n+1))`
-/

namespace A075741.P6681724573465029430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030296 (A109613 n).toNat + ((n : ℤ) - A080339 (3 * (n + 1)))

end

end A075741.P6681724573465029430

/-! ## A075741.P7526130027573400882

`A000203(A104138(n))+n`
-/

namespace A075741.P7526130027573400882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A104138 n).toNat + (n : ℤ)

end

end A075741.P7526130027573400882

/-!
# A075742: Fibonacci numbers for which both the value and index are the product of an odd number of distinct primes; that is, numbers Fibonacci(k) for which mu(k) = mu(Fibonacci(k)) = -1.

The programs for A075742, there is no canonical definition to state claims against.
-/

/-! ## A075742.P9133396202490657419

`∩[A074691(n+1), A075736(n+1)]`
-/

namespace A075742.P9133396202490657419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075742.P9133396202490657419

/-! ## A075742.P17519419945037022188

`∩[A053602(2*A030059(n+1)), A074691(n+1)]`
-/

namespace A075742.P17519419945037022188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A030059 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075742.P17519419945037022188

/-! ## A075742.P11187037920239438837

`∩[A000045(A090705(2*(n+1))), A074691(n+1)]`
-/

namespace A075742.P11187037920239438837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A090705 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075742.P11187037920239438837

/-! ## A075742.P5385022995598354820

`A000045(record[Δ[A361632(2*(n+2))]])`
-/

namespace A075742.P5385022995598354820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361632 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A075742.P5385022995598354820

/-!
# A075743: For all numbers of the form 6*k +- 1 starting with 5, '1' indicates prime and '0' indicates composite.

The programs for A075743, the canonical program `A075743.P8124416718606607743` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075743 has offset 1).

The definition of A075743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075743.P8124416718606607743

`A010051(A007310(n+2))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075743

/-- `A010051(A007310(n+2))` -/
def P8124416718606607743.Spec : Prop :=
  ∀ n, P8124416718606607743.a n = A075743 (n + 1)

theorem P8124416718606607743.correct : P8124416718606607743.Spec := by
  intro n
  simp only [A075743, Nat.add_sub_cancel]

end A075743

/-! ## A075743.P15727162721343652119

`A090405(3*(n+1))`
-/

namespace A075743.P15727162721343652119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090405 (3 * (n + 1))

end

end A075743.P15727162721343652119

namespace A075743

/-- `A090405(3*(n+1))` -/
def P15727162721343652119.Spec : Prop :=
  ∀ n, P15727162721343652119.a n = A075743 (n + 1)

end A075743

/-! ## A075743.P7559784131315947988

`Δ[A100637(n)]`
-/

namespace A075743.P7559784131315947988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075743.P7559784131315947988

namespace A075743

/-- `Δ[A100637(n)]` -/
def P7559784131315947988.Spec : Prop :=
  ∀ n, P7559784131315947988.a n = A075743 (n + 1)

end A075743

/-! ## A075743.P4075811648293043445

`abs(A156706(n+1))`
-/

namespace A075743.P4075811648293043445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156706 (n + 1)|

end

end A075743.P4075811648293043445

namespace A075743

/-- `abs(A156706(n+1))` -/
def P4075811648293043445.Spec : Prop :=
  ∀ n, P4075811648293043445.a n = A075743 (n + 1)

end A075743

/-! ## A075743.P5692051072796860353

`A101264(∑[gcd(2, n)])`
-/

namespace A075743.P5692051072796860353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075743.P5692051072796860353

namespace A075743

/-- `A101264(∑[gcd(2, n)])` -/
def P5692051072796860353.Spec : Prop :=
  ∀ n, P5692051072796860353.a n = A075743 (n + 1)

end A075743

/-! ## A075743.P153724887636321604

`Δ[A000720(3*(n+1))]`
-/

namespace A075743.P153724887636321604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075743.P153724887636321604

namespace A075743

/-- `Δ[A000720(3*(n+1))]` -/
def P153724887636321604.Spec : Prop :=
  ∀ n, P153724887636321604.a n = A075743 (n + 1)

end A075743

/-! ## A075743.P12753734121533871760

`char[A144769(n+1)-1]`
-/

namespace A075743.P12753734121533871760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144769 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A075743.P12753734121533871760

namespace A075743

/-- `char[A144769(n+1)-1]` -/
def P12753734121533871760.Spec : Prop :=
  ∀ n, (P12753734121533871760.a n : ℤ) = A075743 (n + 1)

end A075743

/-! ## A075743.P6836951193412783209

`char[A181709(n+1)-2]`
-/

namespace A075743.P6836951193412783209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181709 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A075743.P6836951193412783209

namespace A075743

/-- `char[A181709(n+1)-2]` -/
def P6836951193412783209.Spec : Prop :=
  ∀ n, (P6836951193412783209.a n : ℤ) = A075743 (n + 1)

end A075743

/-! ## A075743.P11016195481105275708

`1-A323162(3*n+5)`
-/

namespace A075743.P11016195481105275708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A323162 (3 * n + 5)

end

end A075743.P11016195481105275708

namespace A075743

/-- `1-A323162(3*n+5)` -/
def P11016195481105275708.Spec : Prop :=
  ∀ n, P11016195481105275708.a n = A075743 (n + 1)

end A075743

/-! ## A075743.P15463987914076871159

`ceil(Δ[sqrt(A151800(3*(n+1)))])`
-/

namespace A075743.P15463987914076871159
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A151800 (3 * (n + 1)) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A075743.P15463987914076871159

namespace A075743

/-- `ceil(Δ[sqrt(A151800(3*(n+1)))])` -/
def P15463987914076871159.Spec : Prop :=
  ∀ n, P15463987914076871159.a n = A075743 (n + 1)

end A075743

/-! ## A075743.P7821639381852999808

`char[ceil(A000040(n+1)/3)-2]`
-/

namespace A075743.P7821639381852999808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 (n + 1) : ℚ) / 3⌉ - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A075743.P7821639381852999808

namespace A075743

/-- `char[ceil(A000040(n+1)/3)-2]` -/
def P7821639381852999808.Spec : Prop :=
  ∀ n, (P7821639381852999808.a n : ℤ) = A075743 (n + 1)

end A075743

/-! ## A075743.P12123381126911325807

`A101264(A114119(n))`
-/

namespace A075743.P12123381126911325807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A114119 n).toNat

end

end A075743.P12123381126911325807

namespace A075743

/-- `A101264(A114119(n))` -/
def P12123381126911325807.Spec : Prop :=
  ∀ n, P12123381126911325807.a n = A075743 (n + 1)

end A075743

/-! ## A075743.P11154321972013681518

`A101264(A007494(n+1))`
-/

namespace A075743.P11154321972013681518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A007494 (n + 1)).toNat

end

end A075743.P11154321972013681518

namespace A075743

/-- `A101264(A007494(n+1))` -/
def P11154321972013681518.Spec : Prop :=
  ∀ n, P11154321972013681518.a n = A075743 (n + 1)

end A075743

/-! ## A075743.P9493455086312767171

`A100637(n+1)-A100637(n)`
-/

namespace A075743.P9493455086312767171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 (n + 1) - A100637 n

end

end A075743.P9493455086312767171

namespace A075743

/-- `A100637(n+1)-A100637(n)` -/
def P9493455086312767171.Spec : Prop :=
  ∀ n, P9493455086312767171.a n = A075743 (n + 1)

end A075743

/-! ## A075743.P7107081443468572318

`gcd(A000038(n), A156706(n+1))`
-/

namespace A075743.P7107081443468572318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A156706 (n + 1))

end

end A075743.P7107081443468572318

namespace A075743

/-- `gcd(A000038(n), A156706(n+1))` -/
def P7107081443468572318.Spec : Prop :=
  ∀ n, (P7107081443468572318.a n : ℤ) = A075743 (n + 1)

end A075743

/-! ## A075743.P7114239613655499106

`and(A010684(n), A156706(n+1))`
-/

namespace A075743.P7114239613655499106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010684 n) (A156706 (n + 1))

end

end A075743.P7114239613655499106

namespace A075743

/-- `and(A010684(n), A156706(n+1))` -/
def P7114239613655499106.Spec : Prop :=
  ∀ n, P7114239613655499106.a n = A075743 (n + 1)

end A075743

/-! ## A075743.P3157676871550381149

`and(A010686(n), A156706(n+1))`
-/

namespace A075743.P3157676871550381149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010686 n) (A156706 (n + 1))

end

end A075743.P3157676871550381149

namespace A075743

/-- `and(A010686(n), A156706(n+1))` -/
def P3157676871550381149.Spec : Prop :=
  ∀ n, P3157676871550381149.a n = A075743 (n + 1)

end A075743

/-! ## A075743.P7293810887298770622

`and(A010688(n), A156706(n+1))`
-/

namespace A075743.P7293810887298770622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010688 n) (A156706 (n + 1))

end

end A075743.P7293810887298770622

namespace A075743

/-- `and(A010688(n), A156706(n+1))` -/
def P7293810887298770622.Spec : Prop :=
  ∀ n, P7293810887298770622.a n = A075743 (n + 1)

end A075743

/-! ## A075743.P11820427371220269969

`and(A010690(n), A156706(n+1))`
-/

namespace A075743.P11820427371220269969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010690 n) (A156706 (n + 1))

end

end A075743.P11820427371220269969

namespace A075743

/-- `and(A010690(n), A156706(n+1))` -/
def P11820427371220269969.Spec : Prop :=
  ∀ n, P11820427371220269969.a n = A075743 (n + 1)

end A075743

/-! ## A075743.P7318844934623352513

`and(A033999(n), A156706(n+1))`
-/

namespace A075743.P7318844934623352513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A156706 (n + 1))

end

end A075743.P7318844934623352513

namespace A075743

/-- `and(A033999(n), A156706(n+1))` -/
def P7318844934623352513.Spec : Prop :=
  ∀ n, P7318844934623352513.a n = A075743 (n + 1)

end A075743

/-!
# A075744: Hierarchies of hierarchies.

The programs for A075744, there is no canonical definition to state claims against.
-/

/-! ## A075744.P4476646676215604092

`A028310(A031973(n)-A048679(n))`
-/

namespace A075744.P4476646676215604092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A031973 n - A048679 n).toNat

end

end A075744.P4476646676215604092

/-! ## A075744.P12276915922242359493

`A250246(A031973(n)-A048679(n))`
-/

namespace A075744.P12276915922242359493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (A031973 n - A048679 n).toNat

end

end A075744.P12276915922242359493

/-!
# A075747: Numbers n such that 210*n + 17 is prime.

The programs for A075747, the canonical program `A075747.P3624415254183292028` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075747 has offset 1).

The definition of A075747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075747.P3624415254183292028

`eq[2, A000005(A128468(7*n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A075747

/-- `eq[2, A000005(A128468(7*n))]` -/
def P3624415254183292028.Spec : Prop :=
  ∀ n, (P3624415254183292028.a n : ℤ) = A075747 (n + 1)

theorem P3624415254183292028.correct : P3624415254183292028.Spec := by
  intro n
  simp only [A075747, Nat.add_sub_cancel]

end A075747

/-! ## A075747.P11698714325452970641

`eq[2, A000005(A007775(56*n+5))]`
-/

namespace A075747.P11698714325452970641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007775 (56 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075747.P11698714325452970641

namespace A075747

/-- `eq[2, A000005(A007775(56*n+5))]` -/
def P11698714325452970641.Spec : Prop :=
  ∀ n, (P11698714325452970641.a n : ℤ) = A075747 (n + 1)

end A075747

/-! ## A075747.P14003539977655439707

`eq[7, A195352(A139615(n))]`
-/

namespace A075747.P14003539977655439707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195352 (A139615 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075747.P14003539977655439707

namespace A075747

/-- `eq[7, A195352(A139615(n))]` -/
def P14003539977655439707.Spec : Prop :=
  ∀ n, (P14003539977655439707.a n : ℤ) = A075747 (n + 1)

end A075747

/-! ## A075747.P14723572241332617547

`lt[1, A014963(15*(14*n+1)+2)]`
-/

namespace A075747.P14723572241332617547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (15 * (14 * n + 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A075747.P14723572241332617547

namespace A075747

/-- `lt[1, A014963(15*(14*n+1)+2)]` -/
def P14723572241332617547.Spec : Prop :=
  ∀ n, (P14723572241332617547.a n : ℤ) = A075747 (n + 1)

end A075747

/-! ## A075747.P5291601079655167555

`eq[1, A003415(or(1, A128468(7*n)))]`
-/

namespace A075747.P5291601079655167555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (Int.lor 1 (A128468 (7 * n))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075747.P5291601079655167555

namespace A075747

/-- `eq[1, A003415(or(1, A128468(7*n)))]` -/
def P5291601079655167555.Spec : Prop :=
  ∀ n, (P5291601079655167555.a n : ℤ) = A075747 (n + 1)

end A075747

/-!
# A075749: Numbers k such that 210*k +- 1 are twin primes.

The programs for A075749, there is no canonical definition to state claims against.
-/

/-! ## A075749.P16689431361797584928

`∩[A073085(n+1), A076354(n+1)]`
-/

namespace A075749.P16689431361797584928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075749.P16689431361797584928

/-! ## A075749.P6475869435720849381

`eq[A080791(n)+1, A210942(2*(n+1))]`
-/

namespace A075749.P6475869435720849381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210942 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075749.P6475869435720849381

/-!
# A075750: 210*n - /+ 11 are primes.

The programs for A075750, there is no canonical definition to state claims against.
-/

/-! ## A075750.P5960728020262263748

`∩[A076355(n+1), A076356(n+1)]`
-/

namespace A075750.P5960728020262263748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075750.P5960728020262263748

/-!
# A075751: Numbers n such that 210*n - /+ 13 are primes.

The programs for A075751, there is no canonical definition to state claims against.
-/

/-! ## A075751.P16046633023424820397

`∩[A075745(n+1), A075746(n+1)]`
-/

namespace A075751.P16046633023424820397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075751.P16046633023424820397

/-!
# A075752: 210*n - /+ 17 ares both primes.

The programs for A075752, there is no canonical definition to state claims against.
-/

/-! ## A075752.P986771248132128010

`∩[A075747(n+1), A075748(n+1)]`
-/

namespace A075752.P986771248132128010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075752.P986771248132128010

/-! ## A075752.P17134828056601366656

`record[A324945(n+1)%A329828(n+1)]`
-/

namespace A075752.P17134828056601366656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324945 (n + 1)) (A329828 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075752.P17134828056601366656

/-!
# A075753: Smallest prime factor of n-th odd triangular number; a(1) = 1.

The programs for A075753, there is no canonical definition to state claims against.
-/

/-! ## A075753.P2935621994989898222

`A069901(A042963(n+1))`
-/

namespace A075753.P2935621994989898222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069901 (A042963 (n + 1)).toNat

end

end A075753.P2935621994989898222

/-! ## A075753.P3531429680887330075

`A020639(A014493(n+1))`
-/

namespace A075753.P3531429680887330075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A014493 (n + 1)).toNat

end

end A075753.P3531429680887330075

/-! ## A075753.P6742704526347164764

`A069901(A109613(n)+n)`
-/

namespace A075753.P6742704526347164764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069901 (A109613 n + (n : ℤ)).toNat

end

end A075753.P6742704526347164764

/-! ## A075753.P7585507679153710291

`A069901(A284307(2*n+1))`
-/

namespace A075753.P7585507679153710291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069901 (A284307 (2 * n + 1)).toNat

end

end A075753.P7585507679153710291

/-! ## A075753.P5473806489329085287

`A069901(A059841(n)+2*n)`
-/

namespace A075753.P5473806489329085287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069901 (A059841 n + (2 * n : ℤ)).toNat

end

end A075753.P5473806489329085287

/-! ## A075753.P13548291689563962605

`filter[A069901(n+1), A000035(#)]`
-/

namespace A075753.P13548291689563962605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A075753.P13548291689563962605

/-! ## A075753.P14338957666631702723

`filter[A069901(n+1), A035263(#)]`
-/

namespace A075753.P14338957666631702723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A075753.P14338957666631702723

/-! ## A075753.P14606294215089715274

`filter[A069901(n+1), A039982(#)]`
-/

namespace A075753.P14606294215089715274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A075753.P14606294215089715274

/-! ## A075753.P803049014658834825

`filter[A069901(n+1), A080545(#)]`
-/

namespace A075753.P803049014658834825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A075753.P803049014658834825

/-! ## A075753.P11170551662415120719

`filter[A069901(n+1), A093719(#)]`
-/

namespace A075753.P11170551662415120719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A075753.P11170551662415120719

/-! ## A075753.P16781128320909295463

`filter[A069901(n+1), A102863(#)]`
-/

namespace A075753.P16781128320909295463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102863 (f1 j).toNat = 1) n)

end

end A075753.P16781128320909295463

/-! ## A075753.P16578389346680752651

`filter[A069901(n+1), A104106(#)]`
-/

namespace A075753.P16578389346680752651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A075753.P16578389346680752651

/-! ## A075753.P16021226241073916804

`filter[A069901(n+1), A105234(#)]`
-/

namespace A075753.P16021226241073916804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A075753.P16021226241073916804

/-! ## A075753.P14798837394568464298

`filter[A069901(n+1), A115971(#)]`
-/

namespace A075753.P14798837394568464298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A075753.P14798837394568464298

/-! ## A075753.P12552018654947053417

`filter[A069901(n+1), A127254(#)]`
-/

namespace A075753.P12552018654947053417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127254 (f1 j).toNat = 1) n)

end

end A075753.P12552018654947053417

/-! ## A075753.P2409400820854206897

`filter[A069901(n+1), A141260(#)]`
-/

namespace A075753.P2409400820854206897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A141260 (f1 j).toNat = 1) n)

end

end A075753.P2409400820854206897

/-! ## A075753.P6241966233375726091

`filter[A069901(n+1), A152822(#)]`
-/

namespace A075753.P6241966233375726091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A075753.P6241966233375726091

/-! ## A075753.P9585755367645533734

`A020639(A069901(A284307(n+1+n)))`
-/

namespace A075753.P9585755367645533734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A069901 (A284307 (n + 1 + n)).toNat).toNat

end

end A075753.P9585755367645533734

/-! ## A075753.P8412350489306077136

`A069901(A014848(n+1)-A014848(n))`
-/

namespace A075753.P8412350489306077136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069901 (A014848 (n + 1) - A014848 n).toNat

end

end A075753.P8412350489306077136

/-! ## A075753.P1344202412116530105

`A069901(eq[2, A069901(3*n+1)])`
-/

namespace A075753.P1344202412116530105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069901 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075753.P1344202412116530105

/-!
# A075754: Number of n X n (0,1) matrices containing exactly five 1's in each row and in each column.

The programs for A075754, there is no canonical definition to state claims against.
-/

/-! ## A075754.P17816566040279772152

`A008300(A167499(n+4))`
-/

namespace A075754.P17816566040279772152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008300 (A167499 (n + 4)).toNat

end

end A075754.P17816566040279772152

/-! ## A075754.P516536075469427899

`A008300(eq[5, A002262(n)])`
-/

namespace A075754.P516536075469427899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008300 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075754.P516536075469427899

/-! ## A075754.P13032135414062392921

`A008300(eq[6, A002260(n+1)])`
-/

namespace A075754.P13032135414062392921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008300 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075754.P13032135414062392921

/-! ## A075754.P15373550541753790401

`A008300(eq[6, A004736(n+1)])`
-/

namespace A075754.P15373550541753790401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008300 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075754.P15373550541753790401

/-!
# A075761: Numbers n such that there are at least 3 integers k from the set {2,3,4,5,6,7,8,9} such that the digital sum of each base k representation of n equals k.

The programs for A075761, there is no canonical definition to state claims against.
-/

/-! ## A075761.P17721601643723400627

`lt[A195997(n+1), A291259(A239703(n))]`
-/

namespace A075761.P17721601643723400627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291259 (A239703 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075761.P17721601643723400627

/-! ## A075761.P3781317580791349633

`A119622(n+2)+1`
-/

namespace A075761.P3781317580791349633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119622 (n + 2) + 1

end

end A075761.P3781317580791349633

/-! ## A075761.P12521924958944086091

`A279083(n+6)+1`
-/

namespace A075761.P12521924958944086091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279083 (n + 6) + 1

end

end A075761.P12521924958944086091

/-! ## A075761.P13366691308467484458

`lt[4, A353353(round(sqrt((1-n)^6+1)))]`
-/

namespace A075761.P13366691308467484458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353353 (SequenceMachineLib.roundAway (Real.sqrt ((1 - (n : ℤ)) ^ 6 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A075761.P13366691308467484458

/-! ## A075761.P6932365776347415268

`eq[A046924(n+1), A393078(n+1)]`
-/

namespace A075761.P6932365776347415268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075761.P6932365776347415268

/-!
# A075762: A001003(p-1)/p where p runs through the odd primes.

The programs for A075762, the canonical program `A075762.P17672210202542594789` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075762 has offset 1).

The definition of A075762 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A075762.P17672210202542594789

`A001003(A000040(n+2)-1)/A000040(n+2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A075762

/-- `A001003(A000040(n+2)-1)/A000040(n+2)` -/
def P17672210202542594789.Spec : Prop :=
  ∀ n, P17672210202542594789.a n = (A075762 (n + 1) : ℚ)

end A075762

/-! ## A075762.P3466784336622386729

`record[A001003(n)/A066841(n+1)]`
-/

namespace A075762.P3466784336622386729
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001003 n : ℚ) / (A066841 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075762.P3466784336622386729

namespace A075762

/-- `record[A001003(n)/A066841(n+1)]` -/
def P3466784336622386729.Spec : Prop :=
  ∀ n, P3466784336622386729.a n = (A075762 (n + 1) : ℚ)

end A075762

/-! ## A075762.P15371232992727856832

`record[A080243(n)/A066841(n+1)]`
-/

namespace A075762.P15371232992727856832
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080243 n : ℚ) / (A066841 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075762.P15371232992727856832

namespace A075762

/-- `record[A080243(n)/A066841(n+1)]` -/
def P15371232992727856832.Spec : Prop :=
  ∀ n, P15371232992727856832.a n = (A075762 (n + 1) : ℚ)

end A075762

/-! ## A075762.P16355667048482751669

`record[ceil(A006318(n)/2)/A066841(n+1)]`
-/

namespace A075762.P16355667048482751669
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A006318 n : ℚ) / 2⌉ : ℚ) / (A066841 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075762.P16355667048482751669

namespace A075762

/-- `record[ceil(A006318(n)/2)/A066841(n+1)]` -/
def P16355667048482751669.Spec : Prop :=
  ∀ n, P16355667048482751669.a n = (A075762 (n + 1) : ℚ)

end A075762

/-! ## A075762.P11235316030337961425

`record[round(A238111(n)/4)/A066841(n+1)]`
-/

namespace A075762.P11235316030337961425
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A238111 n : ℚ) / 4) : ℚ) / (A066841 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075762.P11235316030337961425

namespace A075762

/-- `record[round(A238111(n)/4)/A066841(n+1)]` -/
def P11235316030337961425.Spec : Prop :=
  ∀ n, P11235316030337961425.a n = (A075762 (n + 1) : ℚ)

end A075762

/-!
# A075763: Numbers k that divide A001003(k-1).

The programs for A075763, there is no canonical definition to state claims against.
-/

/-! ## A075763.P15889144683395930525

`filter[A359891(n+1), A323239(#)]`
-/

namespace A075763.P15889144683395930525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A075763.P15889144683395930525

/-! ## A075763.P8839740837342049835

`filter[A359891(n+1), A359592(#)]`
-/

namespace A075763.P8839740837342049835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A075763.P8839740837342049835

/-! ## A075763.P1321485238960844934

`∩[A294674(n+1), A359891(n+1)]`
-/

namespace A075763.P1321485238960844934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075763.P1321485238960844934

/-! ## A075763.P16069036973670492757

`filter[A307824(n+1), A353558(#)]`
-/

namespace A075763.P16069036973670492757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A075763.P16069036973670492757

/-! ## A075763.P3953883784484784531

`filter[A307824(n+1), A353673(#)]`
-/

namespace A075763.P3953883784484784531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A075763.P3953883784484784531

/-!
# A075765: a(n) = floor(prime(n)/n) + (prime(n) mod n).

The programs for A075765, the canonical program `A075765.P88911715651836940` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075765 has offset 1).

The definition of A075765 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000040(n+1)/(n+1))+A000040(n+1)%(n+1)` (program `A075765.P88911715651836940`, by `A075765.P88911715651836940.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A075765.P12868728709163232854

`A000040(n+1)-n*floor(A000040(n+1)/(n+1))`
-/

namespace A075765.P12868728709163232854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (n : ℤ) * ⌊(A000040 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A075765.P12868728709163232854

namespace A075765

/-- `A000040(n+1)-n*floor(A000040(n+1)/(n+1))` -/
def P12868728709163232854.Spec : Prop :=
  ∀ n, P12868728709163232854.a n = A075765 (n + 1)

end A075765

/-! ## A075765.P88911715651836940

`floor(A000040(n+1)/(n+1))+A000040(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075765

/-- `floor(A000040(n+1)/(n+1))+A000040(n+1)%(n+1)` -/
def P88911715651836940.Spec : Prop :=
  ∀ n, P88911715651836940.a n = A075765 (n + 1)

theorem P88911715651836940.correct : P88911715651836940.Spec := by
  intro n
  simp only [A075765, Nat.add_sub_cancel]

end A075765

/-! ## A075765.P11110543088871265091

`A038605(n+1)+A004648(n+1)`
-/

namespace A075765.P11110543088871265091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (n + 1) + A004648 (n + 1)

end

end A075765.P11110543088871265091

namespace A075765

/-- `A038605(n+1)+A004648(n+1)` -/
def P11110543088871265091.Spec : Prop :=
  ∀ n, P11110543088871265091.a n = A075765 (n + 1)

end A075765

/-! ## A075765.P10040741502404980615

`A090973(n+1)+A087611(n+1)`
-/

namespace A075765.P10040741502404980615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090973 (n + 1) + A087611 (n + 1)

end

end A075765.P10040741502404980615

namespace A075765

/-- `A090973(n+1)+A087611(n+1)` -/
def P10040741502404980615.Spec : Prop :=
  ∀ n, P10040741502404980615.a n = A075765 (n + 1)

end A075765

/-! ## A075765.P11816619786155973738

`Δ[A007504(n)]-n*A038605(n+1)`
-/

namespace A075765.P11816619786155973738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ) * A038605 (n + 1)

end

end A075765.P11816619786155973738

namespace A075765

/-- `Δ[A007504(n)]-n*A038605(n+1)` -/
def P11816619786155973738.Spec : Prop :=
  ∀ n, P11816619786155973738.a n = A075765 (n + 1)

end A075765

/-! ## A075765.P17022989743877658892

`A000040(n+1)-n*A038605(n+1)`
-/

namespace A075765.P17022989743877658892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (n : ℤ) * A038605 (n + 1)

end

end A075765.P17022989743877658892

namespace A075765

/-- `A000040(n+1)-n*A038605(n+1)` -/
def P17022989743877658892.Spec : Prop :=
  ∀ n, P17022989743877658892.a n = A075765 (n + 1)

end A075765

/-! ## A075765.P12873464478109954386

`A000040(n+1)-n*A076080(n+1)`
-/

namespace A075765.P12873464478109954386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (n : ℤ) * A076080 (n + 1)

end

end A075765.P12873464478109954386

namespace A075765

/-- `A000040(n+1)-n*A076080(n+1)` -/
def P12873464478109954386.Spec : Prop :=
  ∀ n, P12873464478109954386.a n = A075765 (n + 1)

end A075765

/-! ## A075765.P11133825922900056455

`sqrt(A001248(n+1))-n*A038605(n+1)`
-/

namespace A075765.P11133825922900056455
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) - ((n : ℤ) * A038605 (n + 1) : ℝ)

end

end A075765.P11133825922900056455

namespace A075765

/-- `sqrt(A001248(n+1))-n*A038605(n+1)` -/
def P11133825922900056455.Spec : Prop :=
  ∀ n, P11133825922900056455.a n = (A075765 (n + 1) : ℝ)

end A075765

/-! ## A075765.P12345582528044907640

`p?[A076034(n+1)]-n*A076080(n+1)`
-/

namespace A075765.P12345582528044907640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ) * A076080 (n + 1)

end

end A075765.P12345582528044907640

namespace A075765

/-- `p?[A076034(n+1)]-n*A076080(n+1)` -/
def P12345582528044907640.Spec : Prop :=
  ∀ n, P12345582528044907640.a n = A075765 (n + 1)

end A075765

/-! ## A075765.P7430974769889708651

`p?[A014681(n)]-n*A038605(n+1)`
-/

namespace A075765.P7430974769889708651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ) * A038605 (n + 1)

end

end A075765.P7430974769889708651

namespace A075765

/-- `p?[A014681(n)]-n*A038605(n+1)` -/
def P7430974769889708651.Spec : Prop :=
  ∀ n, P7430974769889708651.a n = A075765 (n + 1)

end A075765

/-! ## A075765.P16813824328996627964

`A065134(Δ[A007504(n)])+A038605(n+1)`
-/

namespace A075765.P16813824328996627964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065134 (f1 (n + 1) - f1 n).toNat + A038605 (n + 1)

end

end A075765.P16813824328996627964

namespace A075765

/-- `A065134(Δ[A007504(n)])+A038605(n+1)` -/
def P16813824328996627964.Spec : Prop :=
  ∀ n, P16813824328996627964.a n = A075765 (n + 1)

end A075765

/-! ## A075765.P17342698742108567767

`A065134(p?[A014681(n)])+A038605(n+1)`
-/

namespace A075765.P17342698742108567767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065134 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A038605 (n + 1)

end

end A075765.P17342698742108567767

namespace A075765

/-- `A065134(p?[A014681(n)])+A038605(n+1)` -/
def P17342698742108567767.Spec : Prop :=
  ∀ n, P17342698742108567767.a n = A075765 (n + 1)

end A075765

/-! ## A075765.P13751874111937823200

`p?[A092942(n)]-n*A038605(n+1)`
-/

namespace A075765.P13751874111937823200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ) * A038605 (n + 1)

end

end A075765.P13751874111937823200

namespace A075765

/-- `p?[A092942(n)]-n*A038605(n+1)` -/
def P13751874111937823200.Spec : Prop :=
  ∀ n, P13751874111937823200.a n = A075765 (n + 1)

end A075765

/-! ## A075765.P7946594827605195398

`p?[A001057(n)]-n*A038605(n+1)`
-/

namespace A075765.P7946594827605195398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ) * A038605 (n + 1)

end

end A075765.P7946594827605195398

namespace A075765

/-- `p?[A001057(n)]-n*A038605(n+1)` -/
def P7946594827605195398.Spec : Prop :=
  ∀ n, P7946594827605195398.a n = A075765 (n + 1)

end A075765

/-! ## A075765.P8135662709385261022

`p?[A006370(n)]-n*A038605(n+1)`
-/

namespace A075765.P8135662709385261022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ) * A038605 (n + 1)

end

end A075765.P8135662709385261022

namespace A075765

/-- `p?[A006370(n)]-n*A038605(n+1)` -/
def P8135662709385261022.Spec : Prop :=
  ∀ n, P8135662709385261022.a n = A075765 (n + 1)

end A075765

/-!
# A075770: Let u(1)=u(2)=u(3)=1, u(n+3)=(n*u(n)+(n+1)*u(n+1)+(n+2)*u(n+2))/(n+3); sequence gives values of n such that u(n) is an integer.

The programs for A075770, there is no canonical definition to state claims against.
-/

/-! ## A075770.P5575997426142472759

`A277066(A076550(n))`
-/

namespace A075770.P5575997426142472759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277066 (A076550 n).toNat

end

end A075770.P5575997426142472759

/-! ## A075770.P13174071139763351178

`∩[A014853(n+1), A277066(n+1)]`
-/

namespace A075770.P13174071139763351178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075770.P13174071139763351178

/-!
# A075771: Let n^2 = q*prime(n) + r with 0 <= r < prime(n); then a(n) = q + r.

The programs for A075771, the canonical program `A075771.P3443247931475366001` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075771 has offset 1).

The definition of A075771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075771.P3443247931475366001

`(n+1)²-(A000040(n+1)-1)*floor((n+1)²/A000040(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075771

/-- `(n+1)²-(A000040(n+1)-1)*floor((n+1)²/A000040(n+1))` -/
def P3443247931475366001.Spec : Prop :=
  ∀ n, P3443247931475366001.a n = A075771 (n + 1)

theorem P3443247931475366001.correct : P3443247931475366001.Spec := by
  intro n
  simp only [A075771, Nat.add_sub_cancel]

end A075771

/-! ## A075771.P15829040606563525918

`A097882(n+1)+A069547(n+1)`
-/

namespace A075771.P15829040606563525918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097882 (n + 1) + A069547 (n + 1)

end

end A075771.P15829040606563525918

namespace A075771

/-- `A097882(n+1)+A069547(n+1)` -/
def P15829040606563525918.Spec : Prop :=
  ∀ n, P15829040606563525918.a n = A075771 (n + 1)

end A075771

/-! ## A075771.P6694693711821417236

`A097882(n+1)+(n+1)²%Δ[A007504(n)]`
-/

namespace A075771.P6694693711821417236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097882 (n + 1) + Int.tmod ((n + 1) ^ 2 : ℤ) (f1 (n + 1) - f1 n)

end

end A075771.P6694693711821417236

namespace A075771

/-- `A097882(n+1)+(n+1)²%Δ[A007504(n)]` -/
def P6694693711821417236.Spec : Prop :=
  ∀ n, P6694693711821417236.a n = A075771 (n + 1)

end A075771

/-! ## A075771.P2969898638060699163

`A097882(n+1)+xor(n, -1)²%A000040(n+1)`
-/

namespace A075771.P2969898638060699163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097882 (n + 1) + Int.tmod (Int.xor (n : ℤ) (-1) ^ 2) (A000040 (n + 1))

end

end A075771.P2969898638060699163

namespace A075771

/-- `A097882(n+1)+xor(n, -1)²%A000040(n+1)` -/
def P2969898638060699163.Spec : Prop :=
  ∀ n, P2969898638060699163.a n = A075771 (n + 1)

end A075771

/-! ## A075771.P18153628012124864768

`A069547(n+1)+floor((n+2)*n/A000040(n+1))`
-/

namespace A075771.P18153628012124864768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069547 (n + 1) + ⌊(n + 2 : ℚ) * ((n : ℚ) / (A000040 (n + 1) : ℚ))⌋

end

end A075771.P18153628012124864768

namespace A075771

/-- `A069547(n+1)+floor((n+2)*n/A000040(n+1))` -/
def P18153628012124864768.Spec : Prop :=
  ∀ n, P18153628012124864768.a n = A075771 (n + 1)

end A075771

/-! ## A075771.P8027587193066172316

`A097882(n+1)+Δ[A000330(n)]%A273960(n+1)`
-/

namespace A075771.P8027587193066172316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097882 (n + 1) + Int.tmod (f1 (n + 1) - f1 n) (A273960 (n + 1))

end

end A075771.P8027587193066172316

namespace A075771

/-- `A097882(n+1)+Δ[A000330(n)]%A273960(n+1)` -/
def P8027587193066172316.Spec : Prop :=
  ∀ n, P8027587193066172316.a n = A075771 (n + 1)

end A075771

/-! ## A075771.P3624299000920957066

`A097882(n+1)+abs(A073497(n+1)%A000040(n+1))`
-/

namespace A075771.P3624299000920957066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097882 (n + 1) + |Int.tmod (A073497 (n + 1)) (A000040 (n + 1))|

end

end A075771.P3624299000920957066

namespace A075771

/-- `A097882(n+1)+abs(A073497(n+1)%A000040(n+1))` -/
def P3624299000920957066.Spec : Prop :=
  ∀ n, P3624299000920957066.a n = A075771 (n + 1)

end A075771

/-! ## A075771.P3317901900878979931

`floor((n+1)²/A000040(n+1))+(A005563(n)+1)%A000040(n+1)`
-/

namespace A075771.P3317901900878979931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) / (A000040 (n + 1) : ℚ)⌋ + Int.tmod (A005563 n + 1) (A000040 (n + 1))

end

end A075771.P3317901900878979931

namespace A075771

/-- `floor((n+1)²/A000040(n+1))+(A005563(n)+1)%A000040(n+1)` -/
def P3317901900878979931.Spec : Prop :=
  ∀ n, P3317901900878979931.a n = A075771 (n + 1)

end A075771

/-! ## A075771.P1353033451949453325

`A097882(n+1)+A000027(n+1)²%p?[A018252(n+1)-7]`
-/

namespace A075771.P1353033451949453325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097882 (n + 1) + Int.tmod (A000027 (n + 1) ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A075771.P1353033451949453325

namespace A075771

/-- `A097882(n+1)+A000027(n+1)²%p?[A018252(n+1)-7]` -/
def P1353033451949453325.Spec : Prop :=
  ∀ n, P1353033451949453325.a n = A075771 (n + 1)

end A075771

/-! ## A075771.P16902733356533540198

`A097882(n+1)+A001478(n+1)²%p?[A018252(n+1)-7]`
-/

namespace A075771.P16902733356533540198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097882 (n + 1) + Int.tmod (A001478 (n + 1) ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A075771.P16902733356533540198

namespace A075771

/-- `A097882(n+1)+A001478(n+1)²%p?[A018252(n+1)-7]` -/
def P16902733356533540198.Spec : Prop :=
  ∀ n, P16902733356533540198.a n = A075771 (n + 1)

end A075771

/-! ## A075771.P4537695711358535413

`A097882(n+1)+A014688(n+1)²%p?[A018252(n+1)-7]`
-/

namespace A075771.P4537695711358535413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097882 (n + 1) + Int.tmod (A014688 (n + 1) ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A075771.P4537695711358535413

namespace A075771

/-- `A097882(n+1)+A014688(n+1)²%p?[A018252(n+1)-7]` -/
def P4537695711358535413.Spec : Prop :=
  ∀ n, P4537695711358535413.a n = A075771 (n + 1)

end A075771

/-! ## A075771.P14518928734281283063

`A097882(n+1)+A014689(n+1)²%p?[A018252(n+1)-7]`
-/

namespace A075771.P14518928734281283063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097882 (n + 1) + Int.tmod (A014689 (n + 1) ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A075771.P14518928734281283063

namespace A075771

/-- `A097882(n+1)+A014689(n+1)²%p?[A018252(n+1)-7]` -/
def P14518928734281283063.Spec : Prop :=
  ∀ n, P14518928734281283063.a n = A075771 (n + 1)

end A075771

/-! ## A075771.P12014676338250755944

`A097882(n+1)+∑[2*n+1]%record[A014963(n+2)]`
-/

namespace A075771.P12014676338250755944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097882 (n + 1) + Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A075771.P12014676338250755944

namespace A075771

/-- `A097882(n+1)+∑[2*n+1]%record[A014963(n+2)]` -/
def P12014676338250755944.Spec : Prop :=
  ∀ n, P12014676338250755944.a n = A075771 (n + 1)

end A075771

/-!
# A075775: Numbers k that divide phi(Fibonacci(k)).

The programs for A075775, there is no canonical definition to state claims against.
-/

/-! ## A075775.P9496521789762307643

`comp[A075776(n+1)-1]+1`
-/

namespace A075775.P9496521789762307643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075776 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A075775.P9496521789762307643

/-! ## A075775.P14476799515736312313

`eq[A065449(n)%A028310(n), A000007(n)]`
-/

namespace A075775.P14476799515736312313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065449 n) (A028310 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075775.P14476799515736312313

/-! ## A075775.P7479507096370370861

`eq[char[A075776(n+1)], A151933(n)]`
-/

namespace A075775.P7479507096370370861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075776 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A075775.P7479507096370370861

/-!
# A075776: Numbers k that do not divide phi(Fibonacci(k)).

The programs for A075776, there is no canonical definition to state claims against.
-/

/-! ## A075776.P8869031087981586002

`lt[gcd(n, A065449(n)), n]`
-/

namespace A075776.P8869031087981586002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A065449 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075776.P8869031087981586002

/-! ## A075776.P14358790277725823661

`lt[0, A065449(n)%A028310(n)]`
-/

namespace A075776.P14358790277725823661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065449 n) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A075776.P14358790277725823661

/-! ## A075776.P16365579368797754957

`eq[char[A075775(n+1)], A151933(n)]`
-/

namespace A075776.P16365579368797754957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075775 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A075776.P16365579368797754957

/-!
# A075777: Minimal surface area of a rectangular solid with volume n and integer sides.

The programs for A075777, there is no canonical definition to state claims against.
-/

/-! ## A075777.P11891483941311226919

`A227215(n+1)²-A102889(n+1)`
-/

namespace A075777.P11891483941311226919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227215 (n + 1) ^ 2 - A102889 (n + 1)

end

end A075777.P11891483941311226919

/-! ## A075777.P119845205813114524

`A227215(n+1)²-∑{e}[A080372(n+1), A005563(#)]`
-/

namespace A075777.P119845205813114524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227215 (n + 1) ^ 2 - ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005563 (Nat.factorization (f1 n).natAbs p)

end

end A075777.P119845205813114524

/-!
# A075778: Decimal expansion of the real root of x^3 + x^2 - 1.

The programs for A075778, there is no canonical definition to state claims against.
-/

/-! ## A075778.P17406756842618733436

`A109134(n+1)`
-/

namespace A075778.P17406756842618733436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109134 (n + 1 + 1)

end

end A075778.P17406756842618733436

/-! ## A075778.P3389043302311174692

`A109134(Δ[n²]-n)%20`
-/

namespace A075778.P3389043302311174692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109134 (((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + 1)) 20

end

end A075778.P3389043302311174692

/-! ## A075778.P10531047197027116064

`Δ[A000027(∑[A109134(n)])]`
-/

namespace A075778.P10531047197027116064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109134 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075778.P10531047197027116064

/-! ## A075778.P7946300394957031544

`dr(A109134(A008619(2*n)))`
-/

namespace A075778.P7946300394957031544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A109134 ((A008619 (2 * n)).toNat + 1))

end

end A075778.P7946300394957031544

/-! ## A075778.P12493398310411218240

`Δ[A023444(∑[A109134(n)])]`
-/

namespace A075778.P12493398310411218240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109134 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075778.P12493398310411218240

/-! ## A075778.P12651306570909914938

`A055457(A160239(n))*A109134(Δ[n²]-n)`
-/

namespace A075778.P12651306570909914938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055457 (A160239 n).toNat * A109134 (((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + 1)

end

end A075778.P12651306570909914938

/-!
# A075779: Triangle T(n,k) = f(n,k,n-1), n >= 2, 1 <= k <= n-1, where f is given below.

The programs for A075779, the canonical program `A075779.P14890746693869865827` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075779 has offset 2).

The definition of A075779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9720 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075779.P14890746693869865827

`A075798(lt[2, A002260(n+1)])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A075779

/-- `A075798(lt[2, A002260(n+1)])` -/
def P14890746693869865827.Spec : Prop :=
  ∀ n, P14890746693869865827.a n = A075779 (n + 2)

theorem P14890746693869865827.correct : P14890746693869865827.Spec := by
  intro n
  simp only [A075779, Nat.add_sub_cancel]

end A075779

/-! ## A075779.P6026543700961942628

`A075798(lt[1, A075798(n+1)]+1)`
-/

namespace A075779.P6026543700961942628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A075779.P6026543700961942628

namespace A075779

/-- `A075798(lt[1, A075798(n+1)]+1)` -/
def P6026543700961942628.Spec : Prop :=
  ∀ n, P6026543700961942628.a n = A075779 (n + 2)

end A075779

/-! ## A075779.P2484300363717714310

`A075798(lt[1, A002262(n)])`
-/

namespace A075779.P2484300363717714310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A075779.P2484300363717714310

namespace A075779

/-- `A075798(lt[1, A002262(n)])` -/
def P2484300363717714310.Spec : Prop :=
  ∀ n, P2484300363717714310.a n = A075779 (n + 2)

end A075779

/-! ## A075779.P16698664027370020817

`A075798(lt[1, A229223(n)])`
-/

namespace A075779.P16698664027370020817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A075779.P16698664027370020817

namespace A075779

/-- `A075798(lt[1, A229223(n)])` -/
def P16698664027370020817.Spec : Prop :=
  ∀ n, P16698664027370020817.a n = A075779 (n + 2)

end A075779

/-! ## A075779.P1592437734935036751

`A075798(lt[1, A226874(n)])`
-/

namespace A075779.P1592437734935036751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A075779.P1592437734935036751

namespace A075779

/-- `A075798(lt[1, A226874(n)])` -/
def P1592437734935036751.Spec : Prop :=
  ∀ n, P1592437734935036751.a n = A075779 (n + 2)

end A075779

/-! ## A075779.P12266373831249503745

`A075798(lt[1, A294589(n)])`
-/

namespace A075779.P12266373831249503745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A075779.P12266373831249503745

namespace A075779

/-- `A075798(lt[1, A294589(n)])` -/
def P12266373831249503745.Spec : Prop :=
  ∀ n, P12266373831249503745.a n = A075779 (n + 2)

end A075779

/-! ## A075779.P17939779001159953630

`filter[A075798(n+1), A043545(#)]`
-/

namespace A075779.P17939779001159953630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A075779.P17939779001159953630

namespace A075779

/-- `filter[A075798(n+1), A043545(#)]` -/
def P17939779001159953630.Spec : Prop :=
  ∀ n, P17939779001159953630.a n = A075779 (n + 2)

end A075779

/-! ## A075779.P900747001940933678

`filter[A075798(n+1), A252744(#)]`
-/

namespace A075779.P900747001940933678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252744 (f1 j).toNat = 1) n)

end

end A075779.P900747001940933678

namespace A075779

/-- `filter[A075798(n+1), A252744(#)]` -/
def P900747001940933678.Spec : Prop :=
  ∀ n, P900747001940933678.a n = A075779 (n + 2)

end A075779

/-! ## A075779.P8789558630042371990

`filter[A075798(n+1), A267442(#)]`
-/

namespace A075779.P8789558630042371990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267442 (f1 j).toNat = 1) n)

end

end A075779.P8789558630042371990

namespace A075779

/-- `filter[A075798(n+1), A267442(#)]` -/
def P8789558630042371990.Spec : Prop :=
  ∀ n, P8789558630042371990.a n = A075779 (n + 2)

end A075779

/-! ## A075779.P16654222259078390043

`filter[A075798(n+1), A267814(#)]`
-/

namespace A075779.P16654222259078390043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267814 (f1 j).toNat = 1) n)

end

end A075779.P16654222259078390043

namespace A075779

/-- `filter[A075798(n+1), A267814(#)]` -/
def P16654222259078390043.Spec : Prop :=
  ∀ n, P16654222259078390043.a n = A075779 (n + 2)

end A075779

/-!
# A075780: Triangle T(n,k) = f(n,k,n-2), n >= 2, 1 <= k <= n-1, where f is given below.

The programs for A075780, there is no canonical definition to state claims against.
-/

/-! ## A075780.P17477770441744826179

`A075837(eq[0, A103451(n)]+1)`
-/

namespace A075780.P17477770441744826179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A075780.P17477770441744826179

/-! ## A075780.P13767994052346771451

`A075837(lt[2, A002260(n+1)])`
-/

namespace A075780.P13767994052346771451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A075780.P13767994052346771451

/-! ## A075780.P15833717676070212511

`A075837(A133196(n+1)+A014132(n+1))`
-/

namespace A075780.P15833717676070212511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075837 (A133196 (n + 1) + A014132 (n + 1)).toNat

end

end A075780.P15833717676070212511

/-! ## A075780.P17161295535819938289

`A075837(lt[1, A002262(n)])`
-/

namespace A075780.P17161295535819938289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A075780.P17161295535819938289

/-! ## A075780.P7026200285669318182

`A075837(lt[A209561(n+1), A051601(n)])`
-/

namespace A075780.P7026200285669318182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075837 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A075780.P7026200285669318182

/-! ## A075780.P14429469573260306206

`A075837(lt[1, A226874(n)])`
-/

namespace A075780.P14429469573260306206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A075780.P14429469573260306206

/-! ## A075780.P4105727976693166031

`A075837(lt[1, A131689(n)])`
-/

namespace A075780.P4105727976693166031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A075780.P4105727976693166031

/-! ## A075780.P11709442213698181788

`A075837(lt[1, A294589(n)])`
-/

namespace A075780.P11709442213698181788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A075780.P11709442213698181788

/-! ## A075780.P5617095031460119325

`filter[A075837(n+1), A347523(#)]`
-/

namespace A075780.P5617095031460119325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A075780.P5617095031460119325

/-! ## A075780.P9228243131213716777

`A075837(lt[2, A131879(n+1)])`
-/

namespace A075780.P9228243131213716777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A075780.P9228243131213716777

/-!
# A075781: Primes of the form perfect_power(k) + k.

The programs for A075781, there is no canonical definition to state claims against.
-/

/-! ## A075781.P5110716403860514888

`A074321(n+1)+A001597(A074321(n+1))`
-/

namespace A075781.P5110716403860514888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074321 (n + 1) + A001597 (A074321 (n + 1)).toNat

end

end A075781.P5110716403860514888

/-! ## A075781.P9400276692684910883

`p?[∑[A076412(n)+1]]`
-/

namespace A075781.P9400276692684910883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075781.P9400276692684910883

/-! ## A075781.P2887993572102456958

`p?[A001597(n+1)+1+n]`
-/

namespace A075781.P2887993572102456958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075781.P2887993572102456958

/-! ## A075781.P3727305579358653191

`p?[n+1+abs(A157985(n+1))]`
-/

namespace A075781.P3727305579358653191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + |A157985 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075781.P3727305579358653191

/-! ## A075781.P7191392362001811289

`p?[A001597(A028310(n))+n]`
-/

namespace A075781.P7191392362001811289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A028310 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075781.P7191392362001811289

/-!
# A075782: Numbers n such that perfect_power(n)+perfect_power(n+1) is prime.

The programs for A075782, there is no canonical definition to state claims against.
-/

/-! ## A075782.P8953656451188038150

`A244041(A349365(n)+A031298(n))`
-/

namespace A075782.P8953656451188038150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244041 (A349365 n + A031298 n).toNat

end

end A075782.P8953656451188038150

/-!
# A075785: Number of ways to express 3/n as Egyptian fractions in just three terms.

The programs for A075785, there is no canonical definition to state claims against.
-/

/-! ## A075785.P5660913178733358554

`A227612(∑[n+3]+1)`
-/

namespace A075785.P5660913178733358554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227612 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A075785.P5660913178733358554

/-! ## A075785.P1686446784206011756

`or(char[1], A227612(A034856(n+2)))`
-/

namespace A075785.P1686446784206011756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A227612 (A034856 (n + 2)).toNat)

end

end A075785.P1686446784206011756

/-! ## A075785.P11298434792755680806

`A227612(A034856(n+2))%A000040(A000041(n))`
-/

namespace A075785.P11298434792755680806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227612 (A034856 (n + 2)).toNat) (A000040 (A000041 n).toNat)

end

end A075785.P11298434792755680806

/-!
# A075786: Palindromic perfect powers.

The programs for A075786, there is no canonical definition to state claims against.
-/

/-! ## A075786.P11239539830412158436

`∩[A001597(n+1), A002113(n+1)]`
-/

namespace A075786.P11239539830412158436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075786.P11239539830412158436

/-! ## A075786.P5760373794868681658

`∩[A001597(n+1), A032350(n+1)]`
-/

namespace A075786.P5760373794868681658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075786.P5760373794868681658

/-! ## A075786.P11438546678133584830

`∩[A002760(n+1), A032350(n+1)]`
-/

namespace A075786.P11438546678133584830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075786.P11438546678133584830

/-! ## A075786.P10740637464806993808

`∩[A032350(n+1), A073042(n+1)]`
-/

namespace A075786.P10740637464806993808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075786.P10740637464806993808

/-! ## A075786.P17904095424984370263

`∩[A002113(n+1), A110811(n+1)]`
-/

namespace A075786.P17904095424984370263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075786.P17904095424984370263

/-!
# A075787: Even-digit perfect powers.

The programs for A075787, there is no canonical definition to state claims against.
-/

/-! ## A075787.P16719383629292439956

`∩[A001597(n+1), A061814(n)]`
-/

namespace A075787.P16719383629292439956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061814 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075787.P16719383629292439956

/-! ## A075787.P8407556137249968616

`∩[A075090(n+1), A061814(n)]`
-/

namespace A075787.P8407556137249968616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061814 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075787.P8407556137249968616

/-! ## A075787.P1746473177636290709

`∩[A259183(n+1), A061814(n)]`
-/

namespace A075787.P1746473177636290709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061814 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075787.P1746473177636290709

/-! ## A075787.P3976605828950990280

`∩[A001597(n+1), A014263(n+1)]`
-/

namespace A075787.P3976605828950990280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075787.P3976605828950990280

/-! ## A075787.P10137208723055155955

`∩[A024657(2*(n+2)), A001597(n+1)]`
-/

namespace A075787.P10137208723055155955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075787.P10137208723055155955

/-!
# A075789: Value of i, when n is written as r^i - s^j with the smallest possible r^i (with minimal i) and r, s > 0, i, j > 1; or 0 if n is not of this form.

The programs for A075789, there is no canonical definition to state claims against.
-/

/-! ## A075789.P4777005922400062582

`A007978(∑[A147366(n+1)])%4`
-/

namespace A075789.P4777005922400062582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007978 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 4

end

end A075789.P4777005922400062582

/-! ## A075789.P13898335937107380226

`A347730(or(56, A264954(n+1)))`
-/

namespace A075789.P13898335937107380226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347730 (Int.lor 56 (A264954 (n + 1))).toNat

end

end A075789.P13898335937107380226

/-! ## A075789.P11866940514917746953

`xor(2, A170980(A170952(3*n+5)))`
-/

namespace A075789.P11866940514917746953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A170980 (A170952 (3 * n + 5)).toNat)

end

end A075789.P11866940514917746953

/-! ## A075789.P10089485786489273394

`A194885(or(A097805(n), A256311(n)))`
-/

namespace A075789.P10089485786489273394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194885 (Int.lor (A097805 n) (A256311 n)).toNat

end

end A075789.P10089485786489273394

/-! ## A075789.P61350019195182036

`A290563(gcd(A120876(n+1), A330463(n)))`
-/

namespace A075789.P61350019195182036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290563 (Int.gcd (A120876 (n + 1)) (A330463 n))

end

end A075789.P61350019195182036

/-!
# A075792: E.g.f.: 1 + log(1+f(x)) where f(x) = log(1/(2-exp(x))) = e.g.f. for A000629.

The programs for A075792, there is no canonical definition to state claims against.
-/

/-! ## A075792.P14459168158415673266

`ceil(A347996(n+1)/29)`
-/

namespace A075792.P14459168158415673266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A347996 (n + 1) : ℚ) / 29⌉

end

end A075792.P14459168158415673266

/-! ## A075792.P3265358403141565946

`round(sqrt(A025818((n+1)!+7)+1))`
-/

namespace A075792.P3265358403141565946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A025818 (Nat.factorial (n + 1) + 7) + 1 : ℝ))

end

end A075792.P3265358403141565946

/-! ## A075792.P18188739403717480659

`A234537(n!)+∑{digits}[n!, (#%2)!]`
-/

namespace A075792.P18188739403717480659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234537 (Nat.factorial n) + ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (x % 2)).sum : ℕ) : ℤ)

end

end A075792.P18188739403717480659

/-!
# A075794: a(n) = the least positive integer k such that phi(k) > phi(1) + ... + phi(n).

The programs for A075794, the canonical program `A075794.P2063623705962702064` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075794 has offset 1).

The definition of A075794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075794.P2063623705962702064

`A151800(∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A075794

/-- `A151800(∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]+1)` -/
def P2063623705962702064.Spec : Prop :=
  ∀ n, P2063623705962702064.a n = A075794 (n + 1)

theorem P2063623705962702064.correct : P2063623705962702064.Spec := by
  intro n
  simp only [A075794, Nat.add_sub_cancel]

end A075794

/-! ## A075794.P4552475273409333230

`A151800(Δ[A049688(n)])`
-/

namespace A075794.P4552475273409333230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (n + 1) - f1 n).toNat

end

end A075794.P4552475273409333230

namespace A075794

/-- `A151800(Δ[A049688(n)])` -/
def P4552475273409333230.Spec : Prop :=
  ∀ n, P4552475273409333230.a n = A075794 (n + 1)

end A075794

/-! ## A075794.P1429774985437501914

`A151800(A005728(n+1))`
-/

namespace A075794.P1429774985437501914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A005728 (n + 1)).toNat

end

end A075794.P1429774985437501914

namespace A075794

/-- `A151800(A005728(n+1))` -/
def P1429774985437501914.Spec : Prop :=
  ∀ n, P1429774985437501914.a n = A075794 (n + 1)

end A075794

/-! ## A075794.P17233315814442783289

`A151800(Δ[A005598(n)]+1)`
-/

namespace A075794.P17233315814442783289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (n + 1) - f1 n + 1).toNat

end

end A075794.P17233315814442783289

namespace A075794

/-- `A151800(Δ[A005598(n)]+1)` -/
def P17233315814442783289.Spec : Prop :=
  ∀ n, P17233315814442783289.a n = A075794 (n + 1)

end A075794

/-! ## A075794.P5143325000994266284

`A151800(A002088(n+1)+1)`
-/

namespace A075794.P5143325000994266284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A002088 (n + 1) + 1).toNat

end

end A075794.P5143325000994266284

namespace A075794

/-- `A151800(A002088(n+1)+1)` -/
def P5143325000994266284.Spec : Prop :=
  ∀ n, P5143325000994266284.a n = A075794 (n + 1)

end A075794

/-! ## A075794.P16870867337593805891

`A151800(A015614(n+1)+2)`
-/

namespace A075794.P16870867337593805891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A015614 (n + 1) + 2).toNat

end

end A075794.P16870867337593805891

namespace A075794

/-- `A151800(A015614(n+1)+2)` -/
def P16870867337593805891.Spec : Prop :=
  ∀ n, P16870867337593805891.a n = A075794 (n + 1)

end A075794

/-! ## A075794.P7656390288735981416

`A151800(A049632(n+1)/2)`
-/

namespace A075794.P7656390288735981416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((A049632 (n + 1) : ℚ) / 2)).toNat

end

end A075794.P7656390288735981416

namespace A075794

/-- `A151800(A049632(n+1)/2)` -/
def P7656390288735981416.Spec : Prop :=
  ∀ n, P7656390288735981416.a n = A075794 (n + 1)

end A075794

/-! ## A075794.P82006845231714176

`A060264(A049806(n+1))`
-/

namespace A075794.P82006845231714176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (A049806 (n + 1)).toNat

end

end A075794.P82006845231714176

namespace A075794

/-- `A060264(A049806(n+1))` -/
def P82006845231714176.Spec : Prop :=
  ∀ n, P82006845231714176.a n = A075794 (n + 1)

end A075794

/-! ## A075794.P15377334433398748653

`A007918(∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]+2)`
-/

namespace A075794.P15377334433398748653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat

end

end A075794.P15377334433398748653

namespace A075794

/-- `A007918(∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]+2)` -/
def P15377334433398748653.Spec : Prop :=
  ∀ n, P15377334433398748653.a n = A075794 (n + 1)

end A075794

/-! ## A075794.P11540489010346833467

`A007918(Δ[A049628(n)])`
-/

namespace A075794.P11540489010346833467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (f1 (n + 1) - f1 n).toNat

end

end A075794.P11540489010346833467

namespace A075794

/-- `A007918(Δ[A049628(n)])` -/
def P11540489010346833467.Spec : Prop :=
  ∀ n, P11540489010346833467.a n = A075794 (n + 1)

end A075794

/-! ## A075794.P3884000648217763504

`A066169(Δ[A049688(n)])`
-/

namespace A075794.P3884000648217763504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 (f1 (n + 1) - f1 n).toNat

end

end A075794.P3884000648217763504

namespace A075794

/-- `A066169(Δ[A049688(n)])` -/
def P3884000648217763504.Spec : Prop :=
  ∀ n, P3884000648217763504.a n = A075794 (n + 1)

end A075794

/-! ## A075794.P7906500214125744649

`p?[A066169(A005728(n))]`
-/

namespace A075794.P7906500214125744649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 (A005728 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075794.P7906500214125744649

namespace A075794

/-- `p?[A066169(A005728(n))]` -/
def P7906500214125744649.Spec : Prop :=
  ∀ n, P7906500214125744649.a n = A075794 (n + 1)

end A075794

/-! ## A075794.P90633036826976502

`A066169(A049643(n+1))`
-/

namespace A075794.P90633036826976502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 (A049643 (n + 1)).toNat

end

end A075794.P90633036826976502

namespace A075794

/-- `A066169(A049643(n+1))` -/
def P90633036826976502.Spec : Prop :=
  ∀ n, P90633036826976502.a n = A075794 (n + 1)

end A075794

/-! ## A075794.P564610195051329257

`A007918(A225531(n+1))`
-/

namespace A075794.P564610195051329257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A225531 (n + 1)).toNat

end

end A075794.P564610195051329257

namespace A075794

/-- `A007918(A225531(n+1))` -/
def P564610195051329257.Spec : Prop :=
  ∀ n, P564610195051329257.a n = A075794 (n + 1)

end A075794

/-! ## A075794.P15702939784319881447

`A007918(Δ[A103116(n)]+2)`
-/

namespace A075794.P15702939784319881447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (f1 (n + 1) - f1 n + 2).toNat

end

end A075794.P15702939784319881447

namespace A075794

/-- `A007918(Δ[A103116(n)]+2)` -/
def P15702939784319881447.Spec : Prop :=
  ∀ n, P15702939784319881447.a n = A075794 (n + 1)

end A075794

/-!
# A075795: Number of k, 0<k<=n, such that the resultant of the k-th cyclotomic polynomial and the n-th cyclotomic polynomial is equal to 1.

The programs for A075795, the canonical program `A075795.P380277726918487259` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075795 has offset 1).

The definition of A075795 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075795.P380277726918487259

`n-A001222(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075795

/-- `n-A001222(n+1)` -/
def P380277726918487259.Spec : Prop :=
  ∀ n, P380277726918487259.a n = A075795 (n + 1)

theorem P380277726918487259.correct : P380277726918487259.Spec := by
  intro n
  simp only [A075795, Nat.add_sub_cancel]

end A075795

/-! ## A075795.P16231385750263385052

`n+1-A073093(n+1)`
-/

namespace A075795.P16231385750263385052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A073093 (n + 1)

end

end A075795.P16231385750263385052

namespace A075795

/-- `n+1-A073093(n+1)` -/
def P16231385750263385052.Spec : Prop :=
  ∀ n, P16231385750263385052.a n = A075795 (n + 1)

theorem P16231385750263385052.correct : P16231385750263385052.Spec := by
  intro n
  simp only [A075795, Nat.add_sub_cancel, A075795.P16231385750263385052.a, A075795.P380277726918487259.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A073093, A073093.P258081957281391684.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075795

/-! ## A075795.P10165936672561442638

`n-∑{e}[n+1, #]`
-/

namespace A075795.P10165936672561442638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A075795.P10165936672561442638

namespace A075795

/-- `n-∑{e}[n+1, #]` -/
def P10165936672561442638.Spec : Prop :=
  ∀ n, P10165936672561442638.a n = A075795 (n + 1)

end A075795

/-! ## A075795.P13256635159773202622

`n-log2(∏{e}[n+1, 2^#])`
-/

namespace A075795.P13256635159773202622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p : ℕ) : ℝ)

end

end A075795.P13256635159773202622

namespace A075795

/-- `n-log2(∏{e}[n+1, 2^#])` -/
def P13256635159773202622.Spec : Prop :=
  ∀ n, P13256635159773202622.a n = (A075795 (n + 1) : ℝ)

end A075795

/-! ## A075795.P8613338249590127938

`n-∑{p}[n+1, val(n+1, #)]`
-/

namespace A075795.P8613338249590127938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)

end

end A075795.P8613338249590127938

namespace A075795

/-- `n-∑{p}[n+1, val(n+1, #)]` -/
def P8613338249590127938.Spec : Prop :=
  ∀ n, P8613338249590127938.a n = A075795 (n + 1)

end A075795

/-! ## A075795.P17398221631937057391

`xor(-1, ∑{e}[n+1, #])+n+1`
-/

namespace A075795.P17398221631937057391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) + (n + 1 : ℤ)

end

end A075795.P17398221631937057391

namespace A075795

/-- `xor(-1, ∑{e}[n+1, #])+n+1` -/
def P17398221631937057391.Spec : Prop :=
  ∀ n, P17398221631937057391.a n = A075795 (n + 1)

end A075795

/-! ## A075795.P10304169867271196581

`abs(∑{e}[2*n-(n-1), #]-n)`
-/

namespace A075795.P10304169867271196581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - (n : ℤ)|

end

end A075795.P10304169867271196581

namespace A075795

/-- `abs(∑{e}[2*n-(n-1), #]-n)` -/
def P10304169867271196581.Spec : Prop :=
  ∀ n, P10304169867271196581.a n = A075795 (n + 1)

end A075795

/-! ## A075795.P14886718563064923353

`(2*n+1)%(∑{e}[n+1, #]+n+1)`
-/

namespace A075795.P14886718563064923353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + (n + 1))

end

end A075795.P14886718563064923353

namespace A075795

/-- `(2*n+1)%(∑{e}[n+1, #]+n+1)` -/
def P14886718563064923353.Spec : Prop :=
  ∀ n, (P14886718563064923353.a n : ℤ) = A075795 (n + 1)

end A075795

/-! ## A075795.P5450818686248669173

`n-Δ[A022559(n)]`
-/

namespace A075795.P5450818686248669173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A075795.P5450818686248669173

namespace A075795

/-- `n-Δ[A022559(n)]` -/
def P5450818686248669173.Spec : Prop :=
  ∀ n, P5450818686248669173.a n = A075795 (n + 1)

end A075795

/-! ## A075795.P12476670418621239387

`A069345(n+1)-1`
-/

namespace A075795.P12476670418621239387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069345 (n + 1) - 1

end

end A075795.P12476670418621239387

namespace A075795

/-- `A069345(n+1)-1` -/
def P12476670418621239387.Spec : Prop :=
  ∀ n, P12476670418621239387.a n = A075795 (n + 1)

theorem P12476670418621239387.correct : P12476670418621239387.Spec := by
  intro n
  simp only [A075795, Nat.add_sub_cancel, A075795.P12476670418621239387.a, A075795.P380277726918487259.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A069345, A069345.P4010349656515474516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075795

/-! ## A075795.P2919305799012098126

`n-log2(A061142(n+1))`
-/

namespace A075795.P2919305799012098126
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 (A061142 (n + 1) : ℝ)

end

end A075795.P2919305799012098126

namespace A075795

/-- `n-log2(A061142(n+1))` -/
def P2919305799012098126.Spec : Prop :=
  ∀ n, P2919305799012098126.a n = (A075795 (n + 1) : ℝ)

end A075795

/-! ## A075795.P11931336735461840443

`2*n-A222312(n+1)`
-/

namespace A075795.P11931336735461840443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A222312 (n + 1)

end

end A075795.P11931336735461840443

namespace A075795

/-- `2*n-A222312(n+1)` -/
def P11931336735461840443.Spec : Prop :=
  ∀ n, P11931336735461840443.a n = A075795 (n + 1)

theorem P11931336735461840443.correct : P11931336735461840443.Spec := by
  intro n
  simp only [A075795, Nat.add_sub_cancel, A075795.P11931336735461840443.a, A075795.P380277726918487259.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A222312, A222312.P5225546657519994950.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075795

/-! ## A075795.P10772611112439001083

`n-A255201(n+1)/2`
-/

namespace A075795.P10772611112439001083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A255201 (n + 1) : ℚ) / 2

end

end A075795.P10772611112439001083

namespace A075795

/-- `n-A255201(n+1)/2` -/
def P10772611112439001083.Spec : Prop :=
  ∀ n, P10772611112439001083.a n = (A075795 (n + 1) : ℚ)

theorem P10772611112439001083.correct : P10772611112439001083.Spec := by
  intro n
  simp only [A075795, Nat.add_sub_cancel, A075795.P10772611112439001083.a, A075795.P380277726918487259.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A255201, A255201.P10260826747868353202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075795

/-! ## A075795.P10176920184108508641

`n-val(A124508(n+1), 2)`
-/

namespace A075795.P10176920184108508641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (A124508 (n + 1)).toNat 2 : ℤ)

end

end A075795.P10176920184108508641

namespace A075795

/-- `n-val(A124508(n+1), 2)` -/
def P10176920184108508641.Spec : Prop :=
  ∀ n, P10176920184108508641.a n = A075795 (n + 1)

end A075795

/-! ## A075795.P14800162716420095851

`n-val(A165827(n+1), 2)`
-/

namespace A075795.P14800162716420095851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (A165827 (n + 1)).toNat 2 : ℤ)

end

end A075795.P14800162716420095851

namespace A075795

/-- `n-val(A165827(n+1), 2)` -/
def P14800162716420095851.Spec : Prop :=
  ∀ n, P14800162716420095851.a n = A075795 (n + 1)

end A075795

/-! ## A075795.P8500973918032716960

`n-val(A165831(n+1), 2)`
-/

namespace A075795.P8500973918032716960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (A165831 (n + 1)).toNat 2 : ℤ)

end

end A075795.P8500973918032716960

namespace A075795

/-- `n-val(A165831(n+1), 2)` -/
def P8500973918032716960.Spec : Prop :=
  ∀ n, P8500973918032716960.a n = A075795 (n + 1)

end A075795

/-! ## A075795.P7073237588611379316

`n-val(A165835(n+1), 2)`
-/

namespace A075795.P7073237588611379316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (A165835 (n + 1)).toNat 2 : ℤ)

end

end A075795.P7073237588611379316

namespace A075795

/-- `n-val(A165835(n+1), 2)` -/
def P7073237588611379316.Spec : Prop :=
  ∀ n, P7073237588611379316.a n = A075795 (n + 1)

end A075795

/-! ## A075795.P11359038940587858808

`n-val(A165839(n+1), 2)`
-/

namespace A075795.P11359038940587858808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (A165839 (n + 1)).toNat 2 : ℤ)

end

end A075795.P11359038940587858808

namespace A075795

/-- `n-val(A165839(n+1), 2)` -/
def P11359038940587858808.Spec : Prop :=
  ∀ n, P11359038940587858808.a n = A075795 (n + 1)

end A075795

/-! ## A075795.P18231960018031014021

`n-val(A165843(n+1), 2)`
-/

namespace A075795.P18231960018031014021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (A165843 (n + 1)).toNat 2 : ℤ)

end

end A075795.P18231960018031014021

namespace A075795

/-- `n-val(A165843(n+1), 2)` -/
def P18231960018031014021.Spec : Prop :=
  ∀ n, P18231960018031014021.a n = A075795 (n + 1)

end A075795

/-! ## A075795.P17257229106541101035

`n-val(A165847(n+1), 2)`
-/

namespace A075795.P17257229106541101035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (A165847 (n + 1)).toNat 2 : ℤ)

end

end A075795.P17257229106541101035

namespace A075795

/-- `n-val(A165847(n+1), 2)` -/
def P17257229106541101035.Spec : Prop :=
  ∀ n, P17257229106541101035.a n = A075795 (n + 1)

end A075795

/-!
# A075796: Numbers k such that 5*k^2 + 5 is a square.

The programs for A075796, the canonical program `A075796.P16011199186827036765` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075796 has offset 1).

The definition of A075796 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075796.P16011199186827036765

`18*a(n-1)-a(n-2)` with `a(0)=2, a(1)=38`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075796

/-- `18*a(n-1)-a(n-2)` -/
def P16011199186827036765.Spec : Prop :=
  ∀ n, P16011199186827036765.a n = A075796 (n + 1)

theorem P16011199186827036765.correct : P16011199186827036765.Spec := by
  intro n
  simp only [A075796, Nat.add_sub_cancel]

end A075796

/-! ## A075796.P11240707542853915738

`2*A049629(n)`
-/

namespace A075796.P11240707542853915738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049629 n

end

end A075796.P11240707542853915738

namespace A075796

/-- `2*A049629(n)` -/
def P11240707542853915738.Spec : Prop :=
  ∀ n, P11240707542853915738.a n = A075796 (n + 1)

end A075796

/-! ## A075796.P14924621714461345250

`A000032(6*(n+1)-3)/2`
-/

namespace A075796.P14924621714461345250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (6 * (n + 1) - 3) : ℚ) / 2

end

end A075796.P14924621714461345250

namespace A075796

/-- `A000032(6*(n+1)-3)/2` -/
def P14924621714461345250.Spec : Prop :=
  ∀ n, P14924621714461345250.a n = (A075796 (n + 1) : ℚ)

end A075796

/-! ## A075796.P8016157673753888171

`A000045(6*n+3)+A000045(6*n)/2`
-/

namespace A075796.P8016157673753888171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (6 * n + 3) : ℚ) + (A000045 (6 * n) : ℚ) / 2

end

end A075796.P8016157673753888171

namespace A075796

/-- `A000045(6*n+3)+A000045(6*n)/2` -/
def P8016157673753888171.Spec : Prop :=
  ∀ n, P8016157673753888171.a n = (A075796 (n + 1) : ℚ)

end A075796

/-! ## A075796.P542946903066124955

`2*A167808(6*n+4)-A167808(6*n+6)`
-/

namespace A075796.P542946903066124955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167808 (6 * n + 4) - A167808 (6 * n + 6)

end

end A075796.P542946903066124955

namespace A075796

/-- `2*A167808(6*n+4)-A167808(6*n+6)` -/
def P542946903066124955.Spec : Prop :=
  ∀ n, P542946903066124955.a n = A075796 (n + 1)

end A075796

/-! ## A075796.P3270172925601621101

`ogf((2+2x)/(1-18x+x^2))`
-/

namespace A075796.P3270172925601621101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2] [1, -18, 1] n

end

end A075796.P3270172925601621101

namespace A075796

/-- `ogf((2+2x)/(1-18x+x^2))` -/
def P3270172925601621101.Spec : Prop :=
  ∀ n, P3270172925601621101.a n = A075796 (n + 1)

end A075796

/-! ## A075796.P4063359602556312412

`∑[2*ceil(ϕ^(6*n))]`
-/

namespace A075796.P4063359602556312412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.goldenRatio ^ (6 * n)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075796.P4063359602556312412

namespace A075796

/-- `∑[2*ceil(ϕ^(6*n))]` -/
def P4063359602556312412.Spec : Prop :=
  ∀ n, P4063359602556312412.a n = A075796 (n + 1)

end A075796

/-! ## A075796.P6267729998265285028

`A157092(n)+2`
-/

namespace A075796.P6267729998265285028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157092 n + 2

end

end A075796.P6267729998265285028

namespace A075796

/-- `A157092(n)+2` -/
def P6267729998265285028.Spec : Prop :=
  ∀ n, P6267729998265285028.a n = A075796 (n + 1)

end A075796

/-! ## A075796.P17573395810628200225

`A001077(Δ[n²])`
-/

namespace A075796.P17573395810628200225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A075796.P17573395810628200225

namespace A075796

/-- `A001077(Δ[n²])` -/
def P17573395810628200225.Spec : Prop :=
  ∀ n, P17573395810628200225.a n = A075796 (n + 1)

end A075796

/-! ## A075796.P3570865102786502303

`Δ[2*A049683(n)]`
-/

namespace A075796.P3570865102786502303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075796.P3570865102786502303

namespace A075796

/-- `Δ[2*A049683(n)]` -/
def P3570865102786502303.Spec : Prop :=
  ∀ n, P3570865102786502303.a n = A075796 (n + 1)

end A075796

/-!
# A075798: Triangle T(n,k) = f(n,k,n-1), n >= 0, 0 <= k <= n, where f is given below.

The programs for A075798, the canonical program `A075798.P15243013555383215055` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075798 has offset 1).

The definition of A075798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075798.P15243013555383215055

`(A005843(A007318(n))-A028262(n))*A318274(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A075798

/-- `(A005843(A007318(n))-A028262(n))*A318274(n)` -/
def P15243013555383215055.Spec : Prop :=
  ∀ n, P15243013555383215055.a n = A075798 (n + 1)

theorem P15243013555383215055.correct : P15243013555383215055.Spec := by
  intro n
  simp only [A075798, Nat.add_sub_cancel]

end A075798

/-! ## A075798.P8145542986437697241

`A145903(n)/A155864(n)*A157635(n)`
-/

namespace A075798.P8145542986437697241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145903 n : ℚ) / (A155864 n : ℚ) * (A157635 n : ℚ)

end

end A075798.P8145542986437697241

namespace A075798

/-- `A145903(n)/A155864(n)*A157635(n)` -/
def P8145542986437697241.Spec : Prop :=
  ∀ n, P8145542986437697241.a n = (A075798 (n + 1) : ℚ)

end A075798

/-! ## A075798.P5886189936918952929

`A090106(A157635(n))`
-/

namespace A075798.P5886189936918952929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090106 (A157635 n).toNat

end

end A075798.P5886189936918952929

namespace A075798

/-- `A090106(A157635(n))` -/
def P5886189936918952929.Spec : Prop :=
  ∀ n, P5886189936918952929.a n = A075798 (n + 1)

end A075798

/-! ## A075798.P108140998906739134

`A118816(A176284(n))`
-/

namespace A075798.P108140998906739134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118816 (A176284 n).toNat

end

end A075798.P108140998906739134

namespace A075798

/-- `A118816(A176284(n))` -/
def P108140998906739134.Spec : Prop :=
  ∀ n, P108140998906739134.a n = A075798 (n + 1)

end A075798

/-! ## A075798.P17961809526159184147

`A157684(A157632(n))`
-/

namespace A075798.P17961809526159184147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157684 (A157632 n).toNat

end

end A075798.P17961809526159184147

namespace A075798

/-- `A157684(A157632(n))` -/
def P17961809526159184147.Spec : Prop :=
  ∀ n, P17961809526159184147.a n = A075798 (n + 1)

end A075798

/-!
# A075799: Palindromic numbers which are products of an even number of distinct primes.

The programs for A075799, there is no canonical definition to state claims against.
-/

/-! ## A075799.P16077575872883922179

`A075805(n)+a(n-1)` with `a(0)=1`
-/

namespace A075799.P16077575872883922179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A075805 n + a (n - 1)

end

end A075799.P16077575872883922179

/-! ## A075799.P15519965741574204425

`A075805(n)+abs(a(A023443(n)))` with `a(0)=1`
-/

namespace A075799.P15519965741574204425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A075805 n + |a (A023443 n).toNat|

end

end A075799.P15519965741574204425

/-! ## A075799.P579153377442960285

`∩[A046338(n+1), A071251(n+1)]`
-/

namespace A075799.P579153377442960285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075799.P579153377442960285

/-! ## A075799.P16317492493210018146

`∪[A075810(n+1), A075811(n+1)]`
-/

namespace A075799.P16317492493210018146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A075799.P16317492493210018146

/-! ## A075799.P6221291268801501328

`record[A007913(A046338(n+1))]`
-/

namespace A075799.P6221291268801501328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A046338 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075799.P6221291268801501328

/-! ## A075799.P3333038868116337756

`filter[A046338(n+1), A008966(#)]`
-/

namespace A075799.P3333038868116337756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A075799.P3333038868116337756

/-! ## A075799.P12581925583263370540

`filter[A046338(n+1), A354819(#)]`
-/

namespace A075799.P12581925583263370540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A075799.P12581925583263370540

/-! ## A075799.P15706679650936607846

`filter[A071251(n+1), A359156(#)]`
-/

namespace A075799.P15706679650936607846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A075799.P15706679650936607846

/-! ## A075799.P12734690412954099432

`filter[A071251(n+1), A359370(#)]`
-/

namespace A075799.P12734690412954099432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A075799.P12734690412954099432

/-! ## A075799.P3000872256019730960

`filter[A071251(n+1), A359464(#)]`
-/

namespace A075799.P3000872256019730960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A075799.P3000872256019730960

/-! ## A075799.P2987092445617947146

`filter[A071251(n+1), A359764(#)]`
-/

namespace A075799.P2987092445617947146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A075799.P2987092445617947146

/-! ## A075799.P1227492951842181400

`filter[A071251(n+1), A359787(#)]`
-/

namespace A075799.P1227492951842181400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359787 (f1 j).toNat = 1) n)

end

end A075799.P1227492951842181400

/-! ## A075799.P11538445925565982733

`filter[A071251(n+1), A374471(#)]`
-/

namespace A075799.P11538445925565982733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374471 (f1 j).toNat = 1) n)

end

end A075799.P11538445925565982733

/-! ## A075799.P5705993174867696269

`∩[A005117(n+1), A046338(n+1)]`
-/

namespace A075799.P5705993174867696269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075799.P5705993174867696269

/-! ## A075799.P777728379758158609

`filter[A071251(n+1), A065043(#)]`
-/

namespace A075799.P777728379758158609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A075799.P777728379758158609

/-! ## A075799.P9736069147679821145

`filter[A046338(n+1), A323154(#)]`
-/

namespace A075799.P9736069147679821145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A075799.P9736069147679821145

/-! ## A075799.P14090483578371558795

`filter[A032350(n+1), A353629(#)]`
-/

namespace A075799.P14090483578371558795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353629 (f1 j).toNat = 1) n)

end

end A075799.P14090483578371558795

/-! ## A075799.P9888126160221616601

`filter[A046338(n+1), A353629(#)]`
-/

namespace A075799.P9888126160221616601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353629 (f1 j).toNat = 1) n)

end

end A075799.P9888126160221616601

/-! ## A075799.P6519489873324880339

`filter[A071251(n+1), A353629(#)]`
-/

namespace A075799.P6519489873324880339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353629 (f1 j).toNat = 1) n)

end

end A075799.P6519489873324880339

/-! ## A075799.P17909620181888285213

`filter[A071251(n+1), A369255(#)]`
-/

namespace A075799.P17909620181888285213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369255 (f1 j).toNat = 1) n)

end

end A075799.P17909620181888285213

