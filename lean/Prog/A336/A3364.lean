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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
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
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A336400: The hafnian of a symmetric Toeplitz matrix of order 2*n, n>=2 with the first row (0,2,1,...,1,2); a(0)=1, a(1)=2.

The programs for A336400, there is no canonical definition to state claims against.
-/

/-! ## A336400.P17944309876891334727

`A001515(n)+A144301(n)%A001147(n)`
-/

namespace A336400.P17944309876891334727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001515 n + Int.tmod (A144301 n) (A001147 n)

end

end A336400.P17944309876891334727

/-! ## A336400.P1911517474234921634

`A087156(A144301(n))+A001515(n)`
-/

namespace A336400.P1911517474234921634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A144301 n).toNat + A001515 n

end

end A336400.P1911517474234921634

/-! ## A336400.P4291104812352400119

`A087156(A144301(n))+record[A144502(n)]`
-/

namespace A336400.P4291104812352400119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A144301 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336400.P4291104812352400119

/-!
# A336403: Multiplicative closure of A045468: numbers which are the product of zero or more primes which are 1 or 4 mod 5.

The programs for A336403, the canonical program `A336403.P6809300331611743770` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336403 has offset 1).

The definition of A336403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4615 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336403.P6809300331611743770

`filter[A057762(n+1), A162289(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A336403

/-- `filter[A057762(n+1), A162289(#)]` -/
def P6809300331611743770.Spec : Prop :=
  ∀ n, P6809300331611743770.a n = A336403 (n + 1)

theorem P6809300331611743770.correct : P6809300331611743770.Spec := by
  intro n
  simp only [A336403, Nat.add_sub_cancel]

end A336403

/-! ## A336403.P1510774075197611724

`filter[A057762(n+1), A373139(#)]`
-/

namespace A336403.P1510774075197611724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373139 (f1 j).toNat = 1) n)

end

end A336403.P1510774075197611724

namespace A336403

/-- `filter[A057762(n+1), A373139(#)]` -/
def P1510774075197611724.Spec : Prop :=
  ∀ n, P1510774075197611724.a n = A336403 (n + 1)

end A336403

/-! ## A336403.P15837193143474302032

`∩[A057538(n+1), A057762(n+1)]`
-/

namespace A336403.P15837193143474302032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336403.P15837193143474302032

namespace A336403

/-- `∩[A057538(n+1), A057762(n+1)]` -/
def P15837193143474302032.Spec : Prop :=
  ∀ n, (P15837193143474302032.a n : ℤ) = A336403 (n + 1)

end A336403

/-! ## A336403.P3723758786786663562

`∩[A057762(n+1), A090771(n+1)]`
-/

namespace A336403.P3723758786786663562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336403.P3723758786786663562

namespace A336403

/-- `∩[A057762(n+1), A090771(n+1)]` -/
def P3723758786786663562.Spec : Prop :=
  ∀ n, (P3723758786786663562.a n : ℤ) = A336403 (n + 1)

end A336403

/-! ## A336403.P6687558231805429945

`∩[A057762(n+1), A230462(n+1)]`
-/

namespace A336403.P6687558231805429945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336403.P6687558231805429945

namespace A336403

/-- `∩[A057762(n+1), A230462(n+1)]` -/
def P6687558231805429945.Spec : Prop :=
  ∀ n, (P6687558231805429945.a n : ℤ) = A336403 (n + 1)

end A336403

/-! ## A336403.P16379090050368594016

`∩[A008364(n+1), A057762(n+1)]`
-/

namespace A336403.P16379090050368594016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336403.P16379090050368594016

namespace A336403

/-- `∩[A008364(n+1), A057762(n+1)]` -/
def P16379090050368594016.Spec : Prop :=
  ∀ n, (P16379090050368594016.a n : ℤ) = A336403 (n + 1)

end A336403

/-! ## A336403.P3363081095490845357

`∩[A057762(n+1), A292315(n+1)]`
-/

namespace A336403.P3363081095490845357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336403.P3363081095490845357

namespace A336403

/-- `∩[A057762(n+1), A292315(n+1)]` -/
def P3363081095490845357.Spec : Prop :=
  ∀ n, (P3363081095490845357.a n : ℤ) = A336403 (n + 1)

end A336403

/-! ## A336403.P7856008147088637826

`∩[A007775(n+1), A057762(n+1)]`
-/

namespace A336403.P7856008147088637826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336403.P7856008147088637826

namespace A336403

/-- `∩[A007775(n+1), A057762(n+1)]` -/
def P7856008147088637826.Spec : Prop :=
  ∀ n, (P7856008147088637826.a n : ℤ) = A336403 (n + 1)

end A336403

/-! ## A336403.P3971690176548993912

`∩[A057762(n+1), A235583(n+1)]`
-/

namespace A336403.P3971690176548993912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336403.P3971690176548993912

namespace A336403

/-- `∩[A057762(n+1), A235583(n+1)]` -/
def P3971690176548993912.Spec : Prop :=
  ∀ n, (P3971690176548993912.a n : ℤ) = A336403 (n + 1)

end A336403

/-! ## A336403.P12525479337711210133

`∩[A045572(n+1), A057762(n+1)]`
-/

namespace A336403.P12525479337711210133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336403.P12525479337711210133

namespace A336403

/-- `∩[A045572(n+1), A057762(n+1)]` -/
def P12525479337711210133.Spec : Prop :=
  ∀ n, (P12525479337711210133.a n : ℤ) = A336403 (n + 1)

end A336403

/-! ## A336403.P5229403261843507358

`eq[A113185(n), A329651(n)]`
-/

namespace A336403.P5229403261843507358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336403.P5229403261843507358

namespace A336403

/-- `eq[A113185(n), A329651(n)]` -/
def P5229403261843507358.Spec : Prop :=
  ∀ n, (P5229403261843507358.a n : ℤ) = A336403 (n + 1)

end A336403

/-! ## A336403.P15305874381422243017

`record[A132740(A057762(n+1))]`
-/

namespace A336403.P15305874381422243017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (A057762 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336403.P15305874381422243017

namespace A336403

/-- `record[A132740(A057762(n+1))]` -/
def P15305874381422243017.Spec : Prop :=
  ∀ n, P15305874381422243017.a n = A336403 (n + 1)

end A336403

/-! ## A336403.P7066942110211415443

`eq[A000005(n+1), A035187(n+1)]+1`
-/

namespace A336403.P7066942110211415443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336403.P7066942110211415443

namespace A336403

/-- `eq[A000005(n+1), A035187(n+1)]+1` -/
def P7066942110211415443.Spec : Prop :=
  ∀ n, (P7066942110211415443.a n : ℤ) = A336403 (n + 1)

end A336403

/-! ## A336403.P4521956036387741086

`eq[A000203(n+1), A109091(n+1)]+1`
-/

namespace A336403.P4521956036387741086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109091 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336403.P4521956036387741086

namespace A336403

/-- `eq[A000203(n+1), A109091(n+1)]+1` -/
def P4521956036387741086.Spec : Prop :=
  ∀ n, (P4521956036387741086.a n : ℤ) = A336403 (n + 1)

end A336403

/-! ## A336403.P3672667822048754511

`eq[A000203(n+1), A110712(n+1)]+1`
-/

namespace A336403.P3672667822048754511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110712 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336403.P3672667822048754511

namespace A336403

/-- `eq[A000203(n+1), A110712(n+1)]+1` -/
def P3672667822048754511.Spec : Prop :=
  ∀ n, (P3672667822048754511.a n : ℤ) = A336403 (n + 1)

end A336403

/-! ## A336403.P15800911227297720104

`eq[A236930(n)+A236924(n), A000118(n)]`
-/

namespace A336403.P15800911227297720104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236930 n + A236924 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336403.P15800911227297720104

namespace A336403

/-- `eq[A236930(n)+A236924(n), A000118(n)]` -/
def P15800911227297720104.Spec : Prop :=
  ∀ n, (P15800911227297720104.a n : ℤ) = A336403 (n + 1)

end A336403

/-! ## A336403.P10059723388032586308

`record[A334676(A089270(n+1))]`
-/

namespace A336403.P10059723388032586308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334676 (A089270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336403.P10059723388032586308

namespace A336403

/-- `record[A334676(A089270(n+1))]` -/
def P10059723388032586308.Spec : Prop :=
  ∀ n, P10059723388032586308.a n = A336403 (n + 1)

end A336403

/-! ## A336403.P2925950318861506760

`filter[A089270(n+1), A011558(#)]`
-/

namespace A336403.P2925950318861506760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A336403.P2925950318861506760

namespace A336403

/-- `filter[A089270(n+1), A011558(#)]` -/
def P2925950318861506760.Spec : Prop :=
  ∀ n, P2925950318861506760.a n = A336403 (n + 1)

end A336403

/-! ## A336403.P10211588495149288708

`filter[A089270(n+1), A162289(#)]`
-/

namespace A336403.P10211588495149288708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A336403.P10211588495149288708

namespace A336403

/-- `filter[A089270(n+1), A162289(#)]` -/
def P10211588495149288708.Spec : Prop :=
  ∀ n, P10211588495149288708.a n = A336403 (n + 1)

end A336403

/-! ## A336403.P13112776852604369920

`filter[A089270(n+1), A358847(#)]`
-/

namespace A336403.P13112776852604369920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358847 (f1 j).toNat = 1) n)

end

end A336403.P13112776852604369920

namespace A336403

/-- `filter[A089270(n+1), A358847(#)]` -/
def P13112776852604369920.Spec : Prop :=
  ∀ n, P13112776852604369920.a n = A336403 (n + 1)

end A336403

/-!
# A336406: a(n) = number of primes c + d, where c < d = odd composite(n), and c is composite.

The programs for A336406, there is no canonical definition to state claims against.
-/

/-! ## A336406.P7753509847464695926

`A336407(n+1)-A336408(n+1)`
-/

namespace A336406.P7753509847464695926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336407 (n + 1) - A336408 (n + 1)

end

end A336406.P7753509847464695926

/-! ## A336406.P4829743518764907248

`eq[2, A130882(n+1)]-A336408(n+1)`
-/

namespace A336406.P4829743518764907248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A336408 (n + 1)

end

end A336406.P4829743518764907248

/-! ## A336406.P4108621766256919307

`eq[1, A018252(n+3)%2]+1-A336408(n+1)`
-/

namespace A336406.P4108621766256919307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (n + 3)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A336408 (n + 1)

end

end A336406.P4108621766256919307

/-! ## A336406.P11160288120933258032

`lt[1, A001222(2*n+3)]+n-A336408(n+1)`
-/

namespace A336406.P11160288120933258032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + n : ℤ) - A336408 (n + 1)

end

end A336406.P11160288120933258032

/-! ## A336406.P17144657825280543949

`lt[2, A000005(2*n+3)]+n-A336408(n+1)`
-/

namespace A336406.P17144657825280543949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + n : ℤ) - A336408 (n + 1)

end

end A336406.P17144657825280543949

/-! ## A336406.P12620304489364009330

`lt[A006530(2*n+1), n]-1+n-A336408(n+1)`
-/

namespace A336406.P12620304489364009330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1 + (n : ℤ) - A336408 (n + 1)

end

end A336406.P12620304489364009330

/-! ## A336406.P2730829184653127506

`lt[A014963(2*n+1), n]-1+n-A336408(n+1)`
-/

namespace A336406.P2730829184653127506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1 + (n : ℤ) - A336408 (n + 1)

end

end A336406.P2730829184653127506

/-! ## A336406.P15198378439926893274

`lt[2, A020639(A018252(n+2))]-A336408(n+1)`
-/

namespace A336406.P15198378439926893274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A018252 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - A336408 (n + 1)

end

end A336406.P15198378439926893274

/-! ## A336406.P4996845427886795661

`eq[2, A020639(A018252(n+2)+1)]-A336408(n+1)`
-/

namespace A336406.P4996845427886795661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A018252 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A336408 (n + 1)

end

end A336406.P4996845427886795661

/-!
# A336407: a(n) is the number of composites < n-th odd composite.

The programs for A336407, the canonical program `A336407.P9817670677513642301` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336407 has offset 1).

The definition of A336407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336407.P9817670677513642301

`A153238(n+1)+n`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A336407

/-- `A153238(n+1)+n` -/
def P9817670677513642301.Spec : Prop :=
  ∀ n, P9817670677513642301.a n = A336407 (n + 1)

theorem P9817670677513642301.correct : P9817670677513642301.Spec := by
  intro n
  simp only [A336407, Nat.add_sub_cancel]

end A336407

/-! ## A336407.P4275835358148366366

`A153052(n+1)+1+n`
-/

namespace A336407.P4275835358148366366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153052 (n + 1) + 1 + (n : ℤ)

end

end A336407.P4275835358148366366

namespace A336407

/-- `A153052(n+1)+1+n` -/
def P4275835358148366366.Spec : Prop :=
  ∀ n, P4275835358148366366.a n = A336407 (n + 1)

end A336407

/-! ## A336407.P6890757363785853251

`A153053(n+1)+2+n`
-/

namespace A336407.P6890757363785853251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153053 (n + 1) + 2 + (n : ℤ)

end

end A336407.P6890757363785853251

namespace A336407

/-- `A153053(n+1)+2+n` -/
def P6890757363785853251.Spec : Prop :=
  ∀ n, P6890757363785853251.a n = A336407 (n + 1)

theorem P6890757363785853251.correct : P6890757363785853251.Spec := by
  intro n
  simp only [A336407, Nat.add_sub_cancel, A336407.P6890757363785853251.a, A336407.P9817670677513642301.a, A153053, A153053.P11375225491096847210.a, A153238, A153238.P13831251492164971693.a, A153052, A153052.P215135875194931627.f1, A153052.P215135875194931627.f2, A153052.P215135875194931627.a, A101264, A101264.P18132826973570150985.a, A057427, A057427.P3058147525557661423.a, A085090, A085090.P7648760271981686645.f1, A085090.P7648760271981686645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336407

/-! ## A336407.P1437135798265395195

`A053726(n+1)-2+n`
-/

namespace A336407.P1437135798265395195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) - 2 + (n : ℤ)

end

end A336407.P1437135798265395195

namespace A336407

/-- `A053726(n+1)-2+n` -/
def P1437135798265395195.Spec : Prop :=
  ∀ n, P1437135798265395195.a n = A336407 (n + 1)

end A336407

/-! ## A336407.P7665377967000404343

`A155723(n+1)+3+n`
-/

namespace A336407.P7665377967000404343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155723 (n + 1) + 3 + (n : ℤ)

end

end A336407.P7665377967000404343

namespace A336407

/-- `A155723(n+1)+3+n` -/
def P7665377967000404343.Spec : Prop :=
  ∀ n, P7665377967000404343.a n = A336407 (n + 1)

theorem P7665377967000404343.correct : P7665377967000404343.Spec := by
  intro n
  simp only [A336407, Nat.add_sub_cancel, A336407.P7665377967000404343.a, A336407.P9817670677513642301.a, A153238, A153238.P13831251492164971693.a, A155723, A155723.P13840957345735942896.a, A153052, A153052.P215135875194931627.f1, A153052.P215135875194931627.f2, A153052.P215135875194931627.a, A153053, A153053.P11375225491096847210.a, A101264, A101264.P18132826973570150985.a, A057427, A057427.P3058147525557661423.a, A085090, A085090.P7648760271981686645.f1, A085090.P7648760271981686645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336407

/-! ## A336407.P1044609884053924643

`A008508(n+1)+2*n`
-/

namespace A336407.P1044609884053924643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008508 (n + 1) + (2 * n : ℤ)

end

end A336407.P1044609884053924643

namespace A336407

/-- `A008508(n+1)+2*n` -/
def P1044609884053924643.Spec : Prop :=
  ∀ n, P1044609884053924643.a n = A336407 (n + 1)

end A336407

/-! ## A336407.P10271846793466562671

`A146538(n+1)/2+n`
-/

namespace A336407.P10271846793466562671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146538 (n + 1) : ℚ) / 2 + (n : ℚ)

end

end A336407.P10271846793466562671

namespace A336407

/-- `A146538(n+1)/2+n` -/
def P10271846793466562671.Spec : Prop :=
  ∀ n, P10271846793466562671.a n = (A336407 (n + 1) : ℚ)

end A336407

/-! ## A336407.P14530640959079795302

`A153040(n+1)-4+n`
-/

namespace A336407.P14530640959079795302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1) - 4 + (n : ℤ)

end

end A336407.P14530640959079795302

namespace A336407

/-- `A153040(n+1)-4+n` -/
def P14530640959079795302.Spec : Prop :=
  ∀ n, P14530640959079795302.a n = A336407 (n + 1)

end A336407

/-! ## A336407.P3693071460719590101

`A153039(n+1)-5+n`
-/

namespace A336407.P3693071460719590101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153039 (n + 1) - 5 + (n : ℤ)

end

end A336407.P3693071460719590101

namespace A336407

/-- `A153039(n+1)-5+n` -/
def P3693071460719590101.Spec : Prop :=
  ∀ n, P3693071460719590101.a n = A336407 (n + 1)

end A336407

/-! ## A336407.P18245919236928608341

`A053726(n+1)+A023444(n)`
-/

namespace A336407.P18245919236928608341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) + A023444 n

end

end A336407.P18245919236928608341

namespace A336407

/-- `A053726(n+1)+A023444(n)` -/
def P18245919236928608341.Spec : Prop :=
  ∀ n, P18245919236928608341.a n = A336407 (n + 1)

end A336407

/-! ## A336407.P4169287584125037425

`A153039(n+1)+A023447(n)`
-/

namespace A336407.P4169287584125037425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153039 (n + 1) + A023447 n

end

end A336407.P4169287584125037425

namespace A336407

/-- `A153039(n+1)+A023447(n)` -/
def P4169287584125037425.Spec : Prop :=
  ∀ n, P4169287584125037425.a n = A336407 (n + 1)

end A336407

/-! ## A336407.P16166521484923398786

`A153040(n+1)+A023446(n)`
-/

namespace A336407.P16166521484923398786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1) + A023446 n

end

end A336407.P16166521484923398786

namespace A336407

/-- `A153040(n+1)+A023446(n)` -/
def P16166521484923398786.Spec : Prop :=
  ∀ n, P16166521484923398786.a n = A336407 (n + 1)

end A336407

/-! ## A336407.P1597227893090302340

`A153045(n+1)+A023449(n)`
-/

namespace A336407.P1597227893090302340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153045 (n + 1) + A023449 n

end

end A336407.P1597227893090302340

namespace A336407

/-- `A153045(n+1)+A023449(n)` -/
def P1597227893090302340.Spec : Prop :=
  ∀ n, P1597227893090302340.a n = A336407 (n + 1)

end A336407

/-! ## A336407.P8334819245108316861

`A153047(n+1)+A023451(n)`
-/

namespace A336407.P8334819245108316861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153047 (n + 1) + A023451 n

end

end A336407.P8334819245108316861

namespace A336407

/-- `A153047(n+1)+A023451(n)` -/
def P8334819245108316861.Spec : Prop :=
  ∀ n, P8334819245108316861.a n = A336407 (n + 1)

end A336407

/-! ## A336407.P6843516880634501798

`A053726(n+1)-A022958(n)`
-/

namespace A336407.P6843516880634501798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) - A022958 n

end

end A336407.P6843516880634501798

namespace A336407

/-- `A053726(n+1)-A022958(n)` -/
def P6843516880634501798.Spec : Prop :=
  ∀ n, P6843516880634501798.a n = A336407 (n + 1)

end A336407

/-! ## A336407.P12777118877542251299

`A153039(n+1)-A022961(n)`
-/

namespace A336407.P12777118877542251299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153039 (n + 1) - A022961 n

end

end A336407.P12777118877542251299

namespace A336407

/-- `A153039(n+1)-A022961(n)` -/
def P12777118877542251299.Spec : Prop :=
  ∀ n, P12777118877542251299.a n = A336407 (n + 1)

end A336407

/-! ## A336407.P10567072391166244057

`A153040(n+1)-A022960(n)`
-/

namespace A336407.P10567072391166244057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1) - A022960 n

end

end A336407.P10567072391166244057

namespace A336407

/-- `A153040(n+1)-A022960(n)` -/
def P10567072391166244057.Spec : Prop :=
  ∀ n, P10567072391166244057.a n = A336407 (n + 1)

end A336407

/-! ## A336407.P11833305707303065906

`A153045(n+1)-A022963(n)`
-/

namespace A336407.P11833305707303065906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153045 (n + 1) - A022963 n

end

end A336407.P11833305707303065906

namespace A336407

/-- `A153045(n+1)-A022963(n)` -/
def P11833305707303065906.Spec : Prop :=
  ∀ n, P11833305707303065906.a n = A336407 (n + 1)

end A336407

/-! ## A336407.P16568796770467733013

`A153047(n+1)-A022965(n)`
-/

namespace A336407.P16568796770467733013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153047 (n + 1) - A022965 n

end

end A336407.P16568796770467733013

namespace A336407

/-- `A153047(n+1)-A022965(n)` -/
def P16568796770467733013.Spec : Prop :=
  ∀ n, P16568796770467733013.a n = A336407 (n + 1)

end A336407

/-!
# A336408: a(n) = number of composites c+d such that c is a composite, d is the n-th odd composite, and c < d.

The programs for A336408, there is no canonical definition to state claims against.
-/

/-! ## A336408.P17519306200446542167

`A336407(n+1)-A336406(n+1)`
-/

namespace A336408.P17519306200446542167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336407 (n + 1) - A336406 (n + 1)

end

end A336408.P17519306200446542167

/-! ## A336408.P13215090444763763860

`eq[2, A130882(n+1)]-A336406(n+1)`
-/

namespace A336408.P13215090444763763860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A336406 (n + 1)

end

end A336408.P13215090444763763860

/-! ## A336408.P2487460877951500138

`A153238(n+1)-A336406(n+1)+n`
-/

namespace A336408.P2487460877951500138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1) - A336406 (n + 1) + (n : ℤ)

end

end A336408.P2487460877951500138

/-! ## A336408.P10722873496005905315

`eq[1, A018252(n+3)%2]+1-A336406(n+1)`
-/

namespace A336408.P10722873496005905315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (n + 3)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A336406 (n + 1)

end

end A336408.P10722873496005905315

/-! ## A336408.P18121530011239763511

`lt[1, A001222(2*n+3)]+n-A336406(n+1)`
-/

namespace A336408.P18121530011239763511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + n : ℤ) - A336406 (n + 1)

end

end A336408.P18121530011239763511

/-! ## A336408.P15365419396405515084

`lt[2, A000005(2*n+3)]+n-A336406(n+1)`
-/

namespace A336408.P15365419396405515084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + n : ℤ) - A336406 (n + 1)

end

end A336408.P15365419396405515084

/-! ## A336408.P3898445835519615831

`lt[5, A000005(n+3+n)²]+n-A336406(n+1)`
-/

namespace A336408.P3898445835519615831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 3 + n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + n : ℤ) - A336406 (n + 1)

end

end A336408.P3898445835519615831

/-! ## A336408.P3932691525645353707

`lt[A006530(2*n+1), n]-1+n-A336406(n+1)`
-/

namespace A336408.P3932691525645353707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1 + (n : ℤ) - A336406 (n + 1)

end

end A336408.P3932691525645353707

/-! ## A336408.P16717942810150402404

`lt[A014963(2*n+1), n]-1+n-A336406(n+1)`
-/

namespace A336408.P16717942810150402404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1 + (n : ℤ) - A336406 (n + 1)

end

end A336408.P16717942810150402404

/-! ## A336408.P15296554532451646673

`lt[2, A020639(A018252(n+2))]-A336406(n+1)`
-/

namespace A336408.P15296554532451646673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A018252 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - A336406 (n + 1)

end

end A336408.P15296554532451646673

/-!
# A336409: Distance from prime(n) to the nearest odd composite that is < prime(n).

The programs for A336409, the canonical program `A336409.P14643601017741268817` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336409 has offset 5).

The definition of A336409 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175191, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336409.P12588022314510518870

`2*(A062301(n+5)+1)`
-/

namespace A336409.P12588022314510518870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A062301 (n + 5) + 1)

end

end A336409.P12588022314510518870

namespace A336409

/-- `2*(A062301(n+5)+1)` -/
def P12588022314510518870.Spec : Prop :=
  ∀ n, P12588022314510518870.a n = A336409 (n + 5)

end A336409

/-! ## A336409.P14643601017741268817

`2*A175191(n+4)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A336409

/-- `2*A175191(n+4)` -/
def P14643601017741268817.Spec : Prop :=
  ∀ n, P14643601017741268817.a n = A336409 (n + 5)

theorem P14643601017741268817.correct : P14643601017741268817.Spec := by
  intro n
  simp only [A336409, Nat.add_sub_cancel]

end A336409

/-! ## A336409.P2264261299173401330

`ceil(root(12, A001223(n+4)))`
-/

namespace A336409.P2264261299173401330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(12 : ℝ) ^ (1 / (A001223 (n + 4) : ℝ))⌉

end

end A336409.P2264261299173401330

namespace A336409

/-- `ceil(root(12, A001223(n+4)))` -/
def P2264261299173401330.Spec : Prop :=
  ∀ n, P2264261299173401330.a n = A336409 (n + 5)

end A336409

/-! ## A336409.P3144372771252061704

`ceil(root(4, A028334(n+4)))`
-/

namespace A336409.P3144372771252061704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 : ℝ) ^ (1 / (A028334 (n + 4) : ℝ))⌉

end

end A336409.P3144372771252061704

namespace A336409

/-- `ceil(root(4, A028334(n+4)))` -/
def P3144372771252061704.Spec : Prop :=
  ∀ n, P3144372771252061704.a n = A336409 (n + 5)

end A336409

/-! ## A336409.P12992800647446127359

`2^gcd(2, A052180(n+4))`
-/

namespace A336409.P12992800647446127359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Int.gcd 2 (A052180 (n + 4))

end

end A336409.P12992800647446127359

namespace A336409

/-- `2^gcd(2, A052180(n+4))` -/
def P12992800647446127359.Spec : Prop :=
  ∀ n, (P12992800647446127359.a n : ℤ) = A336409 (n + 5)

end A336409

/-! ## A336409.P2289990541533507209

`ceil(root(4, A046933(n+4)))`
-/

namespace A336409.P2289990541533507209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 : ℝ) ^ (1 / (A046933 (n + 4) : ℝ))⌉

end

end A336409.P2289990541533507209

namespace A336409

/-- `ceil(root(4, A046933(n+4)))` -/
def P2289990541533507209.Spec : Prop :=
  ∀ n, P2289990541533507209.a n = A336409 (n + 5)

end A336409

/-! ## A336409.P496134672986968970

`A028356(A079602(n+4))`
-/

namespace A336409.P496134672986968970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028356 (A079602 (n + 4)).toNat

end

end A336409.P496134672986968970

namespace A336409

/-- `A028356(A079602(n+4))` -/
def P496134672986968970.Spec : Prop :=
  ∀ n, P496134672986968970.a n = A336409 (n + 5)

end A336409

/-! ## A336409.P14342380864215143275

`A002126(A140461(n+2))`
-/

namespace A336409.P14342380864215143275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (A140461 (n + 2)).toNat

end

end A336409.P14342380864215143275

namespace A336409

/-- `A002126(A140461(n+2))` -/
def P14342380864215143275.Spec : Prop :=
  ∀ n, P14342380864215143275.a n = A336409 (n + 5)

end A336409

/-! ## A336409.P5588936257226946197

`A002126(A105439(n+1))`
-/

namespace A336409.P5588936257226946197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (A105439 (n + 1)).toNat

end

end A336409.P5588936257226946197

namespace A336409

/-- `A002126(A105439(n+1))` -/
def P5588936257226946197.Spec : Prop :=
  ∀ n, P5588936257226946197.a n = A336409 (n + 5)

end A336409

/-! ## A336409.P6043595066482465381

`A028356(A105439(n+2))`
-/

namespace A336409.P6043595066482465381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028356 (A105439 (n + 2)).toNat

end

end A336409.P6043595066482465381

namespace A336409

/-- `A028356(A105439(n+2))` -/
def P6043595066482465381.Spec : Prop :=
  ∀ n, P6043595066482465381.a n = A336409 (n + 5)

end A336409

/-! ## A336409.P8212198315856329565

`A002126(A120533(n+1))`
-/

namespace A336409.P8212198315856329565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (A120533 (n + 1)).toNat

end

end A336409.P8212198315856329565

namespace A336409

/-- `A002126(A120533(n+1))` -/
def P8212198315856329565.Spec : Prop :=
  ∀ n, P8212198315856329565.a n = A336409 (n + 5)

end A336409

/-! ## A336409.P5442250968869053595

`2*(A100821(n+4)+1)`
-/

namespace A336409.P5442250968869053595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A100821 (n + 4) + 1)

end

end A336409.P5442250968869053595

namespace A336409

/-- `2*(A100821(n+4)+1)` -/
def P5442250968869053595.Spec : Prop :=
  ∀ n, P5442250968869053595.a n = A336409 (n + 5)

end A336409

/-!
# A336410: Complement of A336411.

The programs for A336410, the canonical program `A336410.P10465025755564632149` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336410 has offset 1).

The definition of A336410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336410.P60623097620919229

`(A176852(n+1)-5)/2`
-/

namespace A336410.P60623097620919229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176852 (n + 1) - 5 : ℚ) / 2

end

end A336410.P60623097620919229

namespace A336410

/-- `(A176852(n+1)-5)/2` -/
def P60623097620919229.Spec : Prop :=
  ∀ n, P60623097620919229.a n = (A336410 (n + 1) : ℚ)

end A336410

/-! ## A336410.P10465025755564632149

`A049579(n+1)-3`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A336410

/-- `A049579(n+1)-3` -/
def P10465025755564632149.Spec : Prop :=
  ∀ n, P10465025755564632149.a n = A336410 (n + 1)

theorem P10465025755564632149.correct : P10465025755564632149.Spec := by
  intro n
  simp only [A336410, Nat.add_sub_cancel]

end A336410

/-! ## A336410.P10344730570740825261

`eq[1, A049563(n+3)]`
-/

namespace A336410.P10344730570740825261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049563 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336410.P10344730570740825261

namespace A336410

/-- `eq[1, A049563(n+3)]` -/
def P10344730570740825261.Spec : Prop :=
  ∀ n, (P10344730570740825261.a n : ℤ) = A336410 (n + 1)

end A336410

/-! ## A336410.P14182871634158558203

`eq[1, A071572(n+3)]`
-/

namespace A336410.P14182871634158558203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071572 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336410.P14182871634158558203

namespace A336410

/-- `eq[1, A071572(n+3)]` -/
def P14182871634158558203.Spec : Prop :=
  ∀ n, (P14182871634158558203.a n : ℤ) = A336410 (n + 1)

end A336410

/-! ## A336410.P9572745372507800777

`eq[1, A106002(n+3)]`
-/

namespace A336410.P9572745372507800777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106002 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336410.P9572745372507800777

namespace A336410

/-- `eq[1, A106002(n+3)]` -/
def P9572745372507800777.Spec : Prop :=
  ∀ n, (P9572745372507800777.a n : ℤ) = A336410 (n + 1)

end A336410

/-! ## A336410.P14077224330696270432

`eq[1, A208936(n+3)]`
-/

namespace A336410.P14077224330696270432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208936 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336410.P14077224330696270432

namespace A336410

/-- `eq[1, A208936(n+3)]` -/
def P14077224330696270432.Spec : Prop :=
  ∀ n, (P14077224330696270432.a n : ℤ) = A336410 (n + 1)

end A336410

/-! ## A336410.P10451756707919753737

`eq[1, A237196(n+3)]`
-/

namespace A336410.P10451756707919753737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237196 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336410.P10451756707919753737

namespace A336410

/-- `eq[1, A237196(n+3)]` -/
def P10451756707919753737.Spec : Prop :=
  ∀ n, (P10451756707919753737.a n : ℤ) = A336410 (n + 1)

end A336410

/-! ## A336410.P12697214017175379234

`eq[1, A362296(n+3)]`
-/

namespace A336410.P12697214017175379234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362296 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336410.P12697214017175379234

namespace A336410

/-- `eq[1, A362296(n+3)]` -/
def P12697214017175379234.Spec : Prop :=
  ∀ n, (P12697214017175379234.a n : ℤ) = A336410 (n + 1)

end A336410

/-! ## A336410.P15706134554351508253

`eq[1, A379377(n+3)]`
-/

namespace A336410.P15706134554351508253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379377 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336410.P15706134554351508253

namespace A336410

/-- `eq[1, A379377(n+3)]` -/
def P15706134554351508253.Spec : Prop :=
  ∀ n, (P15706134554351508253.a n : ℤ) = A336410 (n + 1)

end A336410

/-! ## A336410.P14756651003542709474

`A023445(A049579(n+1))`
-/

namespace A336410.P14756651003542709474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A049579 (n + 1)).toNat

end

end A336410.P14756651003542709474

namespace A336410

/-- `A023445(A049579(n+1))` -/
def P14756651003542709474.Spec : Prop :=
  ∀ n, P14756651003542709474.a n = A336410 (n + 1)

end A336410

/-! ## A336410.P14865001153144822352

`A008508(A196277(n+1))-2`
-/

namespace A336410.P14865001153144822352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008508 (A196277 (n + 1)).toNat - 2

end

end A336410.P14865001153144822352

namespace A336410

/-- `A008508(A196277(n+1))-2` -/
def P14865001153144822352.Spec : Prop :=
  ∀ n, P14865001153144822352.a n = A336410 (n + 1)

end A336410

/-! ## A336410.P16674824517103080066

`A329622(A280405(n+2))`
-/

namespace A336410.P16674824517103080066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329622 (A280405 (n + 2)).toNat

end

end A336410.P16674824517103080066

namespace A336410

/-- `A329622(A280405(n+2))` -/
def P16674824517103080066.Spec : Prop :=
  ∀ n, P16674824517103080066.a n = A336410 (n + 1)

end A336410

/-! ## A336410.P556716203181535494

`∑[A251092(n+1)]-2`
-/

namespace A336410.P556716203181535494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A336410.P556716203181535494

namespace A336410

/-- `∑[A251092(n+1)]-2` -/
def P556716203181535494.Spec : Prop :=
  ∀ n, P556716203181535494.a n = A336410 (n + 1)

end A336410

/-! ## A336410.P7615865557045802798

`eq[1, A175191(n+3)]`
-/

namespace A336410.P7615865557045802798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175191 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336410.P7615865557045802798

namespace A336410

/-- `eq[1, A175191(n+3)]` -/
def P7615865557045802798.Spec : Prop :=
  ∀ n, (P7615865557045802798.a n : ℤ) = A336410 (n + 1)

end A336410

/-! ## A336410.P5196921620527690320

`A241917(A297150(n+1))`
-/

namespace A336410.P5196921620527690320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A297150 (n + 1)).toNat

end

end A336410.P5196921620527690320

namespace A336410

/-- `A241917(A297150(n+1))` -/
def P5196921620527690320.Spec : Prop :=
  ∀ n, P5196921620527690320.a n = A336410 (n + 1)

end A336410

/-!
# A336411: a(n) = A029707(n+2) - 3 for n >= 1.

The programs for A336411, the canonical program `A336411.P10199807446028668935` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336411 has offset 1).

The definition of A336411 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029707, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336411.P10199807446028668935

`A029707(n+3)-3`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A336411

/-- `A029707(n+3)-3` -/
def P10199807446028668935.Spec : Prop :=
  ∀ n, P10199807446028668935.a n = A336411 (n + 1)

theorem P10199807446028668935.correct : P10199807446028668935.Spec := by
  intro n
  simp only [A336411, Nat.add_sub_cancel]

end A336411

/-! ## A336411.P12071551103626895257

`A155752(n+3)-2`
-/

namespace A336411.P12071551103626895257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (n + 3) - 2

end

end A336411.P12071551103626895257

namespace A336411

/-- `A155752(n+3)-2` -/
def P12071551103626895257.Spec : Prop :=
  ∀ n, P12071551103626895257.a n = A336411 (n + 1)

theorem P12071551103626895257.correct : P12071551103626895257.Spec := by
  intro n
  simp only [A336411, Nat.add_sub_cancel, A336411.P12071551103626895257.a, A336411.P10199807446028668935.a, A029707, A029707.P9157915946838587551.f1, A029707.P9157915946838587551.a, A155752, A155752.P6228689506561445427.a, A242767, A242767.P6276449245007787369.a, A027833, A027833.P2673229578852313683.f2, A027833.P2673229578852313683.f3, A027833.P2673229578852313683.f1, A027833.P2673229578852313683.a, A001223, A001223.P5083310856331133973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A336411

/-! ## A336411.P17636952117887888525

`∑[abs(Δ[A029707(n+2)])]`
-/

namespace A336411.P17636952117887888525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336411.P17636952117887888525

namespace A336411

/-- `∑[abs(Δ[A029707(n+2)])]` -/
def P17636952117887888525.Spec : Prop :=
  ∀ n, P17636952117887888525.a n = A336411 (n + 1)

end A336411

/-! ## A336411.P9418919768044650639

`∑[A027833(n+2)]`
-/

namespace A336411.P9418919768044650639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027833 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336411.P9418919768044650639

namespace A336411

/-- `∑[A027833(n+2)]` -/
def P9418919768044650639.Spec : Prop :=
  ∀ n, P9418919768044650639.a n = A336411 (n + 1)

end A336411

/-! ## A336411.P8133459222713438572

`∑[A048614(n+2)+2]`
-/

namespace A336411.P8133459222713438572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336411.P8133459222713438572

namespace A336411

/-- `∑[A048614(n+2)+2]` -/
def P8133459222713438572.Spec : Prop :=
  ∀ n, P8133459222713438572.a n = A336411 (n + 1)

end A336411

/-! ## A336411.P13707109459405285589

`∑[A242767(n+4)]`
-/

namespace A336411.P13707109459405285589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336411.P13707109459405285589

namespace A336411

/-- `∑[A242767(n+4)]` -/
def P13707109459405285589.Spec : Prop :=
  ∀ n, P13707109459405285589.a n = A336411 (n + 1)

end A336411

/-! ## A336411.P4635632701503215143

`A107770(n+3)-4`
-/

namespace A336411.P4635632701503215143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 3) - 4

end

end A336411.P4635632701503215143

namespace A336411

/-- `A107770(n+3)-4` -/
def P4635632701503215143.Spec : Prop :=
  ∀ n, P4635632701503215143.a n = A336411 (n + 1)

theorem P4635632701503215143.correct : P4635632701503215143.Spec := by
  intro n
  simp only [A336411, Nat.add_sub_cancel, A336411.P4635632701503215143.a, A336411.P10199807446028668935.a, A029707, A029707.P9157915946838587551.f1, A029707.P9157915946838587551.a, A107770, A107770.P17401578179323890031.a, A242767, A242767.P6276449245007787369.a, A027833, A027833.P2673229578852313683.f2, A027833.P2673229578852313683.f3, A027833.P2673229578852313683.f1, A027833.P2673229578852313683.a, A001223, A001223.P5083310856331133973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A336411

/-! ## A336411.P10861312320007168006

`eq[A079602(n+3), A113923(n)]`
-/

namespace A336411.P10861312320007168006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079602 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113923 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336411.P10861312320007168006

namespace A336411

/-- `eq[A079602(n+3), A113923(n)]` -/
def P10861312320007168006.Spec : Prop :=
  ∀ n, (P10861312320007168006.a n : ℤ) = A336411 (n + 1)

end A336411

/-! ## A336411.P806886265623271193

`eq[A079602(n+3), A122553(n)]`
-/

namespace A336411.P806886265623271193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079602 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336411.P806886265623271193

namespace A336411

/-- `eq[A079602(n+3), A122553(n)]` -/
def P806886265623271193.Spec : Prop :=
  ∀ n, (P806886265623271193.a n : ℤ) = A336411 (n + 1)

end A336411

/-! ## A336411.P1861116159571016826

`eq[A079602(n+3), A158799(n)]`
-/

namespace A336411.P1861116159571016826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079602 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336411.P1861116159571016826

namespace A336411

/-- `eq[A079602(n+3), A158799(n)]` -/
def P1861116159571016826.Spec : Prop :=
  ∀ n, (P1861116159571016826.a n : ℤ) = A336411 (n + 1)

end A336411

/-! ## A336411.P16020709434728843431

`eq[A107323(n+3), A108719(n+1)]`
-/

namespace A336411.P16020709434728843431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107323 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336411.P16020709434728843431

namespace A336411

/-- `eq[A107323(n+3), A108719(n+1)]` -/
def P16020709434728843431.Spec : Prop :=
  ∀ n, (P16020709434728843431.a n : ℤ) = A336411 (n + 1)

end A336411

/-! ## A336411.P11137200131584969834

`eq[A079602(n+3), A157532(n+1)]`
-/

namespace A336411.P11137200131584969834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079602 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336411.P11137200131584969834

namespace A336411

/-- `eq[A079602(n+3), A157532(n+1)]` -/
def P11137200131584969834.Spec : Prop :=
  ∀ n, (P11137200131584969834.a n : ℤ) = A336411 (n + 1)

end A336411

/-! ## A336411.P12748838830817201415

`eq[A107323(n+3), A140461(n+1)]`
-/

namespace A336411.P12748838830817201415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107323 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140461 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336411.P12748838830817201415

namespace A336411

/-- `eq[A107323(n+3), A140461(n+1)]` -/
def P12748838830817201415.Spec : Prop :=
  ∀ n, (P12748838830817201415.a n : ℤ) = A336411 (n + 1)

end A336411

/-! ## A336411.P1797318213618163249

`eq[3, A289898(n+3)]`
-/

namespace A336411.P1797318213618163249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289898 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336411.P1797318213618163249

namespace A336411

/-- `eq[3, A289898(n+3)]` -/
def P1797318213618163249.Spec : Prop :=
  ∀ n, (P1797318213618163249.a n : ℤ) = A336411 (n + 1)

end A336411

/-! ## A336411.P15204105188965548297

`lt[A163981(n+1), n]-2`
-/

namespace A336411.P15204105188965548297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163981 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 2

end

end A336411.P15204105188965548297

namespace A336411

/-- `lt[A163981(n+1), n]-2` -/
def P15204105188965548297.Spec : Prop :=
  ∀ n, P15204105188965548297.a n = A336411 (n + 1)

end A336411

/-! ## A336411.P8018344204284148238

`A308754(A116958(n+2))`
-/

namespace A336411.P8018344204284148238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308754 (A116958 (n + 2)).toNat

end

end A336411.P8018344204284148238

namespace A336411

/-- `A308754(A116958(n+2))` -/
def P8018344204284148238.Spec : Prop :=
  ∀ n, P8018344204284148238.a n = A336411 (n + 1)

end A336411

/-! ## A336411.P15877395396268006818

`A082513(A073832(n+2))`
-/

namespace A336411.P15877395396268006818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082513 (A073832 (n + 2)).toNat

end

end A336411.P15877395396268006818

namespace A336411

/-- `A082513(A073832(n+2))` -/
def P15877395396268006818.Spec : Prop :=
  ∀ n, P15877395396268006818.a n = A336411 (n + 1)

end A336411

/-! ## A336411.P5601561124843564962

`eq[A105439(n+1), A113923(n)]`
-/

namespace A336411.P5601561124843564962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113923 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336411.P5601561124843564962

namespace A336411

/-- `eq[A105439(n+1), A113923(n)]` -/
def P5601561124843564962.Spec : Prop :=
  ∀ n, (P5601561124843564962.a n : ℤ) = A336411 (n + 1)

end A336411

/-! ## A336411.P5057463713037207175

`eq[A105439(n+1), A122553(n)]`
-/

namespace A336411.P5057463713037207175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336411.P5057463713037207175

namespace A336411

/-- `eq[A105439(n+1), A122553(n)]` -/
def P5057463713037207175.Spec : Prop :=
  ∀ n, (P5057463713037207175.a n : ℤ) = A336411 (n + 1)

end A336411

/-!
# A336412: Number of labeled dihedral groups with a fixed identity.

The programs for A336412, there is no canonical definition to state claims against.
-/

/-! ## A336412.P10253710898114673068

`A060817(2*n+1)/A002618(n+1)`
-/

namespace A336412.P10253710898114673068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060817 (2 * n + 1) : ℚ) / (A002618 (n + 1) : ℚ)

end

end A336412.P10253710898114673068

/-!
# A336414: Number of divisors of n! with distinct prime multiplicities.

The programs for A336414, there is no canonical definition to state claims against.
-/

/-! ## A336414.P10736913787986910660

`∑{d}[n!, A351564(#)]`
-/

namespace A336414.P10736913787986910660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A351564 d

end

end A336414.P10736913787986910660

/-! ## A336414.P823422546924945065

`A329548(A002513(n))`
-/

namespace A336414.P823422546924945065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329548 (A002513 n).toNat

end

end A336414.P823422546924945065

/-! ## A336414.P424389997524141691

`A118168(A306319(n))`
-/

namespace A336414.P424389997524141691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (A306319 n).toNat

end

end A336414.P424389997524141691

/-! ## A336414.P18218509336615338618

`A329548(A335604(n))`
-/

namespace A336414.P18218509336615338618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329548 (A335604 n).toNat

end

end A336414.P18218509336615338618

/-! ## A336414.P5757542840865828259

`A238369(A056768(n+1))`
-/

namespace A336414.P5757542840865828259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238369 (A056768 (n + 1)).toNat

end

end A336414.P5757542840865828259

/-!
# A336415: Number of divisors of n! with equal prime multiplicities.

The programs for A336415, the canonical program `A336415.P15157755128090898253` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336415 has offset 0).

The definition of A336415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336415.P15157755128090898253

`A048675(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A336415

/-- `A048675(n)+a(n-1)` -/
def P15157755128090898253.Spec : Prop :=
  ∀ n, P15157755128090898253.a n = A336415 n

theorem P15157755128090898253.correct : P15157755128090898253.Spec := by
  intro n
  simp only [A336415]

end A336415

/-! ## A336415.P6739858509830799756

`∑[A048675(abs(1-n)+1)]`
-/

namespace A336415.P6739858509830799756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336415.P6739858509830799756

namespace A336415

/-- `∑[A048675(abs(1-n)+1)]` -/
def P6739858509830799756.Spec : Prop :=
  ∀ n, P6739858509830799756.a n = A336415 n

end A336415

/-! ## A336415.P16976088045295799900

`∑[A048675(A028310(n))]+1`
-/

namespace A336415.P16976088045295799900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A336415.P16976088045295799900

namespace A336415

/-- `∑[A048675(A028310(n))]+1` -/
def P16976088045295799900.Spec : Prop :=
  ∀ n, P16976088045295799900.a n = A336415 n

end A336415

/-! ## A336415.P8799082266772234751

`∑[A048675(A123108(2*n))]+1`
-/

namespace A336415.P8799082266772234751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A336415.P8799082266772234751

namespace A336415

/-- `∑[A048675(A123108(2*n))]+1` -/
def P8799082266772234751.Spec : Prop :=
  ∀ n, P8799082266772234751.a n = A336415 n

end A336415

/-! ## A336415.P10035207898791325233

`∑[∑{d}[n, A048675(A014963(#))]]+1`
-/

namespace A336415.P10035207898791325233
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A048675 (A014963 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A336415.P10035207898791325233

namespace A336415

/-- `∑[∑{d}[n, A048675(A014963(#))]]+1` -/
def P10035207898791325233.Spec : Prop :=
  ∀ n, P10035207898791325233.a n = A336415 n

end A336415

/-! ## A336415.P16249082181499127428

`∑[A048675(n+1)]+1-A048675(n+1)`
-/

namespace A336415.P16249082181499127428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A048675 (n + 1))

end

end A336415.P16249082181499127428

namespace A336415

/-- `∑[A048675(n+1)]+1-A048675(n+1)` -/
def P16249082181499127428.Spec : Prop :=
  ∀ n, P16249082181499127428.a n = A336415 n

end A336415

/-! ## A336415.P14707392006141423220

`∑[A104244(∑[n]+2)]`
-/

namespace A336415.P14707392006141423220
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104244 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336415.P14707392006141423220

namespace A336415

/-- `∑[A104244(∑[n]+2)]` -/
def P14707392006141423220.Spec : Prop :=
  ∀ n, P14707392006141423220.a n = A336415 n

end A336415

/-!
# A336416: Number of perfect-power divisors of n!.

The programs for A336416, there is no canonical definition to state claims against.
-/

/-! ## A336416.P9056016799026585876

`A295084(A057210(n)+1)`
-/

namespace A336416.P9056016799026585876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295084 (A057210 (n + 10) + 1).toNat

end

end A336416.P9056016799026585876

/-!
# A336417: Number of perfect-power divisors of superprimorials A006939.

The programs for A336417, there is no canonical definition to state claims against.
-/

/-! ## A336417.P13700989847148727394

`A325393(A056184(n))`
-/

namespace A336417.P13700989847148727394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325393 (A056184 n).toNat

end

end A336417.P13700989847148727394

/-! ## A336417.P6532216737445417490

`A325393(A192952(n)+1)`
-/

namespace A336417.P6532216737445417490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325393 (A192952 n + 1).toNat

end

end A336417.P6532216737445417490

/-! ## A336417.P1378396924404692279

`A325393(A344004(n+2))`
-/

namespace A336417.P1378396924404692279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325393 (A344004 (n + 2)).toNat

end

end A336417.P1378396924404692279

/-!
# A336418: Numbers with a factorial number of divisors.

The programs for A336418, the canonical program `A336418.P9875464423020166936` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336418 has offset 1).

The definition of A336418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2443 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336418.P9875464423020166936

`eq[1, A316341(∏{e}[n+1, #+1])]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A336418

/-- `eq[1, A316341(∏{e}[n+1, #+1])]+1` -/
def P9875464423020166936.Spec : Prop :=
  ∀ n, (P9875464423020166936.a n : ℤ) = A336418 (n + 1)

theorem P9875464423020166936.correct : P9875464423020166936.Spec := by
  intro n
  simp only [A336418, Nat.add_sub_cancel]

end A336418

/-! ## A336418.P1849639053062736925

`∪[A008512(n), A325337(n+1)]`
-/

namespace A336418.P1849639053062736925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008512 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336418.P1849639053062736925

namespace A336418

/-- `∪[A008512(n), A325337(n+1)]` -/
def P1849639053062736925.Spec : Prop :=
  ∀ n, (P1849639053062736925.a n : ℤ) = A336418 (n + 1)

end A336418

/-! ## A336418.P2265906814294617022

`∪[A010984(n), A325337(n+1)]`
-/

namespace A336418.P2265906814294617022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010984 (n + 31)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336418.P2265906814294617022

namespace A336418

/-- `∪[A010984(n), A325337(n+1)]` -/
def P2265906814294617022.Spec : Prop :=
  ∀ n, (P2265906814294617022.a n : ℤ) = A336418 (n + 1)

end A336418

/-! ## A336418.P10518063839973168286

`∪[A016793(n), A325337(n+1)]`
-/

namespace A336418.P10518063839973168286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016793 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336418.P10518063839973168286

namespace A336418

/-- `∪[A016793(n), A325337(n+1)]` -/
def P10518063839973168286.Spec : Prop :=
  ∀ n, (P10518063839973168286.a n : ℤ) = A336418 (n + 1)

end A336418

/-! ## A336418.P17321356172847477651

`∪[A016829(n), A325337(n+1)]`
-/

namespace A336418.P17321356172847477651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016829 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336418.P17321356172847477651

namespace A336418

/-- `∪[A016829(n), A325337(n+1)]` -/
def P17321356172847477651.Spec : Prop :=
  ∀ n, (P17321356172847477651.a n : ℤ) = A336418 (n + 1)

end A336418

/-! ## A336418.P6701188171126439684

`∪[A016877(n), A325337(n+1)]`
-/

namespace A336418.P6701188171126439684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336418.P6701188171126439684

namespace A336418

/-- `∪[A016877(n), A325337(n+1)]` -/
def P6701188171126439684.Spec : Prop :=
  ∀ n, (P6701188171126439684.a n : ℤ) = A336418 (n + 1)

end A336418

/-! ## A336418.P12148652305600799690

`∪[A016937(n), A325337(n+1)]`
-/

namespace A336418.P12148652305600799690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016937 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336418.P12148652305600799690

namespace A336418

/-- `∪[A016937(n), A325337(n+1)]` -/
def P12148652305600799690.Spec : Prop :=
  ∀ n, (P12148652305600799690.a n : ℤ) = A336418 (n + 1)

end A336418

/-! ## A336418.P11501687965532093136

`∪[A017009(n), A325337(n+1)]`
-/

namespace A336418.P11501687965532093136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017009 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336418.P11501687965532093136

namespace A336418

/-- `∪[A017009(n), A325337(n+1)]` -/
def P11501687965532093136.Spec : Prop :=
  ∀ n, (P11501687965532093136.a n : ℤ) = A336418 (n + 1)

end A336418

/-! ## A336418.P10305210455104485404

`∪[A017093(n), A325337(n+1)]`
-/

namespace A336418.P10305210455104485404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336418.P10305210455104485404

namespace A336418

/-- `∪[A017093(n), A325337(n+1)]` -/
def P10305210455104485404.Spec : Prop :=
  ∀ n, (P10305210455104485404.a n : ℤ) = A336418 (n + 1)

end A336418

/-! ## A336418.P9363676827364176688

`∪[A017189(n), A325337(n+1)]`
-/

namespace A336418.P9363676827364176688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336418.P9363676827364176688

namespace A336418

/-- `∪[A017189(n), A325337(n+1)]` -/
def P9363676827364176688.Spec : Prop :=
  ∀ n, (P9363676827364176688.a n : ℤ) = A336418 (n + 1)

end A336418

/-!
# A336419: Number of divisors d of the n-th superprimorial A006939(n) with distinct prime exponents such that the quotient A006939(n)/d also has distinct prime exponents.

The programs for A336419, there is no canonical definition to state claims against.
-/

/-! ## A336419.P1377837487871157842

`A230980(A148734(n)+A148688(n+1))`
-/

namespace A336419.P1377837487871157842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A148734 n + A148688 (n + 1)).toNat

end

end A336419.P1377837487871157842

/-! ## A336419.P147324442925196048

`∑[∏{e}[∏[A052534(n)-n], #+1]]`
-/

namespace A336419.P147324442925196048
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052534 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336419.P147324442925196048

/-! ## A336419.P14399934378523298156

`A054846(A352280(n))`
-/

namespace A336419.P14399934378523298156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A352280 n).toNat

end

end A336419.P14399934378523298156

/-!
# A336421: Number of ways to choose a divisor of a divisor, both having distinct prime exponents, of the n-th superprimorial number A006939(n).

The programs for A336421, there is no canonical definition to state claims against.
-/

/-! ## A336421.P13999647411176028370

`A020658(A000168(n)+(n²+n)*cot(atan(2)))`
-/

namespace A336421.P13999647411176028370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (SequenceMachineLib.roundAway ((A000168 n : ℝ) + (n ^ 2 + n : ℝ) * Real.cot (Real.arctan (2 : ℝ)))).toNat

end

end A336421.P13999647411176028370

/-! ## A336421.P3422597730289372681

`A020658(A000168(n)+floor((2*n+1)²/8))`
-/

namespace A336421.P3422597730289372681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (A000168 n + ⌊((2 * n + 1) ^ 2 : ℚ) / 8⌋).toNat

end

end A336421.P3422597730289372681

/-!
# A336422: Number of ways to choose a divisor of a divisor of n, both having distinct prime exponents.

The programs for A336422, there is no canonical definition to state claims against.
-/

/-! ## A336422.P6072876271477101053

`∑{d}[A046523(n+1), A186189(A210230(#))]`
-/

namespace A336422.P6072876271477101053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A186189 (A210230 d).toNat

end

end A336422.P6072876271477101053

/-! ## A336422.P948167703434751766

`A136565(A007955(n+1))+A073093(n+1)`
-/

namespace A336422.P948167703434751766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136565 (A007955 (n + 1)).toNat + A073093 (n + 1)

end

end A336422.P948167703434751766

/-! ## A336422.P15660795417909966316

`A136566(n+1)+A073093(A007955(n+1))`
-/

namespace A336422.P15660795417909966316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136566 (n + 1) + A073093 (A007955 (n + 1)).toNat

end

end A336422.P15660795417909966316

/-! ## A336422.P12885583166055404529

`A268387(n+1)+A073093(A007955(n+1))`
-/

namespace A336422.P12885583166055404529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268387 (n + 1) + A073093 (A007955 (n + 1)).toNat

end

end A336422.P12885583166055404529

/-! ## A336422.P9346818504536949109

`A196155(A265390(n+1))`
-/

namespace A336422.P9346818504536949109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196155 (A265390 (n + 1)).toNat

end

end A336422.P9346818504536949109

/-!
# A336423: Number of strict chains of divisors from n to 1 using terms of A130091 (numbers with distinct prime multiplicities).

The programs for A336423, there is no canonical definition to state claims against.
-/

/-! ## A336423.P4926664648827632322

`A336571(A046523(n+1))*A351564(n+1)`
-/

namespace A336423.P4926664648827632322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336571 (A046523 (n + 1)).toNat * A351564 (n + 1)

end

end A336423.P4926664648827632322

/-! ## A336423.P14280894976948570368

`A336571(A351564(n+1)+n)*A351564(n+1)`
-/

namespace A336423.P14280894976948570368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336571 (A351564 (n + 1) + (n : ℤ)).toNat * A351564 (n + 1)

end

end A336423.P14280894976948570368

/-! ## A336423.P9992933277624984526

`A336571(n+1)*A351564(n+1)`
-/

namespace A336423.P9992933277624984526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336571 (n + 1) * A351564 (n + 1)

end

end A336423.P9992933277624984526

/-! ## A336423.P17791203453334580626

`A336571(n+1)*A386575(n+1)`
-/

namespace A336423.P17791203453334580626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336571 (n + 1) * A386575 (n + 1)

end

end A336423.P17791203453334580626

/-! ## A336423.P15480620801819741869

`A336571(n+1)%(33^A336569(n+1))`
-/

namespace A336423.P15480620801819741869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336571 (n + 1)) (SequenceMachineLib.roundAway ((33 : ℚ) ^ (A336569 (n + 1) : ℤ)))

end

end A336423.P15480620801819741869

/-! ## A336423.P9669114234505864791

`A294068(A327499(n+1))*A336571(n+1)`
-/

namespace A336423.P9669114234505864791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294068 (A327499 (n + 1)).toNat * A336571 (n + 1)

end

end A336423.P9669114234505864791

/-! ## A336423.P8161673727166663742

`lcm(A008683(A181819(n+1)), A336571(n+1))`
-/

namespace A336423.P8161673727166663742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A181819 (n + 1)).toNat) (A336571 (n + 1))

end

end A336423.P8161673727166663742

/-! ## A336423.P12043173941972744483

`A336569(n+1)/A336570(n+1)*A336571(n+1)`
-/

namespace A336423.P12043173941972744483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336569 (n + 1) : ℚ) / (A336570 (n + 1) : ℚ) * (A336571 (n + 1) : ℚ)

end

end A336423.P12043173941972744483

/-! ## A336423.P17651223139624628863

`A008966(A070921(n+1))*A336571(n+1)`
-/

namespace A336423.P17651223139624628863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A070921 (n + 1)).toNat * A336571 (n + 1)

end

end A336423.P17651223139624628863

/-!
# A336424: Number of factorizations of n where each factor belongs to A130091 (numbers with distinct prime multiplicities).

The programs for A336424, there is no canonical definition to state claims against.
-/

/-! ## A336424.P13021781375819057841

`A085082(A322020(n+1)%A338855(n+1))`
-/

namespace A336424.P13021781375819057841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (Int.tmod (A322020 (n + 1)) (A338855 (n + 1))).toNat

end

end A336424.P13021781375819057841

/-! ## A336424.P6823018012667767912

`A085082(A322020(n+1))+A000007(A094305(n))`
-/

namespace A336424.P6823018012667767912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (A322020 (n + 1)).toNat + A000007 (A094305 n).toNat

end

end A336424.P6823018012667767912

/-! ## A336424.P17308831396145467788

`A001222(A107811(n+1))*A085082(A322020(n+1))`
-/

namespace A336424.P17308831396145467788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A107811 (n + 1)).toNat * A085082 (A322020 (n + 1)).toNat

end

end A336424.P17308831396145467788

/-! ## A336424.P14598680492356956398

`A001222(A161554(n+1))*A085082(A322020(n+1))`
-/

namespace A336424.P14598680492356956398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A161554 (n + 1)).toNat * A085082 (A322020 (n + 1)).toNat

end

end A336424.P14598680492356956398

/-! ## A336424.P15743203765471924646

`A001222(A161555(n+1))*A085082(A322020(n+1))`
-/

namespace A336424.P15743203765471924646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A161555 (n + 1)).toNat * A085082 (A322020 (n + 1)).toNat

end

end A336424.P15743203765471924646

/-! ## A336424.P6214687142866658159

`A085082(A322020(n+1))+A000038(A003215(n))`
-/

namespace A336424.P6214687142866658159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (A322020 (n + 1)).toNat + A000038 (A003215 n).toNat

end

end A336424.P6214687142866658159

/-!
# A336425: Number of ways to choose a divisor with distinct prime exponents of a divisor with distinct prime exponents of n!.

The programs for A336425, there is no canonical definition to state claims against.
-/

/-! ## A336425.P11576837964745704990

`A045917(A319984(n+1)+A287860(n))`
-/

namespace A336425.P11576837964745704990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A319984 (n + 1) + A287860 n).toNat

end

end A336425.P11576837964745704990

/-! ## A336425.P16107298388294947577

`A102825(A000740(n+1)-A045687(n))`
-/

namespace A336425.P16107298388294947577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102825 (A000740 (n + 1) - A045687 n).toNat

end

end A336425.P16107298388294947577

/-! ## A336425.P4152712457954808958

`A051162(A105458(n+1)+A000720(n+1)^n)`
-/

namespace A336425.P4152712457954808958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A105458 (n + 1) + A000720 (n + 1) ^ n).toNat

end

end A336425.P4152712457954808958

/-!
# A336426: Numbers that cannot be written as a product of superprimorials {2, 12, 360, 75600, ...}.

The programs for A336426, there is no canonical definition to state claims against.
-/

/-! ## A336426.P1798691416267609862

`comp[2*a(n-2)]` with `a(0)=0, a(1)=1, a(2)=12`
-/

namespace A336426.P1798691416267609862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 12] fun n f1 =>
  2 * f1 (n - 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A336426.P1798691416267609862

/-! ## A336426.P4311443964926787395

`lt[3, (n/xor(n, n-1))²]`
-/

namespace A336426.P4311443964926787395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (Int.xor (n : ℤ) ((n : ℤ) - 1) : ℚ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A336426.P4311443964926787395

/-! ## A336426.P13159739833712641665

`lt[C(n, 2), and(n, n-1)²]`
-/

namespace A336426.P13159739833712641665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A336426.P13159739833712641665

/-! ## A336426.P13955246911388036673

`lt[1, floor(n/xor(n, n-1))]`
-/

namespace A336426.P13955246911388036673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Int.xor (n : ℤ) ((n : ℤ) - 1) : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A336426.P13955246911388036673

/-! ## A336426.P15247296626066620438

`lt[2, (n+1)/xor(n, n-1)]`
-/

namespace A336426.P15247296626066620438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.xor (n : ℤ) ((n : ℤ) - 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A336426.P15247296626066620438

/-! ## A336426.P414644571831003201

`lt[∏{e}[2*n, 5^#], (2*n)²]`
-/

namespace A336426.P414644571831003201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), 5 ^ Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A336426.P414644571831003201

/-! ## A336426.P1628784508372279810

`lt[2*(xor(n, n+1)-1), n]+1`
-/

namespace A336426.P1628784508372279810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.xor n (n + 1) : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A336426.P1628784508372279810

/-! ## A336426.P1381302791096152527

`comp[A163000(n)]`
-/

namespace A336426.P1381302791096152527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163000 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A336426.P1381302791096152527

/-! ## A336426.P5362746924883095573

`lt[n, A305989(n)]`
-/

namespace A336426.P5362746924883095573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A336426.P5362746924883095573

/-! ## A336426.P16371857164430860524

`∪[A001550(n), A116451(n)]`
-/

namespace A336426.P16371857164430860524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001550 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116451 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336426.P16371857164430860524

/-!
# A336427: a(0) = 0; a(n) = 1 + (1/n) * Sum_{k=1..n-1} binomial(n,k)^3 * k * a(k).

The programs for A336427, there is no canonical definition to state claims against.
-/

/-! ## A336427.P6420814139578786500

`∑[A241186(∑[A022088(n)])]`
-/

namespace A336427.P6420814139578786500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241186 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336427.P6420814139578786500

/-!
# A336428: Total number of graceful labelings of the complement of the path graph P_n.

The programs for A336428, there is no canonical definition to state claims against.
-/

/-! ## A336428.P8721686906385445731

`A113311(n)*A387827(n+1)`
-/

namespace A336428.P8721686906385445731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113311 n * A387827 (n + 1)

end

end A336428.P8721686906385445731

/-!
# A336430: Number of partitions of n into two positive integer parts that have the same number of decimal digits.

The programs for A336430, there is no canonical definition to state claims against.
-/

/-! ## A336430.P13287674253970461258

`ceil(abs((9-abs(9-n))/2))`
-/

namespace A336430.P13287674253970461258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|((9 - |9 - (n : ℤ)| : ℚ) / 2)|⌉

end

end A336430.P13287674253970461258

/-! ## A336430.P12303491332730725312

`∑[A055642(A174221(n))-A055642(n)]`
-/

namespace A336430.P12303491332730725312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A174221 n).toNat - A055642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336430.P12303491332730725312

/-! ## A336430.P15917934914853190424

`∑[A118511(A273737(n))-and(1, n+1)]`
-/

namespace A336430.P15917934914853190424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118511 (A273737 n).toNat - (Nat.land 1 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336430.P15917934914853190424

/-! ## A336430.P7827388697783878134

`A110654(abs(n-18*round(n/18)))%A196233(n)`
-/

namespace A336430.P7827388697783878134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110654 |(n : ℤ) - 18 * SequenceMachineLib.roundAway ((n : ℚ) / 18)|.toNat) (A196233 (n + 11))

end

end A336430.P7827388697783878134

/-! ## A336430.P10513037473165283005

`A169990(A131854(n+2))`
-/

namespace A336430.P10513037473165283005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169990 (A131854 (n + 2)).toNat

end

end A336430.P10513037473165283005

/-!
# A336431: Number of ordered ways to write n as the sum of a practical number (A005153) and a generalized heptagonal number (A085787).

The programs for A336431, there is no canonical definition to state claims against.
-/

/-! ## A336431.P15031303335531319596

`A288473(A100614(n+1))+A055229(n+1)`
-/

namespace A336431.P15031303335531319596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288473 (A100614 (n + 1)).toNat + A055229 (n + 1)

end

end A336431.P15031303335531319596

/-! ## A336431.P17733785320973535143

`gcd(A000032(A057273(n+1)), A284387(n+1))`
-/

namespace A336431.P17733785320973535143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000032 (A057273 (n + 1)).toNat) (A284387 (n + 1))

end

end A336431.P17733785320973535143

/-! ## A336431.P6194612988239315107

`A328856(A356249(n+1))`
-/

namespace A336431.P6194612988239315107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328856 (A356249 (n + 1)).toNat

end

end A336431.P6194612988239315107

/-! ## A336431.P1312250292227482296

`A117546(xor(A029907(n), A345382(n+4)))`
-/

namespace A336431.P1312250292227482296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117546 (Int.xor (A029907 n) (A345382 (n + 4))).toNat

end

end A336431.P1312250292227482296

/-! ## A336431.P16391496025851922696

`A001221(A207989(n+1)+A103300(n+3))`
-/

namespace A336431.P16391496025851922696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A207989 (n + 1) + A103300 (n + 3)).toNat

end

end A336431.P16391496025851922696

/-!
# A336432: Number of ordered quadruples of divisors (d_i, d_j, d_k, d_m) of n such that GCD(d_i, d_j, d_k, d_m) > 1.

The programs for A336432, there is no canonical definition to state claims against.
-/

/-! ## A336432.P11262279416698209576

`16%A266476(A211776(n+1))`
-/

namespace A336432.P11262279416698209576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 16 (A266476 (A211776 (n + 1)).toNat)

end

end A336432.P11262279416698209576

/-! ## A336432.P15681730841174526391

`and(n+2, A319764(A181819(n+1)))`
-/

namespace A336432.P15681730841174526391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) (A319764 (A181819 (n + 1)).toNat)

end

end A336432.P15681730841174526391

/-! ## A336432.P7850285301327248492

`A002262(A115339(A318812(n+1))²)`
-/

namespace A336432.P7850285301327248492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A115339 (A318812 (n + 1)).toNat ^ 2).toNat

end

end A336432.P7850285301327248492

/-! ## A336432.P14612062752413015504

`A259361(A104244(A082588(n+1))²)`
-/

namespace A336432.P14612062752413015504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A104244 (A082588 (n + 1)).toNat ^ 2).toNat

end

end A336432.P14612062752413015504

/-! ## A336432.P13834255840376428748

`A303119(A046523(n+1))^A284877(n+1)`
-/

namespace A336432.P13834255840376428748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303119 (A046523 (n + 1)).toNat : ℚ) ^ (A284877 (n + 1) : ℤ)

end

end A336432.P13834255840376428748

/-!
# A336433: Number of sequences of n numbers from 1 to n that do not have a subsequence that adds up to n.

The programs for A336433, there is no canonical definition to state claims against.
-/

/-! ## A336433.P3738070720761520906

`A060715(C(A051014(n), n+1))`
-/

namespace A336433.P3738070720761520906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (Nat.choose (A051014 n).toNat (n + 1))

end

end A336433.P3738070720761520906

/-! ## A336433.P1132666121109911555

`∑{d}[A305190(n+1), A160126(#)]`
-/

namespace A336433.P1132666121109911555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A160126 d

end

end A336433.P1132666121109911555

/-! ## A336433.P17454755043818265400

`A084970(A007947(n+1))%A110302(n)`
-/

namespace A336433.P17454755043818265400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084970 (A007947 (n + 1)).toNat) (A110302 n)

end

end A336433.P17454755043818265400

/-!
# A336436: a(0) = 0; a(n) = ((n-1)!)^3 + (1/n) * Sum_{k=1..n-1} (binomial(n,k) * (n-k-1)!)^3 * k * a(k).

The programs for A336436, there is no canonical definition to state claims against.
-/

/-! ## A336436.P12879661956856023213

`A266981(A003309(n*(a(n-1)+(n-1)*a(n-2)/2)+1))` with `a(0)=0, a(1)=1`
-/

namespace A336436.P12879661956856023213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A266981 (A003309 (SequenceMachineLib.roundAway ((n : ℚ) * ((a (n - 1) : ℚ) + ((n : ℤ) - 1 : ℚ) * ((a (n - 2) : ℚ) / 2)) + 1)).toNat).toNat

end

end A336436.P12879661956856023213

/-!
# A336442: Numbers having 3 pairwise coprime divisors, {d_1, d_2, d_3}, such that d_1 < d_2 < d_3 < 2*d_1.

The programs for A336442, there is no canonical definition to state claims against.
-/

/-! ## A336442.P8628671480753129527

`A133265(n!)*A212666(n+1)`
-/

namespace A336442.P8628671480753129527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (Nat.factorial n) * A212666 (n + 1)

end

end A336442.P8628671480753129527

/-! ## A336442.P656514156285442281

`∩[A284375(n+1), A337688(n+1)]`
-/

namespace A336442.P656514156285442281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336442.P656514156285442281

/-! ## A336442.P7163868548211699156

`∩[A229304(n+1), A337688(n+1)]`
-/

namespace A336442.P7163868548211699156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336442.P7163868548211699156

/-!
# A336443: Primitive terms of A336442: terms k of A336442 such that none of the proper divisors of k are in A336442.

The programs for A336443, there is no canonical definition to state claims against.
-/

/-! ## A336443.P14602181508422553674

`A336628(A152604(n+1))`
-/

namespace A336443.P14602181508422553674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336628 (A152604 (n + 1)).toNat

end

end A336443.P14602181508422553674

/-! ## A336443.P14649916054111720827

`A336628(∑[A189175(n)!])`
-/

namespace A336443.P14649916054111720827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A189175 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336628 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336443.P14649916054111720827

/-!
# A336444: Numbers m such that k + A005361(k) <= m for all k < m.

The programs for A336444, there is no canonical definition to state claims against.
-/

/-! ## A336444.P17655353787326571057

`record[∏{e}[n, #]+n]%record[A248526(n)]`
-/

namespace A336444.P17655353787326571057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n))

end

end A336444.P17655353787326571057

/-! ## A336444.P13510546853814649428

`A001222(A265799(n+1))*record[∏{e}[n, #]+n]`
-/

namespace A336444.P13510546853814649428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A265799 (n + 1)).toNat * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A336444.P13510546853814649428

/-! ## A336444.P13784723561163616795

`eq[1, ∏{e}[n-n²²-n²², #]]+1`
-/

namespace A336444.P13784723561163616795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n ^ 2) ^ 2 : ℤ) - ((n ^ 2) ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336444.P13784723561163616795

/-! ## A336444.P2367209721960976533

`lt[A050096(A131320(3*n+2)), 7]`
-/

namespace A336444.P2367209721960976533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050096 (A131320 (3 * n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A336444.P2367209721960976533

/-! ## A336444.P8661027262541522736

`record[∏{e}[n, #]+n]^A001221(A000079(n))`
-/

namespace A336444.P8661027262541522736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A001221 (A000079 n).toNat : ℤ)

end

end A336444.P8661027262541522736

/-!
# A336448: Sum of square displacements over all n-step self-avoiding walks on a 2D square lattice.

The programs for A336448, there is no canonical definition to state claims against.
-/

/-! ## A336448.P3035938837947047227

`A015220(A178334(n))*A078797(A028310(n))`
-/

namespace A336448.P3035938837947047227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015220 (A178334 n).toNat * A078797 (A028310 n).toNat

end

end A336448.P3035938837947047227

/-!
# A336449: Values z of primitive solutions (x, y, z) to the Diophantine equation x^3 + y^3 + 2*z^3 = 2*4^6.

The programs for A336449, there is no canonical definition to state claims against.
-/

/-! ## A336449.P17177908960105657294

`lt[round(lcm(2, n+3)/6)!, char[1]+n]²`
-/

namespace A336449.P17177908960105657294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 3) : ℚ) / 6)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A336449.P17177908960105657294

/-! ## A336449.P18358706741852288057

`∑[A285194(n²²)]²`
-/

namespace A336449.P18358706741852288057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285194 ((n ^ 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A336449.P18358706741852288057

/-! ## A336449.P602414262031185453

`∑[A126061((n+1)²)]²`
-/

namespace A336449.P602414262031185453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126061 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A336449.P602414262031185453

/-! ## A336449.P6882841024873605266

`lt[A208092(n+4), n]²`
-/

namespace A336449.P6882841024873605266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208092 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A336449.P6882841024873605266

/-! ## A336449.P16516244672590045677

`record[gcd(3-n, A089877(n))²]`
-/

namespace A336449.P16516244672590045677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 - (n : ℤ)) (A089877 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336449.P16516244672590045677

/-!
# A336451: Primes of form x^3 - (x + 1)^3 + 3*z^3 or -x^3 + (x + 1)^3 - 3*z^3, with x,z >= 0.

The programs for A336451, there is no canonical definition to state claims against.
-/

/-! ## A336451.P5989993717529235779

`p?[∑[A014695(A138841(n+1))]]`
-/

namespace A336451.P5989993717529235779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (A138841 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A336451.P5989993717529235779

/-! ## A336451.P15555969402010649755

`∩[A162950(n+1), A382445(n+1)]`
-/

namespace A336451.P15555969402010649755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336451.P15555969402010649755

/-! ## A336451.P10256993622676410399

`∩[A259187(n+1), A382445(n+1)]`
-/

namespace A336451.P10256993622676410399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336451.P10256993622676410399

/-! ## A336451.P10021721014593262300

`A000040(lt[A327149(n), A164804(n+1)])`
-/

namespace A336451.P10021721014593262300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A336451.P10021721014593262300

/-! ## A336451.P1793188584636009979

`A000040(∑[A317905(n+4)^A158116(n)])`
-/

namespace A336451.P1793188584636009979
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317905 (n + 4) : ℚ) ^ (A158116 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A336451.P1793188584636009979

/-!
# A336454: a(n) = denominator(2^n*Sum_{k=0..n} binomial(n, k)*Bernoulli(k, 1/2)*x^(n-k)).

The programs for A336454, there is no canonical definition to state claims against.
-/

/-! ## A336454.P11093548565507937535

`ceil(A144845(n)/2)`
-/

namespace A336454.P11093548565507937535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A144845 n : ℚ) / 2⌉

end

end A336454.P11093548565507937535

/-! ## A336454.P1292527886956423669

`A144845(n^floor(atan(n)))/2`
-/

namespace A336454.P1292527886956423669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat : ℚ) / 2

end

end A336454.P1292527886956423669

/-! ## A336454.P10159476194715390882

`A144845(C(2, n²)+n)/2`
-/

namespace A336454.P10159476194715390882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 (Nat.choose 2 (n ^ 2) + n) : ℚ) / 2

end

end A336454.P10159476194715390882

/-! ## A336454.P5979359726259319829

`A144845(floor(sqrt(n²+1)))/2`
-/

namespace A336454.P5979359726259319829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 (Nat.sqrt (n ^ 2 + 1)) : ℚ) / 2

end

end A336454.P5979359726259319829

/-! ## A336454.P11740308450530042744

`A141459(n)*A213621(n)`
-/

namespace A336454.P11740308450530042744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n * A213621 n

end

end A336454.P11740308450530042744

/-! ## A336454.P16757439576378221254

`gcd(A144845(n), A290030(n))`
-/

namespace A336454.P16757439576378221254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144845 n) (A290030 n)

end

end A336454.P16757439576378221254

/-! ## A336454.P5816513904281519811

`round(A144845(n)/A020639(2*(n+1)))`
-/

namespace A336454.P5816513904281519811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A144845 n : ℚ) / (A020639 (2 * (n + 1)) : ℚ))

end

end A336454.P5816513904281519811

/-!
# A336455: a(n) = A335915(sigma(n)), where A335915 is a fully multiplicative sequence with a(2) = 1 and a(p) = A000265(p^2 - 1) for odd primes p, with A000265(k) giving the odd part of k.

The programs for A336455, the canonical program `A336455.P3261113162239475427` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336455 has offset 1).

The definition of A336455 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335915, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336455.P3261113162239475427

`A335915(A000203(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A336455

/-- `A335915(A000203(n+1))` -/
def P3261113162239475427.Spec : Prop :=
  ∀ n, P3261113162239475427.a n = A336455 (n + 1)

theorem P3261113162239475427.correct : P3261113162239475427.Spec := by
  intro n
  simp only [A336455, Nat.add_sub_cancel]

end A336455

/-! ## A336455.P7887792453658244566

`A335915(A336457(n+1))`
-/

namespace A336455.P7887792453658244566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (A336457 (n + 1)).toNat

end

end A336455.P7887792453658244566

namespace A336455

/-- `A335915(A336457(n+1))` -/
def P7887792453658244566.Spec : Prop :=
  ∀ n, P7887792453658244566.a n = A336455 (n + 1)

end A336455

/-! ## A336455.P11027832949144253588

`A335915(A161942(n+1))`
-/

namespace A336455.P11027832949144253588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (A161942 (n + 1)).toNat

end

end A336455.P11027832949144253588

namespace A336455

/-- `A335915(A161942(n+1))` -/
def P11027832949144253588.Spec : Prop :=
  ∀ n, P11027832949144253588.a n = A336455 (n + 1)

end A336455

/-! ## A336455.P3126891306796490590

`A335915(A348930(n+1))`
-/

namespace A336455.P3126891306796490590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (A348930 (n + 1)).toNat

end

end A336455.P3126891306796490590

namespace A336455

/-- `A335915(A348930(n+1))` -/
def P3126891306796490590.Spec : Prop :=
  ∀ n, P3126891306796490590.a n = A336455 (n + 1)

end A336455

/-! ## A336455.P667131939428641500

`A335915(∑{d}[n+1, #])`
-/

namespace A336455.P667131939428641500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A336455.P667131939428641500

namespace A336455

/-- `A335915(∑{d}[n+1, #])` -/
def P667131939428641500.Spec : Prop :=
  ∀ n, P667131939428641500.a n = A336455 (n + 1)

end A336455

/-! ## A336455.P16495802071156202627

`A335915(A088580(n+1)-1)`
-/

namespace A336455.P16495802071156202627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (A088580 (n + 1) - 1).toNat

end

end A336455.P16495802071156202627

namespace A336455

/-- `A335915(A088580(n+1)-1)` -/
def P16495802071156202627.Spec : Prop :=
  ∀ n, P16495802071156202627.a n = A336455 (n + 1)

theorem P16495802071156202627.correct : P16495802071156202627.Spec := by
  intro n
  simp only [A336455, Nat.add_sub_cancel, A336455.P16495802071156202627.a, A336455.P3261113162239475427.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, A335915, A335915.P17327428473756616044.a, A336466, A336466.P16200719452775638290.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P2772582252347773295.a, A003958, A003958.P196685604458257440.a, A206787, A206787.P5835391057460083436.a, A336651, A336651.P16001873672567347965.a, A003602, A003602.P7612175048291952394.a, A010684, A010684.P14019262024924378744.a, A048250, A048250.P6137918235727910070.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A204455, A204455.P9449319865665436464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336455

/-! ## A336455.P1111146499284496901

`A335915(A245092(2*n+1))`
-/

namespace A336455.P1111146499284496901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (A245092 (2 * n + 1)).toNat

end

end A336455.P1111146499284496901

namespace A336455

/-- `A335915(A245092(2*n+1))` -/
def P1111146499284496901.Spec : Prop :=
  ∀ n, P1111146499284496901.a n = A336455 (n + 1)

end A336455

/-! ## A336455.P6227468067541547320

`A335915(A074400(n+1)/2)`
-/

namespace A336455.P6227468067541547320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A336455.P6227468067541547320

namespace A336455

/-- `A335915(A074400(n+1)/2)` -/
def P6227468067541547320.Spec : Prop :=
  ∀ n, P6227468067541547320.a n = A336455 (n + 1)

end A336455

/-! ## A336455.P5876436517402429813

`A335915(A074400(n+1))`
-/

namespace A336455.P5876436517402429813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (A074400 (n + 1)).toNat

end

end A336455.P5876436517402429813

namespace A336455

/-- `A335915(A074400(n+1))` -/
def P5876436517402429813.Spec : Prop :=
  ∀ n, P5876436517402429813.a n = A336455 (n + 1)

end A336455

/-! ## A336455.P8536432804313997546

`A335915(A239050(n+1)/2)`
-/

namespace A336455.P8536432804313997546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / 2)).toNat

end

end A336455.P8536432804313997546

namespace A336455

/-- `A335915(A239050(n+1)/2)` -/
def P8536432804313997546.Spec : Prop :=
  ∀ n, P8536432804313997546.a n = A336455 (n + 1)

end A336455

/-! ## A336455.P6689976802982359217

`A335915(A272027(n+1))`
-/

namespace A336455.P6689976802982359217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (A272027 (n + 1)).toNat

end

end A336455.P6689976802982359217

namespace A336455

/-- `A335915(A272027(n+1))` -/
def P6689976802982359217.Spec : Prop :=
  ∀ n, P6689976802982359217.a n = A336455 (n + 1)

end A336455

/-! ## A336455.P17593420972214241644

`A335915(A274536(n+1)/2)`
-/

namespace A336455.P17593420972214241644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (SequenceMachineLib.roundAway ((A274536 (n + 1) : ℚ) / 2)).toNat

end

end A336455.P17593420972214241644

namespace A336455

/-- `A335915(A274536(n+1)/2)` -/
def P17593420972214241644.Spec : Prop :=
  ∀ n, P17593420972214241644.a n = A336455 (n + 1)

end A336455

/-! ## A336455.P3527363903361619313

`A335915(A239050(n+1))`
-/

namespace A336455.P3527363903361619313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (A239050 (n + 1)).toNat

end

end A336455.P3527363903361619313

namespace A336455

/-- `A335915(A239050(n+1))` -/
def P3527363903361619313.Spec : Prop :=
  ∀ n, P3527363903361619313.a n = A336455 (n + 1)

end A336455

/-! ## A336455.P4584448567883176055

`A335915(A319528(n+1)/2)`
-/

namespace A336455.P4584448567883176055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (SequenceMachineLib.roundAway ((A319528 (n + 1) : ℚ) / 2)).toNat

end

end A336455.P4584448567883176055

namespace A336455

/-- `A335915(A319528(n+1)/2)` -/
def P4584448567883176055.Spec : Prop :=
  ∀ n, P4584448567883176055.a n = A336455 (n + 1)

end A336455

/-! ## A336455.P11230854871939082296

`A335915(A274536(n+1))`
-/

namespace A336455.P11230854871939082296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (A274536 (n + 1)).toNat

end

end A336455.P11230854871939082296

namespace A336455

/-- `A335915(A274536(n+1))` -/
def P11230854871939082296.Spec : Prop :=
  ∀ n, P11230854871939082296.a n = A336455 (n + 1)

end A336455

/-! ## A336455.P1635309842980813513

`A335915(A319528(n+1))`
-/

namespace A336455.P1635309842980813513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (A319528 (n + 1)).toNat

end

end A336455.P1635309842980813513

namespace A336455

/-- `A335915(A319528(n+1))` -/
def P1635309842980813513.Spec : Prop :=
  ∀ n, P1635309842980813513.a n = A336455 (n + 1)

end A336455

/-! ## A336455.P5539395200960447513

`A335915(A325299(n+1))`
-/

namespace A336455.P5539395200960447513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (A325299 (n + 1)).toNat

end

end A336455.P5539395200960447513

namespace A336455

/-- `A335915(A325299(n+1))` -/
def P5539395200960447513.Spec : Prop :=
  ∀ n, P5539395200960447513.a n = A336455 (n + 1)

end A336455

/-!
# A336456: a(n) = A335915(sigma(sigma(n))), where A335915 is a fully multiplicative sequence with a(2) = 1 and a(p) = A000265(p^2 - 1) for odd primes p, with A000265(k) giving the odd part of k.

The programs for A336456, the canonical program `A336456.P12148940539498589663` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336456 has offset 1).

The definition of A336456 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336455, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336456.P12148940539498589663

`A336455(A000203(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A336456

/-- `A336455(A000203(n+1))` -/
def P12148940539498589663.Spec : Prop :=
  ∀ n, P12148940539498589663.a n = A336456 (n + 1)

theorem P12148940539498589663.correct : P12148940539498589663.Spec := by
  intro n
  simp only [A336456, Nat.add_sub_cancel]

end A336456

/-! ## A336456.P9341730316485445322

`A335915(A051027(n+1))`
-/

namespace A336456.P9341730316485445322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (A051027 (n + 1)).toNat

end

end A336456.P9341730316485445322

namespace A336456

/-- `A335915(A051027(n+1))` -/
def P9341730316485445322.Spec : Prop :=
  ∀ n, P9341730316485445322.a n = A336456 (n + 1)

end A336456

/-! ## A336456.P7556198993566772936

`A336455(∑{d}[n+1, #])`
-/

namespace A336456.P7556198993566772936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336455 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A336456.P7556198993566772936

namespace A336456

/-- `A336455(∑{d}[n+1, #])` -/
def P7556198993566772936.Spec : Prop :=
  ∀ n, P7556198993566772936.a n = A336456 (n + 1)

end A336456

/-! ## A336456.P4667951216416576855

`A336455(abs(Δ[A330725(n)]))`
-/

namespace A336456.P4667951216416576855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336455 |f1 (n + 1) - f1 n|.toNat

end

end A336456.P4667951216416576855

namespace A336456

/-- `A336455(abs(Δ[A330725(n)]))` -/
def P4667951216416576855.Spec : Prop :=
  ∀ n, P4667951216416576855.a n = A336456 (n + 1)

end A336456

/-! ## A336456.P15877768900694962979

`A336455(A245092(Δ[n²]))`
-/

namespace A336456.P15877768900694962979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336455 (A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A336456.P15877768900694962979

namespace A336456

/-- `A336455(A245092(Δ[n²]))` -/
def P15877768900694962979.Spec : Prop :=
  ∀ n, P15877768900694962979.a n = A336456 (n + 1)

end A336456

/-! ## A336456.P13090656884114516893

`A336455(abs(A143348(n+1)))`
-/

namespace A336456.P13090656884114516893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336455 |A143348 (n + 1)|.toNat

end

end A336456.P13090656884114516893

namespace A336456

/-- `A336455(abs(A143348(n+1)))` -/
def P13090656884114516893.Spec : Prop :=
  ∀ n, P13090656884114516893.a n = A336456 (n + 1)

end A336456

/-! ## A336456.P5194993581452883678

`A336455(∑[A340793(n+1)])`
-/

namespace A336456.P5194993581452883678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336455 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A336456.P5194993581452883678

namespace A336456

/-- `A336455(∑[A340793(n+1)])` -/
def P5194993581452883678.Spec : Prop :=
  ∀ n, P5194993581452883678.a n = A336456 (n + 1)

end A336456

/-! ## A336456.P80682527756219208

`A336455(A039653(n+1)+1)`
-/

namespace A336456.P80682527756219208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336455 (A039653 (n + 1) + 1).toNat

end

end A336456.P80682527756219208

namespace A336456

/-- `A336455(A039653(n+1)+1)` -/
def P80682527756219208.Spec : Prop :=
  ∀ n, P80682527756219208.a n = A336456 (n + 1)

end A336456

/-! ## A336456.P5569386648130089926

`A336455(A088580(n+1)-1)`
-/

namespace A336456.P5569386648130089926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336455 (A088580 (n + 1) - 1).toNat

end

end A336456.P5569386648130089926

namespace A336456

/-- `A336455(A088580(n+1)-1)` -/
def P5569386648130089926.Spec : Prop :=
  ∀ n, P5569386648130089926.a n = A336456 (n + 1)

theorem P5569386648130089926.correct : P5569386648130089926.Spec := by
  intro n
  simp only [A336456, Nat.add_sub_cancel, A336456.P5569386648130089926.a, A336456.P12148940539498589663.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, A336455, A336455.P3261113162239475427.a, A335915, A335915.P17327428473756616044.a, A336466, A336466.P16200719452775638290.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P2772582252347773295.a, A003958, A003958.P196685604458257440.a, A206787, A206787.P5835391057460083436.a, A336651, A336651.P16001873672567347965.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336456

/-! ## A336456.P15435099868159796170

`A336455(A074400(n+1)/2)`
-/

namespace A336456.P15435099868159796170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336455 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A336456.P15435099868159796170

namespace A336456

/-- `A336455(A074400(n+1)/2)` -/
def P15435099868159796170.Spec : Prop :=
  ∀ n, P15435099868159796170.a n = A336456 (n + 1)

end A336456

/-! ## A336456.P14490209340741850939

`A335915(A336459(n+1))`
-/

namespace A336456.P14490209340741850939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (A336459 (n + 1)).toNat

end

end A336456.P14490209340741850939

namespace A336456

/-- `A335915(A336459(n+1))` -/
def P14490209340741850939.Spec : Prop :=
  ∀ n, P14490209340741850939.a n = A336456 (n + 1)

end A336456

/-!
# A336457: a(n) = A065330(sigma(n)), where A065330 is fully multiplicative with a(2) = a(3) = 1, and a(p) = p for primes p > 3.

The programs for A336457, the canonical program `A336457.P52664253040019696` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336457 has offset 1).

The definition of A336457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336457.P672642647615976331

`A038502(A161942(n+1))`
-/

namespace A336457.P672642647615976331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A161942 (n + 1)).toNat

end

end A336457.P672642647615976331

namespace A336457

/-- `A038502(A161942(n+1))` -/
def P672642647615976331.Spec : Prop :=
  ∀ n, P672642647615976331.a n = A336457 (n + 1)

end A336457

/-! ## A336457.P52664253040019696

`A065330(A000203(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A336457

/-- `A065330(A000203(n+1))` -/
def P52664253040019696.Spec : Prop :=
  ∀ n, P52664253040019696.a n = A336457 (n + 1)

theorem P52664253040019696.correct : P52664253040019696.Spec := by
  intro n
  simp only [A336457, Nat.add_sub_cancel]

end A336457

/-! ## A336457.P11695255477466235446

`A000265(A348930(n+1))`
-/

namespace A336457.P11695255477466235446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A348930 (n + 1)).toNat

end

end A336457.P11695255477466235446

namespace A336457

/-- `A000265(A348930(n+1))` -/
def P11695255477466235446.Spec : Prop :=
  ∀ n, P11695255477466235446.a n = A336457 (n + 1)

end A336457

/-! ## A336457.P18057613944518590763

`A348930(n+1)/A082903(n+1)`
-/

namespace A336457.P18057613944518590763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348930 (n + 1) : ℚ) / (A082903 (n + 1) : ℚ)

end

end A336457.P18057613944518590763

namespace A336457

/-- `A348930(n+1)/A082903(n+1)` -/
def P18057613944518590763.Spec : Prop :=
  ∀ n, P18057613944518590763.a n = (A336457 (n + 1) : ℚ)

end A336457

/-! ## A336457.P15759754661241277986

`A161942(n+1)/A379473(n+1)`
-/

namespace A336457.P15759754661241277986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161942 (n + 1) : ℚ) / (A379473 (n + 1) : ℚ)

end

end A336457.P15759754661241277986

namespace A336457

/-- `A161942(n+1)/A379473(n+1)` -/
def P15759754661241277986.Spec : Prop :=
  ∀ n, P15759754661241277986.a n = (A336457 (n + 1) : ℚ)

end A336457

/-! ## A336457.P12314043983041740463

`gcd(A161942(n+1), A348930(n+1))`
-/

namespace A336457.P12314043983041740463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A161942 (n + 1)) (A348930 (n + 1))

end

end A336457.P12314043983041740463

namespace A336457

/-- `gcd(A161942(n+1), A348930(n+1))` -/
def P12314043983041740463.Spec : Prop :=
  ∀ n, (P12314043983041740463.a n : ℤ) = A336457 (n + 1)

end A336457

/-! ## A336457.P3543688745763192166

`A003961(A000265(A350073(n+1)))`
-/

namespace A336457.P3543688745763192166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A000265 (A350073 (n + 1)).toNat).toNat

end

end A336457.P3543688745763192166

namespace A336457

/-- `A003961(A000265(A350073(n+1)))` -/
def P3543688745763192166.Spec : Prop :=
  ∀ n, P3543688745763192166.a n = A336457 (n + 1)

end A336457

/-! ## A336457.P13244144587143427851

`A065330(∑{d}[n+1, #])`
-/

namespace A336457.P13244144587143427851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A336457.P13244144587143427851

namespace A336457

/-- `A065330(∑{d}[n+1, #])` -/
def P13244144587143427851.Spec : Prop :=
  ∀ n, P13244144587143427851.a n = A336457 (n + 1)

end A336457

/-! ## A336457.P10765904577443291381

`∑{d}[n+1, #]/A065331(∑{d}[n+1, #])`
-/

namespace A336457.P10765904577443291381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A065331 (∑ d ∈ Nat.divisors (f2 n), d) : ℚ)

end

end A336457.P10765904577443291381

namespace A336457

/-- `∑{d}[n+1, #]/A065331(∑{d}[n+1, #])` -/
def P10765904577443291381.Spec : Prop :=
  ∀ n, P10765904577443291381.a n = (A336457 (n + 1) : ℚ)

end A336457

/-! ## A336457.P10334479190002505981

`A065330(Δ[A160664(n)])`
-/

namespace A336457.P10334479190002505981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (f1 (n + 1) - f1 n).toNat

end

end A336457.P10334479190002505981

namespace A336457

/-- `A065330(Δ[A160664(n)])` -/
def P10334479190002505981.Spec : Prop :=
  ∀ n, P10334479190002505981.a n = A336457 (n + 1)

end A336457

/-! ## A336457.P1828224756071910804

`A065330(A039653(n+1)+1)`
-/

namespace A336457.P1828224756071910804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (A039653 (n + 1) + 1).toNat

end

end A336457.P1828224756071910804

namespace A336457

/-- `A065330(A039653(n+1)+1)` -/
def P1828224756071910804.Spec : Prop :=
  ∀ n, P1828224756071910804.a n = A336457 (n + 1)

end A336457

/-! ## A336457.P6611824266442308238

`A065330(A074400(n+1)/2)`
-/

namespace A336457.P6611824266442308238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A336457.P6611824266442308238

namespace A336457

/-- `A065330(A074400(n+1)/2)` -/
def P6611824266442308238.Spec : Prop :=
  ∀ n, P6611824266442308238.a n = A336457 (n + 1)

end A336457

/-! ## A336457.P7304588372564321843

`A065330(A160664(n+1)-A160664(n))`
-/

namespace A336457.P7304588372564321843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (A160664 (n + 1) - A160664 n).toNat

end

end A336457.P7304588372564321843

namespace A336457

/-- `A065330(A160664(n+1)-A160664(n))` -/
def P7304588372564321843.Spec : Prop :=
  ∀ n, P7304588372564321843.a n = A336457 (n + 1)

end A336457

/-! ## A336457.P784601511783337448

`A245092(2*n+1)/A065331(A245092(2*n+1))`
-/

namespace A336457.P784601511783337448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245092 (2 * n + 1) : ℚ) / (A065331 (A245092 (2 * n + 1)).toNat : ℚ)

end

end A336457.P784601511783337448

namespace A336457

/-- `A245092(2*n+1)/A065331(A245092(2*n+1))` -/
def P784601511783337448.Spec : Prop :=
  ∀ n, P784601511783337448.a n = (A336457 (n + 1) : ℚ)

end A336457

/-! ## A336457.P15703586834237577793

`A065330(2*A161942(n+1))`
-/

namespace A336457.P15703586834237577793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (2 * A161942 (n + 1)).toNat

end

end A336457.P15703586834237577793

namespace A336457

/-- `A065330(2*A161942(n+1))` -/
def P15703586834237577793.Spec : Prop :=
  ∀ n, P15703586834237577793.a n = A336457 (n + 1)

end A336457

/-! ## A336457.P12103535555069890345

`A065330(A161942(n+1)+A161942(n+1))`
-/

namespace A336457.P12103535555069890345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (A161942 (n + 1) + A161942 (n + 1)).toNat

end

end A336457.P12103535555069890345

namespace A336457

/-- `A065330(A161942(n+1)+A161942(n+1))` -/
def P12103535555069890345.Spec : Prop :=
  ∀ n, P12103535555069890345.a n = A336457 (n + 1)

end A336457

/-! ## A336457.P14863945364722755215

`A161942(n+1)/A038500(2*A161942(n+1))`
-/

namespace A336457.P14863945364722755215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161942 (n + 1) : ℚ) / (A038500 (2 * A161942 (n + 1)).toNat : ℚ)

end

end A336457.P14863945364722755215

namespace A336457

/-- `A161942(n+1)/A038500(2*A161942(n+1))` -/
def P14863945364722755215.Spec : Prop :=
  ∀ n, P14863945364722755215.a n = (A336457 (n + 1) : ℚ)

end A336457

/-! ## A336457.P4691092371828176124

`A065330(2*A348930(n+1))`
-/

namespace A336457.P4691092371828176124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (2 * A348930 (n + 1)).toNat

end

end A336457.P4691092371828176124

namespace A336457

/-- `A065330(2*A348930(n+1))` -/
def P4691092371828176124.Spec : Prop :=
  ∀ n, P4691092371828176124.a n = A336457 (n + 1)

end A336457

/-! ## A336457.P4482782916173973343

`A065330(A348930(n+1)+A348930(n+1))`
-/

namespace A336457.P4482782916173973343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (A348930 (n + 1) + A348930 (n + 1)).toNat

end

end A336457.P4482782916173973343

namespace A336457

/-- `A065330(A348930(n+1)+A348930(n+1))` -/
def P4482782916173973343.Spec : Prop :=
  ∀ n, P4482782916173973343.a n = A336457 (n + 1)

end A336457

/-! ## A336457.P17327589703875326226

`A065330(A074400(n+1))`
-/

namespace A336457.P17327589703875326226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (A074400 (n + 1)).toNat

end

end A336457.P17327589703875326226

namespace A336457

/-- `A065330(A074400(n+1))` -/
def P17327589703875326226.Spec : Prop :=
  ∀ n, P17327589703875326226.a n = A336457 (n + 1)

end A336457

/-!
# A336458: Numbers k for which A065330(k) = A065330(sigma(k)).

The programs for A336458, there is no canonical definition to state claims against.
-/

/-! ## A336458.P7195482295218506882

`eq[A065330(A000203(n+1)), A065330(n+1)]+1`
-/

namespace A336458.P7195482295218506882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336458.P7195482295218506882

/-! ## A336458.P12212904783376096861

`A348867(A043316(n+1))`
-/

namespace A336458.P12212904783376096861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348867 (A043316 (n + 1)).toNat

end

end A336458.P12212904783376096861

/-! ## A336458.P7426892293532722949

`A348867(A044913(n+1))`
-/

namespace A336458.P7426892293532722949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348867 (A044913 (n + 1)).toNat

end

end A336458.P7426892293532722949

/-! ## A336458.P10838431910631913495

`A348867(A049872(n+1))`
-/

namespace A336458.P10838431910631913495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348867 (A049872 (n + 1)).toNat

end

end A336458.P10838431910631913495

/-! ## A336458.P5539224911388906791

`A348867(A061147(n+1))`
-/

namespace A336458.P5539224911388906791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348867 (A061147 (n + 1)).toNat

end

end A336458.P5539224911388906791

/-!
# A336459: a(n) = A065330(sigma(sigma(n))), where A065330 is fully multiplicative with a(2) = a(3) = 1, and a(p) = p for primes p > 3.

The programs for A336459, the canonical program `A336459.P11657753033956571194` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336459 has offset 1).

The definition of A336459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336459.P11657753033956571194

`A336457(A000203(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A336459

/-- `A336457(A000203(n+1))` -/
def P11657753033956571194.Spec : Prop :=
  ∀ n, P11657753033956571194.a n = A336459 (n + 1)

theorem P11657753033956571194.correct : P11657753033956571194.Spec := by
  intro n
  simp only [A336459, Nat.add_sub_cancel]

end A336459

/-! ## A336459.P4387568885504385797

`A065330(A051027(n+1))`
-/

namespace A336459.P4387568885504385797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (A051027 (n + 1)).toNat

end

end A336459.P4387568885504385797

namespace A336459

/-- `A065330(A051027(n+1))` -/
def P4387568885504385797.Spec : Prop :=
  ∀ n, P4387568885504385797.a n = A336459 (n + 1)

end A336459

/-! ## A336459.P1634252311852807348

`A336457(∑{d}[n+1, #])`
-/

namespace A336459.P1634252311852807348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336457 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A336459.P1634252311852807348

namespace A336459

/-- `A336457(∑{d}[n+1, #])` -/
def P1634252311852807348.Spec : Prop :=
  ∀ n, P1634252311852807348.a n = A336459 (n + 1)

end A336459

/-! ## A336459.P10766263277572370469

`A336457(∑[A340793(n+1)])`
-/

namespace A336459.P10766263277572370469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336457 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A336459.P10766263277572370469

namespace A336459

/-- `A336457(∑[A340793(n+1)])` -/
def P10766263277572370469.Spec : Prop :=
  ∀ n, P10766263277572370469.a n = A336459 (n + 1)

end A336459

/-! ## A336459.P8163350458249952653

`A336457(A039653(n+1)+1)`
-/

namespace A336459.P8163350458249952653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336457 (A039653 (n + 1) + 1).toNat

end

end A336459.P8163350458249952653

namespace A336459

/-- `A336457(A039653(n+1)+1)` -/
def P8163350458249952653.Spec : Prop :=
  ∀ n, P8163350458249952653.a n = A336459 (n + 1)

end A336459

/-! ## A336459.P3097919419804622549

`A065330(A000203(Δ[A160664(n)]))`
-/

namespace A336459.P3097919419804622549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (A000203 (f1 (n + 1) - f1 n).toNat).toNat

end

end A336459.P3097919419804622549

namespace A336459

/-- `A065330(A000203(Δ[A160664(n)]))` -/
def P3097919419804622549.Spec : Prop :=
  ∀ n, P3097919419804622549.a n = A336459 (n + 1)

end A336459

/-! ## A336459.P3677680866162544807

`A065330(A000203(A000203(A064614(A064614(n+1)))))`
-/

namespace A336459.P3677680866162544807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (A000203 (A000203 (A064614 (A064614 (n + 1)).toNat).toNat).toNat).toNat

end

end A336459.P3677680866162544807

namespace A336459

/-- `A065330(A000203(A000203(A064614(A064614(n+1)))))` -/
def P3677680866162544807.Spec : Prop :=
  ∀ n, P3677680866162544807.a n = A336459 (n + 1)

end A336459

/-!
# A336460: Lexicographically earliest infinite sequence such that a(i) = a(j) => f(i) = f(j), where f(n) = [A278222(n), A336158(n), A336466(n)], for all i, j >= 1.

The programs for A336460, there is no canonical definition to state claims against.
-/

/-! ## A336460.P4647341947895089659

`A338569(A230606(floor(n/(xor(n, n+1)+1))+1))`
-/

namespace A336460.P4647341947895089659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338569 (A230606 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat).toNat

end

end A336460.P4647341947895089659

/-! ## A336460.P17909637079503039827

`A278060(A003602(n+1))%A049054(n+4)`
-/

namespace A336460.P17909637079503039827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278060 (A003602 (n + 1)).toNat) (A049054 (n + 4))

end

end A336460.P17909637079503039827

/-! ## A336460.P464177321430994285

`A278060(A076710(n+1)+floor(n/(xor(n, n+1)+1))+1)`
-/

namespace A336460.P464177321430994285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278060 (A076710 (n + 1) + (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1)).toNat

end

end A336460.P464177321430994285

/-! ## A336460.P16393371009575526832

`(floor(n/(xor(n, n+1)+1))+1)%A174199(A084512(n+1))`
-/

namespace A336460.P16393371009575526832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) (A174199 (A084512 (n + 1)).toNat)

end

end A336460.P16393371009575526832

/-! ## A336460.P6895179586696887204

`gcd(A003602(n+1), A122859(A121326(n+1)))`
-/

namespace A336460.P6895179586696887204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003602 (n + 1)) (A122859 (A121326 (n + 1)).toNat)

end

end A336460.P6895179586696887204

/-!
# A336461: Numbers k for which A335915(k) = A335915(sigma(k)).

The programs for A336461, there is no canonical definition to state claims against.
-/

/-! ## A336461.P4784056579094881123

`eq[A335915(n+1), A336455(n+1)]+1`
-/

namespace A336461.P4784056579094881123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336461.P4784056579094881123

/-! ## A336461.P103263846632744563

`eq[A335915(A000203(n+1)), A335915(n+1)]+1`
-/

namespace A336461.P103263846632744563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336461.P103263846632744563

/-! ## A336461.P16733098526647132674

`eq[A335915(n+1), A335915(A336457(n+1))]+1`
-/

namespace A336461.P16733098526647132674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (A336457 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336461.P16733098526647132674

/-! ## A336461.P5870487367125517220

`eq[A336455(A213401(n+1)), A336455(n+1)]+1`
-/

namespace A336461.P5870487367125517220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336455 (A213401 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336461.P5870487367125517220

/-!
# A336462: Numbers k for which A335915(sigma(k)) = A335915(sigma(sigma(k))).

The programs for A336462, the canonical program `A336462.P2044477878462312780` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336462 has offset 1).

The definition of A336462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336462.P2044477878462312780

`eq[A336455(n+1), A336456(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A336462

/-- `eq[A336455(n+1), A336456(n+1)]+1` -/
def P2044477878462312780.Spec : Prop :=
  ∀ n, (P2044477878462312780.a n : ℤ) = A336462 (n + 1)

theorem P2044477878462312780.correct : P2044477878462312780.Spec := by
  intro n
  simp only [A336462, Nat.add_sub_cancel]

end A336462

/-! ## A336462.P7263185577927746976

`eq[A335915(A336457(n+1)), A336456(n+1)]+1`
-/

namespace A336462.P7263185577927746976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (A336457 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336456 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336462.P7263185577927746976

namespace A336462

/-- `eq[A335915(A336457(n+1)), A336456(n+1)]+1` -/
def P7263185577927746976.Spec : Prop :=
  ∀ n, (P7263185577927746976.a n : ℤ) = A336462 (n + 1)

end A336462

/-! ## A336462.P14916714147864970672

`eq[A335915(∑{d}[n+1, #]), A336456(n+1)]+1`
-/

namespace A336462.P14916714147864970672
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (∑ d ∈ Nat.divisors (f2 n), d)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336456 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A336462.P14916714147864970672

namespace A336462

/-- `eq[A335915(∑{d}[n+1, #]), A336456(n+1)]+1` -/
def P14916714147864970672.Spec : Prop :=
  ∀ n, (P14916714147864970672.a n : ℤ) = A336462 (n + 1)

end A336462

/-! ## A336462.P7683668359883044028

`eq[A335915(A000203(n+1)), A336456(n+1)]+1`
-/

namespace A336462.P7683668359883044028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336456 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336462.P7683668359883044028

namespace A336462

/-- `eq[A335915(A000203(n+1)), A336456(n+1)]+1` -/
def P7683668359883044028.Spec : Prop :=
  ∀ n, (P7683668359883044028.a n : ℤ) = A336462 (n + 1)

end A336462

/-! ## A336462.P16346143186957362192

`eq[A335915(A088580(n+1)-1), A336456(n+1)]+1`
-/

namespace A336462.P16346143186957362192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (A088580 (n + 1) - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336456 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336462.P16346143186957362192

namespace A336462

/-- `eq[A335915(A088580(n+1)-1), A336456(n+1)]+1` -/
def P16346143186957362192.Spec : Prop :=
  ∀ n, (P16346143186957362192.a n : ℤ) = A336462 (n + 1)

theorem P16346143186957362192.correct : P16346143186957362192.Spec := by
  intro n
  simp only [A336462, Nat.add_sub_cancel, A336462.P16346143186957362192.f1, A336462.P16346143186957362192.f2, A336462.P16346143186957362192.a, A336462.P2044477878462312780.f1, A336462.P2044477878462312780.f2, A336462.P2044477878462312780.a, A088580, A088580.P3089093194242277422.a, A335915, A335915.P17327428473756616044.a, A336455, A336455.P3261113162239475427.a, A336456, A336456.P12148940539498589663.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A336466, A336466.P16200719452775638290.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P2772582252347773295.a, A003958, A003958.P196685604458257440.a, A206787, A206787.P5835391057460083436.a, A336651, A336651.P16001873672567347965.a, A003602, A003602.P7612175048291952394.a, A010684, A010684.P14019262024924378744.a, A048250, A048250.P6137918235727910070.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A204455, A204455.P9449319865665436464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336462

/-! ## A336462.P6320111972217655846

`eq[A335915(A245092(2*n+1)), A336456(n+1)]+1`
-/

namespace A336462.P6320111972217655846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (A245092 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336456 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336462.P6320111972217655846

namespace A336462

/-- `eq[A335915(A245092(2*n+1)), A336456(n+1)]+1` -/
def P6320111972217655846.Spec : Prop :=
  ∀ n, (P6320111972217655846.a n : ℤ) = A336462 (n + 1)

end A336462

/-!
# A336463: Numbers k for which A335915(k) = A335915(sigma(sigma(k))).

The programs for A336463, the canonical program `A336463.P14219033696314787767` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336463 has offset 1).

The definition of A336463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336463.P14219033696314787767

`eq[A335915(n+1), A336456(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A336463

/-- `eq[A335915(n+1), A336456(n+1)]+1` -/
def P14219033696314787767.Spec : Prop :=
  ∀ n, (P14219033696314787767.a n : ℤ) = A336463 (n + 1)

theorem P14219033696314787767.correct : P14219033696314787767.Spec := by
  intro n
  simp only [A336463, Nat.add_sub_cancel]

end A336463

/-! ## A336463.P6528352014335365683

`eq[A335915(n+1), A335915(A336459(n+1))]+1`
-/

namespace A336463.P6528352014335365683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (A336459 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336463.P6528352014335365683

namespace A336463

/-- `eq[A335915(n+1), A335915(A336459(n+1))]+1` -/
def P6528352014335365683.Spec : Prop :=
  ∀ n, (P6528352014335365683.a n : ℤ) = A336463 (n + 1)

end A336463

/-!
# A336464: Numbers k for which A335915(k), A335915(sigma(k)) and A335915(sigma(sigma(k))) obtain the same value.

The programs for A336464, there is no canonical definition to state claims against.
-/

/-! ## A336464.P2451594473917006419

`∩[A336461(n+1), A336463(n+1)]`
-/

namespace A336464.P2451594473917006419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336464.P2451594473917006419

/-! ## A336464.P4683588403306430507

`∩[A336461(n+1), A336462(n+1)]`
-/

namespace A336464.P4683588403306430507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336464.P4683588403306430507

/-! ## A336464.P10852685589547845890

`∩[A336462(n+1), A336463(n+1)]`
-/

namespace A336464.P10852685589547845890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336464.P10852685589547845890

/-!
# A336465: Recursive variant of A057723: If n is cubefree, then a(n) = A057723(n), otherwise a(n) = A007947(n) * a(n/A007947(n)).

The programs for A336465, the canonical program `A336465.P4910938732238570745` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336465 has offset 1).

The definition of A336465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336465.P4910938732238570745

`∑{d}[A261969(A003557(n+1)), (n+1)/#]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A336465

/-- `∑{d}[A261969(A003557(n+1)), (n+1)/#]` -/
def P4910938732238570745.Spec : Prop :=
  ∀ n, P4910938732238570745.a n = (A336465 (n + 1) : ℚ)

end A336465

/-! ## A336465.P11740272851653874641

`∑{d}[A261969(A322020(n+1)), (n+1)/#]`
-/

namespace A336465.P11740272851653874641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261969 (A322020 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (n + 1 : ℚ) / (d : ℚ)

end

end A336465.P11740272851653874641

namespace A336465

/-- `∑{d}[A261969(A322020(n+1)), (n+1)/#]` -/
def P11740272851653874641.Spec : Prop :=
  ∀ n, P11740272851653874641.a n = (A336465 (n + 1) : ℚ)

end A336465

/-! ## A336465.P12806304935170396376

`A118759(A254520(n+1)/A254503(n+1))`
-/

namespace A336465.P12806304935170396376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (SequenceMachineLib.roundAway ((A254520 (n + 1) : ℚ) / (A254503 (n + 1) : ℚ))).toNat

end

end A336465.P12806304935170396376

namespace A336465

/-- `A118759(A254520(n+1)/A254503(n+1))` -/
def P12806304935170396376.Spec : Prop :=
  ∀ n, P12806304935170396376.a n = A336465 (n + 1)

end A336465

/-! ## A336465.P5265771716912664212

`and(A152388(n+1), A369319(n+1))`
-/

namespace A336465.P5265771716912664212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152388 (n + 1)) (A369319 (n + 1))

end

end A336465.P5265771716912664212

namespace A336465

/-- `and(A152388(n+1), A369319(n+1))` -/
def P5265771716912664212.Spec : Prop :=
  ∀ n, P5265771716912664212.a n = A336465 (n + 1)

end A336465

/-! ## A336465.P16467529603163680824

`and(A369319(n+1), A383046(n+3))`
-/

namespace A336465.P16467529603163680824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A369319 (n + 1)) (A383046 (n + 3))

end

end A336465.P16467529603163680824

namespace A336465

/-- `and(A369319(n+1), A383046(n+3))` -/
def P16467529603163680824.Spec : Prop :=
  ∀ n, P16467529603163680824.a n = A336465 (n + 1)

end A336465

/-!
# A336466: Fully multiplicative with a(p) = A000265(p-1) for any prime p, where A000265(k) gives the odd part of k.

The programs for A336466, the canonical program `A336466.P16200719452775638290` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336466 has offset 1).

The definition of A336466 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A003958, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336466.P16200719452775638290

`A000265(A003958(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A336466

/-- `A000265(A003958(n+1))` -/
def P16200719452775638290.Spec : Prop :=
  ∀ n, P16200719452775638290.a n = A336466 (n + 1)

theorem P16200719452775638290.correct : P16200719452775638290.Spec := by
  intro n
  simp only [A336466, Nat.add_sub_cancel]

end A336466

/-! ## A336466.P906258369226338525

`A000265(A333787(n+1))`
-/

namespace A336466.P906258369226338525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A333787 (n + 1)).toNat

end

end A336466.P906258369226338525

namespace A336466

/-- `A000265(A333787(n+1))` -/
def P906258369226338525.Spec : Prop :=
  ∀ n, P906258369226338525.a n = A336466 (n + 1)

end A336466

/-! ## A336466.P16058227862208955930

`A335915(n+1)/A336467(n+1)`
-/

namespace A336466.P16058227862208955930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335915 (n + 1) : ℚ) / (A336467 (n + 1) : ℚ)

end

end A336466.P16058227862208955930

namespace A336466

/-- `A335915(n+1)/A336467(n+1)` -/
def P16058227862208955930.Spec : Prop :=
  ∀ n, P16058227862208955930.a n = (A336466 (n + 1) : ℚ)

end A336466

/-! ## A336466.P14875454498475895851

`A339903(A064989(n+1))`
-/

namespace A336466.P14875454498475895851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339903 (A064989 (n + 1)).toNat

end

end A336466.P14875454498475895851

namespace A336466

/-- `A339903(A064989(n+1))` -/
def P14875454498475895851.Spec : Prop :=
  ∀ n, P14875454498475895851.a n = A336466 (n + 1)

end A336466

/-! ## A336466.P9732349280930226590

`A166466(A003958(2*(n+1)))/3`
-/

namespace A336466.P9732349280930226590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166466 (A003958 (2 * (n + 1))).toNat : ℚ) / 3

end

end A336466.P9732349280930226590

namespace A336466

/-- `A166466(A003958(2*(n+1)))/3` -/
def P9732349280930226590.Spec : Prop :=
  ∀ n, P9732349280930226590.a n = (A336466 (n + 1) : ℚ)

end A336466

/-! ## A336466.P11681216591748470505

`A000265(n+1-A322582(n+1))`
-/

namespace A336466.P11681216591748470505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((n + 1 : ℤ) - A322582 (n + 1)).toNat

end

end A336466.P11681216591748470505

namespace A336466

/-- `A000265(n+1-A322582(n+1))` -/
def P11681216591748470505.Spec : Prop :=
  ∀ n, P11681216591748470505.a n = A336466 (n + 1)

theorem P11681216591748470505.correct : P11681216591748470505.Spec := by
  intro n
  simp only [A336466, Nat.add_sub_cancel, A336466.P11681216591748470505.a, A336466.P16200719452775638290.a, A000265, A000265.P2772582252347773295.a, A003958, A003958.P196685604458257440.a, A322582, A322582.P8560399753878851377.a, A003602, A003602.P7612175048291952394.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A110963, A110963.P3344771894533151408.a, A120007, A120007.P17212889191585270917.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A025480, A025480.P15873863116418380882.a, A061397, A061397.P17730824645895443051.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336466

/-! ## A336466.P15926408592573899803

`A349912(n+1)-A349911(n+1)`
-/

namespace A336466.P15926408592573899803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349912 (n + 1) - A349911 (n + 1)

end

end A336466.P15926408592573899803

namespace A336466

/-- `A349912(n+1)-A349911(n+1)` -/
def P15926408592573899803.Spec : Prop :=
  ∀ n, P15926408592573899803.a n = A336466 (n + 1)

theorem P15926408592573899803.correct : P15926408592573899803.Spec := by
  intro n
  simp only [A336466, Nat.add_sub_cancel, A336466.P15926408592573899803.a, A336466.P16200719452775638290.a, A000265, A000265.P2772582252347773295.a, A003958, A003958.P196685604458257440.a, A349911, A349911.P3479604530463811039.a, A349912, A349912.P4753964918180752042.a, A003602, A003602.P7612175048291952394.a, A008683, A008683.P18254306604665478110.a, A053575, A053575.P11050081037348707319.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A000010, A000010.P4673923239450215316.a, A110963, A110963.P3344771894533151408.a, A120007, A120007.P17212889191585270917.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A003557, A003557.P6364735403900941810.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A025480, A025480.P15873863116418380882.a, A061397, A061397.P17730824645895443051.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A173557, A173557.P15666735857375843373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A336466

/-! ## A336466.P6377491527762699694

`A340084(n+1)*A340085(n+1)`
-/

namespace A336466.P6377491527762699694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340084 (n + 1) * A340085 (n + 1)

end

end A336466.P6377491527762699694

namespace A336466

/-- `A340084(n+1)*A340085(n+1)` -/
def P6377491527762699694.Spec : Prop :=
  ∀ n, P6377491527762699694.a n = A336466 (n + 1)

end A336466

/-! ## A336466.P18112978531839329946

`A000265(A079579(n+1)/(n+1))`
-/

namespace A336466.P18112978531839329946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A079579 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A336466.P18112978531839329946

namespace A336466

/-- `A000265(A079579(n+1)/(n+1))` -/
def P18112978531839329946.Spec : Prop :=
  ∀ n, P18112978531839329946.a n = A336466 (n + 1)

end A336466

/-! ## A336466.P9162622489993811354

`gcd(A125131(n+1), A335915(n+1))`
-/

namespace A336466.P9162622489993811354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A125131 (n + 1)) (A335915 (n + 1))

end

end A336466.P9162622489993811354

namespace A336466

/-- `gcd(A125131(n+1), A335915(n+1))` -/
def P9162622489993811354.Spec : Prop :=
  ∀ n, (P9162622489993811354.a n : ℤ) = A336466 (n + 1)

end A336466

/-! ## A336466.P995682856289163798

`gcd(A335915(n+1)², A166634(n+1))`
-/

namespace A336466.P995682856289163798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A335915 (n + 1) ^ 2) (A166634 (n + 1))

end

end A336466.P995682856289163798

namespace A336466

/-- `gcd(A335915(n+1)², A166634(n+1))` -/
def P995682856289163798.Spec : Prop :=
  ∀ n, (P995682856289163798.a n : ℤ) = A336466 (n + 1)

end A336466

/-! ## A336466.P1375122361056141391

`A000265(A322581(n+1)-A097945(n+1))`
-/

namespace A336466.P1375122361056141391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A322581 (n + 1) - A097945 (n + 1)).toNat

end

end A336466.P1375122361056141391

namespace A336466

/-- `A000265(A322581(n+1)-A097945(n+1))` -/
def P1375122361056141391.Spec : Prop :=
  ∀ n, P1375122361056141391.a n = A336466 (n + 1)

theorem P1375122361056141391.correct : P1375122361056141391.Spec := by
  intro n
  simp only [A336466, Nat.add_sub_cancel, A336466.P1375122361056141391.a, A336466.P16200719452775638290.a, A000265, A000265.P2772582252347773295.a, A003958, A003958.P196685604458257440.a, A097945, A097945.P10305260904060648773.a, A322581, A322581.P15493543185383869202.a, A003602, A003602.P7612175048291952394.a, A008966, A008966.P884693903657889754.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, A110963, A110963.P3344771894533151408.a, A120007, A120007.P17212889191585270917.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A025480, A025480.P15873863116418380882.a, A061397, A061397.P17730824645895443051.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A336466

/-! ## A336466.P2643672360465675620

`A000265(A351442(n+1)-A351445(n+1))`
-/

namespace A336466.P2643672360465675620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A351442 (n + 1) - A351445 (n + 1)).toNat

end

end A336466.P2643672360465675620

namespace A336466

/-- `A000265(A351442(n+1)-A351445(n+1))` -/
def P2643672360465675620.Spec : Prop :=
  ∀ n, P2643672360465675620.a n = A336466 (n + 1)

theorem P2643672360465675620.correct : P2643672360465675620.Spec := by
  intro n
  simp only [A336466, Nat.add_sub_cancel, A336466.P2643672360465675620.a, A336466.P16200719452775638290.a, A000265, A000265.P2772582252347773295.a, A003958, A003958.P196685604458257440.a, A351442, A351442.P14048376927472810043.a, A351445, A351445.P1347753034350702190.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003602, A003602.P7612175048291952394.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A110963, A110963.P3344771894533151408.a, A120007, A120007.P17212889191585270917.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A025480, A025480.P15873863116418380882.a, A061397, A061397.P17730824645895443051.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336466

/-! ## A336466.P3422538661664369444

`A000265(A340081(n+1)*A340085(n+1))`
-/

namespace A336466.P3422538661664369444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A340081 (n + 1) * A340085 (n + 1)).toNat

end

end A336466.P3422538661664369444

namespace A336466

/-- `A000265(A340081(n+1)*A340085(n+1))` -/
def P3422538661664369444.Spec : Prop :=
  ∀ n, P3422538661664369444.a n = A336466 (n + 1)

end A336466

/-! ## A336466.P16919445316061789568

`A000265(A167344(n+1)/A003959(n+1))`
-/

namespace A336466.P16919445316061789568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A167344 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ))).toNat

end

end A336466.P16919445316061789568

namespace A336466

/-- `A000265(A167344(n+1)/A003959(n+1))` -/
def P16919445316061789568.Spec : Prop :=
  ∀ n, P16919445316061789568.a n = A336466 (n + 1)

end A336466

/-! ## A336466.P15310608359186954256

`A000265(A353791(n+1)/A064989(n+1))`
-/

namespace A336466.P15310608359186954256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A353791 (n + 1) : ℚ) / (A064989 (n + 1) : ℚ))).toNat

end

end A336466.P15310608359186954256

namespace A336466

/-- `A000265(A353791(n+1)/A064989(n+1))` -/
def P15310608359186954256.Spec : Prop :=
  ∀ n, P15310608359186954256.a n = A336466 (n + 1)

end A336466

/-! ## A336466.P2864282094978365062

`A000265(A166632(n+1))`
-/

namespace A336466.P2864282094978365062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A166632 (n + 1)).toNat

end

end A336466.P2864282094978365062

namespace A336466

/-- `A000265(A166632(n+1))` -/
def P2864282094978365062.Spec : Prop :=
  ∀ n, P2864282094978365062.a n = A336466 (n + 1)

end A336466

/-! ## A336466.P10613884559061356702

`A161151(A333787(2*(n+1))-1)`
-/

namespace A336466.P10613884559061356702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161151 (A333787 (2 * (n + 1)) - 1).toNat

end

end A336466.P10613884559061356702

namespace A336466

/-- `A161151(A333787(2*(n+1))-1)` -/
def P10613884559061356702.Spec : Prop :=
  ∀ n, P10613884559061356702.a n = A336466 (n + 1)

end A336466

/-! ## A336466.P783334205232798199

`A161150(A333787(2*(n+1)))`
-/

namespace A336466.P783334205232798199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161150 (A333787 (2 * (n + 1))).toNat

end

end A336466.P783334205232798199

namespace A336466

/-- `A161150(A333787(2*(n+1)))` -/
def P783334205232798199.Spec : Prop :=
  ∀ n, P783334205232798199.a n = A336466 (n + 1)

end A336466

/-! ## A336466.P1324692711036375027

`A340081(2*(n+1))*A340085(2*(n+1))`
-/

namespace A336466.P1324692711036375027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340081 (2 * (n + 1)) * A340085 (2 * (n + 1))

end

end A336466.P1324692711036375027

namespace A336466

/-- `A340081(2*(n+1))*A340085(2*(n+1))` -/
def P1324692711036375027.Spec : Prop :=
  ∀ n, P1324692711036375027.a n = A336466 (n + 1)

end A336466

/-!
# A336467: Fully multiplicative with a(2) = 1 and a(p) = A000265(p+1) for odd primes p, with A000265(k) giving the odd part of k.

The programs for A336467, the canonical program `A336467.P6879531493608964417` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336467 has offset 1).

The definition of A336467 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A336651, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336467.P15284580068177147623

`A335915(n+1)/A336466(n+1)`
-/

namespace A336467.P15284580068177147623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335915 (n + 1) : ℚ) / (A336466 (n + 1) : ℚ)

end

end A336467.P15284580068177147623

namespace A336467

/-- `A335915(n+1)/A336466(n+1)` -/
def P15284580068177147623.Spec : Prop :=
  ∀ n, P15284580068177147623.a n = (A336467 (n + 1) : ℚ)

end A336467

/-! ## A336467.P6879531493608964417

`A000265(A206787(n+1))*a(A336651(n+1)-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A336467

/-- `A000265(A206787(n+1))*a(A336651(n+1)-1)` -/
def P6879531493608964417.Spec : Prop :=
  ∀ n, P6879531493608964417.a n = A336467 (n + 1)

theorem P6879531493608964417.correct : P6879531493608964417.Spec := by
  intro n
  simp only [A336467, Nat.add_sub_cancel]

end A336467

/-! ## A336467.P3194784148447643994

`A000265(A003960(n+1))`
-/

namespace A336467.P3194784148447643994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003960 (n + 1)).toNat

end

end A336467.P3194784148447643994

namespace A336467

/-- `A000265(A003960(n+1))` -/
def P3194784148447643994.Spec : Prop :=
  ∀ n, P3194784148447643994.a n = A336467 (n + 1)

end A336467

/-! ## A336467.P2161120999249014130

`A000265(A003959(A000265(n+1)))`
-/

namespace A336467.P2161120999249014130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003959 (A000265 (n + 1)).toNat).toNat

end

end A336467.P2161120999249014130

namespace A336467

/-- `A000265(A003959(A000265(n+1)))` -/
def P2161120999249014130.Spec : Prop :=
  ∀ n, P2161120999249014130.a n = A336467 (n + 1)

end A336467

/-! ## A336467.P16502388820880624832

`A335915(n+1)/A000265(A003958(n+1))`
-/

namespace A336467.P16502388820880624832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335915 (n + 1) : ℚ) / (A000265 (A003958 (n + 1)).toNat : ℚ)

end

end A336467.P16502388820880624832

namespace A336467

/-- `A335915(n+1)/A000265(A003958(n+1))` -/
def P16502388820880624832.Spec : Prop :=
  ∀ n, P16502388820880624832.a n = (A336467 (n + 1) : ℚ)

end A336467

/-! ## A336467.P11547257846124921696

`∏{d}[A000265(n+1), A000265(A014963(#)+1)]`
-/

namespace A336467.P11547257846124921696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A000265 (A014963 d + 1).toNat

end

end A336467.P11547257846124921696

namespace A336467

/-- `∏{d}[A000265(n+1), A000265(A014963(#)+1)]` -/
def P11547257846124921696.Spec : Prop :=
  ∀ n, P11547257846124921696.a n = A336467 (n + 1)

end A336467

/-! ## A336467.P14510356717242657417

`A335915(n+1)/(A340084(n+1)*A340085(n+1))`
-/

namespace A336467.P14510356717242657417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335915 (n + 1) : ℚ) / (A340084 (n + 1) * A340085 (n + 1) : ℚ)

end

end A336467.P14510356717242657417

namespace A336467

/-- `A335915(n+1)/(A340084(n+1)*A340085(n+1))` -/
def P14510356717242657417.Spec : Prop :=
  ∀ n, P14510356717242657417.a n = (A336467 (n + 1) : ℚ)

end A336467

/-! ## A336467.P5402958774276401781

`A335915(n+1)/gcd(A166632(n+1), A335915(n+1))`
-/

namespace A336467.P5402958774276401781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335915 (n + 1) : ℚ) / (Int.gcd (A166632 (n + 1)) (A335915 (n + 1)) : ℚ)

end

end A336467.P5402958774276401781

namespace A336467

/-- `A335915(n+1)/gcd(A166632(n+1), A335915(n+1))` -/
def P5402958774276401781.Spec : Prop :=
  ∀ n, P5402958774276401781.a n = (A336467 (n + 1) : ℚ)

end A336467

/-! ## A336467.P2958090487004551041

`A003961(A064989(A003959(A003961(A064989(n+1)))))`
-/

namespace A336467.P2958090487004551041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A064989 (A003959 (A003961 (A064989 (n + 1)).toNat).toNat).toNat).toNat

end

end A336467.P2958090487004551041

namespace A336467

/-- `A003961(A064989(A003959(A003961(A064989(n+1)))))` -/
def P2958090487004551041.Spec : Prop :=
  ∀ n, P2958090487004551041.a n = A336467 (n + 1)

end A336467

/-! ## A336467.P14518820030059111257

`gcd(A003960(n+1), A217858(n+1))`
-/

namespace A336467.P14518820030059111257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003960 (n + 1)) (A217858 (n + 1))

end

end A336467.P14518820030059111257

namespace A336467

/-- `gcd(A003960(n+1), A217858(n+1))` -/
def P14518820030059111257.Spec : Prop :=
  ∀ n, (P14518820030059111257.a n : ℤ) = A336467 (n + 1)

end A336467

/-! ## A336467.P16383210985487081750

`gcd(A003960(n+1), A290030(n))`
-/

namespace A336467.P16383210985487081750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003960 (n + 1)) (A290030 n)

end

end A336467.P16383210985487081750

namespace A336467

/-- `gcd(A003960(n+1), A290030(n))` -/
def P16383210985487081750.Spec : Prop :=
  ∀ n, (P16383210985487081750.a n : ℤ) = A336467 (n + 1)

end A336467

/-! ## A336467.P866684506884842057

`gcd(A003960(2*(n+1)), A053624(2*n+1))`
-/

namespace A336467.P866684506884842057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003960 (2 * (n + 1))) (A053624 (2 * n + 1))

end

end A336467.P866684506884842057

namespace A336467

/-- `gcd(A003960(2*(n+1)), A053624(2*n+1))` -/
def P866684506884842057.Spec : Prop :=
  ∀ n, (P866684506884842057.a n : ℤ) = A336467 (n + 1)

end A336467

/-!
# A336468: a(n) = A336466(phi(n)), where A336466 is fully multiplicative with a(p) = A000265(p-1) for prime p, with A000265(k) giving the odd part of k.

The programs for A336468, the canonical program `A336468.P2819815668049022995` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336468 has offset 1).

The definition of A336468 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A336466, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336468.P2819815668049022995

`A336466(A000010(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A336468

/-- `A336466(A000010(n+1))` -/
def P2819815668049022995.Spec : Prop :=
  ∀ n, P2819815668049022995.a n = A336468 (n + 1)

theorem P2819815668049022995.correct : P2819815668049022995.Spec := by
  intro n
  simp only [A336468, Nat.add_sub_cancel]

end A336468

/-! ## A336468.P7355223168731573176

`A336466(Δ[A002088(n)])`
-/

namespace A336468.P7355223168731573176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (f1 (n + 1) - f1 n).toNat

end

end A336468.P7355223168731573176

namespace A336468

/-- `A336466(Δ[A002088(n)])` -/
def P7355223168731573176.Spec : Prop :=
  ∀ n, P7355223168731573176.a n = A336468 (n + 1)

end A336468

/-! ## A336468.P13552711663312288632

`A336466(A046073(n+1))`
-/

namespace A336468.P13552711663312288632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (A046073 (n + 1)).toNat

end

end A336468.P13552711663312288632

namespace A336468

/-- `A336466(A046073(n+1))` -/
def P13552711663312288632.Spec : Prop :=
  ∀ n, P13552711663312288632.a n = A336468 (n + 1)

end A336468

/-! ## A336468.P10961154564542946005

`A336466(A053575(n+1))`
-/

namespace A336468.P10961154564542946005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (A053575 (n + 1)).toNat

end

end A336468.P10961154564542946005

namespace A336468

/-- `A336466(A053575(n+1))` -/
def P10961154564542946005.Spec : Prop :=
  ∀ n, P10961154564542946005.a n = A336468 (n + 1)

end A336468

/-! ## A336468.P12409608719874676993

`A336466(A126246(n+1))`
-/

namespace A336468.P12409608719874676993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (A126246 (n + 1)).toNat

end

end A336468.P12409608719874676993

namespace A336468

/-- `A336466(A126246(n+1))` -/
def P12409608719874676993.Spec : Prop :=
  ∀ n, P12409608719874676993.a n = A336468 (n + 1)

end A336468

/-! ## A336468.P221668700352700389

`A336466(A109606(n+1)+1)`
-/

namespace A336468.P221668700352700389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (A109606 (n + 1) + 1).toNat

end

end A336468.P221668700352700389

namespace A336468

/-- `A336466(A109606(n+1)+1)` -/
def P221668700352700389.Spec : Prop :=
  ∀ n, P221668700352700389.a n = A336468 (n + 1)

theorem P221668700352700389.correct : P221668700352700389.Spec := by
  intro n
  simp only [A336468, Nat.add_sub_cancel, A336468.P221668700352700389.a, A336468.P2819815668049022995.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A336466, A336466.P16200719452775638290.a, A000265, A000265.P2772582252347773295.a, A003557, A003557.P6364735403900941810.a, A003958, A003958.P196685604458257440.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A003602, A003602.P7612175048291952394.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, A110963, A110963.P3344771894533151408.a, A120007, A120007.P17212889191585270917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A336468

/-! ## A336468.P7299167149958394830

`A336466(A039649(n+1)-1)`
-/

namespace A336468.P7299167149958394830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (A039649 (n + 1) - 1).toNat

end

end A336468.P7299167149958394830

namespace A336468

/-- `A336466(A039649(n+1)-1)` -/
def P7299167149958394830.Spec : Prop :=
  ∀ n, P7299167149958394830.a n = A336468 (n + 1)

theorem P7299167149958394830.correct : P7299167149958394830.Spec := by
  intro n
  simp only [A336468, Nat.add_sub_cancel, A336468.P7299167149958394830.a, A336468.P2819815668049022995.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A336466, A336466.P16200719452775638290.a, A000265, A000265.P2772582252347773295.a, A003557, A003557.P6364735403900941810.a, A003958, A003958.P196685604458257440.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A003602, A003602.P7612175048291952394.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, A110963, A110963.P3344771894533151408.a, A120007, A120007.P17212889191585270917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A336468

/-! ## A336468.P9066581994399802532

`A336466(A300725(n+1)+A300724(n+1))`
-/

namespace A336468.P9066581994399802532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (A300725 (n + 1) + A300724 (n + 1)).toNat

end

end A336468.P9066581994399802532

namespace A336468

/-- `A336466(A300725(n+1)+A300724(n+1))` -/
def P9066581994399802532.Spec : Prop :=
  ∀ n, P9066581994399802532.a n = A336468 (n + 1)

end A336468

/-! ## A336468.P17323841643420582599

`A000265(A003958(A053575(A000265(n+1))))`
-/

namespace A336468.P17323841643420582599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003958 (A053575 (A000265 (n + 1)).toNat).toNat).toNat

end

end A336468.P17323841643420582599

namespace A336468

/-- `A000265(A003958(A053575(A000265(n+1))))` -/
def P17323841643420582599.Spec : Prop :=
  ∀ n, P17323841643420582599.a n = A336468 (n + 1)

end A336468

/-! ## A336468.P13384200024217496395

`A336466(A002246(n+1))`
-/

namespace A336468.P13384200024217496395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (A002246 (n + 1)).toNat

end

end A336468.P13384200024217496395

namespace A336468

/-- `A336466(A002246(n+1))` -/
def P13384200024217496395.Spec : Prop :=
  ∀ n, P13384200024217496395.a n = A336468 (n + 1)

end A336468

/-! ## A336468.P8670097673176359077

`A349912(4*A000010(n+1))`
-/

namespace A336468.P8670097673176359077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349912 (4 * A000010 (n + 1)).toNat

end

end A336468.P8670097673176359077

namespace A336468

/-- `A349912(4*A000010(n+1))` -/
def P8670097673176359077.Spec : Prop :=
  ∀ n, P8670097673176359077.a n = A336468 (n + 1)

end A336468

/-!
# A336469: a(n) = A329697(phi(n)), where A329697 is totally additive with a(2) = 0 and a(p) = 1 + a(p-1) for odd primes.

The programs for A336469, the canonical program `A336469.P9620185897901534165` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336469 has offset 1).

The definition of A336469 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005087, A329697, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336469.P9620185897901534165

`A329697(n+1)-A005087(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A336469

/-- `A329697(n+1)-A005087(n+1)` -/
def P9620185897901534165.Spec : Prop :=
  ∀ n, P9620185897901534165.a n = A336469 (n + 1)

theorem P9620185897901534165.correct : P9620185897901534165.Spec := by
  intro n
  simp only [A336469, Nat.add_sub_cancel]

end A336469

/-! ## A336469.P17639830881592222804

`A336396(n+1)+A046660(A000265(n+1))`
-/

namespace A336469.P17639830881592222804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336396 (n + 1) + A046660 (A000265 (n + 1)).toNat

end

end A336469.P17639830881592222804

namespace A336469

/-- `A336396(n+1)+A046660(A000265(n+1))` -/
def P17639830881592222804.Spec : Prop :=
  ∀ n, P17639830881592222804.a n = A336469 (n + 1)

end A336469

/-! ## A336469.P1816613564663637745

`A329697(Δ[A002088(n)])`
-/

namespace A336469.P1816613564663637745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (f1 (n + 1) - f1 n).toNat

end

end A336469.P1816613564663637745

namespace A336469

/-- `A329697(Δ[A002088(n)])` -/
def P1816613564663637745.Spec : Prop :=
  ∀ n, P1816613564663637745.a n = A336469 (n + 1)

end A336469

/-! ## A336469.P2491454499028526129

`A329697(A000010(n+1))`
-/

namespace A336469.P2491454499028526129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A000010 (n + 1)).toNat

end

end A336469.P2491454499028526129

namespace A336469

/-- `A329697(A000010(n+1))` -/
def P2491454499028526129.Spec : Prop :=
  ∀ n, P2491454499028526129.a n = A336469 (n + 1)

end A336469

/-! ## A336469.P16294957388847791605

`A329697(A046073(n+1))`
-/

namespace A336469.P16294957388847791605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A046073 (n + 1)).toNat

end

end A336469.P16294957388847791605

namespace A336469

/-- `A329697(A046073(n+1))` -/
def P16294957388847791605.Spec : Prop :=
  ∀ n, P16294957388847791605.a n = A336469 (n + 1)

end A336469

/-! ## A336469.P11748130607318135025

`A329697(A053575(n+1))`
-/

namespace A336469.P11748130607318135025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A053575 (n + 1)).toNat

end

end A336469.P11748130607318135025

namespace A336469

/-- `A329697(A053575(n+1))` -/
def P11748130607318135025.Spec : Prop :=
  ∀ n, P11748130607318135025.a n = A336469 (n + 1)

end A336469

/-! ## A336469.P17297847056602386377

`A329697(A055034(n+1))`
-/

namespace A336469.P17297847056602386377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A055034 (n + 1)).toNat

end

end A336469.P17297847056602386377

namespace A336469

/-- `A329697(A055034(n+1))` -/
def P17297847056602386377.Spec : Prop :=
  ∀ n, P17297847056602386377.a n = A336469 (n + 1)

end A336469

/-! ## A336469.P11060073357033853601

`A329697(A055035(n+1))`
-/

namespace A336469.P11060073357033853601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A055035 (n + 1)).toNat

end

end A336469.P11060073357033853601

namespace A336469

/-- `A329697(A055035(n+1))` -/
def P11060073357033853601.Spec : Prop :=
  ∀ n, P11060073357033853601.a n = A336469 (n + 1)

end A336469

/-! ## A336469.P8147388593223565761

`A329697(A062570(n+1))`
-/

namespace A336469.P8147388593223565761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A062570 (n + 1)).toNat

end

end A336469.P8147388593223565761

namespace A336469

/-- `A329697(A062570(n+1))` -/
def P8147388593223565761.Spec : Prop :=
  ∀ n, P8147388593223565761.a n = A336469 (n + 1)

end A336469

/-! ## A336469.P5824932573001482312

`A329697(A070306(n+1))`
-/

namespace A336469.P5824932573001482312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A070306 (n + 1)).toNat

end

end A336469.P5824932573001482312

namespace A336469

/-- `A329697(A070306(n+1))` -/
def P5824932573001482312.Spec : Prop :=
  ∀ n, P5824932573001482312.a n = A336469 (n + 1)

end A336469

/-! ## A336469.P15207913331422165258

`A329697(A089692(n+1))`
-/

namespace A336469.P15207913331422165258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A089692 (n + 1)).toNat

end

end A336469.P15207913331422165258

namespace A336469

/-- `A329697(A089692(n+1))` -/
def P15207913331422165258.Spec : Prop :=
  ∀ n, P15207913331422165258.a n = A336469 (n + 1)

end A336469

/-! ## A336469.P16031254900752957423

`A329697(A140434(n+1))`
-/

namespace A336469.P16031254900752957423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A140434 (n + 1)).toNat

end

end A336469.P16031254900752957423

namespace A336469

/-- `A329697(A140434(n+1))` -/
def P16031254900752957423.Spec : Prop :=
  ∀ n, P16031254900752957423.a n = A336469 (n + 1)

end A336469

/-! ## A336469.P10850862942394503213

`A329697(A232626(n+1))`
-/

namespace A336469.P10850862942394503213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A232626 (n + 1)).toNat

end

end A336469.P10850862942394503213

namespace A336469

/-- `A329697(A232626(n+1))` -/
def P10850862942394503213.Spec : Prop :=
  ∀ n, P10850862942394503213.a n = A336469 (n + 1)

end A336469

/-! ## A336469.P11300059716632536788

`A329697(A250207(n+1))`
-/

namespace A336469.P11300059716632536788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A250207 (n + 1)).toNat

end

end A336469.P11300059716632536788

namespace A336469

/-- `A329697(A250207(n+1))` -/
def P11300059716632536788.Spec : Prop :=
  ∀ n, P11300059716632536788.a n = A336469 (n + 1)

end A336469

/-! ## A336469.P7197535928223808874

`A329697(A109606(n+1)+1)`
-/

namespace A336469.P7197535928223808874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A109606 (n + 1) + 1).toNat

end

end A336469.P7197535928223808874

namespace A336469

/-- `A329697(A109606(n+1)+1)` -/
def P7197535928223808874.Spec : Prop :=
  ∀ n, P7197535928223808874.a n = A336469 (n + 1)

end A336469

/-! ## A336469.P17566593340717713729

`A336922(n+1)-A335877(n+1)`
-/

namespace A336469.P17566593340717713729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336922 (n + 1) - A335877 (n + 1)

end

end A336469.P17566593340717713729

namespace A336469

/-- `A336922(n+1)-A335877(n+1)` -/
def P17566593340717713729.Spec : Prop :=
  ∀ n, P17566593340717713729.a n = A336469 (n + 1)

theorem P17566593340717713729.correct : P17566593340717713729.Spec := by
  intro n
  simp only [A336469, Nat.add_sub_cancel, A336469.P17566593340717713729.a, A336469.P9620185897901534165.a, A005087, A005087.P16485891650271078461.f1, A005087.P16485891650271078461.a, A329697, A329697.P6355568551452954971.a, A335877, A335877.P9922726367996187859.a, A336922, A336922.P363598391234132890.a, A064097, A064097.P8268505920434442649.a, A064415, A064415.P3438679109517359530.a, A331410, A331410.P1765792121065572382.a, A052126, A052126.P1944428405920482243.a, A087436, A087436.P13287701826401831056.a, A309243, A309243.P2615360336711731693.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P2772582252347773295.a, A001222, A001222.P11318177267732088261.a, A006530, A006530.P13372528560459906635.a, A007814, A007814.P13537437864234730737.a, A171462, A171462.P186066025836437895.a, A206787, A206787.P5835391057460083436.a, A336651, A336651.P16001873672567347965.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336469

/-! ## A336469.P4174046684086398050

`A329697(n+1)-A001221(A064989(n+1))`
-/

namespace A336469.P4174046684086398050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1) - A001221 (A064989 (n + 1)).toNat

end

end A336469.P4174046684086398050

namespace A336469

/-- `A329697(n+1)-A001221(A064989(n+1))` -/
def P4174046684086398050.Spec : Prop :=
  ∀ n, P4174046684086398050.a n = A336469 (n + 1)

end A336469

/-! ## A336469.P14396185576084954564

`A087436(n+1)+A336396(n+1)-A005087(n+1)`
-/

namespace A336469.P14396185576084954564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1) + (A336396 (n + 1) - A005087 (n + 1))

end

end A336469.P14396185576084954564

namespace A336469

/-- `A087436(n+1)+A336396(n+1)-A005087(n+1)` -/
def P14396185576084954564.Spec : Prop :=
  ∀ n, P14396185576084954564.a n = A336469 (n + 1)

theorem P14396185576084954564.correct : P14396185576084954564.Spec := by
  intro n
  simp only [A336469, Nat.add_sub_cancel, A336469.P14396185576084954564.a, A336469.P9620185897901534165.a, A005087, A005087.P16485891650271078461.f1, A005087.P16485891650271078461.a, A087436, A087436.P13287701826401831056.a, A329697, A329697.P6355568551452954971.a, A336396, A336396.P16969858180878355374.a, A001222, A001222.P11318177267732088261.a, A007814, A007814.P13537437864234730737.a, A064097, A064097.P8268505920434442649.a, A064415, A064415.P3438679109517359530.a, A001511, A001511.P17146462531039486101.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A309243, A309243.P2615360336711731693.a, A006519, A006519.P10435570611646570274.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A171462, A171462.P186066025836437895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336469

/-! ## A336469.P6492590889618175674

`A331410(n+1)-A335877(n+1)-(A099812(n+1)-1)`
-/

namespace A336469.P6492590889618175674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) - A335877 (n + 1) - (A099812 (n + 1) - 1)

end

end A336469.P6492590889618175674

namespace A336469

/-- `A331410(n+1)-A335877(n+1)-(A099812(n+1)-1)` -/
def P6492590889618175674.Spec : Prop :=
  ∀ n, P6492590889618175674.a n = A336469 (n + 1)

end A336469

/-! ## A336469.P2385305945139119610

`A331410(n+1)-A335877(n+1)-(A001221(2*(n+1))-1)`
-/

namespace A336469.P2385305945139119610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) - A335877 (n + 1) - (A001221 (2 * (n + 1)) - 1)

end

end A336469.P2385305945139119610

namespace A336469

/-- `A331410(n+1)-A335877(n+1)-(A001221(2*(n+1))-1)` -/
def P2385305945139119610.Spec : Prop :=
  ∀ n, P2385305945139119610.a n = A336469 (n + 1)

end A336469

/-!
# A336470: Lexicographically earliest infinite sequence such that a(i) = a(j) => A336466(i) = A336466(j) and A336158(i) = A336158(j), for all i, j >= 1.

The programs for A336470, there is no canonical definition to state claims against.
-/

/-! ## A336470.P10837024218017729462

`A049501(n)+A000265(A249027(A255128(n+1)))`
-/

namespace A336470.P10837024218017729462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 n + A000265 (A249027 (A255128 (n + 1)).toNat).toNat

end

end A336470.P10837024218017729462

/-! ## A336470.P1428038596153756782

`A050431(A029447((n+1)/2^val(n+1, 2))²)`
-/

namespace A336470.P1428038596153756782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050431 (A029447 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat ^ 2).toNat

end

end A336470.P1428038596153756782

/-! ## A336470.P3499443916878159163

`A374758(A005195(floor(n/(xor(n, n+1)+1))+1))`
-/

namespace A336470.P3499443916878159163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374758 (A005195 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat).toNat

end

end A336470.P3499443916878159163

/-! ## A336470.P15467334201263744228

`A334144(A092860((floor(n/(xor(n, n+1)+1))+1)²))`
-/

namespace A336470.P15467334201263744228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334144 (A092860 ((⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) ^ 2).toNat).toNat

end

end A336470.P15467334201263744228

/-! ## A336470.P16414043608303447515

`A000120(A006530(n+1)^A341970(n+1))`
-/

namespace A336470.P16414043608303447515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A006530 (n + 1) : ℚ) ^ (A341970 (n + 1) : ℤ))).toNat

end

end A336470.P16414043608303447515

/-!
# A336471: Lexicographically earliest infinite sequence such that a(i) = a(j) => A329697(i) = A329697(j) and A336158(i) = A336158(j), for all i, j >= 1.

The programs for A336471, there is no canonical definition to state claims against.
-/

/-! ## A336471.P12069931132684373273

`A377671(A336470(n+1)%A377669(n))`
-/

namespace A336471.P12069931132684373273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377671 (Int.tmod (A336470 (n + 1)) (A377669 n)).toNat

end

end A336471.P12069931132684373273

/-! ## A336471.P12794215189913259374

`∑{d}[A064989(n+1), A257024(A175789(#))]`
-/

namespace A336471.P12794215189913259374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A257024 (A175789 d).toNat

end

end A336471.P12794215189913259374

/-! ## A336471.P378028977576068967

`∑{d}[A064989(n+1), A345161(A345170(#))]`
-/

namespace A336471.P378028977576068967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A345161 (A345170 d).toNat

end

end A336471.P378028977576068967

/-! ## A336471.P16144883972475305643

`A185284(A125076(n+1))+A072084(n+1)`
-/

namespace A336471.P16144883972475305643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A125076 (n + 1)).toNat + A072084 (n + 1)

end

end A336471.P16144883972475305643

/-! ## A336471.P10303586034351448077

`A363808(A095062(n+1))+A301957(n+1)`
-/

namespace A336471.P10303586034351448077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363808 (A095062 (n + 1)).toNat + A301957 (n + 1)

end

end A336471.P10303586034351448077

/-!
# A336472: Lexicographically earliest infinite sequence such that a(i) = a(j) => A278222(i) = A278222(j) and A336466(i) = A336466(j), for all i, j >= 1.

The programs for A336472, there is no canonical definition to state claims against.
-/

/-! ## A336472.P12670364849345685802

`A324533(floor(n/(xor(n, n+1)+1))^((n+1)/∏{p}[n+1, #]))`
-/

namespace A336472.P12670364849345685802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324533 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) : ℝ))).toNat

end

end A336472.P12670364849345685802

/-! ## A336472.P636205851597574939

`A324533(A025480(n)^((n+1)/∏{p}[n+1, #]))`
-/

namespace A336472.P636205851597574939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324533 (SequenceMachineLib.roundAway ((A025480 n : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) : ℝ))).toNat

end

end A336472.P636205851597574939

/-! ## A336472.P1970082552461723998

`A324533(A025480(n)^A003557(n+1))`
-/

namespace A336472.P1970082552461723998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324533 (SequenceMachineLib.roundAway ((A025480 n : ℚ) ^ (A003557 (n + 1) : ℤ))).toNat

end

end A336472.P1970082552461723998

/-! ## A336472.P15484156064678825713

`A324533(A025480(n)^A336643(n+1))`
-/

namespace A336472.P15484156064678825713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324533 (SequenceMachineLib.roundAway ((A025480 n : ℚ) ^ (A336643 (n + 1) : ℤ))).toNat

end

end A336472.P15484156064678825713

/-! ## A336472.P16044868974826163060

`A324533(A025480(n))%A000010(A020701(n))`
-/

namespace A336472.P16044868974826163060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324533 (A025480 n).toNat) (A000010 (A020701 n).toNat)

end

end A336472.P16044868974826163060

/-!
# A336473: Lexicographically earliest infinite sequence such that a(i) = a(j) => A278222(i) = A278222(j) and A329697(i) = A329697(j), for all i, j >= 1.

The programs for A336473, there is no canonical definition to state claims against.
-/

/-! ## A336473.P14037683561002025974

`A336159(n+1)+A025441(A146418(n+1))`
-/

namespace A336473.P14037683561002025974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336159 (n + 1) + A025441 (A146418 (n + 1)).toNat

end

end A336473.P14037683561002025974

/-! ## A336473.P561629695686155857

`A115871(or(A076710(n), A336920(n+1)))`
-/

namespace A336473.P561629695686155857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115871 (Int.lor (A076710 n) (A336920 (n + 1))).toNat

end

end A336473.P561629695686155857

/-! ## A336473.P14358856249696630339

`A115871(A336920(n+1)+n*A076710(n))`
-/

namespace A336473.P14358856249696630339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115871 (A336920 (n + 1) + (n : ℤ) * A076710 n).toNat

end

end A336473.P14358856249696630339

/-! ## A336473.P14424706797081161818

`A115871(A336920(n+1)+A076710(n))-A076710(n)`
-/

namespace A336473.P14424706797081161818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115871 (A336920 (n + 1) + A076710 n).toNat - A076710 n

end

end A336473.P14424706797081161818

/-! ## A336473.P6086340577596687955

`A278055(A336460(n+1)%A029542(n+5))`
-/

namespace A336473.P6086340577596687955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278055 (Int.tmod (A336460 (n + 1)) (A029542 (n + 5))).toNat

end

end A336473.P6086340577596687955

/-!
# A336475: Multiplicative with a(2^e) = 1, and for odd primes p, a(p^e) = (e+1)*p^e.

The programs for A336475, the canonical program `A336475.P10953969543612210911` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336475 has offset 1).

The definition of A336475 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336475.P8767089563012210693

`A038040(A000265(n+1))`
-/

namespace A336475.P8767089563012210693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (A000265 (n + 1)).toNat

end

end A336475.P8767089563012210693

namespace A336475

/-- `A038040(A000265(n+1))` -/
def P8767089563012210693.Spec : Prop :=
  ∀ n, P8767089563012210693.a n = A336475 (n + 1)

end A336475

/-! ## A336475.P10953969543612210911

`A000265(n+1)*A001227(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A336475

/-- `A000265(n+1)*A001227(n+1)` -/
def P10953969543612210911.Spec : Prop :=
  ∀ n, P10953969543612210911.a n = A336475 (n + 1)

theorem P10953969543612210911.correct : P10953969543612210911.Spec := by
  intro n
  simp only [A336475, Nat.add_sub_cancel]

end A336475

/-! ## A336475.P12063267073437492471

`A000005(n+1)*A000265(n+1)/A001511(n+1)`
-/

namespace A336475.P12063267073437492471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A000265 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A336475.P12063267073437492471

namespace A336475

/-- `A000005(n+1)*A000265(n+1)/A001511(n+1)` -/
def P12063267073437492471.Spec : Prop :=
  ∀ n, P12063267073437492471.a n = (A336475 (n + 1) : ℚ)

end A336475

/-! ## A336475.P17938278261172281651

`(n+1)/and(n+1, -(n+1))*∑{d}[n+1, #%2]`
-/

namespace A336475.P17938278261172281651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) * ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℚ)

end

end A336475.P17938278261172281651

namespace A336475

/-- `(n+1)/and(n+1, -(n+1))*∑{d}[n+1, #%2]` -/
def P17938278261172281651.Spec : Prop :=
  ∀ n, P17938278261172281651.a n = (A336475 (n + 1) : ℚ)

end A336475

/-! ## A336475.P5243318496849233651

`A038040((n+1)/2^val(n+1, 2))`
-/

namespace A336475.P5243318496849233651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A336475.P5243318496849233651

namespace A336475

/-- `A038040((n+1)/2^val(n+1, 2))` -/
def P5243318496849233651.Spec : Prop :=
  ∀ n, P5243318496849233651.a n = A336475 (n + 1)

end A336475

/-! ## A336475.P645227234381539182

`A245579((n+1)/2^val(n+1, 2))`
-/

namespace A336475.P645227234381539182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245579 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A336475.P645227234381539182

namespace A336475

/-- `A245579((n+1)/2^val(n+1, 2))` -/
def P645227234381539182.Spec : Prop :=
  ∀ n, P645227234381539182.a n = A336475 (n + 1)

end A336475

/-! ## A336475.P16437820631379208717

`∑{d}[(n+1)/and(n+1, -(n+1)), A018804(#)]`
-/

namespace A336475.P16437820631379208717
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A018804 d

end

end A336475.P16437820631379208717

namespace A336475

/-- `∑{d}[(n+1)/and(n+1, -(n+1)), A018804(#)]` -/
def P16437820631379208717.Spec : Prop :=
  ∀ n, P16437820631379208717.a n = A336475 (n + 1)

end A336475

/-! ## A336475.P7582218072099777598

`(n+1)/round(xor(n, n+1)/2)*round(A335616(n+1)/2)`
-/

namespace A336475.P7582218072099777598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 2) : ℚ) * (SequenceMachineLib.roundAway ((A335616 (n + 1) : ℚ) / 2) : ℚ)

end

end A336475.P7582218072099777598

namespace A336475

/-- `(n+1)/round(xor(n, n+1)/2)*round(A335616(n+1)/2)` -/
def P7582218072099777598.Spec : Prop :=
  ∀ n, P7582218072099777598.a n = (A336475 (n + 1) : ℚ)

end A336475

/-! ## A336475.P16420297579807318552

`(n+1)/2^val(n+1, 2)*A000005((n+1)/2^val(n+1, 2))`
-/

namespace A336475.P16420297579807318552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * (A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℚ)

end

end A336475.P16420297579807318552

namespace A336475

/-- `(n+1)/2^val(n+1, 2)*A000005((n+1)/2^val(n+1, 2))` -/
def P16420297579807318552.Spec : Prop :=
  ∀ n, P16420297579807318552.a n = (A336475 (n + 1) : ℚ)

end A336475

/-! ## A336475.P15836771616316759049

`(n+1)/(or(n, n+1)-n)*A000005((n+1)/(or(n, n+1)-n))`
-/

namespace A336475.P15836771616316759049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ) * (A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat : ℚ)

end

end A336475.P15836771616316759049

namespace A336475

/-- `(n+1)/(or(n, n+1)-n)*A000005((n+1)/(or(n, n+1)-n))` -/
def P15836771616316759049.Spec : Prop :=
  ∀ n, P15836771616316759049.a n = (A336475 (n + 1) : ℚ)

end A336475

/-! ## A336475.P6909123908333708297

`(n+1)/and(n+1, -(n+1))*A000005((n+1)/xor(n, or(n, n+1)))`
-/

namespace A336475.P6909123908333708297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) * (A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))).toNat : ℚ)

end

end A336475.P6909123908333708297

namespace A336475

/-- `(n+1)/and(n+1, -(n+1))*A000005((n+1)/xor(n, or(n, n+1)))` -/
def P6909123908333708297.Spec : Prop :=
  ∀ n, P6909123908333708297.a n = (A336475 (n + 1) : ℚ)

end A336475

/-! ## A336475.P14547425553079018705

`(n+1)/and(n+1, -(n+1))*A000005((n+1)/and(n+1, -(n+1)))`
-/

namespace A336475.P14547425553079018705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) * (A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat : ℚ)

end

end A336475.P14547425553079018705

namespace A336475

/-- `(n+1)/and(n+1, -(n+1))*A000005((n+1)/and(n+1, -(n+1)))` -/
def P14547425553079018705.Spec : Prop :=
  ∀ n, P14547425553079018705.a n = (A336475 (n + 1) : ℚ)

end A336475

/-! ## A336475.P13890341095338117763

`(n+1)/xor(n, or(n, n+1))*A000005(2*(n+1)/(xor(n, n+1)+1))`
-/

namespace A336475.P13890341095338117763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ) * (A000005 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat : ℚ)

end

end A336475.P13890341095338117763

namespace A336475

/-- `(n+1)/xor(n, or(n, n+1))*A000005(2*(n+1)/(xor(n, n+1)+1))` -/
def P13890341095338117763.Spec : Prop :=
  ∀ n, P13890341095338117763.a n = (A336475 (n + 1) : ℚ)

end A336475

/-! ## A336475.P18251253947966686407

`2*(n+1)/(xor(n, n+1)+1)*A000005((n+1)/ceil(xor(n, n+1)/2))`
-/

namespace A336475.P18251253947966686407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ) * (A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ))).toNat : ℚ)

end

end A336475.P18251253947966686407

namespace A336475

/-- `2*(n+1)/(xor(n, n+1)+1)*A000005((n+1)/ceil(xor(n, n+1)/2))` -/
def P18251253947966686407.Spec : Prop :=
  ∀ n, P18251253947966686407.a n = (A336475 (n + 1) : ℚ)

end A336475

/-! ## A336475.P5807155413984374188

`(n+1)/(n+1-and(n, n+1))*A000005((n+1)/(n+1-and(n, n+1)))`
-/

namespace A336475.P5807155413984374188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ) * (A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ))).toNat : ℚ)

end

end A336475.P5807155413984374188

namespace A336475

/-- `(n+1)/(n+1-and(n, n+1))*A000005((n+1)/(n+1-and(n, n+1)))` -/
def P5807155413984374188.Spec : Prop :=
  ∀ n, P5807155413984374188.a n = (A336475 (n + 1) : ℚ)

end A336475

/-! ## A336475.P9651452724670621150

`A336845(A064989(n+1))`
-/

namespace A336475.P9651452724670621150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336845 (A064989 (n + 1)).toNat

end

end A336475.P9651452724670621150

namespace A336475

/-- `A336845(A064989(n+1))` -/
def P9651452724670621150.Spec : Prop :=
  ∀ n, P9651452724670621150.a n = A336475 (n + 1)

end A336475

/-! ## A336475.P11594318712721035618

`A349212(A000265(2*(n+1)))`
-/

namespace A336475.P11594318712721035618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349212 (A000265 (2 * (n + 1))).toNat

end

end A336475.P11594318712721035618

namespace A336475

/-- `A349212(A000265(2*(n+1)))` -/
def P11594318712721035618.Spec : Prop :=
  ∀ n, P11594318712721035618.a n = A336475 (n + 1)

end A336475

/-! ## A336475.P3538659283836825764

`A038040((n+1)/A006519(n+1))`
-/

namespace A336475.P3538659283836825764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A336475.P3538659283836825764

namespace A336475

/-- `A038040((n+1)/A006519(n+1))` -/
def P3538659283836825764.Spec : Prop :=
  ∀ n, P3538659283836825764.a n = A336475 (n + 1)

end A336475

/-! ## A336475.P6251412116076909119

`A245579((n+1)/A006519(n+1))`
-/

namespace A336475.P6251412116076909119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245579 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A336475.P6251412116076909119

namespace A336475

/-- `A245579((n+1)/A006519(n+1))` -/
def P6251412116076909119.Spec : Prop :=
  ∀ n, P6251412116076909119.a n = A336475 (n + 1)

end A336475

/-! ## A336475.P10432468458577532151

`∑{d}[n+1, A062570(#)*A115607((n+1)/#)]`
-/

namespace A336475.P10432468458577532151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062570 d * A115607 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A336475.P10432468458577532151

namespace A336475

/-- `∑{d}[n+1, A062570(#)*A115607((n+1)/#)]` -/
def P10432468458577532151.Spec : Prop :=
  ∀ n, P10432468458577532151.a n = A336475 (n + 1)

end A336475

/-!
# A336476: a(n) = gcd(A000593(n), A336475(n)).

The programs for A336476, the canonical program `A336476.P3849910178410724105` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336476 has offset 1).

The definition of A336476 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336475, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336476.P14561417753770740318

`A324121(A000265(n+1))`
-/

namespace A336476.P14561417753770740318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324121 (A000265 (n + 1)).toNat

end

end A336476.P14561417753770740318

namespace A336476

/-- `A324121(A000265(n+1))` -/
def P14561417753770740318.Spec : Prop :=
  ∀ n, P14561417753770740318.a n = A336476 (n + 1)

end A336476

/-! ## A336476.P3849910178410724105

`gcd(A000593(n+1), A336475(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A336476

/-- `gcd(A000593(n+1), A336475(n+1))` -/
def P3849910178410724105.Spec : Prop :=
  ∀ n, (P3849910178410724105.a n : ℤ) = A336476 (n + 1)

theorem P3849910178410724105.correct : P3849910178410724105.Spec := by
  intro n
  simp only [A336476, Nat.add_sub_cancel]

end A336476

/-! ## A336476.P593209677323102753

`A324121((n+1)/2^val(n+1, 2))`
-/

namespace A336476.P593209677323102753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324121 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A336476.P593209677323102753

namespace A336476

/-- `A324121((n+1)/2^val(n+1, 2))` -/
def P593209677323102753.Spec : Prop :=
  ∀ n, P593209677323102753.a n = A336476 (n + 1)

end A336476

/-! ## A336476.P11591767236156415930

`A336846(A064989(n+1))`
-/

namespace A336476.P11591767236156415930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336846 (A064989 (n + 1)).toNat

end

end A336476.P11591767236156415930

namespace A336476

/-- `A336846(A064989(n+1))` -/
def P11591767236156415930.Spec : Prop :=
  ∀ n, P11591767236156415930.a n = A336476 (n + 1)

end A336476

/-! ## A336476.P12884513421977622336

`A324121(A153733(n)+1)`
-/

namespace A336476.P12884513421977622336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324121 (A153733 n + 1).toNat

end

end A336476.P12884513421977622336

namespace A336476

/-- `A324121(A153733(n)+1)` -/
def P12884513421977622336.Spec : Prop :=
  ∀ n, P12884513421977622336.a n = A336476 (n + 1)

end A336476

/-! ## A336476.P13631505224293074032

`A000593(n+1)-A324122(A000265(n+1))`
-/

namespace A336476.P13631505224293074032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A324122 (A000265 (n + 1)).toNat

end

end A336476.P13631505224293074032

namespace A336476

/-- `A000593(n+1)-A324122(A000265(n+1))` -/
def P13631505224293074032.Spec : Prop :=
  ∀ n, P13631505224293074032.a n = A336476 (n + 1)

end A336476

/-! ## A336476.P3149562726664607980

`gcd(A000265(n+1)*A001227(n+1), A002131(n+1))`
-/

namespace A336476.P3149562726664607980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (n + 1) * A001227 (n + 1)) (A002131 (n + 1))

end

end A336476.P3149562726664607980

namespace A336476

/-- `gcd(A000265(n+1)*A001227(n+1), A002131(n+1))` -/
def P3149562726664607980.Spec : Prop :=
  ∀ n, (P3149562726664607980.a n : ℤ) = A336476 (n + 1)

end A336476

/-! ## A336476.P15397656413633507800

`gcd(A326135(2*(n+1)), A349212(A000265(n+1)))`
-/

namespace A336476.P15397656413633507800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326135 (2 * (n + 1))) (A349212 (A000265 (n + 1)).toNat)

end

end A336476.P15397656413633507800

namespace A336476

/-- `gcd(A326135(2*(n+1)), A349212(A000265(n+1)))` -/
def P15397656413633507800.Spec : Prop :=
  ∀ n, (P15397656413633507800.a n : ℤ) = A336476 (n + 1)

end A336476

/-!
# A336477: a(n) = 1 if a regular n-gon is constructible with ruler (or, more precisely, an unmarked straightedge) and compass, 0 otherwise.

The programs for A336477, the canonical program `A336477.P16648333239125872670` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336477 has offset 1).

The definition of A336477 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A209229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336477.P16648333239125872670

`A209229(A000010(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A336477

/-- `A209229(A000010(n+1))` -/
def P16648333239125872670.Spec : Prop :=
  ∀ n, P16648333239125872670.a n = A336477 (n + 1)

theorem P16648333239125872670.correct : P16648333239125872670.Spec := by
  intro n
  simp only [A336477, Nat.add_sub_cancel]

end A336477

/-! ## A336477.P2040883985049345357

`char[A058213(n)-1]`
-/

namespace A336477.P2040883985049345357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058213 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A336477.P2040883985049345357

namespace A336477

/-- `char[A058213(n)-1]` -/
def P2040883985049345357.Spec : Prop :=
  ∀ n, (P2040883985049345357.a n : ℤ) = A336477 (n + 1)

end A336477

/-! ## A336477.P13544450373257754644

`char[A099884(n)-1]`
-/

namespace A336477.P13544450373257754644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A336477.P13544450373257754644

namespace A336477

/-- `char[A099884(n)-1]` -/
def P13544450373257754644.Spec : Prop :=
  ∀ n, (P13544450373257754644.a n : ℤ) = A336477 (n + 1)

end A336477

/-! ## A336477.P12255764811012281728

`char[A276618(n)-1]`
-/

namespace A336477.P12255764811012281728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A336477.P12255764811012281728

namespace A336477

/-- `char[A276618(n)-1]` -/
def P12255764811012281728.Spec : Prop :=
  ∀ n, (P12255764811012281728.a n : ℤ) = A336477 (n + 1)

end A336477

/-! ## A336477.P5494091089554172526

`floor(1/A053575(n+1))`
-/

namespace A336477.P5494091089554172526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A053575 (n + 1) : ℚ)⌋

end

end A336477.P5494091089554172526

namespace A336477

/-- `floor(1/A053575(n+1))` -/
def P5494091089554172526.Spec : Prop :=
  ∀ n, P5494091089554172526.a n = A336477 (n + 1)

end A336477

/-! ## A336477.P11024738336753335101

`floor(1/A193454(n+1))`
-/

namespace A336477.P11024738336753335101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A193454 (n + 1) : ℚ)⌋

end

end A336477.P11024738336753335101

namespace A336477

/-- `floor(1/A193454(n+1))` -/
def P11024738336753335101.Spec : Prop :=
  ∀ n, P11024738336753335101.a n = A336477 (n + 1)

end A336477

/-! ## A336477.P1789166356168746022

`floor(1/A295660(n+1))`
-/

namespace A336477.P1789166356168746022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A295660 (n + 1) : ℚ)⌋

end

end A336477.P1789166356168746022

namespace A336477

/-- `floor(1/A295660(n+1))` -/
def P1789166356168746022.Spec : Prop :=
  ∀ n, P1789166356168746022.a n = A336477 (n + 1)

end A336477

/-! ## A336477.P2527613961608033957

`floor(1/A318831(n+1))`
-/

namespace A336477.P2527613961608033957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A318831 (n + 1) : ℚ)⌋

end

end A336477.P2527613961608033957

namespace A336477

/-- `floor(1/A318831(n+1))` -/
def P2527613961608033957.Spec : Prop :=
  ∀ n, P2527613961608033957.a n = A336477 (n + 1)

end A336477

/-! ## A336477.P2292711851213802693

`round(1/A080400(n+1))`
-/

namespace A336477.P2292711851213802693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A080400 (n + 1) : ℚ))

end

end A336477.P2292711851213802693

namespace A336477

/-- `round(1/A080400(n+1))` -/
def P2292711851213802693.Spec : Prop :=
  ∀ n, P2292711851213802693.a n = A336477 (n + 1)

end A336477

/-! ## A336477.P7784273340063163684

`char[A003401(n+1)-1]`
-/

namespace A336477.P7784273340063163684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A336477.P7784273340063163684

namespace A336477

/-- `char[A003401(n+1)-1]` -/
def P7784273340063163684.Spec : Prop :=
  ∀ n, (P7784273340063163684.a n : ℤ) = A336477 (n + 1)

end A336477

/-! ## A336477.P9173513762478568840

`C(2, 2*A049115(n+1))`
-/

namespace A336477.P9173513762478568840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A049115 (n + 1)).toNat

end

end A336477.P9173513762478568840

namespace A336477

/-- `C(2, 2*A049115(n+1))` -/
def P9173513762478568840.Spec : Prop :=
  ∀ n, (P9173513762478568840.a n : ℤ) = A336477 (n + 1)

end A336477

/-! ## A336477.P8971359605765799799

`C(2, ∑{p}[A000010(2*(n+1)), #])`
-/

namespace A336477.P8971359605765799799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A336477.P8971359605765799799

namespace A336477

/-- `C(2, ∑{p}[A000010(2*(n+1)), #])` -/
def P8971359605765799799.Spec : Prop :=
  ∀ n, (P8971359605765799799.a n : ℤ) = A336477 (n + 1)

end A336477

/-! ## A336477.P5242732825579471914

`A010055(A002322(n+1))`
-/

namespace A336477.P5242732825579471914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A002322 (n + 1)).toNat

end

end A336477.P5242732825579471914

namespace A336477

/-- `A010055(A002322(n+1))` -/
def P5242732825579471914.Spec : Prop :=
  ∀ n, P5242732825579471914.a n = A336477 (n + 1)

end A336477

/-! ## A336477.P7566746670588732801

`A010055(A011773(n+1))`
-/

namespace A336477.P7566746670588732801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A011773 (n + 1)).toNat

end

end A336477.P7566746670588732801

namespace A336477

/-- `A010055(A011773(n+1))` -/
def P7566746670588732801.Spec : Prop :=
  ∀ n, P7566746670588732801.a n = A336477 (n + 1)

end A336477

/-! ## A336477.P10482627818416969098

`A010055(A062570(n+1))`
-/

namespace A336477.P10482627818416969098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A062570 (n + 1)).toNat

end

end A336477.P10482627818416969098

namespace A336477

/-- `A010055(A062570(n+1))` -/
def P10482627818416969098.Spec : Prop :=
  ∀ n, P10482627818416969098.a n = A336477 (n + 1)

end A336477

/-! ## A336477.P10663007474822198655

`A010055(A080400(n+1))`
-/

namespace A336477.P10663007474822198655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A080400 (n + 1)).toNat

end

end A336477.P10663007474822198655

namespace A336477

/-- `A010055(A080400(n+1))` -/
def P10663007474822198655.Spec : Prop :=
  ∀ n, P10663007474822198655.a n = A336477 (n + 1)

end A336477

/-! ## A336477.P6637602180631649690

`A036987(A062402(n+1))`
-/

namespace A336477.P6637602180631649690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A062402 (n + 1)).toNat

end

end A336477.P6637602180631649690

namespace A336477

/-- `A036987(A062402(n+1))` -/
def P6637602180631649690.Spec : Prop :=
  ∀ n, P6637602180631649690.a n = A336477 (n + 1)

end A336477

/-! ## A336477.P12483404821259141112

`A075897(A039649(n+1))`
-/

namespace A336477.P12483404821259141112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075897 (A039649 (n + 1)).toNat

end

end A336477.P12483404821259141112

namespace A336477

/-- `A075897(A039649(n+1))` -/
def P12483404821259141112.Spec : Prop :=
  ∀ n, P12483404821259141112.a n = A336477 (n + 1)

end A336477

/-! ## A336477.P11081468220809918559

`A036987(A092693(n+1))`
-/

namespace A336477.P11081468220809918559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A092693 (n + 1)).toNat

end

end A336477.P11081468220809918559

namespace A336477

/-- `A036987(A092693(n+1))` -/
def P11081468220809918559.Spec : Prop :=
  ∀ n, P11081468220809918559.a n = A336477 (n + 1)

end A336477

/-! ## A336477.P16075867024405172563

`A209229(A053575(n+1))`
-/

namespace A336477.P16075867024405172563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A053575 (n + 1)).toNat

end

end A336477.P16075867024405172563

namespace A336477

/-- `A209229(A053575(n+1))` -/
def P16075867024405172563.Spec : Prop :=
  ∀ n, P16075867024405172563.a n = A336477 (n + 1)

end A336477

/-!
# A336478: Lexicographically earliest sequence of distinct positive terms such that the sum of two consecutive terms has distinct digits in primorial base.

The programs for A336478, there is no canonical definition to state claims against.
-/

/-! ## A336478.P5786528301241980586

`A322845(n+1)%A284048(A347335(5*n+12))`
-/

namespace A336478.P5786528301241980586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322845 (n + 1)) (A284048 (A347335 (5 * n + 12)).toNat)

end

end A336478.P5786528301241980586

/-!
# A336480: a(n) is the smallest positive k such that Fibonorial(n) + k is a prime.

The programs for A336480, there is no canonical definition to state claims against.
-/

/-! ## A336480.P3536522926399414658

`gcd(A008683(A081123(n)), A066889(n+1))`
-/

namespace A336480.P3536522926399414658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A081123 n).toNat) (A066889 (n + 1))

end

end A336480.P3536522926399414658

/-! ## A336480.P5190508141049608844

`gcd(A010815(A060455(n)), A286296(n+1))`
-/

namespace A336480.P5190508141049608844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010815 (A060455 n).toNat) (A286296 (n + 1))

end

end A336480.P5190508141049608844

/-! ## A336480.P2722124906677087748

`A107286(A066889(n+1)^A155904(n+1))`
-/

namespace A336480.P2722124906677087748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (SequenceMachineLib.roundAway ((A066889 (n + 1) : ℚ) ^ (A155904 (n + 1) : ℤ))).toNat

end

end A336480.P2722124906677087748

/-! ## A336480.P4432234932886904055

`A336420(or(A000073(n), A026637(2*n+3)))`
-/

namespace A336480.P4432234932886904055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336420 (Int.lor (A000073 n) (A026637 (2 * n + 3))).toNat

end

end A336480.P4432234932886904055

/-!
# A336482: Total number of left-to-right maxima in all compositions of n.

The programs for A336482, there is no canonical definition to state claims against.
-/

/-! ## A336482.P17648684897792408730

`Δ[∑{e}[A011782(n), A102712(#)]]`
-/

namespace A336482.P17648684897792408730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A102712 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A336482.P17648684897792408730

/-! ## A336482.P2332135417505561804

`A247911(A136298(n))-A115205(n)`
-/

namespace A336482.P2332135417505561804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A136298 n).toNat - A115205 n

end

end A336482.P2332135417505561804

/-! ## A336482.P14255587602975010384

`record[A333484(n)-A096607(n+1)]`
-/

namespace A336482.P14255587602975010384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333484 n - A096607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336482.P14255587602975010384

/-! ## A336482.P15967069478321499150

`∑[A262689(A149740(n))-A168049(n)]`
-/

namespace A336482.P15967069478321499150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A149740 n).toNat - A168049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336482.P15967069478321499150

/-!
# A336483: a(n) = floor(n/10) + (5 times last digit of n).

The programs for A336483, the canonical program `A336483.P4992370987707363295` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336483 has offset 0).

The definition of A336483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336483.P4992370987707363295

`floor(n/10)+5*n%10`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A336483

/-- `floor(n/10)+5*n%10` -/
def P4992370987707363295.Spec : Prop :=
  ∀ n, P4992370987707363295.a n = A336483 n

theorem P4992370987707363295.correct : P4992370987707363295.Spec := by
  intro n
  simp only [A336483]

end A336483

/-! ## A336483.P14369485989449819692

`A076310(n)+n%10`
-/

namespace A336483.P14369485989449819692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076310 n + ((n % 10 : ℕ) : ℤ)

end

end A336483.P14369485989449819692

namespace A336483

/-- `A076310(n)+n%10` -/
def P14369485989449819692.Spec : Prop :=
  ∀ n, P14369485989449819692.a n = A336483 n

theorem P14369485989449819692.correct : P14369485989449819692.Spec := by
  intro n
  simp only [A336483, Nat.add_sub_cancel, A336483.P14369485989449819692.a, A336483.P4992370987707363295.a, A076310, A076310.P5458350930544758694.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336483

/-! ## A336483.P16662000119733919819

`A076310(n)+A010879(n)`
-/

namespace A336483.P16662000119733919819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076310 n + A010879 n

end

end A336483.P16662000119733919819

namespace A336483

/-- `A076310(n)+A010879(n)` -/
def P16662000119733919819.Spec : Prop :=
  ∀ n, P16662000119733919819.a n = A336483 n

theorem P16662000119733919819.correct : P16662000119733919819.Spec := by
  intro n
  simp only [A336483, Nat.add_sub_cancel, A336483.P16662000119733919819.a, A336483.P4992370987707363295.a, A010879, A010879.P10561743211919002802.a, A076310, A076310.P5458350930544758694.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336483

/-! ## A336483.P14833185796155087829

`A008589(A081502(n))-2*n`
-/

namespace A336483.P14833185796155087829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A081502 n).toNat - (2 * n : ℤ)

end

end A336483.P14833185796155087829

namespace A336483

/-- `A008589(A081502(n))-2*n` -/
def P14833185796155087829.Spec : Prop :=
  ∀ n, P14833185796155087829.a n = A336483 n

end A336483

/-! ## A336483.P11332119480284061499

`2*A059995(n)-A076311(n)`
-/

namespace A336483.P11332119480284061499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059995 n - A076311 n

end

end A336483.P11332119480284061499

namespace A336483

/-- `2*A059995(n)-A076311(n)` -/
def P11332119480284061499.Spec : Prop :=
  ∀ n, P11332119480284061499.a n = A336483 n

theorem P11332119480284061499.correct : P11332119480284061499.Spec := by
  intro n
  simp only [A336483, Nat.add_sub_cancel, A336483.P11332119480284061499.a, A336483.P4992370987707363295.a, A059995, A059995.P135539884652528526.a, A076311, A076311.P10743509908486781721.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336483

/-! ## A336483.P10406759341604744484

`2*A076312(n)-A076313(n)`
-/

namespace A336483.P10406759341604744484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076312 n - A076313 n

end

end A336483.P10406759341604744484

namespace A336483

/-- `2*A076312(n)-A076313(n)` -/
def P10406759341604744484.Spec : Prop :=
  ∀ n, P10406759341604744484.a n = A336483 n

end A336483

/-! ## A336483.P5905565880473242009

`A059995(n)+5*A010879(n)`
-/

namespace A336483.P5905565880473242009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n + 5 * A010879 n

end

end A336483.P5905565880473242009

namespace A336483

/-- `A059995(n)+5*A010879(n)` -/
def P5905565880473242009.Spec : Prop :=
  ∀ n, P5905565880473242009.a n = A336483 n

theorem P5905565880473242009.correct : P5905565880473242009.Spec := by
  intro n
  simp only [A336483, Nat.add_sub_cancel, A336483.P5905565880473242009.a, A336483.P4992370987707363295.a, A010879, A010879.P10561743211919002802.a, A059995, A059995.P135539884652528526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336483

/-! ## A336483.P13207181286799379462

`A076310(n)+A076314(n)-A059995(n)`
-/

namespace A336483.P13207181286799379462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076310 n + (A076314 n - A059995 n)

end

end A336483.P13207181286799379462

namespace A336483

/-- `A076310(n)+A076314(n)-A059995(n)` -/
def P13207181286799379462.Spec : Prop :=
  ∀ n, P13207181286799379462.a n = A336483 n

end A336483

/-! ## A336483.P15411611881860638587

`A076309(n)+A076312(n)-A076311(n)`
-/

namespace A336483.P15411611881860638587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 n + (A076312 n - A076311 n)

end

end A336483.P15411611881860638587

namespace A336483

/-- `A076309(n)+A076312(n)-A076311(n)` -/
def P15411611881860638587.Spec : Prop :=
  ∀ n, P15411611881860638587.a n = A336483 n

theorem P15411611881860638587.correct : P15411611881860638587.Spec := by
  intro n
  simp only [A336483, Nat.add_sub_cancel, A336483.P15411611881860638587.a, A336483.P4992370987707363295.a, A076309, A076309.P10223295066147021451.a, A076311, A076311.P10743509908486781721.a, A076312, A076312.P9189460286517996944.a, A010879, A010879.P10561743211919002802.a, A059995, A059995.P135539884652528526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336483

/-! ## A336483.P3316837413183115115

`A076310(n)+A076312(n)-A076314(n)`
-/

namespace A336483.P3316837413183115115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076310 n + (A076312 n - A076314 n)

end

end A336483.P3316837413183115115

namespace A336483

/-- `A076310(n)+A076312(n)-A076314(n)` -/
def P3316837413183115115.Spec : Prop :=
  ∀ n, P3316837413183115115.a n = A336483 n

end A336483

/-! ## A336483.P4135501267154333234

`A076310(n)+A076313(n)-A076309(n)`
-/

namespace A336483.P4135501267154333234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076310 n + (A076313 n - A076309 n)

end

end A336483.P4135501267154333234

namespace A336483

/-- `A076310(n)+A076313(n)-A076309(n)` -/
def P4135501267154333234.Spec : Prop :=
  ∀ n, P4135501267154333234.a n = A336483 n

end A336483

/-! ## A336483.P12800970997945597360

`A076312(n)+A076314(n)-A076309(n)`
-/

namespace A336483.P12800970997945597360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076312 n + (A076314 n - A076309 n)

end

end A336483.P12800970997945597360

namespace A336483

/-- `A076312(n)+A076314(n)-A076309(n)` -/
def P12800970997945597360.Spec : Prop :=
  ∀ n, P12800970997945597360.a n = A336483 n

end A336483

/-! ## A336483.P14911235946093823934

`A076313(n)+A076314(n)-A076311(n)`
-/

namespace A336483.P14911235946093823934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 n + (A076314 n - A076311 n)

end

end A336483.P14911235946093823934

namespace A336483

/-- `A076313(n)+A076314(n)-A076311(n)` -/
def P14911235946093823934.Spec : Prop :=
  ∀ n, P14911235946093823934.a n = A336483 n

theorem P14911235946093823934.correct : P14911235946093823934.Spec := by
  intro n
  simp only [A336483, Nat.add_sub_cancel, A336483.P14911235946093823934.a, A336483.P4992370987707363295.a, A076311, A076311.P10743509908486781721.a, A076313, A076313.P12295764101806133535.a, A076314, A076314.P16087139924310494247.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336483

/-! ## A336483.P13233707632976471973

`A059995(n)-A076311(A059995(n)-A076313(n))`
-/

namespace A336483.P13233707632976471973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n - A076311 (A059995 n - A076313 n).toNat

end

end A336483.P13233707632976471973

namespace A336483

/-- `A059995(n)-A076311(A059995(n)-A076313(n))` -/
def P13233707632976471973.Spec : Prop :=
  ∀ n, P13233707632976471973.a n = A336483 n

end A336483

/-! ## A336483.P9738564082644760277

`A076310(n)-A076313(A076313(n)-A076309(n))`
-/

namespace A336483.P9738564082644760277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076310 n - A076313 (A076313 n - A076309 n).toNat

end

end A336483.P9738564082644760277

namespace A336483

/-- `A076310(n)-A076313(A076313(n)-A076309(n))` -/
def P9738564082644760277.Spec : Prop :=
  ∀ n, P9738564082644760277.a n = A336483 n

end A336483

/-!
# A336484: Total number of left-to-right minima in all compositions of n.

The programs for A336484, there is no canonical definition to state claims against.
-/

/-! ## A336484.P14393782697657075211

`A238134(n+1)+A059995(A027934(n+3))`
-/

namespace A336484.P14393782697657075211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238134 (n + 1) + A059995 (A027934 (n + 3)).toNat

end

end A336484.P14393782697657075211

/-! ## A336484.P6267833616156869159

`A000079(n)-A225687(A152880(n+1))`
-/

namespace A336484.P6267833616156869159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A225687 (A152880 (n + 1)).toNat

end

end A336484.P6267833616156869159

/-! ## A336484.P7603786099343328882

`A054900(A170060(n+3)-A008638(2*n))`
-/

namespace A336484.P7603786099343328882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 (A170060 (n + 3) - A008638 (2 * n)).toNat

end

end A336484.P7603786099343328882

/-! ## A336484.P6721351437872858590

`A034973(lcm((n-1)*2^n+2, n^(n%2)))`
-/

namespace A336484.P6721351437872858590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (Int.lcm (((n : ℤ) - 1) * (2 ^ n : ℤ) + 2) (n ^ (n % 2) : ℤ))

end

end A336484.P6721351437872858590

/-! ## A336484.P5499643720873753922

`2^n-A354581(A344615(n))`
-/

namespace A336484.P5499643720873753922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A354581 (A344615 n).toNat

end

end A336484.P5499643720873753922

/-!
# A336487: Numbers m such that the Fibonacci word (A003849) has an abelian cube of order m.

The programs for A336487, there is no canonical definition to state claims against.
-/

/-! ## A336487.P13450036761464373081

`comp[eq[1, floor(3*n/ϕ)%3]]`
-/

namespace A336487.P13450036761464373081
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊3 * ((n : ℝ) / Real.goldenRatio)⌋ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A336487.P13450036761464373081

/-! ## A336487.P4017532895346561568

`comp[lt[1, ceil(3*n/ϕ)%3]]`
-/

namespace A336487.P4017532895346561568
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈3 * ((n : ℝ) / Real.goldenRatio)⌉ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A336487.P4017532895346561568

/-! ## A336487.P16593152084844113060

`comp[A140399(n+1)]`
-/

namespace A336487.P16593152084844113060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A336487.P16593152084844113060

/-! ## A336487.P14689810268188671110

`comp[A190434(n+1)-18]`
-/

namespace A336487.P14689810268188671110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190434 (n + 1) - 18

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A336487.P14689810268188671110

/-! ## A336487.P7102373095943824128

`comp[A190439(n+1)-36]`
-/

namespace A336487.P7102373095943824128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190439 (n + 1) - 36

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A336487.P7102373095943824128

/-! ## A336487.P14426270853279580312

`comp[A140398(n+1)-48]`
-/

namespace A336487.P14426270853279580312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140398 (n + 1) - 48

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A336487.P14426270853279580312

/-! ## A336487.P15411034935197343989

`lt[A026352(3*n)%3, 2]`
-/

namespace A336487.P15411034935197343989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026352 (3 * n)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A336487.P15411034935197343989

/-! ## A336487.P4087771358811269231

`lt[A047924(3*n)%3, 2]`
-/

namespace A336487.P4087771358811269231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047924 (3 * n)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A336487.P4087771358811269231

/-! ## A336487.P6132588970855341040

`eq[0, abs(a(A140397(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A336487.P6132588970855341040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (A140397 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336487.P6132588970855341040

/-! ## A336487.P9159484129057612447

`eq[1, A003842(A004919(n))]`
-/

namespace A336487.P9159484129057612447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (A004919 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336487.P9159484129057612447

/-!
# A336488: Values taken by all the Jordan totient functions J_k(m) for k >= 1 and m >= 1.

The programs for A336488, there is no canonical definition to state claims against.
-/

/-! ## A336488.P6219662560266318219

`A221178(n+2)`
-/

namespace A336488.P6219662560266318219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221178 (n + 2)

end

end A336488.P6219662560266318219

/-! ## A336488.P17027682423090925773

`record[A221178(xor(n, A000038(n)))]`
-/

namespace A336488.P17027682423090925773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221178 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336488.P17027682423090925773

/-! ## A336488.P11990933471343516239

`record[A221178(A028310(abs(2-n)))]`
-/

namespace A336488.P11990933471343516239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221178 (A028310 |2 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336488.P11990933471343516239

/-! ## A336488.P6089052972436395050

`∪[A002202(n+1), A181062(n+2)]`
-/

namespace A336488.P6089052972436395050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336488.P6089052972436395050

/-! ## A336488.P10576648008969496140

`∪[A002202(n+1), A249435(n+2)]`
-/

namespace A336488.P10576648008969496140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336488.P10576648008969496140

/-! ## A336488.P15341143477006426101

`∪[A002202(n+1), A246655(n+1)-1]`
-/

namespace A336488.P15341143477006426101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336488.P15341143477006426101

/-! ## A336488.P2756849456469563614

`∪[A000961(n+2)-1, A002202(n+2)]`
-/

namespace A336488.P2756849456469563614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336488.P2756849456469563614

/-! ## A336488.P11309456770265202077

`∪[eq[1, A132468(n+1)], A002202(n+1)]`
-/

namespace A336488.P11309456770265202077
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132468 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A336488.P11309456770265202077

/-! ## A336488.P10787187819732973179

`lt[1, A014963(n+1)+char[A000010(n+1)]]`
-/

namespace A336488.P10787187819732973179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A336488.P10787187819732973179

/-! ## A336488.P2537988067859950095

`∪[eq[n+1, A345451(n+1)], A002202(n+1)]`
-/

namespace A336488.P2537988067859950095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A336488.P2537988067859950095

/-!
# A336489: Consider the figure made up of a row of n adjacent congruent rectangles, with diagonals of all possible rectangles drawn; a(n) = number of interior vertices where exactly three lines cross.

The programs for A336489, there is no canonical definition to state claims against.
-/

/-! ## A336489.P6249080422284540567

`A333275((n+1)²+4)`
-/

namespace A336489.P6249080422284540567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333275 ((n + 1) ^ 2 + 4)

end

end A336489.P6249080422284540567

/-! ## A336489.P14216730229826582113

`record[A333275((n+1)%or(3, n)+3)]`
-/

namespace A336489.P14216730229826582113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333275 ((n + 1) % Nat.lor 3 n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336489.P14216730229826582113

/-! ## A336489.P18236016252079834536

`record[A333275(A042948(n+1))]`
-/

namespace A336489.P18236016252079834536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333275 (A042948 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336489.P18236016252079834536

/-! ## A336489.P10929654258246334395

`record[A333275(A000037(n+1)+2)]`
-/

namespace A336489.P10929654258246334395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333275 (A000037 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336489.P10929654258246334395

/-! ## A336489.P2645277283131592514

`record[A333275(A008833(n+1)+4)]`
-/

namespace A336489.P2645277283131592514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333275 (A008833 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336489.P2645277283131592514

/-!
# A336490: Consider the figure made up of a row of n adjacent congruent rectangles, with diagonals of all possible rectangles drawn; a(n) is the number of interior vertices where exactly four lines cross.

The programs for A336490, there is no canonical definition to state claims against.
-/

/-! ## A336490.P16894772365114441424

`A333275((n+1)²+6)`
-/

namespace A336490.P16894772365114441424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333275 ((n + 1) ^ 2 + 6)

end

end A336490.P16894772365114441424

/-!
# A336491: Consider the figure made up of a row of n adjacent congruent rectangles, with diagonals of all possible rectangles drawn; a(n) = number of interior vertices where exactly five lines cross.

The programs for A336491, there is no canonical definition to state claims against.
-/

/-! ## A336491.P2343708039836800482

`A333275((n+1)²+8)`
-/

namespace A336491.P2343708039836800482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333275 ((n + 1) ^ 2 + 8)

end

end A336491.P2343708039836800482

/-!
# A336492: Total number of neighbor contacts for n-step self-avoiding walks on a 2D square lattice.

The programs for A336492, there is no canonical definition to state claims against.
-/

/-! ## A336492.P3500775486845943741

`∑[A059169(Δ[A318975(n)]²)]`
-/

namespace A336492.P3500775486845943741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318975 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336492.P3500775486845943741

/-! ## A336492.P7555853280412747065

`8*A328090(Δ[C(n², 2)/6])`
-/

namespace A336492.P7555853280412747065
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A328090 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A336492.P7555853280412747065

/-!
# A336493: a(n) is the largest integer x such that x/sopf(x) = prime(n) where sopf(x) is the sum of distinct prime factors of x and prime(n) is the n-th prime.

The programs for A336493, there is no canonical definition to state claims against.
-/

/-! ## A336493.P3635369568427426953

`∑{d}[n+1, #²]*A057935(A034182(n+2))`
-/

namespace A336493.P3635369568427426953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ) * A057935 (A034182 (n + 2)).toNat

end

end A336493.P3635369568427426953

/-!
# A336495: a(n) = (-1)^n * Sum_{k=0..n} (-2)^k * binomial(n,k) * binomial(n^2+k+1,n)/(n^2+k+1).

The programs for A336495, there is no canonical definition to state claims against.
-/

/-! ## A336495.P10559272162397428791

`A336573(∑[4*n])`
-/

namespace A336495.P10559272162397428791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336573 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336495.P10559272162397428791

/-! ## A336495.P17808097561998118561

`A336573(A046092(n))^A178334(n)`
-/

namespace A336495.P17808097561998118561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336573 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A336495.P17808097561998118561

/-! ## A336495.P6130827854497220818

`gcd(A000038(n), A336573(A046092(n)))`
-/

namespace A336495.P6130827854497220818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A336573 (A046092 n).toNat)

end

end A336495.P6130827854497220818

/-! ## A336495.P9551116503085123027

`lcm(A006466(n), A336573(A046092(n)))`
-/

namespace A336495.P9551116503085123027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A336573 (A046092 n).toNat)

end

end A336495.P9551116503085123027

/-! ## A336495.P2341187248752907713

`or(A000007(n), A336573(A046092(n)))`
-/

namespace A336495.P2341187248752907713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A336573 (A046092 n).toNat)

end

end A336495.P2341187248752907713

/-!
# A336496: Products of superfactorials (A000178).

The programs for A336496, there is no canonical definition to state claims against.
-/

/-! ## A336496.P8611957441500247127

`filter[A035240(n+1), A353518(#)]`
-/

namespace A336496.P8611957441500247127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353518 (f1 j).toNat = 1) n)

end

end A336496.P8611957441500247127

/-! ## A336496.P6988645122131670288

`∩[A002479(n+1), A181818(n+1)]`
-/

namespace A336496.P6988645122131670288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336496.P6988645122131670288

/-! ## A336496.P4648050122669449808

`∩[A035240(n+1), A181818(n+1)]`
-/

namespace A336496.P4648050122669449808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336496.P4648050122669449808

/-! ## A336496.P5226971883762711049

`∩[A002174(n+1), A317804(n+1)]`
-/

namespace A336496.P5226971883762711049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336496.P5226971883762711049

/-! ## A336496.P10386259583890322431

`∩[A002479(n+1), A317804(n+1)]`
-/

namespace A336496.P10386259583890322431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336496.P10386259583890322431

/-!
# A336498: Irregular triangle read by rows where T(n,k) is the number of divisors of n! with k prime factors, counted with multiplicity.

The programs for A336498, there is no canonical definition to state claims against.
-/

/-! ## A336498.P16856173003692723787

`∏{e}[ceil(2^(n-1)), A102418(#)]`
-/

namespace A336498.P16856173003692723787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A102418 (Nat.factorization (f1 n).natAbs p)

end

end A336498.P16856173003692723787

/-! ## A336498.P5668739257518653891

`A001222(7^A102418(abs(1-n)))`
-/

namespace A336498.P5668739257518653891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A102418 |1 - (n : ℤ)|.toNat : ℤ))).toNat

end

end A336498.P5668739257518653891

/-! ## A336498.P4368169284424940946

`A102418(abs(1-n))%p?[A028314(n)]`
-/

namespace A336498.P4368169284424940946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102418 |1 - (n : ℤ)|.toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A336498.P4368169284424940946

/-! ## A336498.P10255981289964296764

`A214973(A266178(n)+A008300(n+3))`
-/

namespace A336498.P10255981289964296764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214973 (A266178 n + A008300 (n + 3)).toNat

end

end A336498.P10255981289964296764

/-! ## A336498.P12464216797633586351

`A055642(A303204(n)%A198708(n+4))`
-/

namespace A336498.P12464216797633586351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.tmod (A303204 n) (A198708 (n + 4))).toNat

end

end A336498.P12464216797633586351

/-!
# A336499: Irregular triangle read by rows where T(n,k) is the number of divisors of n! with distinct prime multiplicities and a total of k prime factors, counted with multiplicity.

The programs for A336499, there is no canonical definition to state claims against.
-/

/-! ## A336499.P1525182897085878321

`A162642(A004731(n)+A003238(n+1))`
-/

namespace A336499.P1525182897085878321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (A004731 n + A003238 (n + 1)).toNat

end

end A336499.P1525182897085878321

/-! ## A336499.P11725503869695086865

`or(A000035(A128021(n+1)), A239002(n))`
-/

namespace A336499.P11725503869695086865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A128021 (n + 1)).toNat) (A239002 n)

end

end A336499.P11725503869695086865

/-! ## A336499.P6377749410831480396

`A110654(A000196(n))+A016412(A052905(n))`
-/

namespace A336499.P6377749410831480396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000196 n).toNat + A016412 (A052905 n).toNat

end

end A336499.P6377749410831480396

/-! ## A336499.P15849796459594755565

`gcd(A002262(n), A088705(A081123(n)))`
-/

namespace A336499.P15849796459594755565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A088705 (A081123 n).toNat)

end

end A336499.P15849796459594755565

/-! ## A336499.P8830613279480424187

`A180424(A234285(n+1)-A222229(n))`
-/

namespace A336499.P8830613279480424187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180424 (A234285 (n + 1) - A222229 n).toNat

end

end A336499.P8830613279480424187

