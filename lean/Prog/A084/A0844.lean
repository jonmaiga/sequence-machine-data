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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A084400: a(1) = 1; for n>1, a(n) = smallest number that does not divide the product of all previous terms.

The programs for A084400, the canonical program `A084400.P13046145720619798035` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084400 has offset 1).

The definition of A084400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084400.P7509064150398853075

`∪[A008578(n+1), A050376(n+1)]`
-/

namespace A084400.P7509064150398853075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A084400.P7509064150398853075

namespace A084400

/-- `∪[A008578(n+1), A050376(n+1)]` -/
def P7509064150398853075.Spec : Prop :=
  ∀ n, (P7509064150398853075.a n : ℤ) = A084400 (n + 1)

end A084400

/-! ## A084400.P17992357347191855089

`A050376(abs(1-n)+1)%A050376(n+1)`
-/

namespace A084400.P17992357347191855089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050376 (|1 - (n : ℤ)| + 1).toNat) (A050376 (n + 1))

end

end A084400.P17992357347191855089

namespace A084400

/-- `A050376(abs(1-n)+1)%A050376(n+1)` -/
def P17992357347191855089.Spec : Prop :=
  ∀ n, P17992357347191855089.a n = A084400 (n + 1)

end A084400

/-! ## A084400.P9399768860698377099

`A050376(A028310(n))-A000007(n)`
-/

namespace A084400.P9399768860698377099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (A028310 n).toNat - A000007 n

end

end A084400.P9399768860698377099

namespace A084400

/-- `A050376(A028310(n))-A000007(n)` -/
def P9399768860698377099.Spec : Prop :=
  ∀ n, P9399768860698377099.a n = A084400 (n + 1)

end A084400

/-! ## A084400.P6958010490909854640

`filter[A000961(n+1), A355823(#)]`
-/

namespace A084400.P6958010490909854640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A084400.P6958010490909854640

namespace A084400

/-- `filter[A000961(n+1), A355823(#)]` -/
def P6958010490909854640.Spec : Prop :=
  ∀ n, P6958010490909854640.a n = A084400 (n + 1)

end A084400

/-! ## A084400.P6201113596253765450

`filter[A164336(n+1), A355823(#)]`
-/

namespace A084400.P6201113596253765450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A084400.P6201113596253765450

namespace A084400

/-- `filter[A164336(n+1), A355823(#)]` -/
def P6201113596253765450.Spec : Prop :=
  ∀ n, P6201113596253765450.a n = A084400 (n + 1)

end A084400

/-! ## A084400.P2797297429758610701

`∪[record[A006530(n+1)], A050376(n+1)]`
-/

namespace A084400.P2797297429758610701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A084400.P2797297429758610701

namespace A084400

/-- `∪[record[A006530(n+1)], A050376(n+1)]` -/
def P2797297429758610701.Spec : Prop :=
  ∀ n, (P2797297429758610701.a n : ℤ) = A084400 (n + 1)

end A084400

/-! ## A084400.P7678051650802423323

`∩[A164336(n+1), A222030(n)]`
-/

namespace A084400.P7678051650802423323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084400.P7678051650802423323

namespace A084400

/-- `∩[A164336(n+1), A222030(n)]` -/
def P7678051650802423323.Spec : Prop :=
  ∀ n, (P7678051650802423323.a n : ℤ) = A084400 (n + 1)

end A084400

/-! ## A084400.P13046145720619798035

`record[n*A302777(n+1)+1]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A084400

/-- `record[n*A302777(n+1)+1]` -/
def P13046145720619798035.Spec : Prop :=
  ∀ n, P13046145720619798035.a n = A084400 (n + 1)

theorem P13046145720619798035.correct : P13046145720619798035.Spec := by
  intro n
  simp only [A084400, Nat.add_sub_cancel]

end A084400

/-! ## A084400.P10209467821982487645

`record[2-A302792(n+1)+n]`
-/

namespace A084400.P10209467821982487645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A302792 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084400.P10209467821982487645

namespace A084400

/-- `record[2-A302792(n+1)+n]` -/
def P10209467821982487645.Spec : Prop :=
  ∀ n, P10209467821982487645.a n = A084400 (n + 1)

end A084400

/-! ## A084400.P7848594327223131040

`record[(n+1)/A340088(n+1)]`
-/

namespace A084400.P7848594327223131040
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A340088 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084400.P7848594327223131040

namespace A084400

/-- `record[(n+1)/A340088(n+1)]` -/
def P7848594327223131040.Spec : Prop :=
  ∀ n, P7848594327223131040.a n = (A084400 (n + 1) : ℚ)

end A084400

/-! ## A084400.P11107038991991102569

`record[(n+1)/A289272(A322823(n+1))]`
-/

namespace A084400.P11107038991991102569
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A289272 (A322823 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084400.P11107038991991102569

namespace A084400

/-- `record[(n+1)/A289272(A322823(n+1))]` -/
def P11107038991991102569.Spec : Prop :=
  ∀ n, P11107038991991102569.a n = (A084400 (n + 1) : ℚ)

end A084400

/-! ## A084400.P1533109426762487878

`record[A300840(n+1)]`
-/

namespace A084400.P1533109426762487878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084400.P1533109426762487878

namespace A084400

/-- `record[A300840(n+1)]` -/
def P1533109426762487878.Spec : Prop :=
  ∀ n, P1533109426762487878.a n = A084400 (n + 1)

end A084400

/-! ## A084400.P10749150453972363700

`A300840(A050376(n+1))`
-/

namespace A084400.P10749150453972363700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300840 (A050376 (n + 1)).toNat

end

end A084400.P10749150453972363700

namespace A084400

/-- `A300840(A050376(n+1))` -/
def P10749150453972363700.Spec : Prop :=
  ∀ n, P10749150453972363700.a n = A084400 (n + 1)

end A084400

/-! ## A084400.P12369311258908868025

`eq[1, A302776(n+1)]+1`
-/

namespace A084400.P12369311258908868025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302776 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084400.P12369311258908868025

namespace A084400

/-- `eq[1, A302776(n+1)]+1` -/
def P12369311258908868025.Spec : Prop :=
  ∀ n, (P12369311258908868025.a n : ℤ) = A084400 (n + 1)

end A084400

/-! ## A084400.P1497443171107212810

`eq[1, A302788(n+1)]+1`
-/

namespace A084400.P1497443171107212810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302788 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084400.P1497443171107212810

namespace A084400

/-- `eq[1, A302788(n+1)]+1` -/
def P1497443171107212810.Spec : Prop :=
  ∀ n, (P1497443171107212810.a n : ℤ) = A084400 (n + 1)

end A084400

/-! ## A084400.P8729108716033650860

`eq[1, A302789(n+1)]+1`
-/

namespace A084400.P8729108716033650860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302789 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084400.P8729108716033650860

namespace A084400

/-- `eq[1, A302789(n+1)]+1` -/
def P8729108716033650860.Spec : Prop :=
  ∀ n, (P8729108716033650860.a n : ℤ) = A084400 (n + 1)

end A084400

/-! ## A084400.P1173158987546135689

`eq[1, A302792(n+1)]+1`
-/

namespace A084400.P1173158987546135689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084400.P1173158987546135689

namespace A084400

/-- `eq[1, A302792(n+1)]+1` -/
def P1173158987546135689.Spec : Prop :=
  ∀ n, (P1173158987546135689.a n : ℤ) = A084400 (n + 1)

end A084400

/-! ## A084400.P1364464913307601474

`eq[1, A340088(n+1)]+1`
-/

namespace A084400.P1364464913307601474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084400.P1364464913307601474

namespace A084400

/-- `eq[1, A340088(n+1)]+1` -/
def P1364464913307601474.Spec : Prop :=
  ∀ n, (P1364464913307601474.a n : ℤ) = A084400 (n + 1)

end A084400

/-! ## A084400.P14589882848549102340

`lt[A318306(n+1), 2]+1`
-/

namespace A084400.P14589882848549102340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318306 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A084400.P14589882848549102340

namespace A084400

/-- `lt[A318306(n+1), 2]+1` -/
def P14589882848549102340.Spec : Prop :=
  ∀ n, (P14589882848549102340.a n : ℤ) = A084400 (n + 1)

end A084400

/-! ## A084400.P4847997815214514251

`lt[A340089(n+1), 2]+1`
-/

namespace A084400.P4847997815214514251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340089 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A084400.P4847997815214514251

namespace A084400

/-- `lt[A340089(n+1), 2]+1` -/
def P4847997815214514251.Spec : Prop :=
  ∀ n, (P4847997815214514251.a n : ℤ) = A084400 (n + 1)

end A084400

/-!
# A084401: n-th partial product + 1 is a prime, where a(n)>1 for n>1.

The programs for A084401, there is no canonical definition to state claims against.
-/

/-! ## A084401.P2402680014749048086

`A036012(A028310(n))-A000007(n)`
-/

namespace A084401.P2402680014749048086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036012 (A028310 n).toNat - A000007 n

end

end A084401.P2402680014749048086

/-! ## A084401.P10301477847050630768

`A036012(A028310(n))/A054977(n)`
-/

namespace A084401.P10301477847050630768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036012 (A028310 n).toNat : ℚ) / (A054977 n : ℚ)

end

end A084401.P10301477847050630768

/-! ## A084401.P18218500922263597714

`A036012(A233583(n+1))-A000007(n)`
-/

namespace A084401.P18218500922263597714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036012 (A233583 (n + 1)).toNat - A000007 n

end

end A084401.P18218500922263597714

/-! ## A084401.P16337206115146562578

`A036012(A233583(n+1))/A054977(n)`
-/

namespace A084401.P16337206115146562578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036012 (A233583 (n + 1)).toNat : ℚ) / (A054977 n : ℚ)

end

end A084401.P16337206115146562578

/-! ## A084401.P9332238886243938431

`A036012(A000007(n)+n)-A000007(n)`
-/

namespace A084401.P9332238886243938431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036012 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A084401.P9332238886243938431

/-! ## A084401.P11483102118542596835

`A036012(or(n, A000007(n)))-A000007(n)`
-/

namespace A084401.P11483102118542596835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036012 (Int.lor (n : ℤ) (A000007 n)).toNat - A000007 n

end

end A084401.P11483102118542596835

/-! ## A084401.P5487348867522509254

`A036012(or(n, 2-A040001(n)))/A000038(n)!`
-/

namespace A084401.P5487348867522509254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036012 (Int.lor (n : ℤ) (2 - A040001 n)).toNat : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A084401.P5487348867522509254

/-! ## A084401.P13568922974574086845

`A036012(or(n, 2-A040001(n)))-A006093(n+1)%2`
-/

namespace A084401.P13568922974574086845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036012 (Int.lor (n : ℤ) (2 - A040001 n)).toNat - Int.tmod (A006093 (n + 1)) 2

end

end A084401.P13568922974574086845

/-! ## A084401.P3094877888807268951

`A036012(A233583(n+1))-A008683(A008574(n))`
-/

namespace A084401.P3094877888807268951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036012 (A233583 (n + 1)).toNat - A008683 (A008574 n).toNat

end

end A084401.P3094877888807268951

/-! ## A084401.P18156729381127261453

`round(ratio[A057999(A028310(n)-1)])`
-/

namespace A084401.P18156729381127261453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057999 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A084401.P18156729381127261453

/-!
# A084402: n-th partial product - 1 is a prime, where a(n) > 1.

The programs for A084402, there is no canonical definition to state claims against.
-/

/-! ## A084402.P15842359540341287867

`A036013(A178915(n+1))`
-/

namespace A084402.P15842359540341287867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036013 (A178915 (n + 1)).toNat

end

end A084402.P15842359540341287867

/-! ## A084402.P15278705144828559094

`xor(A036013(n+1), A154281(n+1))`
-/

namespace A084402.P15278705144828559094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036013 (n + 1)) (A154281 (n + 1))

end

end A084402.P15278705144828559094

/-! ## A084402.P7485807829137303161

`xor(A001616(n+1)%2, A036013(n+1))`
-/

namespace A084402.P7485807829137303161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A001616 (n + 1)) 2) (A036013 (n + 1))

end

end A084402.P7485807829137303161

/-! ## A084402.P14702577183580102274

`A143259(A133263(n))+A036013(n+1)`
-/

namespace A084402.P14702577183580102274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143259 (A133263 n).toNat + A036013 (n + 1)

end

end A084402.P14702577183580102274

/-! ## A084402.P15117755484113140508

`xor(A036013(n+1), A036987(A000124(n)))`
-/

namespace A084402.P15117755484113140508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036013 (n + 1)) (A036987 (A000124 n).toNat)

end

end A084402.P15117755484113140508

/-! ## A084402.P14394514504136235958

`xor(A036013(n+1), A036987(A055999(n)))`
-/

namespace A084402.P14394514504136235958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036013 (n + 1)) (A036987 (A055999 n).toNat)

end

end A084402.P14394514504136235958

/-! ## A084402.P7439041255410145488

`xor(A036013(n+1), A048298(A008795(n)))`
-/

namespace A084402.P7439041255410145488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036013 (n + 1)) (A048298 (A008795 n).toNat)

end

end A084402.P7439041255410145488

/-! ## A084402.P3547586477857794390

`xor(A036013(n+1), A143259(A027689(n)))`
-/

namespace A084402.P3547586477857794390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036013 (n + 1)) (A143259 (A027689 n).toNat)

end

end A084402.P3547586477857794390

/-!
# A084403: Primes arising in A084402. a(n) = n-th partial product of A084402 - 1.

The programs for A084403, there is no canonical definition to state claims against.
-/

/-! ## A084403.P7746496308537269336

`A084717(n+1)-1`
-/

namespace A084403.P7746496308537269336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084717 (n + 1) - 1

end

end A084403.P7746496308537269336

/-! ## A084403.P13319373527967006702

`∏[A084402(n+1)]-1`
-/

namespace A084403.P13319373527967006702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A084403.P13319373527967006702

/-! ## A084403.P8747888272902802080

`A166926(n)+A058000(n+1)`
-/

namespace A084403.P8747888272902802080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n + A058000 (n + 1)

end

end A084403.P8747888272902802080

/-! ## A084403.P13403923779482919968

`∏[A036013(A178915(n+1))]-1`
-/

namespace A084403.P13403923779482919968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036013 (A178915 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A084403.P13403923779482919968

/-! ## A084403.P13303059555013875682

`A260196(n+2)+A084717(n+1)`
-/

namespace A084403.P13303059555013875682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A084717 (n + 1)

end

end A084403.P13303059555013875682

/-!
# A084405: Primes whose sum of factorials of digits is also prime.

The programs for A084405, there is no canonical definition to state claims against.
-/

/-! ## A084405.P16800865650763744554

`p?[A165451(n+1)]`
-/

namespace A084405.P16800865650763744554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084405.P16800865650763744554

/-! ## A084405.P17188241557617869871

`p?[record[A165451(A051340(n))]]`
-/

namespace A084405.P17188241557617869871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165451 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084405.P17188241557617869871

/-! ## A084405.P4078643749305492666

`p?[record[A165451(A052938(n))]]`
-/

namespace A084405.P4078643749305492666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165451 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084405.P4078643749305492666

/-! ## A084405.P7004255518577073309

`p?[record[A165451(A328396(n))]]`
-/

namespace A084405.P7004255518577073309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165451 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084405.P7004255518577073309

/-! ## A084405.P10425871398502843908

`record[A020639(A165451(n+2))]`
-/

namespace A084405.P10425871398502843908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A165451 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084405.P10425871398502843908

/-!
# A084407: Number of decimal places to which the n-th convergent of continued fraction expansion of Pi matches with the correct value.

The programs for A084407, there is no canonical definition to state claims against.
-/

/-! ## A084407.P12643538289523801044

`A356665(n+2)-1`
-/

namespace A084407.P12643538289523801044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356665 (n + 2) - 1

end

end A084407.P12643538289523801044

/-! ## A084407.P10856943121931004129

`A359779(A341676(n+1))+A356665(n+2)`
-/

namespace A084407.P10856943121931004129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359779 (A341676 (n + 1)).toNat + A356665 (n + 2)

end

end A084407.P10856943121931004129

/-! ## A084407.P9880765252350562576

`A023443(A356665(n+2))`
-/

namespace A084407.P9880765252350562576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A356665 (n + 2)).toNat

end

end A084407.P9880765252350562576

/-! ## A084407.P10072647790659790622

`A359779(A000040(n+1))+A356665(n+2)`
-/

namespace A084407.P10072647790659790622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359779 (A000040 (n + 1)).toNat + A356665 (n + 2)

end

end A084407.P10072647790659790622

/-! ## A084407.P15232723375039704385

`A359779(A163169(3*(n+1)))+A356665(n+2)`
-/

namespace A084407.P15232723375039704385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359779 (A163169 (3 * (n + 1))).toNat + A356665 (n + 2)

end

end A084407.P15232723375039704385

/-! ## A084407.P1788388707858118164

`A359779(A001097(n+1))+A356665(n+2)`
-/

namespace A084407.P1788388707858118164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359779 (A001097 (n + 1)).toNat + A356665 (n + 2)

end

end A084407.P1788388707858118164

/-!
# A084408: Triangle read by rows: if n is prime, row n contains the n smallest primes not already used; if n is composite, row n contains the n smallest composite numbers not already used. A permutation of the positive integers.

The programs for A084408, there is no canonical definition to state claims against.
-/

/-! ## A084408.P1940657743876839292

`A026239(A085049(n+1))`
-/

namespace A084408.P1940657743876839292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A085049 (n + 1)).toNat

end

end A084408.P1940657743876839292

/-! ## A084408.P3389513437158067485

`A181095(A083197(n+1))`
-/

namespace A084408.P3389513437158067485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181095 (A083197 (n + 1)).toNat

end

end A084408.P3389513437158067485

/-! ## A084408.P887347698312540679

`A184955(A187829(n+1))+A097858(n)`
-/

namespace A084408.P887347698312540679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A187829 (n + 1)).toNat + A097858 n

end

end A084408.P887347698312540679

/-!
# A084409: Main diagonal of triangle A084408.

The programs for A084409, there is no canonical definition to state claims against.
-/

/-! ## A084409.P15513085628832478752

`A084408(∑[n+1])`
-/

namespace A084409.P15513085628832478752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084408 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084409.P15513085628832478752

/-! ## A084409.P9909661024685359029

`and(-1, A084408(C(n+2, 2)))`
-/

namespace A084409.P9909661024685359029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A084408 (Nat.choose (n + 2) 2))

end

end A084409.P9909661024685359029

/-! ## A084409.P5643574783085185579

`Δ[A084408(C(n+1, 2))+a(n-1)]` with `a(0)=0`
-/

namespace A084409.P5643574783085185579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A084408 (Nat.choose (n + 1) 2) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084409.P5643574783085185579

/-! ## A084409.P14027219685277659873

`or(char[1], A084408(A000217(n+1)))`
-/

namespace A084409.P14027219685277659873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A084408 (A000217 (n + 1)).toNat)

end

end A084409.P14027219685277659873

/-! ## A084409.P14756910102358496304

`A033999(n)²*A084408(C(n+2, 2))`
-/

namespace A084409.P14756910102358496304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A084408 (Nat.choose (n + 2) 2)

end

end A084409.P14756910102358496304

/-! ## A084409.P461734869390766328

`A084408(C(n+2, 2))%A000045(n+5)`
-/

namespace A084409.P461734869390766328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084408 (Nat.choose (n + 2) 2)) (A000045 (n + 5))

end

end A084409.P461734869390766328

/-! ## A084409.P14657455013346797332

`lcm((-1)^A000005(n+1), A084408(C(n+2, 2)))`
-/

namespace A084409.P14657455013346797332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A000005 (n + 1) : ℤ))) (A084408 (Nat.choose (n + 2) 2))

end

end A084409.P14657455013346797332

/-! ## A084409.P8943201206482408298

`A084408(C(n+2, 2))-A000010((n+1)²)%(n+1)`
-/

namespace A084409.P8943201206482408298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084408 (Nat.choose (n + 2) 2) - Int.tmod (A000010 ((n + 1) ^ 2)) (n + 1 : ℤ)

end

end A084409.P8943201206482408298

/-! ## A084409.P12695086582641318682

`A084408(A000217(n+1))+A001222(gcd(n, n+1))`
-/

namespace A084409.P12695086582641318682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084408 (A000217 (n + 1)).toNat + A001222 (Nat.gcd n (n + 1))

end

end A084409.P12695086582641318682

/-!
# A084410: First column of triangle A084408.

The programs for A084410, there is no canonical definition to state claims against.
-/

/-! ## A084410.P1150150544706847988

`A084408(∑[n]+1)`
-/

namespace A084410.P1150150544706847988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084408 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A084410.P1150150544706847988

/-! ## A084410.P3236787262917362811

`A084408(abs(C(n+2, 2)-n))%(floor(((n+3)/2)²)^3)`
-/

namespace A084410.P3236787262917362811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084408 |(Nat.choose (n + 2) 2 : ℤ) - (n : ℤ)|.toNat) (⌊((n + 3 : ℚ) / 2) ^ 2⌋ ^ 3)

end

end A084410.P3236787262917362811

/-! ## A084410.P9961032186473814670

`A084408(Δ[C(n+1, 3)+n])%(floor(((n+3)/2)²)^3)`
-/

namespace A084410.P9961032186473814670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084408 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (⌊((n + 3 : ℚ) / 2) ^ 2⌋ ^ 3)

end

end A084410.P9961032186473814670

/-! ## A084410.P13451576469813807577

`or(char[2], A084408(A000124(n)))`
-/

namespace A084410.P13451576469813807577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A084408 (A000124 n).toNat)

end

end A084410.P13451576469813807577

/-! ## A084410.P16872683487599547874

`gcd(A000038(n), A084408(A000124(n)))`
-/

namespace A084410.P16872683487599547874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A084408 (A000124 n).toNat)

end

end A084410.P16872683487599547874

/-! ## A084410.P16168806869231179972

`A007318(∑[n])*A084408(A000124(n))`
-/

namespace A084410.P16168806869231179972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A084408 (A000124 n).toNat

end

end A084410.P16168806869231179972

/-! ## A084410.P1171632330429923798

`A084408(A000124(n))%A000041(n+5)`
-/

namespace A084410.P1171632330429923798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084408 (A000124 n).toNat) (A000041 (n + 5))

end

end A084410.P1171632330429923798

/-! ## A084410.P189540886367490775

`A084408(A000124(n))^A014963(2*A000040(n+1))`
-/

namespace A084410.P189540886367490775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084408 (A000124 n).toNat : ℚ) ^ (A014963 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A084410.P189540886367490775

/-!
# A084411: Row sums of triangle A084408.

The programs for A084411, there is no canonical definition to state claims against.
-/

/-! ## A084411.P1898802752556690366

`or(n, A019276(∑{d}[∑{d}[n+1, #], #]))`
-/

namespace A084411.P1898802752556690366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A019276 (∑ d ∈ Nat.divisors (f1 n), d))

end

end A084411.P1898802752556690366

/-!
# A084412: Least palindromic prime that strictly encloses the n-th palindromic prime, or 0 if no such prime exists.

The programs for A084412, there is no canonical definition to state claims against.
-/

/-! ## A084412.P926258291015502758

`A087364(A052480(n))`
-/

namespace A084412.P926258291015502758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087364 (A052480 n).toNat

end

end A084412.P926258291015502758

/-!
# A084416: Triangle read by rows: T(n,k) = Sum_{i=k..n} i!*Stirling2(n,i), n >= 1, 1 <= k <= n.

The programs for A084416, there is no canonical definition to state claims against.
-/

/-! ## A084416.P5743035901092531329

`A084417(∑[char[∑[n]]]²-n)`
-/

namespace A084416.P5743035901092531329
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084417 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A084416.P5743035901092531329

/-! ## A084416.P16731549408450378754

`A084417(A038722(n+1))^ceil(sin(n)²)`
-/

namespace A084416.P16731549408450378754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084417 (A038722 (n + 1)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A084416.P16731549408450378754

/-! ## A084416.P7694931903322058044

`lcm(A020985(n), A084417(A038722(n+1)))`
-/

namespace A084416.P7694931903322058044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A084417 (A038722 (n + 1)).toNat)

end

end A084416.P7694931903322058044

/-!
# A084417: Triangle read by rows: T(n,k) = Sum_{i=1..k} (n+1-i)! * Stirling2(n,n+1-i), n>=1, 1<=k<=n.

The programs for A084417, there is no canonical definition to state claims against.
-/

/-! ## A084417.P15788761559682938108

`A084416(∑[char[∑[n]]]²-n)`
-/

namespace A084417.P15788761559682938108
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084416 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A084417.P15788761559682938108

/-! ## A084417.P8357294408788877484

`A084416(A038722(n+1))^ceil(acot(n))`
-/

namespace A084417.P8357294408788877484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084416 (A038722 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A084417.P8357294408788877484

/-! ## A084417.P17062615257459551922

`A084416(A038722(n+1))+A010051(2*(n+2))`
-/

namespace A084417.P17062615257459551922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084416 (A038722 (n + 1)).toNat + A010051 (2 * (n + 2))

end

end A084417.P17062615257459551922

/-! ## A084417.P17697623760914509715

`A121262(A077681(n+1))+A084416(A038722(n+1))`
-/

namespace A084417.P17697623760914509715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A077681 (n + 1)).toNat + A084416 (A038722 (n + 1)).toNat

end

end A084417.P17697623760914509715

/-! ## A084417.P12980574594659836993

`A121262(A001969(2*(n+2)))+A084416(A038722(n+1))`
-/

namespace A084417.P12980574594659836993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A001969 (2 * (n + 2))).toNat + A084416 (A038722 (n + 1)).toNat

end

end A084417.P12980574594659836993

/-! ## A084417.P2938089922356045271

`A084416(A093995(n+1)-n)%A072537(n+1)`
-/

namespace A084417.P2938089922356045271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084416 (A093995 (n + 1) - (n : ℤ)).toNat) (A072537 (n + 1))

end

end A084417.P2938089922356045271

/-!
# A084418: Numbers n with property that n sets a new record for number of ways to write n as the sum of a brilliant number and a prime.

The programs for A084418, there is no canonical definition to state claims against.
-/

/-! ## A084418.P2881744011992378647

`A244489(A325617(n))+and(3*n+2, -3)`
-/

namespace A084418.P2881744011992378647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244489 (A325617 n).toNat + Int.land (3 * n + 2 : ℤ) (-3)

end

end A084418.P2881744011992378647

/-! ## A084418.P15744909343308440630

`∑[A002858(6*n+5)%A320447(n+1)]`
-/

namespace A084418.P15744909343308440630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002858 (6 * n + 5)) (A320447 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084418.P15744909343308440630

/-!
# A084419: a(n) = number of primes that can be formed by adding 1 to the product of any subset of the divisors of n.

The programs for A084419, there is no canonical definition to state claims against.
-/

/-! ## A084419.P4858043802950478552

`A070939(C(n+2, A046094(n+4)))`
-/

namespace A084419.P4858043802950478552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Nat.choose (n + 2) (A046094 (n + 4)).toNat)

end

end A084419.P4858043802950478552

/-! ## A084419.P12031703705834086549

`gcd(A134452(n+3), A286001(A241909(n+1)))`
-/

namespace A084419.P12031703705834086549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134452 (n + 3)) (A286001 (A241909 (n + 1)).toNat)

end

end A084419.P12031703705834086549

/-! ## A084419.P66989442861010703

`A000005(lt[A000005(n+1)%4, 1]^val(n+1, 2))`
-/

namespace A084419.P66989442861010703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1)) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A084419.P66989442861010703

/-! ## A084419.P10505692954501902269

`∏{e}[(A075255(n+1)-A000040(n+1))^val(n+1, 2), #+1]`
-/

namespace A084419.P10505692954501902269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075255 (n + 1) - A000040 (n + 1)) ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A084419.P10505692954501902269

/-! ## A084419.P3639128586039492736

`A000005(A007078(n+1)^A007814(n+1))`
-/

namespace A084419.P3639128586039492736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A007078 (n + 1) : ℚ) ^ (A007814 (n + 1) : ℤ))).toNat

end

end A084419.P3639128586039492736

/-!
# A084421: a(n) = A005187(A000040(n)).

The programs for A084421, the canonical program `A084421.P15852507782448595974` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084421 has offset 1).

The definition of A084421 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A005187(A000040(n+1))` (program `A084421.P15852507782448595974`, by `A084421.P15852507782448595974.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084421.P15852507782448595974

`A005187(A000040(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A084421

/-- `A005187(A000040(n+1))` -/
def P15852507782448595974.Spec : Prop :=
  ∀ n, P15852507782448595974.a n = A084421 (n + 1)

theorem P15852507782448595974.correct : P15852507782448595974.Spec := by
  intro n
  simp only [A084421, Nat.add_sub_cancel]

end A084421

/-! ## A084421.P6776314239124668149

`A080085(n+1)+Δ[A007504(n)]`
-/

namespace A084421.P6776314239124668149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080085 (n + 1) + (f1 (n + 1) - f1 n)

end

end A084421.P6776314239124668149

namespace A084421

/-- `A080085(n+1)+Δ[A007504(n)]` -/
def P6776314239124668149.Spec : Prop :=
  ∀ n, P6776314239124668149.a n = A084421 (n + 1)

end A084421

/-! ## A084421.P15364887140409611337

`A080085(n+1)+A000040(n+1)`
-/

namespace A084421.P15364887140409611337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080085 (n + 1) + A000040 (n + 1)

end

end A084421.P15364887140409611337

namespace A084421

/-- `A080085(n+1)+A000040(n+1)` -/
def P15364887140409611337.Spec : Prop :=
  ∀ n, P15364887140409611337.a n = A084421 (n + 1)

end A084421

/-! ## A084421.P3058923806678514761

`A100484(n+1)-A014499(n+1)`
-/

namespace A084421.P3058923806678514761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A014499 (n + 1)

end

end A084421.P3058923806678514761

namespace A084421

/-- `A100484(n+1)-A014499(n+1)` -/
def P3058923806678514761.Spec : Prop :=
  ∀ n, P3058923806678514761.a n = A084421 (n + 1)

end A084421

/-! ## A084421.P10320413644637560215

`A014499(n+1)+2*A080085(n+1)`
-/

namespace A084421.P10320413644637560215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (n + 1) + 2 * A080085 (n + 1)

end

end A084421.P10320413644637560215

namespace A084421

/-- `A014499(n+1)+2*A080085(n+1)` -/
def P10320413644637560215.Spec : Prop :=
  ∀ n, P10320413644637560215.a n = A084421 (n + 1)

end A084421

/-! ## A084421.P3383364949336895762

`2*A000040(n+1)-A014499(n+1)`
-/

namespace A084421.P3383364949336895762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A014499 (n + 1)

end

end A084421.P3383364949336895762

namespace A084421

/-- `2*A000040(n+1)-A014499(n+1)` -/
def P3383364949336895762.Spec : Prop :=
  ∀ n, P3383364949336895762.a n = A084421 (n + 1)

end A084421

/-! ## A084421.P694282792882956362

`A005187(p?[abs(xor(n, -2))])`
-/

namespace A084421.P694282792882956362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A084421.P694282792882956362

namespace A084421

/-- `A005187(p?[abs(xor(n, -2))])` -/
def P694282792882956362.Spec : Prop :=
  ∀ n, P694282792882956362.a n = A084421 (n + 1)

end A084421

/-! ## A084421.P6798239200615746771

`A005187(p?[xor(1, n)+1])`
-/

namespace A084421.P6798239200615746771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A084421.P6798239200615746771

namespace A084421

/-- `A005187(p?[xor(1, n)+1])` -/
def P6798239200615746771.Spec : Prop :=
  ∀ n, P6798239200615746771.a n = A084421 (n + 1)

end A084421

/-! ## A084421.P5537470697343804541

`A005187(p?[n%3+n])`
-/

namespace A084421.P5537470697343804541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A084421.P5537470697343804541

namespace A084421

/-- `A005187(p?[n%3+n])` -/
def P5537470697343804541.Spec : Prop :=
  ∀ n, P5537470697343804541.a n = A084421 (n + 1)

end A084421

/-! ## A084421.P11244065603224676561

`A005187(p?[round(sqrt(n)+n)])`
-/

namespace A084421.P11244065603224676561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A084421.P11244065603224676561

namespace A084421

/-- `A005187(p?[round(sqrt(n)+n)])` -/
def P11244065603224676561.Spec : Prop :=
  ∀ n, P11244065603224676561.a n = A084421 (n + 1)

end A084421

/-! ## A084421.P3901888933728514742

`A005187(root(p?[round(8*n/7)]², 2))`
-/

namespace A084421.P3901888933728514742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A084421.P3901888933728514742

namespace A084421

/-- `A005187(root(p?[round(8*n/7)]², 2))` -/
def P3901888933728514742.Spec : Prop :=
  ∀ n, P3901888933728514742.a n = A084421 (n + 1)

end A084421

/-! ## A084421.P4759628501660762085

`A005187(A008578(n+2))`
-/

namespace A084421.P4759628501660762085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A008578 (n + 2)).toNat

end

end A084421.P4759628501660762085

namespace A084421

/-- `A005187(A008578(n+2))` -/
def P4759628501660762085.Spec : Prop :=
  ∀ n, P4759628501660762085.a n = A084421 (n + 1)

end A084421

/-! ## A084421.P15103248349540356170

`A005187(A182986(n+2))`
-/

namespace A084421.P15103248349540356170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A182986 (n + 2)).toNat

end

end A084421.P15103248349540356170

namespace A084421

/-- `A005187(A182986(n+2))` -/
def P15103248349540356170.Spec : Prop :=
  ∀ n, P15103248349540356170.a n = A084421 (n + 1)

end A084421

/-! ## A084421.P1084443017404181266

`A005187(record[A006530(n+2)])`
-/

namespace A084421.P1084443017404181266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A084421.P1084443017404181266

namespace A084421

/-- `A005187(record[A006530(n+2)])` -/
def P1084443017404181266.Spec : Prop :=
  ∀ n, P1084443017404181266.a n = A084421 (n + 1)

end A084421

/-! ## A084421.P8459657406397136175

`A005187(A014692(n+1)+n)`
-/

namespace A084421.P8459657406397136175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A014692 (n + 1) + (n : ℤ)).toNat

end

end A084421.P8459657406397136175

namespace A084421

/-- `A005187(A014692(n+1)+n)` -/
def P8459657406397136175.Spec : Prop :=
  ∀ n, P8459657406397136175.a n = A084421 (n + 1)

theorem P8459657406397136175.correct : P8459657406397136175.Spec := by
  intro n
  simp only [A084421, Nat.add_sub_cancel, A084421.P8459657406397136175.a, A084421.P15852507782448595974.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005187, A005187.P3874015513960485494.a, A014692, A014692.P2004927767556050134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084421

/-! ## A084421.P9674405825454844935

`record[A297117(n+2)+A006530(n+2)]`
-/

namespace A084421.P9674405825454844935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297117 (n + 2) + A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084421.P9674405825454844935

namespace A084421

/-- `record[A297117(n+2)+A006530(n+2)]` -/
def P9674405825454844935.Spec : Prop :=
  ∀ n, P9674405825454844935.a n = A084421 (n + 1)

end A084421

/-! ## A084421.P5826464189302013158

`record[A297117(n+2)+A020639(n+2)]`
-/

namespace A084421.P5826464189302013158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297117 (n + 2) + A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084421.P5826464189302013158

namespace A084421

/-- `record[A297117(n+2)+A020639(n+2)]` -/
def P5826464189302013158.Spec : Prop :=
  ∀ n, P5826464189302013158.a n = A084421 (n + 1)

end A084421

/-! ## A084421.P9839267170503056235

`A078896(2*p?[xor(1, n)+1])`
-/

namespace A084421.P9839267170503056235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078896 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A084421.P9839267170503056235

namespace A084421

/-- `A078896(2*p?[xor(1, n)+1])` -/
def P9839267170503056235.Spec : Prop :=
  ∀ n, P9839267170503056235.a n = A084421 (n + 1)

end A084421

/-! ## A084421.P1878581471088402982

`A078896(2*A000040(n+1))`
-/

namespace A084421.P1878581471088402982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078896 (2 * A000040 (n + 1)).toNat

end

end A084421.P1878581471088402982

namespace A084421

/-- `A078896(2*A000040(n+1))` -/
def P1878581471088402982.Spec : Prop :=
  ∀ n, P1878581471088402982.a n = A084421 (n + 1)

end A084421

/-! ## A084421.P15864171765737813148

`A011371(2*p?[xor(1, n)+1])`
-/

namespace A084421.P15864171765737813148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A084421.P15864171765737813148

namespace A084421

/-- `A011371(2*p?[xor(1, n)+1])` -/
def P15864171765737813148.Spec : Prop :=
  ∀ n, P15864171765737813148.a n = A084421 (n + 1)

end A084421

/-!
# A084422: Number of subsets of integers 1 through n (including the empty set) containing no pair of integers that share a common factor.

The programs for A084422, there is no canonical definition to state claims against.
-/

/-! ## A084422.P15773582656918365497

`A186973(n)+a(n-1)` with `a(0)=1`
-/

namespace A084422.P15773582656918365497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186973 n + a (n - 1)

end

end A084422.P15773582656918365497

/-! ## A084422.P1010668729582870958

`∑[A186973(floor(n-n/(n+1))+1)]`
-/

namespace A084422.P1010668729582870958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186973 (⌊(n : ℚ) - (n : ℚ) / (n + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084422.P1010668729582870958

/-! ## A084422.P13471096118116125459

`A276187(A028310(n))+1+n`
-/

namespace A084422.P13471096118116125459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276187 (A028310 n).toNat + 1 + (n : ℤ)

end

end A084422.P13471096118116125459

/-! ## A084422.P8502610531288335663

`A276187(A123108(2*n))+n+1`
-/

namespace A084422.P8502610531288335663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276187 (A123108 (2 * n)).toNat + (n + 1 : ℤ)

end

end A084422.P8502610531288335663

/-! ## A084422.P16800941344400982383

`A187106(A028310(n))+A001221(A000961(n+1))`
-/

namespace A084422.P16800941344400982383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187106 (A028310 n).toNat + A001221 (A000961 (n + 1)).toNat

end

end A084422.P16800941344400982383

/-! ## A084422.P5024047240042308367

`A187106(n+1)+1-A186973(n+1)`
-/

namespace A084422.P5024047240042308367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187106 (n + 1) + (1 - A186973 (n + 1))

end

end A084422.P5024047240042308367

/-! ## A084422.P6570357569340189913

`A276187(A137734(n²))+n+1`
-/

namespace A084422.P6570357569340189913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276187 (A137734 (n ^ 2)).toNat + (n + 1 : ℤ)

end

end A084422.P6570357569340189913

/-!
# A084423: Set partitions up to rotations.

The programs for A084423, there is no canonical definition to state claims against.
-/

/-! ## A084423.P3695946331890086728

`∑{d}[A028310(n), A276547(#)]`
-/

namespace A084423.P3695946331890086728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A276547 d

end

end A084423.P3695946331890086728

/-! ## A084423.P15632555861459753347

`∑{d}[A065033(2*n), A276547(#)]`
-/

namespace A084423.P15632555861459753347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A276547 d

end

end A084423.P15632555861459753347

/-! ## A084423.P12569351887220687940

`∑{d}[A008619(A004273(n)), A276547(#)]`
-/

namespace A084423.P12569351887220687940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A276547 d

end

end A084423.P12569351887220687940

/-! ## A084423.P10805782471223714826

`A320747((1-n)²+n²)`
-/

namespace A084423.P10805782471223714826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320747 ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A084423.P10805782471223714826

/-! ## A084423.P14879153956038917051

`A320747(A051890(n)-1)+A320742(n+1)`
-/

namespace A084423.P14879153956038917051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320747 (A051890 n - 1).toNat + A320742 (n + 1)

end

end A084423.P14879153956038917051

/-!
# A084424: Odd numbers having odd numbers of prime factors, odd sums of prime factors and odd sums of decimal digits.

The programs for A084424, the canonical program `A084424.P7395927992122097873` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084424 has offset 1).

The definition of A084424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4315 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084424.P7395927992122097873

`∩[A179085(n+1), A381218(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A084424

/-- `∩[A179085(n+1), A381218(n+1)]` -/
def P7395927992122097873.Spec : Prop :=
  ∀ n, (P7395927992122097873.a n : ℤ) = A084424 (n + 1)

theorem P7395927992122097873.correct : P7395927992122097873.Spec := by
  intro n
  simp only [A084424, Nat.add_sub_cancel]

end A084424

/-! ## A084424.P5065253423792468669

`∩[A179085(n+1), A279457(n+1)]`
-/

namespace A084424.P5065253423792468669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084424.P5065253423792468669

namespace A084424

/-- `∩[A179085(n+1), A279457(n+1)]` -/
def P5065253423792468669.Spec : Prop :=
  ∀ n, (P5065253423792468669.a n : ℤ) = A084424 (n + 1)

end A084424

/-! ## A084424.P12056323104836168879

`∩[A054684(n+1), A381218(n+1)]`
-/

namespace A084424.P12056323104836168879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084424.P12056323104836168879

namespace A084424

/-- `∩[A054684(n+1), A381218(n+1)]` -/
def P12056323104836168879.Spec : Prop :=
  ∀ n, (P12056323104836168879.a n : ℤ) = A084424 (n + 1)

end A084424

/-! ## A084424.P9201155248143389254

`filter[A381218(n+1), A179081(#)]`
-/

namespace A084424.P9201155248143389254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179081 (f1 j).toNat = 1) n)

end

end A084424.P9201155248143389254

namespace A084424

/-- `filter[A381218(n+1), A179081(#)]` -/
def P9201155248143389254.Spec : Prop :=
  ∀ n, P9201155248143389254.a n = A084424 (n + 1)

end A084424

/-! ## A084424.P14456577655092831819

`filter[A118761(2*(n+1)), A342460(#)]`
-/

namespace A084424.P14456577655092831819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118761 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342460 (f1 j).toNat = 1) n)

end

end A084424.P14456577655092831819

namespace A084424

/-- `filter[A118761(2*(n+1)), A342460(#)]` -/
def P14456577655092831819.Spec : Prop :=
  ∀ n, P14456577655092831819.a n = A084424 (n + 1)

end A084424

/-!
# A084426: Twice A082082.

The programs for A084426, there is no canonical definition to state claims against.
-/

/-! ## A084426.P3000317980282618537

`2*A082082(n+2)`
-/

namespace A084426.P3000317980282618537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082082 (n + 2)

end

end A084426.P3000317980282618537

/-! ## A084426.P15699720305004698307

`A004277(A082082(n+2))`
-/

namespace A084426.P15699720305004698307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A082082 (n + 2)).toNat

end

end A084426.P15699720305004698307

/-! ## A084426.P11934351705019848541

`A004275(A082082(n+2)+1)`
-/

namespace A084426.P11934351705019848541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A082082 (n + 2) + 1).toNat

end

end A084426.P11934351705019848541

/-! ## A084426.P6567301457770998591

`A005843(A082082(n+2)%(n+2))`
-/

namespace A084426.P6567301457770998591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A082082 (n + 2)) (n + 2 : ℤ)).toNat

end

end A084426.P6567301457770998591

/-! ## A084426.P13461078266341104330

`A000267(A082082(n+2)²)`
-/

namespace A084426.P13461078266341104330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A082082 (n + 2) ^ 2).toNat

end

end A084426.P13461078266341104330

/-! ## A084426.P13982453002900442492

`A001670(A082082(n+2)²)`
-/

namespace A084426.P13982453002900442492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001670 (A082082 (n + 2) ^ 2).toNat

end

end A084426.P13982453002900442492

/-! ## A084426.P4026959457357754877

`A027434(A082082(n+2)²)`
-/

namespace A084426.P4026959457357754877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (A082082 (n + 2) ^ 2).toNat

end

end A084426.P4026959457357754877

/-! ## A084426.P1857848944830476754

`A063655(A082082(n+2)²)`
-/

namespace A084426.P1857848944830476754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A082082 (n + 2) ^ 2).toNat

end

end A084426.P1857848944830476754

/-!
# A084430: Smallest prime with "n^3" as central digit(s).

The programs for A084430, there is no canonical definition to state claims against.
-/

/-! ## A084430.P3549838182224644104

`A084413(n^3)`
-/

namespace A084430.P3549838182224644104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 (n ^ 3)

end

end A084430.P3549838182224644104

/-! ## A084430.P17168386712040521457

`A069691(n^3)`
-/

namespace A084430.P17168386712040521457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069691 (n ^ 3)

end

end A084430.P17168386712040521457

/-! ## A084430.P3470354549085405017

`or(1, A069691(A000578(n)))`
-/

namespace A084430.P3470354549085405017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A069691 (A000578 n).toNat)

end

end A084430.P3470354549085405017

/-! ## A084430.P17729778621580942304

`A230686(n+1)+A069691(A000578(n))`
-/

namespace A084430.P17729778621580942304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230686 (n + 1) + A069691 (A000578 n).toNat

end

end A084430.P17729778621580942304

/-! ## A084430.P8113855285106596734

`A185012(n+3)+A069691(A000578(n))`
-/

namespace A084430.P8113855285106596734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (n + 3) + A069691 (A000578 n).toNat

end

end A084430.P8113855285106596734

/-!
# A084431: Expansion of g.f. (1 + 6*x + 5*x^2)/((1-2*x)*(1+2*x)).

The programs for A084431, the canonical program `A084431.P6506379133463896881` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084431 has offset 0).

The definition of A084431 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+6x+5x^2)/(1-4x^2))` (program `A084431.P6506379133463896881`, by `A084431.P6506379133463896881.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084431.P6506379133463896881

`ogf((1+6x+5x^2)/(1-4x^2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A084431

/-- `ogf((1+6x+5x^2)/(1-4x^2))` -/
def P6506379133463896881.Spec : Prop :=
  ∀ n, P6506379133463896881.a n = A084431 n

theorem P6506379133463896881.correct : P6506379133463896881.Spec := by
  intro n
  simp only [A084431]

end A084431

/-! ## A084431.P6654552660097854578

`4*a(n-2)` with `a(0)=1, a(1)=6, a(2)=9`
-/

namespace A084431.P6654552660097854578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 9] fun n a =>
  4 * a (n - 2)

end

end A084431.P6654552660097854578

namespace A084431

/-- `4*a(n-2)` -/
def P6654552660097854578.Spec : Prop :=
  ∀ n, (P6654552660097854578.a n : ℤ) = A084431 n

end A084431

/-! ## A084431.P6417124801440412515

`or(A029744(n+1)², Δ[or(1, n)]^n)`
-/

namespace A084431.P6417124801440412515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029744 (n + 1) ^ 2) (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ n)

end

end A084431.P6417124801440412515

namespace A084431

/-- `or(A029744(n+1)², Δ[or(1, n)]^n)` -/
def P6417124801440412515.Spec : Prop :=
  ∀ n, P6417124801440412515.a n = A084431 n

end A084431

/-! ## A084431.P9352694334803315147

`A122553(n)*A134683(n)`
-/

namespace A084431.P9352694334803315147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n * A134683 n

end

end A084431.P9352694334803315147

namespace A084431

/-- `A122553(n)*A134683(n)` -/
def P9352694334803315147.Spec : Prop :=
  ∀ n, P9352694334803315147.a n = A084431 n

end A084431

/-! ## A084431.P7747807491164539095

`A061547(n+3)-A061547(n)`
-/

namespace A084431.P7747807491164539095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061547 (n + 3) - A061547 n

end

end A084431.P7747807491164539095

namespace A084431

/-- `A061547(n+3)-A061547(n)` -/
def P7747807491164539095.Spec : Prop :=
  ∀ n, P7747807491164539095.a n = A084431 n

end A084431

/-! ## A084431.P6676376550703006043

`or(A029744(n+1)², A103424(n))`
-/

namespace A084431.P6676376550703006043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029744 (n + 1) ^ 2) (A103424 n)

end

end A084431.P6676376550703006043

namespace A084431

/-- `or(A029744(n+1)², A103424(n))` -/
def P6676376550703006043.Spec : Prop :=
  ∀ n, P6676376550703006043.a n = A084431 n

end A084431

/-! ## A084431.P17310564236143568838

`A029744(or(1, n+1))*A029744(n+1)`
-/

namespace A084431.P17310564236143568838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (Nat.lor 1 (n + 1)) * A029744 (n + 1)

end

end A084431.P17310564236143568838

namespace A084431

/-- `A029744(or(1, n+1))*A029744(n+1)` -/
def P17310564236143568838.Spec : Prop :=
  ∀ n, P17310564236143568838.a n = A084431 n

end A084431

/-! ## A084431.P4574201271984097427

`or(A029744(n+1)², floor(2^A176447(n)))`
-/

namespace A084431.P4574201271984097427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029744 (n + 1) ^ 2) ⌊(2 : ℚ) ^ (A176447 n : ℤ)⌋

end

end A084431.P4574201271984097427

namespace A084431

/-- `or(A029744(n+1)², floor(2^A176447(n)))` -/
def P4574201271984097427.Spec : Prop :=
  ∀ n, P4574201271984097427.a n = A084431 n

end A084431

/-! ## A084431.P12446798009222957134

`A284354(n+1)-A284354(A289207(n+1))`
-/

namespace A084431.P12446798009222957134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284354 (n + 1) - A284354 (A289207 (n + 1)).toNat

end

end A084431.P12446798009222957134

namespace A084431

/-- `A284354(n+1)-A284354(A289207(n+1))` -/
def P12446798009222957134.Spec : Prop :=
  ∀ n, P12446798009222957134.a n = A084431 n

end A084431

/-! ## A084431.P2072431544180724763

`A029744(n+1)*A029744(A000034(n)+n)`
-/

namespace A084431.P2072431544180724763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 1) * A029744 (A000034 n + (n : ℤ)).toNat

end

end A084431.P2072431544180724763

namespace A084431

/-- `A029744(n+1)*A029744(A000034(n)+n)` -/
def P2072431544180724763.Spec : Prop :=
  ∀ n, P2072431544180724763.a n = A084431 n

end A084431

/-! ## A084431.P4298715531142800096

`A029744(n+1)*A029744(A338062(n+1)-n)`
-/

namespace A084431.P4298715531142800096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 1) * A029744 (A338062 (n + 1) - (n : ℤ)).toNat

end

end A084431.P4298715531142800096

namespace A084431

/-- `A029744(n+1)*A029744(A338062(n+1)-n)` -/
def P4298715531142800096.Spec : Prop :=
  ∀ n, P4298715531142800096.a n = A084431 n

end A084431

/-! ## A084431.P14849108834608079306

`A026614(A026614(n+1))/A026614(n+1)*A134683(n)`
-/

namespace A084431.P14849108834608079306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026614 (A026614 (n + 1)).toNat : ℚ) / (A026614 (n + 1) : ℚ) * (A134683 n : ℚ)

end

end A084431.P14849108834608079306

namespace A084431

/-- `A026614(A026614(n+1))/A026614(n+1)*A134683(n)` -/
def P14849108834608079306.Spec : Prop :=
  ∀ n, P14849108834608079306.a n = (A084431 n : ℚ)

end A084431

/-! ## A084431.P12134005654934159382

`∪[A002063(n), A164908(n)]`
-/

namespace A084431.P12134005654934159382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002063 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164908 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A084431.P12134005654934159382

namespace A084431

/-- `∪[A002063(n), A164908(n)]` -/
def P12134005654934159382.Spec : Prop :=
  ∀ n, (P12134005654934159382.a n : ℤ) = A084431 n

end A084431

/-! ## A084431.P10493761981440968672

`∪[A003945(2*n), A003945(n)²]`
-/

namespace A084431.P10493761981440968672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A084431.P10493761981440968672

namespace A084431

/-- `∪[A003945(2*n), A003945(n)²]` -/
def P10493761981440968672.Spec : Prop :=
  ∀ n, (P10493761981440968672.a n : ℤ) = A084431 n

end A084431

/-! ## A084431.P4995278844558875678

`A029744(2*n+1)/A016116(3*n)*A029744(3*n+1)`
-/

namespace A084431.P4995278844558875678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029744 (2 * n + 1) : ℚ) / (A016116 (3 * n) : ℚ) * (A029744 (3 * n + 1) : ℚ)

end

end A084431.P4995278844558875678

namespace A084431

/-- `A029744(2*n+1)/A016116(3*n)*A029744(3*n+1)` -/
def P4995278844558875678.Spec : Prop :=
  ∀ n, P4995278844558875678.a n = (A084431 n : ℚ)

end A084431

/-! ## A084431.P16247983490099850271

`A277882(∑[n+1]+xor(1, n+1))`
-/

namespace A084431.P16247983490099850271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277882 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.xor 1 (n + 1))

end

end A084431.P16247983490099850271

namespace A084431

/-- `A277882(∑[n+1]+xor(1, n+1))` -/
def P16247983490099850271.Spec : Prop :=
  ∀ n, P16247983490099850271.a n = A084431 n

end A084431

/-! ## A084431.P4744501763544600030

`A048645(∑[n+1]+xor(1, n+1))`
-/

namespace A084431.P4744501763544600030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.xor 1 (n + 1))

end

end A084431.P4744501763544600030

namespace A084431

/-- `A048645(∑[n+1]+xor(1, n+1))` -/
def P4744501763544600030.Spec : Prop :=
  ∀ n, P4744501763544600030.a n = A084431 n

end A084431

/-!
# A084432: Expansion of 2/(1-x) + Sum_{k>=0} t^2(3-t)/(1+t)/(1-t)^2, where t=x^2^k.

The programs for A084432, the canonical program `A084432.P7240558742881928274` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084432 has offset 1).

The definition of A084432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084432.P7240558742881928274

`n%2*a(floor(n/2))+2+n` with `a(0)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A084432

/-- `n%2*a(floor(n/2))+2+n` -/
def P7240558742881928274.Spec : Prop :=
  ∀ n, (P7240558742881928274.a n : ℤ) = A084432 (n + 1)

theorem P7240558742881928274.correct : P7240558742881928274.Spec := by
  intro n
  simp only [A084432, Nat.add_sub_cancel]

end A084432

/-! ## A084432.P620518545995272265

`and(1, n)*a(floor(n/2))+2+n` with `a(0)=2`
-/

namespace A084432.P620518545995272265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.land 1 n * a ⌊(n : ℚ) / 2⌋.toNat + 2 + n

end

end A084432.P620518545995272265

namespace A084432

/-- `and(1, n)*a(floor(n/2))+2+n` -/
def P620518545995272265.Spec : Prop :=
  ∀ n, (P620518545995272265.a n : ℤ) = A084432 (n + 1)

theorem P620518545995272265.correct : P620518545995272265.Spec := by
  intro n
  simp only [A084432, Nat.add_sub_cancel, A084432.P620518545995272265.a, A084432.P7240558742881928274.a, SequenceMachineLib.memo_apply]
  try simp

end A084432

/-! ## A084432.P8534109284755373962

`∑{d}[2^val(n+1, 2), (n+1)/#+1]`
-/

namespace A084432.P8534109284755373962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ) + 1)

end

end A084432.P8534109284755373962

namespace A084432

/-- `∑{d}[2^val(n+1, 2), (n+1)/#+1]` -/
def P8534109284755373962.Spec : Prop :=
  ∀ n, P8534109284755373962.a n = (A084432 (n + 1) : ℚ)

end A084432

/-! ## A084432.P7298607018142543914

`Δ[a(floor(n/2))+C(n+2, 2)-1]` with `a(0)=0`
-/

namespace A084432.P7298607018142543914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + ((Nat.choose (n + 2) 2 : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084432.P7298607018142543914

namespace A084432

/-- `Δ[a(floor(n/2))+C(n+2, 2)-1]` -/
def P7298607018142543914.Spec : Prop :=
  ∀ n, P7298607018142543914.a n = A084432 (n + 1)

end A084432

/-! ## A084432.P5934898790830975170

`∑{d}[or(n, n+1)-n, (n+1)/#+1]`
-/

namespace A084432.P5934898790830975170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℤ) - (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1 : ℚ) / (d : ℚ) + 1)

end

end A084432.P5934898790830975170

namespace A084432

/-- `∑{d}[or(n, n+1)-n, (n+1)/#+1]` -/
def P5934898790830975170.Spec : Prop :=
  ∀ n, P5934898790830975170.a n = (A084432 (n + 1) : ℚ)

end A084432

/-! ## A084432.P18096602088403279473

`∑{d}[xor(n, or(n, n+1)), (n+1)/#+1]`
-/

namespace A084432.P18096602088403279473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.lor n (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ) + 1)

end

end A084432.P18096602088403279473

namespace A084432

/-- `∑{d}[xor(n, or(n, n+1)), (n+1)/#+1]` -/
def P18096602088403279473.Spec : Prop :=
  ∀ n, P18096602088403279473.a n = (A084432 (n + 1) : ℚ)

end A084432

/-! ## A084432.P8297407057986983040

`2*n+val(n+1, 2)+2-floor(n/2^val(n+1, 2))`
-/

namespace A084432.P8297407057986983040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + ((SequenceMachineLib.valuation (n + 1) 2 + 2 : ℤ) - ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋)

end

end A084432.P8297407057986983040

namespace A084432

/-- `2*n+val(n+1, 2)+2-floor(n/2^val(n+1, 2))` -/
def P8297407057986983040.Spec : Prop :=
  ∀ n, P8297407057986983040.a n = A084432 (n + 1)

end A084432

/-! ## A084432.P3454758769958255178

`val(n+1, 2)+2*n+3-(n+1)/2^val(n+1, 2)`
-/

namespace A084432.P3454758769958255178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℚ) + ((2 * n + 3 : ℚ) - (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))

end

end A084432.P3454758769958255178

namespace A084432

/-- `val(n+1, 2)+2*n+3-(n+1)/2^val(n+1, 2)` -/
def P3454758769958255178.Spec : Prop :=
  ∀ n, P3454758769958255178.a n = (A084432 (n + 1) : ℚ)

end A084432

/-! ## A084432.P9338645327126939553

`(n+1)/2^val(n+1, 2)*xor(n, n+1)+val(n+1, 2)+1`
-/

namespace A084432.P9338645327126939553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * (Nat.xor n (n + 1) : ℚ) + (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℚ)

end

end A084432.P9338645327126939553

namespace A084432

/-- `(n+1)/2^val(n+1, 2)*xor(n, n+1)+val(n+1, 2)+1` -/
def P9338645327126939553.Spec : Prop :=
  ∀ n, P9338645327126939553.a n = (A084432 (n + 1) : ℚ)

end A084432

/-! ## A084432.P9536791407284557075

`∑{d}[A006519(n+1), (n+1)/#+1]`
-/

namespace A084432.P9536791407284557075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1 : ℚ) / (d : ℚ) + 1)

end

end A084432.P9536791407284557075

namespace A084432

/-- `∑{d}[A006519(n+1), (n+1)/#+1]` -/
def P9536791407284557075.Spec : Prop :=
  ∀ n, P9536791407284557075.a n = (A084432 (n + 1) : ℚ)

end A084432

/-! ## A084432.P11534299623600804792

`A366839(n+1)+A274593(n)`
-/

namespace A084432.P11534299623600804792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366839 (n + 1) + A274593 n

end

end A084432.P11534299623600804792

namespace A084432

/-- `A366839(n+1)+A274593(n)` -/
def P11534299623600804792.Spec : Prop :=
  ∀ n, P11534299623600804792.a n = A084432 (n + 1)

end A084432

/-! ## A084432.P12851134827944646447

`A129527(n+1)+A001511(n+1)`
-/

namespace A084432.P12851134827944646447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129527 (n + 1) + A001511 (n + 1)

end

end A084432.P12851134827944646447

namespace A084432

/-- `A129527(n+1)+A001511(n+1)` -/
def P12851134827944646447.Spec : Prop :=
  ∀ n, P12851134827944646447.a n = A084432 (n + 1)

end A084432

/-! ## A084432.P15862566151155558835

`A292608(n+1)-A000265(n+1)`
-/

namespace A084432.P15862566151155558835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292608 (n + 1) - A000265 (n + 1)

end

end A084432.P15862566151155558835

namespace A084432

/-- `A292608(n+1)-A000265(n+1)` -/
def P15862566151155558835.Spec : Prop :=
  ∀ n, P15862566151155558835.a n = A084432 (n + 1)

end A084432

/-! ## A084432.P13279960321168059204

`A274593(n)+2*A001511(n+1)`
-/

namespace A084432.P13279960321168059204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274593 n + 2 * A001511 (n + 1)

end

end A084432.P13279960321168059204

namespace A084432

/-- `A274593(n)+2*A001511(n+1)` -/
def P13279960321168059204.Spec : Prop :=
  ∀ n, P13279960321168059204.a n = A084432 (n + 1)

end A084432

/-! ## A084432.P4370587026419552851

`∑{d}[n+1, A007503(#)*A087003((n+1)/#)]`
-/

namespace A084432.P4370587026419552851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007503 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A084432.P4370587026419552851

namespace A084432

/-- `∑{d}[n+1, A007503(#)*A087003((n+1)/#)]` -/
def P4370587026419552851.Spec : Prop :=
  ∀ n, P4370587026419552851.a n = A084432 (n + 1)

end A084432

/-! ## A084432.P9527244886279861908

`∑{d}[n+1, A152211(#)*A349341((n+1)/#)]`
-/

namespace A084432.P9527244886279861908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A152211 d * A349341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A084432.P9527244886279861908

namespace A084432

/-- `∑{d}[n+1, A152211(#)*A349341((n+1)/#)]` -/
def P9527244886279861908.Spec : Prop :=
  ∀ n, P9527244886279861908.a n = A084432 (n + 1)

end A084432

/-! ## A084432.P5331021144498195333

`∑{d}[n+1, A020725(#)*A036987((n+1)/#-1)]`
-/

namespace A084432.P5331021144498195333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A020725 d * A036987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A084432.P5331021144498195333

namespace A084432

/-- `∑{d}[n+1, A020725(#)*A036987((n+1)/#-1)]` -/
def P5331021144498195333.Spec : Prop :=
  ∀ n, P5331021144498195333.a n = A084432 (n + 1)

end A084432

/-! ## A084432.P3032991525810555021

`A129527(n+1)+A082850(A118319(n+1))`
-/

namespace A084432.P3032991525810555021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129527 (n + 1) + A082850 (A118319 (n + 1)).toNat

end

end A084432.P3032991525810555021

namespace A084432

/-- `A129527(n+1)+A082850(A118319(n+1))` -/
def P3032991525810555021.Spec : Prop :=
  ∀ n, P3032991525810555021.a n = A084432 (n + 1)

end A084432

/-! ## A084432.P3136645184064202540

`A001511(n+1)+A005187(n+1)-A274716(n+1)`
-/

namespace A084432.P3136645184064202540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + (A005187 (n + 1) - A274716 (n + 1))

end

end A084432.P3136645184064202540

namespace A084432

/-- `A001511(n+1)+A005187(n+1)-A274716(n+1)` -/
def P3136645184064202540.Spec : Prop :=
  ∀ n, P3136645184064202540.a n = A084432 (n + 1)

end A084432

/-! ## A084432.P12084652805599656342

`A129527(n+1)+A007814(2*(n+1))`
-/

namespace A084432.P12084652805599656342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129527 (n + 1) + A007814 (2 * (n + 1))

end

end A084432.P12084652805599656342

namespace A084432

/-- `A129527(n+1)+A007814(2*(n+1))` -/
def P12084652805599656342.Spec : Prop :=
  ∀ n, P12084652805599656342.a n = A084432 (n + 1)

end A084432

/-!
# A084434: Numbers whose digit permutations have GCD > 1.

The programs for A084434, there is no canonical definition to state claims against.
-/

/-! ## A084434.P4144026915726695725

`lt[1, A069652(n+1)]+1`
-/

namespace A084434.P4144026915726695725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069652 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A084434.P4144026915726695725

/-!
# A084435: a(1) = 2, then smallest prime of the form 2^k*a(n-1) + 1.

The programs for A084435, there is no canonical definition to state claims against.
-/

/-! ## A084435.P6236418463883182839

`p?[abs(1-A014683(2*a(n-2)+1))]` with `a(0)=2, a(1)=0, a(2)=1`
-/

namespace A084435.P6236418463883182839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 1] fun n f1 =>
  |1 - A014683 (2 * f1 (n - 2) + 1).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084435.P6236418463883182839

/-! ## A084435.P703100554145245355

`p?[A092569(A293353(n))]`
-/

namespace A084435.P703100554145245355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A293353 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084435.P703100554145245355

/-! ## A084435.P8889914508857103799

`p?[A290114(n)-A293352(n)]`
-/

namespace A084435.P8889914508857103799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290114 n - A293352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084435.P8889914508857103799

/-!
# A084436: Smallest prime which is one more than the square of a squarefree number with n prime divisors.

The programs for A084436, there is no canonical definition to state claims against.
-/

/-! ## A084436.P5258520305493227632

`A066814(3^n)`
-/

namespace A084436.P5258520305493227632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066814 (3 ^ n)

end

end A084436.P5258520305493227632

/-! ## A084436.P7208782863350922863

`∩[A089195(n+1), A087520(n)]`
-/

namespace A084436.P7208782863350922863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087520 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084436.P7208782863350922863

/-!
# A084438: Positive integers k such that k!!! - 1 = A007661(k) - 1 is prime.

The programs for A084438, there is no canonical definition to state claims against.
-/

/-! ## A084438.P9613406400701544724

`A113780(A063684(3*n+4))+A002182(n+1)`
-/

namespace A084438.P9613406400701544724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113780 (A063684 (3 * n + 4)).toNat + A002182 (n + 1)

end

end A084438.P9613406400701544724

/-!
# A084439: Number of triangular partitions of n of order 3.

The programs for A084439, the canonical program `A084439.P499848064581534173` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084439 has offset 0).

The definition of A084439 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084439.P499848064581534173

`ogf(1/(1-3x+3x^2-3x^3+6x^4-7x^5+6x^6-6x^7+6x^8-7x^9+6x^10-3x^11+3x^12-3x^13+x^14))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A084439

/-- `ogf(1/(1-3x+3x^2-3x^3+6x^4-7x^5+6x^6-6x^7+6x^8-7x^9+6x^10-3x^11+3x^12-3x^13+x^14))` -/
def P499848064581534173.Spec : Prop :=
  ∀ n, P499848064581534173.a n = A084439 n

theorem P499848064581534173.correct : P499848064581534173.Spec := by
  intro n
  simp only [A084439]

end A084439

/-! ## A084439.P16361707424774785906

`∑[∑[A051263(n)]]`
-/

namespace A084439.P16361707424774785906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051263 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084439.P16361707424774785906

namespace A084439

/-- `∑[∑[A051263(n)]]` -/
def P16361707424774785906.Spec : Prop :=
  ∀ n, P16361707424774785906.a n = A084439 n

end A084439

/-! ## A084439.P15185522283284020933

`∑[∑[A029090(2*n)]]`
-/

namespace A084439.P15185522283284020933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029090 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084439.P15185522283284020933

namespace A084439

/-- `∑[∑[A029090(2*n)]]` -/
def P15185522283284020933.Spec : Prop :=
  ∀ n, P15185522283284020933.a n = A084439 n

end A084439

/-! ## A084439.P11784461978956503280

`∑[∑[A029153(2*n)]]`
-/

namespace A084439.P11784461978956503280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029153 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084439.P11784461978956503280

namespace A084439

/-- `∑[∑[A029153(2*n)]]` -/
def P11784461978956503280.Spec : Prop :=
  ∀ n, P11784461978956503280.a n = A084439 n

end A084439

/-! ## A084439.P14201722117479542893

`∑[∑[∑[A025843(2*n)]]]`
-/

namespace A084439.P14201722117479542893
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025843 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084439.P14201722117479542893

namespace A084439

/-- `∑[∑[∑[A025843(2*n)]]]` -/
def P14201722117479542893.Spec : Prop :=
  ∀ n, P14201722117479542893.a n = A084439 n

end A084439

/-! ## A084439.P363287003730213648

`∑[∑[A029254(2*n+1)+A029254(2*n)]]`
-/

namespace A084439.P363287003730213648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029254 (2 * n + 1) + A029254 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084439.P363287003730213648

namespace A084439

/-- `∑[∑[A029254(2*n+1)+A029254(2*n)]]` -/
def P363287003730213648.Spec : Prop :=
  ∀ n, P363287003730213648.a n = A084439 n

end A084439

/-! ## A084439.P5124297423478109882

`∑[∑[A029061(2*n)-A025881(2*n+1)]]`
-/

namespace A084439.P5124297423478109882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029061 (2 * n) - A025881 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084439.P5124297423478109882

namespace A084439

/-- `∑[∑[A029061(2*n)-A025881(2*n+1)]]` -/
def P5124297423478109882.Spec : Prop :=
  ∀ n, P5124297423478109882.a n = A084439 n

end A084439

/-! ## A084439.P9598825111249716193

`∑[A037145(2*n+3)]`
-/

namespace A084439.P9598825111249716193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084439.P9598825111249716193

namespace A084439

/-- `∑[A037145(2*n+3)]` -/
def P9598825111249716193.Spec : Prop :=
  ∀ n, P9598825111249716193.a n = A084439 n

end A084439

/-! ## A084439.P8654368961179168157

`∑[∑[A008681(2*n+3)]]`
-/

namespace A084439.P8654368961179168157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008681 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084439.P8654368961179168157

namespace A084439

/-- `∑[∑[A008681(2*n+3)]]` -/
def P8654368961179168157.Spec : Prop :=
  ∀ n, P8654368961179168157.a n = A084439 n

end A084439

/-!
# A084440: Number of ways to write the n-th prime as 1+p+p^k, p prime and k > 0.

The programs for A084440, there is no canonical definition to state claims against.
-/

/-! ## A084440.P15538509525586159667

`A089734(A313541(n+1)+1)`
-/

namespace A084440.P15538509525586159667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089734 (A313541 (n + 1) + 1).toNat

end

end A084440.P15538509525586159667

/-! ## A084440.P887246895346559388

`A107279(A018371(n+1)-1)`
-/

namespace A084440.P887246895346559388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A018371 (n + 1) - 1).toNat

end

end A084440.P887246895346559388

/-! ## A084440.P14584705181611784666

`and(A000045(n), A038800(A005179(n+1)))`
-/

namespace A084440.P14584705181611784666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000045 n) (A038800 (A005179 (n + 1)).toNat)

end

end A084440.P14584705181611784666

/-! ## A084440.P15170331343064357247

`and(A000045(n), A083534(A024309(n+1)))`
-/

namespace A084440.P15170331343064357247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000045 n) (A083534 (A024309 (n + 1)).toNat)

end

end A084440.P15170331343064357247

/-! ## A084440.P11420064813953652420

`and(A000045(n), A066099(A075501(n+1)))`
-/

namespace A084440.P11420064813953652420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000045 n) (A066099 (A075501 (n + 1)).toNat)

end

end A084440.P11420064813953652420

/-!
# A084441: Primes that can be written as 1+p+p^k, p prime and k > 0.

The programs for A084441, there is no canonical definition to state claims against.
-/

/-! ## A084441.P8520764957556229261

`∪[A005385(n+1), A084444(n+1)]`
-/

namespace A084441.P8520764957556229261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A084441.P8520764957556229261

/-! ## A084441.P13435847337352151724

`∪[A084442(n+1), A084444(n+1)]`
-/

namespace A084441.P13435847337352151724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A084441.P13435847337352151724

/-! ## A084441.P8714884687054186886

`A045344(lt[0, A084440(n+1)])`
-/

namespace A084441.P8714884687054186886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A084441.P8714884687054186886

/-! ## A084441.P12779519992134845975

`A065091(lt[0, A084440(n+1)])`
-/

namespace A084441.P12779519992134845975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A084441.P12779519992134845975

/-! ## A084441.P17776225919872750576

`A045344(eq[A084440(n+1)!, A084440(n+1)])`
-/

namespace A084441.P17776225919872750576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A084440 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084441.P17776225919872750576

/-!
# A084442: Primes that can be written uniquely as 1+p+p^k, p prime and k > 0.

The programs for A084442, there is no canonical definition to state claims against.
-/

/-! ## A084442.P12988005137843006113

`A045344(eq[1, A084440(n+1)])`
-/

namespace A084442.P12988005137843006113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084442.P12988005137843006113

/-! ## A084442.P10924065567070697733

`A065091(eq[1, A084440(n+1)])`
-/

namespace A084442.P10924065567070697733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084442.P10924065567070697733

/-! ## A084442.P4243066564390805387

`A000040(eq[1, A084440(n+1)]+1)`
-/

namespace A084442.P4243066564390805387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A084442.P4243066564390805387

/-! ## A084442.P17979418230187366130

`A008578(eq[1, A084440(n+1)]+2)`
-/

namespace A084442.P17979418230187366130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A084442.P17979418230187366130

/-! ## A084442.P2435898863019648632

`p?[A000040(n+1)*A084440(n+1)]`
-/

namespace A084442.P2435898863019648632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A084440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084442.P2435898863019648632

/-!
# A084444: Primes that can be written as 1+p+p^k, p prime and k > 1.

The programs for A084444, there is no canonical definition to state claims against.
-/

/-! ## A084444.P16056918182296896643

`∩[A084441(n+1), A239710(n+1)]`
-/

namespace A084444.P16056918182296896643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084444.P16056918182296896643

/-! ## A084444.P17604909331176799003

`∩[A084441(n+1), A346156(n+1)]`
-/

namespace A084444.P17604909331176799003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084444.P17604909331176799003

/-! ## A084444.P16637210265681979041

`∩[A084441(n+1), A275340(n+1)]`
-/

namespace A084444.P16637210265681979041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084444.P16637210265681979041

/-! ## A084444.P2562585593186082592

`record[p?[A295295(n+1)+A286875(n+1)]]`
-/

namespace A084444.P2562585593186082592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295295 (n + 1) + A286875 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084444.P2562585593186082592

/-! ## A084444.P6983206723463292952

`record[A076566(A070229(A134612(n+1)))]`
-/

namespace A084444.P6983206723463292952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076566 (A070229 (A134612 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084444.P6983206723463292952

/-!
# A084445: Primes that cannot be written as 1+p+p^k, p prime and k > 0.

The programs for A084445, there is no canonical definition to state claims against.
-/

/-! ## A084445.P15123640518269245737

`A000040(lt[A084440(n+1), 1]+1)`
-/

namespace A084445.P15123640518269245737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084440 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A084445.P15123640518269245737

/-! ## A084445.P16048039339206346729

`p?[gcd(A000040(n+1), A084440(n+1))]`
-/

namespace A084445.P16048039339206346729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A084440 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A084445.P16048039339206346729

/-! ## A084445.P10321482140608039013

`A006093(lt[A084440(n+1), 1]+1)+1`
-/

namespace A084445.P10321482140608039013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084440 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) + 1

end

end A084445.P10321482140608039013

/-! ## A084445.P13003910308119449984

`A008578(lt[A084440(n+1), 1]+2)`
-/

namespace A084445.P13003910308119449984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084440 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A084445.P13003910308119449984

/-! ## A084445.P44143578152192734

`p?[A004526(A100484(n+1)-A084440(n+1))]`
-/

namespace A084445.P44143578152192734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A100484 (n + 1) - A084440 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084445.P44143578152192734

/-!
# A084446: Number of triangular partitions of n of order 4.

The programs for A084446, there is no canonical definition to state claims against.
-/

/-! ## A084446.P8125185975728906885

`A196158(∑[C(n, 3)+n]+1)+(n^3+n)/2`
-/

namespace A084446.P8125185975728906885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196158 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) + (n ^ 3 + n : ℚ) / 2

end

end A084446.P8125185975728906885

/-! ## A084446.P18132563107810284028

`A172471(abs(A004406(n)))`
-/

namespace A084446.P18132563107810284028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 |A004406 n|.toNat

end

end A084446.P18132563107810284028

/-! ## A084446.P10131986238747097974

`A172471(∑[A277643(n)²])`
-/

namespace A084446.P10131986238747097974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277643 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A084446.P10131986238747097974

/-!
# A084447: Number of triangular partitions of n of order 5.

The programs for A084447, there is no canonical definition to state claims against.
-/

/-! ## A084447.P4798929709377998804

`A089801(A293606(n+3))+A073335(2*(n+1))`
-/

namespace A084447.P4798929709377998804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089801 (A293606 (n + 3)).toNat + A073335 (2 * (n + 1))

end

end A084447.P4798929709377998804

/-! ## A084447.P7958372052032842148

`A269668(A086246(2*n+1))+A073335(2*(n+1))`
-/

namespace A084447.P7958372052032842148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269668 (A086246 (2 * n + 1)).toNat + A073335 (2 * (n + 1))

end

end A084447.P7958372052032842148

/-!
# A084449: Positions of sevens (ground states) in A084451.

The programs for A084449, there is no canonical definition to state claims against.
-/

/-! ## A084449.P6686760376285340455

`A084465(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A084449.P6686760376285340455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A084465 (n - 1) + a (n - 1)

end

end A084449.P6686760376285340455

/-! ## A084449.P14316273987779600953

`∑[A084465(n)]-A084465(n)`
-/

namespace A084449.P14316273987779600953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084465 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A084465 n

end

end A084449.P14316273987779600953

/-! ## A084449.P17487309682767654694

`eq[7, A084451(n)]`
-/

namespace A084449.P17487309682767654694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084449.P17487309682767654694

/-!
# A084450: Sequence A084451 in binary.

The programs for A084450, there is no canonical definition to state claims against.
-/

/-! ## A084450.P13897697502516131096

`A007088(A084451(n))`
-/

namespace A084450.P13897697502516131096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A084451 n).toNat

end

end A084450.P13897697502516131096

/-! ## A084450.P4626552605169858413

`A185544(2*A084451(n))`
-/

namespace A084450.P4626552605169858413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A084451 n).toNat

end

end A084450.P4626552605169858413

/-! ## A084450.P13729529896961872747

`A185544(A084451(n)+A084451(n))`
-/

namespace A084450.P13729529896961872747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A084451 n + A084451 n).toNat

end

end A084450.P13729529896961872747

/-! ## A084450.P1641691091646884278

`A007089(A005836(A084451(n)+1))`
-/

namespace A084450.P1641691091646884278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A005836 (A084451 n + 1).toNat).toNat

end

end A084450.P1641691091646884278

/-!
# A084451: Juggling states associated with the juggling sequence A084452.

The programs for A084451, there is no canonical definition to state claims against.
-/

/-! ## A084451.P14076004774456498814

`(a(n-1)+2^A084452(n)-1)/2` with `a(0)=7, a(1)=11, a(2)=13, a(3)=14, a(4)=7`
-/

namespace A084451.P14076004774456498814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7, 11, 13, 14, 7] fun n a =>
  (a (n - 1) + (2 : ℚ) ^ (A084452 n : ℤ) - 1) / 2

end

end A084451.P14076004774456498814

/-!
# A084452: An infinite juggling sequence with three balls: a(n) is zero when A084451(n-1) is even, otherwise the least (lowest) throw such that the resulting next juggling state A084451(n) does not occur in A084451[0..n-1].

The programs for A084452, there is no canonical definition to state claims against.
-/

/-! ## A084452.P12463067443737460016

`A084453(n+1)+2-n`
-/

namespace A084452.P12463067443737460016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084453 (n + 1) + (2 - (n : ℤ))

end

end A084452.P12463067443737460016

/-! ## A084452.P10345404946386415410

`abs(A084453(n+1)+A022958(n))`
-/

namespace A084452.P10345404946386415410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084453 (n + 1) + A022958 n|

end

end A084452.P10345404946386415410

/-! ## A084452.P7089756455003533690

`A084453(n+1)+A001489(n)+2`
-/

namespace A084452.P7089756455003533690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084453 (n + 1) + A001489 n + 2

end

end A084452.P7089756455003533690

/-! ## A084452.P7298300795339678358

`A004526(2*(A084453(n+1)+A022958(n)))`
-/

namespace A084452.P7298300795339678358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * (A084453 (n + 1) + A022958 n)).toNat

end

end A084452.P7298300795339678358

/-! ## A084452.P17802033626409722865

`A009056(A084453(n+1))-n`
-/

namespace A084452.P17802033626409722865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A084453 (n + 1)).toNat - (n : ℤ)

end

end A084452.P17802033626409722865

/-! ## A084452.P15202258927476793974

`A001222(2^(A084453(n+1)+A022958(n)))`
-/

namespace A084452.P15202258927476793974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A084453 (n + 1) + A022958 n : ℤ))).toNat

end

end A084452.P15202258927476793974

/-!
# A084453: a(n) = n + A084452(n) - 3.

The programs for A084453, there is no canonical definition to state claims against.
-/

/-! ## A084453.P17337689883009726982

`n+1+A084452(n+1)-3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084453.P17337689883009726982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A084452 (n + 1) - 3

end

end A084453.P17337689883009726982

/-! ## A084453.P5785930637036542162

`A084452(n+1)-2+n`
-/

namespace A084453.P5785930637036542162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084452 (n + 1) - 2 + (n : ℤ)

end

end A084453.P5785930637036542162

/-! ## A084453.P2713943062137476092

`A084452(n+1)+A023444(n)`
-/

namespace A084453.P2713943062137476092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084452 (n + 1) + A023444 n

end

end A084453.P2713943062137476092

/-! ## A084453.P7848707836375045663

`A084452(n+1)-A022958(n)`
-/

namespace A084453.P7848707836375045663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084452 (n + 1) - A022958 n

end

end A084453.P7848707836375045663

/-! ## A084453.P12184532347281226482

`A289207(A084452(n+1)+n)`
-/

namespace A084453.P12184532347281226482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A084452 (n + 1) + (n : ℤ)).toNat

end

end A084453.P12184532347281226482

/-! ## A084453.P8060121099843671058

`abs(A022958(A084452(n+1)+n))`
-/

namespace A084453.P8060121099843671058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022958 (A084452 (n + 1) + (n : ℤ)).toNat|

end

end A084453.P8060121099843671058

/-! ## A084453.P16328730641813872031

`A023443(A084452(n+1)+A023443(n))`
-/

namespace A084453.P16328730641813872031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A084452 (n + 1) + A023443 n).toNat

end

end A084453.P16328730641813872031

/-!
# A084454: Inverse permutation to A084453.

The programs for A084454, there is no canonical definition to state claims against.
-/

/-! ## A084454.P4262078360282930730

`A084466(2*(n+4))/2`
-/

namespace A084454.P4262078360282930730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084466 (2 * (n + 4)) : ℚ) / 2

end

end A084454.P4262078360282930730

/-! ## A084454.P6469864038499851367

`A004525(A084466(2*(n+4)))`
-/

namespace A084454.P6469864038499851367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A084466 (2 * (n + 4))).toNat

end

end A084454.P6469864038499851367

/-! ## A084454.P12996011629158966651

`A004526(A084466(2*(n+4))+1)`
-/

namespace A084454.P12996011629158966651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A084466 (2 * (n + 4)) + 1).toNat

end

end A084454.P12996011629158966651

/-! ## A084454.P13838796538733102971

`A003602(A084466(2*(n+4))-1)`
-/

namespace A084454.P13838796538733102971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A084466 (2 * (n + 4)) - 1).toNat

end

end A084454.P13838796538733102971

/-! ## A084454.P18268101689085342162

`A002265(2*A084466(2*(n+4)))`
-/

namespace A084454.P18268101689085342162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A084466 (2 * (n + 4))).toNat

end

end A084454.P18268101689085342162

/-!
# A084455: Permutation of Z, obtained by reflecting the juggling sequence A084452 from positive to negative numbers (with zero thrown at beat 0), folded to N with functions N2Z and Z2N.

The programs for A084455, there is no canonical definition to state claims against.
-/

/-! ## A084455.P2096200874873659938

`xor(A057427(n), A084466(A065190(n+1)))`
-/

namespace A084455.P2096200874873659938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A084466 (A065190 (n + 1)).toNat)

end

end A084455.P2096200874873659938

/-! ## A084455.P1427929088119362362

`xor(-A057428(n), A084466(A065190(n+1)))`
-/

namespace A084455.P1427929088119362362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A057428 n) (A084466 (A065190 (n + 1)).toNat)

end

end A084455.P1427929088119362362

/-! ## A084455.P17596867074472822237

`A000007(n)+xor(1, A084466(A065190(n+1)))`
-/

namespace A084455.P17596867074472822237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + Int.xor 1 (A084466 (A065190 (n + 1)).toNat)

end

end A084455.P17596867074472822237

/-! ## A084455.P14255911202709293396

`xor(A084466(A065190(n+1)), A178226(2*n))`
-/

namespace A084455.P14255911202709293396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A084466 (A065190 (n + 1)).toNat) (A178226 (2 * n))

end

end A084455.P14255911202709293396

/-!
# A084456: Sequence A084457 in binary.

The programs for A084456, there is no canonical definition to state claims against.
-/

/-! ## A084456.P13331325689917764576

`A007088(A084457(n))`
-/

namespace A084456.P13331325689917764576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A084457 n).toNat

end

end A084456.P13331325689917764576

/-! ## A084456.P16604462718622639332

`A185544(2*A084457(n))`
-/

namespace A084456.P16604462718622639332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A084457 n).toNat

end

end A084456.P16604462718622639332

/-!
# A084458: An infinite juggling sequence using three balls: a(n) is the least (lowest) throw needed to ensure that none of the juggling states A084457[n..n+A006519(n)-1] occurs in A084457[0..n-1].

The programs for A084458, there is no canonical definition to state claims against.
-/

/-! ## A084458.P10062245847979649404

`A084459(n+1)+2-n`
-/

namespace A084458.P10062245847979649404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084459 (n + 1) + (2 - (n : ℤ))

end

end A084458.P10062245847979649404

/-! ## A084458.P14230247496170059479

`A009056(A084459(n+1))-n`
-/

namespace A084458.P14230247496170059479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A084459 (n + 1)).toNat - (n : ℤ)

end

end A084458.P14230247496170059479

/-! ## A084458.P9623500940517296883

`abs(A084459(n+1)+A022958(n))`
-/

namespace A084458.P9623500940517296883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084459 (n + 1) + A022958 n|

end

end A084458.P9623500940517296883

/-! ## A084458.P6244851635517128951

`A084459(n+1)+A001489(n)+2`
-/

namespace A084458.P6244851635517128951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084459 (n + 1) + A001489 n + 2

end

end A084458.P6244851635517128951

/-! ## A084458.P8967740277033584757

`A084459(n+1)+n*A057428(n)+2`
-/

namespace A084458.P8967740277033584757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084459 (n + 1) + (n : ℤ) * A057428 n + 2

end

end A084458.P8967740277033584757

/-! ## A084458.P2675092418681685137

`-(A023446(n)+A022958(A084459(n+1)))`
-/

namespace A084458.P2675092418681685137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A023446 n + A022958 (A084459 (n + 1)).toNat)

end

end A084458.P2675092418681685137

/-! ## A084458.P9267110960006954923

`A022958(A020705(n))+A020705(A084459(n+1))`
-/

namespace A084458.P9267110960006954923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A020705 n).toNat + A020705 (A084459 (n + 1)).toNat

end

end A084458.P9267110960006954923

/-! ## A084458.P9948924781337443424

`A001222(2^(A084459(n+1)+A022958(n)))`
-/

namespace A084458.P9948924781337443424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A084459 (n + 1) + A022958 n : ℤ))).toNat

end

end A084458.P9948924781337443424

/-!
# A084459: a(n) = n + A084458(n) - 3.

The programs for A084459, there is no canonical definition to state claims against.
-/

/-! ## A084459.P8847561114715983408

`n+1+A084458(n+1)-3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084459.P8847561114715983408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A084458 (n + 1) - 3

end

end A084459.P8847561114715983408

/-! ## A084459.P5344707804760449670

`A084458(n+1)-2+n`
-/

namespace A084459.P5344707804760449670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084458 (n + 1) - 2 + (n : ℤ)

end

end A084459.P5344707804760449670

/-! ## A084459.P4741853450538588814

`A084458(Δ[n²]-n)-(2-n)`
-/

namespace A084459.P4741853450538588814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084458 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - (2 - (n : ℤ))

end

end A084459.P4741853450538588814

/-! ## A084459.P8683891618230489807

`A023444(A084458(n+1)+n)`
-/

namespace A084459.P8683891618230489807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A084458 (n + 1) + (n : ℤ)).toNat

end

end A084459.P8683891618230489807

/-! ## A084459.P11771694401811500301

`A289207(A084458(n+1)+n)`
-/

namespace A084459.P11771694401811500301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A084458 (n + 1) + (n : ℤ)).toNat

end

end A084459.P11771694401811500301

/-! ## A084459.P7053840471567170735

`abs(A022958(A084458(n+1)+n))`
-/

namespace A084459.P7053840471567170735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022958 (A084458 (n + 1) + (n : ℤ)).toNat|

end

end A084459.P7053840471567170735

/-! ## A084459.P1202450231636225677

`A023443(A084458(n+1)+A023443(n))`
-/

namespace A084459.P1202450231636225677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A084458 (n + 1) + A023443 n).toNat

end

end A084459.P1202450231636225677

/-!
# A084460: Inverse permutation to A084459.

The programs for A084460, there is no canonical definition to state claims against.
-/

/-! ## A084460.P2114170883318470370

`A084462(2*(n+4))/2`
-/

namespace A084460.P2114170883318470370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084462 (2 * (n + 4)) : ℚ) / 2

end

end A084460.P2114170883318470370

/-!
# A084461: Permutation of Z, obtained by reflecting the juggling sequence A084458 from positive to negative numbers (with zero thrown at beat 0), folded to N with functions N2Z and Z2N.

The programs for A084461, there is no canonical definition to state claims against.
-/

/-! ## A084461.P14191597552237390929

`xor(A057427(n), A084462(A065190(n+1)))`
-/

namespace A084461.P14191597552237390929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A084462 (A065190 (n + 1)).toNat)

end

end A084461.P14191597552237390929

/-! ## A084461.P9090237151170335021

`xor(-A057428(n), A084462(A065190(n+1)))`
-/

namespace A084461.P9090237151170335021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A057428 n) (A084462 (A065190 (n + 1)).toNat)

end

end A084461.P9090237151170335021

/-! ## A084461.P2754501441511096775

`A000007(n)+xor(1, A084462(A065190(n+1)))`
-/

namespace A084461.P2754501441511096775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + Int.xor 1 (A084462 (A065190 (n + 1)).toNat)

end

end A084461.P2754501441511096775

/-! ## A084461.P17819602143068217792

`xor(A004273(n)%2, A084462(A065190(n+1)))`
-/

namespace A084461.P17819602143068217792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A004273 n) 2) (A084462 (A065190 (n + 1)).toNat)

end

end A084461.P17819602143068217792

/-! ## A084461.P6395209419267749772

`xor(n/A028310(n), A084462(A065190(n+1)))`
-/

namespace A084461.P6395209419267749772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((n : ℚ) / (A028310 n : ℚ))) (A084462 (A065190 (n + 1)).toNat)

end

end A084461.P6395209419267749772

/-! ## A084461.P15197226206960153074

`xor(A000040(n+1)%2, A084462(A065190(n+1)))`
-/

namespace A084461.P15197226206960153074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A000040 (n + 1)) 2) (A084462 (A065190 (n + 1)).toNat)

end

end A084461.P15197226206960153074

/-!
# A084462: Inverse permutation to A084461.

The programs for A084462, there is no canonical definition to state claims against.
-/

/-! ## A084462.P10039420495803125139

`xor(A057427(n), A084461(A065190(n+1)))`
-/

namespace A084462.P10039420495803125139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A084461 (A065190 (n + 1)).toNat)

end

end A084462.P10039420495803125139

/-! ## A084462.P6844388282475494473

`xor(-A057428(n), A084461(A065190(n+1)))`
-/

namespace A084462.P6844388282475494473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A057428 n) (A084461 (A065190 (n + 1)).toNat)

end

end A084462.P6844388282475494473

/-! ## A084462.P10851816756476282831

`xor(A019428(2*n), A084461(A065190(n+1)))`
-/

namespace A084462.P10851816756476282831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A019428 (2 * n)) (A084461 (A065190 (n + 1)).toNat)

end

end A084462.P10851816756476282831

/-! ## A084462.P17582855403940140812

`xor(A005171(2*(n+1)), A084461(A065190(n+1)))`
-/

namespace A084462.P17582855403940140812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005171 (2 * (n + 1))) (A084461 (A065190 (n + 1)).toNat)

end

end A084462.P17582855403940140812

/-!
# A084463: Positions of even juggling states in A084457, i.e., positions of zeros in A084458 - 1.

The programs for A084463, there is no canonical definition to state claims against.
-/

/-! ## A084463.P11975925387957628211

`comp[A084464(n+1)]`
-/

namespace A084463.P11975925387957628211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A084463.P11975925387957628211

/-! ## A084463.P9834820140722747349

`eq[0, A084458(n+1)]`
-/

namespace A084463.P9834820140722747349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084458 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084463.P9834820140722747349

/-! ## A084463.P9019129804453309056

`lt[A084458(n+2), 1]+1`
-/

namespace A084463.P9019129804453309056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084458 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A084463.P9019129804453309056

/-! ## A084463.P6250379408595866000

`lt[A084458(-xor(n, -1)), 2]`
-/

namespace A084463.P6250379408595866000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084458 (-Int.xor (n : ℤ) (-1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A084463.P6250379408595866000

/-! ## A084463.P13762580860782842602

`record[n+3-A084458(n+4)]`
-/

namespace A084463.P13762580860782842602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A084458 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084463.P13762580860782842602

/-! ## A084463.P5286414586660722905

`eq[0, A084458(ϕ²-(ϕ-n))²]`
-/

namespace A084463.P5286414586660722905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084458 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084463.P5286414586660722905

/-! ## A084463.P13891380297986049849

`comp[record[A084464(A331300(n))]]`
-/

namespace A084463.P13891380297986049849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084464 (A331300 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A084463.P13891380297986049849

/-! ## A084463.P17183857745865275508

`eq[A023444(n), A084459(n+1)]`
-/

namespace A084463.P17183857745865275508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084459 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084463.P17183857745865275508

/-!
# A084464: Positions of odd juggling states in A084457, i.e., positions of nonzero-throws in A084458 - 1.

The programs for A084464, there is no canonical definition to state claims against.
-/

/-! ## A084464.P15188405727735449930

`comp[A084463(n+1)]`
-/

namespace A084464.P15188405727735449930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A084464.P15188405727735449930

/-! ## A084464.P13286316872055457300

`lt[0, A084458(n+1)]`
-/

namespace A084464.P13286316872055457300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084458 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A084464.P13286316872055457300

/-! ## A084464.P4001816157068159658

`record[n%A084459(n+1)]`
-/

namespace A084464.P4001816157068159658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A084459 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084464.P4001816157068159658

/-! ## A084464.P4901764078119588433

`eq[0, A000045(C(2, A084458(n+1)))]`
-/

namespace A084464.P4901764078119588433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A084458 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084464.P4901764078119588433

/-! ## A084464.P15863981932893985344

`eq[2, A000032(C(2, A084458(n+1)))]`
-/

namespace A084464.P15863981932893985344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (A084458 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084464.P15863981932893985344

/-! ## A084464.P17853369457073730204

`eq[0, A000005(A084458(n+1)²+1)%2]`
-/

namespace A084464.P17853369457073730204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A084458 (n + 1) ^ 2 + 1).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084464.P17853369457073730204

/-!
# A084465: First differences of A084449.

The programs for A084465, there is no canonical definition to state claims against.
-/

/-! ## A084465.P7553250752266472182

`A084449(n+1)-A084449(n)`
-/

namespace A084465.P7553250752266472182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084449 (n + 1) - A084449 n

end

end A084465.P7553250752266472182

/-! ## A084465.P9317523912203432795

`Δ[A084449(n)]`
-/

namespace A084465.P9317523912203432795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084465.P9317523912203432795

/-! ## A084465.P11646504193309608981

`record[A084449(A193739(n))]-A084449(n)`
-/

namespace A084465.P11646504193309608981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084449 (A193739 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A084449 n

end

end A084465.P11646504193309608981

/-!
# A084466: Inverse permutation to A084455.

The programs for A084466, there is no canonical definition to state claims against.
-/

/-! ## A084466.P6812609886288112479

`xor(A057427(n), A084455(A065190(n+1)))`
-/

namespace A084466.P6812609886288112479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A084455 (A065190 (n + 1)).toNat)

end

end A084466.P6812609886288112479

/-! ## A084466.P2824760805169032820

`xor(A057428(n)², A084455(A065190(n+1)))`
-/

namespace A084466.P2824760805169032820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057428 n ^ 2) (A084455 (A065190 (n + 1)).toNat)

end

end A084466.P2824760805169032820

/-! ## A084466.P10870554998622553255

`A000007(n)+xor(1, A084455(A065190(n+1)))`
-/

namespace A084466.P10870554998622553255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + Int.xor 1 (A084455 (A065190 (n + 1)).toNat)

end

end A084466.P10870554998622553255

/-!
# A084467: Odd terms of A084457.

The programs for A084467, there is no canonical definition to state claims against.
-/

/-! ## A084467.P15106670968827554107

`A084457(A084464(n+1))`
-/

namespace A084467.P15106670968827554107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084457 (A084464 (n + 1)).toNat

end

end A084467.P15106670968827554107

/-! ## A084467.P16402031605009415579

`A084468(A084469(n+1))`
-/

namespace A084467.P16402031605009415579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084468 (A084469 (n + 1)).toNat

end

end A084467.P16402031605009415579

/-! ## A084467.P18115464313046898558

`filter[A084457(n), A374134(#)]`
-/

namespace A084467.P18115464313046898558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084457 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A084467.P18115464313046898558

/-! ## A084467.P9021631484159654502

`filter[A084457(n), A228495(#)]`
-/

namespace A084467.P9021631484159654502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084457 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A084467.P9021631484159654502

/-! ## A084467.P10588626733758417638

`filter[A084457(n), A254651(#)]`
-/

namespace A084467.P10588626733758417638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084457 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A084467.P10588626733758417638

/-!
# A084468: Odd numbers with exactly 3 ones in binary expansion.

The programs for A084468, the canonical program `A084468.P3280344016003290935` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084468 has offset 1).

The definition of A084468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084468.P3280344016003290935

`2*A018900(n+1)+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A084468

/-- `2*A018900(n+1)+1` -/
def P3280344016003290935.Spec : Prop :=
  ∀ n, P3280344016003290935.a n = A084468 (n + 1)

theorem P3280344016003290935.correct : P3280344016003290935.Spec := by
  intro n
  simp only [A084468, Nat.add_sub_cancel]

end A084468

/-! ## A084468.P4267495616234510440

`A005408(A018900(n+1))`
-/

namespace A084468.P4267495616234510440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A018900 (n + 1)).toNat

end

end A084468.P4267495616234510440

namespace A084468

/-- `A005408(A018900(n+1))` -/
def P4267495616234510440.Spec : Prop :=
  ∀ n, P4267495616234510440.a n = A084468 (n + 1)

end A084468

/-! ## A084468.P589705714032062651

`2*A099628(n+1)+3`
-/

namespace A084468.P589705714032062651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099628 (n + 1) + 3

end

end A084468.P589705714032062651

namespace A084468

/-- `2*A099628(n+1)+3` -/
def P589705714032062651.Spec : Prop :=
  ∀ n, P589705714032062651.a n = A084468 (n + 1)

end A084468

/-! ## A084468.P5123972227142723552

`A284128(n+9)-A090988(n+1)`
-/

namespace A084468.P5123972227142723552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284128 (n + 9) - A090988 (n + 1)

end

end A084468.P5123972227142723552

namespace A084468

/-- `A284128(n+9)-A090988(n+1)` -/
def P5123972227142723552.Spec : Prop :=
  ∀ n, P5123972227142723552.a n = A084468 (n + 1)

theorem P5123972227142723552.correct : P5123972227142723552.Spec := by
  intro n
  simp only [A084468, Nat.add_sub_cancel, A084468.P5123972227142723552.a, A084468.P3280344016003290935.a, A018900, A018900.P2868698677378612256.a, A090988, A090988.P5141419551860329845.a, A284128, A284128.P5800027111026948998.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A084468

/-! ## A084468.P3910310717436460765

`A000051(A002024(n+1))+2*A173786(n)`
-/

namespace A084468.P3910310717436460765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A002024 (n + 1)).toNat + 2 * A173786 n

end

end A084468.P3910310717436460765

namespace A084468

/-- `A000051(A002024(n+1))+2*A173786(n)` -/
def P3910310717436460765.Spec : Prop :=
  ∀ n, P3910310717436460765.a n = A084468 (n + 1)

end A084468

/-! ## A084468.P1094559937240258609

`2*A340161(n+1)-1`
-/

namespace A084468.P1094559937240258609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A340161 (n + 1) - 1

end

end A084468.P1094559937240258609

namespace A084468

/-- `2*A340161(n+1)-1` -/
def P1094559937240258609.Spec : Prop :=
  ∀ n, P1094559937240258609.a n = A084468 (n + 1)

end A084468

/-! ## A084468.P1839827601190286015

`A340161(n+1)+A018900(n+1)`
-/

namespace A084468.P1839827601190286015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340161 (n + 1) + A018900 (n + 1)

end

end A084468.P1839827601190286015

namespace A084468

/-- `A340161(n+1)+A018900(n+1)` -/
def P1839827601190286015.Spec : Prop :=
  ∀ n, P1839827601190286015.a n = A084468 (n + 1)

end A084468

/-! ## A084468.P4142523131178479735

`A173786(A127739(n+1))+2*A173786(n)`
-/

namespace A084468.P4142523131178479735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 (A127739 (n + 1)).toNat + 2 * A173786 n

end

end A084468.P4142523131178479735

namespace A084468

/-- `A173786(A127739(n+1))+2*A173786(n)` -/
def P4142523131178479735.Spec : Prop :=
  ∀ n, P4142523131178479735.a n = A084468 (n + 1)

end A084468

/-! ## A084468.P9317630324578363319

`2*A173786(A007401(n+1))+1`
-/

namespace A084468.P9317630324578363319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173786 (A007401 (n + 1)).toNat + 1

end

end A084468.P9317630324578363319

namespace A084468

/-- `2*A173786(A007401(n+1))+1` -/
def P9317630324578363319.Spec : Prop :=
  ∀ n, P9317630324578363319.a n = A084468 (n + 1)

end A084468

/-! ## A084468.P17803206739466272376

`A018900(A014132(n+1)+1)+1`
-/

namespace A084468.P17803206739466272376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (A014132 (n + 1) + 1).toNat + 1

end

end A084468.P17803206739466272376

namespace A084468

/-- `A018900(A014132(n+1)+1)+1` -/
def P17803206739466272376.Spec : Prop :=
  ∀ n, P17803206739466272376.a n = A084468 (n + 1)

end A084468

/-! ## A084468.P8653295768124735509

`A340161(A080036(n+1))`
-/

namespace A084468.P8653295768124735509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340161 (A080036 (n + 1)).toNat

end

end A084468.P8653295768124735509

namespace A084468

/-- `A340161(A080036(n+1))` -/
def P8653295768124735509.Spec : Prop :=
  ∀ n, P8653295768124735509.a n = A084468 (n + 1)

end A084468

/-! ## A084468.P16856886460108618751

`A340161(A002024(n+1)+n+2)`
-/

namespace A084468.P16856886460108618751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340161 (A002024 (n + 1) + (n + 2 : ℤ)).toNat

end

end A084468.P16856886460108618751

namespace A084468

/-- `A340161(A002024(n+1)+n+2)` -/
def P16856886460108618751.Spec : Prop :=
  ∀ n, P16856886460108618751.a n = A084468 (n + 1)

end A084468

/-! ## A084468.P15786123216700324753

`A173786(A007401(comp[∑[n]]+1))+1`
-/

namespace A084468.P15786123216700324753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 (A007401 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat + 1

end

end A084468.P15786123216700324753

namespace A084468

/-- `A173786(A007401(comp[∑[n]]+1))+1` -/
def P15786123216700324753.Spec : Prop :=
  ∀ n, P15786123216700324753.a n = A084468 (n + 1)

end A084468

/-! ## A084468.P763301470600880943

`∩[A014311(n+1), A340161(n)]`
-/

namespace A084468.P763301470600880943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340161 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084468.P763301470600880943

namespace A084468

/-- `∩[A014311(n+1), A340161(n)]` -/
def P763301470600880943.Spec : Prop :=
  ∀ n, (P763301470600880943.a n : ℤ) = A084468 (n + 1)

end A084468

/-! ## A084468.P7686595859056909226

`record[gcd(A014311(n+1), A056558(n))]`
-/

namespace A084468.P7686595859056909226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014311 (n + 1)) (A056558 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084468.P7686595859056909226

namespace A084468

/-- `record[gcd(A014311(n+1), A056558(n))]` -/
def P7686595859056909226.Spec : Prop :=
  ∀ n, (P7686595859056909226.a n : ℤ) = A084468 (n + 1)

end A084468

/-! ## A084468.P14897029910277357137

`A084467(A084470(n+1))`
-/

namespace A084468.P14897029910277357137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084467 (A084470 (n + 1)).toNat

end

end A084468.P14897029910277357137

namespace A084468

/-- `A084467(A084470(n+1))` -/
def P14897029910277357137.Spec : Prop :=
  ∀ n, P14897029910277357137.a n = A084468 (n + 1)

end A084468

/-! ## A084468.P10163187696686556893

`A084457(A084464(A084470(A084470(A084469(n+1)))))`
-/

namespace A084468.P10163187696686556893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084457 (A084464 (A084470 (A084470 (A084469 (n + 1)).toNat).toNat).toNat).toNat

end

end A084468.P10163187696686556893

namespace A084468

/-- `A084457(A084464(A084470(A084470(A084469(n+1)))))` -/
def P10163187696686556893.Spec : Prop :=
  ∀ n, P10163187696686556893.a n = A084468 (n + 1)

end A084468

/-! ## A084468.P1963732168368842104

`2*A048679(A179242(n+1))+1`
-/

namespace A084468.P1963732168368842104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048679 (A179242 (n + 1)).toNat + 1

end

end A084468.P1963732168368842104

namespace A084468

/-- `2*A048679(A179242(n+1))+1` -/
def P1963732168368842104.Spec : Prop :=
  ∀ n, P1963732168368842104.a n = A084468 (n + 1)

end A084468

/-! ## A084468.P9115856913797780088

`2*A066884(∑[n+2])+1`
-/

namespace A084468.P9115856913797780088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066884 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A084468.P9115856913797780088

namespace A084468

/-- `2*A066884(∑[n+2])+1` -/
def P9115856913797780088.Spec : Prop :=
  ∀ n, P9115856913797780088.a n = A084468 (n + 1)

end A084468

/-! ## A084468.P11480145442496477479

`∩[A014311(n+1), A074204(n+1)]`
-/

namespace A084468.P11480145442496477479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084468.P11480145442496477479

namespace A084468

/-- `∩[A014311(n+1), A074204(n+1)]` -/
def P11480145442496477479.Spec : Prop :=
  ∀ n, (P11480145442496477479.a n : ℤ) = A084468 (n + 1)

end A084468

/-!
# A084471: Change 0 to 00 in binary representation of n.

The programs for A084471, the canonical program `A084471.P2112546054661529381` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084471 has offset 1).

The definition of A084471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084471.P2112546054661529381

`A088697(n+1)-A124108(A035327(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A084471

/-- `A088697(n+1)-A124108(A035327(n+1))` -/
def P2112546054661529381.Spec : Prop :=
  ∀ n, P2112546054661529381.a n = A084471 (n + 1)

theorem P2112546054661529381.correct : P2112546054661529381.Spec := by
  intro n
  simp only [A084471, Nat.add_sub_cancel]

end A084471

/-! ## A084471.P2219408576534779477

`A048679(A054204(n+1))`
-/

namespace A084471.P2219408576534779477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (A054204 (n + 1)).toNat

end

end A084471.P2219408576534779477

namespace A084471

/-- `A048679(A054204(n+1))` -/
def P2219408576534779477.Spec : Prop :=
  ∀ n, P2219408576534779477.a n = A084471 (n + 1)

end A084471

/-! ## A084471.P10217281426919663066

`A048679(A062879(n+2))/2`
-/

namespace A084471.P10217281426919663066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048679 (A062879 (n + 2)).toNat : ℚ) / 2

end

end A084471.P10217281426919663066

namespace A084471

/-- `A048679(A062879(n+2))/2` -/
def P10217281426919663066.Spec : Prop :=
  ∀ n, P10217281426919663066.a n = (A084471 (n + 1) : ℚ)

end A084471

/-! ## A084471.P14649503133328287161

`A048679(eq[A005378(n), A309076(n)])`
-/

namespace A084471.P14649503133328287161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A084471.P14649503133328287161

namespace A084471

/-- `A048679(eq[A005378(n), A309076(n)])` -/
def P14649503133328287161.Spec : Prop :=
  ∀ n, P14649503133328287161.a n = A084471 (n + 1)

end A084471

/-! ## A084471.P5870833657936459693

`A006519(n+1)²*A000265(A000265(a(n-1)+1)+1)` with `a(0)=1`
-/

namespace A084471.P5870833657936459693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006519 (n + 1) ^ 2 * A000265 (A000265 (a (n - 1) + 1).toNat + 1).toNat

end

end A084471.P5870833657936459693

namespace A084471

/-- `A006519(n+1)²*A000265(A000265(a(n-1)+1)+1)` -/
def P5870833657936459693.Spec : Prop :=
  ∀ n, P5870833657936459693.a n = A084471 (n + 1)

end A084471

/-! ## A084471.P12666289195688607158

`A006519(n+1)*A140472(a(n-1)+1)` with `a(0)=1`
-/

namespace A084471.P12666289195688607158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006519 (n + 1) * A140472 (a (n - 1) + 1).toNat

end

end A084471.P12666289195688607158

namespace A084471

/-- `A006519(n+1)*A140472(a(n-1)+1)` -/
def P12666289195688607158.Spec : Prop :=
  ∀ n, P12666289195688607158.a n = A084471 (n + 1)

end A084471

/-! ## A084471.P1371102928514028022

`A006519(n+1)²*A003602(a(n-1)+1)` with `a(0)=1`
-/

namespace A084471.P1371102928514028022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006519 (n + 1) ^ 2 * A003602 (a (n - 1) + 1).toNat

end

end A084471.P1371102928514028022

namespace A084471

/-- `A006519(n+1)²*A003602(a(n-1)+1)` -/
def P1371102928514028022.Spec : Prop :=
  ∀ n, P1371102928514028022.a n = A084471 (n + 1)

end A084471

/-! ## A084471.P586062690718104995

`A072650(A000695(n+1))`
-/

namespace A084471.P586062690718104995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072650 (A000695 (n + 1)).toNat

end

end A084471.P586062690718104995

namespace A084471

/-- `A072650(A000695(n+1))` -/
def P586062690718104995.Spec : Prop :=
  ∀ n, P586062690718104995.a n = A084471 (n + 1)

end A084471

/-! ## A084471.P16295243137169973806

`A284460(A088697(n+1))`
-/

namespace A084471.P16295243137169973806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284460 (A088697 (n + 1)).toNat

end

end A084471.P16295243137169973806

namespace A084471

/-- `A284460(A088697(n+1))` -/
def P16295243137169973806.Spec : Prop :=
  ∀ n, P16295243137169973806.a n = A084471 (n + 1)

end A084471

/-! ## A084471.P16454872211719873500

`filter[A048679(n), A086747(#)]`
-/

namespace A084471.P16454872211719873500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086747 (f1 j).toNat = 1) n)

end

end A084471.P16454872211719873500

namespace A084471

/-- `filter[A048679(n), A086747(#)]` -/
def P16454872211719873500.Spec : Prop :=
  ∀ n, P16454872211719873500.a n = A084471 (n + 1)

end A084471

/-! ## A084471.P282571216672145033

`A087808(A054238(∑[n+1]))`
-/

namespace A084471.P282571216672145033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A054238 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A084471.P282571216672145033

namespace A084471

/-- `A087808(A054238(∑[n+1]))` -/
def P282571216672145033.Spec : Prop :=
  ∀ n, P282571216672145033.a n = A084471 (n + 1)

end A084471

/-! ## A084471.P82352788364025658

`A006519((n+1)²)*A003602(a(n-1)+1)` with `a(0)=1`
-/

namespace A084471.P82352788364025658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006519 ((n + 1) ^ 2) * A003602 (a (n - 1) + 1).toNat

end

end A084471.P82352788364025658

namespace A084471

/-- `A006519((n+1)²)*A003602(a(n-1)+1)` -/
def P82352788364025658.Spec : Prop :=
  ∀ n, P82352788364025658.a n = A084471 (n + 1)

end A084471

/-! ## A084471.P2109445888168181634

`A006519((n+1)²)*A000265(A000265(a(n-1)+1)+1)` with `a(0)=1`
-/

namespace A084471.P2109445888168181634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006519 ((n + 1) ^ 2) * A000265 (A000265 (a (n - 1) + 1).toNat + 1).toNat

end

end A084471.P2109445888168181634

namespace A084471

/-- `A006519((n+1)²)*A000265(A000265(a(n-1)+1)+1)` -/
def P2109445888168181634.Spec : Prop :=
  ∀ n, P2109445888168181634.a n = A084471 (n + 1)

end A084471

/-!
# A084472: Write n in binary and replace 0 with 00.

The programs for A084472, the canonical program `A084472.P1373641878596819009` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084472 has offset 1).

The definition of A084472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084472.P1373641878596819009

`A007088(A084471(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A084472

/-- `A007088(A084471(n+1))` -/
def P1373641878596819009.Spec : Prop :=
  ∀ n, P1373641878596819009.a n = A084472 (n + 1)

theorem P1373641878596819009.correct : P1373641878596819009.Spec := by
  intro n
  simp only [A084472, Nat.add_sub_cancel]

end A084472

/-! ## A084472.P10896023858394485442

`A001202(A098871(n+1))`
-/

namespace A084472.P10896023858394485442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (A098871 (n + 1)).toNat

end

end A084472.P10896023858394485442

namespace A084472

/-- `A001202(A098871(n+1))` -/
def P10896023858394485442.Spec : Prop :=
  ∀ n, P10896023858394485442.a n = A084472 (n + 1)

end A084472

/-! ## A084472.P1587953603796271303

`A001202(A000695(n+1)+1)`
-/

namespace A084472.P1587953603796271303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (A000695 (n + 1) + 1).toNat

end

end A084472.P1587953603796271303

namespace A084472

/-- `A001202(A000695(n+1)+1)` -/
def P1587953603796271303.Spec : Prop :=
  ∀ n, P1587953603796271303.a n = A084472 (n + 1)

end A084472

/-! ## A084472.P957032583149949381

`A185544(2*A084471(n+1))`
-/

namespace A084472.P957032583149949381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A084471 (n + 1)).toNat

end

end A084472.P957032583149949381

namespace A084472

/-- `A185544(2*A084471(n+1))` -/
def P957032583149949381.Spec : Prop :=
  ∀ n, P957032583149949381.a n = A084472 (n + 1)

end A084472

/-! ## A084472.P16171727746436203512

`A001202(record[A098871(abs(1-n))])`
-/

namespace A084472.P16171727746436203512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098871 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A084472.P16171727746436203512

namespace A084472

/-- `A001202(record[A098871(abs(1-n))])` -/
def P16171727746436203512.Spec : Prop :=
  ∀ n, P16171727746436203512.a n = A084472 (n + 1)

end A084472

/-!
# A084473: Replace 0 with 0000 in binary representation of n.

The programs for A084473, the canonical program `A084473.P18183717668493917912` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084473 has offset 1).

The definition of A084473 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084471, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A084473.P18183717668493917912

`A084471(A084471(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A084473

/-- `A084471(A084471(n+1))` -/
def P18183717668493917912.Spec : Prop :=
  ∀ n, P18183717668493917912.a n = A084473 (n + 1)

theorem P18183717668493917912.correct : P18183717668493917912.Spec := by
  intro n
  simp only [A084473, Nat.add_sub_cancel]

end A084473

/-! ## A084473.P13604155742224305218

`A340666(A052905(n+3))`
-/

namespace A084473.P13604155742224305218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340666 (A052905 (n + 3)).toNat

end

end A084473.P13604155742224305218

namespace A084473

/-- `A340666(A052905(n+3))` -/
def P13604155742224305218.Spec : Prop :=
  ∀ n, P13604155742224305218.a n = A084473 (n + 1)

end A084473

/-! ## A084473.P15832549094042873902

`A340666(A055999(n+3)+1)`
-/

namespace A084473.P15832549094042873902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340666 (A055999 (n + 3) + 1).toNat

end

end A084473.P15832549094042873902

namespace A084473

/-- `A340666(A055999(n+3)+1)` -/
def P15832549094042873902.Spec : Prop :=
  ∀ n, P15832549094042873902.a n = A084473 (n + 1)

end A084473

/-! ## A084473.P16494137727439770472

`A340666(A027379(n+4)-2)`
-/

namespace A084473.P16494137727439770472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340666 (A027379 (n + 4) - 2).toNat

end

end A084473.P16494137727439770472

namespace A084473

/-- `A340666(A027379(n+4)-2)` -/
def P16494137727439770472.Spec : Prop :=
  ∀ n, P16494137727439770472.a n = A084473 (n + 1)

end A084473

/-! ## A084473.P15419747500929176312

`A340666(n+2+A000096(n+4))`
-/

namespace A084473.P15419747500929176312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340666 ((n + 2 : ℤ) + A000096 (n + 4)).toNat

end

end A084473.P15419747500929176312

namespace A084473

/-- `A340666(n+2+A000096(n+4))` -/
def P15419747500929176312.Spec : Prop :=
  ∀ n, P15419747500929176312.a n = A084473 (n + 1)

end A084473

/-! ## A084473.P1476379545880495557

`A340666(2*(n+3)+A000217(n+4))`
-/

namespace A084473.P1476379545880495557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340666 ((2 * (n + 3) : ℤ) + A000217 (n + 4)).toNat

end

end A084473.P1476379545880495557

namespace A084473

/-- `A340666(2*(n+3)+A000217(n+4))` -/
def P1476379545880495557.Spec : Prop :=
  ∀ n, P1476379545880495557.a n = A084473 (n + 1)

end A084473

/-! ## A084473.P6052924811164770576

`A340666(A008585(n+3)+A000124(n+3))`
-/

namespace A084473.P6052924811164770576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340666 (A008585 (n + 3) + A000124 (n + 3)).toNat

end

end A084473.P6052924811164770576

namespace A084473

/-- `A340666(A008585(n+3)+A000124(n+3))` -/
def P6052924811164770576.Spec : Prop :=
  ∀ n, P6052924811164770576.a n = A084473 (n + 1)

end A084473

/-!
# A084474: Write n in binary and replace 0 with 0000.

The programs for A084474, the canonical program `A084474.P8230348332531806502` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084474 has offset 1).

The definition of A084474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084474.P8230348332531806502

`A084472(A084471(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A084474

/-- `A084472(A084471(n+1))` -/
def P8230348332531806502.Spec : Prop :=
  ∀ n, P8230348332531806502.a n = A084474 (n + 1)

theorem P8230348332531806502.correct : P8230348332531806502.Spec := by
  intro n
  simp only [A084474, Nat.add_sub_cancel]

end A084474

/-! ## A084474.P7774882063325395988

`A007088(A084473(n+1))`
-/

namespace A084474.P7774882063325395988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A084473 (n + 1)).toNat

end

end A084474.P7774882063325395988

namespace A084474

/-- `A007088(A084473(n+1))` -/
def P7774882063325395988.Spec : Prop :=
  ∀ n, P7774882063325395988.a n = A084474 (n + 1)

end A084474

/-! ## A084474.P2347186098116227085

`A185544(2*A084473(n+1))`
-/

namespace A084474.P2347186098116227085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A084473 (n + 1)).toNat

end

end A084474.P2347186098116227085

namespace A084474

/-- `A185544(2*A084473(n+1))` -/
def P2347186098116227085.Spec : Prop :=
  ∀ n, P2347186098116227085.a n = A084474 (n + 1)

end A084474

/-! ## A084474.P13771956809869800359

`A169967(A084473(n+1)+1)/4`
-/

namespace A084474.P13771956809869800359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169967 (A084473 (n + 1) + 1).toNat : ℚ) / 4

end

end A084474.P13771956809869800359

namespace A084474

/-- `A169967(A084473(n+1)+1)/4` -/
def P13771956809869800359.Spec : Prop :=
  ∀ n, P13771956809869800359.a n = (A084474 (n + 1) : ℚ)

end A084474

/-! ## A084474.P17018586621051129930

`A185544(A084473(n+1)+A084473(n+1))`
-/

namespace A084474.P17018586621051129930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A084473 (n + 1) + A084473 (n + 1)).toNat

end

end A084474.P17018586621051129930

namespace A084474

/-- `A185544(A084473(n+1)+A084473(n+1))` -/
def P17018586621051129930.Spec : Prop :=
  ∀ n, P17018586621051129930.a n = A084474 (n + 1)

end A084474

/-!
# A084476: Least k such that 10^(2n-1)+k is a brilliant number.

The programs for A084476, there is no canonical definition to state claims against.
-/

/-! ## A084476.P7232369954086773163

`A084475(Δ[n²])`
-/

namespace A084476.P7232369954086773163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084475 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A084476.P7232369954086773163

/-! ## A084476.P6140070117481226988

`or(char[1], A084475(2*n+1))`
-/

namespace A084476.P6140070117481226988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A084475 (2 * n + 1))

end

end A084476.P6140070117481226988

/-! ## A084476.P6575520280333585535

`A084475(2*n+1)%A016780(n)`
-/

namespace A084476.P6575520280333585535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084475 (2 * n + 1)) (A016780 n)

end

end A084476.P6575520280333585535

/-! ## A084476.P7445841319597917195

`lcm(A033999(n), A084475(2*n+1))`
-/

namespace A084476.P7445841319597917195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A084475 (2 * n + 1))

end

end A084476.P7445841319597917195

/-! ## A084476.P12639815475281074211

`or(A084475(2*n+1), A180160(n))`
-/

namespace A084476.P12639815475281074211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A084475 (2 * n + 1)) (A180160 n)

end

end A084476.P12639815475281074211

/-!
# A084477: Number of fault-free tilings of a 4 X 3n rectangle with right trominoes.

The programs for A084477, the canonical program `A084477.P6361397214842268598` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084477 has offset 1).

The definition of A084477 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084477.P6361397214842268598

`6*a(n-1)` with `a(0)=4, a(1)=2, a(2)=8`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A084477

/-- `6*a(n-1)` -/
def P6361397214842268598.Spec : Prop :=
  ∀ n, (P6361397214842268598.a n : ℤ) = A084477 (n + 1)

theorem P6361397214842268598.correct : P6361397214842268598.Spec := by
  intro n
  simp only [A084477, Nat.add_sub_cancel]

end A084477

/-! ## A084477.P10861508639280971864

`ogf((-4+22x+4x^2)/(-1+6x))`
-/

namespace A084477.P10861508639280971864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -22, -4] [1, -6] n

end

end A084477.P10861508639280971864

namespace A084477

/-- `ogf((-4+22x+4x^2)/(-1+6x))` -/
def P10861508639280971864.Spec : Prop :=
  ∀ n, P10861508639280971864.a n = A084477 (n + 1)

end A084477

/-! ## A084477.P16819426793377213278

`a(n-1)/(1-5/6)` with `a(0)=4, a(1)=2, a(2)=8`
-/

namespace A084477.P16819426793377213278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 2, 8] fun n a =>
  a (n - 1) / (1 - (5 : ℚ) / 6)

end

end A084477.P16819426793377213278

namespace A084477

/-- `a(n-1)/(1-5/6)` -/
def P16819426793377213278.Spec : Prop :=
  ∀ n, P16819426793377213278.a n = (A084477 (n + 1) : ℚ)

end A084477

/-! ## A084477.P16052289483250688394

`a(n-1)+lcm(5, a(n-1))` with `a(0)=4, a(1)=2, a(2)=8`
-/

namespace A084477.P16052289483250688394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 2, 8] fun n a =>
  a (n - 1) + Nat.lcm 5 (a (n - 1))

end

end A084477.P16052289483250688394

namespace A084477

/-- `a(n-1)+lcm(5, a(n-1))` -/
def P16052289483250688394.Spec : Prop :=
  ∀ n, (P16052289483250688394.a n : ℤ) = A084477 (n + 1)

end A084477

/-! ## A084477.P9145066410939727950

`A020639(A001316(n))*A067411(abs(1-n))`
-/

namespace A084477.P9145066410939727950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001316 n).toNat * A067411 |1 - (n : ℤ)|.toNat

end

end A084477.P9145066410939727950

namespace A084477

/-- `A020639(A001316(n))*A067411(abs(1-n))` -/
def P9145066410939727950.Spec : Prop :=
  ∀ n, P9145066410939727950.a n = A084477 (n + 1)

end A084477

/-! ## A084477.P14050610564574735852

`A020639(A008458(n))*A067411(abs(1-n))`
-/

namespace A084477.P14050610564574735852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat * A067411 |1 - (n : ℤ)|.toNat

end

end A084477.P14050610564574735852

namespace A084477

/-- `A020639(A008458(n))*A067411(abs(1-n))` -/
def P14050610564574735852.Spec : Prop :=
  ∀ n, P14050610564574735852.a n = A084477 (n + 1)

end A084477

/-! ## A084477.P1862248818715955387

`A020639(A022144(n))*A067411(abs(1-n))`
-/

namespace A084477.P1862248818715955387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A022144 n).toNat * A067411 |1 - (n : ℤ)|.toNat

end

end A084477.P1862248818715955387

namespace A084477

/-- `A020639(A022144(n))*A067411(abs(1-n))` -/
def P1862248818715955387.Spec : Prop :=
  ∀ n, P1862248818715955387.a n = A084477 (n + 1)

end A084477

/-! ## A084477.P3878201961771270291

`A025579(n+1)*A059268(A052905(n+1))`
-/

namespace A084477.P3878201961771270291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025579 (n + 1) * A059268 (A052905 (n + 1)).toNat

end

end A084477.P3878201961771270291

namespace A084477

/-- `A025579(n+1)*A059268(A052905(n+1))` -/
def P3878201961771270291.Spec : Prop :=
  ∀ n, P3878201961771270291.a n = A084477 (n + 1)

end A084477

/-! ## A084477.P6014764753950244358

`lcm(a(n-1), A100851(A046691(n)))` with `a(0)=4, a(1)=2`
-/

namespace A084477.P6014764753950244358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 2] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A100851 (A046691 n).toNat)

end

end A084477.P6014764753950244358

namespace A084477

/-- `lcm(a(n-1), A100851(A046691(n)))` -/
def P6014764753950244358.Spec : Prop :=
  ∀ n, (P6014764753950244358.a n : ℤ) = A084477 (n + 1)

end A084477

/-!
# A084478: Number of tilings of a 5 X 3n rectangle with right trominoes.

The programs for A084478, there is no canonical definition to state claims against.
-/

/-! ## A084478.P1237637109110844988

`A351322(A167499(n+4))`
-/

namespace A084478.P1237637109110844988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351322 (A167499 (n + 4)).toNat

end

end A084478.P1237637109110844988

/-! ## A084478.P18309755174417669150

`A351322(eq[5, A002262(n)])`
-/

namespace A084478.P18309755174417669150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084478.P18309755174417669150

/-! ## A084478.P10742207955308299004

`A351322(eq[5, A141169(n)])`
-/

namespace A084478.P10742207955308299004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084478.P10742207955308299004

/-! ## A084478.P6926160683022800315

`A351322(eq[32, A059268(n)])`
-/

namespace A084478.P6926160683022800315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084478.P6926160683022800315

/-! ## A084478.P11068780681245052366

`A351322(eq[5, A144328(n+1)])`
-/

namespace A084478.P11068780681245052366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084478.P11068780681245052366

/-!
# A084480: Number of tilings of a 4 X 2n rectangle with L tetrominoes.

The programs for A084480, there is no canonical definition to state claims against.
-/

/-! ## A084480.P15364112692173835120

`A004526(A257098(n+1)+ceil(19^(n/2))+n)`
-/

namespace A084480.P15364112692173835120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A257098 (n + 1) + ⌈(19 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌉ + (n : ℤ)).toNat

end

end A084480.P15364112692173835120

/-! ## A084480.P11079987629718205863

`A004526(A257099(n+1)+ceil(19^(n/2))+n)`
-/

namespace A084480.P11079987629718205863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A257099 (n + 1) + ⌈(19 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌉ + (n : ℤ)).toNat

end

end A084480.P11079987629718205863

/-!
# A084481: Number of fault-free tilings of a 4 X 2n rectangle with L tetrominoes.

The programs for A084481, the canonical program `A084481.P7721468087049561525` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084481 has offset 1).

The definition of A084481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084481.P7721468087049561525

`2*a(n-1)+a(n-3)` with `a(0)=2, a(1)=6, a(2)=10, a(3)=18, a(4)=38, a(5)=84`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A084481

/-- `2*a(n-1)+a(n-3)` -/
def P7721468087049561525.Spec : Prop :=
  ∀ n, (P7721468087049561525.a n : ℤ) = A084481 (n + 1)

theorem P7721468087049561525.correct : P7721468087049561525.Spec := by
  intro n
  simp only [A084481, Nat.add_sub_cancel]

end A084481

/-! ## A084481.P1881740052979257839

`ogf((-2-2x+2x^2+4x^3+4x^4+2x^5)/(-1+2x+x^3))`
-/

namespace A084481.P1881740052979257839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, -2, -4, -4, -2] [1, -2, 0, -1] n

end

end A084481.P1881740052979257839

namespace A084481

/-- `ogf((-2-2x+2x^2+4x^3+4x^4+2x^5)/(-1+2x+x^3))` -/
def P1881740052979257839.Spec : Prop :=
  ∀ n, P1881740052979257839.a n = A084481 (n + 1)

end A084481

/-! ## A084481.P1808242174791209670

`or(1, A342516((n+1)²)+2%(n+2))+1`
-/

namespace A084481.P1808242174791209670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A342516 ((n + 1) ^ 2) + ((2 % (n + 2) : ℕ) : ℤ)) + 1

end

end A084481.P1808242174791209670

namespace A084481

/-- `or(1, A342516((n+1)²)+2%(n+2))+1` -/
def P1808242174791209670.Spec : Prop :=
  ∀ n, P1808242174791209670.a n = A084481 (n + 1)

end A084481

/-!
# A084483: If the rightmost block of zeros in binary representation of n has an even length, then delete one 0, otherwise insert one 0 in this block.

The programs for A084483, there is no canonical definition to state claims against.
-/

/-! ## A084483.P4686637981385417066

`A000265(2^n)*A266150(A199343(n))`
-/

namespace A084483.P4686637981385417066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 ^ n) * A266150 (A199343 n).toNat

end

end A084483.P4686637981385417066

/-! ## A084483.P12903280126514708250

`A053866(2^n)*A266150(A199343(n))`
-/

namespace A084483.P12903280126514708250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (2 ^ n) * A266150 (A199343 n).toNat

end

end A084483.P12903280126514708250

/-! ## A084483.P14792589794989316968

`A000035(A000213(n))*A266150(A199343(n))`
-/

namespace A084483.P14792589794989316968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000213 n).toNat * A266150 (A199343 n).toNat

end

end A084483.P14792589794989316968

/-! ## A084483.P12256193801602677289

`A001222(A014210(n))*A266150(A199343(n))`
-/

namespace A084483.P12256193801602677289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014210 n).toNat * A266150 (A199343 n).toNat

end

end A084483.P12256193801602677289

/-! ## A084483.P5393090405204109924

`A266150(A199343(n))/A001222(A014210(n+1))`
-/

namespace A084483.P5393090405204109924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266150 (A199343 n).toNat : ℚ) / (A001222 (A014210 (n + 1)).toNat : ℚ)

end

end A084483.P5393090405204109924

/-!
# A084484: a(n) = A007088(A084483(n)).

The programs for A084484, there is no canonical definition to state claims against.
-/

/-! ## A084484.P14453898588107523042

`A007088(A084483(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084484.P14453898588107523042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A084483 (n + 1)).toNat

end

end A084484.P14453898588107523042

/-! ## A084484.P13617819980911809223

`A185544(2*A084483(n+1))`
-/

namespace A084484.P13617819980911809223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A084483 (n + 1)).toNat

end

end A084484.P13617819980911809223

/-! ## A084484.P14508502360228175753

`A014681(A014681(A007088(A266150(n+1))))`
-/

namespace A084484.P14508502360228175753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A014681 (A007088 (A266150 (n + 1)).toNat).toNat).toNat

end

end A084484.P14508502360228175753

/-! ## A084484.P940539624644292545

`A014681(A014681(A007088(A266151(A162853(n+1)))))`
-/

namespace A084484.P940539624644292545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A014681 (A007088 (A266151 (A162853 (n + 1)).toNat).toNat).toNat).toNat

end

end A084484.P940539624644292545

/-!
# A084485: Number of 3 X n 0-1 matrices which have n+2 1's and have no zero rows or zero columns.

The programs for A084485, the canonical program `A084485.P15655766292584150941` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084485 has offset 1).

The definition of A084485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084485.P15655766292584150941

`(n+1)*(4*(3*(n+1)-1)*3^(n+1)-9*n*2^(n+1))/24`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A084485

/-- `(n+1)*(4*(3*(n+1)-1)*3^(n+1)-9*n*2^(n+1))/24` -/
def P15655766292584150941.Spec : Prop :=
  ∀ n, P15655766292584150941.a n = (A084485 (n + 1) : ℚ)

end A084485

/-!
# A084487: Prime(n)+q, where q is the next prime such that q mod 4 = prime(n) mod 4.

The programs for A084487, there is no canonical definition to state claims against.
-/

/-! ## A084487.P11163525022009845215

`A354200(n+2)+A000040(n+2)`
-/

namespace A084487.P11163525022009845215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354200 (n + 2) + A000040 (n + 2)

end

end A084487.P11163525022009845215

/-! ## A084487.P9022015881367714426

`A108546(A332805(n+2)+2)+A000040(n+2)`
-/

namespace A084487.P9022015881367714426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108546 (A332805 (n + 2) + 2).toNat + A000040 (n + 2)

end

end A084487.P9022015881367714426

/-! ## A084487.P7835972066565107736

`A108546(A332805(n+2)+2)+p?[A004273(n)]`
-/

namespace A084487.P7835972066565107736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108546 (A332805 (n + 2) + 2).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084487.P7835972066565107736

/-! ## A084487.P12357961354603325368

`A108546(A332805(n+2)+2)+p?[A005408(n)]`
-/

namespace A084487.P12357961354603325368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108546 (A332805 (n + 2) + 2).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084487.P12357961354603325368

/-! ## A084487.P7584267311243251442

`A108546(A332805(n+2)+2)+p?[A093178(n)]`
-/

namespace A084487.P7584267311243251442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108546 (A332805 (n + 2) + 2).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084487.P7584267311243251442

/-! ## A084487.P4403752499327359846

`A108546(A332805(n+2)+2)+p?[A120070(n+2)]`
-/

namespace A084487.P4403752499327359846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108546 (A332805 (n + 2) + 2).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084487.P4403752499327359846

/-!
# A084488: Prime(n)+q, where q is the next prime such that q mod 4 = (prime(n)+2) mod 4.

The programs for A084488, the canonical program `A084488.P2138741234622189971` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084488 has offset 2).

The definition of A084488 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084488.P2138741234622189971

`A002145(A267098(n+1)+1)+A002144(A267097(n+1)+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A084488

/-- `A002145(A267098(n+1)+1)+A002144(A267097(n+1)+1)` -/
def P2138741234622189971.Spec : Prop :=
  ∀ n, P2138741234622189971.a n = A084488 (n + 2)

theorem P2138741234622189971.correct : P2138741234622189971.Spec := by
  intro n
  simp only [A084488, Nat.add_sub_cancel]

end A084488

/-! ## A084488.P6477945324073982956

`record[4*(A219237(2*n+3)+1)]`
-/

namespace A084488.P6477945324073982956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A219237 (2 * n + 3) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084488.P6477945324073982956

namespace A084488

/-- `record[4*(A219237(2*n+3)+1)]` -/
def P6477945324073982956.Spec : Prop :=
  ∀ n, P6477945324073982956.a n = A084488 (n + 2)

end A084488

/-! ## A084488.P9255776559805948447

`4*A053475(A026597(n))`
-/

namespace A084488.P9255776559805948447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A053475 (A026597 n).toNat

end

end A084488.P9255776559805948447

namespace A084488

/-- `4*A053475(A026597(n))` -/
def P9255776559805948447.Spec : Prop :=
  ∀ n, P9255776559805948447.a n = A084488 (n + 2)

end A084488

/-! ## A084488.P7141758165686417372

`4*A334097(A067771(n))`
-/

namespace A084488.P7141758165686417372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A334097 (A067771 n).toNat

end

end A084488.P7141758165686417372

namespace A084488

/-- `4*A334097(A067771(n))` -/
def P7141758165686417372.Spec : Prop :=
  ∀ n, P7141758165686417372.a n = A084488 (n + 2)

end A084488

/-! ## A084488.P9483132771279575590

`A210487(A210488(n+2))+A152075(n+2)`
-/

namespace A084488.P9483132771279575590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210487 (A210488 (n + 2)).toNat + A152075 (n + 2)

end

end A084488.P9483132771279575590

namespace A084488

/-- `A210487(A210488(n+2))+A152075(n+2)` -/
def P9483132771279575590.Spec : Prop :=
  ∀ n, P9483132771279575590.a n = A084488 (n + 2)

end A084488

/-!
# A084489: a(n) = n + A084501(n) - 3.

The programs for A084489, there is no canonical definition to state claims against.
-/

/-! ## A084489.P3735288410854067077

`n+1+A084501(n+1)-3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084489.P3735288410854067077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A084501 (n + 1) - 3

end

end A084489.P3735288410854067077

/-! ## A084489.P4566017325252327788

`A084501(n+1)-2+n`
-/

namespace A084489.P4566017325252327788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084501 (n + 1) - 2 + (n : ℤ)

end

end A084489.P4566017325252327788

/-! ## A084489.P16053006916168113718

`A084501(n+1)+A023444(n)`
-/

namespace A084489.P16053006916168113718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084501 (n + 1) + A023444 n

end

end A084489.P16053006916168113718

/-! ## A084489.P11875235525947570076

`A084501(n+1)-A022958(n)`
-/

namespace A084489.P11875235525947570076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084501 (n + 1) - A022958 n

end

end A084489.P11875235525947570076

/-! ## A084489.P16948418417170559995

`Δ[A073642(A084503(n))]+1+n`
-/

namespace A084489.P16948418417170559995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A084503 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A084489.P16948418417170559995

/-! ## A084489.P12290421897114997292

`Δ[A073642(A084503(n))+A000217(n)]`
-/

namespace A084489.P12290421897114997292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A084503 n).toNat + A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084489.P12290421897114997292

/-! ## A084489.P9086328850618863260

`Δ[A073642(A084503(n))+A000124(n)]`
-/

namespace A084489.P9086328850618863260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A084503 n).toNat + A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084489.P9086328850618863260

/-! ## A084489.P6741257037793074648

`A289207(A084501(n+1)+n)`
-/

namespace A084489.P6741257037793074648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A084501 (n + 1) + (n : ℤ)).toNat

end

end A084489.P6741257037793074648

/-! ## A084489.P4315231610030194988

`abs(A022958(A084501(n+1)+n))`
-/

namespace A084489.P4315231610030194988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022958 (A084501 (n + 1) + (n : ℤ)).toNat|

end

end A084489.P4315231610030194988

/-!
# A084490: Inverse permutation to A084489.

The programs for A084490, there is no canonical definition to state claims against.
-/

/-! ## A084490.P15649611810671216464

`A084492(2*(n+4))/2`
-/

namespace A084490.P15649611810671216464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084492 (2 * (n + 4)) : ℚ) / 2

end

end A084490.P15649611810671216464

/-! ## A084490.P5078161631589672990

`A004525(A084492(2*(n+4)))`
-/

namespace A084490.P5078161631589672990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A084492 (2 * (n + 4))).toNat

end

end A084490.P5078161631589672990

/-! ## A084490.P4209253298626819393

`A001057(A084492(2*(n+4))-1)`
-/

namespace A084490.P4209253298626819393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A084492 (2 * (n + 4)) - 1).toNat

end

end A084490.P4209253298626819393

/-! ## A084490.P13370982700626536059

`A003602(A084492(2*(n+4))-1)`
-/

namespace A084490.P13370982700626536059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A084492 (2 * (n + 4)) - 1).toNat

end

end A084490.P13370982700626536059

/-! ## A084490.P17333131619806278234

`A002265(2*A084492(2*(n+4)))`
-/

namespace A084490.P17333131619806278234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A084492 (2 * (n + 4))).toNat

end

end A084490.P17333131619806278234

/-!
# A084491: Permutation of Z, obtained by reflecting the juggling sequence A084501 from positive to negative numbers (with zero thrown at beat 0), folded to N with functions N2Z and Z2N.

The programs for A084491, there is no canonical definition to state claims against.
-/

/-! ## A084491.P12725240992111759442

`xor(char[xor(1, n)+1], A084492(A065190(n+1)))`
-/

namespace A084491.P12725240992111759442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A084492 (A065190 (n + 1)).toNat)

end

end A084491.P12725240992111759442

/-! ## A084491.P16108990116899419395

`xor(A057427(n), A084492(A065190(n+1)))`
-/

namespace A084491.P16108990116899419395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A084492 (A065190 (n + 1)).toNat)

end

end A084491.P16108990116899419395

/-! ## A084491.P13651494748348133865

`xor(A057428(n)², A084492(A065190(n+1)))`
-/

namespace A084491.P13651494748348133865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057428 n ^ 2) (A084492 (A065190 (n + 1)).toNat)

end

end A084491.P13651494748348133865

/-! ## A084491.P13390813561686152152

`A000007(n)+xor(1, A084492(A065190(n+1)))`
-/

namespace A084491.P13390813561686152152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + Int.xor 1 (A084492 (A065190 (n + 1)).toNat)

end

end A084491.P13390813561686152152

/-! ## A084491.P17981456765506597419

`xor(n/A028310(n), A084492(A065190(n+1)))`
-/

namespace A084491.P17981456765506597419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((n : ℚ) / (A028310 n : ℚ))) (A084492 (A065190 (n + 1)).toNat)

end

end A084491.P17981456765506597419

/-!
# A084492: Inverse permutation to A084491.

The programs for A084492, there is no canonical definition to state claims against.
-/

/-! ## A084492.P17038319155408090725

`xor(A057427(n), A084491(A065190(n+1)))`
-/

namespace A084492.P17038319155408090725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A084491 (A065190 (n + 1)).toNat)

end

end A084492.P17038319155408090725

/-! ## A084492.P14739577695648788100

`xor(A057428(n)², A084491(A065190(n+1)))`
-/

namespace A084492.P14739577695648788100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057428 n ^ 2) (A084491 (A065190 (n + 1)).toNat)

end

end A084492.P14739577695648788100

/-! ## A084492.P13019746810051205167

`A000007(n)+xor(1, A084491(A065190(n+1)))`
-/

namespace A084492.P13019746810051205167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + Int.xor 1 (A084491 (A065190 (n + 1)).toNat)

end

end A084492.P13019746810051205167

/-! ## A084492.P4755042973155676970

`xor(n/A028310(n), A084491(A065190(n+1)))`
-/

namespace A084492.P4755042973155676970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((n : ℚ) / (A028310 n : ℚ))) (A084491 (A065190 (n + 1)).toNat)

end

end A084492.P4755042973155676970

/-! ## A084492.P16993502261574105439

`xor(2*n-A004273(n), A084491(A065190(n+1)))`
-/

namespace A084492.P16993502261574105439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 * n : ℤ) - A004273 n) (A084491 (A065190 (n + 1)).toNat)

end

end A084492.P16993502261574105439

/-!
# A084493: a(n) = n + A084511(n) - 3.

The programs for A084493, there is no canonical definition to state claims against.
-/

/-! ## A084493.P10316506456519276384

`n+1+A084511(n+1)-3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084493.P10316506456519276384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A084511 (n + 1) - 3

end

end A084493.P10316506456519276384

/-! ## A084493.P17326203811758023227

`A084511(n+1)-2+n`
-/

namespace A084493.P17326203811758023227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084511 (n + 1) - 2 + (n : ℤ)

end

end A084493.P17326203811758023227

/-! ## A084493.P16759902131135348462

`A084511(n+1)+A023444(n)`
-/

namespace A084493.P16759902131135348462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084511 (n + 1) + A023444 n

end

end A084493.P16759902131135348462

/-! ## A084493.P12339898430397686991

`A084511(n+1)-A022958(n)`
-/

namespace A084493.P12339898430397686991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084511 (n + 1) - A022958 n

end

end A084493.P12339898430397686991

/-! ## A084493.P4089776142619422388

`Δ[A073642(A084513(n))]+1+n`
-/

namespace A084493.P4089776142619422388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A084513 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A084493.P4089776142619422388

/-! ## A084493.P3892605375026221507

`Δ[A073642(A084513(n))+A000124(n)]`
-/

namespace A084493.P3892605375026221507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A084513 n).toNat + A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084493.P3892605375026221507

/-! ## A084493.P702584119571392879

`A289207(A084511(n+1)+n)`
-/

namespace A084493.P702584119571392879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A084511 (n + 1) + (n : ℤ)).toNat

end

end A084493.P702584119571392879

/-! ## A084493.P6714126013459409020

`abs(A022958(A084511(n+1)+n))`
-/

namespace A084493.P6714126013459409020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022958 (A084511 (n + 1) + (n : ℤ)).toNat|

end

end A084493.P6714126013459409020

/-! ## A084493.P255120134485561297

`A023443(A084511(n+1)+A023443(n))`
-/

namespace A084493.P255120134485561297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A084511 (n + 1) + A023443 n).toNat

end

end A084493.P255120134485561297

/-! ## A084493.P12219350416349753681

`A023445(A084511(n+1)+1+n)`
-/

namespace A084493.P12219350416349753681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A084511 (n + 1) + 1 + (n : ℤ)).toNat

end

end A084493.P12219350416349753681

/-! ## A084493.P2010987595398383566

`A023447(A084511(n+1)+n+3)`
-/

namespace A084493.P2010987595398383566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A084511 (n + 1) + (n + 3 : ℤ)).toNat

end

end A084493.P2010987595398383566

/-!
# A084494: Inverse permutation to A084493.

The programs for A084494, there is no canonical definition to state claims against.
-/

/-! ## A084494.P17324890830429619133

`A084496(2*(n+4))/2`
-/

namespace A084494.P17324890830429619133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084496 (2 * (n + 4)) : ℚ) / 2

end

end A084494.P17324890830429619133

/-! ## A084494.P14704607862364939901

`floor((A084496(A065190(Δ[(n+4)²]))+1)/2)`
-/

namespace A084494.P14704607862364939901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 4) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084496 (A065190 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat + 1 : ℚ) / 2⌋

end

end A084494.P14704607862364939901

/-! ## A084494.P2896224325651877718

`A084498(n+1)-A003815(A084504(n))`
-/

namespace A084494.P2896224325651877718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084498 (n + 1) - A003815 (A084504 n).toNat

end

end A084494.P2896224325651877718

/-! ## A084494.P3243139535956253604

`A084498(A187829(n+1))`
-/

namespace A084494.P3243139535956253604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084498 (A187829 (n + 1)).toNat

end

end A084494.P3243139535956253604

/-! ## A084494.P2817778394950614135

`A084498(n+1)+A010815(A267696(n+1))`
-/

namespace A084494.P2817778394950614135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084498 (n + 1) + A010815 (A267696 (n + 1)).toNat

end

end A084494.P2817778394950614135

/-!
# A084495: Permutation of Z, obtained by reflecting the juggling sequence A084511 from positive to negative numbers (with zero thrown at beat 0), folded to N with functions N2Z and Z2N.

The programs for A084495, there is no canonical definition to state claims against.
-/

/-! ## A084495.P7411320799104977489

`xor(A057427(n), A084496(A065190(n+1)))`
-/

namespace A084495.P7411320799104977489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A084496 (A065190 (n + 1)).toNat)

end

end A084495.P7411320799104977489

/-! ## A084495.P7178367349445780604

`xor(-A057428(n), A084496(A065190(n+1)))`
-/

namespace A084495.P7178367349445780604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A057428 n) (A084496 (A065190 (n + 1)).toNat)

end

end A084495.P7178367349445780604

/-! ## A084495.P10074598604937216501

`xor(A062157(n)², A084496(A065190(n+1)))`
-/

namespace A084495.P10074598604937216501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A062157 n ^ 2) (A084496 (A065190 (n + 1)).toNat)

end

end A084495.P10074598604937216501

/-! ## A084495.P7540511387923525807

`xor(A000040(n+1)%2, A084496(A065190(n+1)))`
-/

namespace A084495.P7540511387923525807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A000040 (n + 1)) 2) (A084496 (A065190 (n + 1)).toNat)

end

end A084495.P7540511387923525807

/-! ## A084495.P2617975182304504171

`A084499(n+1)%A002764(n)`
-/

namespace A084495.P2617975182304504171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084499 (n + 1)) (A002764 n)

end

end A084495.P2617975182304504171

/-!
# A084496: Inverse permutation to A084495.

The programs for A084496, there is no canonical definition to state claims against.
-/

/-! ## A084496.P2587865394094773311

`xor(ceil(n/(n+1)), A084495(A065190(n+1)))`
-/

namespace A084496.P2587865394094773311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌈(n : ℚ) / (n + 1 : ℚ)⌉ (A084495 (A065190 (n + 1)).toNat)

end

end A084496.P2587865394094773311

/-! ## A084496.P8652725933069792876

`A084530(n+1)-A352515(A034512(n+1))`
-/

namespace A084496.P8652725933069792876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084530 (n + 1) - A352515 (A034512 (n + 1)).toNat

end

end A084496.P8652725933069792876

/-! ## A084496.P5501559623219879338

`A084530(n+1)%A002762(n)`
-/

namespace A084496.P5501559623219879338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084530 (n + 1)) (A002762 n)

end

end A084496.P5501559623219879338

/-! ## A084496.P16848457439449399258

`A084530(n+1)+A003131(A078667(n+1))`
-/

namespace A084496.P16848457439449399258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084530 (n + 1) + A003131 ((A078667 (n + 1)).toNat + 54)

end

end A084496.P16848457439449399258

/-! ## A084496.P10294175695644136357

`and(A084530(n+1), A359082(n+1))`
-/

namespace A084496.P10294175695644136357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084530 (n + 1)) (A359082 (n + 1))

end

end A084496.P10294175695644136357

/-!
# A084497: a(n) = n + A084521(n) - 3.

The programs for A084497, there is no canonical definition to state claims against.
-/

/-! ## A084497.P5923068521945013738

`n+1+A084521(n+1)-3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084497.P5923068521945013738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A084521 (n + 1) - 3

end

end A084497.P5923068521945013738

/-! ## A084497.P12823818150410538158

`A084521(n+1)-2+n`
-/

namespace A084497.P12823818150410538158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084521 (n + 1) - 2 + (n : ℤ)

end

end A084497.P12823818150410538158

/-! ## A084497.P11896036154446769983

`A084521(n+1)+A023444(n)`
-/

namespace A084497.P11896036154446769983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084521 (n + 1) + A023444 n

end

end A084497.P11896036154446769983

/-! ## A084497.P2034299907678401978

`A084521(n+1)-A022958(n)`
-/

namespace A084497.P2034299907678401978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084521 (n + 1) - A022958 n

end

end A084497.P2034299907678401978

/-! ## A084497.P9704864657408814107

`xor(-1, -(A084521(n+1)+A023443(n)))`
-/

namespace A084497.P9704864657408814107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-(A084521 (n + 1) + A023443 n))

end

end A084497.P9704864657408814107

/-! ## A084497.P1106497301786527638

`Δ[A073642(A084523(n))]+1+n`
-/

namespace A084497.P1106497301786527638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A084523 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A084497.P1106497301786527638

/-! ## A084497.P5013341355298822921

`Δ[A073642(A084523(n))+A000124(n)]`
-/

namespace A084497.P5013341355298822921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A084523 n).toNat + A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084497.P5013341355298822921

/-! ## A084497.P4940281246651885972

`Δ[A073642(A084523(n))+A000217(n)]`
-/

namespace A084497.P4940281246651885972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A084523 n).toNat + A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084497.P4940281246651885972

/-! ## A084497.P13063364611913048823

`A289207(A084521(n+1)+n)`
-/

namespace A084497.P13063364611913048823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A084521 (n + 1) + (n : ℤ)).toNat

end

end A084497.P13063364611913048823

/-! ## A084497.P8001515587875470428

`abs(A022958(A084521(n+1)+n))`
-/

namespace A084497.P8001515587875470428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022958 (A084521 (n + 1) + (n : ℤ)).toNat|

end

end A084497.P8001515587875470428

/-! ## A084497.P13478939692397333111

`A023446(A084521(n+1)+2+n)`
-/

namespace A084497.P13478939692397333111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A084521 (n + 1) + 2 + (n : ℤ)).toNat

end

end A084497.P13478939692397333111

/-!
# A084498: Inverse permutation to A084497.

The programs for A084498, there is no canonical definition to state claims against.
-/

/-! ## A084498.P13275066575035639514

`A084530(2*(n+4))/2`
-/

namespace A084498.P13275066575035639514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084530 (2 * (n + 4)) : ℚ) / 2

end

end A084498.P13275066575035639514

/-! ## A084498.P4102648072472657476

`A000463(A084530(2*(n+4))-1)`
-/

namespace A084498.P4102648072472657476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A084530 (2 * (n + 4)) - 1).toNat

end

end A084498.P4102648072472657476

/-! ## A084498.P12964352732155068213

`A001057(A084530(2*(n+4))-1)`
-/

namespace A084498.P12964352732155068213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A084530 (2 * (n + 4)) - 1).toNat

end

end A084498.P12964352732155068213

/-! ## A084498.P1990483919073243721

`A001281(A084530(2*(n+4)))`
-/

namespace A084498.P1990483919073243721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A084530 (2 * (n + 4))).toNat

end

end A084498.P1990483919073243721

/-! ## A084498.P8760035641803587402

`A004524(A084530(2*(n+4))+1)`
-/

namespace A084498.P8760035641803587402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A084530 (2 * (n + 4)) + 1).toNat

end

end A084498.P8760035641803587402

/-!
# A084499: Permutation of Z, obtained by reflecting the juggling sequence A084521 from positive to negative numbers (with zero thrown at beat 0), folded to N with functions N2Z and Z2N.

The programs for A084499, there is no canonical definition to state claims against.
-/

/-! ## A084499.P7645941933905609646

`xor(A057427(n), A084530(A065190(n+1)))`
-/

namespace A084499.P7645941933905609646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A084530 (A065190 (n + 1)).toNat)

end

end A084499.P7645941933905609646

/-! ## A084499.P15529385000165881009

`xor(-A057428(n), A084530(A065190(n+1)))`
-/

namespace A084499.P15529385000165881009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A057428 n) (A084530 (A065190 (n + 1)).toNat)

end

end A084499.P15529385000165881009

/-! ## A084499.P7524641262313022666

`A000007(n)+xor(1, A084530(A065190(n+1)))`
-/

namespace A084499.P7524641262313022666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + Int.xor 1 (A084530 (A065190 (n + 1)).toNat)

end

end A084499.P7524641262313022666

/-! ## A084499.P11127606947021518379

`xor(A000040(n+1)%2, A084530(A065190(n+1)))`
-/

namespace A084499.P11127606947021518379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A000040 (n + 1)) 2) (A084530 (A065190 (n + 1)).toNat)

end

end A084499.P11127606947021518379

