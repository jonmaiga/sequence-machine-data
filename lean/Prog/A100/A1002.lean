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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C002
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A100201: Primes of the form 23*k+3.

The programs for A100201, the canonical program `A100201.P2773877056917933815` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100201 has offset 1).

The definition of A100201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3556 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100201.P2773877056917933815

`p?[23*n+3]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100201

/-- `p?[23*n+3]` -/
def P2773877056917933815.Spec : Prop :=
  ∀ n, (P2773877056917933815.a n : ℤ) = A100201 (n + 1)

theorem P2773877056917933815.correct : P2773877056917933815.Spec := by
  intro n
  simp only [A100201, Nat.add_sub_cancel]

end A100201

/-! ## A100201.P9888587596836732636

`or(1, p?[23*n-20])`
-/

namespace A100201.P9888587596836732636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (23 * n : ℤ) - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A100201.P9888587596836732636

namespace A100201

/-- `or(1, p?[23*n-20])` -/
def P9888587596836732636.Spec : Prop :=
  ∀ n, P9888587596836732636.a n = A100201 (n + 1)

end A100201

/-! ## A100201.P11268143028852969737

`p?[23*n-20]%A017510(n)`
-/

namespace A100201.P11268143028852969737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (23 * n : ℤ) - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017510 n)

end

end A100201.P11268143028852969737

namespace A100201

/-- `p?[23*n-20]%A017510(n)` -/
def P11268143028852969737.Spec : Prop :=
  ∀ n, P11268143028852969737.a n = A100201 (n + 1)

end A100201

/-! ## A100201.P11985628904929967605

`A000027(p?[A017545(n)+A017401(n)])`
-/

namespace A100201.P11985628904929967605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A100201.P11985628904929967605

namespace A100201

/-- `A000027(p?[A017545(n)+A017401(n)])` -/
def P11985628904929967605.Spec : Prop :=
  ∀ n, P11985628904929967605.a n = A100201 (n + 1)

end A100201

/-! ## A100201.P15943590021418801819

`A000027(p?[A190991(n)+A017293(n)])`
-/

namespace A100201.P15943590021418801819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + A017293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A100201.P15943590021418801819

namespace A100201

/-- `A000027(p?[A190991(n)+A017293(n)])` -/
def P15943590021418801819.Spec : Prop :=
  ∀ n, P15943590021418801819.a n = A100201 (n + 1)

end A100201

/-! ## A100201.P8141479991866776363

`A000027(p?[A139249(n+1)-A017017(n)])`
-/

namespace A100201.P8141479991866776363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139249 (n + 1) - A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A100201.P8141479991866776363

namespace A100201

/-- `A000027(p?[A139249(n+1)-A017017(n)])` -/
def P8141479991866776363.Spec : Prop :=
  ∀ n, P8141479991866776363.a n = A100201 (n + 1)

end A100201

/-! ## A100201.P13290145622546948307

`∩[A191021(n+1), A215148(n)+2]`
-/

namespace A100201.P13290145622546948307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100201.P13290145622546948307

namespace A100201

/-- `∩[A191021(n+1), A215148(n)+2]` -/
def P13290145622546948307.Spec : Prop :=
  ∀ n, (P13290145622546948307.a n : ℤ) = A100201 (n + 1)

end A100201

/-! ## A100201.P7523920167039113212

`∩[A296932(n+1), A215148(n)+2]`
-/

namespace A100201.P7523920167039113212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100201.P7523920167039113212

namespace A100201

/-- `∩[A296932(n+1), A215148(n)+2]` -/
def P7523920167039113212.Spec : Prop :=
  ∀ n, (P7523920167039113212.a n : ℤ) = A100201 (n + 1)

end A100201

/-! ## A100201.P2423735033223612061

`∩[A155450(2*n+1)-2, A191021(n+2)]`
-/

namespace A100201.P2423735033223612061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155450 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100201.P2423735033223612061

namespace A100201

/-- `∩[A155450(2*n+1)-2, A191021(n+2)]` -/
def P2423735033223612061.Spec : Prop :=
  ∀ n, (P2423735033223612061.a n : ℤ) = A100201 (n + 1)

end A100201

/-! ## A100201.P18228450957330161292

`∩[A155450(2*n+1)-2, A296932(n+2)]`
-/

namespace A100201.P18228450957330161292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155450 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100201.P18228450957330161292

namespace A100201

/-- `∩[A155450(2*n+1)-2, A296932(n+2)]` -/
def P18228450957330161292.Spec : Prop :=
  ∀ n, (P18228450957330161292.a n : ℤ) = A100201 (n + 1)

end A100201

/-! ## A100201.P5442843241260975338

`∩[A000040(n+1), A215148(n)+2]`
-/

namespace A100201.P5442843241260975338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100201.P5442843241260975338

namespace A100201

/-- `∩[A000040(n+1), A215148(n)+2]` -/
def P5442843241260975338.Spec : Prop :=
  ∀ n, (P5442843241260975338.a n : ℤ) = A100201 (n + 1)

end A100201

/-! ## A100201.P6331606144281639823

`∩[A004139(n+1), A215148(n)+2]`
-/

namespace A100201.P6331606144281639823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100201.P6331606144281639823

namespace A100201

/-- `∩[A004139(n+1), A215148(n)+2]` -/
def P6331606144281639823.Spec : Prop :=
  ∀ n, (P6331606144281639823.a n : ℤ) = A100201 (n + 1)

end A100201

/-! ## A100201.P9367763108642690039

`∩[A045319(n+1), A215148(n)+2]`
-/

namespace A100201.P9367763108642690039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100201.P9367763108642690039

namespace A100201

/-- `∩[A045319(n+1), A215148(n)+2]` -/
def P9367763108642690039.Spec : Prop :=
  ∀ n, (P9367763108642690039.a n : ℤ) = A100201 (n + 1)

end A100201

/-! ## A100201.P13283096388196073274

`∩[A051948(n+1), A215148(n)+2]`
-/

namespace A100201.P13283096388196073274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100201.P13283096388196073274

namespace A100201

/-- `∩[A051948(n+1), A215148(n)+2]` -/
def P13283096388196073274.Spec : Prop :=
  ∀ n, (P13283096388196073274.a n : ℤ) = A100201 (n + 1)

end A100201

/-! ## A100201.P8203734125725498543

`∩[A053813(n+1), A215148(n)+2]`
-/

namespace A100201.P8203734125725498543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100201.P8203734125725498543

namespace A100201

/-- `∩[A053813(n+1), A215148(n)+2]` -/
def P8203734125725498543.Spec : Prop :=
  ∀ n, (P8203734125725498543.a n : ℤ) = A100201 (n + 1)

end A100201

/-! ## A100201.P3614127913972024981

`∩[A064728(n+1), A215148(n)+2]`
-/

namespace A100201.P3614127913972024981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100201.P3614127913972024981

namespace A100201

/-- `∩[A064728(n+1), A215148(n)+2]` -/
def P3614127913972024981.Spec : Prop :=
  ∀ n, (P3614127913972024981.a n : ℤ) = A100201 (n + 1)

end A100201

/-! ## A100201.P4449332912583297841

`∩[A065091(n+1), A215148(n)+2]`
-/

namespace A100201.P4449332912583297841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100201.P4449332912583297841

namespace A100201

/-- `∩[A065091(n+1), A215148(n)+2]` -/
def P4449332912583297841.Spec : Prop :=
  ∀ n, (P4449332912583297841.a n : ℤ) = A100201 (n + 1)

end A100201

/-! ## A100201.P10300301371746371319

`∩[A065396(n+1), A215148(n)+2]`
-/

namespace A100201.P10300301371746371319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100201.P10300301371746371319

namespace A100201

/-- `∩[A065396(n+1), A215148(n)+2]` -/
def P10300301371746371319.Spec : Prop :=
  ∀ n, (P10300301371746371319.a n : ℤ) = A100201 (n + 1)

end A100201

/-! ## A100201.P17935168787724652936

`filter[A169598(2*n+1), A010051(#)]`
-/

namespace A100201.P17935168787724652936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169598 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A100201.P17935168787724652936

namespace A100201

/-- `filter[A169598(2*n+1), A010051(#)]` -/
def P17935168787724652936.Spec : Prop :=
  ∀ n, P17935168787724652936.a n = A100201 (n + 1)

end A100201

/-! ## A100201.P2843291954805328260

`A007913(p?[A017557(n)+A008593(n)])`
-/

namespace A100201.P2843291954805328260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017557 n + A008593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A100201.P2843291954805328260

namespace A100201

/-- `A007913(p?[A017557(n)+A008593(n)])` -/
def P2843291954805328260.Spec : Prop :=
  ∀ n, P2843291954805328260.a n = A100201 (n + 1)

end A100201

/-!
# A100202: Primes of the form 13*k + 3.

The programs for A100202, the canonical program `A100202.P13240288785830389677` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100202 has offset 1).

The definition of A100202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6526 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100202.P12871275013649998110

`∪[A142509(n+1), A142521(n+1)]`
-/

namespace A100202.P12871275013649998110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100202.P12871275013649998110

namespace A100202

/-- `∪[A142509(n+1), A142521(n+1)]` -/
def P12871275013649998110.Spec : Prop :=
  ∀ n, (P12871275013649998110.a n : ℤ) = A100202 (n + 1)

end A100202

/-! ## A100202.P13240288785830389677

`p?[13*n+3]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100202

/-- `p?[13*n+3]` -/
def P13240288785830389677.Spec : Prop :=
  ∀ n, (P13240288785830389677.a n : ℤ) = A100202 (n + 1)

theorem P13240288785830389677.correct : P13240288785830389677.Spec := by
  intro n
  simp only [A100202, Nat.add_sub_cancel]

end A100202

/-! ## A100202.P15860091393851239014

`or(1, p?[n-25*(3-n)])`
-/

namespace A100202.P15860091393851239014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 25 * (3 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A100202.P15860091393851239014

namespace A100202

/-- `or(1, p?[n-25*(3-n)])` -/
def P15860091393851239014.Spec : Prop :=
  ∀ n, P15860091393851239014.a n = A100202 (n + 1)

end A100202

/-! ## A100202.P9458148954597266536

`∩[A214889(n+1), A215131(n+1)]`
-/

namespace A100202.P9458148954597266536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100202.P9458148954597266536

namespace A100202

/-- `∩[A214889(n+1), A215131(n+1)]` -/
def P9458148954597266536.Spec : Prop :=
  ∀ n, (P9458148954597266536.a n : ℤ) = A100202 (n + 1)

end A100202

/-! ## A100202.P2064429141837079387

`∩[A215131(n+1), A215135(n+1)]`
-/

namespace A100202.P2064429141837079387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100202.P2064429141837079387

namespace A100202

/-- `∩[A215131(n+1), A215135(n+1)]` -/
def P2064429141837079387.Spec : Prop :=
  ∀ n, (P2064429141837079387.a n : ℤ) = A100202 (n + 1)

end A100202

/-! ## A100202.P7772510312873760138

`∩[A215131(n+1), A215280(n+1)]`
-/

namespace A100202.P7772510312873760138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100202.P7772510312873760138

namespace A100202

/-- `∩[A215131(n+1), A215280(n+1)]` -/
def P7772510312873760138.Spec : Prop :=
  ∀ n, (P7772510312873760138.a n : ℤ) = A100202 (n + 1)

end A100202

/-! ## A100202.P1064929399095415674

`∩[A215131(n+1), A215359(n+1)]`
-/

namespace A100202.P1064929399095415674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100202.P1064929399095415674

namespace A100202

/-- `∩[A215131(n+1), A215359(n+1)]` -/
def P1064929399095415674.Spec : Prop :=
  ∀ n, (P1064929399095415674.a n : ℤ) = A100202 (n + 1)

end A100202

/-! ## A100202.P9670049878559312601

`∩[A215131(n+1), A215375(n+1)]`
-/

namespace A100202.P9670049878559312601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100202.P9670049878559312601

namespace A100202

/-- `∩[A215131(n+1), A215375(n+1)]` -/
def P9670049878559312601.Spec : Prop :=
  ∀ n, (P9670049878559312601.a n : ℤ) = A100202 (n + 1)

end A100202

/-! ## A100202.P10494730304663716216

`∩[A215131(n+1), A215379(n+1)]`
-/

namespace A100202.P10494730304663716216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100202.P10494730304663716216

namespace A100202

/-- `∩[A215131(n+1), A215379(n+1)]` -/
def P10494730304663716216.Spec : Prop :=
  ∀ n, (P10494730304663716216.a n : ℤ) = A100202 (n + 1)

end A100202

/-! ## A100202.P17931287851592262902

`∩[A215131(n+1), A215303(n+1)]`
-/

namespace A100202.P17931287851592262902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100202.P17931287851592262902

namespace A100202

/-- `∩[A215131(n+1), A215303(n+1)]` -/
def P17931287851592262902.Spec : Prop :=
  ∀ n, (P17931287851592262902.a n : ℤ) = A100202 (n + 1)

end A100202

/-! ## A100202.P2665119706758609692

`∩[A167119(n+1), A296937(n+1)]`
-/

namespace A100202.P2665119706758609692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100202.P2665119706758609692

namespace A100202

/-- `∩[A167119(n+1), A296937(n+1)]` -/
def P2665119706758609692.Spec : Prop :=
  ∀ n, (P2665119706758609692.a n : ℤ) = A100202 (n + 1)

end A100202

/-! ## A100202.P7661577207660455884

`∩[A214889(n+1), A296937(n+1)]`
-/

namespace A100202.P7661577207660455884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100202.P7661577207660455884

namespace A100202

/-- `∩[A214889(n+1), A296937(n+1)]` -/
def P7661577207660455884.Spec : Prop :=
  ∀ n, (P7661577207660455884.a n : ℤ) = A100202 (n + 1)

end A100202

/-! ## A100202.P5222292214974041014

`∩[A215103(n+1), A296937(n+1)]`
-/

namespace A100202.P5222292214974041014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100202.P5222292214974041014

namespace A100202

/-- `∩[A215103(n+1), A296937(n+1)]` -/
def P5222292214974041014.Spec : Prop :=
  ∀ n, (P5222292214974041014.a n : ℤ) = A100202 (n + 1)

end A100202

/-! ## A100202.P14030244128112714808

`∩[A215131(n+1), A296937(n+1)]`
-/

namespace A100202.P14030244128112714808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100202.P14030244128112714808

namespace A100202

/-- `∩[A215131(n+1), A296937(n+1)]` -/
def P14030244128112714808.Spec : Prop :=
  ∀ n, (P14030244128112714808.a n : ℤ) = A100202 (n + 1)

end A100202

/-! ## A100202.P5101966231802330900

`∩[A215155(n+1), A296937(n+1)]`
-/

namespace A100202.P5101966231802330900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100202.P5101966231802330900

namespace A100202

/-- `∩[A215155(n+1), A296937(n+1)]` -/
def P5101966231802330900.Spec : Prop :=
  ∀ n, (P5101966231802330900.a n : ℤ) = A100202 (n + 1)

end A100202

/-! ## A100202.P10155240363709120586

`∩[A215371(n+1), A296937(n+1)]`
-/

namespace A100202.P10155240363709120586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100202.P10155240363709120586

namespace A100202

/-- `∩[A215371(n+1), A296937(n+1)]` -/
def P10155240363709120586.Spec : Prop :=
  ∀ n, (P10155240363709120586.a n : ℤ) = A100202 (n + 1)

end A100202

/-! ## A100202.P18102016017840786482

`∩[A215375(n+1), A296937(n+1)]`
-/

namespace A100202.P18102016017840786482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100202.P18102016017840786482

namespace A100202

/-- `∩[A215375(n+1), A296937(n+1)]` -/
def P18102016017840786482.Spec : Prop :=
  ∀ n, (P18102016017840786482.a n : ℤ) = A100202 (n + 1)

end A100202

/-! ## A100202.P2322006907721542217

`∩[A215387(n+1), A296937(n+1)]`
-/

namespace A100202.P2322006907721542217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100202.P2322006907721542217

namespace A100202

/-- `∩[A215387(n+1), A296937(n+1)]` -/
def P2322006907721542217.Spec : Prop :=
  ∀ n, (P2322006907721542217.a n : ℤ) = A100202 (n + 1)

end A100202

/-! ## A100202.P14761310476503697925

`∩[A038883(n+1), A167119(n+1)]`
-/

namespace A100202.P14761310476503697925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100202.P14761310476503697925

namespace A100202

/-- `∩[A038883(n+1), A167119(n+1)]` -/
def P14761310476503697925.Spec : Prop :=
  ∀ n, (P14761310476503697925.a n : ℤ) = A100202 (n + 1)

end A100202

/-! ## A100202.P7506126781038914624

`∩[A038883(n+1), A214889(n+1)]`
-/

namespace A100202.P7506126781038914624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100202.P7506126781038914624

namespace A100202

/-- `∩[A038883(n+1), A214889(n+1)]` -/
def P7506126781038914624.Spec : Prop :=
  ∀ n, (P7506126781038914624.a n : ℤ) = A100202 (n + 1)

end A100202

/-!
# A100203: Primes of the form 37n+3.

The programs for A100203, the canonical program `A100203.P16095460631761891307` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100203 has offset 1).

The definition of A100203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100203.P16095460631761891307

`p?[37*n+3]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100203

/-- `p?[37*n+3]` -/
def P16095460631761891307.Spec : Prop :=
  ∀ n, (P16095460631761891307.a n : ℤ) = A100203 (n + 1)

theorem P16095460631761891307.correct : P16095460631761891307.Spec := by
  intro n
  simp only [A100203, Nat.add_sub_cancel]

end A100203

/-! ## A100203.P3772612136078473183

`or(1, p?[a(n-1)+37])` with `a(0)=3`
-/

namespace A100203.P3772612136078473183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 37

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A100203.P3772612136078473183

namespace A100203

/-- `or(1, p?[a(n-1)+37])` -/
def P3772612136078473183.Spec : Prop :=
  ∀ n, (P3772612136078473183.a n : ℤ) = A100203 (n + 1)

end A100203

/-! ## A100203.P18244790959982872032

`A000027(p?[A249674(n)+A017017(n)])`
-/

namespace A100203.P18244790959982872032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A100203.P18244790959982872032

namespace A100203

/-- `A000027(p?[A249674(n)+A017017(n)])` -/
def P18244790959982872032.Spec : Prop :=
  ∀ n, P18244790959982872032.a n = A100203 (n + 1)

end A100203

/-! ## A100203.P10458157254638744061

`A007913(p?[A248572(n)+A017089(n)])`
-/

namespace A100203.P10458157254638744061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A100203.P10458157254638744061

namespace A100203

/-- `A007913(p?[A248572(n)+A017089(n)])` -/
def P10458157254638744061.Spec : Prop :=
  ∀ n, P10458157254638744061.a n = A100203 (n + 1)

end A100203

/-! ## A100203.P1239904356392785905

`A007947(p?[A249674(n)+A017017(n)])`
-/

namespace A100203.P1239904356392785905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A100203.P1239904356392785905

namespace A100203

/-- `A007947(p?[A249674(n)+A017017(n)])` -/
def P1239904356392785905.Spec : Prop :=
  ∀ n, P1239904356392785905.a n = A100203 (n + 1)

end A100203

/-!
# A100204: Numbers of cubes in the range [n^2, (n+1)^2].

The programs for A100204, the canonical program `A100204.P3816649659401452373` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100204 has offset 0).

The definition of A100204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100204.P3816649659401452373

`floor((n+1)^(2/3))-ceil(n^(2/3))+1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100204

/-- `floor((n+1)^(2/3))-ceil(n^(2/3))+1` -/
def P3816649659401452373.Spec : Prop :=
  ∀ n, P3816649659401452373.a n = A100204 n

theorem P3816649659401452373.correct : P3816649659401452373.Spec := by
  intro n
  simp only [A100204]

end A100204

/-! ## A100204.P16901260597462037185

`(A010057(n)+Δ[A100196(n)])%4`
-/

namespace A100204.P16901260597462037185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010057 n + (f1 (n + 1) - f1 n)) 4

end

end A100204.P16901260597462037185

namespace A100204

/-- `(A010057(n)+Δ[A100196(n)])%4` -/
def P16901260597462037185.Spec : Prop :=
  ∀ n, P16901260597462037185.a n = A100204 n

end A100204

/-! ## A100204.P881681456506848229

`A000129(A010057(n)+Δ[A100196(n)])`
-/

namespace A100204.P881681456506848229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A010057 n + (f1 (n + 1) - f1 n)).toNat

end

end A100204.P881681456506848229

namespace A100204

/-- `A000129(A010057(n)+Δ[A100196(n)])` -/
def P881681456506848229.Spec : Prop :=
  ∀ n, P881681456506848229.a n = A100204 n

end A100204

/-! ## A100204.P12140515230074965629

`A010888(A010057(n)+Δ[A100196(n)])`
-/

namespace A100204.P12140515230074965629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A010057 n + (f1 (n + 1) - f1 n)).toNat

end

end A100204.P12140515230074965629

namespace A100204

/-- `A010888(A010057(n)+Δ[A100196(n)])` -/
def P12140515230074965629.Spec : Prop :=
  ∀ n, P12140515230074965629.a n = A100204 n

end A100204

/-! ## A100204.P11633021953448942809

`A022290(A010057(n)+Δ[A100196(n)])`
-/

namespace A100204.P11633021953448942809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A010057 n + (f1 (n + 1) - f1 n)).toNat

end

end A100204.P11633021953448942809

namespace A100204

/-- `A022290(A010057(n)+Δ[A100196(n)])` -/
def P11633021953448942809.Spec : Prop :=
  ∀ n, P11633021953448942809.a n = A100204 n

end A100204

/-! ## A100204.P6881498826275270312

`Δ[A048766(n)+A048766(A077107(n))]`
-/

namespace A100204.P6881498826275270312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n + A048766 (A077107 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100204.P6881498826275270312

namespace A100204

/-- `Δ[A048766(n)+A048766(A077107(n))]` -/
def P6881498826275270312.Spec : Prop :=
  ∀ n, P6881498826275270312.a n = A100204 n

end A100204

/-!
# A100205: Indices of Kimberling centers incidents on central line called the Fermat axis.

The programs for A100205, there is no canonical definition to state claims against.
-/

/-! ## A100205.P284171090205880204

`A320881(a(n-2)+14)` with `a(0)=6, a(1)=13, a(2)=14`
-/

namespace A100205.P284171090205880204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 13, 14] fun n a =>
  A320881 (a (n - 2) + 14).toNat

end

end A100205.P284171090205880204

/-!
# A100206: Row sums of Clark's triangle A046902.

The programs for A100206, the canonical program `A100206.P14311148647834747884` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100206 has offset 0).

The definition of A100206 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100206.P14311148647834747884

`3*a(n-1)-2*a(n-2)` with `a(0)=0, a(1)=7, a(2)=20`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100206

/-- `3*a(n-1)-2*a(n-2)` -/
def P14311148647834747884.Spec : Prop :=
  ∀ n, P14311148647834747884.a n = A100206 n

theorem P14311148647834747884.correct : P14311148647834747884.Spec := by
  intro n
  simp only [A100206]

end A100206

/-! ## A100206.P9947220836347296055

`ogf((7x-x^2)/(1-3x+2x^2))`
-/

namespace A100206.P9947220836347296055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, -1] [1, -3, 2] n

end

end A100206.P9947220836347296055

namespace A100206

/-- `ogf((7x-x^2)/(1-3x+2x^2))` -/
def P9947220836347296055.Spec : Prop :=
  ∀ n, P9947220836347296055.a n = A100206 n

end A100206

/-! ## A100206.P15468874385384850102

`2*(a(n-1)+3)` with `a(0)=0, a(1)=7`
-/

namespace A100206.P15468874385384850102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n a =>
  2 * (a (n - 1) + 3)

end

end A100206.P15468874385384850102

namespace A100206

/-- `2*(a(n-1)+3)` -/
def P15468874385384850102.Spec : Prop :=
  ∀ n, (P15468874385384850102.a n : ℤ) = A100206 n

end A100206

/-! ## A100206.P2007676278540801217

`∑[2*a(n-1)]` with `a(0)=0, a(1)=7, a(2)=13`
-/

namespace A100206.P2007676278540801217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7, 13] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100206.P2007676278540801217

namespace A100206

/-- `∑[2*a(n-1)]` -/
def P2007676278540801217.Spec : Prop :=
  ∀ n, (P2007676278540801217.a n : ℤ) = A100206 n

end A100206

/-! ## A100206.P1226334202394456171

`round(13*(2^n-1)/2)`
-/

namespace A100206.P1226334202394456171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (13 * (((2 ^ n : ℤ) - 1 : ℚ) / 2))

end

end A100206.P1226334202394456171

namespace A100206

/-- `round(13*(2^n-1)/2)` -/
def P1226334202394456171.Spec : Prop :=
  ∀ n, P1226334202394456171.a n = A100206 n

end A100206

/-! ## A100206.P2012185211274097810

`8-2*(1-a(n-1))` with `a(0)=0, a(1)=7`
-/

namespace A100206.P2012185211274097810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n a =>
  8 - 2 * (1 - a (n - 1))

end

end A100206.P2012185211274097810

namespace A100206

/-- `8-2*(1-a(n-1))` -/
def P2012185211274097810.Spec : Prop :=
  ∀ n, P2012185211274097810.a n = A100206 n

end A100206

/-! ## A100206.P13976928698199796063

`a(n-1)+a(n-1)+6` with `a(0)=0, a(1)=7`
-/

namespace A100206.P13976928698199796063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n a =>
  a (n - 1) + (a (n - 1) + 6)

end

end A100206.P13976928698199796063

namespace A100206

/-- `a(n-1)+a(n-1)+6` -/
def P13976928698199796063.Spec : Prop :=
  ∀ n, (P13976928698199796063.a n : ℤ) = A100206 n

end A100206

/-! ## A100206.P4951784694730992107

`A160825(2*(n+1))-6`
-/

namespace A100206.P4951784694730992107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160825 (2 * (n + 1)) - 6

end

end A100206.P4951784694730992107

namespace A100206

/-- `A160825(2*(n+1))-6` -/
def P4951784694730992107.Spec : Prop :=
  ∀ n, P4951784694730992107.a n = A100206 n

end A100206

/-! ## A100206.P9461987748641228475

`floor(2^(n-1))+6*A000225(n)`
-/

namespace A100206.P9461987748641228475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 6 * A000225 n

end

end A100206.P9461987748641228475

namespace A100206

/-- `floor(2^(n-1))+6*A000225(n)` -/
def P9461987748641228475.Spec : Prop :=
  ∀ n, P9461987748641228475.a n = A100206 n

end A100206

/-! ## A100206.P490469717200312197

`A048489(n)-A011782(n)`
-/

namespace A100206.P490469717200312197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048489 n - A011782 n

end

end A100206.P490469717200312197

namespace A100206

/-- `A048489(n)-A011782(n)` -/
def P490469717200312197.Spec : Prop :=
  ∀ n, P490469717200312197.a n = A100206 n

end A100206

/-! ## A100206.P7548201323168176506

`A048490(n)-A083329(n)`
-/

namespace A100206.P7548201323168176506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048490 n - A083329 n

end

end A100206.P7548201323168176506

namespace A100206

/-- `A048490(n)-A083329(n)` -/
def P7548201323168176506.Spec : Prop :=
  ∀ n, P7548201323168176506.a n = A100206 n

end A100206

/-! ## A100206.P12172958383244761086

`A048491(n)-A131051(n+1)`
-/

namespace A100206.P12172958383244761086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048491 n - A131051 (n + 1)

end

end A100206.P12172958383244761086

namespace A100206

/-- `A048491(n)-A131051(n+1)` -/
def P12172958383244761086.Spec : Prop :=
  ∀ n, P12172958383244761086.a n = A100206 n

end A100206

/-! ## A100206.P10929218781617682896

`A003945(n)+A048487(n)-2`
-/

namespace A100206.P10929218781617682896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n + (A048487 n - 2)

end

end A100206.P10929218781617682896

namespace A100206

/-- `A003945(n)+A048487(n)-2` -/
def P10929218781617682896.Spec : Prop :=
  ∀ n, P10929218781617682896.a n = A100206 n

end A100206

/-! ## A100206.P8392859022468196844

`Δ[A053209(n)]+2*A036563(n)`
-/

namespace A100206.P8392859022468196844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A036563 n

end

end A100206.P8392859022468196844

namespace A100206

/-- `Δ[A053209(n)]+2*A036563(n)` -/
def P8392859022468196844.Spec : Prop :=
  ∀ n, P8392859022468196844.a n = A100206 n

end A100206

/-! ## A100206.P16735956285427592788

`A224692(2*n)-A131051(n+1)`
-/

namespace A100206.P16735956285427592788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224692 (2 * n) - A131051 (n + 1)

end

end A100206.P16735956285427592788

namespace A100206

/-- `A224692(2*n)-A131051(n+1)` -/
def P16735956285427592788.Spec : Prop :=
  ∀ n, P16735956285427592788.a n = A100206 n

end A100206

/-! ## A100206.P14950082064159077010

`A028399(n+2)+A003945(n)+A000918(n)`
-/

namespace A100206.P14950082064159077010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028399 (n + 2) + (A003945 n + A000918 n)

end

end A100206.P14950082064159077010

namespace A100206

/-- `A028399(n+2)+A003945(n)+A000918(n)` -/
def P14950082064159077010.Spec : Prop :=
  ∀ n, P14950082064159077010.a n = A100206 n

end A100206

/-! ## A100206.P6404685714391554857

`A154251(n+1)-(A083329(n)+A000079(n))`
-/

namespace A100206.P6404685714391554857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154251 (n + 1) - (A083329 n + A000079 n)

end

end A100206.P6404685714391554857

namespace A100206

/-- `A154251(n+1)-(A083329(n)+A000079(n))` -/
def P6404685714391554857.Spec : Prop :=
  ∀ n, P6404685714391554857.a n = A100206 n

end A100206

/-! ## A100206.P8600584431862414361

`A154251(n+1)-(A095121(n)+A094373(n))`
-/

namespace A100206.P8600584431862414361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154251 (n + 1) - (A095121 n + A094373 n)

end

end A100206.P8600584431862414361

namespace A100206

/-- `A154251(n+1)-(A095121(n)+A094373(n))` -/
def P8600584431862414361.Spec : Prop :=
  ∀ n, P8600584431862414361.a n = A100206 n

end A100206

/-! ## A100206.P12629105493896255906

`A139635(n+1)-A053209(n)`
-/

namespace A100206.P12629105493896255906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139635 (n + 1) - A053209 n

end

end A100206.P12629105493896255906

namespace A100206

/-- `A139635(n+1)-A053209(n)` -/
def P12629105493896255906.Spec : Prop :=
  ∀ n, P12629105493896255906.a n = A100206 n

end A100206

/-! ## A100206.P16197143741124301795

`A154252(n+1)-(A095121(n)+A003945(n))`
-/

namespace A100206.P16197143741124301795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154252 (n + 1) - (A095121 n + A003945 n)

end

end A100206.P16197143741124301795

namespace A100206

/-- `A154252(n+1)-(A095121(n)+A003945(n))` -/
def P16197143741124301795.Spec : Prop :=
  ∀ n, P16197143741124301795.a n = A100206 n

end A100206

/-!
# A100207: a(n) = 4 + 8*n + 10*n^2 + 4*n^3.

The programs for A100207, the canonical program `A100207.P5180048204762310875` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100207 has offset 0).

The definition of A100207 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4+8*n+10*n²+4*n^3` (program `A100207.P5180048204762310875`, by `A100207.P5180048204762310875.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100207.P13665076969700300789

`2*(2*(n+1)^3-(n+1)²+1)`
-/

namespace A100207.P13665076969700300789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 * (n + 1) ^ 3 : ℤ) - ((n + 1) ^ 2 : ℤ) + 1)

end

end A100207.P13665076969700300789

namespace A100207

/-- `2*(2*(n+1)^3-(n+1)²+1)` -/
def P13665076969700300789.Spec : Prop :=
  ∀ n, P13665076969700300789.a n = A100207 n

theorem P13665076969700300789.correct : P13665076969700300789.Spec := by
  intro n
  simp only [A100207, Nat.add_sub_cancel, A100207.P13665076969700300789.a, A100207.P5180048204762310875.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A100207

/-! ## A100207.P5180048204762310875

`4+8*n+10*n²+4*n^3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100207

/-- `4+8*n+10*n²+4*n^3` -/
def P5180048204762310875.Spec : Prop :=
  ∀ n, (P5180048204762310875.a n : ℤ) = A100207 n

theorem P5180048204762310875.correct : P5180048204762310875.Spec := by
  intro n
  simp only [A100207]

end A100207

/-! ## A100207.P1661186709279758895

`Δ[∑[2*n*C(2*n, 2)]+2*n]`
-/

namespace A100207.P1661186709279758895
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.choose (2 * n) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A100207.P1661186709279758895

namespace A100207

/-- `Δ[∑[2*n*C(2*n, 2)]+2*n]` -/
def P1661186709279758895.Spec : Prop :=
  ∀ n, P1661186709279758895.a n = A100207 n

end A100207

/-!
# A100208: Minimal permutation of the natural numbers such that the sum of squares of two consecutive terms is a prime.

The programs for A100208, there is no canonical definition to state claims against.
-/

/-! ## A100208.P4584984213832408458

`sqrt(A073658(n+1))`
-/

namespace A100208.P4584984213832408458
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A073658 (n + 1) : ℝ)

end

end A100208.P4584984213832408458

/-! ## A100208.P12180606136907359869

`root(A073658(n+1), A040001(2*n))`
-/

namespace A100208.P12180606136907359869
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A073658 (n + 1) : ℝ) ^ (1 / (A040001 (2 * n) : ℝ))

end

end A100208.P12180606136907359869

/-! ## A100208.P12490195214498098493

`root(A073658(n+1), A000040(gcd(n, n+1)))`
-/

namespace A100208.P12490195214498098493
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A073658 (n + 1) : ℝ) ^ (1 / (A000040 (Nat.gcd n (n + 1)) : ℝ))

end

end A100208.P12490195214498098493

/-! ## A100208.P118295279317896747

`root(A073658(n+1), A001316(A001316(n)))`
-/

namespace A100208.P118295279317896747
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A073658 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A100208.P118295279317896747

/-! ## A100208.P18404954319263492569

`root(A073658(n+1), 2%A100209(n+1))`
-/

namespace A100208.P18404954319263492569
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A073658 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A100209 (n + 1)) : ℝ))

end

end A100208.P18404954319263492569

/-! ## A100208.P15411441673767558369

`A000194(A073658(n+1)+1)`
-/

namespace A100208.P15411441673767558369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A073658 (n + 1) + 1).toNat

end

end A100208.P15411441673767558369

/-! ## A100208.P9776608804711672090

`A000196(A073658(n+1)+1)`
-/

namespace A100208.P9776608804711672090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A073658 (n + 1) + 1).toNat

end

end A100208.P9776608804711672090

/-! ## A100208.P1080140440139556637

`1-A196199(A073658(n+1)+1)`
-/

namespace A100208.P1080140440139556637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A196199 (A073658 (n + 1) + 1).toNat

end

end A100208.P1080140440139556637

/-! ## A100208.P1764788960936045652

`lcm(A020985(n), A196199(A073658(n+1)))`
-/

namespace A100208.P1764788960936045652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A196199 (A073658 (n + 1)).toNat)

end

end A100208.P1764788960936045652

/-!
# A100209: a(n) = A100208(n)^2 + A100208(n+1)^2.

The programs for A100209, there is no canonical definition to state claims against.
-/

/-! ## A100209.P15392032118597015595

`A100208(n+1)²+A100208(n+2)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A100209.P15392032118597015595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100208 (n + 1) ^ 2 + A100208 (n + 2) ^ 2

end

end A100209.P15392032118597015595

/-! ## A100209.P9175494183929917670

`A073658(n+1)+A073658(n+2)`
-/

namespace A100209.P9175494183929917670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073658 (n + 1) + A073658 (n + 2)

end

end A100209.P9175494183929917670

/-! ## A100209.P3933172233087723604

`abs(Δ[A038608(A073658(n+1))])`
-/

namespace A100209.P3933172233087723604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A073658 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A100209.P3933172233087723604

/-! ## A100209.P10341796199383353592

`abs(Δ[A038608(A100208(n+1)²)])`
-/

namespace A100209.P10341796199383353592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A100208 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A100209.P10341796199383353592

/-! ## A100209.P9938832808775977553

`A006530(abs(Δ[A073658(n+1)²]))`
-/

namespace A100209.P9938832808775977553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073658 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |f1 (n + 1) - f1 n|.toNat

end

end A100209.P9938832808775977553

/-!
# A100212: Expansion of 4*x^4*(2 + x)/(1 - 2*x + 2*x^2 - 4*x^4 + 8*x^5 - 8*x^6).

The programs for A100212, the canonical program `A100212.P15673562203200714191` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100212 has offset 0).

The definition of A100212 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((8x^4+4x^5)/(1-2x+2x^2-4x^4+8x^5-8x^6))` (program `A100212.P15673562203200714191`, by `A100212.P15673562203200714191.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100212.P15673562203200714191

`ogf((8x^4+4x^5)/(1-2x+2x^2-4x^4+8x^5-8x^6))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100212

/-- `ogf((8x^4+4x^5)/(1-2x+2x^2-4x^4+8x^5-8x^6))` -/
def P15673562203200714191.Spec : Prop :=
  ∀ n, P15673562203200714191.a n = A100212 n

theorem P15673562203200714191.correct : P15673562203200714191.Spec := by
  intro n
  simp only [A100212]

end A100212

/-! ## A100212.P9006808712330023038

`2*a(n-1)-2*a(n-2)+4*a(n-4)-8*a(n-5)+8*a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=8, a(5)=20`
-/

namespace A100212.P9006808712330023038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 8, 20] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 4 * a (n - 4) - 8 * a (n - 5) + 8 * a (n - 6)

end

end A100212.P9006808712330023038

namespace A100212

/-- `2*a(n-1)-2*a(n-2)+4*a(n-4)-8*a(n-5)+8*a(n-6)` -/
def P9006808712330023038.Spec : Prop :=
  ∀ n, P9006808712330023038.a n = A100212 n

end A100212

/-! ## A100212.P15074255255642629320

`A100213(n+1)-A100215(n)`
-/

namespace A100212.P15074255255642629320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100213 (n + 1) - A100215 n

end

end A100212.P15074255255642629320

namespace A100212

/-- `A100213(n+1)-A100215(n)` -/
def P15074255255642629320.Spec : Prop :=
  ∀ n, P15074255255642629320.a n = A100212 n

end A100212

/-! ## A100212.P4849106745376716689

`A100213(C(n+1, n))%A100215(n)`
-/

namespace A100212.P4849106745376716689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100213 (Nat.choose (n + 1) n)) (A100215 n)

end

end A100212.P4849106745376716689

namespace A100212

/-- `A100213(C(n+1, n))%A100215(n)` -/
def P4849106745376716689.Spec : Prop :=
  ∀ n, P4849106745376716689.a n = A100212 n

end A100212

/-! ## A100212.P737011781999377028

`A100213(A000027(n+1))%A100215(n)`
-/

namespace A100212.P737011781999377028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100213 (A000027 (n + 1)).toNat) (A100215 n)

end

end A100212.P737011781999377028

namespace A100212

/-- `A100213(A000027(n+1))%A100215(n)` -/
def P737011781999377028.Spec : Prop :=
  ∀ n, P737011781999377028.a n = A100212 n

end A100212

/-! ## A100212.P2227543179932668903

`lcm(A100213(n+1)%A100215(n), A001316(n))`
-/

namespace A100212.P2227543179932668903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A100213 (n + 1)) (A100215 n)) (A001316 n)

end

end A100212.P2227543179932668903

namespace A100212

/-- `lcm(A100213(n+1)%A100215(n), A001316(n))` -/
def P2227543179932668903.Spec : Prop :=
  ∀ n, (P2227543179932668903.a n : ℤ) = A100212 n

end A100212

/-!
# A100213: Expansion of g.f.: x*(4-7*x+2*x^2-8*x^4+16*x^5-16*x^6)/((1-2*x) * (1-2*x^2) * (1-2*x+2*x^2) * (1+2*x^2)).

The programs for A100213, the canonical program `A100213.P10737119900918072692` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100213 has offset 1).

The definition of A100213 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((4-7x+2x^2-8x^4+16x^5-16x^6)/(1-4x+6x^2-4x^3-4x^4+16x^5-24x^6+16x^7))` (program `A100213.P10737119900918072692`, by `A100213.P10737119900918072692.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100213.P10737119900918072692

`ogf((4-7x+2x^2-8x^4+16x^5-16x^6)/(1-4x+6x^2-4x^3-4x^4+16x^5-24x^6+16x^7))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100213

/-- `ogf((4-7x+2x^2-8x^4+16x^5-16x^6)/(1-4x+6x^2-4x^3-4x^4+16x^5-24x^6+16x^7))` -/
def P10737119900918072692.Spec : Prop :=
  ∀ n, P10737119900918072692.a n = A100213 (n + 1)

theorem P10737119900918072692.correct : P10737119900918072692.Spec := by
  intro n
  simp only [A100213, Nat.add_sub_cancel]

end A100213

/-! ## A100213.P18322163746539117801

`A100215(n)+A100212(n)`
-/

namespace A100213.P18322163746539117801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100215 n + A100212 n

end

end A100213.P18322163746539117801

namespace A100213

/-- `A100215(n)+A100212(n)` -/
def P18322163746539117801.Spec : Prop :=
  ∀ n, P18322163746539117801.a n = A100213 (n + 1)

end A100213

/-! ## A100213.P3816747376457646340

`A100215(n)-A057428(n)*A100212(n)`
-/

namespace A100213.P3816747376457646340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100215 n - A057428 n * A100212 n

end

end A100213.P3816747376457646340

namespace A100213

/-- `A100215(n)-A057428(n)*A100212(n)` -/
def P3816747376457646340.Spec : Prop :=
  ∀ n, P3816747376457646340.a n = A100213 (n + 1)

end A100213

/-! ## A100213.P13530919371972883671

`A100212(n)+A000079(n+1)+A090131(n)+A009545(n+1)`
-/

namespace A100213.P13530919371972883671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100212 n + (A000079 (n + 1) + (A090131 n + A009545 (n + 1)))

end

end A100213.P13530919371972883671

namespace A100213

/-- `A100212(n)+A000079(n+1)+A090131(n)+A009545(n+1)` -/
def P13530919371972883671.Spec : Prop :=
  ∀ n, P13530919371972883671.a n = A100213 (n + 1)

end A100213

/-! ## A100213.P5384096038540789020

`A100212(n)+∑[5*A038503(n)]-A038503(n+1)`
-/

namespace A100213.P5384096038540789020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A038503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100212 n + (∑ j ∈ Finset.range (n + 1), f1 j - A038503 (n + 1))

end

end A100213.P5384096038540789020

namespace A100213

/-- `A100212(n)+∑[5*A038503(n)]-A038503(n+1)` -/
def P5384096038540789020.Spec : Prop :=
  ∀ n, P5384096038540789020.a n = A100213 (n + 1)

end A100213

/-! ## A100213.P8679047771948094297

`A100212(n)+A100216(n+1)-2*A000749(n+1)`
-/

namespace A100213.P8679047771948094297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100212 n + (A100216 (n + 1) - 2 * A000749 (n + 1))

end

end A100213.P8679047771948094297

namespace A100213

/-- `A100212(n)+A100216(n+1)-2*A000749(n+1)` -/
def P8679047771948094297.Spec : Prop :=
  ∀ n, P8679047771948094297.a n = A100213 (n + 1)

end A100213

/-! ## A100213.P4592614005805294122

`A100212(n)+A009545(n)+4*A323346(∑[n])`
-/

namespace A100213.P4592614005805294122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100212 n + (A009545 n + 4 * A323346 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A100213.P4592614005805294122

namespace A100213

/-- `A100212(n)+A009545(n)+4*A323346(∑[n])` -/
def P4592614005805294122.Spec : Prop :=
  ∀ n, P4592614005805294122.a n = A100213 (n + 1)

end A100213

/-!
# A100214: a(n) = 4*n^3 + 4.

The programs for A100214, the canonical program `A100214.P6911219849584348591` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100214 has offset 0).

The definition of A100214 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n^3+4` (program `A100214.P6911219849584348591`, by `A100214.P6911219849584348591.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100214.P2306242609056813672

`4*(n^3+1)`
-/

namespace A100214.P2306242609056813672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n ^ 3 + 1)

end

end A100214.P2306242609056813672

namespace A100214

/-- `4*(n^3+1)` -/
def P2306242609056813672.Spec : Prop :=
  ∀ n, (P2306242609056813672.a n : ℤ) = A100214 n

theorem P2306242609056813672.correct : P2306242609056813672.Spec := by
  intro n
  simp only [A100214, Nat.add_sub_cancel, A100214.P2306242609056813672.a, A100214.P6911219849584348591.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A100214

/-! ## A100214.P6911219849584348591

`4*n^3+4`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100214

/-- `4*n^3+4` -/
def P6911219849584348591.Spec : Prop :=
  ∀ n, (P6911219849584348591.a n : ℤ) = A100214 n

theorem P6911219849584348591.correct : P6911219849584348591.Spec := by
  intro n
  simp only [A100214]

end A100214

/-! ## A100214.P7237062453955822415

`∑[24*C(n, 2)+4]`
-/

namespace A100214.P7237062453955822415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * Nat.choose n 2 + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100214.P7237062453955822415

namespace A100214

/-- `∑[24*C(n, 2)+4]` -/
def P7237062453955822415.Spec : Prop :=
  ∀ n, (P7237062453955822415.a n : ℤ) = A100214 n

end A100214

/-! ## A100214.P7960962625020951315

`∑[xor(4, 24*C(n, 2))]`
-/

namespace A100214.P7960962625020951315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (24 * Nat.choose n 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100214.P7960962625020951315

namespace A100214

/-- `∑[xor(4, 24*C(n, 2))]` -/
def P7960962625020951315.Spec : Prop :=
  ∀ n, (P7960962625020951315.a n : ℤ) = A100214 n

end A100214

/-! ## A100214.P11715952266808286571

`∑[∑[a(n-1)+24]]` with `a(0)=4, a(1)=0`
-/

namespace A100214.P11715952266808286571
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 0] fun n f2 =>
  f2 (n - 1) + 24

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100214.P11715952266808286571

namespace A100214

/-- `∑[∑[a(n-1)+24]]` -/
def P11715952266808286571.Spec : Prop :=
  ∀ n, (P11715952266808286571.a n : ℤ) = A100214 n

end A100214

/-! ## A100214.P2063777759486029942

`lcm(2, n*(2*n)²+4)`
-/

namespace A100214.P2063777759486029942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n * (2 * n) ^ 2 + 4)

end

end A100214.P2063777759486029942

namespace A100214

/-- `lcm(2, n*(2*n)²+4)` -/
def P2063777759486029942.Spec : Prop :=
  ∀ n, (P2063777759486029942.a n : ℤ) = A100214 n

end A100214

/-! ## A100214.P7049118235695834292

`abs(xor(n*(2*n)², -4))`
-/

namespace A100214.P7049118235695834292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n * (2 * n) ^ 2 : ℤ) (-4)|

end

end A100214.P7049118235695834292

namespace A100214

/-- `abs(xor(n*(2*n)², -4))` -/
def P7049118235695834292.Spec : Prop :=
  ∀ n, P7049118235695834292.a n = A100214 n

end A100214

/-! ## A100214.P4264839970349442805

`-xor(n*(2*n)², -4)`
-/

namespace A100214.P4264839970349442805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n * (2 * n) ^ 2 : ℤ) (-4)

end

end A100214.P4264839970349442805

namespace A100214

/-- `-xor(n*(2*n)², -4)` -/
def P4264839970349442805.Spec : Prop :=
  ∀ n, P4264839970349442805.a n = A100214 n

end A100214

/-! ## A100214.P1047734576461841205

`∑[A064200(n)+4]`
-/

namespace A100214.P1047734576461841205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100214.P1047734576461841205

namespace A100214

/-- `∑[A064200(n)+4]` -/
def P1047734576461841205.Spec : Prop :=
  ∀ n, P1047734576461841205.a n = A100214 n

end A100214

/-!
# A100215: Expansion of (4 - 7*x + 2*x^2)/((1-2*x)*(1 - 2*x + 2*x^2)).

The programs for A100215, the canonical program `A100215.P5784118584134466644` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100215 has offset 0).

The definition of A100215 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((4-7x+2x^2)/(1-4x+6x^2-4x^3))` (program `A100215.P5784118584134466644`, by `A100215.P5784118584134466644.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100215.P5784118584134466644

`ogf((4-7x+2x^2)/(1-4x+6x^2-4x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100215

/-- `ogf((4-7x+2x^2)/(1-4x+6x^2-4x^3))` -/
def P5784118584134466644.Spec : Prop :=
  ∀ n, P5784118584134466644.a n = A100215 n

theorem P5784118584134466644.correct : P5784118584134466644.Spec := by
  intro n
  simp only [A100215]

end A100215

/-! ## A100215.P5553626251017509219

`(-1)^n*A009116(n+3)+A100216(n)+A038503(n+1)`
-/

namespace A100215.P5553626251017509219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009116 (n + 3) + A100216 n + A038503 (n + 1)

end

end A100215.P5553626251017509219

namespace A100215

/-- `(-1)^n*A009116(n+3)+A100216(n)+A038503(n+1)` -/
def P5553626251017509219.Spec : Prop :=
  ∀ n, P5553626251017509219.a n = A100215 n

end A100215

/-! ## A100215.P14849784329062839893

`4*a(n-1)-6*a(n-2)+4*a(n-3)` with `a(0)=4, a(1)=9, a(2)=14`
-/

namespace A100215.P14849784329062839893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 9, 14] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3)

end

end A100215.P14849784329062839893

namespace A100215

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)` -/
def P14849784329062839893.Spec : Prop :=
  ∀ n, P14849784329062839893.a n = A100215 n

end A100215

/-! ## A100215.P2444600098470654919

`A100213(n+1)-A100212(n)`
-/

namespace A100215.P2444600098470654919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100213 (n + 1) - A100212 n

end

end A100215.P2444600098470654919

namespace A100215

/-- `A100213(n+1)-A100212(n)` -/
def P2444600098470654919.Spec : Prop :=
  ∀ n, P2444600098470654919.a n = A100215 n

end A100215

/-! ## A100215.P10799818280942968978

`A009545(n)+4*A038504(n+1)`
-/

namespace A100215.P10799818280942968978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n + 4 * A038504 (n + 1)

end

end A100215.P10799818280942968978

namespace A100215

/-- `A009545(n)+4*A038504(n+1)` -/
def P10799818280942968978.Spec : Prop :=
  ∀ n, P10799818280942968978.a n = A100215 n

end A100215

/-! ## A100215.P13351838723288131950

`A000079(n+1)+A090131(n)+A009545(n+1)`
-/

namespace A100215.P13351838723288131950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (A090131 n + A009545 (n + 1))

end

end A100215.P13351838723288131950

namespace A100215

/-- `A000079(n+1)+A090131(n)+A009545(n+1)` -/
def P13351838723288131950.Spec : Prop :=
  ∀ n, P13351838723288131950.a n = A100215 n

end A100215

/-! ## A100215.P1424472562447733701

`∑[5*A038503(n)]-A038503(n+1)`
-/

namespace A100215.P1424472562447733701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A038503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A038503 (n + 1)

end

end A100215.P1424472562447733701

namespace A100215

/-- `∑[5*A038503(n)]-A038503(n+1)` -/
def P1424472562447733701.Spec : Prop :=
  ∀ n, P1424472562447733701.a n = A100215 n

end A100215

/-! ## A100215.P4812610254619801047

`A100216(n+1)-2*A000749(n+1)`
-/

namespace A100215.P4812610254619801047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100216 (n + 1) - 2 * A000749 (n + 1)

end

end A100215.P4812610254619801047

namespace A100215

/-- `A100216(n+1)-2*A000749(n+1)` -/
def P4812610254619801047.Spec : Prop :=
  ∀ n, P4812610254619801047.a n = A100215 n

end A100215

/-! ## A100215.P436364943076628702

`5*A038504(n+1)-A038503(n+1)`
-/

namespace A100215.P436364943076628702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A038504 (n + 1) - A038503 (n + 1)

end

end A100215.P436364943076628702

namespace A100215

/-- `5*A038504(n+1)-A038503(n+1)` -/
def P436364943076628702.Spec : Prop :=
  ∀ n, P436364943076628702.a n = A100215 n

end A100215

/-! ## A100215.P10175695403442027056

`A009545(n)+4*A323346(∑[n])`
-/

namespace A100215.P10175695403442027056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n + 4 * A323346 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100215.P10175695403442027056

namespace A100215

/-- `A009545(n)+4*A323346(∑[n])` -/
def P10175695403442027056.Spec : Prop :=
  ∀ n, P10175695403442027056.a n = A100215 n

end A100215

/-!
# A100216: Relates row sums of Pascal's triangle to expansion of cos(x)/exp(x).

The programs for A100216, the canonical program `A100216.P11410880868688447329` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100216 has offset 0).

The definition of A100216 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100216.P11410880868688447329

`4*a(n-1)-6*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=4, a(2)=9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100216

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)` -/
def P11410880868688447329.Spec : Prop :=
  ∀ n, P11410880868688447329.a n = A100216 n

theorem P11410880868688447329.correct : P11410880868688447329.Spec := by
  intro n
  simp only [A100216]

end A100216

/-! ## A100216.P15286085023653732589

`ogf((1-x^2)/(1-4x+6x^2-4x^3))`
-/

namespace A100216.P15286085023653732589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, -4, 6, -4] n

end

end A100216.P15286085023653732589

namespace A100216

/-- `ogf((1-x^2)/(1-4x+6x^2-4x^3))` -/
def P15286085023653732589.Spec : Prop :=
  ∀ n, P15286085023653732589.a n = A100216 n

end A100216

/-! ## A100216.P13635955327135990904

`A009545(n)+∑[A135360(n)]`
-/

namespace A100216.P13635955327135990904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100216.P13635955327135990904

namespace A100216

/-- `A009545(n)+∑[A135360(n)]` -/
def P13635955327135990904.Spec : Prop :=
  ∀ n, P13635955327135990904.a n = A100216 n

end A100216

/-! ## A100216.P2951504407886026874

`∑[A038504(n)+∑[A038503(n)]]`
-/

namespace A100216.P2951504407886026874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100216.P2951504407886026874

namespace A100216

/-- `∑[A038504(n)+∑[A038503(n)]]` -/
def P2951504407886026874.Spec : Prop :=
  ∀ n, P2951504407886026874.a n = A100216 n

end A100216

/-! ## A100216.P10234592884359162515

`∑[A038504(n+1)+A038504(n)]`
-/

namespace A100216.P10234592884359162515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 (n + 1) + A038504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100216.P10234592884359162515

namespace A100216

/-- `∑[A038504(n+1)+A038504(n)]` -/
def P10234592884359162515.Spec : Prop :=
  ∀ n, P10234592884359162515.a n = A100216 n

end A100216

/-! ## A100216.P15718736541824847651

`∑[A131885(n+1)-A038503(n)]`
-/

namespace A100216.P15718736541824847651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131885 (n + 1) - A038503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100216.P15718736541824847651

namespace A100216

/-- `∑[A131885(n+1)-A038503(n)]` -/
def P15718736541824847651.Spec : Prop :=
  ∀ n, P15718736541824847651.a n = A100216 n

end A100216

/-! ## A100216.P2478512070621112347

`∑[A038505(n+2)-A038505(n)]`
-/

namespace A100216.P2478512070621112347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 (n + 2) - A038505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100216.P2478512070621112347

namespace A100216

/-- `∑[A038505(n+2)-A038505(n)]` -/
def P2478512070621112347.Spec : Prop :=
  ∀ n, P2478512070621112347.a n = A100216 n

end A100216

/-! ## A100216.P6187065740911785555

`A038505(n+1)+A038505(n+2)`
-/

namespace A100216.P6187065740911785555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 (n + 1) + A038505 (n + 2)

end

end A100216.P6187065740911785555

namespace A100216

/-- `A038505(n+1)+A038505(n+2)` -/
def P6187065740911785555.Spec : Prop :=
  ∀ n, P6187065740911785555.a n = A100216 n

end A100216

/-! ## A100216.P7275942854172133794

`A000749(n+3)-A000749(n+1)`
-/

namespace A100216.P7275942854172133794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 (n + 3) - A000749 (n + 1)

end

end A100216.P7275942854172133794

namespace A100216

/-- `A000749(n+3)-A000749(n+1)` -/
def P7275942854172133794.Spec : Prop :=
  ∀ n, P7275942854172133794.a n = A100216 n

end A100216

/-! ## A100216.P4143709267144496661

`∑[2^n-(A038503(n)-A099087(n))]`
-/

namespace A100216.P4143709267144496661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (A038503 n - A099087 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100216.P4143709267144496661

namespace A100216

/-- `∑[2^n-(A038503(n)-A099087(n))]` -/
def P4143709267144496661.Spec : Prop :=
  ∀ n, P4143709267144496661.a n = A100216 n

end A100216

/-! ## A100216.P5068425946925949911

`A000079(n+1)+A009545(n)-A038503(n+1)`
-/

namespace A100216.P5068425946925949911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (A009545 n - A038503 (n + 1))

end

end A100216.P5068425946925949911

namespace A100216

/-- `A000079(n+1)+A009545(n)-A038503(n+1)` -/
def P5068425946925949911.Spec : Prop :=
  ∀ n, P5068425946925949911.a n = A100216 n

end A100216

/-!
# A100217: Diagonal sums of a binomial number triangle.

The programs for A100217, there is no canonical definition to state claims against.
-/

/-! ## A100217.P12162495350763729566

`(A176287(n)+A132364(n))/2`
-/

namespace A100217.P12162495350763729566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176287 n + A132364 n : ℚ) / 2

end

end A100217.P12162495350763729566

/-! ## A100217.P13240488583777885042

`Δ[A006134(n)-A176287(n)]`
-/

namespace A100217.P13240488583777885042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 n - A176287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100217.P13240488583777885042

/-! ## A100217.P12873031381681519929

`Δ[∑[A000984(n)]-A176287(n)]`
-/

namespace A100217.P12873031381681519929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A176287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100217.P12873031381681519929

/-! ## A100217.P9755936716688114788

`A000984(n+1)-Δ[A176287(n)]`
-/

namespace A100217.P9755936716688114788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) - (f1 (n + 1) - f1 n)

end

end A100217.P9755936716688114788

/-! ## A100217.P6568880167231037693

`A176287(n+1)+A132364(n)-A000984(n+1)`
-/

namespace A100217.P6568880167231037693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176287 (n + 1) + (A132364 n - A000984 (n + 1))

end

end A100217.P6568880167231037693

/-! ## A100217.P3198364186686005758

`A000984(n+1)+A176287(n)-A176287(n+1)`
-/

namespace A100217.P3198364186686005758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) + (A176287 n - A176287 (n + 1))

end

end A100217.P3198364186686005758

/-!
# A100218: Riordan array ((1-2*x)/(1-x), (1-x)).

The programs for A100218, the canonical program `A100218.P411736067323610886` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100218 has offset 0).

The definition of A100218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100218.P5574366907123720879

`(and(2, comp[∑[n]]+n)-1)*A098599(n)`
-/

namespace A100218.P5574366907123720879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A098599 n

end

end A100218.P5574366907123720879

namespace A100218

/-- `(and(2, comp[∑[n]]+n)-1)*A098599(n)` -/
def P5574366907123720879.Spec : Prop :=
  ∀ n, P5574366907123720879.a n = A100218 n

end A100218

/-! ## A100218.P3846626332052991502

`A098599(round(acot(n)+n))/(and(2, comp[∑[n]]+n)-1)`
-/

namespace A100218.P3846626332052991502
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098599 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat : ℚ) / ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1 : ℚ)

end

end A100218.P3846626332052991502

namespace A100218

/-- `A098599(round(acot(n)+n))/(and(2, comp[∑[n]]+n)-1)` -/
def P3846626332052991502.Spec : Prop :=
  ∀ n, P3846626332052991502.a n = (A100218 n : ℚ)

end A100218

/-! ## A100218.P15993765342121713016

`A097807(n)*A098599(n)`
-/

namespace A100218.P15993765342121713016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A098599 n

end

end A100218.P15993765342121713016

namespace A100218

/-- `A097807(n)*A098599(n)` -/
def P15993765342121713016.Spec : Prop :=
  ∀ n, P15993765342121713016.a n = A100218 n

end A100218

/-! ## A100218.P16697728282737553833

`A009531(A099375(n))*A098599(n)`
-/

namespace A100218.P16697728282737553833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A098599 n

end

end A100218.P16697728282737553833

namespace A100218

/-- `A009531(A099375(n))*A098599(n)` -/
def P16697728282737553833.Spec : Prop :=
  ∀ n, P16697728282737553833.a n = A100218 n

end A100218

/-! ## A100218.P7251333587734324696

`A062157(A082233(n))*A098599(n)`
-/

namespace A100218.P7251333587734324696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A082233 n).toNat * A098599 n

end

end A100218.P7251333587734324696

namespace A100218

/-- `A062157(A082233(n))*A098599(n)` -/
def P7251333587734324696.Spec : Prop :=
  ∀ n, P7251333587734324696.a n = A100218 n

end A100218

/-! ## A100218.P6045190245580400762

`A062157(A004736(n+1))*A098599(n)`
-/

namespace A100218.P6045190245580400762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A098599 n

end

end A100218.P6045190245580400762

namespace A100218

/-- `A062157(A004736(n+1))*A098599(n)` -/
def P6045190245580400762.Spec : Prop :=
  ∀ n, P6045190245580400762.a n = A100218 n

end A100218

/-! ## A100218.P411736067323610886

`A244422(A061579(n))-char[∑[n]]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A100218

/-- `A244422(A061579(n))-char[∑[n]]` -/
def P411736067323610886.Spec : Prop :=
  ∀ n, P411736067323610886.a n = A100218 n

theorem P411736067323610886.correct : P411736067323610886.Spec := by
  intro n
  simp only [A100218]

end A100218

/-! ## A100218.P4482236822379423034

`A098599(n)/A062157(A004736(n+1)²)`
-/

namespace A100218.P4482236822379423034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098599 n : ℚ) / (A062157 (A004736 (n + 1) ^ 2).toNat : ℚ)

end

end A100218.P4482236822379423034

namespace A100218

/-- `A098599(n)/A062157(A004736(n+1)²)` -/
def P4482236822379423034.Spec : Prop :=
  ∀ n, P4482236822379423034.a n = (A100218 n : ℚ)

end A100218

/-! ## A100218.P15308645407622160706

`A033999(A054238(n))*A098599(n)`
-/

namespace A100218.P15308645407622160706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A054238 n).toNat * A098599 n

end

end A100218.P15308645407622160706

namespace A100218

/-- `A033999(A054238(n))*A098599(n)` -/
def P15308645407622160706.Spec : Prop :=
  ∀ n, P15308645407622160706.a n = A100218 n

end A100218

/-! ## A100218.P7476838631326743121

`A098599(n)*A106400(A163237(n))`
-/

namespace A100218.P7476838631326743121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098599 n * A106400 (A163237 n).toNat

end

end A100218.P7476838631326743121

namespace A100218

/-- `A098599(n)*A106400(A163237(n))` -/
def P7476838631326743121.Spec : Prop :=
  ∀ n, P7476838631326743121.a n = A100218 n

end A100218

/-!
# A100219: Expansion of (1-2*x)/((1-x)*(1-x+x^2)).

The programs for A100219, the canonical program `A100219.P3416772236550000772` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100219 has offset 0).

The definition of A100219 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x)/(1-2x+2x^2-x^3))` (program `A100219.P3416772236550000772`, by `A100219.P3416772236550000772.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100219.P3416772236550000772

`ogf((1-2x)/(1-2x+2x^2-x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100219

/-- `ogf((1-2x)/(1-2x+2x^2-x^3))` -/
def P3416772236550000772.Spec : Prop :=
  ∀ n, P3416772236550000772.a n = A100219 n

theorem P3416772236550000772.correct : P3416772236550000772.Spec := by
  intro n
  simp only [A100219]

end A100219

/-!
# A100223: G.f. A(x) satisfies: 2^n - 1 = Sum_{k=0..n} [x^k]A(x)^n and also satisfies: (2+z)^n - (1+z)^n + z^n = Sum_{k=0..n} [x^k](A(x)+z*x)^n for all z, where [x^k]A(x)^n denotes the coefficient of x^k in A(x)^n.

The programs for A100223, the canonical program `A100223.P7399855820009655789` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100223 has offset 0).

The definition of A100223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100223.P7399855820009655789

`((2*n-3)*a(n-1)-5*(n-3)*a(n-2))/n` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100223

/-- `((2*n-3)*a(n-1)-5*(n-3)*a(n-2))/n` -/
def P7399855820009655789.Spec : Prop :=
  ∀ n, P7399855820009655789.a n = (A100223 n : ℚ)

end A100223

/-! ## A100223.P12309220720921916249

`A343773((2*n)%(n+2))`
-/

namespace A100223.P12309220720921916249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343773 (2 * n % (n + 2))

end

end A100223.P12309220720921916249

namespace A100223

/-- `A343773((2*n)%(n+2))` -/
def P12309220720921916249.Spec : Prop :=
  ∀ n, P12309220720921916249.a n = A100223 n

end A100223

/-!
# A100224: Triangle, read by rows, of the coefficients of [x^k] in G100224(x)^n such that the row sums are 2^n-1 for n>0, where G100224(x) is the g.f. of A100224.

The programs for A100224, there is no canonical definition to state claims against.
-/

/-! ## A100224.P6640750062048416555

`A119458(A061579(n))-char[∑[n+2]]`
-/

namespace A100224.P6640750062048416555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119458 (A061579 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A100224.P6640750062048416555

/-! ## A100224.P16183487970649193023

`A107430(n)%A000032(A291556(n))`
-/

namespace A100224.P16183487970649193023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107430 n) (A000032 (A291556 n).toNat)

end

end A100224.P16183487970649193023

/-! ## A100224.P15857873185998512713

`A107430(n)-A000007(A266291(n+1))`
-/

namespace A100224.P15857873185998512713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107430 n - A000007 (A266291 (n + 1)).toNat

end

end A100224.P15857873185998512713

/-! ## A100224.P14633643158528415467

`A107430(n)-A000007(A266886(n+1))`
-/

namespace A100224.P14633643158528415467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107430 n - A000007 (A266886 (n + 1)).toNat

end

end A100224.P14633643158528415467

/-! ## A100224.P16976955747790710997

`A107430(n)-A000007(A266042(n+1))`
-/

namespace A100224.P16976955747790710997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107430 n - A000007 (A266042 (n + 1)).toNat

end

end A100224.P16976955747790710997

/-!
# A100225: G.f. A(x) satisfies: 3^n - 1 = Sum_{k=0..n} [x^k]A(x)^n and also satisfies: (3+z)^n - (1+z)^n + z^n = Sum_{k=0..n} [x^k](A(x)+z*x)^n for all z, where [x^k]A(x)^n denotes the coefficient of x^k in A(x)^n.

The programs for A100225, the canonical program `A100225.P12262320723455358762` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100225 has offset 0).

The definition of A100225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100225.P12262320723455358762

`2*(3/n-1)*4*a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100225

/-- `2*(3/n-1)*4*a(n-2)` -/
def P12262320723455358762.Spec : Prop :=
  ∀ n, P12262320723455358762.a n = (A100225 n : ℚ)

end A100225

/-! ## A100225.P3140472217397304043

`Δ[A063759(n)/2]*A182122(n)`
-/

namespace A100225.P3140472217397304043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063759 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A182122 n : ℚ)

end

end A100225.P3140472217397304043

namespace A100225

/-- `Δ[A063759(n)/2]*A182122(n)` -/
def P3140472217397304043.Spec : Prop :=
  ∀ n, P3140472217397304043.a n = (A100225 n : ℚ)

end A100225

/-! ## A100225.P11361493982923860816

`A016116(n)*A090192(log2(A011782(n)))`
-/

namespace A100225.P11361493982923860816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A090192 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A100225.P11361493982923860816

namespace A100225

/-- `A016116(n)*A090192(log2(A011782(n)))` -/
def P11361493982923860816.Spec : Prop :=
  ∀ n, P11361493982923860816.a n = A100225 n

end A100225

/-! ## A100225.P8496139524790862185

`A016116(n)*A336709(A027379(n))`
-/

namespace A100225.P8496139524790862185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A336709 (A027379 n).toNat

end

end A100225.P8496139524790862185

namespace A100225

/-- `A016116(n)*A336709(A027379(n))` -/
def P8496139524790862185.Spec : Prop :=
  ∀ n, P8496139524790862185.a n = A100225 n

end A100225

/-! ## A100225.P13749985079528239430

`A016116(n)*A336709(A055998(n))`
-/

namespace A100225.P13749985079528239430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A336709 (A055998 n).toNat

end

end A100225.P13749985079528239430

namespace A100225

/-- `A016116(n)*A336709(A055998(n))` -/
def P13749985079528239430.Spec : Prop :=
  ∀ n, P13749985079528239430.a n = A100225 n

end A100225

/-! ## A100225.P6772564420023189531

`abs(A320770(n))*A336709(A027379(n))`
-/

namespace A100225.P6772564420023189531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A320770 n| * A336709 (A027379 n).toNat

end

end A100225.P6772564420023189531

namespace A100225

/-- `abs(A320770(n))*A336709(A027379(n))` -/
def P6772564420023189531.Spec : Prop :=
  ∀ n, P6772564420023189531.a n = A100225 n

end A100225

/-! ## A100225.P10464669894588662643

`A000079(A004526(n))*A336709(A055998(n))`
-/

namespace A100225.P10464669894588662643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004526 n).toNat * A336709 (A055998 n).toNat

end

end A100225.P10464669894588662643

namespace A100225

/-- `A000079(A004526(n))*A336709(A055998(n))` -/
def P10464669894588662643.Spec : Prop :=
  ∀ n, P10464669894588662643.a n = A100225 n

end A100225

/-!
# A100226: Triangle, read by rows, of the coefficients of [x^k] in G100225(x)^n such that the row sums are 3^n-1 for n>0, where G100225(x) is the g.f. of A100225.

The programs for A100226, there is no canonical definition to state claims against.
-/

/-! ## A100226.P5811603215744272973

`A111660(A272868(n)+A142240(n+1))`
-/

namespace A100226.P5811603215744272973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A272868 n + A142240 (n + 1)).toNat

end

end A100226.P5811603215744272973

/-! ## A100226.P4608459557989524183

`A350029(A100229(n))`
-/

namespace A100226.P4608459557989524183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350029 (A100229 n).toNat

end

end A100226.P4608459557989524183

/-! ## A100226.P13048976214785135766

`∏{e}[A034008(A054143(n)), #]`
-/

namespace A100226.P13048976214785135766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A054143 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A100226.P13048976214785135766

/-! ## A100226.P14682660797480475853

`A090894(A124320(n))%(n+5)`
-/

namespace A100226.P14682660797480475853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090894 (A124320 n).toNat) (n + 5 : ℤ)

end

end A100226.P14682660797480475853

/-! ## A100226.P16579542977719016187

`∏{e}[A011782(A054143(n)-1), #]`
-/

namespace A100226.P16579542977719016187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A054143 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A100226.P16579542977719016187

/-!
# A100227: Main diagonal of triangle A100226.

The programs for A100227, the canonical program `A100227.P4741395309030612941` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100227 has offset 0).

The definition of A100227 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100227.P4741395309030612941

`2*a(n-1)+a(n-2)+2` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100227

/-- `2*a(n-1)+a(n-2)+2` -/
def P4741395309030612941.Spec : Prop :=
  ∀ n, (P4741395309030612941.a n : ℤ) = A100227 n

theorem P4741395309030612941.correct : P4741395309030612941.Spec := by
  intro n
  simp only [A100227]

end A100227

/-! ## A100227.P12235165993759362195

`A002203(n)-1`
-/

namespace A100227.P12235165993759362195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n - 1

end

end A100227.P12235165993759362195

namespace A100227

/-- `A002203(n)-1` -/
def P12235165993759362195.Spec : Prop :=
  ∀ n, P12235165993759362195.a n = A100227 n

end A100227

/-! ## A100227.P3868319072168907655

`ogf((1-2x+3x^2)/(1-3x+x^2+x^3))`
-/

namespace A100227.P3868319072168907655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 3] [1, -3, 1, 1] n

end

end A100227.P3868319072168907655

namespace A100227

/-- `ogf((1-2x+3x^2)/(1-3x+x^2+x^3))` -/
def P3868319072168907655.Spec : Prop :=
  ∀ n, P3868319072168907655.a n = A100227 n

end A100227

/-! ## A100227.P3353424074873628270

`lcm(2, a(n-1))+a(n-2)+2` with `a(0)=1, a(1)=1`
-/

namespace A100227.P3353424074873628270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.lcm 2 (a (n - 1)) + (a (n - 2) + 2)

end

end A100227.P3353424074873628270

namespace A100227

/-- `lcm(2, a(n-1))+a(n-2)+2` -/
def P3353424074873628270.Spec : Prop :=
  ∀ n, (P3353424074873628270.a n : ℤ) = A100227 n

end A100227

/-! ## A100227.P17624088332905213798

`4-(2*(1-a(n-1))-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A100227.P17624088332905213798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 - (2 * (1 - a (n - 1)) - a (n - 2))

end

end A100227.P17624088332905213798

namespace A100227

/-- `4-(2*(1-a(n-1))-a(n-2))` -/
def P17624088332905213798.Spec : Prop :=
  ∀ n, P17624088332905213798.a n = A100227 n

end A100227

/-! ## A100227.P18166368304733206917

`a(n-1)+2+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A100227.P18166368304733206917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + 2 + (a (n - 1) + a (n - 2))

end

end A100227.P18166368304733206917

namespace A100227

/-- `a(n-1)+2+a(n-1)+a(n-2)` -/
def P18166368304733206917.Spec : Prop :=
  ∀ n, (P18166368304733206917.a n : ℤ) = A100227 n

theorem P18166368304733206917.correct : P18166368304733206917.Spec := by
  intro n
  simp only [A100227, Nat.add_sub_cancel, A100227.P18166368304733206917.a, A100227.P4741395309030612941.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A100227

/-! ## A100227.P13954237611035000627

`abs(2-A124696(n))`
-/

namespace A100227.P13954237611035000627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A124696 n|

end

end A100227.P13954237611035000627

namespace A100227

/-- `abs(2-A124696(n))` -/
def P13954237611035000627.Spec : Prop :=
  ∀ n, P13954237611035000627.a n = A100227 n

end A100227

/-! ## A100227.P4506153608456580833

`and(-3, A182143(n))`
-/

namespace A100227.P4506153608456580833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A182143 n)

end

end A100227.P4506153608456580833

namespace A100227

/-- `and(-3, A182143(n))` -/
def P4506153608456580833.Spec : Prop :=
  ∀ n, P4506153608456580833.a n = A100227 n

end A100227

/-! ## A100227.P2424236187758325486

`2*A293004(n)+1`
-/

namespace A100227.P2424236187758325486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293004 n + 1

end

end A100227.P2424236187758325486

namespace A100227

/-- `2*A293004(n)+1` -/
def P2424236187758325486.Spec : Prop :=
  ∀ n, P2424236187758325486.a n = A100227 n

end A100227

/-! ## A100227.P16189318076599088268

`2*A001333(n)-1`
-/

namespace A100227.P16189318076599088268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001333 n - 1

end

end A100227.P16189318076599088268

namespace A100227

/-- `2*A001333(n)-1` -/
def P16189318076599088268.Spec : Prop :=
  ∀ n, P16189318076599088268.a n = A100227 n

end A100227

/-! ## A100227.P1949927626886777009

`4*A171842(n)-3`
-/

namespace A100227.P1949927626886777009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A171842 n - 3

end

end A100227.P1949927626886777009

namespace A100227

/-- `4*A171842(n)-3` -/
def P1949927626886777009.Spec : Prop :=
  ∀ n, P1949927626886777009.a n = A100227 n

end A100227

/-! ## A100227.P14040120692479981656

`lcm(2, A099425(n))-1`
-/

namespace A100227.P14040120692479981656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A099425 n) : ℤ) - 1

end

end A100227.P14040120692479981656

namespace A100227

/-- `lcm(2, A099425(n))-1` -/
def P14040120692479981656.Spec : Prop :=
  ∀ n, P14040120692479981656.a n = A100227 n

end A100227

/-! ## A100227.P13584930372120910863

`or(1, A080039(n)-1)`
-/

namespace A100227.P13584930372120910863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A080039 n - 1)

end

end A100227.P13584930372120910863

namespace A100227

/-- `or(1, A080039(n)-1)` -/
def P13584930372120910863.Spec : Prop :=
  ∀ n, P13584930372120910863.a n = A100227 n

end A100227

/-! ## A100227.P8024034392706423113

`abs(2*A123335(n))-1`
-/

namespace A100227.P8024034392706423113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A123335 n| - 1

end

end A100227.P8024034392706423113

namespace A100227

/-- `abs(2*A123335(n))-1` -/
def P8024034392706423113.Spec : Prop :=
  ∀ n, P8024034392706423113.a n = A100227 n

end A100227

/-! ## A100227.P12864783750235967434

`2*Δ[A000129(n)]-1`
-/

namespace A100227.P12864783750235967434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) - 1

end

end A100227.P12864783750235967434

namespace A100227

/-- `2*Δ[A000129(n)]-1` -/
def P12864783750235967434.Spec : Prop :=
  ∀ n, P12864783750235967434.a n = A100227 n

end A100227

/-! ## A100227.P16018211125548392163

`2*A119016(2*n)-1`
-/

namespace A100227.P16018211125548392163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119016 (2 * n) - 1

end

end A100227.P16018211125548392163

namespace A100227

/-- `2*A119016(2*n)-1` -/
def P16018211125548392163.Spec : Prop :=
  ∀ n, P16018211125548392163.a n = A100227 n

end A100227

/-! ## A100227.P8833312881403505925

`2*Δ[A249576(3*n)]-1`
-/

namespace A100227.P8833312881403505925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) - 1

end

end A100227.P8833312881403505925

namespace A100227

/-- `2*Δ[A249576(3*n)]-1` -/
def P8833312881403505925.Spec : Prop :=
  ∀ n, P8833312881403505925.a n = A100227 n

end A100227

/-! ## A100227.P12336374054334406629

`2*A002965(2*n+1)-1`
-/

namespace A100227.P12336374054334406629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002965 (2 * n + 1) - 1

end

end A100227.P12336374054334406629

namespace A100227

/-- `2*A002965(2*n+1)-1` -/
def P12336374054334406629.Spec : Prop :=
  ∀ n, P12336374054334406629.a n = A100227 n

end A100227

/-! ## A100227.P5238609099149957502

`A099425(A028310(n))-1`
-/

namespace A100227.P5238609099149957502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099425 (A028310 n).toNat - 1

end

end A100227.P5238609099149957502

namespace A100227

/-- `A099425(A028310(n))-1` -/
def P5238609099149957502.Spec : Prop :=
  ∀ n, P5238609099149957502.a n = A100227 n

end A100227

/-!
# A100229: Triangle, read by rows, of the coefficients of [x^k] in G100228(x)^n such that the row sums are 4^n-1 for n>0, where G100228(x) is the g.f. of A100228.

The programs for A100229, there is no canonical definition to state claims against.
-/

/-! ## A100229.P2792843300612805070

`A167904(C(A057561(n+1), A002262(n)))`
-/

namespace A100229.P2792843300612805070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167904 (Nat.choose (A057561 (n + 1)).toNat (A002262 n).toNat)

end

end A100229.P2792843300612805070

/-! ## A100229.P6662582108020496582

`C(A084556(A002426(n)), A002262(n))`
-/

namespace A100229.P6662582108020496582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A084556 (A002426 n).toNat).toNat (A002262 n).toNat

end

end A100229.P6662582108020496582

/-! ## A100229.P18348861556524530913

`C(A084556(A002529(n)), A002262(n))`
-/

namespace A100229.P18348861556524530913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A084556 (A002529 n).toNat).toNat (A002262 n).toNat

end

end A100229.P18348861556524530913

/-! ## A100229.P8900944362977448448

`C(A084556(A002529(n)), A025668(n+1))`
-/

namespace A100229.P8900944362977448448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A084556 (A002529 n).toNat).toNat (A025668 (n + 1)).toNat

end

end A100229.P8900944362977448448

/-! ## A100229.P413051543691203785

`C(A084556(A002426(n)), A336820(n+1))`
-/

namespace A100229.P413051543691203785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A084556 (A002426 n).toNat).toNat (A336820 (n + 1)).toNat

end

end A100229.P413051543691203785

/-!
# A100230: Main diagonal of triangle A100229.

The programs for A100230, the canonical program `A100230.P13324368767832438786` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100230 has offset 0).

The definition of A100230 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100230.P13324368767832438786

`3*a(n-1)+a(n-2)+3` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100230

/-- `3*a(n-1)+a(n-2)+3` -/
def P13324368767832438786.Spec : Prop :=
  ∀ n, (P13324368767832438786.a n : ℤ) = A100230 n

theorem P13324368767832438786.correct : P13324368767832438786.Spec := by
  intro n
  simp only [A100230]

end A100230

/-! ## A100230.P18174010589798447592

`4*a(n-1)-2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=10`
-/

namespace A100230.P18174010589798447592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 10] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2) - a (n - 3)

end

end A100230.P18174010589798447592

namespace A100230

/-- `4*a(n-1)-2*a(n-2)-a(n-3)` -/
def P18174010589798447592.Spec : Prop :=
  ∀ n, P18174010589798447592.a n = A100230 n

end A100230

/-! ## A100230.P8786774037945775088

`ogf((1-2x+4x^2)/(1-4x+2x^2+x^3))`
-/

namespace A100230.P8786774037945775088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 4] [1, -4, 2, 1] n

end

end A100230.P8786774037945775088

namespace A100230

/-- `ogf((1-2x+4x^2)/(1-4x+2x^2+x^3))` -/
def P8786774037945775088.Spec : Prop :=
  ∀ n, P8786774037945775088.a n = A100230 n

end A100230

/-! ## A100230.P11863518230892962349

`lcm(3, a(n-1))+a(n-2)+3` with `a(0)=1, a(1)=2`
-/

namespace A100230.P11863518230892962349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lcm 3 (a (n - 1)) + (a (n - 2) + 3)

end

end A100230.P11863518230892962349

namespace A100230

/-- `lcm(3, a(n-1))+a(n-2)+3` -/
def P11863518230892962349.Spec : Prop :=
  ∀ n, (P11863518230892962349.a n : ℤ) = A100230 n

end A100230

/-! ## A100230.P9709749114832499102

`a(n-2)-3*xor(-1, a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A100230.P9709749114832499102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) - 3 * Int.xor (-1) (a (n - 1))

end

end A100230.P9709749114832499102

namespace A100230

/-- `a(n-2)-3*xor(-1, a(n-1))` -/
def P9709749114832499102.Spec : Prop :=
  ∀ n, P9709749114832499102.a n = A100230 n

end A100230

/-! ## A100230.P4313273347724966515

`-Δ[a(n-2)-3*(n-a(n-1))]` with `a(0)=2, a(1)=1`
-/

namespace A100230.P4313273347724966515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 2) - 3 * ((n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A100230.P4313273347724966515

namespace A100230

/-- `-Δ[a(n-2)-3*(n-a(n-1))]` -/
def P4313273347724966515.Spec : Prop :=
  ∀ n, P4313273347724966515.a n = A100230 n

end A100230

/-! ## A100230.P11086803828185593786

`a(n-2)-3*(-1%n-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A100230.P11086803828185593786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) - 3 * (Int.tmod (-1) (n : ℤ) - a (n - 1))

end

end A100230.P11086803828185593786

namespace A100230

/-- `a(n-2)-3*(-1%n-a(n-1))` -/
def P11086803828185593786.Spec : Prop :=
  ∀ n, P11086803828185593786.a n = A100230 n

end A100230

/-! ## A100230.P12618739985381783002

`3-(a(n-1)-4*a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A100230.P12618739985381783002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 - (a (n - 1) - 4 * a (n - 1) - a (n - 2))

end

end A100230.P12618739985381783002

namespace A100230

/-- `3-(a(n-1)-4*a(n-1)-a(n-2))` -/
def P12618739985381783002.Spec : Prop :=
  ∀ n, P12618739985381783002.a n = A100230 n

end A100230

/-! ## A100230.P9628485008105046624

`a(n-1)+3+a(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A100230.P9628485008105046624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + 3 + (a (n - 1) + (a (n - 1) + a (n - 2)))

end

end A100230.P9628485008105046624

namespace A100230

/-- `a(n-1)+3+a(n-1)+a(n-1)+a(n-2)` -/
def P9628485008105046624.Spec : Prop :=
  ∀ n, (P9628485008105046624.a n : ℤ) = A100230 n

theorem P9628485008105046624.correct : P9628485008105046624.Spec := by
  intro n
  simp only [A100230, Nat.add_sub_cancel, A100230.P9628485008105046624.a, A100230.P13324368767832438786.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A100230

/-! ## A100230.P17890394431901618569

`A006497(n)-1`
-/

namespace A100230.P17890394431901618569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 n - 1

end

end A100230.P17890394431901618569

namespace A100230

/-- `A006497(n)-1` -/
def P17890394431901618569.Spec : Prop :=
  ∀ n, P17890394431901618569.a n = A100230 n

end A100230

/-! ## A100230.P17949620700340894757

`A033999(2*n+1)+A006497(n)`
-/

namespace A100230.P17949620700340894757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A006497 n

end

end A100230.P17949620700340894757

namespace A100230

/-- `A033999(2*n+1)+A006497(n)` -/
def P17949620700340894757.Spec : Prop :=
  ∀ n, P17949620700340894757.a n = A100230 n

end A100230

/-! ## A100230.P1664655230764772904

`A107855(2*(n+1))+A006190(n+1)-1`
-/

namespace A100230.P1664655230764772904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107855 (2 * (n + 1)) + (A006190 (n + 1) - 1)

end

end A100230.P1664655230764772904

namespace A100230

/-- `A107855(2*(n+1))+A006190(n+1)-1` -/
def P1664655230764772904.Spec : Prop :=
  ∀ n, P1664655230764772904.a n = A100230 n

end A100230

/-! ## A100230.P10498010057498600872

`A061084(A328579(2*n+3))+A006497(n)`
-/

namespace A100230.P10498010057498600872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (A328579 (2 * n + 3)).toNat + A006497 n

end

end A100230.P10498010057498600872

namespace A100230

/-- `A061084(A328579(2*n+3))+A006497(n)` -/
def P10498010057498600872.Spec : Prop :=
  ∀ n, P10498010057498600872.a n = A100230 n

end A100230

/-! ## A100230.P13297448315265273553

`A018186(2*n+1)-(A018186(2*n)+1)`
-/

namespace A100230.P13297448315265273553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018186 (2 * n + 1) - (A018186 (2 * n) + 1)

end

end A100230.P13297448315265273553

namespace A100230

/-- `A018186(2*n+1)-(A018186(2*n)+1)` -/
def P13297448315265273553.Spec : Prop :=
  ∀ n, P13297448315265273553.a n = A100230 n

end A100230

/-!
# A100232: Triangle, read by rows, of the coefficients of [x^k] in G100231(x)^n such that the row sums are 5^n-1 for n>0, where G100231(x) is the g.f. of A100231.

The programs for A100232, there is no canonical definition to state claims against.
-/

/-! ## A100232.P571417731203189668

`A381018(A082171(n))`
-/

namespace A100232.P571417731203189668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381018 (A082171 n).toNat

end

end A100232.P571417731203189668

/-! ## A100232.P6709796800011585870

`A247431(A370380(n))`
-/

namespace A100232.P6709796800011585870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247431 (A370380 n).toNat

end

end A100232.P6709796800011585870

/-! ## A100232.P12135198311011778886

`A115180(A215474(n+1))`
-/

namespace A100232.P12135198311011778886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115180 (A215474 (n + 1)).toNat

end

end A100232.P12135198311011778886

/-! ## A100232.P5932505039706260732

`A344452(A193091(n)+1)`
-/

namespace A100232.P5932505039706260732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344452 (A193091 n + 1).toNat

end

end A100232.P5932505039706260732

/-! ## A100232.P1553177471355052140

`A247431(or(1, A176122(n+1)))`
-/

namespace A100232.P1553177471355052140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247431 (Int.lor 1 (A176122 (n + 1))).toNat

end

end A100232.P1553177471355052140

/-!
# A100233: a(n) = Lucas(3*n) - 1.

The programs for A100233, the canonical program `A100233.P18122958421934465448` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100233 has offset 0).

The definition of A100233 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100233.P18122958421934465448

`4*a(n-1)+a(n-2)+4` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100233

/-- `4*a(n-1)+a(n-2)+4` -/
def P18122958421934465448.Spec : Prop :=
  ∀ n, (P18122958421934465448.a n : ℤ) = A100233 n

theorem P18122958421934465448.correct : P18122958421934465448.Spec := by
  intro n
  simp only [A100233]

end A100233

/-! ## A100233.P8019327178722678318

`5*a(n-1)-3*a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=17`
-/

namespace A100233.P8019327178722678318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 17] fun n a =>
  5 * a (n - 1) - 3 * a (n - 2) - a (n - 3)

end

end A100233.P8019327178722678318

namespace A100233

/-- `5*a(n-1)-3*a(n-2)-a(n-3)` -/
def P8019327178722678318.Spec : Prop :=
  ∀ n, P8019327178722678318.a n = A100233 n

end A100233

/-! ## A100233.P2049117982498276965

`A014448(n)-1`
-/

namespace A100233.P2049117982498276965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014448 n - 1

end

end A100233.P2049117982498276965

namespace A100233

/-- `A014448(n)-1` -/
def P2049117982498276965.Spec : Prop :=
  ∀ n, P2049117982498276965.a n = A100233 n

end A100233

/-! ## A100233.P1433169771068364907

`ogf((1-2x+5x^2)/(1-5x+3x^2+x^3))`
-/

namespace A100233.P1433169771068364907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 5] [1, -5, 3, 1] n

end

end A100233.P1433169771068364907

namespace A100233

/-- `ogf((1-2x+5x^2)/(1-5x+3x^2+x^3))` -/
def P1433169771068364907.Spec : Prop :=
  ∀ n, P1433169771068364907.a n = A100233 n

end A100233

/-! ## A100233.P18065525659841984164

`round(ϕ^floor(3/acot(n)))-1`
-/

namespace A100233.P18065525659841984164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ : ℤ)) - 1

end

end A100233.P18065525659841984164

namespace A100233

/-- `round(ϕ^floor(3/acot(n)))-1` -/
def P18065525659841984164.Spec : Prop :=
  ∀ n, P18065525659841984164.a n = A100233 n

end A100233

/-! ## A100233.P8112888370251030361

`2*round(ϕ^(3*n)/2)-1`
-/

namespace A100233.P8112888370251030361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (Real.goldenRatio ^ (3 * n) / 2) - 1

end

end A100233.P8112888370251030361

namespace A100233

/-- `2*round(ϕ^(3*n)/2)-1` -/
def P8112888370251030361.Spec : Prop :=
  ∀ n, P8112888370251030361.a n = A100233 n

end A100233

/-! ## A100233.P17730335601578810404

`floor(a(n-2)-2*2*xor(1, -a(n-1)))` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A100233.P17730335601578810404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) - 2 * (2 * Int.xor 1 (-a (n - 1)))

end

end A100233.P17730335601578810404

namespace A100233

/-- `floor(a(n-2)-2*2*xor(1, -a(n-1)))` -/
def P17730335601578810404.Spec : Prop :=
  ∀ n, P17730335601578810404.a n = A100233 n

end A100233

/-! ## A100233.P11598073153705272807

`ceil(a(n-2)-2*2*xor(1, -a(n-1)))` with `a(0)=1, a(1)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A100233.P11598073153705272807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) - 2 * (2 * Int.xor 1 (-a (n - 1)))

end

end A100233.P11598073153705272807

namespace A100233

/-- `ceil(a(n-2)-2*2*xor(1, -a(n-1)))` -/
def P11598073153705272807.Spec : Prop :=
  ∀ n, P11598073153705272807.a n = A100233 n

end A100233

/-! ## A100233.P16981008354857124435

`record[A174506(n)]`
-/

namespace A100233.P16981008354857124435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100233.P16981008354857124435

namespace A100233

/-- `record[A174506(n)]` -/
def P16981008354857124435.Spec : Prop :=
  ∀ n, P16981008354857124435.a n = A100233 n

end A100233

/-! ## A100233.P8816261120963644610

`xor(4, A000032(3*n)+3)`
-/

namespace A100233.P8816261120963644610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A000032 (3 * n) + 3)

end

end A100233.P8816261120963644610

namespace A100233

/-- `xor(4, A000032(3*n)+3)` -/
def P8816261120963644610.Spec : Prop :=
  ∀ n, P8816261120963644610.a n = A100233 n

end A100233

/-! ## A100233.P10774537722614314480

`A324015(A008486(n))`
-/

namespace A100233.P10774537722614314480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324015 (A008486 n).toNat

end

end A100233.P10774537722614314480

namespace A100233

/-- `A324015(A008486(n))` -/
def P10774537722614314480.Spec : Prop :=
  ∀ n, P10774537722614314480.a n = A100233 n

end A100233

/-! ## A100233.P15024016752818605565

`A138123(A101328(n+2))`
-/

namespace A100233.P15024016752818605565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138123 (A101328 (n + 2)).toNat

end

end A100233.P15024016752818605565

namespace A100233

/-- `A138123(A101328(n+2))` -/
def P15024016752818605565.Spec : Prop :=
  ∀ n, P15024016752818605565.a n = A100233 n

end A100233

/-! ## A100233.P4536364399474866278

`xor(A010705(n), A014448(n))`
-/

namespace A100233.P4536364399474866278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010705 n) (A014448 n)

end

end A100233.P4536364399474866278

namespace A100233

/-- `xor(A010705(n), A014448(n))` -/
def P4536364399474866278.Spec : Prop :=
  ∀ n, P4536364399474866278.a n = A100233 n

end A100233

/-! ## A100233.P7820814659816231532

`xor(A051929(n), A105397(n))`
-/

namespace A100233.P7820814659816231532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A051929 n) (A105397 n)

end

end A100233.P7820814659816231532

namespace A100233

/-- `xor(A051929(n), A105397(n))` -/
def P7820814659816231532.Spec : Prop :=
  ∀ n, P7820814659816231532.a n = A100233 n

end A100233

/-! ## A100233.P12312801717899369481

`A174506(lt[n, A174506(n)])`
-/

namespace A100233.P12312801717899369481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A100233.P12312801717899369481

namespace A100233

/-- `A174506(lt[n, A174506(n)])` -/
def P12312801717899369481.Spec : Prop :=
  ∀ n, P12312801717899369481.a n = A100233 n

end A100233

/-! ## A100233.P15707653642184418812

`record[A000032(A006368(n))-1]`
-/

namespace A100233.P15707653642184418812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A006368 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100233.P15707653642184418812

namespace A100233

/-- `record[A000032(A006368(n))-1]` -/
def P15707653642184418812.Spec : Prop :=
  ∀ n, P15707653642184418812.a n = A100233 n

end A100233

/-! ## A100233.P16152980488247507436

`record[A000032(A071045(n))-1]`
-/

namespace A100233.P16152980488247507436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A071045 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100233.P16152980488247507436

namespace A100233

/-- `record[A000032(A071045(n))-1]` -/
def P16152980488247507436.Spec : Prop :=
  ∀ n, P16152980488247507436.a n = A100233 n

end A100233

/-! ## A100233.P12378679206871849670

`record[A000032(A088439(n))-1]`
-/

namespace A100233.P12378679206871849670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A088439 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100233.P12378679206871849670

namespace A100233

/-- `record[A000032(A088439(n))-1]` -/
def P12378679206871849670.Spec : Prop :=
  ∀ n, P12378679206871849670.a n = A100233 n

end A100233

/-! ## A100233.P4087458602471533931

`record[A000032(A296515(n))-1]`
-/

namespace A100233.P4087458602471533931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A296515 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100233.P4087458602471533931

namespace A100233

/-- `record[A000032(A296515(n))-1]` -/
def P4087458602471533931.Spec : Prop :=
  ∀ n, P4087458602471533931.a n = A100233 n

end A100233

/-! ## A100233.P16714174701510857552

`record[A000032(A116551(n+1))-1]`
-/

namespace A100233.P16714174701510857552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A116551 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100233.P16714174701510857552

namespace A100233

/-- `record[A000032(A116551(n+1))-1]` -/
def P16714174701510857552.Spec : Prop :=
  ∀ n, P16714174701510857552.a n = A100233 n

end A100233

/-!
# A100235: Triangle, read by rows, of the coefficients of [x^k] in G100234(x)^n such that the row sums are 6^n-1 for n>0, where G100234(x) is the g.f. of A100234.

The programs for A100235, there is no canonical definition to state claims against.
-/

/-! ## A100235.P37635495941778104

`A331935(A176122(n+1))`
-/

namespace A100235.P37635495941778104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331935 (A176122 (n + 1)).toNat

end

end A100235.P37635495941778104

/-! ## A100235.P13660916871952867375

`A348595(n)-A108730(A050848(n+1))`
-/

namespace A100235.P13660916871952867375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348595 n - A108730 (A050848 (n + 1)).toNat

end

end A100235.P13660916871952867375

/-! ## A100235.P4351013808228572348

`A286002(C(A032555(n+1), A002262(n)))`
-/

namespace A100235.P4351013808228572348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286002 (Nat.choose (A032555 (n + 1)).toNat (A002262 n).toNat)

end

end A100235.P4351013808228572348

/-! ## A100235.P13662821906476052012

`A286002(C(A032559(n+1), A002262(n)))`
-/

namespace A100235.P13662821906476052012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286002 (Nat.choose (A032559 (n + 1)).toNat (A002262 n).toNat)

end

end A100235.P13662821906476052012

/-! ## A100235.P3304774568116977116

`A256389(A191714(n+1))-A004198(A100232(n))`
-/

namespace A100235.P3304774568116977116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256389 (A191714 (n + 1)).toNat - A004198 (A100232 n).toNat

end

end A100235.P3304774568116977116

/-!
# A100236: Main diagonal of triangle A100235.

The programs for A100236, the canonical program `A100236.P16072193181588641886` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100236 has offset 0).

The definition of A100236 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100236.P16072193181588641886

`5*a(n-1)+a(n-2)+5` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100236

/-- `5*a(n-1)+a(n-2)+5` -/
def P16072193181588641886.Spec : Prop :=
  ∀ n, (P16072193181588641886.a n : ℤ) = A100236 n

theorem P16072193181588641886.correct : P16072193181588641886.Spec := by
  intro n
  simp only [A100236]

end A100236

/-! ## A100236.P16925702616733809290

`ogf((1-2x+6x^2)/(1-6x+4x^2+x^3))`
-/

namespace A100236.P16925702616733809290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 6] [1, -6, 4, 1] n

end

end A100236.P16925702616733809290

namespace A100236

/-- `ogf((1-2x+6x^2)/(1-6x+4x^2+x^3))` -/
def P16925702616733809290.Spec : Prop :=
  ∀ n, P16925702616733809290.a n = A100236 n

end A100236

/-! ## A100236.P456758198954870194

`A087130(n)-1`
-/

namespace A100236.P456758198954870194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087130 n - 1

end

end A100236.P456758198954870194

namespace A100236

/-- `A087130(n)-1` -/
def P456758198954870194.Spec : Prop :=
  ∀ n, P456758198954870194.a n = A100236 n

end A100236

/-! ## A100236.P1771058337935225347

`A015449(n)+A100237(n)-1`
-/

namespace A100236.P1771058337935225347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015449 n + (A100237 n - 1)

end

end A100236.P1771058337935225347

namespace A100236

/-- `A015449(n)+A100237(n)-1` -/
def P1771058337935225347.Spec : Prop :=
  ∀ n, P1771058337935225347.a n = A100236 n

end A100236

/-! ## A100236.P4464006012649170756

`A153881(n+2)+A087130(n)`
-/

namespace A100236.P4464006012649170756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A087130 n

end

end A100236.P4464006012649170756

namespace A100236

/-- `A153881(n+2)+A087130(n)` -/
def P4464006012649170756.Spec : Prop :=
  ∀ n, P4464006012649170756.a n = A100236 n

end A100236

/-! ## A100236.P10057906284621807354

`A087960(A016825(n))+A087130(n)`
-/

namespace A100236.P10057906284621807354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A016825 n).toNat + A087130 n

end

end A100236.P10057906284621807354

namespace A100236

/-- `A087960(A016825(n))+A087130(n)` -/
def P10057906284621807354.Spec : Prop :=
  ∀ n, P10057906284621807354.a n = A100236 n

end A100236

/-! ## A100236.P3770088471843659597

`A087960(A022341(n))+A087130(n)`
-/

namespace A100236.P3770088471843659597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A022341 n).toNat + A087130 n

end

end A100236.P3770088471843659597

namespace A100236

/-- `A087960(A022341(n))+A087130(n)` -/
def P3770088471843659597.Spec : Prop :=
  ∀ n, P3770088471843659597.a n = A100236 n

end A100236

/-! ## A100236.P13125933022141544599

`A350479(ratio[A000079(n)])+A087130(n)`
-/

namespace A100236.P13125933022141544599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350479 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat + A087130 n

end

end A100236.P13125933022141544599

namespace A100236

/-- `A350479(ratio[A000079(n)])+A087130(n)` -/
def P13125933022141544599.Spec : Prop :=
  ∀ n, P13125933022141544599.a n = A100236 n

end A100236

/-! ## A100236.P8365936100497907774

`A107393(A065091(n+1))+A087130(n)`
-/

namespace A100236.P8365936100497907774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A065091 (n + 1)).toNat + A087130 n

end

end A100236.P8365936100497907774

namespace A100236

/-- `A107393(A065091(n+1))+A087130(n)` -/
def P8365936100497907774.Spec : Prop :=
  ∀ n, P8365936100497907774.a n = A100236 n

end A100236

/-! ## A100236.P18422192731380649930

`floor(sqrt(A051930(2*n)))-1`
-/

namespace A100236.P18422192731380649930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A051930 (2 * n)) - 1

end

end A100236.P18422192731380649930

namespace A100236

/-- `floor(sqrt(A051930(2*n)))-1` -/
def P18422192731380649930.Spec : Prop :=
  ∀ n, P18422192731380649930.a n = A100236 n

end A100236

/-!
# A100237: Secondary diagonal of triangle A100235 divided by row number: a(n) = A100235(n+1,n)/(n+1) for n >= 0.

The programs for A100237, the canonical program `A100237.P9888519358899803552` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100237 has offset 0).

The definition of A100237 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100237.P9888519358899803552

`5*a(n-1)+a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100237

/-- `5*a(n-1)+a(n-2)` -/
def P9888519358899803552.Spec : Prop :=
  ∀ n, (P9888519358899803552.a n : ℤ) = A100237 n

theorem P9888519358899803552.correct : P9888519358899803552.Spec := by
  intro n
  simp only [A100237]

end A100237

/-! ## A100237.P7504363693077962680

`ogf((-1+x)/(-1+5x+x^2))`
-/

namespace A100237.P7504363693077962680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -5, -1] n

end

end A100237.P7504363693077962680

namespace A100237

/-- `ogf((-1+x)/(-1+5x+x^2))` -/
def P7504363693077962680.Spec : Prop :=
  ∀ n, P7504363693077962680.a n = A100237 n

end A100237

/-! ## A100237.P13247040611626678788

`a(n-2)+lcm(5, a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A100237.P13247040611626678788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + Nat.lcm 5 (a (n - 1))

end

end A100237.P13247040611626678788

namespace A100237

/-- `a(n-2)+lcm(5, a(n-1))` -/
def P13247040611626678788.Spec : Prop :=
  ∀ n, (P13247040611626678788.a n : ℤ) = A100237 n

end A100237

/-! ## A100237.P11064013257583504141

`6*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A100237.P11064013257583504141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  6 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A100237.P11064013257583504141

namespace A100237

/-- `6*a(n-1)-(a(n-1)-a(n-2))` -/
def P11064013257583504141.Spec : Prop :=
  ∀ n, P11064013257583504141.a n = A100237 n

end A100237

/-! ## A100237.P5245180489801810345

`A087130(n)-A015449(n)`
-/

namespace A100237.P5245180489801810345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087130 n - A015449 n

end

end A100237.P5245180489801810345

namespace A100237

/-- `A087130(n)-A015449(n)` -/
def P5245180489801810345.Spec : Prop :=
  ∀ n, P5245180489801810345.a n = A100237 n

end A100237

/-! ## A100237.P9211688251067843516

`Δ[A164581(n)-A015449(n)]`
-/

namespace A100237.P9211688251067843516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164581 n - A015449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100237.P9211688251067843516

namespace A100237

/-- `Δ[A164581(n)-A015449(n)]` -/
def P9211688251067843516.Spec : Prop :=
  ∀ n, P9211688251067843516.a n = A100237 n

end A100237

/-! ## A100237.P4533715797888062649

`A015449(n)+A052918(n)-A164581(n)`
-/

namespace A100237.P4533715797888062649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015449 n + (A052918 n - A164581 n)

end

end A100237.P4533715797888062649

namespace A100237

/-- `A015449(n)+A052918(n)-A164581(n)` -/
def P4533715797888062649.Spec : Prop :=
  ∀ n, P4533715797888062649.a n = A100237 n

end A100237

/-! ## A100237.P15615274337895176506

`A052918(n)+A052918(n)-A015449(n+1)`
-/

namespace A100237.P15615274337895176506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052918 n + (A052918 n - A015449 (n + 1))

end

end A100237.P15615274337895176506

namespace A100237

/-- `A052918(n)+A052918(n)-A015449(n+1)` -/
def P15615274337895176506.Spec : Prop :=
  ∀ n, P15615274337895176506.a n = A100237 n

end A100237

/-! ## A100237.P8283173884477488336

`A052918(n+1)-2*A164581(n+1)`
-/

namespace A100237.P8283173884477488336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052918 (n + 1) - 2 * A164581 (n + 1)

end

end A100237.P8283173884477488336

namespace A100237

/-- `A052918(n+1)-2*A164581(n+1)` -/
def P8283173884477488336.Spec : Prop :=
  ∀ n, P8283173884477488336.a n = A100237 n

end A100237

/-! ## A100237.P17150719194206612686

`A052918(n+1)+A052918(n)-A087130(n+1)`
-/

namespace A100237.P17150719194206612686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052918 (n + 1) + (A052918 n - A087130 (n + 1))

end

end A100237.P17150719194206612686

namespace A100237

/-- `A052918(n+1)+A052918(n)-A087130(n+1)` -/
def P17150719194206612686.Spec : Prop :=
  ∀ n, P17150719194206612686.a n = A100237 n

end A100237

/-!
# A100238: G.f. A(x) satisfies: 2^n + 1 = Sum_{k=0..n} [x^k] A(x)^n for n>=1.

The programs for A100238, there is no canonical definition to state claims against.
-/

/-! ## A100238.P12257532579322367336

`char[1-n²]-A025227(n)*A033999(n)`
-/

namespace A100238.P12257532579322367336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A025227 n * A033999 n

end

end A100238.P12257532579322367336

/-! ## A100238.P12554749401640600689

`char[A120112((1-n)²)]-A025227(n)/A033999(n)`
-/

namespace A100238.P12554749401640600689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120112 ((1 - (n : ℤ)) ^ 2).toNat

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) - (A025227 n : ℚ) / (A033999 n : ℚ)

end

end A100238.P12554749401640600689

/-! ## A100238.P4934933032922583334

`char[A001511(n+1)-n]-A025227(n)/A033999(n)`
-/

namespace A100238.P4934933032922583334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) - (A025227 n : ℚ) / (A033999 n : ℚ)

end

end A100238.P4934933032922583334

/-! ## A100238.P4906279061778834867

`char[A046523(n+1)-n]-A025227(n)/A033999(n)`
-/

namespace A100238.P4906279061778834867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) - (A025227 n : ℚ) / (A033999 n : ℚ)

end

end A100238.P4906279061778834867

/-! ## A100238.P10233222574371833776

`char[A351461(n+1)-n]-A025227(n)/A033999(n)`
-/

namespace A100238.P10233222574371833776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351461 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) - (A025227 n : ℚ) / (A033999 n : ℚ)

end

end A100238.P10233222574371833776

/-!
# A100240: G.f. A(x) satisfies: 4^n/2 = Sum_{k=0..n} [x^k]A(x)^n and also satisfies: ((4+z)^n + z^n)/2 = Sum_{k=0..n} [x^k](A(x)+z*x)^n for all z, where [x^k]A(x)^n denotes the coefficient of x^k in A(x)^n.

The programs for A100240, the canonical program `A100240.P1376351240416722442` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100240 has offset 0).

The definition of A100240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100240.P8602795193095700376

`(A100223(n)-char[1])*A280193(A305117(n))`
-/

namespace A100240.P8602795193095700376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100223 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A280193 (A305117 n).toNat

end

end A100240.P8602795193095700376

namespace A100240

/-- `(A100223(n)-char[1])*A280193(A305117(n))` -/
def P8602795193095700376.Spec : Prop :=
  ∀ n, P8602795193095700376.a n = A100240 n

end A100240

/-! ## A100240.P17152508800169123499

`2*A100223(n)-A008683(A166632(n+1))`
-/

namespace A100240.P17152508800169123499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100223 n - A008683 (A166632 (n + 1)).toNat

end

end A100240.P17152508800169123499

namespace A100240

/-- `2*A100223(n)-A008683(A166632(n+1))` -/
def P17152508800169123499.Spec : Prop :=
  ∀ n, P17152508800169123499.a n = A100240 n

end A100240

/-! ## A100240.P1376351240416722442

`A036453(n+1)*A100223(n)-A159075(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A100240

/-- `A036453(n+1)*A100223(n)-A159075(n)` -/
def P1376351240416722442.Spec : Prop :=
  ∀ n, P1376351240416722442.a n = A100240 n

theorem P1376351240416722442.correct : P1376351240416722442.Spec := by
  intro n
  simp only [A100240]

end A100240

/-!
# A100241: In binary representation of n, replace ones with n and zeros with n's binary complement (keeping leading zeros).

The programs for A100241, there is no canonical definition to state claims against.
-/

/-! ## A100241.P3654765211570617434

`A250120(A187729(3*n+2)%(A202917(2^n-1)+n!*∑[n/n!]-n))`
-/

namespace A100241.P3654765211570617434
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (Int.tmod (A187729 (3 * n + 2)) (SequenceMachineLib.roundAway ((A202917 (2 ^ n - 1) : ℚ) + ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℚ))))).toNat

end

end A100241.P3654765211570617434

/-! ## A100241.P595247630817341578

`A250120(A187729(3*n+2)%(A331157(n)-A351359(n+1)))`
-/

namespace A100241.P595247630817341578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (Int.tmod (A187729 (3 * n + 2)) (A331157 n - A351359 (n + 1))).toNat

end

end A100241.P595247630817341578

/-!
# A100242: a(n) = n^5 - n^2*(n^2 - 1)/2.

The programs for A100242, the canonical program `A100242.P17258774720473599640` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100242 has offset 0).

The definition of A100242 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100242.P17258774720473599640

`n^5-n²*(n²-1)/2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100242

/-- `n^5-n²*(n²-1)/2` -/
def P17258774720473599640.Spec : Prop :=
  ∀ n, P17258774720473599640.a n = (A100242 n : ℚ)

end A100242

/-! ## A100242.P10784000778373131551

`n*(n²²-A135503(n))`
-/

namespace A100242.P10784000778373131551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((n ^ 2) ^ 2 : ℤ) - A135503 n)

end

end A100242.P10784000778373131551

namespace A100242

/-- `n*(n²²-A135503(n))` -/
def P10784000778373131551.Spec : Prop :=
  ∀ n, P10784000778373131551.a n = A100242 n

end A100242

/-!
# A100243: a(n) is the length of a side of triangle A068619(n) or a(n) = (sqrt(8*A068619(n) + 1) - 1)/2.

The programs for A100243, there is no canonical definition to state claims against.
-/

/-! ## A100243.P18314446754965110205

`(sqrt(8*A068619(n+1)+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A100243.P18314446754965110205
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (8 * A068619 (n + 1) + 1 : ℝ) - 1) / 2

end

end A100243.P18314446754965110205

/-! ## A100243.P458614388022663827

`round(sqrt(2*A068619(n+1)))`
-/

namespace A100243.P458614388022663827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A068619 (n + 1) : ℝ))

end

end A100243.P458614388022663827

/-!
# A100244: a(n) = smallest positive integer such that {1 + product{k=1 to n} a(k)} is coprime to n.

The programs for A100244, there is no canonical definition to state claims against.
-/

/-! ## A100244.P3450888761690473218

`char[A082008(2^n)]+1`
-/

namespace A100244.P3450888761690473218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082008 (2 ^ n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A100244.P3450888761690473218

/-! ## A100244.P5410836436524354783

`gcd(2, ∑[A014815(2*n)]%3)`
-/

namespace A100244.P5410836436524354783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014815 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3)

end

end A100244.P5410836436524354783

/-! ## A100244.P13571728367321607456

`char[∑[A000638(and(n, -n))]]+1`
-/

namespace A100244.P13571728367321607456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000638 (Int.land (n : ℤ) (-(n : ℤ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A100244.P13571728367321607456

/-! ## A100244.P2230203759593870828

`C(2, A328114(record[n*and(1, n)]))!`
-/

namespace A100244.P2230203759593870828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose 2 (A328114 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat)

end

end A100244.P2230203759593870828

/-! ## A100244.P7845719245051381037

`char[A328572(2*n)^5+n]+1`
-/

namespace A100244.P7845719245051381037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 (2 * n) ^ 5 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A100244.P7845719245051381037

/-! ## A100244.P2807565967399650732

`char[∑[A000041(∏{e}[2*n, #]!)]]+1`
-/

namespace A100244.P2807565967399650732
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.factorial (∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A100244.P2807565967399650732

/-! ## A100244.P12139556958154689488

`gcd((n²+1)%3, A114209(comp[∑[n]]-n))`
-/

namespace A100244.P12139556958154689488
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((n ^ 2 + 1) % 3 : ℕ) : ℤ) (A114209 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n))

end

end A100244.P12139556958154689488

/-! ## A100244.P8905075635768880375

`A192064(∑[A014815(2*n)])`
-/

namespace A100244.P8905075635768880375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014815 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192064 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A100244.P8905075635768880375

/-! ## A100244.P12626120822138456485

`A001221(or(11, A213714(n+6)))`
-/

namespace A100244.P12626120822138456485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor 11 (A213714 (n + 6))).toNat

end

end A100244.P12626120822138456485

/-! ## A100244.P6302695874687142326

`A014963(A328835(comp[2*(n+1)]))`
-/

namespace A100244.P6302695874687142326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A328835 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A100244.P6302695874687142326

/-!
# A100248: Row sums of the slanted Catalan convolution table A100247.

The programs for A100248, there is no canonical definition to state claims against.
-/

/-! ## A100248.P10079576267570729583

`A132364(2*n+1)+A132364(2*n)`
-/

namespace A100248.P10079576267570729583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132364 (2 * n + 1) + A132364 (2 * n)

end

end A100248.P10079576267570729583

/-! ## A100248.P13322875651182951516

`record[A132364(A000265(n+1))+A132364(n)]`
-/

namespace A100248.P13322875651182951516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132364 (A000265 (n + 1)).toNat + A132364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100248.P13322875651182951516

/-!
# A100250: Positions where values change in A100144.

The programs for A100250, there is no canonical definition to state claims against.
-/

/-! ## A100250.P13407090220955890932

`A100143(n)+a(n-1)` with `a(0)=1`
-/

namespace A100250.P13407090220955890932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A100143 n + a (n - 1)

end

end A100250.P13407090220955890932

/-! ## A100250.P11650733614474826279

`∑[A100143(round(sqrt(n²+1)))]`
-/

namespace A100250.P11650733614474826279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100143 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100250.P11650733614474826279

/-! ## A100250.P10531279312153432723

`∑[A100143(abs(1-n)+1)]-1`
-/

namespace A100250.P10531279312153432723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100143 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A100250.P10531279312153432723

/-! ## A100250.P14714506731180892290

`∑[∑[A000120(A003418(n))]]-n`
-/

namespace A100250.P14714506731180892290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003418 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A100250.P14714506731180892290

/-! ## A100250.P2971793820715238472

`∑[A100144(A001595(n))]`
-/

namespace A100250.P2971793820715238472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100144 (A001595 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100250.P2971793820715238472

/-!
# A100251: The square root of A100252; the index of the least square number greater than 1 that is also an n-gonal number, or 0 if none exists.

The programs for A100251, there is no canonical definition to state claims against.
-/

/-! ## A100251.P9081644355557637174

`sqrt(A100252(n+3))`
-/

namespace A100251.P9081644355557637174
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A100252 (n + 3) : ℝ)

end

end A100251.P9081644355557637174

/-! ## A100251.P2130979842105276273

`A100252(n+3)^(A001316(A001316(n))/4)`
-/

namespace A100251.P2130979842105276273
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A100252 (n + 3) : ℝ) ^ ((A001316 (A001316 n).toNat : ℚ) / 4 : ℝ)

end

end A100251.P2130979842105276273

/-! ## A100251.P3790182457827279238

`A100252(n+3)^(A005408(n)/A016825(n))`
-/

namespace A100251.P3790182457827279238
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A100252 (n + 3) : ℝ) ^ ((A005408 n : ℚ) / (A016825 n : ℚ) : ℝ)

end

end A100251.P3790182457827279238

/-! ## A100251.P935901379627835839

`A262689(floor(A100252(n+3)+acot(n)))`
-/

namespace A100251.P935901379627835839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 ⌊(A100252 (n + 3) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A100251.P935901379627835839

/-! ## A100251.P3772300857465366753

`A286297(A100252(n+3))+A243832(n)`
-/

namespace A100251.P3772300857465366753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286297 (A100252 (n + 3)).toNat + A243832 n

end

end A100251.P3772300857465366753

/-!
# A100252: Least square n-gonal number greater than 1, or 0 if none exists.

The programs for A100252, there is no canonical definition to state claims against.
-/

/-! ## A100252.P5847186715151913380

`A100251(n+3)²`
-/

namespace A100252.P5847186715151913380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100251 (n + 3) ^ 2

end

end A100252.P5847186715151913380

/-! ## A100252.P13171759879220391831

`A100251(n+3)^ratio[A000079(n)]`
-/

namespace A100252.P13171759879220391831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A100251 (n + 3) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A100252.P13171759879220391831

/-! ## A100252.P6947051841889394260

`A100251(n+3)^ratio[A007283(n)]`
-/

namespace A100252.P6947051841889394260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A100251 (n + 3) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A100252.P6947051841889394260

/-! ## A100252.P17758141708862396330

`A100251(n+3)^A000034(or(1, n))`
-/

namespace A100252.P17758141708862396330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100251 (n + 3) : ℚ) ^ (A000034 (Nat.lor 1 n) : ℤ)

end

end A100252.P17758141708862396330

/-! ## A100252.P10718785133812805066

`A100251(n+3)^A020639(2*(n+1))`
-/

namespace A100252.P10718785133812805066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100251 (n + 3) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A100252.P10718785133812805066

/-! ## A100252.P14802707157541612767

`A100251(n+3)^A000040(gcd(n, n+1))`
-/

namespace A100252.P14802707157541612767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100251 (n + 3) : ℚ) ^ (A000040 (Nat.gcd n (n + 1)) : ℤ)

end

end A100252.P14802707157541612767

/-! ## A100252.P4482101870266278041

`A100251(n+3)^A000005(A100201(n+1))`
-/

namespace A100252.P4482101870266278041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100251 (n + 3) : ℚ) ^ (A000005 (A100201 (n + 1)).toNat : ℤ)

end

end A100252.P4482101870266278041

/-! ## A100252.P10474616169656784846

`A100251(n+3)^A000005(A100202(n+1))`
-/

namespace A100252.P10474616169656784846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100251 (n + 3) : ℚ) ^ (A000005 (A100202 (n + 1)).toNat : ℤ)

end

end A100252.P10474616169656784846

/-! ## A100252.P11351486727169598731

`A100251(n+3)^A000005(record[A014963(n+2)])`
-/

namespace A100252.P11351486727169598731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100251 (n + 3) : ℚ) ^ (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A100252.P11351486727169598731

/-! ## A100252.P16429743629006776270

`A100251(n+3)^A000040(A007318(floor(1/(n+1))))`
-/

namespace A100252.P16429743629006776270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100251 (n + 3) : ℚ) ^ (A000040 (A007318 ⌊1 / (n + 1 : ℚ)⌋.toNat).toNat : ℤ)

end

end A100252.P16429743629006776270

/-!
# A100253: Let j be the smallest integer for which 1+(1+1*n)+(1+2*n)+...+(1+j*n)=k^2=s. Then a(n)=1+j*n; if no such j exists, then a(n)=0.

The programs for A100253, there is no canonical definition to state claims against.
-/

/-! ## A100253.P12228027117626391855

`A188898(n+3)+n*A100254(n+1)`
-/

namespace A100253.P12228027117626391855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188898 (n + 3) + (n : ℤ) * A100254 (n + 1)

end

end A100253.P12228027117626391855

/-! ## A100253.P12545639335867313181

`n*A100254(n+1)+A065475(A100254(n+1)+1)-1`
-/

namespace A100253.P12545639335867313181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A100254 (n + 1) + (A065475 (A100254 (n + 1) + 1).toNat - 1)

end

end A100253.P12545639335867313181

/-! ## A100253.P13359383175676214917

`n*A100254(n+1)+A131738(2*A100254(n+1))-A100254(n+1)`
-/

namespace A100253.P13359383175676214917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A100254 (n + 1) + (A131738 (2 * A100254 (n + 1)).toNat - A100254 (n + 1))

end

end A100253.P13359383175676214917

/-! ## A100253.P6969525894430595564

`A087156((n+1)*A100254(n+1)+1)`
-/

namespace A100253.P6969525894430595564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 ((n + 1 : ℤ) * A100254 (n + 1) + 1).toNat

end

end A100253.P6969525894430595564

/-!
# A100254: Let j be the smallest integer for which 1 + (1+1*n) + (1+2*n) + ... + (1+j*n) = k^2 = s. Then a(n)=j; if no such j exists, then a(n)=0.

The programs for A100254, there is no canonical definition to state claims against.
-/

/-! ## A100254.P5248414629280825818

`ceil(A188898(n+3)-atan(A188898(n+3)))`
-/

namespace A100254.P5248414629280825818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A188898 (n + 3) : ℝ) - Real.arctan (A188898 (n + 3) : ℝ)⌉

end

end A100254.P5248414629280825818

/-! ## A100254.P4744913089698404379

`A289207(A188898(n+3)+1)`
-/

namespace A100254.P4744913089698404379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A188898 (n + 3) + 1).toNat

end

end A100254.P4744913089698404379

/-! ## A100254.P10334152883509179760

`A001281(A004275(A188898(n+3)))`
-/

namespace A100254.P10334152883509179760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A004275 (A188898 (n + 3)).toNat).toNat

end

end A100254.P10334152883509179760

/-! ## A100254.P15430876407215182745

`A004275(A188898(n+3))/A036453(n+2)`
-/

namespace A100254.P15430876407215182745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (A188898 (n + 3)).toNat : ℚ) / (A036453 (n + 2) : ℚ)

end

end A100254.P15430876407215182745

/-! ## A100254.P10532941572723475027

`A004275(A188898(n+3))/gcd(2, A016825(n))`
-/

namespace A100254.P10532941572723475027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (A188898 (n + 3)).toNat : ℚ) / (Int.gcd 2 (A016825 n) : ℚ)

end

end A100254.P10532941572723475027

/-! ## A100254.P12400910239703269770

`A004275(A188898(n+3))/A020639(2*(n+1))`
-/

namespace A100254.P12400910239703269770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (A188898 (n + 3)).toNat : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A100254.P12400910239703269770

/-! ## A100254.P4166056563602209810

`A004275(A188898(n+3))/(Δ[A090223(n)]!+1)`
-/

namespace A100254.P4166056563602209810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (A188898 (n + 3)).toNat : ℚ) / (Nat.factorial (f1 (n + 1) - f1 n).toNat + 1 : ℚ)

end

end A100254.P4166056563602209810

/-! ## A100254.P14876466989236146753

`A004275(A188898(n+3))/A000005(A035095(n+1))`
-/

namespace A100254.P14876466989236146753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (A188898 (n + 3)).toNat : ℚ) / (A000005 (A035095 (n + 1)).toNat : ℚ)

end

end A100254.P14876466989236146753

/-! ## A100254.P8824903973700517145

`A004275(A188898(n+3))/A001222(A108605(n+1))`
-/

namespace A100254.P8824903973700517145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (A188898 (n + 3)).toNat : ℚ) / (A001222 (A108605 (n + 1)).toNat : ℚ)

end

end A100254.P8824903973700517145

/-!
# A100255: Squares of pentagonal numbers: a(n) = (1/4)*n^2*(3*n-1)^2.

The programs for A100255, the canonical program `A100255.P6489703418769820428` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100255 has offset 0).

The definition of A100255 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100255.P13784408653851875811

`1/4*n²*(3*n-1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A100255.P13784408653851875811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (n ^ 2 : ℚ) * (((3 * n : ℤ) - 1) ^ 2 : ℚ)

end

end A100255.P13784408653851875811

namespace A100255

/-- `1/4*n²*(3*n-1)²` -/
def P13784408653851875811.Spec : Prop :=
  ∀ n, P13784408653851875811.a n = (A100255 n : ℚ)

end A100255

/-! ## A100255.P6489703418769820428

`A000326(n)²`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A100255

/-- `A000326(n)²` -/
def P6489703418769820428.Spec : Prop :=
  ∀ n, P6489703418769820428.a n = A100255 n

theorem P6489703418769820428.correct : P6489703418769820428.Spec := by
  intro n
  simp only [A100255]

end A100255

/-! ## A100255.P11518243052079163114

`(C(n, 2)+n²)²`
-/

namespace A100255.P11518243052079163114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + n ^ 2) ^ 2

end

end A100255.P11518243052079163114

namespace A100255

/-- `(C(n, 2)+n²)²` -/
def P11518243052079163114.Spec : Prop :=
  ∀ n, (P11518243052079163114.a n : ℤ) = A100255 n

end A100255

/-! ## A100255.P7109451394996181346

`(C(3*n, 2)/3)²`
-/

namespace A100255.P7109451394996181346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (3 * n) 2 : ℚ) / 3) ^ 2

end

end A100255.P7109451394996181346

namespace A100255

/-- `(C(3*n, 2)/3)²` -/
def P7109451394996181346.Spec : Prop :=
  ∀ n, P7109451394996181346.a n = (A100255 n : ℚ)

end A100255

/-! ## A100255.P16030243094868537187

`∑[a(n-1)+3]²` with `a(0)=0, a(1)=1`
-/

namespace A100255.P16030243094868537187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A100255.P16030243094868537187

namespace A100255

/-- `∑[a(n-1)+3]²` -/
def P16030243094868537187.Spec : Prop :=
  ∀ n, (P16030243094868537187.a n : ℤ) = A100255 n

end A100255

/-! ## A100255.P3617776556290527448

`Δ[lcm(n, (1-n)²)]²/4`
-/

namespace A100255.P3617776556290527448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((1 - (n : ℤ)) ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 : ℚ) / 4

end

end A100255.P3617776556290527448

namespace A100255

/-- `Δ[lcm(n, (1-n)²)]²/4` -/
def P3617776556290527448.Spec : Prop :=
  ∀ n, P3617776556290527448.a n = (A100255 n : ℚ)

end A100255

/-! ## A100255.P4890147819089580668

`∑[a(n-1)+3]^2` with `a(0)=0, a(1)=1`
-/

namespace A100255.P4890147819089580668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A100255.P4890147819089580668

namespace A100255

/-- `∑[a(n-1)+3]^2` -/
def P4890147819089580668.Spec : Prop :=
  ∀ n, (P4890147819089580668.a n : ℤ) = A100255 n

end A100255

/-! ## A100255.P10221062812289167824

`(2-∑[a(n-1)-3])²` with `a(0)=2`
-/

namespace A100255.P10221062812289167824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A100255.P10221062812289167824

namespace A100255

/-- `(2-∑[a(n-1)-3])²` -/
def P10221062812289167824.Spec : Prop :=
  ∀ n, P10221062812289167824.a n = A100255 n

end A100255

/-! ## A100255.P2422689342404821112

`(1-A143689(n))²`
-/

namespace A100255.P2422689342404821112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A143689 n) ^ 2

end

end A100255.P2422689342404821112

namespace A100255

/-- `(1-A143689(n))²` -/
def P2422689342404821112.Spec : Prop :=
  ∀ n, P2422689342404821112.a n = A100255 n

end A100255

/-! ## A100255.P6980773985710773727

`(A049450(n)/2)²`
-/

namespace A100255.P6980773985710773727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A049450 n : ℚ) / 2) ^ 2

end

end A100255.P6980773985710773727

namespace A100255

/-- `(A049450(n)/2)²` -/
def P6980773985710773727.Spec : Prop :=
  ∀ n, P6980773985710773727.a n = (A100255 n : ℚ)

end A100255

/-! ## A100255.P4435859574226008670

`(A062741(n)/3)²`
-/

namespace A100255.P4435859574226008670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A062741 n : ℚ) / 3) ^ 2

end

end A100255.P4435859574226008670

namespace A100255

/-- `(A062741(n)/3)²` -/
def P4435859574226008670.Spec : Prop :=
  ∀ n, P4435859574226008670.a n = (A100255 n : ℚ)

end A100255

/-! ## A100255.P13198959785346946137

`(A033579(n)/4)²`
-/

namespace A100255.P13198959785346946137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A033579 n : ℚ) / 4) ^ 2

end

end A100255.P13198959785346946137

namespace A100255

/-- `(A033579(n)/4)²` -/
def P13198959785346946137.Spec : Prop :=
  ∀ n, P13198959785346946137.a n = (A100255 n : ℚ)

end A100255

/-! ## A100255.P12190979893836083531

`(A152734(n)/5)²`
-/

namespace A100255.P12190979893836083531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A152734 n : ℚ) / 5) ^ 2

end

end A100255.P12190979893836083531

namespace A100255

/-- `(A152734(n)/5)²` -/
def P12190979893836083531.Spec : Prop :=
  ∀ n, P12190979893836083531.a n = (A100255 n : ℚ)

end A100255

/-! ## A100255.P12828351412128548133

`(n-A005449(n))²`
-/

namespace A100255.P12828351412128548133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A005449 n) ^ 2

end

end A100255.P12828351412128548133

namespace A100255

/-- `(n-A005449(n))²` -/
def P12828351412128548133.Spec : Prop :=
  ∀ n, P12828351412128548133.a n = A100255 n

end A100255

/-! ## A100255.P7462836773250635952

`(1-∑[A112335(n)])²`
-/

namespace A100255.P7462836773250635952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A100255.P7462836773250635952

namespace A100255

/-- `(1-∑[A112335(n)])²` -/
def P7462836773250635952.Spec : Prop :=
  ∀ n, P7462836773250635952.a n = A100255 n

end A100255

/-! ## A100255.P5906957375577913500

`(A161680(n)+n²)²`
-/

namespace A100255.P5906957375577913500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161680 n + (n ^ 2 : ℤ)) ^ 2

end

end A100255.P5906957375577913500

namespace A100255

/-- `(A161680(n)+n²)²` -/
def P5906957375577913500.Spec : Prop :=
  ∀ n, P5906957375577913500.a n = A100255 n

end A100255

/-! ## A100255.P2670211417944459934

`(n²-A005476(n))²`
-/

namespace A100255.P2670211417944459934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - A005476 n) ^ 2

end

end A100255.P2670211417944459934

namespace A100255

/-- `(n²-A005476(n))²` -/
def P2670211417944459934.Spec : Prop :=
  ∀ n, P2670211417944459934.a n = A100255 n

end A100255

/-! ## A100255.P9433099590054668648

`(∑[n]-A001105(n))²`
-/

namespace A100255.P9433099590054668648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001105 n) ^ 2

end

end A100255.P9433099590054668648

namespace A100255

/-- `(∑[n]-A001105(n))²` -/
def P9433099590054668648.Spec : Prop :=
  ∀ n, P9433099590054668648.a n = A100255 n

end A100255

/-! ## A100255.P6033670697078186432

`∑[n-A130824(n)]²`
-/

namespace A100255.P6033670697078186432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A130824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A100255.P6033670697078186432

namespace A100255

/-- `∑[n-A130824(n)]²` -/
def P6033670697078186432.Spec : Prop :=
  ∀ n, P6033670697078186432.a n = A100255 n

end A100255

/-! ## A100255.P4975351806854043330

`A100256(n)-A117642(n)`
-/

namespace A100255.P4975351806854043330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100256 n - A117642 n

end

end A100255.P4975351806854043330

namespace A100255

/-- `A100256(n)-A117642(n)` -/
def P4975351806854043330.Spec : Prop :=
  ∀ n, P4975351806854043330.a n = A100255 n

end A100255

/-!
# A100256: Squares of second pentagonal numbers: a(n) = (1/4)*n^2*(3*n+1)^2.

The programs for A100256, the canonical program `A100256.P12472559385860508743` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100256 has offset 0).

The definition of A100256 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100256.P12472559385860508743

`1/4*n²*(3*n+1)²`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100256

/-- `1/4*n²*(3*n+1)²` -/
def P12472559385860508743.Spec : Prop :=
  ∀ n, P12472559385860508743.a n = (A100256 n : ℚ)

end A100256

/-! ## A100256.P8238796342581915244

`Δ[n*C(n, 2)]²`
-/

namespace A100256.P8238796342581915244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A100256.P8238796342581915244

namespace A100256

/-- `Δ[n*C(n, 2)]²` -/
def P8238796342581915244.Spec : Prop :=
  ∀ n, P8238796342581915244.a n = A100256 n

end A100256

/-! ## A100256.P18295612607397614379

`Δ[n*C(n, 2)]^2`
-/

namespace A100256.P18295612607397614379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A100256.P18295612607397614379

namespace A100256

/-- `Δ[n*C(n, 2)]^2` -/
def P18295612607397614379.Spec : Prop :=
  ∀ n, P18295612607397614379.a n = A100256 n

end A100256

/-! ## A100256.P13117135202775228012

`C(3*n+1, 2)²/9`
-/

namespace A100256.P13117135202775228012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n + 1) 2 ^ 2 : ℚ) / 9

end

end A100256.P13117135202775228012

namespace A100256

/-- `C(3*n+1, 2)²/9` -/
def P13117135202775228012.Spec : Prop :=
  ∀ n, P13117135202775228012.a n = (A100256 n : ℚ)

end A100256

/-! ## A100256.P9447975660383266590

`(C(n+1, 2)+n²)^2`
-/

namespace A100256.P9447975660383266590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 + n ^ 2) ^ 2

end

end A100256.P9447975660383266590

namespace A100256

/-- `(C(n+1, 2)+n²)^2` -/
def P9447975660383266590.Spec : Prop :=
  ∀ n, (P9447975660383266590.a n : ℤ) = A100256 n

end A100256

/-! ## A100256.P13564333544449736074

`Δ[lcm(n-1, n²)]²/4`
-/

namespace A100256.P13564333544449736074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (n ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 : ℚ) / 4

end

end A100256.P13564333544449736074

namespace A100256

/-- `Δ[lcm(n-1, n²)]²/4` -/
def P13564333544449736074.Spec : Prop :=
  ∀ n, P13564333544449736074.a n = (A100256 n : ℚ)

end A100256

/-! ## A100256.P14471742021330039723

`Δ[C(n², 2)/(n+1)]²`
-/

namespace A100256.P14471742021330039723
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A100256.P14471742021330039723

namespace A100256

/-- `Δ[C(n², 2)/(n+1)]²` -/
def P14471742021330039723.Spec : Prop :=
  ∀ n, P14471742021330039723.a n = (A100256 n : ℚ)

end A100256

/-! ## A100256.P6992629908646641384

`∑[a(n-1)-3]²` with `a(0)=0, a(1)=-2`
-/

namespace A100256.P6992629908646641384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -2] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A100256.P6992629908646641384

namespace A100256

/-- `∑[a(n-1)-3]²` -/
def P6992629908646641384.Spec : Prop :=
  ∀ n, P6992629908646641384.a n = A100256 n

end A100256

/-! ## A100256.P5361863353533451770

`∑[a(n-1)+3]^2` with `a(0)=0, a(1)=2`
-/

namespace A100256.P5361863353533451770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A100256.P5361863353533451770

namespace A100256

/-- `∑[a(n-1)+3]^2` -/
def P5361863353533451770.Spec : Prop :=
  ∀ n, (P5361863353533451770.a n : ℤ) = A100256 n

end A100256

/-! ## A100256.P9556293644035048606

`lcm(n, 2*n+1+n)²/4`
-/

namespace A100256.P9556293644035048606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (2 * n + 1 + n) ^ 2 : ℚ) / 4

end

end A100256.P9556293644035048606

namespace A100256

/-- `lcm(n, 2*n+1+n)²/4` -/
def P9556293644035048606.Spec : Prop :=
  ∀ n, P9556293644035048606.a n = (A100256 n : ℚ)

end A100256

/-! ## A100256.P1395288825308918835

`A005449(n)²`
-/

namespace A100256.P1395288825308918835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n ^ 2

end

end A100256.P1395288825308918835

namespace A100256

/-- `A005449(n)²` -/
def P1395288825308918835.Spec : Prop :=
  ∀ n, P1395288825308918835.a n = A100256 n

end A100256

/-! ## A100256.P18199086546523761323

`(A049451(n)/2)²`
-/

namespace A100256.P18199086546523761323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A049451 n : ℚ) / 2) ^ 2

end

end A100256.P18199086546523761323

namespace A100256

/-- `(A049451(n)/2)²` -/
def P18199086546523761323.Spec : Prop :=
  ∀ n, P18199086546523761323.a n = (A100256 n : ℚ)

end A100256

/-! ## A100256.P3629506087627924419

`A000217(3*n)²/9`
-/

namespace A100256.P3629506087627924419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (3 * n) ^ 2 : ℚ) / 9

end

end A100256.P3629506087627924419

namespace A100256

/-- `A000217(3*n)²/9` -/
def P3629506087627924419.Spec : Prop :=
  ∀ n, P3629506087627924419.a n = (A100256 n : ℚ)

end A100256

/-! ## A100256.P11887832006832619404

`A117642(n)+A100255(n)`
-/

namespace A100256.P11887832006832619404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + A100255 n

end

end A100256.P11887832006832619404

namespace A100256

/-- `A117642(n)+A100255(n)` -/
def P11887832006832619404.Spec : Prop :=
  ∀ n, P11887832006832619404.a n = A100256 n

end A100256

/-! ## A100256.P2354660104432395803

`A229146(n)-A006011(n)`
-/

namespace A100256.P2354660104432395803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229146 n - A006011 n

end

end A100256.P2354660104432395803

namespace A100256

/-- `A229146(n)-A006011(n)` -/
def P2354660104432395803.Spec : Prop :=
  ∀ n, P2354660104432395803.a n = A100256 n

end A100256

/-! ## A100256.P10459615354906700117

`A297662(n+1)+A260810(n)`
-/

namespace A100256.P10459615354906700117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297662 (n + 1) + A260810 n

end

end A100256.P10459615354906700117

namespace A100256

/-- `A297662(n+1)+A260810(n)` -/
def P10459615354906700117.Spec : Prop :=
  ∀ n, P10459615354906700117.a n = A100256 n

end A100256

/-! ## A100256.P11330047957055612337

`Δ[A162607(n+1)]²`
-/

namespace A100256.P11330047957055612337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A100256.P11330047957055612337

namespace A100256

/-- `Δ[A162607(n+1)]²` -/
def P11330047957055612337.Spec : Prop :=
  ∀ n, P11330047957055612337.a n = A100256 n

end A100256

/-! ## A100256.P1986844653129890880

`A001318(2*n)²`
-/

namespace A100256.P1986844653129890880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (2 * n) ^ 2

end

end A100256.P1986844653129890880

namespace A100256

/-- `A001318(2*n)²` -/
def P1986844653129890880.Spec : Prop :=
  ∀ n, P1986844653129890880.a n = A100256 n

end A100256

/-! ## A100256.P17785453017603865826

`A211539(2*n)²`
-/

namespace A100256.P17785453017603865826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211539 (2 * n) ^ 2

end

end A100256.P17785453017603865826

namespace A100256

/-- `A211539(2*n)²` -/
def P17785453017603865826.Spec : Prop :=
  ∀ n, P17785453017603865826.a n = A100256 n

end A100256

/-! ## A100256.P14677845822751584398

`A212506(2*n)/4`
-/

namespace A100256.P14677845822751584398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212506 (2 * n) : ℚ) / 4

end

end A100256.P14677845822751584398

namespace A100256

/-- `A212506(2*n)/4` -/
def P14677845822751584398.Spec : Prop :=
  ∀ n, P14677845822751584398.a n = (A100256 n : ℚ)

end A100256

/-!
# A100257: Triangle of expansions of 2^(k-1)*x^k in terms of T(n,x), in descending degrees n of T, with T the Chebyshev polynomials.

The programs for A100257, there is no canonical definition to state claims against.
-/

/-! ## A100257.P11445767201313287424

`A286096((n²+n)%A080036(n))`
-/

namespace A100257.P11445767201313287424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286096 (Int.tmod (n ^ 2 + n : ℤ) (A080036 n)).toNat

end

end A100257.P11445767201313287424

/-! ## A100257.P14610774950828246968

`A286096(A061579(n)%A063007(n))`
-/

namespace A100257.P14610774950828246968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286096 (Int.tmod (A061579 n) (A063007 n)).toNat

end

end A100257.P14610774950828246968

/-! ## A100257.P9419547878660125573

`A286096((1-A073424(n))*A061579(n))`
-/

namespace A100257.P9419547878660125573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286096 ((1 - A073424 n) * A061579 n).toNat

end

end A100257.P9419547878660125573

/-! ## A100257.P10709511666432006324

`A286096(lcm(1-A073424(n), A061579(n)))`
-/

namespace A100257.P10709511666432006324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286096 (Int.lcm (1 - A073424 n) (A061579 n))

end

end A100257.P10709511666432006324

/-! ## A100257.P14398699515528693447

`A286096(∑[2*n]%comp[∑[n]])`
-/

namespace A100257.P14398699515528693447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286096 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A100257.P14398699515528693447

/-! ## A100257.P11239556600059345715

`A286096(A061579(n))`
-/

namespace A100257.P11239556600059345715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286096 (A061579 n).toNat

end

end A100257.P11239556600059345715

/-!
# A100258: Triangle of coefficients of normalized Legendre polynomials, with increasing exponents.

The programs for A100258, there is no canonical definition to state claims against.
-/

/-! ## A100258.P4962210652671411114

`A082907(n)*A356205(n)`
-/

namespace A100258.P4962210652671411114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082907 n * A356205 n

end

end A100258.P4962210652671411114

/-! ## A100258.P6684274685353093956

`A157077(n)/A001316(A003056(n))`
-/

namespace A100258.P6684274685353093956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157077 n : ℚ) / (A001316 (A003056 n).toNat : ℚ)

end

end A100258.P6684274685353093956

/-! ## A100258.P12129779024489721715

`A006519(A246381(n))*A356205(n)`
-/

namespace A100258.P12129779024489721715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A246381 n).toNat * A356205 n

end

end A100258.P12129779024489721715

/-! ## A100258.P9138596670147844357

`A356205(n)*A384877(A000700(2*n+1))`
-/

namespace A100258.P9138596670147844357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356205 n * A384877 (A000700 (2 * n + 1)).toNat

end

end A100258.P9138596670147844357

/-! ## A100258.P11440278323778799604

`A356205(n)*A384877(A085738(n))`
-/

namespace A100258.P11440278323778799604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356205 n * A384877 (A085738 n).toNat

end

end A100258.P11440278323778799604

/-!
# A100259: Coefficient of x^2 in 2n-th normalized Legendre polynomial.

The programs for A100259, there is no canonical definition to state claims against.
-/

/-! ## A100259.P8368498911686417985

`A008316(n*(n+3)+3)`
-/

namespace A100259.P8368498911686417985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008316 (n * (n + 3) + 3)

end

end A100259.P8368498911686417985

/-! ## A100259.P9295551321878625957

`A100258(2*((n+1)²+1)+1+n)`
-/

namespace A100259.P9295551321878625957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100258 (2 * ((n + 1) ^ 2 + 1) + 1 + n)

end

end A100259.P9295551321878625957

/-! ## A100259.P15151818019499341606

`∑[Δ[2*lcm(2, n)]-3]*A001803(n+1)`
-/

namespace A100259.P15151818019499341606
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001803 (n + 1)

end

end A100259.P15151818019499341606

/-! ## A100259.P1297598727686234551

`∑[A157142(n)]*A001803(n+1)`
-/

namespace A100259.P1297598727686234551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001803 (n + 1)

end

end A100259.P1297598727686234551

/-! ## A100259.P14959071610588834831

`Δ[A001057(n)]*A001803(n+1)`
-/

namespace A100259.P14959071610588834831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001803 (n + 1)

end

end A100259.P14959071610588834831

/-!
# A100260: Fixed point of morphism 0 -> 01, 1 -> 02, 2 -> 31, 3 -> 32.

The programs for A100260, the canonical program `A100260.P16219694720589245908` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100260 has offset 1).

The definition of A100260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100260.P621031299920419130

`xor(3*n%2, A340503(n+1))`
-/

namespace A100260.P621031299920419130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((3 * (n % 2) : ℕ) : ℤ) (A340503 (n + 1))

end

end A100260.P621031299920419130

namespace A100260

/-- `xor(3*n%2, A340503(n+1))` -/
def P621031299920419130.Spec : Prop :=
  ∀ n, P621031299920419130.a n = A100260 (n + 1)

end A100260

/-! ## A100260.P16219694720589245908

`xor(A020987(n)+1, and(1, n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A100260

/-- `xor(A020987(n)+1, and(1, n+1))` -/
def P16219694720589245908.Spec : Prop :=
  ∀ n, P16219694720589245908.a n = A100260 (n + 1)

theorem P16219694720589245908.correct : P16219694720589245908.Spec := by
  intro n
  simp only [A100260, Nat.add_sub_cancel]

end A100260

/-! ## A100260.P9847334867881807592

`and(3, A006068(and(n, 2*n+1)))`
-/

namespace A100260.P9847334867881807592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A006068 (Nat.land n (2 * n + 1)))

end

end A100260.P9847334867881807592

namespace A100260

/-- `and(3, A006068(and(n, 2*n+1)))` -/
def P9847334867881807592.Spec : Prop :=
  ∀ n, P9847334867881807592.a n = A100260 (n + 1)

end A100260

/-! ## A100260.P8117441065093695067

`xor(A010674(n), A340503(n+1))`
-/

namespace A100260.P8117441065093695067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010674 n) (A340503 (n + 1))

end

end A100260.P8117441065093695067

namespace A100260

/-- `xor(A010674(n), A340503(n+1))` -/
def P8117441065093695067.Spec : Prop :=
  ∀ n, P8117441065093695067.a n = A100260 (n + 1)

end A100260

/-! ## A100260.P17588359277129163325

`A006068(A105584(n)-A166333(2*n+3))`
-/

namespace A100260.P17588359277129163325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A105584 n - A166333 (2 * n + 3)).toNat

end

end A100260.P17588359277129163325

namespace A100260

/-- `A006068(A105584(n)-A166333(2*n+3))` -/
def P17588359277129163325.Spec : Prop :=
  ∀ n, P17588359277129163325.a n = A100260 (n + 1)

end A100260

/-! ## A100260.P10182751773653741391

`A340503(A022998(n+1))`
-/

namespace A100260.P10182751773653741391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340503 (A022998 (n + 1)).toNat

end

end A100260.P10182751773653741391

namespace A100260

/-- `A340503(A022998(n+1))` -/
def P10182751773653741391.Spec : Prop :=
  ∀ n, P10182751773653741391.a n = A100260 (n + 1)

end A100260

/-! ## A100260.P3602226236175945906

`A340503(A084483(n+1))`
-/

namespace A100260.P3602226236175945906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340503 (A084483 (n + 1)).toNat

end

end A100260.P3602226236175945906

namespace A100260

/-- `A340503(A084483(n+1))` -/
def P3602226236175945906.Spec : Prop :=
  ∀ n, P3602226236175945906.a n = A100260 (n + 1)

end A100260

/-! ## A100260.P2415659006129015892

`A340503(A257088(n+1))`
-/

namespace A100260.P2415659006129015892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340503 (A257088 (n + 1)).toNat

end

end A100260.P2415659006129015892

namespace A100260

/-- `A340503(A257088(n+1))` -/
def P2415659006129015892.Spec : Prop :=
  ∀ n, P2415659006129015892.a n = A100260 (n + 1)

end A100260

/-! ## A100260.P15465533803145501811

`A380667(2*n)+A340503(n+1)`
-/

namespace A100260.P15465533803145501811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380667 (2 * n) + A340503 (n + 1)

end

end A100260.P15465533803145501811

namespace A100260

/-- `A380667(2*n)+A340503(n+1)` -/
def P15465533803145501811.Spec : Prop :=
  ∀ n, P15465533803145501811.a n = A100260 (n + 1)

end A100260

/-! ## A100260.P2203988773904207602

`A340503(A014601(n)+1)`
-/

namespace A100260.P2203988773904207602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340503 (A014601 n + 1).toNat

end

end A100260.P2203988773904207602

namespace A100260

/-- `A340503(A014601(n)+1)` -/
def P2203988773904207602.Spec : Prop :=
  ∀ n, P2203988773904207602.a n = A100260 (n + 1)

end A100260

/-! ## A100260.P17605665448117484222

`A340503(A042948(n+1))`
-/

namespace A100260.P17605665448117484222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340503 (A042948 (n + 1)).toNat

end

end A100260.P17605665448117484222

namespace A100260

/-- `A340503(A042948(n+1))` -/
def P17605665448117484222.Spec : Prop :=
  ∀ n, P17605665448117484222.a n = A100260 (n + 1)

end A100260

/-! ## A100260.P4927060843127555107

`A340503(A047425(n+1))`
-/

namespace A100260.P4927060843127555107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340503 (A047425 (n + 1)).toNat

end

end A100260.P4927060843127555107

namespace A100260

/-- `A340503(A047425(n+1))` -/
def P4927060843127555107.Spec : Prop :=
  ∀ n, P4927060843127555107.a n = A100260 (n + 1)

end A100260

/-! ## A100260.P9131875187561216028

`A340503(A047431(n+1))`
-/

namespace A100260.P9131875187561216028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340503 (A047431 (n + 1)).toNat

end

end A100260.P9131875187561216028

namespace A100260

/-- `A340503(A047431(n+1))` -/
def P9131875187561216028.Spec : Prop :=
  ∀ n, P9131875187561216028.a n = A100260 (n + 1)

end A100260

/-! ## A100260.P1253304242258610171

`A340503(A047599(n+2))`
-/

namespace A100260.P1253304242258610171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340503 (A047599 (n + 2)).toNat

end

end A100260.P1253304242258610171

namespace A100260

/-- `A340503(A047599(n+2))` -/
def P1253304242258610171.Spec : Prop :=
  ∀ n, P1253304242258610171.a n = A100260 (n + 1)

end A100260

/-! ## A100260.P12875154804973854837

`A020987(2*n+1)+2*A020987(n)`
-/

namespace A100260.P12875154804973854837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020987 (2 * n + 1) + 2 * A020987 n

end

end A100260.P12875154804973854837

namespace A100260

/-- `A020987(2*n+1)+2*A020987(n)` -/
def P12875154804973854837.Spec : Prop :=
  ∀ n, P12875154804973854837.a n = A100260 (n + 1)

end A100260

/-! ## A100260.P17212090181163080447

`(A340503(2*n+1)+A245194(2*n+1))/A340503(2*(n+1))`
-/

namespace A100260.P17212090181163080447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340503 (2 * n + 1) + A245194 (2 * n + 1) : ℚ) / (A340503 (2 * (n + 1)) : ℚ)

end

end A100260.P17212090181163080447

namespace A100260

/-- `(A340503(2*n+1)+A245194(2*n+1))/A340503(2*(n+1))` -/
def P17212090181163080447.Spec : Prop :=
  ∀ n, P17212090181163080447.a n = (A100260 (n + 1) : ℚ)

end A100260

/-! ## A100260.P15700227422023825939

`A340503(lt[A245194(n), A245194(n+2)])`
-/

namespace A100260.P15700227422023825939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245194 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245194 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340503 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A100260.P15700227422023825939

namespace A100260

/-- `A340503(lt[A245194(n), A245194(n+2)])` -/
def P15700227422023825939.Spec : Prop :=
  ∀ n, P15700227422023825939.a n = A100260 (n + 1)

end A100260

/-! ## A100260.P7893361740186422240

`A340503(A110185(n+1))`
-/

namespace A100260.P7893361740186422240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340503 (A110185 (n + 1)).toNat

end

end A100260.P7893361740186422240

namespace A100260

/-- `A340503(A110185(n+1))` -/
def P7893361740186422240.Spec : Prop :=
  ∀ n, P7893361740186422240.a n = A100260 (n + 1)

end A100260

/-! ## A100260.P14128429908160194891

`A340503(A317316(n+1))`
-/

namespace A100260.P14128429908160194891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340503 (A317316 (n + 1)).toNat

end

end A100260.P14128429908160194891

namespace A100260

/-- `A340503(A317316(n+1))` -/
def P14128429908160194891.Spec : Prop :=
  ∀ n, P14128429908160194891.a n = A100260 (n + 1)

end A100260

/-!
# A100262: Expansion of A(x)^2, where A(x) = o.g.f. of n^n (A000312).

The programs for A100262, there is no canonical definition to state claims against.
-/

/-! ## A100262.P7887672567745220501

`A140992(n)+A004273(A182356(n))`
-/

namespace A100262.P7887672567745220501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140992 n + A004273 (A182356 n).toNat

end

end A100262.P7887672567745220501

/-!
# A100263: Values of n such that A080221(n)=5; i.e., values of n such that n is divisible by the sum of digits of n when expressed in exactly 5 of the bases b=1...n.

The programs for A100263, there is no canonical definition to state claims against.
-/

/-! ## A100263.P11393269951052276098

`eq[5, A080221(n+1)]+1`
-/

namespace A100263.P11393269951052276098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A100263.P11393269951052276098

/-! ## A100263.P7292066971934469285

`eq[5, A080221(A028310(n))]`
-/

namespace A100263.P7292066971934469285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080221 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A100263.P7292066971934469285

/-! ## A100263.P5252914921003460007

`eq[5, A080221(A000007(n)+n)]`
-/

namespace A100263.P5252914921003460007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080221 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A100263.P5252914921003460007

/-! ## A100263.P15717563029756830488

`eq[5, A080221(A123108(2*n))]`
-/

namespace A100263.P15717563029756830488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080221 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A100263.P15717563029756830488

/-! ## A100263.P8040227329073817991

`eq[5, A080221(A233583(n+1))]`
-/

namespace A100263.P8040227329073817991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080221 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A100263.P8040227329073817991

/-!
# A100268: Primes of the form x^4 + y^4 with x^2 + y^2 and x+y also prime.

The programs for A100268, there is no canonical definition to state claims against.
-/

/-! ## A100268.P11016530066535072314

`A059843(A119336(n)^4)`
-/

namespace A100268.P11016530066535072314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (A119336 n ^ 4).toNat

end

end A100268.P11016530066535072314

/-! ## A100268.P4436417193841990735

`A068486(eq[1, A339431(n)])`
-/

namespace A100268.P4436417193841990735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A100268.P4436417193841990735

/-! ## A100268.P5736112389899012329

`A059843(A119336(n)²²)`
-/

namespace A100268.P5736112389899012329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 ((A119336 n ^ 2) ^ 2).toNat

end

end A100268.P5736112389899012329

/-!
# A100271: Primes of the form a^4 + b^3 with b>0.

The programs for A100271, there is no canonical definition to state claims against.
-/

/-! ## A100271.P3267649067346548121

`∩[A066649(n+1), A100291(n+1)]`
-/

namespace A100271.P3267649067346548121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100271.P3267649067346548121

/-! ## A100271.P13699055078722725182

`∩[A066649(n+1), A367984(n+1)]`
-/

namespace A100271.P13699055078722725182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100271.P13699055078722725182

/-! ## A100271.P4033250171000885794

`p?[A100291(n+1)]`
-/

namespace A100271.P4033250171000885794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100271.P4033250171000885794

/-! ## A100271.P11581907594970301174

`p?[A367984(n+1)]`
-/

namespace A100271.P11581907594970301174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100271.P11581907594970301174

/-! ## A100271.P4442082380592969677

`p?[record[A100291(A052938(n))]]`
-/

namespace A100271.P4442082380592969677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100291 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100271.P4442082380592969677

/-! ## A100271.P457964867764208396

`p?[record[A100291(A133310(n))]]`
-/

namespace A100271.P457964867764208396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100291 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100271.P457964867764208396

/-! ## A100271.P2954924578104666111

`p?[record[A100291(A324347(n))]]`
-/

namespace A100271.P2954924578104666111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100291 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100271.P2954924578104666111

/-! ## A100271.P5624089660868866143

`p?[record[A100291(A328396(n))]]`
-/

namespace A100271.P5624089660868866143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100291 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100271.P5624089660868866143

/-! ## A100271.P9469658627194823545

`p?[record[A100291(A328397(n))]]`
-/

namespace A100271.P9469658627194823545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100291 (A328397 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100271.P9469658627194823545

/-! ## A100271.P11337874037051448821

`p?[record[A100291(A328399(n))]]`
-/

namespace A100271.P11337874037051448821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100291 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100271.P11337874037051448821

/-! ## A100271.P5874243929037610510

`∩[A100291(n+1), A109515(n+1)]`
-/

namespace A100271.P5874243929037610510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100271.P5874243929037610510

/-! ## A100271.P9052689159413705534

`∩[A109515(n+1), A367984(n+1)]`
-/

namespace A100271.P9052689159413705534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100271.P9052689159413705534

/-!
# A100272: Primes of the form a^5 + b^2 with a>0.

The programs for A100272, there is no canonical definition to state claims against.
-/

/-! ## A100272.P15822484446792864203

`p?[A100292(n+1)]`
-/

namespace A100272.P15822484446792864203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100272.P15822484446792864203

/-! ## A100272.P17045101143066118166

`∩[A100292(n+1), A109515(n+1)]`
-/

namespace A100272.P17045101143066118166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100272.P17045101143066118166

/-! ## A100272.P17853877631110126556

`∩[A100292(n+1), A138837(n+1)]`
-/

namespace A100272.P17853877631110126556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100272.P17853877631110126556

/-! ## A100272.P15330332143559170532

`∩[A100292(n+1), A257974(n+1)]`
-/

namespace A100272.P15330332143559170532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100272.P15330332143559170532

/-! ## A100272.P13515638028084009974

`∩[A100292(n+1), A261123(n+1)]`
-/

namespace A100272.P13515638028084009974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100272.P13515638028084009974

/-! ## A100272.P16925610678260771721

`∩[A000040(n+1), A100292(n+1)]`
-/

namespace A100272.P16925610678260771721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100272.P16925610678260771721

/-! ## A100272.P593362898454261880

`∩[A008578(n+1), A100292(n+1)]`
-/

namespace A100272.P593362898454261880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100272.P593362898454261880

/-! ## A100272.P2932436828845908883

`∩[A033946(n+1), A100292(n+1)]`
-/

namespace A100272.P2932436828845908883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100272.P2932436828845908883

/-! ## A100272.P17598217797581730947

`∩[A045344(n+1), A100292(n+1)]`
-/

namespace A100272.P17598217797581730947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100272.P17598217797581730947

/-! ## A100272.P9986432711650791030

`∩[A046022(n+1), A100292(n+1)]`
-/

namespace A100272.P9986432711650791030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100272.P9986432711650791030

/-! ## A100272.P3554392961822757396

`∩[A051948(n+1), A100292(n+1)]`
-/

namespace A100272.P3554392961822757396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100272.P3554392961822757396

/-! ## A100272.P16054032316240626271

`∩[A053813(n+1), A100292(n+1)]`
-/

namespace A100272.P16054032316240626271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100272.P16054032316240626271

/-! ## A100272.P849811321702478718

`∩[A060634(n+1), A100292(n+1)]`
-/

namespace A100272.P849811321702478718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100272.P849811321702478718

/-! ## A100272.P18413583478041448667

`∩[A062972(n+1), A100292(n+1)]`
-/

namespace A100272.P18413583478041448667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100272.P18413583478041448667

/-! ## A100272.P14080970925970369790

`∩[A067126(n+1), A100292(n+1)]`
-/

namespace A100272.P14080970925970369790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100272.P14080970925970369790

/-! ## A100272.P9685160067893244151

`∩[A100292(n+1), A116974(n+1)]`
-/

namespace A100272.P9685160067893244151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100272.P9685160067893244151

/-! ## A100272.P9059747745815671084

`∩[A100292(n+1), A158611(n+1)]`
-/

namespace A100272.P9059747745815671084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100272.P9059747745815671084

/-! ## A100272.P2288590933056959192

`∩[A100292(n+1), A175787(n+1)]`
-/

namespace A100272.P2288590933056959192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100272.P2288590933056959192

/-! ## A100272.P2930339523184011840

`∩[A100292(n+1), A182140(n+1)]`
-/

namespace A100272.P2930339523184011840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100272.P2930339523184011840

/-! ## A100272.P15974048873564587558

`∩[A100292(n+1), A182986(n+1)]`
-/

namespace A100272.P15974048873564587558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100272.P15974048873564587558

/-!
# A100273: Primes of the form a^5 + b^3 with a,b>0.

The programs for A100273, there is no canonical definition to state claims against.
-/

/-! ## A100273.P18045668455764706552

`p?[A100293(n+1)]`
-/

namespace A100273.P18045668455764706552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100273.P18045668455764706552

/-! ## A100273.P15411453891005453882

`p?[record[A100293(A126759(n))]]`
-/

namespace A100273.P15411453891005453882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100293 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100273.P15411453891005453882

/-! ## A100273.P14886995051959692151

`p?[record[A100293(A133310(n))]]`
-/

namespace A100273.P14886995051959692151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100293 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100273.P14886995051959692151

/-! ## A100273.P15766986311991513365

`p?[record[A100293(A328396(n))]]`
-/

namespace A100273.P15766986311991513365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100293 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100273.P15766986311991513365

/-! ## A100273.P7417022147251519634

`p?[record[A100293(A328399(n))]]`
-/

namespace A100273.P7417022147251519634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100293 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100273.P7417022147251519634

/-! ## A100273.P2715138126027882133

`∩[A100293(n+1), A109515(n+1)]`
-/

namespace A100273.P2715138126027882133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100273.P2715138126027882133

/-!
# A100274: Primes of the form a^5 + b^4 with a>0.

The programs for A100274, there is no canonical definition to state claims against.
-/

/-! ## A100274.P7687574052533545454

`p?[A100294(n+1)]`
-/

namespace A100274.P7687574052533545454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100274.P7687574052533545454

/-! ## A100274.P16719933197864125089

`record[p?[A100294(A052938(n))]]`
-/

namespace A100274.P16719933197864125089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100294 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100274.P16719933197864125089

/-! ## A100274.P10093462765450703091

`p?[record[A100294(A117910(n))]]`
-/

namespace A100274.P10093462765450703091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100294 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100274.P10093462765450703091

/-! ## A100274.P14636970864744204977

`p?[record[A100294(A126759(n))]]`
-/

namespace A100274.P14636970864744204977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100294 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100274.P14636970864744204977

/-! ## A100274.P1542337292468064413

`∩[A100272(n+1), A100294(n+1)]`
-/

namespace A100274.P1542337292468064413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100274.P1542337292468064413

/-!
# A100275: Numbers k such that 9*10^k - 11 is prime.

The programs for A100275, there is no canonical definition to state claims against.
-/

/-! ## A100275.P8354341762250286758

`A000010(A330434(4^n))`
-/

namespace A100275.P8354341762250286758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A330434 (4 ^ n)).toNat

end

end A100275.P8354341762250286758

/-!
# A100276: a(0)=3; for n > 0, a(n) = smallest prime > a(n-1) such that Product_{i=0..n} a(i) - 2 is prime.

The programs for A100276, there is no canonical definition to state claims against.
-/

/-! ## A100276.P10982597096780089228

`p?[∑[A009191(A327084(n+1))]]`
-/

namespace A100276.P10982597096780089228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (A327084 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100276.P10982597096780089228

/-! ## A100276.P9651570060504026209

`p?[∑[A213027(A263145(n)+6)]+n]`
-/

namespace A100276.P9651570060504026209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (A263145 n + 6).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100276.P9651570060504026209

/-! ## A100276.P10408568996186554444

`A355278(A000720(3*(n+1))+A000217(n))`
-/

namespace A100276.P10408568996186554444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355278 (A000720 (3 * (n + 1)) + A000217 n).toNat

end

end A100276.P10408568996186554444

/-! ## A100276.P992566289789805412

`A002267(lt[n, ∑{digits}[n, #²]])`
-/

namespace A100276.P992566289789805412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x ^ 2).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002267 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A100276.P992566289789805412

/-!
# A100277: Primes resulting from A100276.

The programs for A100277, there is no canonical definition to state claims against.
-/

/-! ## A100277.P6909057733968511875

`∑[Δ[∏[A100276(n)]]+1]-n`
-/

namespace A100277.P6909057733968511875
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100276 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A100277.P6909057733968511875

/-!
# A100278: Group the terms of A001511 into clumps so that the sum in each clump is just larger than the sum of the previous clump; sequence gives the sums of the clumps.

The programs for A100278, there is no canonical definition to state claims against.
-/

/-! ## A100278.P4712887258752276923

`lt[A260311(3*n+5), Δ[A260299(n+1)]]`
-/

namespace A100278.P4712887258752276923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260311 (3 * n + 5)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100278.P4712887258752276923

/-!
# A100279: a(n) = A100107(A000032(n)).

The programs for A100279, the canonical program `A100279.P5782566387007979265` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100279 has offset 0).

The definition of A100279 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100107, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A100279.P5782566387007979265

`A100107(A000032(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A100279

/-- `A100107(A000032(n))` -/
def P5782566387007979265.Spec : Prop :=
  ∀ n, P5782566387007979265.a n = A100279 n

theorem P5782566387007979265.correct : P5782566387007979265.Spec := by
  intro n
  simp only [A100279]

end A100279

/-! ## A100279.P2140736312844367096

`∑{d}[A000032(n), A000032(#)]`
-/

namespace A100279.P2140736312844367096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000032 d

end

end A100279.P2140736312844367096

namespace A100279

/-- `∑{d}[A000032(n), A000032(#)]` -/
def P2140736312844367096.Spec : Prop :=
  ∀ n, P2140736312844367096.a n = A100279 n

end A100279

/-! ## A100279.P1163490499628784809

`A100107(Δ[A000045(n)]+A000045(n+1))`
-/

namespace A100279.P1163490499628784809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100107 (f1 (n + 1) - f1 n + A000045 (n + 1)).toNat

end

end A100279.P1163490499628784809

namespace A100279

/-- `A100107(Δ[A000045(n)]+A000045(n+1))` -/
def P1163490499628784809.Spec : Prop :=
  ∀ n, P1163490499628784809.a n = A100279 n

end A100279

/-! ## A100279.P7610333628764526584

`A100107(A000045(abs(1-n))+A000045(n+1))`
-/

namespace A100279.P7610333628764526584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100107 (A000045 |1 - (n : ℤ)|.toNat + A000045 (n + 1)).toNat

end

end A100279.P7610333628764526584

namespace A100279

/-- `A100107(A000045(abs(1-n))+A000045(n+1))` -/
def P7610333628764526584.Spec : Prop :=
  ∀ n, P7610333628764526584.a n = A100279 n

end A100279

/-! ## A100279.P11647550348079252063

`∑{d}[2*A000045(n+1)-A000045(n), A000204(#)]`
-/

namespace A100279.P11647550348079252063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 1) - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000204 d

end

end A100279.P11647550348079252063

namespace A100279

/-- `∑{d}[2*A000045(n+1)-A000045(n), A000204(#)]` -/
def P11647550348079252063.Spec : Prop :=
  ∀ n, P11647550348079252063.a n = A100279 n

end A100279

/-!
# A100280: Inverse permutation to A099896.

The programs for A100280, the canonical program `A100280.P9371418973308847882` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100280 has offset 0).

The definition of A100280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100280.P9371418973308847882

`A006068(xor(n, a(floor(n/4))))` with `a(0)=0`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A100280

/-- `A006068(xor(n, a(floor(n/4))))` -/
def P9371418973308847882.Spec : Prop :=
  ∀ n, P9371418973308847882.a n = A100280 n

theorem P9371418973308847882.correct : P9371418973308847882.Spec := by
  intro n
  simp only [A100280]

end A100280

/-! ## A100280.P11963359915039174583

`A100282(xor(xor(n, floor(n/2)), floor(n/4)))`
-/

namespace A100280.P11963359915039174583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100282 (Int.xor (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋) ⌊(n : ℚ) / 4⌋).toNat

end

end A100280.P11963359915039174583

namespace A100280

/-- `A100282(xor(xor(n, floor(n/2)), floor(n/4)))` -/
def P11963359915039174583.Spec : Prop :=
  ∀ n, P11963359915039174583.a n = A100280 n

end A100280

/-! ## A100280.P3211681664754110047

`A100282(xor(floor(n/2), A064706(n)))`
-/

namespace A100280.P3211681664754110047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100282 (Int.xor ⌊(n : ℚ) / 2⌋ (A064706 n)).toNat

end

end A100280.P3211681664754110047

namespace A100280

/-- `A100282(xor(floor(n/2), A064706(n)))` -/
def P3211681664754110047.Spec : Prop :=
  ∀ n, P3211681664754110047.a n = A100280 n

end A100280

/-! ## A100280.P307078260625124346

`A100282(xor(floor(n/4), A003188(n)))`
-/

namespace A100280.P307078260625124346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100282 (Int.xor ⌊(n : ℚ) / 4⌋ (A003188 n)).toNat

end

end A100280.P307078260625124346

namespace A100280

/-- `A100282(xor(floor(n/4), A003188(n)))` -/
def P307078260625124346.Spec : Prop :=
  ∀ n, P307078260625124346.a n = A100280 n

end A100280

/-! ## A100280.P18278977734178533025

`A100282(floor(A099896(2*n+1)/2))`
-/

namespace A100280.P18278977734178533025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100282 ⌊(A099896 (2 * n + 1) : ℚ) / 2⌋.toNat

end

end A100280.P18278977734178533025

namespace A100280

/-- `A100282(floor(A099896(2*n+1)/2))` -/
def P18278977734178533025.Spec : Prop :=
  ∀ n, P18278977734178533025.a n = A100280 n

end A100280

/-! ## A100280.P17145641062046958838

`A059905(A100282(A000695(n)))`
-/

namespace A100280.P17145641062046958838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A100282 (A000695 n).toNat).toNat

end

end A100280.P17145641062046958838

namespace A100280

/-- `A059905(A100282(A000695(n)))` -/
def P17145641062046958838.Spec : Prop :=
  ∀ n, P17145641062046958838.a n = A100280 n

end A100280

/-! ## A100280.P1744553096983810599

`A059905(A100282(A054238(∑[n])))`
-/

namespace A100280.P1744553096983810599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A100282 (A054238 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A100280.P1744553096983810599

namespace A100280

/-- `A059905(A100282(A054238(∑[n])))` -/
def P1744553096983810599.Spec : Prop :=
  ∀ n, P1744553096983810599.a n = A100280 n

end A100280

/-! ## A100280.P13989690648733290361

`A059906(A100282(2*A000695(n)))`
-/

namespace A100280.P13989690648733290361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A100282 (2 * A000695 n).toNat).toNat

end

end A100280.P13989690648733290361

namespace A100280

/-- `A059906(A100282(2*A000695(n)))` -/
def P13989690648733290361.Spec : Prop :=
  ∀ n, P13989690648733290361.a n = A100280 n

end A100280

/-! ## A100280.P17864474677651962910

`A059906(A100282(A054238(∑[n+3])))`
-/

namespace A100280.P17864474677651962910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A100282 (A054238 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A100280.P17864474677651962910

namespace A100280

/-- `A059906(A100282(A054238(∑[n+3])))` -/
def P17864474677651962910.Spec : Prop :=
  ∀ n, P17864474677651962910.a n = A100280 n

end A100280

/-!
# A100281: a(n) = A099896(A099896(n)).

The programs for A100281, the canonical program `A100281.P16873835171092598742` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100281 has offset 0).

The definition of A100281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100281.P16873835171092598742

`xor(n, floor(xor(n, floor(n/4))/4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100281

/-- `xor(n, floor(xor(n, floor(n/4))/4))` -/
def P16873835171092598742.Spec : Prop :=
  ∀ n, P16873835171092598742.a n = A100281 n

theorem P16873835171092598742.correct : P16873835171092598742.Spec := by
  intro n
  simp only [A100281]

end A100281

/-! ## A100281.P5816204013948295661

`xor(n, A064706(A002265(n)))`
-/

namespace A100281.P5816204013948295661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A064706 (A002265 n).toNat)

end

end A100281.P5816204013948295661

namespace A100281

/-- `xor(n, A064706(A002265(n)))` -/
def P5816204013948295661.Spec : Prop :=
  ∀ n, P5816204013948295661.a n = A100281 n

end A100281

/-! ## A100281.P5423111125671147444

`xor(n, A064706(xor(n, A064706(n))))`
-/

namespace A100281.P5423111125671147444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A064706 (Int.xor (n : ℤ) (A064706 n)).toNat)

end

end A100281.P5423111125671147444

namespace A100281

/-- `xor(n, A064706(xor(n, A064706(n))))` -/
def P5423111125671147444.Spec : Prop :=
  ∀ n, P5423111125671147444.a n = A100281 n

end A100281

/-! ## A100281.P14480908212030285020

`xor(n, A002265(xor(n, A002265(n))))`
-/

namespace A100281.P14480908212030285020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A002265 (Int.xor (n : ℤ) (A002265 n)).toNat)

end

end A100281.P14480908212030285020

namespace A100281

/-- `xor(n, A002265(xor(n, A002265(n))))` -/
def P14480908212030285020.Spec : Prop :=
  ∀ n, P14480908212030285020.a n = A100281 n

end A100281

/-! ## A100281.P3880427648242577086

`floor(A099896(A099896(2*n+1))/2)`
-/

namespace A100281.P3880427648242577086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A099896 (A099896 (2 * n + 1)).toNat : ℚ) / 2⌋

end

end A100281.P3880427648242577086

namespace A100281

/-- `floor(A099896(A099896(2*n+1))/2)` -/
def P3880427648242577086.Spec : Prop :=
  ∀ n, P3880427648242577086.a n = A100281 n

end A100281

/-! ## A100281.P6390913442811430569

`A002265(xor(A002265(n), A048725(n)))`
-/

namespace A100281.P6390913442811430569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.xor (A002265 n) (A048725 n)).toNat

end

end A100281.P6390913442811430569

namespace A100281

/-- `A002265(xor(A002265(n), A048725(n)))` -/
def P6390913442811430569.Spec : Prop :=
  ∀ n, P6390913442811430569.a n = A100281 n

end A100281

/-!
# A100282: a(n) = A100280(A100280(n)).

The programs for A100282, the canonical program `A100282.P11700922516647250805` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100282 has offset 0).

The definition of A100282 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100280, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A100282.P11700922516647250805

`A100280(A100280(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A100282

/-- `A100280(A100280(n))` -/
def P11700922516647250805.Spec : Prop :=
  ∀ n, P11700922516647250805.a n = A100282 n

theorem P11700922516647250805.correct : P11700922516647250805.Spec := by
  intro n
  simp only [A100282]

end A100282

/-!
# A100283: a(n) = floor(p*(n+1)) - floor(p*(n)) - 1 where p = Padovan plastic number = 1.324718... (cf. A060006).

The programs for A100283, there is no canonical definition to state claims against.
-/

/-! ## A100283.P10851740710516630606

`and(char[A178772(3*(n+1))], A000978(n+1))`
-/

namespace A100283.P10851740710516630606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178772 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A000978 (n + 1))

end

end A100283.P10851740710516630606

/-! ## A100283.P486783639561441441

`A269723(A169825(n))`
-/

namespace A100283.P486783639561441441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269723 (A169825 n).toNat

end

end A100283.P486783639561441441

/-! ## A100283.P16671075341820019601

`A186719(A190564(n+2))`
-/

namespace A100283.P16671075341820019601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186719 (A190564 (n + 2)).toNat

end

end A100283.P16671075341820019601

/-! ## A100283.P4495207998801906880

`A083835(n+1)%A099837(n)`
-/

namespace A100283.P4495207998801906880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083835 (n + 1)) (A099837 n)

end

end A100283.P4495207998801906880

/-! ## A100283.P3107551611083726580

`(1-a(n-1))%A372056(n+1)` with `a(0)=0, a(1)=0`
-/

namespace A100283.P3107551611083726580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  Int.tmod (1 - a (n - 1)) (A372056 (n + 1))

end

end A100283.P3107551611083726580

/-!
# A100284: Expansion of (1-4*x-x^2)/((1-x)*(1-4*x-5*x^2)).

The programs for A100284, the canonical program `A100284.P1713319950881350228` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100284 has offset 0).

The definition of A100284 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x-x^2)/(1-5x-x^2+5x^3))` (program `A100284.P1713319950881350228`, by `A100284.P1713319950881350228.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100284.P1713319950881350228

`ogf((1-4x-x^2)/(1-5x-x^2+5x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100284

/-- `ogf((1-4x-x^2)/(1-5x-x^2+5x^3))` -/
def P1713319950881350228.Spec : Prop :=
  ∀ n, P1713319950881350228.a n = A100284 n

theorem P1713319950881350228.correct : P1713319950881350228.Spec := by
  intro n
  simp only [A100284]

end A100284

/-! ## A100284.P16052597414857701891

`5*a(n-1)+a(n-2)-5*a(n-3)` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A100284.P16052597414857701891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  5 * a (n - 1) + a (n - 2) - 5 * a (n - 3)

end

end A100284.P16052597414857701891

namespace A100284

/-- `5*a(n-1)+a(n-2)-5*a(n-3)` -/
def P16052597414857701891.Spec : Prop :=
  ∀ n, P16052597414857701891.a n = A100284 n

end A100284

/-! ## A100284.P8741724657050353376

`(5^n+2*(-1)^n+3)/6`
-/

namespace A100284.P8741724657050353376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ n : ℤ) + 2 * (-1) ^ n + 3 : ℚ) / 6

end

end A100284.P8741724657050353376

namespace A100284

/-- `(5^n+2*(-1)^n+3)/6` -/
def P8741724657050353376.Spec : Prop :=
  ∀ n, P8741724657050353376.a n = (A100284 n : ℚ)

end A100284

/-! ## A100284.P3813245604831141031

`1/6*(5^n+1+4*(n+1)%2)`
-/

namespace A100284.P3813245604831141031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * ((5 ^ n + 1 + 4 * ((n + 1) % 2) : ℕ) : ℚ)

end

end A100284.P3813245604831141031

namespace A100284

/-- `1/6*(5^n+1+4*(n+1)%2)` -/
def P3813245604831141031.Spec : Prop :=
  ∀ n, P3813245604831141031.a n = (A100284 n : ℚ)

end A100284

/-! ## A100284.P14673092631664379843

`∑[xor(4, 5*a(n-1))]` with `a(0)=1, a(1)=0`
-/

namespace A100284.P14673092631664379843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  Nat.xor 4 (5 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100284.P14673092631664379843

namespace A100284

/-- `∑[xor(4, 5*a(n-1))]` -/
def P14673092631664379843.Spec : Prop :=
  ∀ n, (P14673092631664379843.a n : ℤ) = A100284 n

end A100284

/-! ## A100284.P9897978359544455515

`5^(n-1)+1-a(n-1)` with `a(0)=1`
-/

namespace A100284.P9897978359544455515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (1 - a (n - 1))

end

end A100284.P9897978359544455515

namespace A100284

/-- `5^(n-1)+1-a(n-1)` -/
def P9897978359544455515.Spec : Prop :=
  ∀ n, P9897978359544455515.a n = (A100284 n : ℚ)

end A100284

/-! ## A100284.P17345510177246576280

`1-(a(n-1)-5^(n-1))` with `a(0)=1`
-/

namespace A100284.P17345510177246576280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A100284.P17345510177246576280

namespace A100284

/-- `1-(a(n-1)-5^(n-1))` -/
def P17345510177246576280.Spec : Prop :=
  ∀ n, P17345510177246576280.a n = (A100284 n : ℚ)

end A100284

/-! ## A100284.P4642560973078170751

`a(n-1)+4*(a(n-1)-n%2)` with `a(0)=1`
-/

namespace A100284.P4642560973078170751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 4 * (a (n - 1) - ((n % 2 : ℕ) : ℤ))

end

end A100284.P4642560973078170751

namespace A100284

/-- `a(n-1)+4*(a(n-1)-n%2)` -/
def P4642560973078170751.Spec : Prop :=
  ∀ n, P4642560973078170751.a n = A100284 n

end A100284

/-! ## A100284.P8227199072391306720

`a(n-2)+5*(a(n-1)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A100284.P8227199072391306720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  a (n - 2) + 5 * (a (n - 1) - a (n - 3))

end

end A100284.P8227199072391306720

namespace A100284

/-- `a(n-2)+5*(a(n-1)-a(n-3))` -/
def P8227199072391306720.Spec : Prop :=
  ∀ n, P8227199072391306720.a n = A100284 n

end A100284

/-! ## A100284.P13605217484347667177

`a(n-2)-4*(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A100284.P13605217484347667177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - 4 * (1 - a (n - 1) - a (n - 2))

end

end A100284.P13605217484347667177

namespace A100284

/-- `a(n-2)-4*(1-a(n-1)-a(n-2))` -/
def P13605217484347667177.Spec : Prop :=
  ∀ n, P13605217484347667177.a n = A100284 n

end A100284

/-! ## A100284.P10993257254399847579

`or(1, A015531(n))`
-/

namespace A100284.P10993257254399847579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A015531 n)

end

end A100284.P10993257254399847579

namespace A100284

/-- `or(1, A015531(n))` -/
def P10993257254399847579.Spec : Prop :=
  ∀ n, P10993257254399847579.a n = A100284 n

end A100284

/-! ## A100284.P8288691726160617767

`or(1, A109500(n))`
-/

namespace A100284.P8288691726160617767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A109500 n)

end

end A100284.P8288691726160617767

namespace A100284

/-- `or(1, A109500(n))` -/
def P8288691726160617767.Spec : Prop :=
  ∀ n, P8288691726160617767.a n = A100284 n

end A100284

/-! ## A100284.P9054963396999565618

`∑[A123010(n+1)]`
-/

namespace A100284.P9054963396999565618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100284.P9054963396999565618

namespace A100284

/-- `∑[A123010(n+1)]` -/
def P9054963396999565618.Spec : Prop :=
  ∀ n, P9054963396999565618.a n = A100284 n

end A100284

/-! ## A100284.P14323055005804299886

`A015531(n)+A000035(n+1)`
-/

namespace A100284.P14323055005804299886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 n + A000035 (n + 1)

end

end A100284.P14323055005804299886

namespace A100284

/-- `A015531(n)+A000035(n+1)` -/
def P14323055005804299886.Spec : Prop :=
  ∀ n, P14323055005804299886.a n = A100284 n

end A100284

/-! ## A100284.P7574076395485906366

`A015531(n)+Δ[A008619(n+1)]`
-/

namespace A100284.P7574076395485906366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 n + (f1 (n + 1) - f1 n)

end

end A100284.P7574076395485906366

namespace A100284

/-- `A015531(n)+Δ[A008619(n+1)]` -/
def P7574076395485906366.Spec : Prop :=
  ∀ n, P7574076395485906366.a n = A100284 n

end A100284

/-! ## A100284.P11353526042534601450

`1-(Δ[A008619(n)]-A015531(n))`
-/

namespace A100284.P11353526042534601450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n - A015531 n)

end

end A100284.P11353526042534601450

namespace A100284

/-- `1-(Δ[A008619(n)]-A015531(n))` -/
def P11353526042534601450.Spec : Prop :=
  ∀ n, P11353526042534601450.a n = A100284 n

end A100284

/-! ## A100284.P15273757236575554914

`A109500(n)+A088689(A092899(n+1))`
-/

namespace A100284.P15273757236575554914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109500 n + A088689 (A092899 (n + 1)).toNat

end

end A100284.P15273757236575554914

namespace A100284

/-- `A109500(n)+A088689(A092899(n+1))` -/
def P15273757236575554914.Spec : Prop :=
  ∀ n, P15273757236575554914.a n = A100284 n

end A100284

/-! ## A100284.P9255420768458606157

`A005578(n)+A015531(n)-Δ[A005578(n)]`
-/

namespace A100284.P9255420768458606157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n + (A015531 n - (f1 (n + 1) - f1 n))

end

end A100284.P9255420768458606157

namespace A100284

/-- `A005578(n)+A015531(n)-Δ[A005578(n)]` -/
def P9255420768458606157.Spec : Prop :=
  ∀ n, P9255420768458606157.a n = A100284 n

end A100284

/-! ## A100284.P13223083930643931756

`or(1, floor(5^n/6))`
-/

namespace A100284.P13223083930643931756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(5 ^ n : ℚ) / 6⌋

end

end A100284.P13223083930643931756

namespace A100284

/-- `or(1, floor(5^n/6))` -/
def P13223083930643931756.Spec : Prop :=
  ∀ n, P13223083930643931756.a n = A100284 n

end A100284

/-!
# A100285: Expansion of (1+5*x^2)/(1-x+x^2-x^3).

The programs for A100285, the canonical program `A100285.P1180402689491315175` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100285 has offset 0).

The definition of A100285 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+5x^2)/(1-x+x^2-x^3))` (program `A100285.P1180402689491315175`, by `A100285.P1180402689491315175.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100285.P1180402689491315175

`ogf((1+5x^2)/(1-x+x^2-x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100285

/-- `ogf((1+5x^2)/(1-x+x^2-x^3))` -/
def P1180402689491315175.Spec : Prop :=
  ∀ n, P1180402689491315175.a n = A100285 n

theorem P1180402689491315175.correct : P1180402689491315175.Spec := by
  intro n
  simp only [A100285]

end A100285

/-!
# A100286: Expansion of (1+2*x^2-2*x^3+2*x^4)/(1-x+x^2-x^3+x^4-x^5).

The programs for A100286, the canonical program `A100286.P16182787033148353045` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100286 has offset 0).

The definition of A100286 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x^2-2x^3+2x^4)/(1-x+x^2-x^3+x^4-x^5))` (program `A100286.P16182787033148353045`, by `A100286.P16182787033148353045.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100286.P7681362524900678349

`a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=0, a(4)=0, a(5)=2`
-/

namespace A100286.P7681362524900678349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 0, 0, 2] fun n a =>
  a (n - 6)

end

end A100286.P7681362524900678349

namespace A100286

/-- `a(n-6)` -/
def P7681362524900678349.Spec : Prop :=
  ∀ n, (P7681362524900678349.a n : ℤ) = A100286 n

end A100286

/-! ## A100286.P16182787033148353045

`ogf((1+2x^2-2x^3+2x^4)/(1-x+x^2-x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100286

/-- `ogf((1+2x^2-2x^3+2x^4)/(1-x+x^2-x^3+x^4-x^5))` -/
def P16182787033148353045.Spec : Prop :=
  ∀ n, P16182787033148353045.a n = A100286 n

theorem P16182787033148353045.correct : P16182787033148353045.Spec := by
  intro n
  simp only [A100286]

end A100286

/-!
# A100287: First occurrence of n in A100002; the least k such that A100002(k) = n.

The programs for A100287, there is no canonical definition to state claims against.
-/

/-! ## A100287.P10582605161733956787

`A278507(A179865(n+1))-floor(acot(n))`
-/

namespace A100287.P10582605161733956787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278507 (A179865 (n + 1)).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A100287.P10582605161733956787

/-! ## A100287.P4993147855093269411

`A278507(A179865(n+1))-A000007(n)`
-/

namespace A100287.P4993147855093269411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278507 (A179865 (n + 1)).toNat - A000007 n

end

end A100287.P4993147855093269411

/-! ## A100287.P10012817739250436349

`A278507(A179865(n+1))^A165481(n²)`
-/

namespace A100287.P10012817739250436349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278507 (A179865 (n + 1)).toNat : ℚ) ^ (A165481 (n ^ 2) : ℤ)

end

end A100287.P10012817739250436349

/-! ## A100287.P2019323785098083083

`A278507(A179865(n+1))/A000038(n)!`
-/

namespace A100287.P2019323785098083083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278507 (A179865 (n + 1)).toNat : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A100287.P2019323785098083083

/-! ## A100287.P15919190620453335528

`A278507(A179865(n+1))^ceil(n/A000041(n))`
-/

namespace A100287.P15919190620453335528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278507 (A179865 (n + 1)).toNat : ℚ) ^ (⌈(n : ℚ) / (A000041 n : ℚ)⌉ : ℤ)

end

end A100287.P15919190620453335528

/-! ## A100287.P12048276760631543799

`A278507(A179865(n+1))/A014963(4*n+2)`
-/

namespace A100287.P12048276760631543799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278507 (A179865 (n + 1)).toNat : ℚ) / (A014963 (4 * n + 2) : ℚ)

end

end A100287.P12048276760631543799

/-! ## A100287.P12599018908458577244

`A278507(A179865(n+1))-val(A000040(n+1), 2)`
-/

namespace A100287.P12599018908458577244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278507 (A179865 (n + 1)).toNat - (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A100287.P12599018908458577244

/-! ## A100287.P13609396845295670659

`A278507(A179865(n+1))-C(2, A278507(n+1))`
-/

namespace A100287.P13609396845295670659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278507 (A179865 (n + 1)).toNat - (Nat.choose 2 (A278507 (n + 1)).toNat : ℤ)

end

end A100287.P13609396845295670659

/-! ## A100287.P14924600398616635666

`A278507(A179865(n+1))-and(1, A000010(n+2))`
-/

namespace A100287.P14924600398616635666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278507 (A179865 (n + 1)).toNat - Int.land 1 (A000010 (n + 2))

end

end A100287.P14924600398616635666

/-! ## A100287.P4565009775696975522

`A278507(A179865(n+1))/A000108(C(2, n+1))`
-/

namespace A100287.P4565009775696975522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278507 (A179865 (n + 1)).toNat : ℚ) / (A000108 (Nat.choose 2 (n + 1)) : ℚ)

end

end A100287.P4565009775696975522

/-! ## A100287.P15897815019387640178

`A278507(A179865(n+1))+A008683(2*(n+1)²)`
-/

namespace A100287.P15897815019387640178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278507 (A179865 (n + 1)).toNat + A008683 (2 * (n + 1) ^ 2)

end

end A100287.P15897815019387640178

/-! ## A100287.P11869187959113137843

`A278507(A179865(n+1))-and(1, A005384(n+1)-1)`
-/

namespace A100287.P11869187959113137843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278507 (A179865 (n + 1)).toNat - Int.land 1 (A005384 (n + 1) - 1)

end

end A100287.P11869187959113137843

/-! ## A100287.P11121869352558484826

`A278507(A179865(n+1))-A000035(A004015(n))`
-/

namespace A100287.P11121869352558484826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278507 (A179865 (n + 1)).toNat - A000035 (A004015 n).toNat

end

end A100287.P11121869352558484826

/-! ## A100287.P16063103484942035543

`A278507(A179865(n+1))-A000035(A004016(n))`
-/

namespace A100287.P16063103484942035543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278507 (A179865 (n + 1)).toNat - A000035 (A004016 n).toNat

end

end A100287.P16063103484942035543

/-! ## A100287.P10059095992565712108

`A278507(A179865(n+1))-A000035(A014452(n))`
-/

namespace A100287.P10059095992565712108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278507 (A179865 (n + 1)).toNat - A000035 (A014452 n).toNat

end

end A100287.P10059095992565712108

/-! ## A100287.P11831127228685420388

`A278507(A179865(n+1))/A000034(A001316(n))`
-/

namespace A100287.P11831127228685420388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278507 (A179865 (n + 1)).toNat : ℚ) / (A000034 (A001316 n).toNat : ℚ)

end

end A100287.P11831127228685420388

/-! ## A100287.P14735661622569314460

`A278507(A179865(n+1))/A000034(A034896(n))`
-/

namespace A100287.P14735661622569314460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278507 (A179865 (n + 1)).toNat : ℚ) / (A000034 (A034896 n).toNat : ℚ)

end

end A100287.P14735661622569314460

/-! ## A100287.P5805340676638112009

`A278507(A179865(n+1))^A323022(A001222(n+1)+1)`
-/

namespace A100287.P5805340676638112009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278507 (A179865 (n + 1)).toNat : ℚ) ^ (A323022 (A001222 (n + 1) + 1).toNat : ℤ)

end

end A100287.P5805340676638112009

/-! ## A100287.P17334759508201309910

`A278507(A179865(n+1))^A008683(2*A000040(n+1))`
-/

namespace A100287.P17334759508201309910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278507 (A179865 (n + 1)).toNat : ℚ) ^ (A008683 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A100287.P17334759508201309910

/-! ## A100287.P7384875096205677553

`A278505(A212342(n+1))`
-/

namespace A100287.P7384875096205677553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278505 (A212342 (n + 1)).toNat

end

end A100287.P7384875096205677553

/-!
# A100288: Primes of the form (1!)^2 + (2!)^2 + (3!)^2 +...+ (k!)^2.

The programs for A100288, there is no canonical definition to state claims against.
-/

/-! ## A100288.P13510095191793144302

`A104344(A100289(n+1))`
-/

namespace A100288.P13510095191793144302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104344 (A100289 (n + 1)).toNat

end

end A100288.P13510095191793144302

/-! ## A100288.P18337513740948388951

`A061062(A100289(n+1))-char[A163358(n)]`
-/

namespace A100288.P18337513740948388951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061062 (A100289 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A100288.P18337513740948388951

/-! ## A100288.P13699113476857681455

`A061062(A100289(n+1))-A103377(n+1)`
-/

namespace A100288.P13699113476857681455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061062 (A100289 (n + 1)).toNat - A103377 (n + 1)

end

end A100288.P13699113476857681455

/-! ## A100288.P3857698576274495388

`A061062(A100289(n+1))+1-A020639(2*(n+1))`
-/

namespace A100288.P3857698576274495388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061062 (A100289 (n + 1)).toNat + (1 - A020639 (2 * (n + 1)))

end

end A100288.P3857698576274495388

/-! ## A100288.P12101754592562342098

`A061062(A100289(n+1))-A007318(A255166(n))`
-/

namespace A100288.P12101754592562342098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061062 (A100289 (n + 1)).toNat - A007318 (A255166 n).toNat

end

end A100288.P12101754592562342098

/-!
# A100289: Numbers k such that (1!)^2 + (2!)^2 + (3!)^2 + ... + (k!)^2 is prime.

The programs for A100289, there is no canonical definition to state claims against.
-/

/-! ## A100289.P540632763796996761

`eq[A162909(2*(n+1)), A245326(A071585(2*n+1))]`
-/

namespace A100289.P540632763796996761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162909 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245326 (A071585 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100289.P540632763796996761

/-!
# A100290: Numbers divisible by smallest number with same number of 1's in its binary expansion. That is, A038573(a(n)) divides a(n).

The programs for A100290, there is no canonical definition to state claims against.
-/

/-! ## A100290.P7988727419515296945

`A292777(n)+a(n-1)` with `a(0)=1`
-/

namespace A100290.P7988727419515296945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A292777 n + a (n - 1)

end

end A100290.P7988727419515296945

/-! ## A100290.P6120193744904831107

`∑[A292777(n+1)]+1-A292777(n+1)`
-/

namespace A100290.P6120193744904831107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A292777 (n + 1))

end

end A100290.P6120193744904831107

/-! ## A100290.P8881704918240645869

`∑[A292777(A233583(n+1))]`
-/

namespace A100290.P8881704918240645869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292777 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100290.P8881704918240645869

/-! ## A100290.P17840149083787610752

`lt[(n+1)%A038573(n+1), 1]+1`
-/

namespace A100290.P17840149083787610752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A038573 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A100290.P17840149083787610752

/-! ## A100290.P8945208447270880904

`eq[1, A161399(A161398(n+1))]+1`
-/

namespace A100290.P8945208447270880904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161399 (A161398 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A100290.P8945208447270880904

/-! ## A100290.P3779682953581966875

`eq[1, A161398(A161398(n+1)+1)]+1`
-/

namespace A100290.P3779682953581966875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161398 (A161398 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A100290.P3779682953581966875

/-! ## A100290.P4242115776109918179

`eq[A000120(n+1), A293390(n+1)]+1`
-/

namespace A100290.P4242115776109918179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293390 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A100290.P4242115776109918179

/-!
# A100291: Numbers of the form a^4 + b^3 with a, b > 0.

The programs for A100291, there is no canonical definition to state claims against.
-/

/-! ## A100291.P18336463216957393585

`eq[1, A266363(n)]+1`
-/

namespace A100291.P18336463216957393585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A100291.P18336463216957393585

/-! ## A100291.P4629150700448054326

`A020725(eq[1, A266363(n)])`
-/

namespace A100291.P4629150700448054326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A100291.P4629150700448054326

/-! ## A100291.P15647979158344115585

`A020725(lt[A266363(n), 2])`
-/

namespace A100291.P15647979158344115585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266363 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A100291.P15647979158344115585

/-! ## A100291.P7612684133179546448

`A008619(2*eq[1, A266363(n)])`
-/

namespace A100291.P7612684133179546448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A100291.P7612684133179546448

/-! ## A100291.P8731316003886448873

`A028242(2*eq[1, A266363(n)])`
-/

namespace A100291.P8731316003886448873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A100291.P8731316003886448873

/-! ## A100291.P18106001383017566872

`A065033(or(1, 2*eq[1, A266363(n)]))`
-/

namespace A100291.P18106001383017566872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Nat.lor 1 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A100291.P18106001383017566872

/-! ## A100291.P13886959589592290939

`filter[A055394(n+1), A363712(#)]`
-/

namespace A100291.P13886959589592290939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A363712 (f1 j).toNat = 1) n)

end

end A100291.P13886959589592290939

/-! ## A100291.P17187367807654188963

`filter[A070049(n+1), A363712(#)]`
-/

namespace A100291.P17187367807654188963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A363712 (f1 j).toNat = 1) n)

end

end A100291.P17187367807654188963

/-! ## A100291.P6028566053678873516

`filter[A076871(n+1), A363712(#)]`
-/

namespace A100291.P6028566053678873516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A363712 (f1 j).toNat = 1) n)

end

end A100291.P6028566053678873516

/-! ## A100291.P4004046498139502381

`filter[A022549(n+2), A363712(#)]`
-/

namespace A100291.P4004046498139502381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022549 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A363712 (f1 j).toNat = 1) n)

end

end A100291.P4004046498139502381

/-!
# A100292: Numbers of the form a^5 + b^2 with a, b > 0.

The programs for A100292, there is no canonical definition to state claims against.
-/

/-! ## A100292.P4755344737082137229

`eq[1, A266985(n)]+1`
-/

namespace A100292.P4755344737082137229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266985 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A100292.P4755344737082137229

/-! ## A100292.P6669204065469934921

`record[(n+2)/A266985(n+1)]`
-/

namespace A100292.P6669204065469934921
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A266985 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100292.P6669204065469934921

/-! ## A100292.P15524646711401158844

`A020725(eq[1, A266985(n)])`
-/

namespace A100292.P15524646711401158844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A100292.P15524646711401158844

/-! ## A100292.P6471382781558803228

`A020725(lt[A266985(n), 2])`
-/

namespace A100292.P6471382781558803228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266985 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A100292.P6471382781558803228

/-! ## A100292.P7950895689850755512

`A029579(2*eq[1, A266985(n)])`
-/

namespace A100292.P7950895689850755512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A100292.P7950895689850755512

/-! ## A100292.P16890033231195422123

`A008611(A008486(eq[1, A266985(n)]))`
-/

namespace A100292.P16890033231195422123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A008486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A100292.P16890033231195422123

/-! ## A100292.P11862465286435111868

`A008624(4*eq[1, A266985(n)])`
-/

namespace A100292.P11862465286435111868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A100292.P11862465286435111868

/-!
# A100293: Numbers of the form a^5 + b^3 with a,b>0.

The programs for A100293, there is no canonical definition to state claims against.
-/

/-! ## A100293.P10177791646329901714

`record[A155472(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A100293.P10177791646329901714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155472 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100293.P10177791646329901714

/-! ## A100293.P13589544208196297757

`record[A155472(A065648(n))]`
-/

namespace A100293.P13589544208196297757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155472 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100293.P13589544208196297757

/-! ## A100293.P9379638593387827303

`record[A155472(A100727(n))]`
-/

namespace A100293.P9379638593387827303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155472 (A100727 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100293.P9379638593387827303

/-! ## A100293.P13524331725526340533

`record[A155472(A109785(n))]`
-/

namespace A100293.P13524331725526340533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155472 (A109785 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100293.P13524331725526340533

/-! ## A100293.P1276887855056305863

`record[A155472(A126759(n))]`
-/

namespace A100293.P1276887855056305863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155472 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100293.P1276887855056305863

/-!
# A100294: Numbers of the form a^5 + b^4 with a, b > 0.

The programs for A100294, there is no canonical definition to state claims against.
-/

/-! ## A100294.P11304792904246276362

`A131862(A156859(n)+n²+1)-n`
-/

namespace A100294.P11304792904246276362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131862 (A156859 n + (n ^ 2 + 1 : ℤ)).toNat - (n : ℤ)

end

end A100294.P11304792904246276362

/-! ## A100294.P8449873543441596544

`A112055(A038209(2*(n+1))-A035368(n+1))`
-/

namespace A100294.P8449873543441596544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112055 (A038209 (2 * (n + 1)) - A035368 (n + 1)).toNat

end

end A100294.P8449873543441596544

/-!
# A100295: Expansion of g.f. x*(1-x)/(1-4*x-2*x^2+x^3).

The programs for A100295, the canonical program `A100295.P13558135722120034780` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100295 has offset 1).

The definition of A100295 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-4x-2x^2+x^3))` (program `A100295.P13558135722120034780`, by `A100295.P13558135722120034780.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100295.P13558135722120034780

`ogf((1-x)/(1-4x-2x^2+x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100295

/-- `ogf((1-x)/(1-4x-2x^2+x^3))` -/
def P13558135722120034780.Spec : Prop :=
  ∀ n, P13558135722120034780.a n = A100295 (n + 1)

theorem P13558135722120034780.correct : P13558135722120034780.Spec := by
  intro n
  simp only [A100295, Nat.add_sub_cancel]

end A100295

/-! ## A100295.P8102447279476109643

`4*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=14`
-/

namespace A100295.P8102447279476109643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 14] fun n a =>
  4 * a (n - 1) + 2 * a (n - 2) - a (n - 3)

end

end A100295.P8102447279476109643

namespace A100295

/-- `4*a(n-1)+2*a(n-2)-a(n-3)` -/
def P8102447279476109643.Spec : Prop :=
  ∀ n, P8102447279476109643.a n = A100295 (n + 1)

end A100295

/-!
# A100296: Expansion of g.f. x*(1+2*x-x^2)/(1-4*x-2*x^2+x^3).

The programs for A100296, the canonical program `A100296.P5221536237642316395` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100296 has offset 1).

The definition of A100296 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-x^2)/(1-4x-2x^2+x^3))` (program `A100296.P5221536237642316395`, by `A100296.P5221536237642316395.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100296.P5221536237642316395

`ogf((1+2x-x^2)/(1-4x-2x^2+x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100296

/-- `ogf((1+2x-x^2)/(1-4x-2x^2+x^3))` -/
def P5221536237642316395.Spec : Prop :=
  ∀ n, P5221536237642316395.a n = A100296 (n + 1)

theorem P5221536237642316395.correct : P5221536237642316395.Spec := by
  intro n
  simp only [A100296, Nat.add_sub_cancel]

end A100296

/-! ## A100296.P14010897455500154901

`4*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=6, a(2)=25`
-/

namespace A100296.P14010897455500154901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 25] fun n a =>
  4 * a (n - 1) + 2 * a (n - 2) - a (n - 3)

end

end A100296.P14010897455500154901

namespace A100296

/-- `4*a(n-1)+2*a(n-2)-a(n-3)` -/
def P14010897455500154901.Spec : Prop :=
  ∀ n, P14010897455500154901.a n = A100296 (n + 1)

end A100296

/-!
# A100297: Expansion of g.f.: x*(1-11*x+x^2)/(1-17*x+14*x^2-x^3).

The programs for A100297, the canonical program `A100297.P3307028824696184383` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100297 has offset 1).

The definition of A100297 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-11x+x^2)/(1-17x+14x^2-x^3))` (program `A100297.P3307028824696184383`, by `A100297.P3307028824696184383.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100297.P3307028824696184383

`ogf((1-11x+x^2)/(1-17x+14x^2-x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100297

/-- `ogf((1-11x+x^2)/(1-17x+14x^2-x^3))` -/
def P3307028824696184383.Spec : Prop :=
  ∀ n, P3307028824696184383.a n = A100297 (n + 1)

theorem P3307028824696184383.correct : P3307028824696184383.Spec := by
  intro n
  simp only [A100297, Nat.add_sub_cancel]

end A100297

/-! ## A100297.P18014269646614571326

`17*a(n-1)-14*a(n-2)+a(n-3)` with `a(0)=1, a(1)=6, a(2)=89`
-/

namespace A100297.P18014269646614571326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 89] fun n a =>
  17 * a (n - 1) - 14 * a (n - 2) + a (n - 3)

end

end A100297.P18014269646614571326

namespace A100297

/-- `17*a(n-1)-14*a(n-2)+a(n-3)` -/
def P18014269646614571326.Spec : Prop :=
  ∀ n, P18014269646614571326.a n = A100297 (n + 1)

end A100297

/-!
# A100299: Number of dissections of a convex n-gon by nonintersecting diagonals into an even number of regions.

The programs for A100299, the canonical program `A100299.P6607277383001077956` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100299 has offset 3).

The definition of A100299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100299.P6607277383001077956

`Δ[ceil(A104858(n)/2)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A100299

/-- `Δ[ceil(A104858(n)/2)]` -/
def P6607277383001077956.Spec : Prop :=
  ∀ n, P6607277383001077956.a n = A100299 (n + 3)

theorem P6607277383001077956.correct : P6607277383001077956.Spec := by
  intro n
  simp only [A100299, Nat.add_sub_cancel]

end A100299

/-! ## A100299.P1235322433169461377

`A010683(n)-a(n-1)` with `a(0)=0`
-/

namespace A100299.P1235322433169461377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010683 n - a (n - 1)

end

end A100299.P1235322433169461377

namespace A100299

/-- `A010683(n)-a(n-1)` -/
def P1235322433169461377.Spec : Prop :=
  ∀ n, P1235322433169461377.a n = A100299 (n + 3)

end A100299

/-! ## A100299.P427738728375518334

`A100300(n+3)-A033999(n)`
-/

namespace A100299.P427738728375518334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100300 (n + 3) - A033999 n

end

end A100299.P427738728375518334

namespace A100299

/-- `A100300(n+3)-A033999(n)` -/
def P427738728375518334.Spec : Prop :=
  ∀ n, P427738728375518334.a n = A100299 (n + 3)

end A100299

/-! ## A100299.P15699417222128472943

`A100300(n+3)-∑[A280560(n)]`
-/

namespace A100299.P15699417222128472943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100300 (n + 3) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100299.P15699417222128472943

namespace A100299

/-- `A100300(n+3)-∑[A280560(n)]` -/
def P15699417222128472943.Spec : Prop :=
  ∀ n, P15699417222128472943.a n = A100299 (n + 3)

end A100299

/-! ## A100299.P10899575253211501795

`A001003(n+1)-A100300(n+3)`
-/

namespace A100299.P10899575253211501795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 (n + 1) - A100300 (n + 3)

end

end A100299.P10899575253211501795

namespace A100299

/-- `A001003(n+1)-A100300(n+3)` -/
def P10899575253211501795.Spec : Prop :=
  ∀ n, P10899575253211501795.a n = A100299 (n + 3)

end A100299

/-! ## A100299.P7426766868272834022

`A100300(n+3)+n-A004442(n)`
-/

namespace A100299.P7426766868272834022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100300 (n + 3) + ((n : ℤ) - A004442 n)

end

end A100299.P7426766868272834022

namespace A100299

/-- `A100300(n+3)+n-A004442(n)` -/
def P7426766868272834022.Spec : Prop :=
  ∀ n, P7426766868272834022.a n = A100299 (n + 3)

end A100299

/-! ## A100299.P10742839022300464943

`(A080243(n+1)+1)/A280560(n+1)`
-/

namespace A100299.P10742839022300464943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080243 (n + 1) + 1 : ℚ) / (A280560 (n + 1) : ℚ)

end

end A100299.P10742839022300464943

namespace A100299

/-- `(A080243(n+1)+1)/A280560(n+1)` -/
def P10742839022300464943.Spec : Prop :=
  ∀ n, P10742839022300464943.a n = (A100299 (n + 3) : ℚ)

end A100299

/-! ## A100299.P6239992634063917243

`(A033999(n+1)+A001003(n+1))/2`
-/

namespace A100299.P6239992634063917243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (n + 1) + A001003 (n + 1) : ℚ) / 2

end

end A100299.P6239992634063917243

namespace A100299

/-- `(A033999(n+1)+A001003(n+1))/2` -/
def P6239992634063917243.Spec : Prop :=
  ∀ n, P6239992634063917243.a n = (A100299 (n + 3) : ℚ)

end A100299

/-! ## A100299.P18268350636359367370

`(A001003(n+1)-A062157(n+1))/2`
-/

namespace A100299.P18268350636359367370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001003 (n + 1) - A062157 (n + 1) : ℚ) / 2

end

end A100299.P18268350636359367370

namespace A100299

/-- `(A001003(n+1)-A062157(n+1))/2` -/
def P18268350636359367370.Spec : Prop :=
  ∀ n, P18268350636359367370.a n = (A100299 (n + 3) : ℚ)

end A100299

/-! ## A100299.P11146973494333144102

`(A001003(n+1)-A056594(2*n))/2`
-/

namespace A100299.P11146973494333144102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001003 (n + 1) - A056594 (2 * n) : ℚ) / 2

end

end A100299.P11146973494333144102

namespace A100299

/-- `(A001003(n+1)-A056594(2*n))/2` -/
def P11146973494333144102.Spec : Prop :=
  ∀ n, P11146973494333144102.a n = (A100299 (n + 3) : ℚ)

end A100299

/-! ## A100299.P7617776232871522565

`(A001003(n+1)-A009531(2*n+1))/2`
-/

namespace A100299.P7617776232871522565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001003 (n + 1) - A009531 (2 * n + 1) : ℚ) / 2

end

end A100299.P7617776232871522565

namespace A100299

/-- `(A001003(n+1)-A009531(2*n+1))/2` -/
def P7617776232871522565.Spec : Prop :=
  ∀ n, P7617776232871522565.a n = (A100299 (n + 3) : ℚ)

end A100299

