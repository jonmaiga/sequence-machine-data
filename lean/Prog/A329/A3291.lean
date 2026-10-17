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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B003.C005
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

/-!
# A329100: Composite palindromes whose divisors > 1 are all nontrivial palindromes (i.e., palindromes with at least two digits).

The programs for A329100, there is no canonical definition to state claims against.
-/

/-! ## A329100.P17354425789340659737

`∩[A038511(n+1), A062687(n+1)]`
-/

namespace A329100.P17354425789340659737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329100.P17354425789340659737

/-! ## A329100.P5302768434386293212

`∩[A062687(n+1), A271630(n+1)]`
-/

namespace A329100.P5302768434386293212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329100.P5302768434386293212

/-!
# A329103: Numbers k such that both k^2 - 3 and 2^k - 3 are primes.

The programs for A329103, there is no canonical definition to state claims against.
-/

/-! ## A329103.P2871082998183402637

`∩[A028873(n+1), A050414(n+1)]`
-/

namespace A329103.P2871082998183402637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329103.P2871082998183402637

/-!
# A329104: Numbers m such that sigma(m) - tau(m) = 2m.

The programs for A329104, there is no canonical definition to state claims against.
-/

/-! ## A329104.P6123792073130849818

`A056075(n+3)+A021913(A000583(n))`
-/

namespace A329104.P6123792073130849818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056075 (n + 3) + A021913 (A000583 n).toNat

end

end A329104.P6123792073130849818

/-! ## A329104.P6742148512880606589

`A056075(n+3)+A000007(A291292(n))`
-/

namespace A329104.P6742148512880606589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056075 (n + 3) + A000007 (A291292 n).toNat

end

end A329104.P6742148512880606589

/-! ## A329104.P17275235807398117171

`A056075(n+3)*A057427(A000108(n))`
-/

namespace A329104.P17275235807398117171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056075 (n + 3) * A057427 (A000108 n).toNat

end

end A329104.P17275235807398117171

/-! ## A329104.P1025918042096332675

`A056075(n+3)^A047020(A107867(n))`
-/

namespace A329104.P1025918042096332675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056075 (n + 3) : ℚ) ^ (A047020 (A107867 n).toNat : ℤ)

end

end A329104.P1025918042096332675

/-! ## A329104.P16216527560638144058

`A056075(n+3)^A095118(A082387(n+1))`
-/

namespace A329104.P16216527560638144058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056075 (n + 3) : ℚ) ^ (A095118 (A082387 (n + 1)).toNat : ℤ)

end

end A329104.P16216527560638144058

/-!
# A329106: Primes containing at least one of the following digits: 4, 6, 8, or 9.

The programs for A329106, the canonical program `A329106.P17407900006589501392` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329106 has offset 1).

The definition of A329106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329106.P17407900006589501392

`p?[A118951(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A329106

/-- `p?[A118951(n+1)]` -/
def P17407900006589501392.Spec : Prop :=
  ∀ n, P17407900006589501392.a n = A329106 (n + 1)

theorem P17407900006589501392.correct : P17407900006589501392.Spec := by
  intro n
  simp only [A329106, Nat.add_sub_cancel]

end A329106

/-! ## A329106.P17482686121390429274

`p?[comp[A202267(n+1)]]`
-/

namespace A329106.P17482686121390429274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A329106.P17482686121390429274

namespace A329106

/-- `p?[comp[A202267(n+1)]]` -/
def P17482686121390429274.Spec : Prop :=
  ∀ n, (P17482686121390429274.a n : ℤ) = A329106 (n + 1)

end A329106

/-! ## A329106.P13556208360432580527

`filter[A118951(n+1), A010051(#)]`
-/

namespace A329106.P13556208360432580527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A329106.P13556208360432580527

namespace A329106

/-- `filter[A118951(n+1), A010051(#)]` -/
def P13556208360432580527.Spec : Prop :=
  ∀ n, P13556208360432580527.a n = A329106 (n + 1)

end A329106

/-! ## A329106.P7786791131940745471

`filter[A118951(n+1), A080339(#)]`
-/

namespace A329106.P7786791131940745471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A329106.P7786791131940745471

namespace A329106

/-- `filter[A118951(n+1), A080339(#)]` -/
def P7786791131940745471.Spec : Prop :=
  ∀ n, P7786791131940745471.a n = A329106 (n + 1)

end A329106

/-! ## A329106.P4940813370955653739

`filter[A118951(n+1), A080545(#)]`
-/

namespace A329106.P4940813370955653739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A329106.P4940813370955653739

namespace A329106

/-- `filter[A118951(n+1), A080545(#)]` -/
def P4940813370955653739.Spec : Prop :=
  ∀ n, P4940813370955653739.a n = A329106 (n + 1)

end A329106

/-! ## A329106.P18370483092299676998

`filter[A118951(n+1), A171387(#)]`
-/

namespace A329106.P18370483092299676998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A329106.P18370483092299676998

namespace A329106

/-- `filter[A118951(n+1), A171387(#)]` -/
def P18370483092299676998.Spec : Prop :=
  ∀ n, P18370483092299676998.a n = A329106 (n + 1)

end A329106

/-! ## A329106.P2198979830819718299

`∩[A000040(n+1), A118951(n+1)]`
-/

namespace A329106.P2198979830819718299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329106.P2198979830819718299

namespace A329106

/-- `∩[A000040(n+1), A118951(n+1)]` -/
def P2198979830819718299.Spec : Prop :=
  ∀ n, (P2198979830819718299.a n : ℤ) = A329106 (n + 1)

end A329106

/-! ## A329106.P5741549536648109359

`∩[A004139(n+1), A118951(n+1)]`
-/

namespace A329106.P5741549536648109359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329106.P5741549536648109359

namespace A329106

/-- `∩[A004139(n+1), A118951(n+1)]` -/
def P5741549536648109359.Spec : Prop :=
  ∀ n, (P5741549536648109359.a n : ℤ) = A329106 (n + 1)

end A329106

/-! ## A329106.P12682186930610333674

`∩[A006005(n+1), A118951(n+1)]`
-/

namespace A329106.P12682186930610333674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329106.P12682186930610333674

namespace A329106

/-- `∩[A006005(n+1), A118951(n+1)]` -/
def P12682186930610333674.Spec : Prop :=
  ∀ n, (P12682186930610333674.a n : ℤ) = A329106 (n + 1)

end A329106

/-! ## A329106.P5997606897724721823

`∩[A008578(n+1), A118951(n+1)]`
-/

namespace A329106.P5997606897724721823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329106.P5997606897724721823

namespace A329106

/-- `∩[A008578(n+1), A118951(n+1)]` -/
def P5997606897724721823.Spec : Prop :=
  ∀ n, (P5997606897724721823.a n : ℤ) = A329106 (n + 1)

end A329106

/-! ## A329106.P9043614354616762685

`∩[A045319(n+1), A118951(n+1)]`
-/

namespace A329106.P9043614354616762685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329106.P9043614354616762685

namespace A329106

/-- `∩[A045319(n+1), A118951(n+1)]` -/
def P9043614354616762685.Spec : Prop :=
  ∀ n, (P9043614354616762685.a n : ℤ) = A329106 (n + 1)

end A329106

/-! ## A329106.P3108491731745351020

`∩[A045344(n+1), A118951(n+1)]`
-/

namespace A329106.P3108491731745351020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329106.P3108491731745351020

namespace A329106

/-- `∩[A045344(n+1), A118951(n+1)]` -/
def P3108491731745351020.Spec : Prop :=
  ∀ n, (P3108491731745351020.a n : ℤ) = A329106 (n + 1)

end A329106

/-! ## A329106.P18120408737011879027

`∩[A065091(n+1), A118951(n+1)]`
-/

namespace A329106.P18120408737011879027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329106.P18120408737011879027

namespace A329106

/-- `∩[A065091(n+1), A118951(n+1)]` -/
def P18120408737011879027.Spec : Prop :=
  ∀ n, (P18120408737011879027.a n : ℤ) = A329106 (n + 1)

end A329106

/-! ## A329106.P3738569854963204130

`∩[A071621(n+1), A118951(n+1)]`
-/

namespace A329106.P3738569854963204130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329106.P3738569854963204130

namespace A329106

/-- `∩[A071621(n+1), A118951(n+1)]` -/
def P3738569854963204130.Spec : Prop :=
  ∀ n, (P3738569854963204130.a n : ℤ) = A329106 (n + 1)

end A329106

/-! ## A329106.P8549047317371629785

`∩[A106118(n+1), A118951(n+1)]`
-/

namespace A329106.P8549047317371629785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329106.P8549047317371629785

namespace A329106

/-- `∩[A106118(n+1), A118951(n+1)]` -/
def P8549047317371629785.Spec : Prop :=
  ∀ n, (P8549047317371629785.a n : ℤ) = A329106 (n + 1)

end A329106

/-! ## A329106.P15756464485190150466

`∩[A106119(n+1), A118951(n+1)]`
-/

namespace A329106.P15756464485190150466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329106.P15756464485190150466

namespace A329106

/-- `∩[A106119(n+1), A118951(n+1)]` -/
def P15756464485190150466.Spec : Prop :=
  ∀ n, (P15756464485190150466.a n : ℤ) = A329106 (n + 1)

end A329106

/-! ## A329106.P14911591011131508745

`∩[A106120(n+1), A118951(n+1)]`
-/

namespace A329106.P14911591011131508745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329106.P14911591011131508745

namespace A329106

/-- `∩[A106120(n+1), A118951(n+1)]` -/
def P14911591011131508745.Spec : Prop :=
  ∀ n, (P14911591011131508745.a n : ℤ) = A329106 (n + 1)

end A329106

/-! ## A329106.P9007840124344893596

`∩[A108719(n+1), A118951(n+1)]`
-/

namespace A329106.P9007840124344893596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329106.P9007840124344893596

namespace A329106

/-- `∩[A108719(n+1), A118951(n+1)]` -/
def P9007840124344893596.Spec : Prop :=
  ∀ n, (P9007840124344893596.a n : ℤ) = A329106 (n + 1)

end A329106

/-! ## A329106.P15095338034265998241

`∩[A140475(n+1), A118951(n+1)]`
-/

namespace A329106.P15095338034265998241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329106.P15095338034265998241

namespace A329106

/-- `∩[A140475(n+1), A118951(n+1)]` -/
def P15095338034265998241.Spec : Prop :=
  ∀ n, (P15095338034265998241.a n : ℤ) = A329106 (n + 1)

end A329106

/-! ## A329106.P1063619324001608067

`p?[n%((n+1)^A064692(A004185(n)))]`
-/

namespace A329106.P1063619324001608067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A064692 (A004185 n).toNat : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A329106.P1063619324001608067

namespace A329106

/-- `p?[n%((n+1)^A064692(A004185(n)))]` -/
def P1063619324001608067.Spec : Prop :=
  ∀ n, P1063619324001608067.a n = A329106 (n + 1)

end A329106

/-!
# A329108: First column of A027447.

The programs for A329108, there is no canonical definition to state claims against.
-/

/-! ## A329108.P13045970113999577396

`A027447(∑[n]+1)`
-/

namespace A329108.P13045970113999577396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027447 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A329108.P13045970113999577396

/-! ## A329108.P15871499056085065033

`record[A027447(n+1)]`
-/

namespace A329108.P15871499056085065033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329108.P15871499056085065033

/-! ## A329108.P16564894649294277240

`or(1, A027447(A000124(n)))`
-/

namespace A329108.P16564894649294277240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A027447 (A000124 n).toNat)

end

end A329108.P16564894649294277240

/-! ## A329108.P8554341100300993470

`A027447(A000124(n))+A000007(n+1)`
-/

namespace A329108.P8554341100300993470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027447 (A000124 n).toNat + A000007 (n + 1)

end

end A329108.P8554341100300993470

/-! ## A329108.P3162535243905427425

`A001222(A006512(n+1))*A027447(A000124(n))`
-/

namespace A329108.P3162535243905427425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006512 (n + 1)).toNat * A027447 (A000124 n).toNat

end

end A329108.P3162535243905427425

/-! ## A329108.P13636008834781658464

`A027447(A000124(n))%A238510(n+1)`
-/

namespace A329108.P13636008834781658464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027447 (A000124 n).toNat) (A238510 (n + 1))

end

end A329108.P13636008834781658464

/-!
# A329110: Number of integer sequences 1 <= b_1 < b_2 < ... < b_t <= n such that b_i divides b_(i+1) for all 0 < i < t.

The programs for A329110, there is no canonical definition to state claims against.
-/

/-! ## A329110.P3597474066120636730

`∑[A067824(n+1)]`
-/

namespace A329110.P3597474066120636730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329110.P3597474066120636730

/-! ## A329110.P8327393493891532798

`∑[2*A002033(n)]-1`
-/

namespace A329110.P8327393493891532798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A329110.P8327393493891532798

/-! ## A329110.P16116689453183888807

`∑[A337256(n+1)/2]`
-/

namespace A329110.P16116689453183888807
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337256 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329110.P16116689453183888807

/-! ## A329110.P545567371254457078

`∑[∑{d}[n+1, A074206(#)]]`
-/

namespace A329110.P545567371254457078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A074206 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329110.P545567371254457078

/-! ## A329110.P2736277412288393172

`2*A025523(n+1)-1`
-/

namespace A329110.P2736277412288393172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025523 (n + 1) - 1

end

end A329110.P2736277412288393172

/-! ## A329110.P9788079070206990878

`2*A173382(n+1)-1`
-/

namespace A329110.P9788079070206990878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173382 (n + 1) - 1

end

end A329110.P9788079070206990878

/-! ## A329110.P14313273887434472404

`∑[(A253249(n+1)+1)/2]`
-/

namespace A329110.P14313273887434472404
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253249 (n + 1) + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329110.P14313273887434472404

/-! ## A329110.P6559687104299982602

`∑[∑{d}[n+1, A002033(#-1)]]`
-/

namespace A329110.P6559687104299982602
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A002033 (d - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329110.P6559687104299982602

/-! ## A329110.P15626882328520134401

`∑[A002033(n)/2*A040002(n)]`
-/

namespace A329110.P15626882328520134401
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002033 n : ℚ) / 2 * (A040002 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329110.P15626882328520134401

/-! ## A329110.P2992582216265987421

`A067824(A000027(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A329110.P2992582216265987421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A067824 (A000027 (n + 1)).toNat + a (n - 1)

end

end A329110.P2992582216265987421

/-! ## A329110.P12057062590009282071

`∑[A020639(A001223(n+1))*A002033(n)]`
-/

namespace A329110.P12057062590009282071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001223 (n + 1)).toNat * A002033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329110.P12057062590009282071

/-! ## A329110.P10739918844269791335

`A022825(2*(n+1))-A022830(2*n+1)`
-/

namespace A329110.P10739918844269791335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022825 (2 * (n + 1)) - A022830 (2 * n + 1)

end

end A329110.P10739918844269791335

/-! ## A329110.P16117918871851361918

`∑[A000463(A253249(n+1))]`
-/

namespace A329110.P16117918871851361918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A253249 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329110.P16117918871851361918

/-! ## A329110.P13804131693540729253

`∑[A335079(A087560(n+1))]`
-/

namespace A329110.P13804131693540729253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335079 (A087560 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329110.P13804131693540729253

/-! ## A329110.P1307657123369653230

`A004273(A025523(n+1))`
-/

namespace A329110.P1307657123369653230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A025523 (n + 1)).toNat

end

end A329110.P1307657123369653230

/-! ## A329110.P7253774030782411854

`A004273(A173382(n+1))`
-/

namespace A329110.P7253774030782411854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A173382 (n + 1)).toNat

end

end A329110.P7253774030782411854

/-! ## A329110.P1614465192601179384

`A067824(A003961(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A329110.P1614465192601179384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A067824 (A003961 (n + 1)).toNat + a (n - 1)

end

end A329110.P1614465192601179384

/-! ## A329110.P14638919013297682217

`∑[A342085(A033286(n+1))]`
-/

namespace A329110.P14638919013297682217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342085 (A033286 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329110.P14638919013297682217

/-! ## A329110.P10618576607689160901

`∑[A342085(A164931(n+1))]`
-/

namespace A329110.P10618576607689160901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342085 (A164931 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329110.P10618576607689160901

/-!
# A329111: a(n) = round(b(n)) where b(n) = b(n-1)^(b(n-1)^(1/b(n-1))) and b(1)=2.

The programs for A329111, there is no canonical definition to state claims against.
-/

/-! ## A329111.P9545777637896472989

`A254531(A000108(n)+A000079(n))`
-/

namespace A329111.P9545777637896472989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254531 ((A000108 n + A000079 n).toNat + 27)

end

end A329111.P9545777637896472989

/-! ## A329111.P14866665098322963232

`A254531(A131577(n+1)+A000108(n))`
-/

namespace A329111.P14866665098322963232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254531 ((A131577 (n + 1) + A000108 n).toNat + 27)

end

end A329111.P14866665098322963232

/-!
# A329112: Numbers k such that k![4] - 8 is prime, where k![4] = A007662(k) = quadruple factorial.

The programs for A329112, there is no canonical definition to state claims against.
-/

/-! ## A329112.P10717605888472562462

`lt[A086008(A308868(n)), n%2]`
-/

namespace A329112.P10717605888472562462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 (A308868 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A329112.P10717605888472562462

/-! ## A329112.P14609251972996011695

`lt[A320311(n+4), and(6, A005044(n))]`
-/

namespace A329112.P14609251972996011695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320311 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A005044 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A329112.P14609251972996011695

/-! ## A329112.P6268669517954363516

`record[A254760(A321648(2*(n+2))+1)]`
-/

namespace A329112.P6268669517954363516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254760 (A321648 (2 * (n + 2)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329112.P6268669517954363516

/-! ## A329112.P12564995290873321854

`eq[A040005(n), A333381(A185327(n))]`
-/

namespace A329112.P12564995290873321854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A185327 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329112.P12564995290873321854

/-!
# A329113: Row sums of A329058.

The programs for A329113, there is no canonical definition to state claims against.
-/

/-! ## A329113.P16926468198474968436

`round(A313796((n+1)*a(n-1))/3)` with `a(0)=1`
-/

namespace A329113.P16926468198474968436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((A313796 ((n + 1 : ℤ) * a (n - 1)).toNat : ℚ) / 3)

end

end A329113.P16926468198474968436

/-!
# A329114: a(n) = floor(A026532(n)/5).

The programs for A329114, the canonical program `A329114.P8742675575835796846` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329114 has offset 1).

The definition of A329114 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329114.P8742675575835796846

`7*a(n-2)-6*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A329114

/-- `7*a(n-2)-6*a(n-4)` -/
def P8742675575835796846.Spec : Prop :=
  ∀ n, P8742675575835796846.a n = A329114 (n + 1)

theorem P8742675575835796846.correct : P8742675575835796846.Spec := by
  intro n
  simp only [A329114, Nat.add_sub_cancel]

end A329114

/-! ## A329114.P17174246040283458213

`floor(A026532(n+1)/5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329114.P17174246040283458213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026532 (n + 1) : ℚ) / 5⌋

end

end A329114.P17174246040283458213

namespace A329114

/-- `floor(A026532(n+1)/5)` -/
def P17174246040283458213.Spec : Prop :=
  ∀ n, P17174246040283458213.a n = A329114 (n + 1)

end A329114

/-! ## A329114.P4399655831401974170

`A329115(n+1)/2*A010693(n)`
-/

namespace A329114.P4399655831401974170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329115 (n + 1) : ℚ) / 2 * (A010693 n : ℚ)

end

end A329114.P4399655831401974170

namespace A329114

/-- `A329115(n+1)/2*A010693(n)` -/
def P4399655831401974170.Spec : Prop :=
  ∀ n, P4399655831401974170.a n = (A329114 (n + 1) : ℚ)

end A329114

/-! ## A329114.P2385051819119253410

`floor(∏[n%2+2]/10)`
-/

namespace A329114.P2385051819119253410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 10⌋

end

end A329114.P2385051819119253410

namespace A329114

/-- `floor(∏[n%2+2]/10)` -/
def P2385051819119253410.Spec : Prop :=
  ∀ n, P2385051819119253410.a n = A329114 (n + 1)

end A329114

/-! ## A329114.P6071442829758270259

`floor(∏[4-gcd(2, n)]/10)`
-/

namespace A329114.P6071442829758270259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 10⌋

end

end A329114.P6071442829758270259

namespace A329114

/-- `floor(∏[4-gcd(2, n)]/10)` -/
def P6071442829758270259.Spec : Prop :=
  ∀ n, P6071442829758270259.a n = A329114 (n + 1)

end A329114

/-! ## A329114.P9704054913046002236

`floor(∏[and(1, n)+2]/10)`
-/

namespace A329114.P9704054913046002236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 10⌋

end

end A329114.P9704054913046002236

namespace A329114

/-- `floor(∏[and(1, n)+2]/10)` -/
def P9704054913046002236.Spec : Prop :=
  ∀ n, P9704054913046002236.a n = A329114 (n + 1)

end A329114

/-! ## A329114.P17790941942120823138

`floor(∏[or(2, n)%4]/10)`
-/

namespace A329114.P17790941942120823138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n % 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 10⌋

end

end A329114.P17790941942120823138

namespace A329114

/-- `floor(∏[or(2, n)%4]/10)` -/
def P17790941942120823138.Spec : Prop :=
  ∀ n, P17790941942120823138.a n = A329114 (n + 1)

end A329114

/-! ## A329114.P243488472398349809

`floor(∏[xor(2, and(1, n))]/10)`
-/

namespace A329114.P243488472398349809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 10⌋

end

end A329114.P243488472398349809

namespace A329114

/-- `floor(∏[xor(2, and(1, n))]/10)` -/
def P243488472398349809.Spec : Prop :=
  ∀ n, P243488472398349809.a n = A329114 (n + 1)

end A329114

/-! ## A329114.P9655104005591141611

`floor(A026549(n+1)/10)`
-/

namespace A329114.P9655104005591141611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026549 (n + 1) : ℚ) / 10⌋

end

end A329114.P9655104005591141611

namespace A329114

/-- `floor(A026549(n+1)/10)` -/
def P9655104005591141611.Spec : Prop :=
  ∀ n, P9655104005591141611.a n = A329114 (n + 1)

end A329114

/-! ## A329114.P11702632012068670718

`floor(A164560(n+1)/10)`
-/

namespace A329114.P11702632012068670718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A164560 (n + 1) : ℚ) / 10⌋

end

end A329114.P11702632012068670718

namespace A329114

/-- `floor(A164560(n+1)/10)` -/
def P11702632012068670718.Spec : Prop :=
  ∀ n, P11702632012068670718.a n = A329114 (n + 1)

end A329114

/-! ## A329114.P8374560162058413707

`A026532(n+1)/A026549(n)*A329115(n+1)`
-/

namespace A329114.P8374560162058413707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026532 (n + 1) : ℚ) / (A026549 n : ℚ) * (A329115 (n + 1) : ℚ)

end

end A329114.P8374560162058413707

namespace A329114

/-- `A026532(n+1)/A026549(n)*A329115(n+1)` -/
def P8374560162058413707.Spec : Prop :=
  ∀ n, P8374560162058413707.a n = (A329114 (n + 1) : ℚ)

end A329114

/-! ## A329114.P6231897488333378698

`floor(∑[round(6^(n-1))]/A026549(n))`
-/

namespace A329114.P6231897488333378698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((6 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A026549 n : ℚ)⌋

end

end A329114.P6231897488333378698

namespace A329114

/-- `floor(∑[round(6^(n-1))]/A026549(n))` -/
def P6231897488333378698.Spec : Prop :=
  ∀ n, P6231897488333378698.a n = A329114 (n + 1)

end A329114

/-!
# A329115: a(n) = floor(A026549(n)/5).

The programs for A329115, the canonical program `A329115.P3151289939489292325` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329115 has offset 1).

The definition of A329115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329115.P147850528628005879

`7*a(n-2)-6*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A329115.P147850528628005879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 2] fun n a =>
  7 * a (n - 2) - 6 * a (n - 4)

end

end A329115.P147850528628005879

namespace A329115

/-- `7*a(n-2)-6*a(n-4)` -/
def P147850528628005879.Spec : Prop :=
  ∀ n, P147850528628005879.a n = A329115 (n + 1)

end A329115

/-! ## A329115.P3151289939489292325

`floor(A026549(n)/5)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A329115

/-- `floor(A026549(n)/5)` -/
def P3151289939489292325.Spec : Prop :=
  ∀ n, P3151289939489292325.a n = A329115 (n + 1)

theorem P3151289939489292325.correct : P3151289939489292325.Spec := by
  intro n
  simp only [A329115, Nat.add_sub_cancel]

end A329115

/-! ## A329115.P4199659850313812974

`gcd(2, n+1)+6*a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A329115.P4199659850313812974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.gcd 2 (n + 1) + 6 * a (n - 2)

end

end A329115.P4199659850313812974

namespace A329115

/-- `gcd(2, n+1)+6*a(n-2)` -/
def P4199659850313812974.Spec : Prop :=
  ∀ n, (P4199659850313812974.a n : ℤ) = A329115 (n + 1)

end A329115

/-! ## A329115.P1353585037579889132

`6*a(n-2)+n%2+1` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A329115.P1353585037579889132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  6 * a (n - 2) + (n % 2 + 1)

end

end A329115.P1353585037579889132

namespace A329115

/-- `6*a(n-2)+n%2+1` -/
def P1353585037579889132.Spec : Prop :=
  ∀ n, (P1353585037579889132.a n : ℤ) = A329115 (n + 1)

end A329115

/-! ## A329115.P15485047817305585404

`floor(∏[floor(a(n-2))]/10)` with `a(0)=2, a(1)=3, a(2)=2, a(3)=2, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A329115.P15485047817305585404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 2, 2, 3] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 10⌋

end

end A329115.P15485047817305585404

namespace A329115

/-- `floor(∏[floor(a(n-2))]/10)` -/
def P15485047817305585404.Spec : Prop :=
  ∀ n, P15485047817305585404.a n = A329115 (n + 1)

end A329115

/-! ## A329115.P3998752906479162671

`A329114(n+1)/A026532(n+1)*A026549(n)`
-/

namespace A329115.P3998752906479162671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329114 (n + 1) : ℚ) / (A026532 (n + 1) : ℚ) * (A026549 n : ℚ)

end

end A329115.P3998752906479162671

namespace A329115

/-- `A329114(n+1)/A026532(n+1)*A026549(n)` -/
def P3998752906479162671.Spec : Prop :=
  ∀ n, P3998752906479162671.a n = (A329115 (n + 1) : ℚ)

end A329115

/-! ## A329115.P12878857423740625266

`floor(∏[A020639(3*(n+1))]/15)`
-/

namespace A329115.P12878857423740625266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 15⌋

end

end A329115.P12878857423740625266

namespace A329115

/-- `floor(∏[A020639(3*(n+1))]/15)` -/
def P12878857423740625266.Spec : Prop :=
  ∀ n, P12878857423740625266.a n = A329115 (n + 1)

end A329115

/-!
# A329116: Successively count to (-1)^(n+1)*n (n = 0, 1, 2, ... ).

The programs for A329116, the canonical program `A329116.P11887441733358969952` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329116 has offset 0).

The definition of A329116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329116.P11887441733358969952

`A255175(abs(1-n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A329116

/-- `A255175(abs(1-n))` -/
def P11887441733358969952.Spec : Prop :=
  ∀ n, P11887441733358969952.a n = A329116 n

theorem P11887441733358969952.correct : P11887441733358969952.Spec := by
  intro n
  simp only [A329116]

end A329116

/-! ## A329116.P11178403100084096244

`A255175(n)-A339265(n)`
-/

namespace A329116.P11178403100084096244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255175 n - A339265 n

end

end A329116.P11178403100084096244

namespace A329116

/-- `A255175(n)-A339265(n)` -/
def P11178403100084096244.Spec : Prop :=
  ∀ n, P11178403100084096244.a n = A329116 n

end A329116

/-! ## A329116.P1139658843909228929

`A319290(n)-A319289(n)`
-/

namespace A329116.P1139658843909228929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319290 n - A319289 n

end

end A329116.P1139658843909228929

namespace A329116

/-- `A319290(n)-A319289(n)` -/
def P1139658843909228929.Spec : Prop :=
  ∀ n, P1139658843909228929.a n = A329116 n

end A329116

/-! ## A329116.P9422188411164021151

`A196199(n)*A339265(n)`
-/

namespace A329116.P9422188411164021151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 n * A339265 n

end

end A329116.P9422188411164021151

namespace A329116

/-- `A196199(n)*A339265(n)` -/
def P9422188411164021151.Spec : Prop :=
  ∀ n, P9422188411164021151.a n = A329116 n

end A329116

/-! ## A329116.P13734617480573543152

`∑[∑[A002448(n)]-A002448(n)]`
-/

namespace A329116.P13734617480573543152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A002448 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329116.P13734617480573543152

namespace A329116

/-- `∑[∑[A002448(n)]-A002448(n)]` -/
def P13734617480573543152.Spec : Prop :=
  ∀ n, P13734617480573543152.a n = A329116 n

end A329116

/-! ## A329116.P14319835411698445073

`A268038(n+1)+A174344(n+1)`
-/

namespace A329116.P14319835411698445073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268038 (n + 1) + A174344 (n + 1)

end

end A329116.P14319835411698445073

namespace A329116

/-- `A268038(n+1)+A174344(n+1)` -/
def P14319835411698445073.Spec : Prop :=
  ∀ n, P14319835411698445073.a n = A329116 n

end A329116

/-! ## A329116.P2891403910468618421

`A174344(n+1)-A274923(n+1)`
-/

namespace A329116.P2891403910468618421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) - A274923 (n + 1)

end

end A329116.P2891403910468618421

namespace A329116

/-- `A174344(n+1)-A274923(n+1)` -/
def P2891403910468618421.Spec : Prop :=
  ∀ n, P2891403910468618421.a n = A329116 n

end A329116

/-! ## A329116.P11505226140317212792

`A180714(n)+2*A268038(n+1)`
-/

namespace A329116.P11505226140317212792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180714 n + 2 * A268038 (n + 1)

end

end A329116.P11505226140317212792

namespace A329116

/-- `A180714(n)+2*A268038(n+1)` -/
def P11505226140317212792.Spec : Prop :=
  ∀ n, P11505226140317212792.a n = A329116 n

end A329116

/-! ## A329116.P3998579000031180595

`2*A174344(n+1)-A180714(n)`
-/

namespace A329116.P3998579000031180595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174344 (n + 1) - A180714 n

end

end A329116.P3998579000031180595

namespace A329116

/-- `2*A174344(n+1)-A180714(n)` -/
def P3998579000031180595.Spec : Prop :=
  ∀ n, P3998579000031180595.a n = A329116 n

end A329116

/-! ## A329116.P1069135973347646964

`A180714(n)-2*A274923(n+1)`
-/

namespace A329116.P1069135973347646964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180714 n - 2 * A274923 (n + 1)

end

end A329116.P1069135973347646964

namespace A329116

/-- `A180714(n)-2*A274923(n+1)` -/
def P1069135973347646964.Spec : Prop :=
  ∀ n, P1069135973347646964.a n = A329116 n

end A329116

/-! ## A329116.P1929400023021866156

`A296030(2*n+1)+A268038(n+1)`
-/

namespace A329116.P1929400023021866156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * n + 1) + A268038 (n + 1)

end

end A329116.P1929400023021866156

namespace A329116

/-- `A296030(2*n+1)+A268038(n+1)` -/
def P1929400023021866156.Spec : Prop :=
  ∀ n, P1929400023021866156.a n = A329116 n

end A329116

/-! ## A329116.P8694419860423789894

`A174344(n+1)-A296030(2*(n+1))`
-/

namespace A329116.P8694419860423789894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) - A296030 (2 * (n + 1))

end

end A329116.P8694419860423789894

namespace A329116

/-- `A174344(n+1)-A296030(2*(n+1))` -/
def P8694419860423789894.Spec : Prop :=
  ∀ n, P8694419860423789894.a n = A329116 n

end A329116

/-! ## A329116.P9775297184178953642

`A296030(2*n+1)-A274923(n+1)`
-/

namespace A329116.P9775297184178953642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * n + 1) - A274923 (n + 1)

end

end A329116.P9775297184178953642

namespace A329116

/-- `A296030(2*n+1)-A274923(n+1)` -/
def P9775297184178953642.Spec : Prop :=
  ∀ n, P9775297184178953642.a n = A329116 n

end A329116

/-! ## A329116.P16148372903638432207

`A296030(2*n+1)-A296030(2*(n+1))`
-/

namespace A329116.P16148372903638432207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * n + 1) - A296030 (2 * (n + 1))

end

end A329116.P16148372903638432207

namespace A329116

/-- `A296030(2*n+1)-A296030(2*(n+1))` -/
def P16148372903638432207.Spec : Prop :=
  ∀ n, P16148372903638432207.a n = A329116 n

end A329116

/-! ## A329116.P11412114326557403934

`A174344(n+1)-A174344(A020703(n+1))`
-/

namespace A329116.P11412114326557403934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) - A174344 (A020703 (n + 1)).toNat

end

end A329116.P11412114326557403934

namespace A329116

/-- `A174344(n+1)-A174344(A020703(n+1))` -/
def P11412114326557403934.Spec : Prop :=
  ∀ n, P11412114326557403934.a n = A329116 n

end A329116

/-! ## A329116.P14469965941797739604

`A174344(n+1)-A174344(A028391(n)+1)`
-/

namespace A329116.P14469965941797739604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) - A174344 (A028391 n + 1).toNat

end

end A329116.P14469965941797739604

namespace A329116

/-- `A174344(n+1)-A174344(A028391(n)+1)` -/
def P14469965941797739604.Spec : Prop :=
  ∀ n, P14469965941797739604.a n = A329116 n

end A329116

/-! ## A329116.P12875235498165456100

`A174344(n+1)-A174344(A056847(n)+1)`
-/

namespace A329116.P12875235498165456100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) - A174344 (A056847 n + 1).toNat

end

end A329116.P12875235498165456100

namespace A329116

/-- `A174344(n+1)-A174344(A056847(n)+1)` -/
def P12875235498165456100.Spec : Prop :=
  ∀ n, P12875235498165456100.a n = A329116 n

end A329116

/-! ## A329116.P15239260896440947791

`A274923(A020703(n+1))-A274923(n+1)`
-/

namespace A329116.P15239260896440947791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A020703 (n + 1)).toNat - A274923 (n + 1)

end

end A329116.P15239260896440947791

namespace A329116

/-- `A274923(A020703(n+1))-A274923(n+1)` -/
def P15239260896440947791.Spec : Prop :=
  ∀ n, P15239260896440947791.a n = A329116 n

end A329116

/-! ## A329116.P17724327562507656223

`A174344(n+1)-A305576(A308081(n+1))`
-/

namespace A329116.P17724327562507656223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) - A305576 (A308081 (n + 1)).toNat

end

end A329116.P17724327562507656223

namespace A329116

/-- `A174344(n+1)-A305576(A308081(n+1))` -/
def P17724327562507656223.Spec : Prop :=
  ∀ n, P17724327562507656223.a n = A329116 n

end A329116

/-! ## A329116.P8274908660731738208

`A305575(A308081(n+1))-A274923(n+1)`
-/

namespace A329116.P8274908660731738208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305575 (A308081 (n + 1)).toNat - A274923 (n + 1)

end

end A329116.P8274908660731738208

namespace A329116

/-- `A305575(A308081(n+1))-A274923(n+1)` -/
def P8274908660731738208.Spec : Prop :=
  ∀ n, P8274908660731738208.a n = A329116 n

end A329116

/-!
# A329118: Array read by antidiagonals: T(m, n) is the number of simple paths from corner to diagonally opposite corner on an m X n grid with king moves allowed.

The programs for A329118, there is no canonical definition to state claims against.
-/

/-! ## A329118.P1347832889268388954

`A140204(A176483(n))`
-/

namespace A329118.P1347832889268388954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140204 (A176483 n).toNat

end

end A329118.P1347832889268388954

/-! ## A329118.P16744055510138702838

`A289342(A157181(n))`
-/

namespace A329118.P16744055510138702838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289342 (A157181 n).toNat

end

end A329118.P16744055510138702838

/-! ## A329118.P5692348577937616677

`A116942(A013580(n)!)`
-/

namespace A329118.P5692348577937616677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116942 (Nat.factorial (A013580 n).toNat)

end

end A329118.P5692348577937616677

/-! ## A329118.P1138056954170888475

`A096974(A220688(n+1))`
-/

namespace A329118.P1138056954170888475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096974 (A220688 (n + 1)).toNat

end

end A329118.P1138056954170888475

/-! ## A329118.P14240636158192788486

`A334233(A203550(n+1))`
-/

namespace A329118.P14240636158192788486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334233 (A203550 (n + 1)).toNat

end

end A329118.P14240636158192788486

/-!
# A329119: Orders of the finite groups SL_2(K) when K is a finite field with q = A246655(n) elements.

The programs for A329119, the canonical program `A329119.P13011440153290457078` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329119 has offset 1).

The definition of A329119 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246655, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329119.P10415477651701999844

`A059238(n+1)/(A246655(n+1)-1)`
-/

namespace A329119.P10415477651701999844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059238 (n + 1) : ℚ) / (A246655 (n + 1) - 1 : ℚ)

end

end A329119.P10415477651701999844

namespace A329119

/-- `A059238(n+1)/(A246655(n+1)-1)` -/
def P10415477651701999844.Spec : Prop :=
  ∀ n, P10415477651701999844.a n = (A329119 (n + 1) : ℚ)

end A329119

/-! ## A329119.P13011440153290457078

`A007531(A246655(n+1)+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A329119

/-- `A007531(A246655(n+1)+1)` -/
def P13011440153290457078.Spec : Prop :=
  ∀ n, P13011440153290457078.a n = A329119 (n + 1)

theorem P13011440153290457078.correct : P13011440153290457078.Spec := by
  intro n
  simp only [A329119, Nat.add_sub_cancel]

end A329119

/-! ## A329119.P18416497282892869904

`sqrt(A003841(n+1))`
-/

namespace A329119.P18416497282892869904
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A003841 (n + 1) : ℝ)

end

end A329119.P18416497282892869904

namespace A329119

/-- `sqrt(A003841(n+1))` -/
def P18416497282892869904.Spec : Prop :=
  ∀ n, P18416497282892869904.a n = (A329119 (n + 1) : ℝ)

end A329119

/-! ## A329119.P434845376179979903

`A060615(n)*A246655(n+1)`
-/

namespace A329119.P434845376179979903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060615 n * A246655 (n + 1)

end

end A329119.P434845376179979903

namespace A329119

/-- `A060615(n)*A246655(n+1)` -/
def P434845376179979903.Spec : Prop :=
  ∀ n, P434845376179979903.a n = A329119 (n + 1)

end A329119

/-! ## A329119.P12218084736254185373

`∑[A275120(n+1)]*A060615(n)`
-/

namespace A329119.P12218084736254185373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A060615 n

end

end A329119.P12218084736254185373

namespace A329119

/-- `∑[A275120(n+1)]*A060615(n)` -/
def P12218084736254185373.Spec : Prop :=
  ∀ n, P12218084736254185373.a n = A329119 (n + 1)

end A329119

/-! ## A329119.P15626714893714205873

`A367014(n+1)-A246655(n+1)²`
-/

namespace A329119.P15626714893714205873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367014 (n + 1) - A246655 (n + 1) ^ 2

end

end A329119.P15626714893714205873

namespace A329119

/-- `A367014(n+1)-A246655(n+1)²` -/
def P15626714893714205873.Spec : Prop :=
  ∀ n, P15626714893714205873.a n = A329119 (n + 1)

end A329119

/-! ## A329119.P14457774733206077903

`A059238(n+1)/∑[A057820(n+1)]`
-/

namespace A329119.P14457774733206077903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059238 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A329119.P14457774733206077903

namespace A329119

/-- `A059238(n+1)/∑[A057820(n+1)]` -/
def P14457774733206077903.Spec : Prop :=
  ∀ n, P14457774733206077903.a n = (A329119 (n + 1) : ℚ)

end A329119

/-! ## A329119.P4069754138218270479

`A060615(n)+A060615(n)²-A059238(n+1)`
-/

namespace A329119.P4069754138218270479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060615 n + (A060615 n ^ 2 - A059238 (n + 1))

end

end A329119.P4069754138218270479

namespace A329119

/-- `A060615(n)+A060615(n)²-A059238(n+1)` -/
def P4069754138218270479.Spec : Prop :=
  ∀ n, P4069754138218270479.a n = A329119 (n + 1)

end A329119

/-! ## A329119.P15218349814925420851

`A060615(n)+A059238(n+1)/A246655(n+1)`
-/

namespace A329119.P15218349814925420851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060615 n : ℚ) + (A059238 (n + 1) : ℚ) / (A246655 (n + 1) : ℚ)

end

end A329119.P15218349814925420851

namespace A329119

/-- `A060615(n)+A059238(n+1)/A246655(n+1)` -/
def P15218349814925420851.Spec : Prop :=
  ∀ n, P15218349814925420851.a n = (A329119 (n + 1) : ℚ)

end A329119

/-! ## A329119.P15362425939309759075

`A003800(n+1)*A352807(n+1)/A373501(n+1)`
-/

namespace A329119.P15362425939309759075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003800 (n + 1) * A352807 (n + 1) : ℚ) / (A373501 (n + 1) : ℚ)

end

end A329119.P15362425939309759075

namespace A329119

/-- `A003800(n+1)*A352807(n+1)/A373501(n+1)` -/
def P15362425939309759075.Spec : Prop :=
  ∀ n, P15362425939309759075.a n = (A329119 (n + 1) : ℚ)

end A329119

/-! ## A329119.P1874690641434584257

`A000961(n+2)*A060615(n)`
-/

namespace A329119.P1874690641434584257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2) * A060615 n

end

end A329119.P1874690641434584257

namespace A329119

/-- `A000961(n+2)*A060615(n)` -/
def P1874690641434584257.Spec : Prop :=
  ∀ n, P1874690641434584257.a n = A329119 (n + 1)

end A329119

/-! ## A329119.P7990766055694218795

`A059238(n+1)/A181062(n+2)`
-/

namespace A329119.P7990766055694218795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059238 (n + 1) : ℚ) / (A181062 (n + 2) : ℚ)

end

end A329119.P7990766055694218795

namespace A329119

/-- `A059238(n+1)/A181062(n+2)` -/
def P7990766055694218795.Spec : Prop :=
  ∀ n, P7990766055694218795.a n = (A329119 (n + 1) : ℚ)

end A329119

/-! ## A329119.P17727343871127130546

`A352807(n+1)/A025474(n+2)`
-/

namespace A329119.P17727343871127130546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352807 (n + 1) : ℚ) / (A025474 (n + 2) : ℚ)

end

end A329119.P17727343871127130546

namespace A329119

/-- `A352807(n+1)/A025474(n+2)` -/
def P17727343871127130546.Spec : Prop :=
  ∀ n, P17727343871127130546.a n = (A329119 (n + 1) : ℚ)

end A329119

/-! ## A329119.P16611920208554419459

`(A056798(n+2)-1)*A000961(n+2)`
-/

namespace A329119.P16611920208554419459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056798 (n + 2) - 1) * A000961 (n + 2)

end

end A329119.P16611920208554419459

namespace A329119

/-- `(A056798(n+2)-1)*A000961(n+2)` -/
def P16611920208554419459.Spec : Prop :=
  ∀ n, P16611920208554419459.a n = A329119 (n + 1)

end A329119

/-! ## A329119.P5618690787364239757

`lcm(1-A056798(n+2), A246655(n+1))`
-/

namespace A329119.P5618690787364239757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A056798 (n + 2)) (A246655 (n + 1))

end

end A329119.P5618690787364239757

namespace A329119

/-- `lcm(1-A056798(n+2), A246655(n+1))` -/
def P5618690787364239757.Spec : Prop :=
  ∀ n, (P5618690787364239757.a n : ℤ) = A329119 (n + 1)

end A329119

/-! ## A329119.P7283646892159847176

`(A000961(n+2)²-1)*A246655(n+1)`
-/

namespace A329119.P7283646892159847176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000961 (n + 2) ^ 2 - 1) * A246655 (n + 1)

end

end A329119.P7283646892159847176

namespace A329119

/-- `(A000961(n+2)²-1)*A246655(n+1)` -/
def P7283646892159847176.Spec : Prop :=
  ∀ n, P7283646892159847176.a n = A329119 (n + 1)

end A329119

/-! ## A329119.P7399354546001691612

`A060615(n)+A059238(n+1)/A000961(n+2)`
-/

namespace A329119.P7399354546001691612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060615 n : ℚ) + (A059238 (n + 1) : ℚ) / (A000961 (n + 2) : ℚ)

end

end A329119.P7399354546001691612

namespace A329119

/-- `A060615(n)+A059238(n+1)/A000961(n+2)` -/
def P7399354546001691612.Spec : Prop :=
  ∀ n, P7399354546001691612.a n = (A329119 (n + 1) : ℚ)

end A329119

/-! ## A329119.P15961461394814829213

`record[A008475(n+2)^3-A008475(n+2)]`
-/

namespace A329119.P15961461394814829213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 2) ^ 3 - A008475 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329119.P15961461394814829213

namespace A329119

/-- `record[A008475(n+2)^3-A008475(n+2)]` -/
def P15961461394814829213.Spec : Prop :=
  ∀ n, P15961461394814829213.a n = A329119 (n + 1)

end A329119

/-! ## A329119.P14410368297474088426

`A007531(A000961(n+2)+1)`
-/

namespace A329119.P14410368297474088426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (A000961 (n + 2) + 1).toNat

end

end A329119.P14410368297474088426

namespace A329119

/-- `A007531(A000961(n+2)+1)` -/
def P14410368297474088426.Spec : Prop :=
  ∀ n, P14410368297474088426.a n = A329119 (n + 1)

end A329119

/-! ## A329119.P1175306235362701836

`A007531(record[A336564(n+1)+2])`
-/

namespace A329119.P1175306235362701836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336564 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A329119.P1175306235362701836

namespace A329119

/-- `A007531(record[A336564(n+1)+2])` -/
def P1175306235362701836.Spec : Prop :=
  ∀ n, P1175306235362701836.a n = A329119 (n + 1)

end A329119

/-!
# A329122: First column of A027448.

The programs for A329122, there is no canonical definition to state claims against.
-/

/-! ## A329122.P10295272252654329499

`A027448(∑[n]+1)`
-/

namespace A329122.P10295272252654329499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027448 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A329122.P10295272252654329499

/-! ## A329122.P3854269718873764951

`record[A027448(n+1)]`
-/

namespace A329122.P3854269718873764951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329122.P3854269718873764951

/-! ## A329122.P16365093125247405792

`or(1, A027448(A000124(n)))`
-/

namespace A329122.P16365093125247405792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A027448 (A000124 n).toNat)

end

end A329122.P16365093125247405792

/-! ## A329122.P6958634799732395841

`gcd(A000038(n), A027448(A000124(n)))`
-/

namespace A329122.P6958634799732395841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A027448 (A000124 n).toNat)

end

end A329122.P6958634799732395841

/-! ## A329122.P12251149797079847920

`lcm(A027448(A000124(n)), A027462(n+1))`
-/

namespace A329122.P12251149797079847920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027448 (A000124 n).toNat) (A027462 (n + 1))

end

end A329122.P12251149797079847920

/-!
# A329123: Row sums of A329060.

The programs for A329123, there is no canonical definition to state claims against.
-/

/-! ## A329123.P6624820920552205293

`∑[A161579(A233833(n)+1)]`
-/

namespace A329123.P6624820920552205293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161579 (A233833 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329123.P6624820920552205293

/-!
# A329127: Lexicographically earliest sequence of distinct positive integers such that the concatenation of the odd-indexed terms equals the concatenation of the even-indexed terms.

The programs for A329127, there is no canonical definition to state claims against.
-/

/-! ## A329127.P12399627424025557917

`A000194(A342076(n+1)²)`
-/

namespace A329127.P12399627424025557917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A342076 (n + 1) ^ 2).toNat

end

end A329127.P12399627424025557917

/-! ## A329127.P6582360464071370396

`A053615(A342076(n+1)²)`
-/

namespace A329127.P6582360464071370396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A342076 (n + 1) ^ 2).toNat

end

end A329127.P6582360464071370396

/-! ## A329127.P10924762546958130793

`A342076(A243835(n)+n+1)`
-/

namespace A329127.P10924762546958130793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342076 (A243835 n + (n + 1 : ℤ)).toNat

end

end A329127.P10924762546958130793

/-! ## A329127.P3052124547303190686

`A000196(A342076(n+1)²+1)`
-/

namespace A329127.P3052124547303190686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A342076 (n + 1) ^ 2 + 1).toNat

end

end A329127.P3052124547303190686

/-! ## A329127.P6454831376633533500

`A342076(n+1)%A091531(n+1)`
-/

namespace A329127.P6454831376633533500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342076 (n + 1)) (A091531 (n + 1))

end

end A329127.P6454831376633533500

/-! ## A329127.P2637918909768007235

`A342076(n+1)+and(2, A168469(n+1))`
-/

namespace A329127.P2637918909768007235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342076 (n + 1) + Int.land 2 (A168469 (n + 1))

end

end A329127.P2637918909768007235

/-! ## A329127.P6604571334310890535

`A001222(A090689(n+1))*A342076(n+1)`
-/

namespace A329127.P6604571334310890535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A090689 (n + 1)).toNat * A342076 (n + 1)

end

end A329127.P6604571334310890535

/-! ## A329127.P16494071712849914836

`A001222(A193507(n+1))*A342076(n+1)`
-/

namespace A329127.P16494071712849914836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A193507 (n + 1)).toNat * A342076 (n + 1)

end

end A329127.P16494071712849914836

/-! ## A329127.P3864081945568989257

`A342076(n+1)+A036987(A000040(n+1)²)`
-/

namespace A329127.P3864081945568989257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342076 (n + 1) + A036987 (A000040 (n + 1) ^ 2).toNat

end

end A329127.P3864081945568989257

/-!
# A329129: Squares visited by a knight moving on a board with squares numbered with the minimum number of steps for a knight to reach the square when starting from the origin. The knight moves to the smallest numbered unvisited square; the minimum distance from the origin is used if the square numbers are equal; the smallest spiral number ordering is used if the distances are equal.

The programs for A329129, there is no canonical definition to state claims against.
-/

/-! ## A329129.P112739420830851300

`A008611(A064289(n+1))%A222618(n+1)`
-/

namespace A329129.P112739420830851300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008611 (A064289 (n + 1)).toNat) (A222618 (n + 1))

end

end A329129.P112739420830851300

/-! ## A329129.P15715929858413551494

`A008611(A064289(n+1))+A000007(A006137(n))`
-/

namespace A329129.P15715929858413551494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A064289 (n + 1)).toNat + A000007 (A006137 n).toNat

end

end A329129.P15715929858413551494

/-! ## A329129.P3524690124118582992

`A000007(A080036(n))+A014963(A222618(n+1))*A008611(A064289(n+1))`
-/

namespace A329129.P3524690124118582992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A080036 n).toNat + A014963 (A222618 (n + 1)).toNat * A008611 (A064289 (n + 1)).toNat

end

end A329129.P3524690124118582992

/-! ## A329129.P8804917967389900717

`A257564(A321861(n+1)+A257564(2*(n+2)))`
-/

namespace A329129.P8804917967389900717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (A321861 (n + 1) + A257564 (2 * (n + 2))).toNat

end

end A329129.P8804917967389900717

/-! ## A329129.P17106564846525160872

`A338630(A345090(n+2))`
-/

namespace A329129.P17106564846525160872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338630 (A345090 (n + 2)).toNat

end

end A329129.P17106564846525160872

/-!
# A329131: Numbers whose prime signature is a Lyndon word.

The programs for A329131, there is no canonical definition to state claims against.
-/

/-! ## A329131.P12175036892975168848

`∩[A304678(n+1), A356862(n+1)]`
-/

namespace A329131.P12175036892975168848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329131.P12175036892975168848

/-! ## A329131.P6369696304890694759

`A334965(n+2)+C(2, A086531(n+1)²)`
-/

namespace A329131.P6369696304890694759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334965 (n + 2) + (Nat.choose 2 (A086531 (n + 1) ^ 2).toNat : ℤ)

end

end A329131.P6369696304890694759

/-! ## A329131.P7226892893620967771

`A334965(n+2)^A077728(∑[A010056(n)])`
-/

namespace A329131.P7226892893620967771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334965 (n + 2) : ℚ) ^ (A077728 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℤ)

end

end A329131.P7226892893620967771

/-! ## A329131.P13489215991452535027

`A045778(A133276(n+1))*A334965(n+2)`
-/

namespace A329131.P13489215991452535027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A133276 (n + 1)).toNat * A334965 (n + 2)

end

end A329131.P13489215991452535027

/-! ## A329131.P15780135002791996117

`A334965(n+2)/A285337(A054217(n+1))`
-/

namespace A329131.P15780135002791996117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334965 (n + 2) : ℚ) / (A285337 (A054217 (n + 1)).toNat : ℚ)

end

end A329131.P15780135002791996117

/-! ## A329131.P9788930116894513671

`A334965(n+2)/A088705(A269702(n))`
-/

namespace A329131.P9788930116894513671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334965 (n + 2) : ℚ) / (A088705 (A269702 n).toNat : ℚ)

end

end A329131.P9788930116894513671

/-!
# A329132: Numbers whose augmented differences of prime indices are a periodic sequence.

The programs for A329132, there is no canonical definition to state claims against.
-/

/-! ## A329132.P15015799027426015004

`record[A025480(A329134(n+1))]`
-/

namespace A329132.P15015799027426015004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A329134 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329132.P15015799027426015004

/-! ## A329132.P12252669696360925439

`record[A057979(A329134(n+1)+1)]`
-/

namespace A329132.P12252669696360925439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A329134 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329132.P12252669696360925439

/-! ## A329132.P14266571275033576317

`record[A249122(A329134(n+1)+1)]`
-/

namespace A329132.P14266571275033576317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A329134 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329132.P14266571275033576317

/-! ## A329132.P8631631244205640999

`A004525(record[A153733(A329134(n+1))])`
-/

namespace A329132.P8631631244205640999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (A329134 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A329132.P8631631244205640999

/-! ## A329132.P16281942443292857252

`record[A153733(A329134(n+1))]/A000040(((-1)^n)²)`
-/

namespace A329132.P16281942443292857252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (A329134 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A000040 (((-1) ^ n) ^ 2).toNat : ℚ)

end

end A329132.P16281942443292857252

/-!
# A329133: Numbers whose augmented differences of prime indices are an aperiodic sequence.

The programs for A329133, there is no canonical definition to state claims against.
-/

/-! ## A329133.P17204510278921040634

`comp[A329132(n+1)-1]+1`
-/

namespace A329133.P17204510278921040634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329132 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A329133.P17204510278921040634

/-! ## A329133.P17119917637392994833

`comp[A361969(A240671(n))]+1`
-/

namespace A329133.P17119917637392994833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361969 (A240671 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A329133.P17119917637392994833

/-! ## A329133.P157589860059325723

`comp[A361969(∑[A073202(n)])]+1`
-/

namespace A329133.P157589860059325723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073202 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361969 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A329133.P157589860059325723

/-! ## A329133.P770368146368894922

`comp[A361969(A177687(n+1))]+1`
-/

namespace A329133.P770368146368894922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361969 (A177687 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A329133.P770368146368894922

/-! ## A329133.P12149503157179161675

`comp[A361969(A351007(n)+1)]+1`
-/

namespace A329133.P12149503157179161675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361969 (A351007 n + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A329133.P12149503157179161675

/-! ## A329133.P17264731664244839177

`comp[A108358(n)*A329132(n+1)]`
-/

namespace A329133.P17264731664244839177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108358 n * A329132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329133.P17264731664244839177

/-! ## A329133.P13495620157139511346

`eq[char[A329132(n+1)], A000007(n)]`
-/

namespace A329133.P13495620157139511346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329132 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A329133.P13495620157139511346

/-! ## A329133.P7506931964165798925

`∪[A212166(n+1), A241913(n+1)]`
-/

namespace A329133.P7506931964165798925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329133.P7506931964165798925

/-! ## A329133.P10460528642767831707

`∪[A241913(n+1), A316793(n+1)]`
-/

namespace A329133.P10460528642767831707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329133.P10460528642767831707

/-! ## A329133.P1452556054910476950

`∪[A241913(n+1), A325337(n+1)]`
-/

namespace A329133.P1452556054910476950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329133.P1452556054910476950

/-!
# A329134: Numbers whose differences of prime indices are a periodic word.

The programs for A329134, there is no canonical definition to state claims against.
-/

/-! ## A329134.P15387872281477982897

`∩[A325261(n+1), A327473(n+1)]`
-/

namespace A329134.P15387872281477982897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329134.P15387872281477982897

/-! ## A329134.P2509146890615601210

`∩[A327473(n+1), A333195(n+1)]`
-/

namespace A329134.P2509146890615601210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329134.P2509146890615601210

/-! ## A329134.P10906581347374988488

`∩[A333195(n+1), A388427(n+1)]`
-/

namespace A329134.P10906581347374988488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329134.P10906581347374988488

/-! ## A329134.P1131655242916548546

`∩[A388427(n+1), A389599(n+1)]`
-/

namespace A329134.P1131655242916548546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329134.P1131655242916548546

/-!
# A329135: Numbers whose differences of prime indices are an aperiodic word.

The programs for A329135, there is no canonical definition to state claims against.
-/

/-! ## A329135.P16277482373122418204

`comp[A329134(n+1)-1]+1`
-/

namespace A329135.P16277482373122418204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329134 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A329135.P16277482373122418204

/-! ## A329135.P10885658078495174210

`comp[A202022(n)*A329134(n+1)]`
-/

namespace A329135.P10885658078495174210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202022 n * A329134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329135.P10885658078495174210

/-! ## A329135.P15607638561299772124

`∪[A019470(n+1), A136416(n+1)]`
-/

namespace A329135.P15607638561299772124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329135.P15607638561299772124

/-! ## A329135.P10606265474013914728

`∪[A000430(n+1), A327476(n+1)]`
-/

namespace A329135.P10606265474013914728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329135.P10606265474013914728

/-! ## A329135.P11033003048277066330

`∪[A037143(n+1), A327476(n+1)]`
-/

namespace A329135.P11033003048277066330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329135.P11033003048277066330

/-! ## A329135.P10254003422671999198

`∪[A083347(n+1), A304634(n+1)]`
-/

namespace A329135.P10254003422671999198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329135.P10254003422671999198

/-! ## A329135.P16620021603995743632

`∪[A087245(n+1), A325368(n+1)]`
-/

namespace A329135.P16620021603995743632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329135.P16620021603995743632

/-! ## A329135.P9827891345862636041

`comp[A197623(n+5)-A000122(2*n)]`
-/

namespace A329135.P9827891345862636041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197623 (n + 5) - A000122 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329135.P9827891345862636041

/-! ## A329135.P10494301904790213055

`comp[lcm(A011583(n+2), A329134(n+1))]`
-/

namespace A329135.P10494301904790213055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011583 (n + 2)) (A329134 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A329135.P10494301904790213055

/-! ## A329135.P3220659003472922254

`comp[A329134(n+1)*A344652(2*n+3)]`
-/

namespace A329135.P3220659003472922254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329134 (n + 1) * A344652 (2 * n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329135.P3220659003472922254

/-!
# A329136: Number of integer partitions of n whose augmented differences are an aperiodic word.

The programs for A329136, there is no canonical definition to state claims against.
-/

/-! ## A329136.P7161263601197296588

`A000041(n)-A329143(n)`
-/

namespace A329136.P7161263601197296588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A329143 n

end

end A329136.P7161263601197296588

/-! ## A329136.P14346856455171547073

`A213598(n)-A329143(n)`
-/

namespace A329136.P14346856455171547073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A329143 n

end

end A329136.P14346856455171547073

/-! ## A329136.P1515566461393421344

`sqrt(A001255(n))-A329143(n)`
-/

namespace A329136.P1515566461393421344
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A329143 n : ℝ)

end

end A329136.P1515566461393421344

/-! ## A329136.P3187513596038787223

`∑[A002865(n)]-A329143(n)`
-/

namespace A329136.P3187513596038787223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A329143 n

end

end A329136.P3187513596038787223

/-! ## A329136.P1226907938680970125

`A000065(n)+1-A329143(n)`
-/

namespace A329136.P1226907938680970125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A329143 n)

end

end A329136.P1226907938680970125

/-!
# A329137: Number of integer partitions of n whose differences are an aperiodic word.

The programs for A329137, there is no canonical definition to state claims against.
-/

/-! ## A329137.P6093374543547522783

`A000041(n)-A329144(round(acot(n)+n))`
-/

namespace A329137.P6093374543547522783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A329144 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A329137.P6093374543547522783

/-! ## A329137.P5317912181655699159

`A000041(n)-A329144(A028310(n))`
-/

namespace A329137.P5317912181655699159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A329144 (A028310 n).toNat

end

end A329137.P5317912181655699159

/-! ## A329137.P15563052926522237227

`A213598(n)-A329144(A028310(n))`
-/

namespace A329137.P15563052926522237227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A329144 (A028310 n).toNat

end

end A329137.P15563052926522237227

/-! ## A329137.P15296897430700726939

`sqrt(A001255(n))-A329144(A028310(n))`
-/

namespace A329137.P15296897430700726939
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A329144 (A028310 n).toNat : ℝ)

end

end A329137.P15296897430700726939

/-! ## A329137.P7986790814862557750

`∑[A002865(n)]-A329144(A028310(n))`
-/

namespace A329137.P7986790814862557750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A329144 (A028310 n).toNat

end

end A329137.P7986790814862557750

/-!
# A329138: Numbers whose prime signature is a necklace.

The programs for A329138, there is no canonical definition to state claims against.
-/

/-! ## A329138.P16135630324714119841

`A304678(n+2)`
-/

namespace A329138.P16135630324714119841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (n + 2)

end

end A329138.P16135630324714119841

/-! ## A329138.P2746071593035386129

`A316529(n+2)`
-/

namespace A329138.P2746071593035386129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316529 (n + 2)

end

end A329138.P2746071593035386129

/-! ## A329138.P9228689335526345744

`eq[1, char[A085079(n+2)]]`
-/

namespace A329138.P9228689335526345744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329138.P9228689335526345744

/-! ## A329138.P18049918448764409303

`eq[n, A085079(round(acot(n)+n))]`
-/

namespace A329138.P18049918448764409303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329138.P18049918448764409303

/-! ## A329138.P7160366147792949097

`comp[A329142(n+1)-1]+1`
-/

namespace A329138.P7160366147792949097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329142 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A329138.P7160366147792949097

/-! ## A329138.P10158551078521663428

`comp[A316597(n+1)-2]+2`
-/

namespace A329138.P10158551078521663428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316597 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A329138.P10158551078521663428

/-! ## A329138.P13891622958047877759

`lt[1, n*char[A085079(n+1)]]`
-/

namespace A329138.P13891622958047877759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f3 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A329138.P13891622958047877759

/-! ## A329138.P7540965983861336809

`eq[n, A085079(A233583(n+1))]`
-/

namespace A329138.P7540965983861336809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329138.P7540965983861336809

/-! ## A329138.P10483207581694233169

`∪[A065200(n+2), A006124(n)]`
-/

namespace A329138.P10483207581694233169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065200 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006124 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329138.P10483207581694233169

/-!
# A329140: Numbers whose prime signature is a periodic word.

The programs for A329140, there is no canonical definition to state claims against.
-/

/-! ## A329140.P17289846974861722548

`lt[2, ∏{e}[n, tan(#)]]`
-/

namespace A329140.P17289846974861722548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Real.tan (Nat.factorization (f3 n) p : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A329140.P17289846974861722548

/-! ## A329140.P17648762357608758101

`A182853(comp[82*n])`
-/

namespace A329140.P17648762357608758101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  82 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182853 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A329140.P17648762357608758101

/-! ## A329140.P5560447958681155335

`A182853(n+1)%155`
-/

namespace A329140.P5560447958681155335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182853 (n + 1)) 155

end

end A329140.P5560447958681155335

/-! ## A329140.P3871479664288910233

`A362605(n+1)%247`
-/

namespace A329140.P3871479664288910233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362605 (n + 1)) 247

end

end A329140.P3871479664288910233

/-! ## A329140.P9781478446516611187

`lt[A136567(n+2), 1]+2`
-/

namespace A329140.P9781478446516611187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136567 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A329140.P9781478446516611187

/-! ## A329140.P8227844510552997960

`A270436(A362605(n+1))`
-/

namespace A329140.P8227844510552997960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270436 (A362605 (n + 1)).toNat

end

end A329140.P8227844510552997960

/-! ## A329140.P12706382016386674029

`A362605(A262065(n+1)+1)`
-/

namespace A329140.P12706382016386674029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362605 (A262065 (n + 1) + 1).toNat

end

end A329140.P12706382016386674029

/-! ## A329140.P1102827428966038291

`A362605(n+1)+A243836(n)`
-/

namespace A329140.P1102827428966038291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362605 (n + 1) + A243836 n

end

end A329140.P1102827428966038291

/-! ## A329140.P1520125717872358652

`A182853(n+1)*A361338(n)`
-/

namespace A329140.P1520125717872358652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182853 (n + 1) * A361338 n

end

end A329140.P1520125717872358652

/-! ## A329140.P15471289301754506569

`filter[A182853(n+1), A105597(#)]`
-/

namespace A329140.P15471289301754506569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105597 (f1 j).toNat = 1) n)

end

end A329140.P15471289301754506569

/-!
# A329141: Number of Lyndon compositions of n that are not weakly increasing.

The programs for A329141, there is no canonical definition to state claims against.
-/

/-! ## A329141.P81059964663534654

`A059966(n+1)-A167934(n+1)`
-/

namespace A329141.P81059964663534654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1) - A167934 (n + 1)

end

end A329141.P81059964663534654

/-! ## A329141.P17305006930498537649

`A032741(n+1)+A059966(n+1)-A000041(n+1)`
-/

namespace A329141.P17305006930498537649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + (A059966 (n + 1) - A000041 (n + 1))

end

end A329141.P17305006930498537649

/-! ## A329141.P4427313992242256419

`A001037(n+1)/(A254667(n+1)-n)-A167934(n+1)`
-/

namespace A329141.P4427313992242256419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001037 (n + 1) : ℚ) / (A254667 (n + 1) - (n : ℤ) : ℚ) - (A167934 (n + 1) : ℚ)

end

end A329141.P4427313992242256419

/-! ## A329141.P4390539980881156136

`A001037(n+1)-val(A000040(2*n+1), 2)-A167934(n+1)`
-/

namespace A329141.P4390539980881156136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) - (SequenceMachineLib.valuation (A000040 (2 * n + 1)).toNat 2 : ℤ) - A167934 (n + 1)

end

end A329141.P4390539980881156136

/-! ## A329141.P4755025200342753231

`A303431(A336009(n))-1`
-/

namespace A329141.P4755025200342753231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303431 (A336009 n).toNat - 1

end

end A329141.P4755025200342753231

/-!
# A329142: Numbers whose prime signature is not a necklace.

The programs for A329142, there is no canonical definition to state claims against.
-/

/-! ## A329142.P6774987182074809936

`A112769(n*a(floor(acot(n))))` with `a(0)=1`
-/

namespace A329142.P6774987182074809936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A112769 ((n : ℤ) * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat).toNat

end

end A329142.P6774987182074809936

/-! ## A329142.P4549509689524641626

`comp[A085079(n+2)-1]+1`
-/

namespace A329142.P4549509689524641626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A329142.P4549509689524641626

/-! ## A329142.P12584246356957439922

`comp[A085079(n+1)]+floor(acot(n))`
-/

namespace A329142.P12584246356957439922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A329142.P12584246356957439922

/-! ## A329142.P17491670311012177393

`comp[A304678(n+1)]+floor(acot(n))`
-/

namespace A329142.P17491670311012177393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A329142.P17491670311012177393

/-! ## A329142.P7480886185226571965

`A112769(n%(2*a(n-1)))` with `a(0)=1`
-/

namespace A329142.P7480886185226571965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A112769 (Int.tmod (n : ℤ) (2 * a (n - 1))).toNat

end

end A329142.P7480886185226571965

/-! ## A329142.P10186929457878009294

`A112769((n-1)%a(n-1)+1)` with `a(0)=1`
-/

namespace A329142.P10186929457878009294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A112769 (Int.tmod ((n : ℤ) - 1) (a (n - 1)) + 1).toNat

end

end A329142.P10186929457878009294

/-! ## A329142.P9169770144024300406

`A112769(floor(C(n, a(n-1))/2+n))` with `a(0)=1`
-/

namespace A329142.P9169770144024300406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A112769 ⌊(Nat.choose n (a (n - 1)).toNat : ℚ) / 2 + (n : ℚ)⌋.toNat

end

end A329142.P9169770144024300406

/-! ## A329142.P17497956892555199795

`A028310(comp[A085079(n+1)])`
-/

namespace A329142.P17497956892555199795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A329142.P17497956892555199795

/-! ## A329142.P2166095516516258360

`A028310(comp[A304678(n+1)])`
-/

namespace A329142.P2166095516516258360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A329142.P2166095516516258360

/-! ## A329142.P12920041694876333825

`∪[A112769(n+1), A001386(n)]`
-/

namespace A329142.P12920041694876333825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001386 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329142.P12920041694876333825

/-!
# A329143: Number of integer partitions of n whose augmented differences are a periodic word.

The programs for A329143, there is no canonical definition to state claims against.
-/

/-! ## A329143.P6936306486892178186

`A000041(n)-A329136(n)`
-/

namespace A329143.P6936306486892178186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A329136 n

end

end A329143.P6936306486892178186

/-! ## A329143.P174032783022404562

`A213598(n)-A329136(n)`
-/

namespace A329143.P174032783022404562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A329136 n

end

end A329143.P174032783022404562

/-! ## A329143.P6720757071640964196

`sqrt(A001255(n))-A329136(n)`
-/

namespace A329143.P6720757071640964196
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A329136 n : ℝ)

end

end A329143.P6720757071640964196

/-! ## A329143.P17727932253079027653

`∑[A002865(n)]-A329136(n)`
-/

namespace A329143.P17727932253079027653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A329136 n

end

end A329143.P17727932253079027653

/-! ## A329143.P6355277372122001658

`A079025(∑[n])-A329136(n)`
-/

namespace A329143.P6355277372122001658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 (∑ j ∈ Finset.range (n + 1), f1 j) - A329136 n

end

end A329143.P6355277372122001658

/-!
# A329144: Number of integer partitions of n whose differences are a periodic word.

The programs for A329144, there is no canonical definition to state claims against.
-/

/-! ## A329144.P9486978054805309088

`Δ[A000070(n)]-A329137(n+1)`
-/

namespace A329144.P9486978054805309088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A329137 (n + 1)

end

end A329144.P9486978054805309088

/-! ## A329144.P16719262146289613875

`record[A035363(n)]-A329137(n+1)`
-/

namespace A329144.P16719262146289613875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A329137 (n + 1)

end

end A329144.P16719262146289613875

/-! ## A329144.P11429618545995772658

`record[A035444(n)]-A329137(n+1)`
-/

namespace A329144.P11429618545995772658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A329137 (n + 1)

end

end A329144.P11429618545995772658

/-! ## A329144.P6053211062229927444

`A000041(n+1)-A329137(n+1)`
-/

namespace A329144.P6053211062229927444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A329137 (n + 1)

end

end A329144.P6053211062229927444

/-! ## A329144.P4365000135442538998

`A213598(n+1)-A329137(n+1)`
-/

namespace A329144.P4365000135442538998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 (n + 1) - A329137 (n + 1)

end

end A329144.P4365000135442538998

/-!
# A329145: Number of non-necklace compositions of n.

The programs for A329145, the canonical program `A329145.P597576007734421068` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329145 has offset 1).

The definition of A329145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329145.P597576007734421068

`2^n-A008965(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A329145

/-- `2^n-A008965(n+1)` -/
def P597576007734421068.Spec : Prop :=
  ∀ n, P597576007734421068.a n = A329145 (n + 1)

theorem P597576007734421068.correct : P597576007734421068.Spec := by
  intro n
  simp only [A329145, Nat.add_sub_cancel]

end A329145

/-! ## A329145.P3708682617884776963

`2^n-∑[abs(Δ[A000031(n)])]`
-/

namespace A329145.P3708682617884776963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329145.P3708682617884776963

namespace A329145

/-- `2^n-∑[abs(Δ[A000031(n)])]` -/
def P3708682617884776963.Spec : Prop :=
  ∀ n, P3708682617884776963.a n = A329145 (n + 1)

end A329145

/-! ## A329145.P8723518911725808398

`2^n-(A000031(n+1)-1)`
-/

namespace A329145.P8723518911725808398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (A000031 (n + 1) - 1)

end

end A329145.P8723518911725808398

namespace A329145

/-- `2^n-(A000031(n+1)-1)` -/
def P8723518911725808398.Spec : Prop :=
  ∀ n, P8723518911725808398.a n = A329145 (n + 1)

end A329145

/-! ## A329145.P12695486009969476048

`A000051(n)-A000031(n+1)`
-/

namespace A329145.P12695486009969476048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A000031 (n + 1)

end

end A329145.P12695486009969476048

namespace A329145

/-- `A000051(n)-A000031(n+1)` -/
def P12695486009969476048.Spec : Prop :=
  ∀ n, P12695486009969476048.a n = A329145 (n + 1)

end A329145

/-! ## A329145.P2136383288497593266

`A000225(n)-A052823(n+1)`
-/

namespace A329145.P2136383288497593266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A052823 (n + 1)

end

end A329145.P2136383288497593266

namespace A329145

/-- `A000225(n)-A052823(n+1)` -/
def P2136383288497593266.Spec : Prop :=
  ∀ n, P2136383288497593266.a n = A329145 (n + 1)

end A329145

/-! ## A329145.P7134649104258917440

`A141023(n)-A093367(n+1)`
-/

namespace A329145.P7134649104258917440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141023 n - A093367 (n + 1)

end

end A329145.P7134649104258917440

namespace A329145

/-- `A141023(n)-A093367(n+1)` -/
def P7134649104258917440.Spec : Prop :=
  ∀ n, P7134649104258917440.a n = A329145 (n + 1)

end A329145

/-! ## A329145.P2237455004677558732

`abs(A008965(n+1)-A000079(n))`
-/

namespace A329145.P2237455004677558732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008965 (n + 1) - A000079 n|

end

end A329145.P2237455004677558732

namespace A329145

/-- `abs(A008965(n+1)-A000079(n))` -/
def P2237455004677558732.Spec : Prop :=
  ∀ n, P2237455004677558732.a n = A329145 (n + 1)

end A329145

/-! ## A329145.P15077491267875075297

`A000079(n)+1-A000031(n+1)`
-/

namespace A329145.P15077491267875075297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + 1 - A000031 (n + 1)

end

end A329145.P15077491267875075297

namespace A329145

/-- `A000079(n)+1-A000031(n+1)` -/
def P15077491267875075297.Spec : Prop :=
  ∀ n, P15077491267875075297.a n = A329145 (n + 1)

end A329145

/-! ## A329145.P10138377232477930446

`A000051(n)-(A008965(n+1)+1)`
-/

namespace A329145.P10138377232477930446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A008965 (n + 1) + 1)

end

end A329145.P10138377232477930446

namespace A329145

/-- `A000051(n)-(A008965(n+1)+1)` -/
def P10138377232477930446.Spec : Prop :=
  ∀ n, P10138377232477930446.a n = A329145 (n + 1)

end A329145

/-! ## A329145.P11850540479317702072

`A000225(n)+1-A008965(n+1)`
-/

namespace A329145.P11850540479317702072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A008965 (n + 1))

end

end A329145.P11850540479317702072

namespace A329145

/-- `A000225(n)+1-A008965(n+1)` -/
def P11850540479317702072.Spec : Prop :=
  ∀ n, P11850540479317702072.a n = A329145 (n + 1)

end A329145

/-! ## A329145.P8676091729630835932

`A011782(n+1)+1-A000031(n+1)`
-/

namespace A329145.P8676091729630835932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + (1 - A000031 (n + 1))

end

end A329145.P8676091729630835932

namespace A329145

/-- `A011782(n+1)+1-A000031(n+1)` -/
def P8676091729630835932.Spec : Prop :=
  ∀ n, P8676091729630835932.a n = A329145 (n + 1)

end A329145

/-! ## A329145.P6203256301041737872

`A131577(n+1)+1-A000031(n+1)`
-/

namespace A329145.P6203256301041737872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) + (1 - A000031 (n + 1))

end

end A329145.P6203256301041737872

namespace A329145

/-- `A131577(n+1)+1-A000031(n+1)` -/
def P6203256301041737872.Spec : Prop :=
  ∀ n, P6203256301041737872.a n = A329145 (n + 1)

end A329145

/-! ## A329145.P12757903373263849214

`A016116(2*n)+1-A000031(n+1)`
-/

namespace A329145.P12757903373263849214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) + (1 - A000031 (n + 1))

end

end A329145.P12757903373263849214

namespace A329145

/-- `A016116(2*n)+1-A000031(n+1)` -/
def P12757903373263849214.Spec : Prop :=
  ∀ n, P12757903373263849214.a n = A329145 (n + 1)

end A329145

/-! ## A329145.P6583874087303699610

`A045674(2*n+1)+1-A000031(n+1)`
-/

namespace A329145.P6583874087303699610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045674 (2 * n + 1) + (1 - A000031 (n + 1))

end

end A329145.P6583874087303699610

namespace A329145

/-- `A045674(2*n+1)+1-A000031(n+1)` -/
def P6583874087303699610.Spec : Prop :=
  ∀ n, P6583874087303699610.a n = A329145 (n + 1)

end A329145

/-! ## A329145.P1600035692400847616

`A256217(2*n+1)+1-A000031(n+1)`
-/

namespace A329145.P1600035692400847616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256217 (2 * n + 1) + (1 - A000031 (n + 1))

end

end A329145.P1600035692400847616

namespace A329145

/-- `A256217(2*n+1)+1-A000031(n+1)` -/
def P1600035692400847616.Spec : Prop :=
  ∀ n, P1600035692400847616.a n = A329145 (n + 1)

end A329145

/-! ## A329145.P14740301108193655065

`A000031(n)+A209970(n)-A008965(n+1)`
-/

namespace A329145.P14740301108193655065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n + (A209970 n - A008965 (n + 1))

end

end A329145.P14740301108193655065

namespace A329145

/-- `A000031(n)+A209970(n)-A008965(n+1)` -/
def P14740301108193655065.Spec : Prop :=
  ∀ n, P14740301108193655065.a n = A329145 (n + 1)

end A329145

/-! ## A329145.P10800622434659870861

`A006951(n)+A264687(n)-A008965(n+1)`
-/

namespace A329145.P10800622434659870861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006951 n + (A264687 n - A008965 (n + 1))

end

end A329145.P10800622434659870861

namespace A329145

/-- `A006951(n)+A264687(n)-A008965(n+1)` -/
def P10800622434659870861.Spec : Prop :=
  ∀ n, P10800622434659870861.a n = A329145 (n + 1)

end A329145

/-! ## A329145.P3570845508031084581

`A133670(n)+A327471(n)-A000031(n+1)`
-/

namespace A329145.P3570845508031084581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133670 n + (A327471 n - A000031 (n + 1))

end

end A329145.P3570845508031084581

namespace A329145

/-- `A133670(n)+A327471(n)-A000031(n+1)` -/
def P3570845508031084581.Spec : Prop :=
  ∀ n, P3570845508031084581.a n = A329145 (n + 1)

end A329145

/-! ## A329145.P15022566090056043241

`A001045(n+1)+A001045(n)-A008965(n+1)`
-/

namespace A329145.P15022566090056043241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A001045 n - A008965 (n + 1))

end

end A329145.P15022566090056043241

namespace A329145

/-- `A001045(n+1)+A001045(n)-A008965(n+1)` -/
def P15022566090056043241.Spec : Prop :=
  ∀ n, P15022566090056043241.a n = A329145 (n + 1)

end A329145

/-! ## A329145.P9470233056663409989

`A000740(n+1)+A178472(n+1)-A008965(n+1)`
-/

namespace A329145.P9470233056663409989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1) + (A178472 (n + 1) - A008965 (n + 1))

end

end A329145.P9470233056663409989

namespace A329145

/-- `A000740(n+1)+A178472(n+1)-A008965(n+1)` -/
def P9470233056663409989.Spec : Prop :=
  ∀ n, P9470233056663409989.a n = A329145 (n + 1)

end A329145

/-!
# A329146: Triangle read by rows: T(n,k) is the number of subsets of {1,...,n} such that the difference between any two elements is k or greater, 1 <= k <= n.

The programs for A329146, there is no canonical definition to state claims against.
-/

/-! ## A329146.P9801829868452287703

`A048516(n+2)+A003057(n+2)`
-/

namespace A329146.P9801829868452287703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048516 (n + 2) + A003057 (n + 2)

end

end A329146.P9801829868452287703

/-! ## A329146.P2977322121146556013

`A048516(n+2)+A003056(n)+2`
-/

namespace A329146.P2977322121146556013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048516 (n + 2) + (A003056 n + 2)

end

end A329146.P2977322121146556013

/-! ## A329146.P10054895705573115018

`A048516(n+2)+A002024(n+1)+1`
-/

namespace A329146.P10054895705573115018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048516 (n + 2) + (A002024 (n + 1) + 1)

end

end A329146.P10054895705573115018

/-! ## A329146.P9301845268788695067

`A048516(n+2)+A014132(n+1)-n`
-/

namespace A329146.P9301845268788695067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048516 (n + 2) + (A014132 (n + 1) - (n : ℤ))

end

end A329146.P9301845268788695067

/-! ## A329146.P15513329970362865490

`A097285(2*(n+1))+A048516(n+2)`
-/

namespace A329146.P15513329970362865490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * (n + 1)) + A048516 (n + 2)

end

end A329146.P15513329970362865490

/-! ## A329146.P18405054477416434389

`A376921(A099627(n))`
-/

namespace A329146.P18405054477416434389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376921 (A099627 n).toNat

end

end A329146.P18405054477416434389

/-! ## A329146.P10110688933823135438

`A048516(n+2)+A000005(A140513(n))`
-/

namespace A329146.P10110688933823135438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048516 (n + 2) + A000005 (A140513 n).toNat

end

end A329146.P10110688933823135438

/-!
# A329147: Replace in n each nonzero digit d with prime(d).

The programs for A329147, there is no canonical definition to state claims against.
-/

/-! ## A329147.P17031461359588405809

`A048380(n)-A014029(n²)`
-/

namespace A329147.P17031461359588405809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048380 n - A014029 (n ^ 2)

end

end A329147.P17031461359588405809

/-! ## A329147.P5150478275708306780

`A048380(n)-A055641(A056142(n))`
-/

namespace A329147.P5150478275708306780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048380 n - A055641 (A056142 n).toNat

end

end A329147.P5150478275708306780

/-! ## A329147.P10057813969209879379

`A048380(n)-A055641(A056143(n))`
-/

namespace A329147.P10057813969209879379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048380 n - A055641 (A056143 n).toNat

end

end A329147.P10057813969209879379

/-! ## A329147.P8638690031155448667

`A048380(n)-A055641(A181352(n))`
-/

namespace A329147.P8638690031155448667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048380 n - A055641 (A181352 n).toNat

end

end A329147.P8638690031155448667

/-! ## A329147.P17846415960713107999

`A048380(n)-A217096(A087019(n))`
-/

namespace A329147.P17846415960713107999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048380 n - A217096 (A087019 n).toNat

end

end A329147.P17846415960713107999

/-! ## A329147.P1147365435898383361

`xor(A014029(A118759(n)²), A048380(n))`
-/

namespace A329147.P1147365435898383361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014029 (A118759 n ^ 2).toNat) (A048380 n)

end

end A329147.P1147365435898383361

/-! ## A329147.P3539331524735973490

`A048380(n)-A055641(n)^A028326(n)`
-/

namespace A329147.P3539331524735973490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048380 n : ℚ) - (A055641 n : ℚ) ^ (A028326 n : ℤ)

end

end A329147.P3539331524735973490

/-! ## A329147.P2313903665583887254

`A048380(n)-A055641(n)^A011540(n+1)`
-/

namespace A329147.P2313903665583887254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048380 n : ℚ) - (A055641 n : ℚ) ^ (A011540 (n + 1) : ℤ)

end

end A329147.P2313903665583887254

/-! ## A329147.P16489404304006929818

`A048380(n)-A055641(n)^A049102(n+1)`
-/

namespace A329147.P16489404304006929818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048380 n : ℚ) - (A055641 n : ℚ) ^ (A049102 (n + 1) : ℤ)

end

end A329147.P16489404304006929818

/-!
# A329149: Integers that do not appear in A329147, in increasing order.

The programs for A329149, there is no canonical definition to state claims against.
-/

/-! ## A329149.P904718085302415768

`comp[A329147(n)]`
-/

namespace A329149.P904718085302415768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329147 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329149.P904718085302415768

/-! ## A329149.P8482414310189474494

`comp[A329150(n+1)]`
-/

namespace A329149.P8482414310189474494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329149.P8482414310189474494

/-! ## A329149.P14824818914784157187

`comp[A048380(n)-∑{digits}[n, floor(γ^#)]]`
-/

namespace A329149.P14824818914784157187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048380 n - ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌊Real.eulerMascheroniConstant ^ x⌋).sum

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329149.P14824818914784157187

/-! ## A329149.P3029245877694045375

`comp[record[A329150(A324347(n))]]`
-/

namespace A329149.P3029245877694045375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329150 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329149.P3029245877694045375

/-! ## A329149.P15734888906412982198

`eq[0, char[A329147(A003056(n))]]`
-/

namespace A329149.P15734888906412982198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329147 (A003056 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329149.P15734888906412982198

/-! ## A329149.P5201257563654554909

`comp[A048380(n)-A055641(n)]`
-/

namespace A329149.P5201257563654554909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048380 n - A055641 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329149.P5201257563654554909

/-! ## A329149.P2052665684224623518

`comp[A048380(n)-A217096(n)]`
-/

namespace A329149.P2052665684224623518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048380 n - A217096 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329149.P2052665684224623518

/-! ## A329149.P15483639406950892720

`comp[A048380(n)-A014029(n²)]`
-/

namespace A329149.P15483639406950892720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048380 n - A014029 (n ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329149.P15483639406950892720

/-! ## A329149.P57528373542205420

`eq[1, char[A329147(A100793(n))]+1]`
-/

namespace A329149.P57528373542205420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329147 (A100793 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329149.P57528373542205420

/-! ## A329149.P11009166582329280928

`eq[A133754(n)%2, char[A329147(n)]]`
-/

namespace A329149.P11009166582329280928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133754 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329147 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A329149.P11009166582329280928

/-!
# A329150: Increasingly ordered list without repetition of numbers k that are obtained, when, for nonnegative integers n, each nonzero digit d is replaced with prime(d).

The programs for A329150, there is no canonical definition to state claims against.
-/

/-! ## A329150.P12370975632318790187

`eq[1, char[A329147(n)]]`
-/

namespace A329150.P12370975632318790187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329147 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329150.P12370975632318790187

/-! ## A329150.P8270012830134930242

`record[char[A329147(n)]*A222241(n)]`
-/

namespace A329150.P8270012830134930242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329147 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A222241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329150.P8270012830134930242

/-! ## A329150.P15762285448389613113

`record[char[A329147(n)]*A222243(n)]`
-/

namespace A329150.P15762285448389613113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329147 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A222243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329150.P15762285448389613113

/-! ## A329150.P3170308684631468998

`A329147(lt[A048380(n), A087346(n+1)])`
-/

namespace A329150.P3170308684631468998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048380 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329147 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A329150.P3170308684631468998

/-! ## A329150.P17400212255612110450

`A329147(lt[A329147(n), A087346(n+1)])`
-/

namespace A329150.P17400212255612110450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329147 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329147 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A329150.P17400212255612110450

/-!
# A329151: Primes p such that (3*p+q)/2 and (p+3*q)/2 are prime, where q is the next prime after p.

The programs for A329151, there is no canonical definition to state claims against.
-/

/-! ## A329151.P15905522434843799442

`A060265(A249676(n+1)/2)`
-/

namespace A329151.P15905522434843799442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060265 (SequenceMachineLib.roundAway ((A249676 (n + 1) : ℚ) / 2)).toNat

end

end A329151.P15905522434843799442

/-! ## A329151.P1011211648231918969

`A060308(A249676(n+1)/2)`
-/

namespace A329151.P1011211648231918969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (SequenceMachineLib.roundAway ((A249676 (n + 1) : ℚ) / 2)).toNat

end

end A329151.P1011211648231918969

/-! ## A329151.P6548637335675730754

`A007917(A249676(n+1)-1)`
-/

namespace A329151.P6548637335675730754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A249676 (n + 1) - 1).toNat

end

end A329151.P6548637335675730754

/-!
# A329152: a(n) = Sum_{i=1..n-1} Sum_{j=1..i-1} [1 == i*j (mod n)], where [] is the Iverson bracket.

The programs for A329152, the canonical program `A329152.P18328021413279516523` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329152 has offset 1).

The definition of A329152 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A060594, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329152.P18328021413279516523

`(A000010(n+1)-A060594(n+1))/2`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A329152

/-- `(A000010(n+1)-A060594(n+1))/2` -/
def P18328021413279516523.Spec : Prop :=
  ∀ n, P18328021413279516523.a n = (A329152 (n + 1) : ℚ)

end A329152

/-! ## A329152.P12033571471566771590

`1-A343292(n+1)+n`
-/

namespace A329152.P12033571471566771590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A343292 (n + 1) + (n : ℤ)

end

end A329152.P12033571471566771590

namespace A329152

/-- `1-A343292(n+1)+n` -/
def P12033571471566771590.Spec : Prop :=
  ∀ n, P12033571471566771590.a n = A329152 (n + 1)

end A329152

/-! ## A329152.P4138515773227402549

`A157223(n+1)-A318320(n+1)`
-/

namespace A329152.P4138515773227402549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157223 (n + 1) - A318320 (n + 1)

end

end A329152.P4138515773227402549

namespace A329152

/-- `A157223(n+1)-A318320(n+1)` -/
def P4138515773227402549.Spec : Prop :=
  ∀ n, P4138515773227402549.a n = A329152 (n + 1)

end A329152

/-! ## A329152.P15974382266971791249

`A000027(n+1)%A343292(n+1)`
-/

namespace A329152.P15974382266971791249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A343292 (n + 1))

end

end A329152.P15974382266971791249

namespace A329152

/-- `A000027(n+1)%A343292(n+1)` -/
def P15974382266971791249.Spec : Prop :=
  ∀ n, P15974382266971791249.a n = A329152 (n + 1)

end A329152

/-! ## A329152.P9621681079098952144

`A087156(n+1)%A343292(n+1)`
-/

namespace A329152.P9621681079098952144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087156 (n + 1)) (A343292 (n + 1))

end

end A329152.P9621681079098952144

namespace A329152

/-- `A087156(n+1)%A343292(n+1)` -/
def P9621681079098952144.Spec : Prop :=
  ∀ n, P9621681079098952144.a n = A329152 (n + 1)

end A329152

/-! ## A329152.P11827068678585466731

`(Δ[A005728(n)]-A060594(n+1))/2`
-/

namespace A329152.P11827068678585466731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A060594 (n + 1) : ℚ) / 2

end

end A329152.P11827068678585466731

namespace A329152

/-- `(Δ[A005728(n)]-A060594(n+1))/2` -/
def P11827068678585466731.Spec : Prop :=
  ∀ n, P11827068678585466731.a n = (A329152 (n + 1) : ℚ)

end A329152

/-! ## A329152.P6010035276382627857

`(A109606(n+1)-A155828(n+1))/2`
-/

namespace A329152.P6010035276382627857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) - A155828 (n + 1) : ℚ) / 2

end

end A329152.P6010035276382627857

namespace A329152

/-- `(A109606(n+1)-A155828(n+1))/2` -/
def P6010035276382627857.Spec : Prop :=
  ∀ n, P6010035276382627857.a n = (A329152 (n + 1) : ℚ)

end A329152

/-! ## A329152.P1682803345048000067

`floor((A000010(n+1)-A155828(n+1))/2)`
-/

namespace A329152.P1682803345048000067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (n + 1) - A155828 (n + 1) : ℚ) / 2⌋

end

end A329152.P1682803345048000067

namespace A329152

/-- `floor((A000010(n+1)-A155828(n+1))/2)` -/
def P1682803345048000067.Spec : Prop :=
  ∀ n, P1682803345048000067.a n = A329152 (n + 1)

end A329152

/-! ## A329152.P17444408933869979310

`A026741((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-A060594(n+1))`
-/

namespace A329152.P17444408933869979310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - (A060594 (n + 1) : ℚ))).toNat

end

end A329152.P17444408933869979310

namespace A329152

/-- `A026741((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-A060594(n+1))` -/
def P17444408933869979310.Spec : Prop :=
  ∀ n, P17444408933869979310.a n = A329152 (n + 1)

end A329152

/-! ## A329152.P13740827743076490892

`A026741(Δ[A002088(n)]-A060594(n+1))`
-/

namespace A329152.P13740827743076490892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (n + 1) - f1 n - A060594 (n + 1)).toNat

end

end A329152.P13740827743076490892

namespace A329152

/-- `A026741(Δ[A002088(n)]-A060594(n+1))` -/
def P13740827743076490892.Spec : Prop :=
  ∀ n, P13740827743076490892.a n = A329152 (n + 1)

end A329152

/-! ## A329152.P5060872180597040206

`A004526(A000010(n+1)-A060594(n+1))`
-/

namespace A329152.P5060872180597040206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000010 (n + 1) - A060594 (n + 1)).toNat

end

end A329152.P5060872180597040206

namespace A329152

/-- `A004526(A000010(n+1)-A060594(n+1))` -/
def P5060872180597040206.Spec : Prop :=
  ∀ n, P5060872180597040206.a n = A329152 (n + 1)

end A329152

/-! ## A329152.P7929607965606231958

`A006370(A000010(n+1)-A060594(n+1))`
-/

namespace A329152.P7929607965606231958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A000010 (n + 1) - A060594 (n + 1)).toNat

end

end A329152.P7929607965606231958

namespace A329152

/-- `A006370(A000010(n+1)-A060594(n+1))` -/
def P7929607965606231958.Spec : Prop :=
  ∀ n, P7929607965606231958.a n = A329152 (n + 1)

end A329152

/-! ## A329152.P10891412202620416180

`A029578(A000010(n+1)-A060594(n+1))`
-/

namespace A329152.P10891412202620416180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A000010 (n + 1) - A060594 (n + 1)).toNat

end

end A329152.P10891412202620416180

namespace A329152

/-- `A029578(A000010(n+1)-A060594(n+1))` -/
def P10891412202620416180.Spec : Prop :=
  ∀ n, P10891412202620416180.a n = A329152 (n + 1)

end A329152

/-! ## A329152.P4709638126478876024

`A060401(n+1)%A343292(n+1)`
-/

namespace A329152.P4709638126478876024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060401 (n + 1)) (A343292 (n + 1))

end

end A329152.P4709638126478876024

namespace A329152

/-- `A060401(n+1)%A343292(n+1)` -/
def P4709638126478876024.Spec : Prop :=
  ∀ n, P4709638126478876024.a n = A329152 (n + 1)

end A329152

/-!
# A329153: Sum of the iterated unitary totient function (A047994).

The programs for A329153, the canonical program `A329153.P12855634014752564158` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329153 has offset 1).

The definition of A329153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329153.P12855634014752564158

`A047994(n+1)+a(A047994(n+1)-1)` with `a(0)=0`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A329153

/-- `A047994(n+1)+a(A047994(n+1)-1)` -/
def P12855634014752564158.Spec : Prop :=
  ∀ n, P12855634014752564158.a n = A329153 (n + 1)

theorem P12855634014752564158.correct : P12855634014752564158.Spec := by
  intro n
  simp only [A329153, Nat.add_sub_cancel]

end A329153

/-!
# A329154: Coefficients of polynomials related to the sum of Gaussian binomial coefficients for q = 2. Triangle read by rows, T(n,k) for 0 <= k <= n.

The programs for A329154, there is no canonical definition to state claims against.
-/

/-! ## A329154.P16494692791676550264

`A007318(n)*A135922(A025581(n))`
-/

namespace A329154.P16494692791676550264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A135922 (A025581 n).toNat

end

end A329154.P16494692791676550264

/-! ## A329154.P16129839247853229888

`A094587(n)+A010893(A119502(n))`
-/

namespace A329154.P16129839247853229888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n + A010893 ((A119502 n).toNat + 13)

end

end A329154.P16129839247853229888

/-! ## A329154.P1504021714438485292

`A094587(n)+A010893(A130534(n))`
-/

namespace A329154.P1504021714438485292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n + A010893 ((A130534 n).toNat + 13)

end

end A329154.P1504021714438485292

/-! ## A329154.P14336105008944658356

`A094587(n)+A010893(A134558(n))`
-/

namespace A329154.P14336105008944658356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n + A010893 ((A134558 n).toNat + 13)

end

end A329154.P14336105008944658356

/-! ## A329154.P18055629110165506666

`A094587(n)+A010893(A152656(n))`
-/

namespace A329154.P18055629110165506666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n + A010893 ((A152656 n).toNat + 13)

end

end A329154.P18055629110165506666

/-!
# A329155: Expansion of Product_{k>=1} 1 / (1 - 2*x^k - 3*x^(2*k))^(1/2).

The programs for A329155, there is no canonical definition to state claims against.
-/

/-! ## A329155.P15885638175090934594

`A046108(A149433(n))`
-/

namespace A329155.P15885638175090934594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046108 (A149433 n).toNat

end

end A329155.P15885638175090934594

/-! ## A329155.P1453739054084450056

`or(A241827((n+1)²), A334014(n))`
-/

namespace A329155.P1453739054084450056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A241827 ((n + 1) ^ 2)) (A334014 n)

end

end A329155.P1453739054084450056

/-! ## A329155.P1658471804791455142

`or(A105564(n+1), A241827((n+1)²))`
-/

namespace A329155.P1658471804791455142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A105564 (n + 1)) (A241827 ((n + 1) ^ 2))

end

end A329155.P1658471804791455142

/-!
# A329156: Expansion of Product_{k>=1} 1 / (1 - Sum_{j>=1} j * x^(k*j)).

The programs for A329156, there is no canonical definition to state claims against.
-/

/-! ## A329156.P13447767974931678485

`A087844(A022168(n)+A006139(n))`
-/

namespace A329156.P13447767974931678485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087844 (A022168 n + A006139 n).toNat

end

end A329156.P13447767974931678485

/-! ## A329156.P8212998461400253745

`A100682(A332727(n)+A004667(n))`
-/

namespace A329156.P8212998461400253745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100682 (A332727 n + A004667 n).toNat

end

end A329156.P8212998461400253745

/-! ## A329156.P9812684529570706121

`A248731(n)+A241465(A052499(n))`
-/

namespace A329156.P9812684529570706121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248731 n + A241465 (A052499 n).toNat

end

end A329156.P9812684529570706121

/-!
# A329158: Let P1>=3, P2, P3 be consecutive primes, with P3-P2=2. a(n)=(P2+P3)/12 when P2-P1 sets a record.

The programs for A329158, there is no canonical definition to state claims against.
-/

/-! ## A329158.P1914264699980578362

`A329251(A329159(n+1))`
-/

namespace A329158.P1914264699980578362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329251 (A329159 (n + 1)).toNat

end

end A329158.P1914264699980578362

/-! ## A329158.P8256848129410088666

`A329251(record[A084290(n+2)/2])`
-/

namespace A329158.P8256848129410088666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084290 (n + 2) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329251 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A329158.P8256848129410088666

/-!
# A329159: 2*a(n) are the lengths of record prime gaps immediately preceding twin primes.

The programs for A329159, there is no canonical definition to state claims against.
-/

/-! ## A329159.P13921033280208406682

`record[A026741(A084290(n+1))]`
-/

namespace A329159.P13921033280208406682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A084290 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329159.P13921033280208406682

/-!
# A329160: Let P1>=5, P2, P3 be consecutive primes, with P2-P1=2. a(n)=(P1+P2)/12 when P3-P2 sets a record.

The programs for A329160, there is no canonical definition to state claims against.
-/

/-! ## A329160.P12959738905028294262

`A329252(A329161(n+1))`
-/

namespace A329160.P12959738905028294262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329252 (A329161 (n + 1)).toNat

end

end A329160.P12959738905028294262

/-! ## A329160.P6312623487779183091

`A337436(record[A002654(3*n+1)])`
-/

namespace A329160.P6312623487779183091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337436 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A329160.P6312623487779183091

/-! ## A329160.P8450586630840761518

`A337436(A003586(n+1)^A047100(n))`
-/

namespace A329160.P8450586630840761518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337436 (SequenceMachineLib.roundAway ((A003586 (n + 1) : ℚ) ^ (A047100 n : ℤ))).toNat

end

end A329160.P8450586630840761518

/-!
# A329161: 2*a(n) are the lengths of record prime gaps immediately following twin primes.

The programs for A329161, there is no canonical definition to state claims against.
-/

/-! ## A329161.P15633913386975178781

`∑[A108790(record[A048720(2*(n+2))])]`
-/

namespace A329161.P15633913386975178781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048720 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108790 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329161.P15633913386975178781

/-! ## A329161.P2428718568943121244

`A066936(n+1)+A001221(A115098(n))`
-/

namespace A329161.P2428718568943121244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066936 (n + 1) + A001221 (A115098 n).toNat

end

end A329161.P2428718568943121244

/-! ## A329161.P16698401251090141126

`A353438(n+1)-A304464(A219595(n+1))`
-/

namespace A329161.P16698401251090141126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353438 (n + 1) - A304464 (A219595 (n + 1)).toNat

end

end A329161.P16698401251090141126

/-! ## A329161.P3051058403067306350

`eq[A356112(A356115(n+1)), A356152(n+2)]`
-/

namespace A329161.P3051058403067306350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356112 (A356115 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356152 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329161.P3051058403067306350

/-!
# A329162: a(n) = Sum_{k

The programs for A329162, there is no canonical definition to state claims against.
-/

/-! ## A329162.P1152116202471923836

`A198383(n+1)-(n+1)`
-/

namespace A329162.P1152116202471923836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198383 (n + 1) - (n + 1 : ℤ)

end

end A329162.P1152116202471923836

/-! ## A329162.P2804188515227556938

`abs(A198383(n+1)+A051494(2*n+1))`
-/

namespace A329162.P2804188515227556938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A198383 (n + 1) + A051494 (2 * n + 1)|

end

end A329162.P2804188515227556938

/-! ## A329162.P2960018264723315518

`A023443(A198383(n+1)-n)`
-/

namespace A329162.P2960018264723315518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A198383 (n + 1) - (n : ℤ)).toNat

end

end A329162.P2960018264723315518

/-! ## A329162.P4976216547206737519

`A318952(2^n)`
-/

namespace A329162.P4976216547206737519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318952 (2 ^ n)

end

end A329162.P4976216547206737519

/-! ## A329162.P1342274425837770697

`A318952(A000079(n))+char[14]`
-/

namespace A329162.P1342274425837770697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318952 (A000079 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A329162.P1342274425837770697

/-!
# A329163: Expansion of Product_{k>=1} 1 / (1 - Sum_{j>=1} j * x^(j*(2*k - 1))).

The programs for A329163, there is no canonical definition to state claims against.
-/

/-! ## A329163.P18165339111944735463

`A124480(n+1)-A003269(n)²`
-/

namespace A329163.P18165339111944735463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124480 (n + 1) - A003269 n ^ 2

end

end A329163.P18165339111944735463

/-! ## A329163.P14813439451458996742

`A173908(3*A004896(2*n+1))`
-/

namespace A329163.P14813439451458996742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173908 (3 * A004896 (2 * n + 1)).toNat

end

end A329163.P14813439451458996742

/-! ## A329163.P7145735656115903287

`A374767(A000081(n+1))+A000664(n)`
-/

namespace A329163.P7145735656115903287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374767 (A000081 (n + 1)).toNat + A000664 n

end

end A329163.P7145735656115903287

/-!
# A329164: Let P1, P2, P3, P4 be consecutive primes, with P2-P1=P4-P3=2. a(n)=(P1+P2)/12 when P3-P2 sets a new record.

The programs for A329164, there is no canonical definition to state claims against.
-/

/-! ## A329164.P7581492732693871488

`A329250(A329165(n+1))`
-/

namespace A329164.P7581492732693871488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329250 (A329165 (n + 1)).toNat

end

end A329164.P7581492732693871488

/-! ## A329164.P1936959373240575431

`A329250(A029503(n+1))`
-/

namespace A329164.P1936959373240575431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329250 (A029503 (n + 1)).toNat

end

end A329164.P1936959373240575431

/-!
# A329168: Numbers m that divide 4^(m + 1) + 1.

The programs for A329168, there is no canonical definition to state claims against.
-/

/-! ## A329168.P1159270741045247618

`A055687(n+1)-1`
-/

namespace A329168.P1159270741045247618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055687 (n + 1) - 1

end

end A329168.P1159270741045247618

/-! ## A329168.P10960593419263381682

`xor(3, A055687(A348553(n)))`
-/

namespace A329168.P10960593419263381682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A055687 (A348553 n).toNat)

end

end A329168.P10960593419263381682

/-! ## A329168.P3290227244624198525

`xor(3, A055687(A000027(n+1)))`
-/

namespace A329168.P3290227244624198525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A055687 (A000027 (n + 1)).toNat)

end

end A329168.P3290227244624198525

/-! ## A329168.P7479594483029378741

`xor(3, A055687(A055643(n+1)))`
-/

namespace A329168.P7479594483029378741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A055687 (A055643 (n + 1)).toNat)

end

end A329168.P7479594483029378741

/-! ## A329168.P9329191173215379254

`xor(3, A055687(A090110(n+1)))`
-/

namespace A329168.P9329191173215379254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A055687 (A090110 (n + 1)).toNat)

end

end A329168.P9329191173215379254

/-!
# A329170: Numbers of the form k^2 + 2 that are the sums of two squares.

The programs for A329170, there is no canonical definition to state claims against.
-/

/-! ## A329170.P11087897247525647160

`A274595(n+1)²+2`
-/

namespace A329170.P11087897247525647160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274595 (n + 1) ^ 2 + 2

end

end A329170.P11087897247525647160

/-! ## A329170.P7599983383856921814

`∩[A082982(n+1), n²]+2`
-/

namespace A329170.P7599983383856921814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082982 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n + 2

end

end A329170.P7599983383856921814

/-! ## A329170.P8361659204275862903

`A059100(A274595(n+1))`
-/

namespace A329170.P8361659204275862903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 (A274595 (n + 1)).toNat

end

end A329170.P8361659204275862903

/-! ## A329170.P7823219947892425568

`A102762(A274595(n+1)+2)`
-/

namespace A329170.P7823219947892425568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102762 (A274595 (n + 1) + 2).toNat

end

end A329170.P7823219947892425568

/-! ## A329170.P7150743664301952754

`A248800(lcm(2, A274595(n+1)))`
-/

namespace A329170.P7150743664301952754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248800 (Int.lcm 2 (A274595 (n + 1)))

end

end A329170.P7150743664301952754

/-!
# A329171: Successive squares visited by a knight on the single-digit square spiral, with ties resolved by choosing the point to the left of the line from the knight's current position to the 0-squared origin.

The programs for A329171, there is no canonical definition to state claims against.
-/

/-! ## A329171.P9874083119324468532

`A326918(n)%7`
-/

namespace A329171.P9874083119324468532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326918 n) 7

end

end A329171.P9874083119324468532

/-! ## A329171.P16893504418474608502

`A326918(n*ceil(n/98))`
-/

namespace A329171.P16893504418474608502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326918 ((n : ℤ) * ⌈(n : ℚ) / 98⌉).toNat

end

end A329171.P16893504418474608502

/-! ## A329171.P3875655459075770430

`dr(A326918(A118759(n)))`
-/

namespace A329171.P3875655459075770430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A326918 (A118759 n).toNat)

end

end A329171.P3875655459075770430

/-! ## A329171.P12325614543191213262

`A007376(A326916(n))%7`
-/

namespace A329171.P12325614543191213262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (A326916 n).toNat) 7

end

end A329171.P12325614543191213262

/-! ## A329171.P3023655199243889480

`A178334(n)*A326918(n)`
-/

namespace A329171.P3023655199243889480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A326918 n

end

end A329171.P3023655199243889480

/-! ## A329171.P5448857725537001557

`A326918(n)*A361338(n)`
-/

namespace A329171.P5448857725537001557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326918 n * A361338 n

end

end A329171.P5448857725537001557

/-! ## A329171.P17060884158347804818

`and(A088704(n), A326918(n))`
-/

namespace A329171.P17060884158347804818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088704 n) (A326918 n)

end

end A329171.P17060884158347804818

/-! ## A329171.P17922904358000044930

`A102683(n)!*A326918(n)`
-/

namespace A329171.P17922904358000044930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A102683 n).toNat : ℤ) * A326918 n

end

end A329171.P17922904358000044930

/-! ## A329171.P16189320418884013608

`and(A119859(n+1), A326918(n))`
-/

namespace A329171.P16189320418884013608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A119859 (n + 1)) (A326918 n)

end

end A329171.P16189320418884013608

/-! ## A329171.P10755095658139322682

`∑{d}[n+1, A088157(#-1)*A326918((n+1)/#-1)]`
-/

namespace A329171.P10755095658139322682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A088157 (d - 1) * A326918 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A329171.P10755095658139322682

/-!
# A329172: a(n) is the least positive exponent k such that the decimal expansion of 5^k contains n consecutive zeros.

The programs for A329172, there is no canonical definition to state claims against.
-/

/-! ## A329172.P6388543389257184675

`A025428(A130441(3*n+5)-8)`
-/

namespace A329172.P6388543389257184675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A130441 (3 * n + 5) - 8).toNat

end

end A329172.P6388543389257184675

/-!
# A329174: a(n) is the least positive exponent k such that the decimal expansion of 7^k contains n consecutive zeros.

The programs for A329174, there is no canonical definition to state claims against.
-/

/-! ## A329174.P6030707898055313718

`A002487(A363142(2*(n+1)))-1`
-/

namespace A329174.P6030707898055313718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A363142 (2 * (n + 1))).toNat - 1

end

end A329174.P6030707898055313718

/-!
# A329177: Numbers k such that k![4] - 256 is prime, where k![4] = A007662(k) = quadruple factorial.

The programs for A329177, there is no canonical definition to state claims against.
-/

/-! ## A329177.P13493120039917427076

`∑[A239864(A239859(n+1))]-1`
-/

namespace A329177.P13493120039917427076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239864 (A239859 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A329177.P13493120039917427076

/-! ## A329177.P10892381881183585932

`eq[6, ∑[A034947(A155151(n+1))]]`
-/

namespace A329177.P10892381881183585932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A155151 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329177.P10892381881183585932

/-! ## A329177.P2250833172270707058

`record[A125704(A320057(n+1))+14]`
-/

namespace A329177.P2250833172270707058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125704 (A320057 (n + 1)).toNat + 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329177.P2250833172270707058

/-! ## A329177.P17592749645811097078

`lt[A019418(A019446(n+4)), A019430(n+2)]`
-/

namespace A329177.P17592749645811097078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019418 (A019446 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A329177.P17592749645811097078

/-! ## A329177.P5939536558473668331

`lt[A167176(A000700(3*n+1)), A007814(n+1)]`
-/

namespace A329177.P5939536558473668331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167176 (A000700 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A329177.P5939536558473668331

/-!
# A329178: Sum of the products of pairs of Padovan numbers which are two apart, starting from A000931(5).

The programs for A329178, the canonical program `A329178.P16265647611743025543` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329178 has offset 0).

The definition of A329178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329178.P12340181522984070385

`A329227(n+7)-1`
-/

namespace A329178.P12340181522984070385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329227 (n + 7) - 1

end

end A329178.P12340181522984070385

namespace A329178

/-- `A329227(n+7)-1` -/
def P12340181522984070385.Spec : Prop :=
  ∀ n, P12340181522984070385.a n = A329178 n

end A329178

/-! ## A329178.P16265647611743025543

`2*a(n-1)-2*a(n-4)+2*a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=11, a(4)=19, a(5)=34, a(6)=62`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A329178

/-- `2*a(n-1)-2*a(n-4)+2*a(n-5)-2*a(n-6)+a(n-7)` -/
def P16265647611743025543.Spec : Prop :=
  ∀ n, P16265647611743025543.a n = A329178 n

theorem P16265647611743025543.correct : P16265647611743025543.Spec := by
  intro n
  simp only [A329178]

end A329178

/-! ## A329178.P2875636513869593140

`record[abs(1-A329227(n))]`
-/

namespace A329178.P2875636513869593140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A329227 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329178.P2875636513869593140

namespace A329178

/-- `record[abs(1-A329227(n))]` -/
def P2875636513869593140.Spec : Prop :=
  ∀ n, P2875636513869593140.a n = A329178 n

end A329178

/-! ## A329178.P16567930219583451087

`record[A329227(n)+A260196(n)]`
-/

namespace A329178.P16567930219583451087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329227 n + A260196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329178.P16567930219583451087

namespace A329178

/-- `record[A329227(n)+A260196(n)]` -/
def P16567930219583451087.Spec : Prop :=
  ∀ n, P16567930219583451087.a n = A329178 n

end A329178

/-! ## A329178.P10139709982278586437

`record[A329227(n)-A158388(n)]`
-/

namespace A329178.P10139709982278586437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329227 n - A158388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329178.P10139709982278586437

namespace A329178

/-- `record[A329227(n)-A158388(n)]` -/
def P10139709982278586437.Spec : Prop :=
  ∀ n, P10139709982278586437.a n = A329178 n

end A329178

/-! ## A329178.P3238436202937155764

`record[A329227(n)+A153881(n+1)]`
-/

namespace A329178.P3238436202937155764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329227 n + A153881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329178.P3238436202937155764

namespace A329178

/-- `record[A329227(n)+A153881(n+1)]` -/
def P3238436202937155764.Spec : Prop :=
  ∀ n, P3238436202937155764.a n = A329178 n

end A329178

/-! ## A329178.P7697655575990039021

`A054405(n)+A023434(n+1)*A023434(n)`
-/

namespace A329178.P7697655575990039021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054405 n + A023434 (n + 1) * A023434 n

end

end A329178.P7697655575990039021

namespace A329178

/-- `A054405(n)+A023434(n+1)*A023434(n)` -/
def P7697655575990039021.Spec : Prop :=
  ∀ n, P7697655575990039021.a n = A329178 n

end A329178

/-! ## A329178.P9362825850192943013

`A023434(n+1)+A023434(n)*A164001(n+1)`
-/

namespace A329178.P9362825850192943013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (n + 1) + A023434 n * A164001 (n + 1)

end

end A329178.P9362825850192943013

namespace A329178

/-- `A023434(n+1)+A023434(n)*A164001(n+1)` -/
def P9362825850192943013.Spec : Prop :=
  ∀ n, P9362825850192943013.a n = A329178 n

end A329178

/-! ## A329178.P7910544408845426200

`(A100538(n+2)-A134816(n+2))/A134816(n+2)`
-/

namespace A329178.P7910544408845426200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100538 (n + 2) - A134816 (n + 2) : ℚ) / (A134816 (n + 2) : ℚ)

end

end A329178.P7910544408845426200

namespace A329178

/-- `(A100538(n+2)-A134816(n+2))/A134816(n+2)` -/
def P7910544408845426200.Spec : Prop :=
  ∀ n, P7910544408845426200.a n = (A329178 n : ℚ)

end A329178

/-!
# A329179: Numbers k such that A258881(k) is a square.

The programs for A329179, there is no canonical definition to state claims against.
-/

/-! ## A329179.P8276371292518604008

`lt[A002828(A003132(n)+n), 2]`
-/

namespace A329179.P8276371292518604008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A003132 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A329179.P8276371292518604008

/-! ## A329179.P2737404219797274832

`eq[1, A010052(A003132(n)+n)]`
-/

namespace A329179.P2737404219797274832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A003132 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329179.P2737404219797274832

/-! ## A329179.P8394729176289040587

`eq[1, A084608(A003132(n)+n)]`
-/

namespace A329179.P8394729176289040587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084608 (A003132 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329179.P8394729176289040587

/-! ## A329179.P4472981826128429819

`lt[1, A010052(A003132(C(2, n)+n)+n)+1]`
-/

namespace A329179.P4472981826128429819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A003132 (Nat.choose 2 n + n) + (n : ℤ)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A329179.P4472981826128429819

/-! ## A329179.P4858112638326733829

`lt[1, A010052(A003132(n)+n)*A278115(n+1)]`
-/

namespace A329179.P4858112638326733829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A003132 n + (n : ℤ)).toNat * A278115 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A329179.P4858112638326733829

/-! ## A329179.P5407782393593353558

`lt[A000040(n+1)%2, A010052(A003132(n)+n)+1]`
-/

namespace A329179.P5407782393593353558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A003132 n + (n : ℤ)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A329179.P5407782393593353558

/-!
# A329181: a(n) = n if n is 1 or prime; otherwise (1) let m = (concatenation of the two divisors in the middle of rows of A027750(n)), (2) if m is prime then a(n) = m, otherwise return to (1) with n=m.

The programs for A329181, there is no canonical definition to state claims against.
-/

/-! ## A329181.P17341923165302696654

`A195264(A008710(n)-9)`
-/

namespace A329181.P17341923165302696654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195264 (A008710 n - 9).toNat

end

end A329181.P17341923165302696654

/-! ## A329181.P4745141536201241971

`A195264(∑[A146260(n+1)])`
-/

namespace A329181.P4745141536201241971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329181.P4745141536201241971

/-! ## A329181.P9675132897734512324

`A195264(record[A269570(n+2)])`
-/

namespace A329181.P9675132897734512324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269570 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195264 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A329181.P9675132897734512324

/-! ## A329181.P12473551062409400837

`A195264(A118598(n+1)+1)`
-/

namespace A329181.P12473551062409400837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195264 (A118598 (n + 1) + 1).toNat

end

end A329181.P12473551062409400837

/-!
# A329182: Negative discriminants with form class group isomorphic to C_2 X C_2 (negated).

The programs for A329182, there is no canonical definition to state claims against.
-/

/-! ## A329182.P6819117116188865908

`4*A033267(n*Δ[A143265(n+1)]+1)`
-/

namespace A329182.P6819117116188865908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A033267 ((n : ℤ) * (f1 (n + 1) - f1 n) + 1).toNat

end

end A329182.P6819117116188865908

/-! ## A329182.P11565506730463662752

`4*A033267(n+1)%A034170(2*(n+2))`
-/

namespace A329182.P11565506730463662752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.tmod (A033267 (n + 1)) (A034170 (2 * (n + 2)))

end

end A329182.P11565506730463662752

/-! ## A329182.P2093723932771708141

`A008574(A033267(n+1)%record[A094378(n)])`
-/

namespace A329182.P2093723932771708141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (Int.tmod (A033267 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A329182.P2093723932771708141

/-! ## A329182.P2610584367194241025

`A023402(A156808(n+1))*A033267(n+1)`
-/

namespace A329182.P2610584367194241025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023402 (A156808 (n + 1)).toNat * A033267 (n + 1)

end

end A329182.P2610584367194241025

/-!
# A329183: Numbers k such that k![4] - 512 is prime, where k![4] = A007662(k) = quadruple factorial.

The programs for A329183, there is no canonical definition to state claims against.
-/

/-! ## A329183.P14570086413432757625

`eq[5, A123066(n+1)]+6`
-/

namespace A329183.P14570086413432757625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123066 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 6

end

end A329183.P14570086413432757625

/-! ## A329183.P11118083138930021626

`Δ[n*A101594(A351870(n+1))]`
-/

namespace A329183.P11118083138930021626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A101594 (A351870 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329183.P11118083138930021626

/-! ## A329183.P2114564038242095421

`filter[A135383(2*(n+1)), A377191(#)]`
-/

namespace A329183.P2114564038242095421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135383 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377191 (f1 j).toNat = 1) n)

end

end A329183.P2114564038242095421

/-! ## A329183.P1999096517033622190

`eq[A010687(n), A253894(A253897(n+1))]`
-/

namespace A329183.P1999096517033622190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010687 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253894 (A253897 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329183.P1999096517033622190

/-! ## A329183.P10469923623995381686

`eq[A115714(A320631(n+1)), A115714(n)]`
-/

namespace A329183.P10469923623995381686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115714 (A320631 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329183.P10469923623995381686

/-!
# A329185: Number of ways to tile a 2 X n grid with dominoes and L-trominoes such that no four tiles meet at a corner.

The programs for A329185, the canonical program `A329185.P12215449232614134701` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329185 has offset 0).

The definition of A329185 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329185.P12215449232614134701

`2*a(n-1)-a(n-2)+3*a(n-3)-a(n-4)+2*a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5, a(4)=10`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A329185

/-- `2*a(n-1)-a(n-2)+3*a(n-3)-a(n-4)+2*a(n-5)` -/
def P12215449232614134701.Spec : Prop :=
  ∀ n, P12215449232614134701.a n = A329185 n

theorem P12215449232614134701.correct : P12215449232614134701.Spec := by
  intro n
  simp only [A329185]

end A329185

/-! ## A329185.P5016101028908480170

`A369715(A099445(n))`
-/

namespace A329185.P5016101028908480170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369715 (A099445 n).toNat

end

end A329185.P5016101028908480170

namespace A329185

/-- `A369715(A099445(n))` -/
def P5016101028908480170.Spec : Prop :=
  ∀ n, P5016101028908480170.a n = A329185 n

end A329185

/-! ## A329185.P6714525174835118780

`A046155(Δ[Δ[A125094(n)]])`
-/

namespace A329185.P6714525174835118780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125094 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (f1 (n + 1) - f1 n).toNat

end

end A329185.P6714525174835118780

namespace A329185

/-- `A046155(Δ[Δ[A125094(n)]])` -/
def P6714525174835118780.Spec : Prop :=
  ∀ n, P6714525174835118780.a n = A329185 n

end A329185

/-! ## A329185.P14479118010975993551

`A026819(A071764(n)+A071751(n))`
-/

namespace A329185.P14479118010975993551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A071764 n + A071751 n).toNat

end

end A329185.P14479118010975993551

namespace A329185

/-- `A026819(A071764(n)+A071751(n))` -/
def P14479118010975993551.Spec : Prop :=
  ∀ n, P14479118010975993551.a n = A329185 n

end A329185

/-! ## A329185.P14525842086628920349

`A026819(A088439(n)+A071751(n))`
-/

namespace A329185.P14525842086628920349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A088439 n + A071751 n).toNat

end

end A329185.P14525842086628920349

namespace A329185

/-- `A026819(A088439(n)+A071751(n))` -/
def P14525842086628920349.Spec : Prop :=
  ∀ n, P14525842086628920349.a n = A329185 n

end A329185

/-!
# A329188: Odd unitary admirable numbers: the odd terms of A328328.

The programs for A329188, there is no canonical definition to state claims against.
-/

/-! ## A329188.P3752369664383406447

`∏{p}[A334975(n+4), #]`
-/

namespace A329188.P3752369664383406447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334975 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A329188.P3752369664383406447

/-!
# A329189: 3-admirable numbers: 3-abundant numbers (A068403) k such that exists a proper divisor d of k such that sigma(k) - 2*d = 3*k, where sigma(k) is the sum of divisors of k (A000203).

The programs for A329189, there is no canonical definition to state claims against.
-/

/-! ## A329189.P3477701408628864487

`A023197(lt[A263138(3*n), A051424(n)])`
-/

namespace A329189.P3477701408628864487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263138 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023197 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A329189.P3477701408628864487

/-! ## A329189.P17303087849425974657

`A068403(∑[A108998(n)!])`
-/

namespace A329189.P17303087849425974657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A108998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068403 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A329189.P17303087849425974657

/-! ## A329189.P4752466478655030363

`A068403(∑[A000171(n+1)!])`
-/

namespace A329189.P4752466478655030363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000171 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068403 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A329189.P4752466478655030363

/-!
# A329190: Weird admirable numbers: numbers that are both weird (A006037) and admirable (A111592).

The programs for A329190, there is no canonical definition to state claims against.
-/

/-! ## A329190.P6195539017046907783

`A354282(A147820(n+1)%A147820(3*n+2))`
-/

namespace A329190.P6195539017046907783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354282 (Int.tmod (A147820 (n + 1)) (A147820 (3 * n + 2))).toNat

end

end A329190.P6195539017046907783

/-! ## A329190.P7143718320854090120

`∩[A002975(n+1)%A258250(2*n+5), A354282(n+1)]`
-/

namespace A329190.P7143718320854090120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002975 (n + 1)) (A258250 (2 * n + 5))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329190.P7143718320854090120

/-! ## A329190.P6560073373985041890

`∩[A002975(n+1)%A322524(n+1), A354282(n+1)]`
-/

namespace A329190.P6560073373985041890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002975 (n + 1)) (A322524 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329190.P6560073373985041890

/-! ## A329190.P2006651373821032285

`A354282(or(A033869(n), A252474(n+1)))`
-/

namespace A329190.P2006651373821032285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354282 (Int.lor (A033869 n) (A252474 (n + 1))).toNat

end

end A329190.P2006651373821032285

/-!
# A329191: The prime divisors of the orders of the sporadic finite simple groups.

The programs for A329191, there is no canonical definition to state claims against.
-/

/-! ## A329191.P14176132999112791377

`p?[record[A029393(n)]]`
-/

namespace A329191.P14176132999112791377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029393 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A329191.P14176132999112791377

/-! ## A329191.P15972994509720976621

`p?[A329974(n+1)]`
-/

namespace A329191.P15972994509720976621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A329191.P15972994509720976621

/-! ## A329191.P4307469043552164674

`p?[A352675(n+1)]`
-/

namespace A329191.P4307469043552164674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A329191.P4307469043552164674

/-! ## A329191.P17948535148791865792

`p?[∑[A345047(n+1)]]`
-/

namespace A329191.P17948535148791865792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345047 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A329191.P17948535148791865792

/-! ## A329191.P13701629082592319649

`p?[A296873(n+1)-2]`
-/

namespace A329191.P13701629082592319649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296873 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A329191.P13701629082592319649

/-!
# A329192: Fibonacci numbers with arithmetic mean of digits an integer (sum of digits = a multiple of number of digits).

The programs for A329192, there is no canonical definition to state claims against.
-/

/-! ## A329192.P10199108395767174568

`A000045(A164947(n+2))`
-/

namespace A329192.P10199108395767174568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A164947 (n + 2)).toNat

end

end A329192.P10199108395767174568

/-! ## A329192.P12675812594452411609

`A053602(2*A164947(n+2))`
-/

namespace A329192.P12675812594452411609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A164947 (n + 2)).toNat

end

end A329192.P12675812594452411609

/-! ## A329192.P5958721146553491978

`A302126(2*A164947(n+2))`
-/

namespace A329192.P5958721146553491978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * A164947 (n + 2)).toNat

end

end A329192.P5958721146553491978

/-! ## A329192.P6360208958233812745

`record[A000045(A259579(n+1))]`
-/

namespace A329192.P6360208958233812745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A259579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329192.P6360208958233812745

/-! ## A329192.P4667045026968648784

`eq[A286327(n)², A371384(n)]`
-/

namespace A329192.P4667045026968648784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286327 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329192.P4667045026968648784

/-!
# A329193: a(n) = floor(log_2(n^3)) = floor(3 log_2(n)).

The programs for A329193, there is no canonical definition to state claims against.
-/

/-! ## A329193.P17209322781247751968

`floor(log2(Δ[∑[n]²]))`
-/

namespace A329193.P17209322781247751968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A329193.P17209322781247751968

/-! ## A329193.P15063271992632883181

`floor(log2((n+1)^3))%19`
-/

namespace A329193.P15063271992632883181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 ((n + 1) ^ 3) % 19

end

end A329193.P15063271992632883181

/-! ## A329193.P1849497795734074987

`and(31, floor(log2((n+1)^3)))`
-/

namespace A329193.P1849497795734074987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 31 (Nat.log 2 ((n + 1) ^ 3))

end

end A329193.P1849497795734074987

/-! ## A329193.P13555627178153716562

`ceil(log2(cosh(3*log(n+1))))`
-/

namespace A329193.P13555627178153716562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.cosh (3 * Real.log (n + 1 : ℝ)))⌉

end

end A329193.P13555627178153716562

/-! ## A329193.P16451097681011963255

`abs(ceil(log2(acot((n+1)^3))))`
-/

namespace A329193.P16451097681011963255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈Real.logb 2 (SequenceMachineLib.acot ((n + 1) ^ 3 : ℝ))⌉|

end

end A329193.P16451097681011963255

/-! ## A329193.P985700171513329686

`-ceil(log2(acot((n+1)^3)))`
-/

namespace A329193.P985700171513329686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈Real.logb 2 (SequenceMachineLib.acot ((n + 1) ^ 3 : ℝ))⌉

end

end A329193.P985700171513329686

/-! ## A329193.P6323629325848541754

`or(floor(log2((n+1)^3)), char[1])`
-/

namespace A329193.P6323629325848541754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.log 2 ((n + 1) ^ 3)) (if ∃ j, f1 j = n then 1 else 0)

end

end A329193.P6323629325848541754

/-! ## A329193.P2646250413692395413

`ceil(log2((n+1)%3+(n+1)^3))-1`
-/

namespace A329193.P2646250413692395413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (((n + 1) % 3 + (n + 1) ^ 3 : ℕ) : ℝ)⌉ - 1

end

end A329193.P2646250413692395413

/-! ## A329193.P14909772532136888688

`ceil(log2(A236332(n+1)))`
-/

namespace A329193.P14909772532136888688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A236332 (n + 1) : ℝ)⌉

end

end A329193.P14909772532136888688

/-! ## A329193.P15049127484775296942

`ceil(log2(A274324(n+1)))`
-/

namespace A329193.P15049127484775296942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A274324 (n + 1) : ℝ)⌉

end

end A329193.P15049127484775296942

/-!
# A329194: a(n) = floor(log_3(n^2)) = floor(2 log_3(n)).

The programs for A329194, the canonical program `A329194.P3359497653566777379` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329194 has offset 1).

The definition of A329194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329194.P3359497653566777379

`∑[char[floor(sqrt(3)^n)]]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A329194

/-- `∑[char[floor(sqrt(3)^n)]]` -/
def P3359497653566777379.Spec : Prop :=
  ∀ n, (P3359497653566777379.a n : ℤ) = A329194 (n + 1)

theorem P3359497653566777379.correct : P3359497653566777379.Spec := by
  intro n
  simp only [A329194, Nat.add_sub_cancel]

end A329194

/-! ## A329194.P362936445956868730

`A329199(n+1)+A062153(n+1)`
-/

namespace A329194.P362936445956868730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329199 (n + 1) + A062153 (n + 1)

end

end A329194.P362936445956868730

namespace A329194

/-- `A329199(n+1)+A062153(n+1)` -/
def P362936445956868730.Spec : Prop :=
  ∀ n, P362936445956868730.a n = A329194 (n + 1)

end A329194

/-! ## A329194.P18067561313726639151

`A329199(n+1)+A065335(A365458(n+1))`
-/

namespace A329194.P18067561313726639151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329199 (n + 1) + A065335 (A365458 (n + 1)).toNat

end

end A329194.P18067561313726639151

namespace A329194

/-- `A329199(n+1)+A065335(A365458(n+1))` -/
def P18067561313726639151.Spec : Prop :=
  ∀ n, P18067561313726639151.a n = A329194 (n + 1)

end A329194

/-! ## A329194.P14703798446047743248

`A062153(A171970(2*n+2))+A062153(n+1)`
-/

namespace A329194.P14703798446047743248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A171970 (2 * n + 2)).toNat + A062153 (n + 1)

end

end A329194.P14703798446047743248

namespace A329194

/-- `A062153(A171970(2*n+2))+A062153(n+1)` -/
def P14703798446047743248.Spec : Prop :=
  ∀ n, P14703798446047743248.a n = A329194 (n + 1)

end A329194

/-! ## A329194.P6055578848188256283

`A080342(A087483(n))`
-/

namespace A329194.P6055578848188256283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (A087483 n).toNat

end

end A329194.P6055578848188256283

namespace A329194

/-- `A080342(A087483(n))` -/
def P6055578848188256283.Spec : Prop :=
  ∀ n, P6055578848188256283.a n = A329194 (n + 1)

end A329194

/-! ## A329194.P14502222148961477102

`A080342(A014817(n+1))`
-/

namespace A329194.P14502222148961477102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (A014817 (n + 1)).toNat

end

end A329194.P14502222148961477102

namespace A329194

/-- `A080342(A014817(n+1))` -/
def P14502222148961477102.Spec : Prop :=
  ∀ n, P14502222148961477102.a n = A329194 (n + 1)

end A329194

/-! ## A329194.P7188291903800980003

`A062153(A365458((n+1)²))`
-/

namespace A329194.P7188291903800980003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A365458 ((n + 1) ^ 2)).toNat

end

end A329194.P7188291903800980003

namespace A329194

/-- `A062153(A365458((n+1)²))` -/
def P7188291903800980003.Spec : Prop :=
  ∀ n, P7188291903800980003.a n = A329194 (n + 1)

end A329194

/-! ## A329194.P11353901893474658848

`A329199(A025706(n))`
-/

namespace A329194.P11353901893474658848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329199 (A025706 n).toNat

end

end A329194.P11353901893474658848

namespace A329194

/-- `A329199(A025706(n))` -/
def P11353901893474658848.Spec : Prop :=
  ∀ n, P11353901893474658848.a n = A329194 (n + 1)

end A329194

/-! ## A329194.P8173993675881161318

`A329199(A025730(n))`
-/

namespace A329194.P8173993675881161318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329199 (A025730 n).toNat

end

end A329194.P8173993675881161318

namespace A329194

/-- `A329199(A025730(n))` -/
def P8173993675881161318.Spec : Prop :=
  ∀ n, P8173993675881161318.a n = A329194 (n + 1)

end A329194

/-! ## A329194.P6945281866317629926

`A329199(A025745(n))`
-/

namespace A329194.P6945281866317629926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329199 (A025745 n).toNat

end

end A329194.P6945281866317629926

namespace A329194

/-- `A329199(A025745(n))` -/
def P6945281866317629926.Spec : Prop :=
  ∀ n, P6945281866317629926.a n = A329194 (n + 1)

end A329194

/-! ## A329194.P414970737319213456

`A329199((n+1)*A365458(n+1))`
-/

namespace A329194.P414970737319213456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329199 ((n + 1 : ℤ) * A365458 (n + 1)).toNat

end

end A329194.P414970737319213456

namespace A329194

/-- `A329199((n+1)*A365458(n+1))` -/
def P414970737319213456.Spec : Prop :=
  ∀ n, P414970737319213456.a n = A329194 (n + 1)

end A329194

/-! ## A329194.P4844901616368565272

`A062153((n+1)²)`
-/

namespace A329194.P4844901616368565272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 ((n + 1) ^ 2)

end

end A329194.P4844901616368565272

namespace A329194

/-- `A062153((n+1)²)` -/
def P4844901616368565272.Spec : Prop :=
  ∀ n, P4844901616368565272.a n = A329194 (n + 1)

end A329194

/-! ## A329194.P647231372590551329

`A081604((n+1)²)-1`
-/

namespace A329194.P647231372590551329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 ((n + 1) ^ 2) - 1

end

end A329194.P647231372590551329

namespace A329194

/-- `A081604((n+1)²)-1` -/
def P647231372590551329.Spec : Prop :=
  ∀ n, P647231372590551329.a n = A329194 (n + 1)

end A329194

/-! ## A329194.P18049578731798310165

`dr(A062153(∑[2*n+1]))`
-/

namespace A329194.P18049578731798310165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A062153 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A329194.P18049578731798310165

namespace A329194

/-- `dr(A062153(∑[2*n+1]))` -/
def P18049578731798310165.Spec : Prop :=
  ∀ n, (P18049578731798310165.a n : ℤ) = A329194 (n + 1)

end A329194

/-!
# A329195: a(n) = floor(log_5(n^2)) = floor(2 log_5(n)).

The programs for A329195, there is no canonical definition to state claims against.
-/

/-! ## A329195.P14316445559388303006

`A110592((n+1)²)-1`
-/

namespace A329195.P14316445559388303006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 ((n + 1) ^ 2) - 1

end

end A329195.P14316445559388303006

/-! ## A329195.P16168641439581121088

`A262303(A051730(n))`
-/

namespace A329195.P16168641439581121088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262303 (A051730 n).toNat

end

end A329195.P16168641439581121088

/-! ## A329195.P2698840840060353518

`A343607(A131411(n+2))`
-/

namespace A329195.P2698840840060353518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343607 (A131411 (n + 2)).toNat

end

end A329195.P2698840840060353518

/-! ## A329195.P8890797816055046152

`A000194(A000194(A375473(A091087(A049472(n+1)))))`
-/

namespace A329195.P8890797816055046152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A000194 (A375473 (A091087 (A049472 (n + 1)).toNat).toNat).toNat).toNat

end

end A329195.P8890797816055046152

/-! ## A329195.P12927438107004475990

`A077433(A079824(n+1))`
-/

namespace A329195.P12927438107004475990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077433 (A079824 (n + 1)).toNat

end

end A329195.P12927438107004475990

/-!
# A329198: Size of the orbit of n under "ghost iterations" A329200.

The programs for A329198, there is no canonical definition to state claims against.
-/

/-! ## A329198.P15712194503157619730

`A082647(A123526(n+1)+A000005(n+5))`
-/

namespace A329198.P15712194503157619730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (A123526 (n + 1) + A000005 (n + 5)).toNat

end

end A329198.P15712194503157619730

/-! ## A329198.P5393920550817906007

`A001222(A136060(n+1)%A136116(3*n+2))`
-/

namespace A329198.P5393920550817906007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A136060 (n + 1)) (A136116 (3 * n + 2))).toNat

end

end A329198.P5393920550817906007

/-!
# A329199: a(n) = round(log_3(n)).

The programs for A329199, the canonical program `A329199.P13472642438074930869` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329199 has offset 1).

The definition of A329199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329199.P1426788768486709335

`round(log(n+1)/log(3))`
-/

namespace A329199.P1426788768486709335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (n + 1 : ℝ) / Real.log (3 : ℝ))

end

end A329199.P1426788768486709335

namespace A329199

/-- `round(log(n+1)/log(3))` -/
def P1426788768486709335.Spec : Prop :=
  ∀ n, P1426788768486709335.a n = A329199 (n + 1)

end A329199

/-! ## A329199.P6689194643783825629

`∑[char[A022838(3^n)]]`
-/

namespace A329199.P6689194643783825629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (3 ^ n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329199.P6689194643783825629

namespace A329199

/-- `∑[char[A022838(3^n)]]` -/
def P6689194643783825629.Spec : Prop :=
  ∀ n, (P6689194643783825629.a n : ℤ) = A329199 (n + 1)

end A329199

/-! ## A329199.P12663473272447326752

`∑[char[A017913(2*n+1)]]`
-/

namespace A329199.P12663473272447326752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017913 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329199.P12663473272447326752

namespace A329199

/-- `∑[char[A017913(2*n+1)]]` -/
def P12663473272447326752.Spec : Prop :=
  ∀ n, (P12663473272447326752.a n : ℤ) = A329199 (n + 1)

end A329199

/-! ## A329199.P6535098307689248124

`A110654(∑[char[A017913(n)]])`
-/

namespace A329199.P6535098307689248124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017913 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A329199.P6535098307689248124

namespace A329199

/-- `A110654(∑[char[A017913(n)]])` -/
def P6535098307689248124.Spec : Prop :=
  ∀ n, P6535098307689248124.a n = A329199 (n + 1)

end A329199

/-! ## A329199.P13472642438074930869

`A329194(n+1)-A062153(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A329199

/-- `A329194(n+1)-A062153(n+1)` -/
def P13472642438074930869.Spec : Prop :=
  ∀ n, P13472642438074930869.a n = A329199 (n + 1)

theorem P13472642438074930869.correct : P13472642438074930869.Spec := by
  intro n
  simp only [A329199, Nat.add_sub_cancel]

end A329199

/-! ## A329199.P16309948881216152268

`A062153(A022838(n+1))`
-/

namespace A329199.P16309948881216152268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A022838 (n + 1)).toNat

end

end A329199.P16309948881216152268

namespace A329199

/-- `A062153(A022838(n+1))` -/
def P16309948881216152268.Spec : Prop :=
  ∀ n, P16309948881216152268.a n = A329199 (n + 1)

end A329199

/-! ## A329199.P7173616025828179326

`A004218(or(A071786(n+1), A161680(n)))`
-/

namespace A329199.P7173616025828179326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (Int.lor (A071786 (n + 1)) (A161680 n)).toNat

end

end A329199.P7173616025828179326

namespace A329199

/-- `A004218(or(A071786(n+1), A161680(n)))` -/
def P7173616025828179326.Spec : Prop :=
  ∀ n, P7173616025828179326.a n = A329199 (n + 1)

end A329199

/-! ## A329199.P11658279452711885232

`A000195(A029837(A004050(n+1))+n)`
-/

namespace A329199.P11658279452711885232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A029837 (A004050 (n + 1)).toNat + (n : ℤ)).toNat

end

end A329199.P11658279452711885232

namespace A329199

/-- `A000195(A029837(A004050(n+1))+n)` -/
def P11658279452711885232.Spec : Prop :=
  ∀ n, P11658279452711885232.a n = A329199 (n + 1)

end A329199

/-! ## A329199.P17507828853463503002

`A000195(A000523(A004050(n+1))+n+1)`
-/

namespace A329199.P17507828853463503002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A000523 (A004050 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A329199.P17507828853463503002

namespace A329199

/-- `A000195(A000523(A004050(n+1))+n+1)` -/
def P17507828853463503002.Spec : Prop :=
  ∀ n, P17507828853463503002.a n = A329199 (n + 1)

end A329199

/-! ## A329199.P2125972488805668996

`A000195(or(A057716(n), A110730(n+1)))`
-/

namespace A329199.P2125972488805668996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (Int.lor (A057716 n) (A110730 (n + 1))).toNat

end

end A329199.P2125972488805668996

namespace A329199

/-- `A000195(or(A057716(n), A110730(n+1)))` -/
def P2125972488805668996.Spec : Prop :=
  ∀ n, P2125972488805668996.a n = A329199 (n + 1)

end A329199

/-! ## A329199.P8222204203683429088

`A004218(A000124(n)-A259361(n²))`
-/

namespace A329199.P8222204203683429088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A000124 n - A259361 (n ^ 2)).toNat

end

end A329199.P8222204203683429088

namespace A329199

/-- `A004218(A000124(n)-A259361(n²))` -/
def P8222204203683429088.Spec : Prop :=
  ∀ n, P8222204203683429088.a n = A329199 (n + 1)

end A329199

/-! ## A329199.P7682577829099322427

`floor(log(A007969(2*(n+1))))-1`
-/

namespace A329199.P7682577829099322427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A007969 (2 * (n + 1)) : ℝ)⌋ - 1

end

end A329199.P7682577829099322427

namespace A329199

/-- `floor(log(A007969(2*(n+1))))-1` -/
def P7682577829099322427.Spec : Prop :=
  ∀ n, P7682577829099322427.a n = A329199 (n + 1)

end A329199

/-! ## A329199.P4341571284236247052

`A062153((n+1)²)-A062153(n+1)`
-/

namespace A329199.P4341571284236247052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 ((n + 1) ^ 2) - A062153 (n + 1)

end

end A329199.P4341571284236247052

namespace A329199

/-- `A062153((n+1)²)-A062153(n+1)` -/
def P4341571284236247052.Spec : Prop :=
  ∀ n, P4341571284236247052.a n = A329199 (n + 1)

end A329199

/-! ## A329199.P18258573659811319973

`A080342((n+1)²)-A080342(n+1)`
-/

namespace A329199.P18258573659811319973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 ((n + 1) ^ 2) - A080342 (n + 1)

end

end A329199.P18258573659811319973

namespace A329199

/-- `A080342((n+1)²)-A080342(n+1)` -/
def P18258573659811319973.Spec : Prop :=
  ∀ n, P18258573659811319973.a n = A329199 (n + 1)

end A329199

/-! ## A329199.P7508571425246804346

`A081604((n+1)²)-A081604(n+1)`
-/

namespace A329199.P7508571425246804346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 ((n + 1) ^ 2) - A081604 (n + 1)

end

end A329199.P7508571425246804346

namespace A329199

/-- `A081604((n+1)²)-A081604(n+1)` -/
def P7508571425246804346.Spec : Prop :=
  ∀ n, P7508571425246804346.a n = A329199 (n + 1)

end A329199

