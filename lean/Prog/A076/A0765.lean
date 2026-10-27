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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
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
# A076500: Distance between natural sculptures.

The programs for A076500, there is no canonical definition to state claims against.
-/

/-! ## A076500.P10836948882606010626

`Δ[A076450(n+1)]`
-/

namespace A076500.P10836948882606010626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076500.P10836948882606010626

/-! ## A076500.P4620939089282008482

`abs(Δ[A076450(A005408(n)-n)])`
-/

namespace A076500.P4620939089282008482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076450 (A005408 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A076500.P4620939089282008482

/-! ## A076500.P17645174069339197217

`A076450(n+2)-A076450(n+1)`
-/

namespace A076500.P17645174069339197217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076450 (n + 2) - A076450 (n + 1)

end

end A076500.P17645174069339197217

/-! ## A076500.P8367533217669027491

`abs(Δ[A076450(A008619(2*n))])`
-/

namespace A076500.P8367533217669027491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076450 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A076500.P8367533217669027491

/-! ## A076500.P14975784197815061862

`Δ[record[A076450(A152271(n))]]`
-/

namespace A076500.P14975784197815061862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076450 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076500.P14975784197815061862

/-! ## A076500.P7853979551549951408

`Δ[record[A076450(A126759(n))]]`
-/

namespace A076500.P7853979551549951408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076450 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076500.P7853979551549951408

/-! ## A076500.P14459834778262045996

`Δ[record[A076450(A193739(n))]]`
-/

namespace A076500.P14459834778262045996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076450 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076500.P14459834778262045996

/-!
# A076501: 

The programs for A076501, there is no canonical definition to state claims against.
-/

/-! ## A076501.P15252850954686001470

`A086758(n+1)%Δ[A086758(n+3)]`
-/

namespace A076501.P15252850954686001470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086758 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086758 (n + 1)) (f1 (n + 1) - f1 n)

end

end A076501.P15252850954686001470

/-!
# A076502: a(1)=1, a(n)=n-a(n-a(n-a(n-1))).

The programs for A076502, the canonical program `A076502.P2802763690025371067` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076502 has offset 1).

The definition of A076502 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-a(n-a(n-a(n-1)))` (program `A076502.P2802763690025371067`, by `A076502.P2802763690025371067.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076502.P2802763690025371067

`n+1-a(n-a(n-a(n-1)))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076502

/-- `n+1-a(n-a(n-a(n-1)))` -/
def P2802763690025371067.Spec : Prop :=
  ∀ n, P2802763690025371067.a n = A076502 (n + 1)

theorem P2802763690025371067.correct : P2802763690025371067.Spec := by
  intro n
  simp only [A076502, Nat.add_sub_cancel]

end A076502

/-! ## A076502.P18375546207893510400

`1-a(n-a(n-a(n-1)))+n` with `a(0)=1`
-/

namespace A076502.P18375546207893510400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a ((n : ℤ) - a ((n : ℤ) - a (n - 1)).toNat).toNat + (n : ℤ)

end

end A076502.P18375546207893510400

namespace A076502

/-- `1-a(n-a(n-a(n-1)))+n` -/
def P18375546207893510400.Spec : Prop :=
  ∀ n, P18375546207893510400.a n = A076502 (n + 1)

end A076502

/-! ## A076502.P12546593588242437979

`1-(a(n-a(n-a(n-1)))-n)` with `a(0)=1`
-/

namespace A076502.P12546593588242437979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a ((n : ℤ) - a ((n : ℤ) - a (n - 1)).toNat).toNat - (n : ℤ))

end

end A076502.P12546593588242437979

namespace A076502

/-- `1-(a(n-a(n-a(n-1)))-n)` -/
def P12546593588242437979.Spec : Prop :=
  ∀ n, P12546593588242437979.a n = A076502 (n + 1)

end A076502

/-! ## A076502.P12091223347845138239

`or(A004001(n+1), A342910(A016789(n)))`
-/

namespace A076502.P12091223347845138239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004001 (n + 1)) (A342910 (A016789 n).toNat)

end

end A076502.P12091223347845138239

namespace A076502

/-- `or(A004001(n+1), A342910(A016789(n)))` -/
def P12091223347845138239.Spec : Prop :=
  ∀ n, P12091223347845138239.a n = A076502 (n + 1)

end A076502

/-! ## A076502.P3435176126429528609

`A335453(3*n+5)+A004001(n+1)`
-/

namespace A076502.P3435176126429528609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335453 (3 * n + 5) + A004001 (n + 1)

end

end A076502.P3435176126429528609

namespace A076502

/-- `A335453(3*n+5)+A004001(n+1)` -/
def P3435176126429528609.Spec : Prop :=
  ∀ n, P3435176126429528609.a n = A076502 (n + 1)

end A076502

/-!
# A076503: Prime numbers whose squares have square digit-sums.

The programs for A076503, the canonical program `A076503.P10982383402071221078` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076503 has offset 1).

The definition of A076503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076503.P10982383402071221078

`p?[A215618(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A076503

/-- `p?[A215618(n+1)]` -/
def P10982383402071221078.Spec : Prop :=
  ∀ n, P10982383402071221078.a n = A076503 (n + 1)

theorem P10982383402071221078.correct : P10982383402071221078.Spec := by
  intro n
  simp only [A076503, Nat.add_sub_cancel]

end A076503

/-! ## A076503.P7689291381785875243

`filter[A215618(n+1), A010051(#)]`
-/

namespace A076503.P7689291381785875243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A076503.P7689291381785875243

namespace A076503

/-- `filter[A215618(n+1), A010051(#)]` -/
def P7689291381785875243.Spec : Prop :=
  ∀ n, P7689291381785875243.a n = A076503 (n + 1)

end A076503

/-! ## A076503.P2389594962750808215

`∩[A000040(n+1), A215618(n+1)]`
-/

namespace A076503.P2389594962750808215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076503.P2389594962750808215

namespace A076503

/-- `∩[A000040(n+1), A215618(n+1)]` -/
def P2389594962750808215.Spec : Prop :=
  ∀ n, (P2389594962750808215.a n : ℤ) = A076503 (n + 1)

end A076503

/-! ## A076503.P17030443307366313762

`∩[A045319(n+1), A215618(n+1)]`
-/

namespace A076503.P17030443307366313762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076503.P17030443307366313762

namespace A076503

/-- `∩[A045319(n+1), A215618(n+1)]` -/
def P17030443307366313762.Spec : Prop :=
  ∀ n, (P17030443307366313762.a n : ℤ) = A076503 (n + 1)

end A076503

/-! ## A076503.P6571084838390049712

`∩[A175787(n+1), A215618(n+1)]`
-/

namespace A076503.P6571084838390049712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076503.P6571084838390049712

namespace A076503

/-- `∩[A175787(n+1), A215618(n+1)]` -/
def P6571084838390049712.Spec : Prop :=
  ∀ n, (P6571084838390049712.a n : ℤ) = A076503 (n + 1)

end A076503

/-! ## A076503.P10340412137205746086

`∩[A182986(n+1), A215618(n+1)]`
-/

namespace A076503.P10340412137205746086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076503.P10340412137205746086

namespace A076503

/-- `∩[A182986(n+1), A215618(n+1)]` -/
def P10340412137205746086.Spec : Prop :=
  ∀ n, (P10340412137205746086.a n : ℤ) = A076503 (n + 1)

end A076503

/-! ## A076503.P9438363771213341117

`∩[A186285(n+1), A215618(n+1)]`
-/

namespace A076503.P9438363771213341117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076503.P9438363771213341117

namespace A076503

/-- `∩[A186285(n+1), A215618(n+1)]` -/
def P9438363771213341117.Spec : Prop :=
  ∀ n, (P9438363771213341117.a n : ℤ) = A076503 (n + 1)

end A076503

/-! ## A076503.P4935584695610810567

`∩[A215618(n+1), A268391(n+1)]`
-/

namespace A076503.P4935584695610810567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076503.P4935584695610810567

namespace A076503

/-- `∩[A215618(n+1), A268391(n+1)]` -/
def P4935584695610810567.Spec : Prop :=
  ∀ n, (P4935584695610810567.a n : ℤ) = A076503 (n + 1)

end A076503

/-! ## A076503.P17631027016695956826

`∩[A215618(n+1), A348283(n+1)]`
-/

namespace A076503.P17631027016695956826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076503.P17631027016695956826

namespace A076503

/-- `∩[A215618(n+1), A348283(n+1)]` -/
def P17631027016695956826.Spec : Prop :=
  ∀ n, (P17631027016695956826.a n : ℤ) = A076503 (n + 1)

end A076503

/-! ## A076503.P17362893805673075084

`∩[A215618(n+1), A393213(n+1)]`
-/

namespace A076503.P17362893805673075084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076503.P17362893805673075084

namespace A076503

/-- `∩[A215618(n+1), A393213(n+1)]` -/
def P17362893805673075084.Spec : Prop :=
  ∀ n, (P17362893805673075084.a n : ℤ) = A076503 (n + 1)

end A076503

/-! ## A076503.P9387335093186427881

`p?[A061910(n+1)]`
-/

namespace A076503.P9387335093186427881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076503.P9387335093186427881

namespace A076503

/-- `p?[A061910(n+1)]` -/
def P9387335093186427881.Spec : Prop :=
  ∀ n, P9387335093186427881.a n = A076503 (n + 1)

end A076503

/-! ## A076503.P8877583770684969952

`record[A020639(A061910(n+2))]`
-/

namespace A076503.P8877583770684969952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A061910 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076503.P8877583770684969952

namespace A076503

/-- `record[A020639(A061910(n+2))]` -/
def P8877583770684969952.Spec : Prop :=
  ∀ n, P8877583770684969952.a n = A076503 (n + 1)

end A076503

/-! ## A076503.P6690755490097718525

`filter[A061910(n+1), A010051(#)]`
-/

namespace A076503.P6690755490097718525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A076503.P6690755490097718525

namespace A076503

/-- `filter[A061910(n+1), A010051(#)]` -/
def P6690755490097718525.Spec : Prop :=
  ∀ n, P6690755490097718525.a n = A076503 (n + 1)

end A076503

/-! ## A076503.P17539843399609370459

`record[A020639(sqrt(A053057(n+3)))]`
-/

namespace A076503.P17539843399609370459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A053057 (n + 3) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076503.P17539843399609370459

namespace A076503

/-- `record[A020639(sqrt(A053057(n+3)))]` -/
def P17539843399609370459.Spec : Prop :=
  ∀ n, P17539843399609370459.a n = A076503 (n + 1)

end A076503

/-! ## A076503.P4361830265574751015

`∩[A000040(n+1), A061910(n+1)]`
-/

namespace A076503.P4361830265574751015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076503.P4361830265574751015

namespace A076503

/-- `∩[A000040(n+1), A061910(n+1)]` -/
def P4361830265574751015.Spec : Prop :=
  ∀ n, (P4361830265574751015.a n : ℤ) = A076503 (n + 1)

end A076503

/-! ## A076503.P1271679211030973409

`∩[A045319(n+1), A061910(n+1)]`
-/

namespace A076503.P1271679211030973409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076503.P1271679211030973409

namespace A076503

/-- `∩[A045319(n+1), A061910(n+1)]` -/
def P1271679211030973409.Spec : Prop :=
  ∀ n, (P1271679211030973409.a n : ℤ) = A076503 (n + 1)

end A076503

/-! ## A076503.P14331212721942878378

`∩[A061910(n+1), A175787(n+1)]`
-/

namespace A076503.P14331212721942878378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076503.P14331212721942878378

namespace A076503

/-- `∩[A061910(n+1), A175787(n+1)]` -/
def P14331212721942878378.Spec : Prop :=
  ∀ n, (P14331212721942878378.a n : ℤ) = A076503 (n + 1)

end A076503

/-! ## A076503.P15212246142990634007

`∩[A061910(n+1), A182986(n+1)]`
-/

namespace A076503.P15212246142990634007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076503.P15212246142990634007

namespace A076503

/-- `∩[A061910(n+1), A182986(n+1)]` -/
def P15212246142990634007.Spec : Prop :=
  ∀ n, (P15212246142990634007.a n : ℤ) = A076503 (n + 1)

end A076503

/-!
# A076504: Numbers k such that (k-1, k+1) and (k/2-1, k/2+1) are both pairs of twin primes.

The programs for A076504, there is no canonical definition to state claims against.
-/

/-! ## A076504.P16155014244822886973

`2*A066388(n+1)`
-/

namespace A076504.P16155014244822886973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066388 (n + 1)

end

end A076504.P16155014244822886973

/-! ## A076504.P81356029378790739

`12*A177680(n+1)`
-/

namespace A076504.P81356029378790739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A177680 (n + 1)

end

end A076504.P81356029378790739

/-! ## A076504.P9225737341205181084

`2*(A069142(n+1)+1)`
-/

namespace A076504.P9225737341205181084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A069142 (n + 1) + 1)

end

end A076504.P9225737341205181084

/-! ## A076504.P16717128927887083795

`A066388(n+1)+A069142(n+1)+1`
-/

namespace A076504.P16717128927887083795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066388 (n + 1) + (A069142 (n + 1) + 1)

end

end A076504.P16717128927887083795

/-! ## A076504.P17619950892524581568

`2*(A001359(A158866(n+1))+1)`
-/

namespace A076504.P17619950892524581568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001359 (A158866 (n + 1)).toNat + 1)

end

end A076504.P17619950892524581568

/-! ## A076504.P8007577567741472892

`A158870(n+1)-1`
-/

namespace A076504.P8007577567741472892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158870 (n + 1) - 1

end

end A076504.P8007577567741472892

/-! ## A076504.P10787050468884536537

`2*(A261463(n+2)+1)`
-/

namespace A076504.P10787050468884536537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A261463 (n + 2) + 1)

end

end A076504.P10787050468884536537

/-! ## A076504.P14944831723296359916

`2*A221310(n+4)`
-/

namespace A076504.P14944831723296359916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A221310 (n + 4)

end

end A076504.P14944831723296359916

/-! ## A076504.P18111422458812924239

`∩[A071699(n+1), A118071(n+1)]-1`
-/

namespace A076504.P18111422458812924239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118071 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A076504.P18111422458812924239

/-! ## A076504.P15796985057647346868

`∩[A089965(n+1), A167597(n+1)]`
-/

namespace A076504.P15796985057647346868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076504.P15796985057647346868

/-! ## A076504.P6062744203529101453

`2*∩[A176045(n+1), A351875(n+1)]`
-/

namespace A076504.P6062744203529101453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076504.P6062744203529101453

/-! ## A076504.P218004128532794263

`A054735(A158866(n+1))`
-/

namespace A076504.P218004128532794263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (A158866 (n + 1)).toNat

end

end A076504.P218004128532794263

/-! ## A076504.P10982249633815663564

`∩[A054735(n+1), A167597(n+1)]`
-/

namespace A076504.P10982249633815663564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076504.P10982249633815663564

/-! ## A076504.P18135621511268736797

`2*∩[A014574(n+1), A241557(n+1)]`
-/

namespace A076504.P18135621511268736797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076504.P18135621511268736797

/-! ## A076504.P14763966606049012545

`2*∩[A217259(n+1), A241557(n+1)]`
-/

namespace A076504.P14763966606049012545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076504.P14763966606049012545

/-! ## A076504.P8999178791074118884

`A066388(n+1)+A014574(A158866(n+1))`
-/

namespace A076504.P8999178791074118884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066388 (n + 1) + A014574 (A158866 (n + 1)).toNat

end

end A076504.P8999178791074118884

/-! ## A076504.P4568574875839794990

`∩[A054735(n+1), A370395(n+1)]`
-/

namespace A076504.P4568574875839794990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076504.P4568574875839794990

/-! ## A076504.P9503052723443813594

`2*∩[A056853(n+1), A241557(n+1)]`
-/

namespace A076504.P9503052723443813594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076504.P9503052723443813594

/-! ## A076504.P17782122338766723427

`∩[A112928(n+1), A118071(n+1)]-1`
-/

namespace A076504.P17782122338766723427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118071 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A076504.P17782122338766723427

/-! ## A076504.P10700462008718851245

`∩[A118071(n+1), A162876(n+1)]-1`
-/

namespace A076504.P10700462008718851245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162876 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A076504.P10700462008718851245

/-!
# A076505: 3 people at a party are saying Hello to each other. Person 1 says Hello. Person 2 counts the times Hello has been said and says Hello twice that number. Person 3 says Hello 3 times the sum of Hello's and then it is Person 1 again. This is how many Hello's each person says.

The programs for A076505, the canonical program `A076505.P4666007799640939732` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076505 has offset 1).

The definition of A076505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076505.P4666007799640939732

`24*a(n-3)` with `a(0)=1, a(1)=2, a(2)=9, a(3)=12`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076505

/-- `24*a(n-3)` -/
def P4666007799640939732.Spec : Prop :=
  ∀ n, (P4666007799640939732.a n : ℤ) = A076505 (n + 1)

theorem P4666007799640939732.correct : P4666007799640939732.Spec := by
  intro n
  simp only [A076505, Nat.add_sub_cancel]

end A076505

/-! ## A076505.P2427026827434017885

`A000007(n)+Δ[A076506(A028310(n))]`
-/

namespace A076505.P2427026827434017885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076506 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A076505.P2427026827434017885

namespace A076505

/-- `A000007(n)+Δ[A076506(A028310(n))]` -/
def P2427026827434017885.Spec : Prop :=
  ∀ n, P2427026827434017885.a n = A076505 (n + 1)

end A076505

/-! ## A076505.P3808784884548101174

`Δ[A076506(A028310(n))-A000007(8*n)]`
-/

namespace A076505.P3808784884548101174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076506 (A028310 n).toNat - A000007 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076505.P3808784884548101174

namespace A076505

/-- `Δ[A076506(A028310(n))-A000007(8*n)]` -/
def P3808784884548101174.Spec : Prop :=
  ∀ n, P3808784884548101174.a n = A076505 (n + 1)

end A076505

/-! ## A076505.P2301928152519609369

`A076506(n+1)+A000007(n)-A076506(A028310(n))`
-/

namespace A076505.P2301928152519609369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076506 (n + 1) + (A000007 n - A076506 (A028310 n).toNat)

end

end A076505.P2301928152519609369

namespace A076505

/-- `A076506(n+1)+A000007(n)-A076506(A028310(n))` -/
def P2301928152519609369.Spec : Prop :=
  ∀ n, P2301928152519609369.a n = A076505 (n + 1)

end A076505

/-! ## A076505.P9960969608720684875

`ceil(A076509(n+2)/6)`
-/

namespace A076505.P9960969608720684875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A076509 (n + 2) : ℚ) / 6⌉

end

end A076505.P9960969608720684875

namespace A076505

/-- `ceil(A076509(n+2)/6)` -/
def P9960969608720684875.Spec : Prop :=
  ∀ n, P9960969608720684875.a n = A076505 (n + 1)

end A076505

/-! ## A076505.P10667708555235308385

`A076509(n+2)/6*A054977(n)`
-/

namespace A076505.P10667708555235308385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076509 (n + 2) : ℚ) / 6 * (A054977 n : ℚ)

end

end A076505.P10667708555235308385

namespace A076505

/-- `A076509(n+2)/6*A054977(n)` -/
def P10667708555235308385.Spec : Prop :=
  ∀ n, P10667708555235308385.a n = (A076505 (n + 1) : ℚ)

end A076505

/-! ## A076505.P14040774707294283686

`floor(A000007(n)+A076509(n+2)/6)`
-/

namespace A076505.P14040774707294283686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000007 n : ℚ) + (A076509 (n + 2) : ℚ) / 6⌋

end

end A076505.P14040774707294283686

namespace A076505

/-- `floor(A000007(n)+A076509(n+2)/6)` -/
def P14040774707294283686.Spec : Prop :=
  ∀ n, P14040774707294283686.a n = A076505 (n + 1)

end A076505

/-! ## A076505.P17804470158582382452

`Δ[floor(A076510(n+1)/6)]`
-/

namespace A076505.P17804470158582382452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A076510 (n + 1) : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076505.P17804470158582382452

namespace A076505

/-- `Δ[floor(A076510(n+1)/6)]` -/
def P17804470158582382452.Spec : Prop :=
  ∀ n, P17804470158582382452.a n = A076505 (n + 1)

end A076505

/-! ## A076505.P11192731764426203819

`Δ[A076510(n+1)/6*A001222(A008578(n+1))]`
-/

namespace A076505.P11192731764426203819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076510 (n + 1) : ℚ) / 6 * (A001222 (A008578 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076505.P11192731764426203819

namespace A076505

/-- `Δ[A076510(n+1)/6*A001222(A008578(n+1))]` -/
def P11192731764426203819.Spec : Prop :=
  ∀ n, P11192731764426203819.a n = (A076505 (n + 1) : ℚ)

end A076505

/-!
# A076506: Expansion of x*(1+3*x+12*x^2)/(1-24*x^3).

The programs for A076506, the canonical program `A076506.P5341087153202782567` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076506 has offset 1).

The definition of A076506 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+12x^2)/(1-24x^3))` (program `A076506.P5341087153202782567`, by `A076506.P5341087153202782567.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076506.P5341087153202782567

`ogf((1+3x+12x^2)/(1-24x^3))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076506

/-- `ogf((1+3x+12x^2)/(1-24x^3))` -/
def P5341087153202782567.Spec : Prop :=
  ∀ n, P5341087153202782567.a n = A076506 (n + 1)

theorem P5341087153202782567.correct : P5341087153202782567.Spec := by
  intro n
  simp only [A076506, Nat.add_sub_cancel]

end A076506

/-! ## A076506.P4472192814157198800

`24*a(n-3)` with `a(0)=1, a(1)=3, a(2)=12`
-/

namespace A076506.P4472192814157198800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 12] fun n a =>
  24 * a (n - 3)

end

end A076506.P4472192814157198800

namespace A076506

/-- `24*a(n-3)` -/
def P4472192814157198800.Spec : Prop :=
  ∀ n, (P4472192814157198800.a n : ℤ) = A076506 (n + 1)

end A076506

/-! ## A076506.P15975478418090727478

`∏[and(3, dr(6*n))+1]`
-/

namespace A076506.P15975478418090727478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (SequenceMachineLib.digitalRoot (6 * n : ℤ)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076506.P15975478418090727478

namespace A076506

/-- `∏[and(3, dr(6*n))+1]` -/
def P15975478418090727478.Spec : Prop :=
  ∀ n, (P15975478418090727478.a n : ℤ) = A076506 (n + 1)

end A076506

/-! ## A076506.P4532861061961059362

`∏[abs(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=4, a(3)=2`
-/

namespace A076506.P4532861061961059362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076506.P4532861061961059362

namespace A076506

/-- `∏[abs(a(n-3))]` -/
def P4532861061961059362.Spec : Prop :=
  ∀ n, (P4532861061961059362.a n : ℤ) = A076506 (n + 1)

end A076506

/-! ## A076506.P14104957605610929279

`∏[floor(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=4, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A076506.P14104957605610929279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076506.P14104957605610929279

namespace A076506

/-- `∏[floor(a(n-3))]` -/
def P14104957605610929279.Spec : Prop :=
  ∀ n, (P14104957605610929279.a n : ℤ) = A076506 (n + 1)

end A076506

/-! ## A076506.P7183328391933303009

`∑[A076505(n+1)]`
-/

namespace A076506.P7183328391933303009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076506.P7183328391933303009

namespace A076506

/-- `∑[A076505(n+1)]` -/
def P7183328391933303009.Spec : Prop :=
  ∀ n, P7183328391933303009.a n = A076506 (n + 1)

end A076506

/-! ## A076506.P16858500530627329379

`∏[A057937(a(n-1))]` with `a(0)=1`
-/

namespace A076506.P16858500530627329379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A057937 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076506.P16858500530627329379

namespace A076506

/-- `∏[A057937(a(n-1))]` -/
def P16858500530627329379.Spec : Prop :=
  ∀ n, P16858500530627329379.a n = A076506 (n + 1)

end A076506

/-! ## A076506.P579591061899822587

`∏[A082924(a(n-1))]` with `a(0)=1`
-/

namespace A076506.P579591061899822587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A082924 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076506.P579591061899822587

namespace A076506

/-- `∏[A082924(a(n-1))]` -/
def P579591061899822587.Spec : Prop :=
  ∀ n, P579591061899822587.a n = A076506 (n + 1)

end A076506

/-! ## A076506.P7663300306242242452

`∏[A089026(a(n-1))+1]` with `a(0)=1, a(1)=3`
-/

namespace A076506.P7663300306242242452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  A089026 (f1 (n - 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076506.P7663300306242242452

namespace A076506

/-- `∏[A089026(a(n-1))+1]` -/
def P7663300306242242452.Spec : Prop :=
  ∀ n, P7663300306242242452.a n = A076506 (n + 1)

end A076506

/-! ## A076506.P4932759858594361854

`∏[A000005(a(n-1)+7)]` with `a(0)=1, a(1)=3`
-/

namespace A076506.P4932759858594361854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  A000005 (f1 (n - 1) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076506.P4932759858594361854

namespace A076506

/-- `∏[A000005(a(n-1)+7)]` -/
def P4932759858594361854.Spec : Prop :=
  ∀ n, P4932759858594361854.a n = A076506 (n + 1)

end A076506

/-! ## A076506.P16439494127233707483

`∏[n%3+2]/2`
-/

namespace A076506.P16439494127233707483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A076506.P16439494127233707483

namespace A076506

/-- `∏[n%3+2]/2` -/
def P16439494127233707483.Spec : Prop :=
  ∀ n, P16439494127233707483.a n = (A076506 (n + 1) : ℚ)

end A076506

/-! ## A076506.P14144239672117172675

`∏[2--n%3]/2`
-/

namespace A076506.P14144239672117172675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (-(n : ℤ)) 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A076506.P14144239672117172675

namespace A076506

/-- `∏[2--n%3]/2` -/
def P14144239672117172675.Spec : Prop :=
  ∀ n, P14144239672117172675.a n = (A076506 (n + 1) : ℚ)

end A076506

/-! ## A076506.P12330873266347223672

`∏[A010882(n)+1]/2`
-/

namespace A076506.P12330873266347223672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A076506.P12330873266347223672

namespace A076506

/-- `∏[A010882(n)+1]/2` -/
def P12330873266347223672.Spec : Prop :=
  ∀ n, P12330873266347223672.a n = (A076506 (n + 1) : ℚ)

end A076506

/-! ## A076506.P7569397242248001044

`A076505(n+2)/(A143097(n+2)-n)`
-/

namespace A076506.P7569397242248001044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076505 (n + 2) : ℚ) / (A143097 (n + 2) - (n : ℤ) : ℚ)

end

end A076506.P7569397242248001044

namespace A076506

/-- `A076505(n+2)/(A143097(n+2)-n)` -/
def P7569397242248001044.Spec : Prop :=
  ∀ n, P7569397242248001044.a n = (A076506 (n + 1) : ℚ)

end A076506

/-! ## A076506.P12786949257714882605

`A076510(n+2)/6`
-/

namespace A076506.P12786949257714882605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076510 (n + 2) : ℚ) / 6

end

end A076506.P12786949257714882605

namespace A076506

/-- `A076510(n+2)/6` -/
def P12786949257714882605.Spec : Prop :=
  ∀ n, P12786949257714882605.a n = (A076506 (n + 1) : ℚ)

end A076506

/-!
# A076507: Three people (P1, P2, P3) are in a circle and are saying Hello to each other. They start with P2 saying "Hello, Hello". Thereafter Pn says "Hello" for n times the total number of Hello's so far.

The programs for A076507, the canonical program `A076507.P12967974437446968008` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076507 has offset 1).

The definition of A076507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076507.P12967974437446968008

`Δ[24*a(n-3)]` with `a(0)=0, a(1)=2, a(2)=8, a(3)=16`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076507

/-- `Δ[24*a(n-3)]` -/
def P12967974437446968008.Spec : Prop :=
  ∀ n, P12967974437446968008.a n = A076507 (n + 1)

theorem P12967974437446968008.correct : P12967974437446968008.Spec := by
  intro n
  simp only [A076507, Nat.add_sub_cancel]

end A076507

/-! ## A076507.P12627581733015328623

`ceil(A076509(n+3)/9)`
-/

namespace A076507.P12627581733015328623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A076509 (n + 3) : ℚ) / 9⌉

end

end A076507.P12627581733015328623

namespace A076507

/-- `ceil(A076509(n+3)/9)` -/
def P12627581733015328623.Spec : Prop :=
  ∀ n, P12627581733015328623.a n = A076507 (n + 1)

end A076507

/-! ## A076507.P13245544876795860013

`A076509(n+3)/dr(A076510(n+2))`
-/

namespace A076507.P13245544876795860013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076509 (n + 3) : ℚ) / (SequenceMachineLib.digitalRoot (A076510 (n + 2)) : ℚ)

end

end A076507.P13245544876795860013

namespace A076507

/-- `A076509(n+3)/dr(A076510(n+2))` -/
def P13245544876795860013.Spec : Prop :=
  ∀ n, P13245544876795860013.a n = (A076507 (n + 1) : ℚ)

end A076507

/-! ## A076507.P17925695983165213835

`floor(A000007(n)+A076509(n+3)/9)`
-/

namespace A076507.P17925695983165213835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000007 n : ℚ) + (A076509 (n + 3) : ℚ) / 9⌋

end

end A076507.P17925695983165213835

namespace A076507

/-- `floor(A000007(n)+A076509(n+3)/9)` -/
def P17925695983165213835.Spec : Prop :=
  ∀ n, P17925695983165213835.a n = A076507 (n + 1)

end A076507

/-! ## A076507.P12142377783281491557

`Δ[floor(A076510(n+2)/9)]`
-/

namespace A076507.P12142377783281491557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A076510 (n + 2) : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076507.P12142377783281491557

namespace A076507

/-- `Δ[floor(A076510(n+2)/9)]` -/
def P12142377783281491557.Spec : Prop :=
  ∀ n, P12142377783281491557.a n = A076507 (n + 1)

end A076507

/-! ## A076507.P703344979528923278

`Δ[A076510(n+2)/9*A057427(n)]`
-/

namespace A076507.P703344979528923278
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076510 (n + 2) : ℚ) / 9 * (A057427 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076507.P703344979528923278

namespace A076507

/-- `Δ[A076510(n+2)/9*A057427(n)]` -/
def P703344979528923278.Spec : Prop :=
  ∀ n, P703344979528923278.a n = (A076507 (n + 1) : ℚ)

end A076507

/-!
# A076508: Expansion of 2*x*(1+4*x+8*x^2)/(1-24*x^3).

The programs for A076508, the canonical program `A076508.P9893825075980860230` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076508 has offset 1).

The definition of A076508 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2+8x+16x^2)/(1-24x^3))` (program `A076508.P9893825075980860230`, by `A076508.P9893825075980860230.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076508.P9893825075980860230

`ogf((2+8x+16x^2)/(1-24x^3))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076508

/-- `ogf((2+8x+16x^2)/(1-24x^3))` -/
def P9893825075980860230.Spec : Prop :=
  ∀ n, P9893825075980860230.a n = A076508 (n + 1)

theorem P9893825075980860230.correct : P9893825075980860230.Spec := by
  intro n
  simp only [A076508, Nat.add_sub_cancel]

end A076508

/-! ## A076508.P4864727555285511605

`24*a(n-3)` with `a(0)=2, a(1)=8, a(2)=16`
-/

namespace A076508.P4864727555285511605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 8, 16] fun n a =>
  24 * a (n - 3)

end

end A076508.P4864727555285511605

namespace A076508

/-- `24*a(n-3)` -/
def P4864727555285511605.Spec : Prop :=
  ∀ n, (P4864727555285511605.a n : ℤ) = A076508 (n + 1)

end A076508

/-! ## A076508.P15544039345562124936

`∏[abs(a(n-3))]` with `a(0)=2, a(1)=4, a(2)=2, a(3)=3`
-/

namespace A076508.P15544039345562124936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 2, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076508.P15544039345562124936

namespace A076508

/-- `∏[abs(a(n-3))]` -/
def P15544039345562124936.Spec : Prop :=
  ∀ n, (P15544039345562124936.a n : ℤ) = A076508 (n + 1)

end A076508

/-! ## A076508.P2733122661391558641

`∏[floor(a(n-3))]` with `a(0)=2, a(1)=4, a(2)=2, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A076508.P2733122661391558641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 2, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076508.P2733122661391558641

namespace A076508

/-- `∏[floor(a(n-3))]` -/
def P2733122661391558641.Spec : Prop :=
  ∀ n, (P2733122661391558641.a n : ℤ) = A076508 (n + 1)

end A076508

/-! ## A076508.P1504730286674421244

`∏[round(a(n-3))]` with `a(0)=2, a(1)=4, a(2)=2, a(3)=3`

`round` is left out, it is the identity on integers.
-/

namespace A076508.P1504730286674421244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 2, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076508.P1504730286674421244

namespace A076508

/-- `∏[round(a(n-3))]` -/
def P1504730286674421244.Spec : Prop :=
  ∀ n, (P1504730286674421244.a n : ℤ) = A076508 (n + 1)

end A076508

/-! ## A076508.P7490872759218412241

`∑[A076507(n+1)]`
-/

namespace A076508.P7490872759218412241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076508.P7490872759218412241

namespace A076508

/-- `∑[A076507(n+1)]` -/
def P7490872759218412241.Spec : Prop :=
  ∀ n, P7490872759218412241.a n = A076508 (n + 1)

end A076508

/-! ## A076508.P13373577810345137278

`∏[3-A163804(n)]`
-/

namespace A076508.P13373577810345137278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A163804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076508.P13373577810345137278

namespace A076508

/-- `∏[3-A163804(n)]` -/
def P13373577810345137278.Spec : Prop :=
  ∀ n, P13373577810345137278.a n = A076508 (n + 1)

end A076508

/-! ## A076508.P11683525936423009416

`2/3*A076506(n+2)`
-/

namespace A076508.P11683525936423009416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A076506 (n + 2) : ℚ)

end

end A076508.P11683525936423009416

namespace A076508

/-- `2/3*A076506(n+2)` -/
def P11683525936423009416.Spec : Prop :=
  ∀ n, P11683525936423009416.a n = (A076508 (n + 1) : ℚ)

end A076508

/-! ## A076508.P13302042009190319133

`∏[A000005(a(n-1)+7)]` with `a(0)=2, a(1)=4`
-/

namespace A076508.P13302042009190319133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  A000005 (f1 (n - 1) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076508.P13302042009190319133

namespace A076508

/-- `∏[A000005(a(n-1)+7)]` -/
def P13302042009190319133.Spec : Prop :=
  ∀ n, P13302042009190319133.a n = A076508 (n + 1)

end A076508

/-! ## A076508.P13596535152442043558

`∏[A184628(n+1)%3+2]/2`
-/

namespace A076508.P13596535152442043558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184628 (n + 1)) 3 + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A076508.P13596535152442043558

namespace A076508

/-- `∏[A184628(n+1)%3+2]/2` -/
def P13596535152442043558.Spec : Prop :=
  ∀ n, P13596535152442043558.a n = (A076508 (n + 1) : ℚ)

end A076508

/-! ## A076508.P4686655418398607983

`A080095(n+1)*A127975(n)`
-/

namespace A076508.P4686655418398607983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080095 (n + 1) * A127975 n

end

end A076508.P4686655418398607983

namespace A076508

/-- `A080095(n+1)*A127975(n)` -/
def P4686655418398607983.Spec : Prop :=
  ∀ n, P4686655418398607983.a n = A076508 (n + 1)

end A076508

/-! ## A076508.P1938414595574290494

`lcm(A062723(n), A080095(n+1))`
-/

namespace A076508.P1938414595574290494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062723 n) (A080095 (n + 1))

end

end A076508.P1938414595574290494

namespace A076508

/-- `lcm(A062723(n), A080095(n+1))` -/
def P1938414595574290494.Spec : Prop :=
  ∀ n, (P1938414595574290494.a n : ℤ) = A076508 (n + 1)

end A076508

/-! ## A076508.P397954170994491878

`A076510(n+3)/9`
-/

namespace A076508.P397954170994491878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076510 (n + 3) : ℚ) / 9

end

end A076508.P397954170994491878

namespace A076508

/-- `A076510(n+3)/9` -/
def P397954170994491878.Spec : Prop :=
  ∀ n, P397954170994491878.a n = (A076508 (n + 1) : ℚ)

end A076508

/-! ## A076508.P9645392760607263740

`∏[A103881(A000217(n+1))-Δ[n²]%3+2]`
-/

namespace A076508.P9645392760607263740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000217 (n + 1)).toNat - Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) 3 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076508.P9645392760607263740

namespace A076508

/-- `∏[A103881(A000217(n+1))-Δ[n²]%3+2]` -/
def P9645392760607263740.Spec : Prop :=
  ∀ n, P9645392760607263740.a n = A076508 (n + 1)

end A076508

/-!
# A076509: Expansion of 3*x*(1-x)*(1+2*x+6*x^2)/(1-24*x^3).

The programs for A076509, the canonical program `A076509.P7365516774212724396` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076509 has offset 1).

The definition of A076509 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3+3x+12x^2-18x^3)/(1-24x^3))` (program `A076509.P7365516774212724396`, by `A076509.P7365516774212724396.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076509.P7365516774212724396

`ogf((3+3x+12x^2-18x^3)/(1-24x^3))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076509

/-- `ogf((3+3x+12x^2-18x^3)/(1-24x^3))` -/
def P7365516774212724396.Spec : Prop :=
  ∀ n, P7365516774212724396.a n = A076509 (n + 1)

theorem P7365516774212724396.correct : P7365516774212724396.Spec := by
  intro n
  simp only [A076509, Nat.add_sub_cancel]

end A076509

/-! ## A076509.P7361626402214089014

`24*a(n-3)` with `a(0)=3, a(1)=3, a(2)=12, a(3)=54`
-/

namespace A076509.P7361626402214089014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 12, 54] fun n a =>
  24 * a (n - 3)

end

end A076509.P7361626402214089014

namespace A076509

/-- `24*a(n-3)` -/
def P7361626402214089014.Spec : Prop :=
  ∀ n, (P7361626402214089014.a n : ℤ) = A076509 (n + 1)

end A076509

/-! ## A076509.P11363731590283642039

`ceil(A076505(n+3)/4)`
-/

namespace A076509.P11363731590283642039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A076505 (n + 3) : ℚ) / 4⌉

end

end A076509.P11363731590283642039

namespace A076509

/-- `ceil(A076505(n+3)/4)` -/
def P11363731590283642039.Spec : Prop :=
  ∀ n, P11363731590283642039.a n = A076509 (n + 1)

end A076509

/-! ## A076509.P3845789835436760476

`A076505(abs(n+1-round(n/(n+1)))+3)/4`
-/

namespace A076509.P3845789835436760476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076505 (|(n + 1 : ℤ) - SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))| + 3).toNat : ℚ) / 4

end

end A076509.P3845789835436760476

namespace A076509

/-- `A076505(abs(n+1-round(n/(n+1)))+3)/4` -/
def P3845789835436760476.Spec : Prop :=
  ∀ n, P3845789835436760476.a n = (A076509 (n + 1) : ℚ)

end A076509

/-! ## A076509.P9144992943362129891

`ceil(A076507(n+5)/64)`
-/

namespace A076509.P9144992943362129891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A076507 (n + 5) : ℚ) / 64⌉

end

end A076509.P9144992943362129891

namespace A076509

/-- `ceil(A076507(n+5)/64)` -/
def P9144992943362129891.Spec : Prop :=
  ∀ n, P9144992943362129891.a n = A076509 (n + 1)

end A076509

/-! ## A076509.P16982390106987838154

`A076507(A000007(n)+5+n)/64`
-/

namespace A076509.P16982390106987838154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076507 (A000007 n + 5 + (n : ℤ)).toNat : ℚ) / 64

end

end A076509.P16982390106987838154

namespace A076509

/-- `A076507(A000007(n)+5+n)/64` -/
def P16982390106987838154.Spec : Prop :=
  ∀ n, P16982390106987838154.a n = (A076509 (n + 1) : ℚ)

end A076509

/-!
# A076510: Expansion of 3*(1+2*x+6 x^2)/(1-24*x^3).

The programs for A076510, the canonical program `A076510.P17032470915015039823` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076510 has offset 1).

The definition of A076510 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3+6x+18x^2)/(1-24x^3))` (program `A076510.P17032470915015039823`, by `A076510.P17032470915015039823.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076510.P7056292665001713405

`24*a(n-3)` with `a(0)=3, a(1)=6, a(2)=18`
-/

namespace A076510.P7056292665001713405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 6, 18] fun n a =>
  24 * a (n - 3)

end

end A076510.P7056292665001713405

namespace A076510

/-- `24*a(n-3)` -/
def P7056292665001713405.Spec : Prop :=
  ∀ n, (P7056292665001713405.a n : ℤ) = A076510 (n + 1)

end A076510

/-! ## A076510.P17032470915015039823

`ogf((3+6x+18x^2)/(1-24x^3))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076510

/-- `ogf((3+6x+18x^2)/(1-24x^3))` -/
def P17032470915015039823.Spec : Prop :=
  ∀ n, P17032470915015039823.a n = A076510 (n + 1)

theorem P17032470915015039823.correct : P17032470915015039823.Spec := by
  intro n
  simp only [A076510, Nat.add_sub_cancel]

end A076510

/-! ## A076510.P12436452544238515130

`∏[abs((1-n)%3)+2]`
-/

namespace A076510.P12436452544238515130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (1 - (n : ℤ)) 3| + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076510.P12436452544238515130

namespace A076510

/-- `∏[abs((1-n)%3)+2]` -/
def P12436452544238515130.Spec : Prop :=
  ∀ n, P12436452544238515130.a n = A076510 (n + 1)

end A076510

/-! ## A076510.P12123763089793625556

`∏[dr(1-n)%3+2]`
-/

namespace A076510.P12123763089793625556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - (n : ℤ)) % 3 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076510.P12123763089793625556

namespace A076510

/-- `∏[dr(1-n)%3+2]` -/
def P12123763089793625556.Spec : Prop :=
  ∀ n, (P12123763089793625556.a n : ℤ) = A076510 (n + 1)

end A076510

/-! ## A076510.P8162041356169642833

`∏[abs(a(n-3))]` with `a(0)=3, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A076510.P8162041356169642833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 3, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076510.P8162041356169642833

namespace A076510

/-- `∏[abs(a(n-3))]` -/
def P8162041356169642833.Spec : Prop :=
  ∀ n, (P8162041356169642833.a n : ℤ) = A076510 (n + 1)

end A076510

/-! ## A076510.P14912349374200179721

`∏[floor(a(n-3))]` with `a(0)=3, a(1)=2, a(2)=3, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A076510.P14912349374200179721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 3, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076510.P14912349374200179721

namespace A076510

/-- `∏[floor(a(n-3))]` -/
def P14912349374200179721.Spec : Prop :=
  ∀ n, (P14912349374200179721.a n : ℤ) = A076510 (n + 1)

end A076510

/-! ## A076510.P9219474782361427767

`∏[ceil(a(n-3))]` with `a(0)=3, a(1)=2, a(2)=3, a(3)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A076510.P9219474782361427767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 3, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076510.P9219474782361427767

namespace A076510

/-- `∏[ceil(a(n-3))]` -/
def P9219474782361427767.Spec : Prop :=
  ∀ n, (P9219474782361427767.a n : ℤ) = A076510 (n + 1)

end A076510

/-! ## A076510.P8023463210787087371

`∏[round(a(n-3))]` with `a(0)=3, a(1)=2, a(2)=3, a(3)=4`

`round` is left out, it is the identity on integers.
-/

namespace A076510.P8023463210787087371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 3, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076510.P8023463210787087371

namespace A076510

/-- `∏[round(a(n-3))]` -/
def P8023463210787087371.Spec : Prop :=
  ∀ n, (P8023463210787087371.a n : ℤ) = A076510 (n + 1)

end A076510

/-! ## A076510.P16220107195512210660

`∑[A076509(n+1)]`
-/

namespace A076510.P16220107195512210660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076510.P16220107195512210660

namespace A076510

/-- `∑[A076509(n+1)]` -/
def P16220107195512210660.Spec : Prop :=
  ∀ n, P16220107195512210660.a n = A076510 (n + 1)

end A076510

/-! ## A076510.P5198492165730210596

`∏[4-A004277(n)%3]`
-/

namespace A076510.P5198492165730210596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - Int.tmod (A004277 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076510.P5198492165730210596

namespace A076510

/-- `∏[4-A004277(n)%3]` -/
def P5198492165730210596.Spec : Prop :=
  ∀ n, P5198492165730210596.a n = A076510 (n + 1)

end A076510

/-! ## A076510.P15821184772167265993

`∏[A173524(a(n-1)+1)]` with `a(0)=3, a(1)=2`
-/

namespace A076510.P15821184772167265993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  A173524 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076510.P15821184772167265993

namespace A076510

/-- `∏[A173524(a(n-1)+1)]` -/
def P15821184772167265993.Spec : Prop :=
  ∀ n, P15821184772167265993.a n = A076510 (n + 1)

end A076510

/-! ## A076510.P3426825136408709070

`∏[A000005(11-a(n-1))]` with `a(0)=3, a(1)=2`
-/

namespace A076510.P3426825136408709070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  A000005 (11 - f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076510.P3426825136408709070

namespace A076510

/-- `∏[A000005(11-a(n-1))]` -/
def P3426825136408709070.Spec : Prop :=
  ∀ n, P3426825136408709070.a n = A076510 (n + 1)

end A076510

/-! ## A076510.P16200393412711150663

`A076506(n+3)/4`
-/

namespace A076510.P16200393412711150663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076506 (n + 3) : ℚ) / 4

end

end A076510.P16200393412711150663

namespace A076510

/-- `A076506(n+3)/4` -/
def P16200393412711150663.Spec : Prop :=
  ∀ n, P16200393412711150663.a n = (A076510 (n + 1) : ℚ)

end A076510

/-! ## A076510.P18087654712025738448

`∏[A103881(A000217(n+1))-(2*n)%3+2]`
-/

namespace A076510.P18087654712025738448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000217 (n + 1)).toNat - ((2 * n % 3 : ℕ) : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076510.P18087654712025738448

namespace A076510

/-- `∏[A103881(A000217(n+1))-(2*n)%3+2]` -/
def P18087654712025738448.Spec : Prop :=
  ∀ n, P18087654712025738448.a n = A076510 (n + 1)

end A076510

/-!
# A076511: Numerator of cototient(n)/totient(n).

The programs for A076511, the canonical program `A076511.P7316728277018635984` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076511 has offset 1).

The definition of A076511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076511.P7316728277018635984

`A051953(n+1)/A009195(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A076511

/-- `A051953(n+1)/A009195(n+1)` -/
def P7316728277018635984.Spec : Prop :=
  ∀ n, P7316728277018635984.a n = (A076511 (n + 1) : ℚ)

end A076511

/-! ## A076511.P16371041559714915885

`A052106(n+1)/(n+1)`
-/

namespace A076511.P16371041559714915885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052106 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A076511.P16371041559714915885

namespace A076511

/-- `A052106(n+1)/(n+1)` -/
def P16371041559714915885.Spec : Prop :=
  ∀ n, P16371041559714915885.a n = (A076511 (n + 1) : ℚ)

end A076511

/-! ## A076511.P4015587909052277822

`lcm(1-A000010(n+1)+n, n+1)/(n+1)`
-/

namespace A076511.P4015587909052277822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (1 - A000010 (n + 1) + (n : ℤ)) (n + 1 : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A076511.P4015587909052277822

namespace A076511

/-- `lcm(1-A000010(n+1)+n, n+1)/(n+1)` -/
def P4015587909052277822.Spec : Prop :=
  ∀ n, P4015587909052277822.a n = (A076511 (n + 1) : ℚ)

end A076511

/-! ## A076511.P8765240320406190242

`A109395(n+1)-A076512(n+1)`
-/

namespace A076511.P8765240320406190242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (n + 1) - A076512 (n + 1)

end

end A076511.P8765240320406190242

namespace A076511

/-- `A109395(n+1)-A076512(n+1)` -/
def P8765240320406190242.Spec : Prop :=
  ∀ n, P8765240320406190242.a n = A076511 (n + 1)

end A076511

/-! ## A076511.P3492209640042604734

`A052100(n+1)/A009262(n+1)`
-/

namespace A076511.P3492209640042604734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052100 (n + 1) : ℚ) / (A009262 (n + 1) : ℚ)

end

end A076511.P3492209640042604734

namespace A076511

/-- `A052100(n+1)/A009262(n+1)` -/
def P3492209640042604734.Spec : Prop :=
  ∀ n, P3492209640042604734.a n = (A076511 (n + 1) : ℚ)

end A076511

/-! ## A076511.P12054688891637228669

`A075857(n+1)/A000010(n+1)`
-/

namespace A076511.P12054688891637228669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075857 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A076511.P12054688891637228669

namespace A076511

/-- `A075857(n+1)/A000010(n+1)` -/
def P12054688891637228669.Spec : Prop :=
  ∀ n, P12054688891637228669.a n = (A076511 (n + 1) : ℚ)

end A076511

/-! ## A076511.P9546261277582770044

`A107473(n+1)-2*A076512(n+1)`
-/

namespace A076511.P9546261277582770044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107473 (n + 1) - 2 * A076512 (n + 1)

end

end A076511.P9546261277582770044

namespace A076511

/-- `A107473(n+1)-2*A076512(n+1)` -/
def P9546261277582770044.Spec : Prop :=
  ∀ n, P9546261277582770044.a n = A076511 (n + 1)

end A076511

/-! ## A076511.P17107154900770247190

`2*A109395(n+1)-A107473(n+1)`
-/

namespace A076511.P17107154900770247190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109395 (n + 1) - A107473 (n + 1)

end

end A076511.P17107154900770247190

namespace A076511

/-- `2*A109395(n+1)-A107473(n+1)` -/
def P17107154900770247190.Spec : Prop :=
  ∀ n, P17107154900770247190.a n = A076511 (n + 1)

end A076511

/-! ## A076511.P15903210811617300270

`(n-A109606(n+1))/A009195(n+1)`
-/

namespace A076511.P15903210811617300270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A109606 (n + 1) : ℚ) / (A009195 (n + 1) : ℚ)

end

end A076511.P15903210811617300270

namespace A076511

/-- `(n-A109606(n+1))/A009195(n+1)` -/
def P15903210811617300270.Spec : Prop :=
  ∀ n, P15903210811617300270.a n = (A076511 (n + 1) : ℚ)

end A076511

/-! ## A076511.P2162538815493952412

`(n+1-A000010(n+1))/A009195(n+1)`
-/

namespace A076511.P2162538815493952412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A000010 (n + 1) : ℚ) / (A009195 (n + 1) : ℚ)

end

end A076511.P2162538815493952412

namespace A076511

/-- `(n+1-A000010(n+1))/A009195(n+1)` -/
def P2162538815493952412.Spec : Prop :=
  ∀ n, P2162538815493952412.a n = (A076511 (n + 1) : ℚ)

end A076511

/-! ## A076511.P13452665393025908548

`(A050399(n+1)-A009262(n+1))/(n+1)`
-/

namespace A076511.P13452665393025908548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050399 (n + 1) - A009262 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A076511.P13452665393025908548

namespace A076511

/-- `(A050399(n+1)-A009262(n+1))/(n+1)` -/
def P13452665393025908548.Spec : Prop :=
  ∀ n, P13452665393025908548.a n = (A076511 (n + 1) : ℚ)

end A076511

/-! ## A076511.P9173441020528953656

`A051953(n+1)/gcd(n+1, A000010(n+1))`
-/

namespace A076511.P9173441020528953656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A000010 (n + 1)) : ℚ)

end

end A076511.P9173441020528953656

namespace A076511

/-- `A051953(n+1)/gcd(n+1, A000010(n+1))` -/
def P9173441020528953656.Spec : Prop :=
  ∀ n, P9173441020528953656.a n = (A076511 (n + 1) : ℚ)

end A076511

/-! ## A076511.P17706689771076975149

`A075857(n+1)/(A002088(n+1)-A002088(n))`
-/

namespace A076511.P17706689771076975149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075857 (n + 1) : ℚ) / (A002088 (n + 1) - A002088 n : ℚ)

end

end A076511.P17706689771076975149

namespace A076511

/-- `A075857(n+1)/(A002088(n+1)-A002088(n))` -/
def P17706689771076975149.Spec : Prop :=
  ∀ n, P17706689771076975149.a n = (A076511 (n + 1) : ℚ)

end A076511

/-! ## A076511.P7644676291928969903

`A051953(n+1)/A000010(n+1)*A076512(n+1)`
-/

namespace A076511.P7644676291928969903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A076512 (n + 1) : ℚ)

end

end A076511.P7644676291928969903

namespace A076511

/-- `A051953(n+1)/A000010(n+1)*A076512(n+1)` -/
def P7644676291928969903.Spec : Prop :=
  ∀ n, P7644676291928969903.a n = (A076511 (n + 1) : ℚ)

end A076511

/-! ## A076511.P6665866919827595285

`A109395(n+1)/A007947(n+1)*A318305(n+1)`
-/

namespace A076511.P6665866919827595285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109395 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ) * (A318305 (n + 1) : ℚ)

end

end A076511.P6665866919827595285

namespace A076511

/-- `A109395(n+1)/A007947(n+1)*A318305(n+1)` -/
def P6665866919827595285.Spec : Prop :=
  ∀ n, P6665866919827595285.a n = (A076511 (n + 1) : ℚ)

end A076511

/-! ## A076511.P12927154278059138280

`A051953(n+1)/gcd(A000027(n+1), A051953(n+1))`
-/

namespace A076511.P12927154278059138280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 1) : ℚ) / (Int.gcd (A000027 (n + 1)) (A051953 (n + 1)) : ℚ)

end

end A076511.P12927154278059138280

namespace A076511

/-- `A051953(n+1)/gcd(A000027(n+1), A051953(n+1))` -/
def P12927154278059138280.Spec : Prop :=
  ∀ n, P12927154278059138280.a n = (A076511 (n + 1) : ℚ)

end A076511

/-! ## A076511.P15731656485753255591

`A051953(n+1)/A050399(n+1)*A109395(n+1)²`
-/

namespace A076511.P15731656485753255591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 1) : ℚ) / (A050399 (n + 1) : ℚ) * (A109395 (n + 1) ^ 2 : ℚ)

end

end A076511.P15731656485753255591

namespace A076511

/-- `A051953(n+1)/A050399(n+1)*A109395(n+1)²` -/
def P15731656485753255591.Spec : Prop :=
  ∀ n, P15731656485753255591.a n = (A076511 (n + 1) : ℚ)

end A076511

/-! ## A076511.P16212004451781892860

`A318305(n+1)/A007947(A007947(n+1)/A109395(n+1))`
-/

namespace A076511.P16212004451781892860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318305 (n + 1) : ℚ) / (A007947 (SequenceMachineLib.roundAway ((A007947 (n + 1) : ℚ) / (A109395 (n + 1) : ℚ))).toNat : ℚ)

end

end A076511.P16212004451781892860

namespace A076511

/-- `A318305(n+1)/A007947(A007947(n+1)/A109395(n+1))` -/
def P16212004451781892860.Spec : Prop :=
  ∀ n, P16212004451781892860.a n = (A076511 (n + 1) : ℚ)

end A076511

/-! ## A076511.P17770245641776816203

`A319700(2*(n+1))/A009195(n+1)`
-/

namespace A076511.P17770245641776816203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319700 (2 * (n + 1)) : ℚ) / (A009195 (n + 1) : ℚ)

end

end A076511.P17770245641776816203

namespace A076511

/-- `A319700(2*(n+1))/A009195(n+1)` -/
def P17770245641776816203.Spec : Prop :=
  ∀ n, P17770245641776816203.a n = (A076511 (n + 1) : ℚ)

end A076511

/-! ## A076511.P13054702162528709859

`A308121(A005728(n))`
-/

namespace A076511.P13054702162528709859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308121 (A005728 n).toNat

end

end A076511.P13054702162528709859

namespace A076511

/-- `A308121(A005728(n))` -/
def P13054702162528709859.Spec : Prop :=
  ∀ n, P13054702162528709859.a n = A076511 (n + 1)

end A076511

/-!
# A076512: Denominator of cototient(n)/totient(n).

The programs for A076512, the canonical program `A076512.P8858335873698659586` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076512 has offset 1).

The definition of A076512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076512.P8858335873698659586

`A000010(n+1)/A009195(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A076512

/-- `A000010(n+1)/A009195(n+1)` -/
def P8858335873698659586.Spec : Prop :=
  ∀ n, P8858335873698659586.a n = (A076512 (n + 1) : ℚ)

end A076512

/-! ## A076512.P11320873893906372384

`A294649(∏{p}[n+1, #])`
-/

namespace A076512.P11320873893906372384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294649 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A076512.P11320873893906372384

namespace A076512

/-- `A294649(∏{p}[n+1, #])` -/
def P11320873893906372384.Spec : Prop :=
  ∀ n, P11320873893906372384.a n = A076512 (n + 1)

end A076512

/-! ## A076512.P15716599889126990971

`A319676(∏{p}[n+1, #])`
-/

namespace A076512.P15716599889126990971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319676 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A076512.P15716599889126990971

namespace A076512

/-- `A319676(∏{p}[n+1, #])` -/
def P15716599889126990971.Spec : Prop :=
  ∀ n, P15716599889126990971.a n = A076512 (n + 1)

end A076512

/-! ## A076512.P4232743327187942992

`A009262(n+1)/(n+1)`
-/

namespace A076512.P4232743327187942992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009262 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A076512.P4232743327187942992

namespace A076512

/-- `A009262(n+1)/(n+1)` -/
def P4232743327187942992.Spec : Prop :=
  ∀ n, P4232743327187942992.a n = (A076512 (n + 1) : ℚ)

end A076512

/-! ## A076512.P11533841137420116752

`lcm(n+1, Δ[A005728(n)])/(n+1)`
-/

namespace A076512.P11533841137420116752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (f1 (n + 1) - f1 n) : ℚ) / (n + 1 : ℚ)

end

end A076512.P11533841137420116752

namespace A076512

/-- `lcm(n+1, Δ[A005728(n)])/(n+1)` -/
def P11533841137420116752.Spec : Prop :=
  ∀ n, P11533841137420116752.a n = (A076512 (n + 1) : ℚ)

end A076512

/-! ## A076512.P12017853020854450346

`A294649(A007947(n+1))`
-/

namespace A076512.P12017853020854450346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294649 (A007947 (n + 1)).toNat

end

end A076512.P12017853020854450346

namespace A076512

/-- `A294649(A007947(n+1))` -/
def P12017853020854450346.Spec : Prop :=
  ∀ n, P12017853020854450346.a n = A076512 (n + 1)

end A076512

/-! ## A076512.P7497906750839170403

`A225679(A322590(n+1))`
-/

namespace A076512.P7497906750839170403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225679 (A322590 (n + 1)).toNat

end

end A076512.P7497906750839170403

namespace A076512

/-- `A225679(A322590(n+1))` -/
def P7497906750839170403.Spec : Prop :=
  ∀ n, P7497906750839170403.a n = A076512 (n + 1)

end A076512

/-! ## A076512.P16070507026645696348

`A109395(n+1)-A076511(n+1)`
-/

namespace A076512.P16070507026645696348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (n + 1) - A076511 (n + 1)

end

end A076512.P16070507026645696348

namespace A076512

/-- `A109395(n+1)-A076511(n+1)` -/
def P16070507026645696348.Spec : Prop :=
  ∀ n, P16070507026645696348.a n = A076512 (n + 1)

end A076512

/-! ## A076512.P17506485135605939399

`A107473(n+1)-A109395(n+1)`
-/

namespace A076512.P17506485135605939399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107473 (n + 1) - A109395 (n + 1)

end

end A076512.P17506485135605939399

namespace A076512

/-- `A107473(n+1)-A109395(n+1)` -/
def P17506485135605939399.Spec : Prop :=
  ∀ n, P17506485135605939399.a n = A076512 (n + 1)

end A076512

/-! ## A076512.P1102464451832798429

`A294649(A064549(n+1)/(n+1))`
-/

namespace A076512.P1102464451832798429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294649 (SequenceMachineLib.roundAway ((A064549 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A076512.P1102464451832798429

namespace A076512

/-- `A294649(A064549(n+1)/(n+1))` -/
def P1102464451832798429.Spec : Prop :=
  ∀ n, P1102464451832798429.a n = A076512 (n + 1)

end A076512

/-! ## A076512.P12255539887568385252

`(A109606(n+1)+1)/A009195(n+1)`
-/

namespace A076512.P12255539887568385252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1 : ℚ) / (A009195 (n + 1) : ℚ)

end

end A076512.P12255539887568385252

namespace A076512

/-- `(A109606(n+1)+1)/A009195(n+1)` -/
def P12255539887568385252.Spec : Prop :=
  ∀ n, P12255539887568385252.a n = (A076512 (n + 1) : ℚ)

end A076512

/-! ## A076512.P15386591924383862371

`(A039649(n+1)-1)/A009195(n+1)`
-/

namespace A076512.P15386591924383862371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1 : ℚ) / (A009195 (n + 1) : ℚ)

end

end A076512.P15386591924383862371

namespace A076512

/-- `(A039649(n+1)-1)/A009195(n+1)` -/
def P15386591924383862371.Spec : Prop :=
  ∀ n, P15386591924383862371.a n = (A076512 (n + 1) : ℚ)

end A076512

/-! ## A076512.P4158772967899788305

`A000010(2*n+1-n)/gcd(n+1, A000010(n+1))`
-/

namespace A076512.P4158772967899788305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * n + 1 - n) : ℚ) / (Int.gcd (n + 1 : ℤ) (A000010 (n + 1)) : ℚ)

end

end A076512.P4158772967899788305

namespace A076512

/-- `A000010(2*n+1-n)/gcd(n+1, A000010(n+1))` -/
def P4158772967899788305.Spec : Prop :=
  ∀ n, P4158772967899788305.a n = (A076512 (n + 1) : ℚ)

end A076512

/-! ## A076512.P13530529692419969946

`(A002088(n+1)-A002088(n))/A009195(n+1)`
-/

namespace A076512.P13530529692419969946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 1) - A002088 n : ℚ) / (A009195 (n + 1) : ℚ)

end

end A076512.P13530529692419969946

namespace A076512

/-- `(A002088(n+1)-A002088(n))/A009195(n+1)` -/
def P13530529692419969946.Spec : Prop :=
  ∀ n, P13530529692419969946.a n = (A076512 (n + 1) : ℚ)

end A076512

/-! ## A076512.P8241885988077962365

`A000010(n+1)/gcd(A000010(n+1), A131738(n))`
-/

namespace A076512.P8241885988077962365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (Int.gcd (A000010 (n + 1)) (A131738 n) : ℚ)

end

end A076512.P8241885988077962365

namespace A076512

/-- `A000010(n+1)/gcd(A000010(n+1), A131738(n))` -/
def P8241885988077962365.Spec : Prop :=
  ∀ n, P8241885988077962365.a n = (A076512 (n + 1) : ℚ)

end A076512

/-! ## A076512.P8022017992413476902

`(A285709(n+1)+A285699(n+1))/A009195(n+1)`
-/

namespace A076512.P8022017992413476902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285709 (n + 1) + A285699 (n + 1) : ℚ) / (A009195 (n + 1) : ℚ)

end

end A076512.P8022017992413476902

namespace A076512

/-- `(A285709(n+1)+A285699(n+1))/A009195(n+1)` -/
def P8022017992413476902.Spec : Prop :=
  ∀ n, P8022017992413476902.a n = (A076512 (n + 1) : ℚ)

end A076512

/-! ## A076512.P15143927040022256665

`(A002618(n+1)-A062955(n+1))/A009195(n+1)`
-/

namespace A076512.P15143927040022256665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) - A062955 (n + 1) : ℚ) / (A009195 (n + 1) : ℚ)

end

end A076512.P15143927040022256665

namespace A076512

/-- `(A002618(n+1)-A062955(n+1))/A009195(n+1)` -/
def P15143927040022256665.Spec : Prop :=
  ∀ n, P15143927040022256665.a n = (A076512 (n + 1) : ℚ)

end A076512

/-! ## A076512.P10141622897654149787

`A109395(n+1)-A051953(n+1)/A009195(n+1)`
-/

namespace A076512.P10141622897654149787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109395 (n + 1) : ℚ) - (A051953 (n + 1) : ℚ) / (A009195 (n + 1) : ℚ)

end

end A076512.P10141622897654149787

namespace A076512

/-- `A109395(n+1)-A051953(n+1)/A009195(n+1)` -/
def P10141622897654149787.Spec : Prop :=
  ∀ n, P10141622897654149787.a n = (A076512 (n + 1) : ℚ)

end A076512

/-! ## A076512.P5857852022574402364

`A003557(n+1)/A009195(n+1)*A173557(n+1)`
-/

namespace A076512.P5857852022574402364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) : ℚ) / (A009195 (n + 1) : ℚ) * (A173557 (n + 1) : ℚ)

end

end A076512.P5857852022574402364

namespace A076512

/-- `A003557(n+1)/A009195(n+1)*A173557(n+1)` -/
def P5857852022574402364.Spec : Prop :=
  ∀ n, P5857852022574402364.a n = (A076512 (n + 1) : ℚ)

end A076512

/-! ## A076512.P2760246066272478608

`A109395(n+1)/A007947(n+1)*A173557(n+1)`
-/

namespace A076512.P2760246066272478608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109395 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ) * (A173557 (n + 1) : ℚ)

end

end A076512.P2760246066272478608

namespace A076512

/-- `A109395(n+1)/A007947(n+1)*A173557(n+1)` -/
def P2760246066272478608.Spec : Prop :=
  ∀ n, P2760246066272478608.a n = (A076512 (n + 1) : ℚ)

end A076512

/-!
# A076513: Numbers k such that 2 + 2^k + 3^k is prime.

The programs for A076513, there is no canonical definition to state claims against.
-/

/-! ## A076513.P6082732415306699999

`record[gcd(∑[n-1], A114411(n))]`
-/

namespace A076513.P6082732415306699999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f2 j) (A114411 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076513.P6082732415306699999

/-!
# A076515: Numbers k such that 1 + 3^k + 5^k is prime.

The programs for A076515, there is no canonical definition to state claims against.
-/

/-! ## A076515.P1238548350217505630

`A121578(A039674(n+1))`
-/

namespace A076515.P1238548350217505630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121578 (A039674 (n + 1)).toNat

end

end A076515.P1238548350217505630

/-! ## A076515.P10147974439072667023

`12*A001222(A078532(n))`
-/

namespace A076515.P10147974439072667023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A001222 (A078532 n).toNat

end

end A076515.P10147974439072667023

/-!
# A076516: Primes p such that (p-1) and the period length of 1/p are both squares.

The programs for A076516, there is no canonical definition to state claims against.
-/

/-! ## A076516.P15900917314626011804

`∩[A072858(n+2), n²+1]`
-/

namespace A076516.P15900917314626011804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072858 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A076516.P15900917314626011804

/-! ## A076516.P8264752465134543223

`∩[A053755(n), A072858(n+1)]`
-/

namespace A076516.P8264752465134543223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076516.P8264752465134543223

/-! ## A076516.P6533168363386323226

`∩[A168024(n), A072858(n+1)]`
-/

namespace A076516.P6533168363386323226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168024 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076516.P6533168363386323226

/-! ## A076516.P399435011650451791

`∩[A121326(n+1), A072858(n+1)]`
-/

namespace A076516.P399435011650451791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076516.P399435011650451791

/-! ## A076516.P16987457401422329563

`∩[A002496(n+1), A072858(n+2)]`
-/

namespace A076516.P16987457401422329563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072858 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076516.P16987457401422329563

/-! ## A076516.P13413167918294339176

`∩[A065528(n+1), A072858(n+1)]`
-/

namespace A076516.P13413167918294339176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076516.P13413167918294339176

/-!
# A076517: Partial sums of A060370 (cf. A006556).

The programs for A076517, there is no canonical definition to state claims against.
-/

/-! ## A076517.P15985048277783938584

`∑[A006556(n+4)]`
-/

namespace A076517.P15985048277783938584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006556 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076517.P15985048277783938584

/-! ## A076517.P4053560048304896266

`∑[A060370(n+4)]`
-/

namespace A076517.P4053560048304896266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076517.P4053560048304896266

/-! ## A076517.P15805004608186881090

`∑[A023142(A000040(n+4))-1]`
-/

namespace A076517.P15805004608186881090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023142 (A000040 (n + 4)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076517.P15805004608186881090

/-! ## A076517.P2144149559562576473

`∑[A023142(A008578(n+5))-1]`
-/

namespace A076517.P2144149559562576473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023142 (A008578 (n + 5)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076517.P2144149559562576473

/-!
# A076518: Numbers n such that Fibonacci(n) == sigma(n) (mod n).

The programs for A076518, there is no canonical definition to state claims against.
-/

/-! ## A076518.P9987208162079711197

`eq[A010134(n), A151934(A278648(n))]`
-/

namespace A076518.P9987208162079711197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010134 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 (A278648 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076518.P9987208162079711197

/-! ## A076518.P3007163840825077338

`record[A002034(n+1)*A330025(A066048(n+1))]`
-/

namespace A076518.P3007163840825077338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1) * A330025 (A066048 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076518.P3007163840825077338

/-! ## A076518.P615111072684144441

`eq[A040227(n), A160085(n)]`
-/

namespace A076518.P615111072684144441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040227 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160085 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076518.P615111072684144441

/-! ## A076518.P5865848877577226558

`eq[A040678(n), A160085(n)]`
-/

namespace A076518.P5865848877577226558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040678 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160085 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076518.P5865848877577226558

/-! ## A076518.P6529084885189143667

`record[A367580(A004526(3*(n+1))+n)]`
-/

namespace A076518.P6529084885189143667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367580 (A004526 (3 * (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076518.P6529084885189143667

/-!
# A076519: Numbers n such that Fibonacci(n) == prime(n) (mod n).

The programs for A076519, there is no canonical definition to state claims against.
-/

/-! ## A076519.P10635477054384271499

`eq[A002708(n+1), A004648(n+1)]+1`
-/

namespace A076519.P10635477054384271499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076519.P10635477054384271499

/-! ## A076519.P10748492925968675020

`eq[A110102(n+1), A116512(n+1)]`
-/

namespace A076519.P10748492925968675020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116512 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076519.P10748492925968675020

/-! ## A076519.P17485351701634198651

`∑[A077028(n)*A296188(A015128(n))]`
-/

namespace A076519.P17485351701634198651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n * A296188 (A015128 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076519.P17485351701634198651

/-!
# A076520: n appears once if n is the sum of 2 nonzero squares in 1 way, twice if n is the sum of 2 squares in 2 ways, 3 times if n is the sum of 2 squares 3 ways etc.

The programs for A076520, the canonical program `A076520.P2365901369714295993` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076520 has offset 1).

The definition of A076520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1862 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076520.P2365901369714295993

`comp[A237526(n)+n]-n`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A076520

/-- `comp[A237526(n)+n]-n` -/
def P2365901369714295993.Spec : Prop :=
  ∀ n, P2365901369714295993.a n = A076520 (n + 1)

theorem P2365901369714295993.correct : P2365901369714295993.Spec := by
  intro n
  simp only [A076520, Nat.add_sub_cancel]

end A076520

/-! ## A076520.P13712071431617624173

`comp[A063725(n)+a(n-1)+1]-n` with `a(0)=0`
-/

namespace A076520.P13712071431617624173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A063725 n + (f1 (n - 1) + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A076520.P13712071431617624173

namespace A076520

/-- `comp[A063725(n)+a(n-1)+1]-n` -/
def P13712071431617624173.Spec : Prop :=
  ∀ n, P13712071431617624173.a n = A076520 (n + 1)

end A076520

/-! ## A076520.P15335604539133431416

`A000404(∑[char[A237526(n)]])`
-/

namespace A076520.P15335604539133431416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237526 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076520.P15335604539133431416

namespace A076520

/-- `A000404(∑[char[A237526(n)]])` -/
def P15335604539133431416.Spec : Prop :=
  ∀ n, P15335604539133431416.a n = A076520 (n + 1)

end A076520

/-! ## A076520.P4167271206275549721

`A000404(round(sqrt(A185173(n+1))))`
-/

namespace A076520.P4167271206275549721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (SequenceMachineLib.roundAway (Real.sqrt (A185173 (n + 1) : ℝ))).toNat

end

end A076520.P4167271206275549721

namespace A076520

/-- `A000404(round(sqrt(A185173(n+1))))` -/
def P4167271206275549721.Spec : Prop :=
  ∀ n, P4167271206275549721.a n = A076520 (n + 1)

end A076520

/-! ## A076520.P1570168203336427613

`A000404(Δ[A130148(A064999(n))])`
-/

namespace A076520.P1570168203336427613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130148 (A064999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (f1 (n + 1) - f1 n).toNat

end

end A076520.P1570168203336427613

namespace A076520

/-- `A000404(Δ[A130148(A064999(n))])` -/
def P1570168203336427613.Spec : Prop :=
  ∀ n, P1570168203336427613.a n = A076520 (n + 1)

end A076520

/-!
# A076521: a(n) = floor( (n/2)*log_2(2*n/3) ).

The programs for A076521, the canonical program `A076521.P4967248313304446533` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076521 has offset 2).

The definition of A076521 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+2)/2*log2(2*(n+2)/3))` (program `A076521.P4967248313304446533`, by `A076521.P4967248313304446533.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076521.P4967248313304446533

`floor((n+2)/2*log2(2*(n+2)/3))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076521

/-- `floor((n+2)/2*log2(2*(n+2)/3))` -/
def P4967248313304446533.Spec : Prop :=
  ∀ n, P4967248313304446533.a n = A076521 (n + 2)

theorem P4967248313304446533.correct : P4967248313304446533.Spec := by
  intro n
  simp only [A076521, Nat.add_sub_cancel]

end A076521

/-! ## A076521.P14416302397951214634

`A002265(A000194(n^3))+n`
-/

namespace A076521.P14416302397951214634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A000194 (n ^ 3)).toNat + (n : ℤ)

end

end A076521.P14416302397951214634

namespace A076521

/-- `A002265(A000194(n^3))+n` -/
def P14416302397951214634.Spec : Prop :=
  ∀ n, P14416302397951214634.a n = A076521 (n + 2)

end A076521

/-! ## A076521.P14375915002684273742

`A394247(A353447(n+4))`
-/

namespace A076521.P14375915002684273742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394247 (A353447 (n + 4)).toNat

end

end A076521.P14375915002684273742

namespace A076521

/-- `A394247(A353447(n+4))` -/
def P14375915002684273742.Spec : Prop :=
  ∀ n, P14375915002684273742.a n = A076521 (n + 2)

end A076521

/-!
# A076522: a(n) = floor( n*log_2(4*n/3) ).

The programs for A076522, the canonical program `A076522.P8325656967563149502` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076522 has offset 1).

The definition of A076522 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*log2(4*(n+1)/3))` (program `A076522.P8325656967563149502`, by `A076522.P8325656967563149502.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076522.P8325656967563149502

`floor((n+1)*log2(4*(n+1)/3))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076522

/-- `floor((n+1)*log2(4*(n+1)/3))` -/
def P8325656967563149502.Spec : Prop :=
  ∀ n, P8325656967563149502.a n = A076522 (n + 1)

theorem P8325656967563149502.correct : P8325656967563149502.Spec := by
  intro n
  simp only [A076522, Nat.add_sub_cancel]

end A076522

/-! ## A076522.P3482936475246092

`A076521(2*(n+1))`
-/

namespace A076522.P3482936475246092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076521 (2 * (n + 1))

end

end A076522.P3482936475246092

namespace A076522

/-- `A076521(2*(n+1))` -/
def P3482936475246092.Spec : Prop :=
  ∀ n, P3482936475246092.a n = A076522 (n + 1)

end A076522

/-! ## A076522.P1143875118989230474

`A123578(n*A000093(2*n))`
-/

namespace A076522.P1143875118989230474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 ((n : ℤ) * A000093 (2 * n)).toNat

end

end A076522.P1143875118989230474

namespace A076522

/-- `A123578(n*A000093(2*n))` -/
def P1143875118989230474.Spec : Prop :=
  ∀ n, P1143875118989230474.a n = A076522 (n + 1)

end A076522

/-! ## A076522.P17714085244383590152

`A000194(A036488(2*n))`
-/

namespace A076522.P17714085244383590152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A036488 (2 * n)).toNat

end

end A076522.P17714085244383590152

namespace A076522

/-- `A000194(A036488(2*n))` -/
def P17714085244383590152.Spec : Prop :=
  ∀ n, P17714085244383590152.a n = A076522 (n + 1)

end A076522

/-!
# A076523: Maximal number of halving lines for 2n points in plane.

The programs for A076523, there is no canonical definition to state claims against.
-/

/-! ## A076523.P218313167019563220

`round(n^root(19, 7)+n+1)`
-/

namespace A076523.P218313167019563220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) ^ ((19 : ℝ) ^ (1 / (7 : ℝ))) + (n + 1 : ℝ))

end

end A076523.P218313167019563220

/-! ## A076523.P18281811188771625617

`floor((n+1)^atan(13)*atan(3))`
-/

namespace A076523.P18281811188771625617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ (Real.arctan (13 : ℝ)) * Real.arctan (3 : ℝ)⌋

end

end A076523.P18281811188771625617

/-! ## A076523.P10428086460114467411

`round((n^tanh(1))²)+1+n`
-/

namespace A076523.P10428086460114467411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) ^ (Real.tanh (1 : ℝ))) ^ 2) + 1 + (n : ℤ)

end

end A076523.P10428086460114467411

/-! ## A076523.P16570611565919050088

`∑[a(n-3)+1]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=3, a(4)=4, a(5)=5`
-/

namespace A076523.P16570611565919050088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 3, 4, 5] fun n f1 =>
  f1 (n - 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076523.P16570611565919050088

/-! ## A076523.P14133037923133356248

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0, a(4)=1, a(5)=1, a(6)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A076523.P14133037923133356248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 0, 1, 1, -1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076523.P14133037923133356248

/-!
# A076524: For each solution x>0 to 3*prime(n)+2*x = prime(n+2+x), the sequence lists prime(n) once.

The programs for A076524, there is no canonical definition to state claims against.
-/

/-! ## A076524.P9030001207516448420

`p?[A267528(n)-A326662(n+1)]`
-/

namespace A076524.P9030001207516448420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267528 n - A326662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076524.P9030001207516448420

/-! ## A076524.P4575579410695351008

`p?[∑[A307707(A173630(n))]]`
-/

namespace A076524.P4575579410695351008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (A173630 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076524.P4575579410695351008

/-! ## A076524.P5607892434130798073

`p?[A037037(∑[A098910(n+1)])]`
-/

namespace A076524.P5607892434130798073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098910 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037037 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076524.P5607892434130798073

/-!
# A076525: Numbers n such that sopf(n) = sopf(n+1) - sopf(n-1), where sopf(x) = sum of the distinct prime factors of x.

The programs for A076525, there is no canonical definition to state claims against.
-/

/-! ## A076525.P15493121538317384172

`A075565(n+1)-1`
-/

namespace A076525.P15493121538317384172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075565 (n + 1) - 1

end

end A076525.P15493121538317384172

/-! ## A076525.P4208532962857707525

`abs(A075565(n+1)+-A110873(n+1)%2)`
-/

namespace A076525.P4208532962857707525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075565 (n + 1) + Int.tmod (-A110873 (n + 1)) 2|

end

end A076525.P4208532962857707525

/-! ## A076525.P564019109732823379

`A326406(A094290(n+1))+A075565(n+1)`
-/

namespace A076525.P564019109732823379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326406 (A094290 (n + 1)).toNat + A075565 (n + 1)

end

end A076525.P564019109732823379

/-! ## A076525.P9919729027945293557

`A332814(A332812(n+1))+A075565(n+1)`
-/

namespace A076525.P9919729027945293557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332814 (A332812 (n + 1)).toNat + A075565 (n + 1)

end

end A076525.P9919729027945293557

/-! ## A076525.P13520291023308544166

`A346242(A151800(3*n))+A075565(n+1)`
-/

namespace A076525.P13520291023308544166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (A151800 (3 * n)).toNat + A075565 (n + 1)

end

end A076525.P13520291023308544166

/-! ## A076525.P13332398877578289470

`A121450(Δ[A159754(n+1)])+A075565(n+1)`
-/

namespace A076525.P13332398877578289470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121450 (f1 (n + 1) - f1 n).toNat + A075565 (n + 1)

end

end A076525.P13332398877578289470

/-! ## A076525.P10858891728001745037

`A326406(A087713(n+1))+A075565(n+1)`
-/

namespace A076525.P10858891728001745037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326406 (A087713 (n + 1)).toNat + A075565 (n + 1)

end

end A076525.P10858891728001745037

/-! ## A076525.P10947007173069903670

`A110514(A016813(n))+A075565(n+1)`
-/

namespace A076525.P10947007173069903670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A016813 n).toNat + A075565 (n + 1)

end

end A076525.P10947007173069903670

/-! ## A076525.P2538364620756269855

`A087960(A259755(n+1)/2)+A075565(n+1)`
-/

namespace A076525.P2538364620756269855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (SequenceMachineLib.roundAway ((A259755 (n + 1) : ℚ) / 2)).toNat + A075565 (n + 1)

end

end A076525.P2538364620756269855

/-! ## A076525.P12557215040218440810

`A110514(A004768(n))+A075565(n+1)`
-/

namespace A076525.P12557215040218440810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A004768 n).toNat + A075565 (n + 1)

end

end A076525.P12557215040218440810

/-! ## A076525.P13236769351332428474

`A087960(A259755(n+1)+1)+A075565(n+1)`
-/

namespace A076525.P13236769351332428474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A259755 (n + 1) + 1).toNat + A075565 (n + 1)

end

end A076525.P13236769351332428474

/-! ## A076525.P2107778001382749256

`A164807(A020639(2*(n+1)²))+A075565(n+1)`
-/

namespace A076525.P2107778001382749256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164807 (A020639 (2 * (n + 1) ^ 2)).toNat + A075565 (n + 1)

end

end A076525.P2107778001382749256

/-!
# A076526: a(n) = r * max(e_1, ..., e_r), where n = p_1^e_1 . .... p_r^e_r is the canonical prime factorization of n, a(1) = 0.

The programs for A076526, the canonical program `A076526.P164306316077260978` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076526 has offset 1).

The definition of A076526 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076526.P164306316077260978

`A001221(n+1)*A051903(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076526

/-- `A001221(n+1)*A051903(n+1)` -/
def P164306316077260978.Spec : Prop :=
  ∀ n, P164306316077260978.a n = A076526 (n + 1)

theorem P164306316077260978.correct : P164306316077260978.Spec := by
  intro n
  simp only [A076526, Nat.add_sub_cancel]

end A076526

/-! ## A076526.P16994844699664276166

`A335603(A071364(n+1))`
-/

namespace A076526.P16994844699664276166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335603 (A071364 (n + 1)).toNat

end

end A076526.P16994844699664276166

namespace A076526

/-- `A335603(A071364(n+1))` -/
def P16994844699664276166.Spec : Prop :=
  ∀ n, P16994844699664276166.a n = A076526 (n + 1)

end A076526

/-! ## A076526.P17683827632134246113

`A326846(A181819(n+1))`
-/

namespace A076526.P17683827632134246113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326846 (A181819 (n + 1)).toNat

end

end A076526.P17683827632134246113

namespace A076526

/-- `A326846(A181819(n+1))` -/
def P17683827632134246113.Spec : Prop :=
  ∀ n, P17683827632134246113.a n = A076526 (n + 1)

end A076526

/-! ## A076526.P5582610100820620201

`A326846(A238745(n+1))`
-/

namespace A076526.P5582610100820620201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326846 (A238745 (n + 1)).toNat

end

end A076526.P5582610100820620201

namespace A076526

/-- `A326846(A238745(n+1))` -/
def P5582610100820620201.Spec : Prop :=
  ∀ n, P5582610100820620201.a n = A076526 (n + 1)

end A076526

/-! ## A076526.P782965039859801031

`(A066301(n+1)+1)*A001221(n+1)`
-/

namespace A076526.P782965039859801031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A066301 (n + 1) + 1) * A001221 (n + 1)

end

end A076526.P782965039859801031

namespace A076526

/-- `(A066301(n+1)+1)*A001221(n+1)` -/
def P782965039859801031.Spec : Prop :=
  ∀ n, P782965039859801031.a n = A076526 (n + 1)

end A076526

/-! ## A076526.P13824860245754883589

`(A067132(n+1)-1)*A001221(n+1)`
-/

namespace A076526.P13824860245754883589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A067132 (n + 1) - 1) * A001221 (n + 1)

end

end A076526.P13824860245754883589

namespace A076526

/-- `(A067132(n+1)-1)*A001221(n+1)` -/
def P13824860245754883589.Spec : Prop :=
  ∀ n, P13824860245754883589.a n = A076526 (n + 1)

theorem P13824860245754883589.correct : P13824860245754883589.Spec := by
  intro n
  simp only [A076526, Nat.add_sub_cancel, A076526.P13824860245754883589.a, A076526.P164306316077260978.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A067132, A067132.P2149404699775634079.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076526

/-! ## A076526.P2289416880772241202

`(A083399(n+1)-1)*A051903(n+1)`
-/

namespace A076526.P2289416880772241202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083399 (n + 1) - 1) * A051903 (n + 1)

end

end A076526.P2289416880772241202

namespace A076526

/-- `(A083399(n+1)-1)*A051903(n+1)` -/
def P2289416880772241202.Spec : Prop :=
  ∀ n, P2289416880772241202.a n = A076526 (n + 1)

theorem P2289416880772241202.correct : P2289416880772241202.Spec := by
  intro n
  simp only [A076526, Nat.add_sub_cancel, A076526.P2289416880772241202.a, A076526.P164306316077260978.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A083399, A083399.P16148020281325742632.a, A000005, A000005.P16091521709108585461.a, A055212, A055212.P14412881054625885538.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A033273, A033273.P18420659424697249895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076526

/-! ## A076526.P14204012729328677251

`val(A046523(n+1), 2)*A001221(n+1)`
-/

namespace A076526.P14204012729328677251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A046523 (n + 1)).toNat 2 : ℤ) * A001221 (n + 1)

end

end A076526.P14204012729328677251

namespace A076526

/-- `val(A046523(n+1), 2)*A001221(n+1)` -/
def P14204012729328677251.Spec : Prop :=
  ∀ n, P14204012729328677251.a n = A076526 (n + 1)

end A076526

/-! ## A076526.P98089057064410635

`∑{p}[n+1, A001222(#)]*A051903(n+1)`
-/

namespace A076526.P98089057064410635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), A001222 p) * A051903 (n + 1)

end

end A076526.P98089057064410635

namespace A076526

/-- `∑{p}[n+1, A001222(#)]*A051903(n+1)` -/
def P98089057064410635.Spec : Prop :=
  ∀ n, P98089057064410635.a n = A076526 (n + 1)

end A076526

/-! ## A076526.P9912028736925066061

`A001222(∏{p}[n+1, #])*A051903(n+1)`
-/

namespace A076526.P9912028736925066061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) * A051903 (n + 1)

end

end A076526.P9912028736925066061

namespace A076526

/-- `A001222(∏{p}[n+1, #])*A051903(n+1)` -/
def P9912028736925066061.Spec : Prop :=
  ∀ n, P9912028736925066061.a n = A076526 (n + 1)

end A076526

/-! ## A076526.P6837006855824532318

`log2(A000005(∏{p}[n+1, #]))*A051903(n+1)`
-/

namespace A076526.P6837006855824532318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℝ) * (A051903 (n + 1) : ℝ)

end

end A076526.P6837006855824532318

namespace A076526

/-- `log2(A000005(∏{p}[n+1, #]))*A051903(n+1)` -/
def P6837006855824532318.Spec : Prop :=
  ∀ n, P6837006855824532318.a n = (A076526 (n + 1) : ℝ)

end A076526

/-! ## A076526.P5820696465361233817

`(A001222(n+1)-∑{e}[n+1, #-1])*A051903(n+1)`
-/

namespace A076526.P5820696465361233817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) - ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1)) * A051903 (n + 1)

end

end A076526.P5820696465361233817

namespace A076526

/-- `(A001222(n+1)-∑{e}[n+1, #-1])*A051903(n+1)` -/
def P5820696465361233817.Spec : Prop :=
  ∀ n, P5820696465361233817.a n = A076526 (n + 1)

end A076526

/-! ## A076526.P6528003376306818740

`A001221(n+1)*A007814(A046523(n+1))`
-/

namespace A076526.P6528003376306818740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A007814 (A046523 (n + 1)).toNat

end

end A076526.P6528003376306818740

namespace A076526

/-- `A001221(n+1)*A007814(A046523(n+1))` -/
def P6528003376306818740.Spec : Prop :=
  ∀ n, P6528003376306818740.a n = A076526 (n + 1)

end A076526

/-! ## A076526.P4577219302012552625

`A001222(A007947(n+1))*A051903(n+1)`
-/

namespace A076526.P4577219302012552625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat * A051903 (n + 1)

end

end A076526.P4577219302012552625

namespace A076526

/-- `A001222(A007947(n+1))*A051903(n+1)` -/
def P4577219302012552625.Spec : Prop :=
  ∀ n, P4577219302012552625.a n = A076526 (n + 1)

end A076526

/-! ## A076526.P1892391431328823549

`A051903(A034444(n+1))*A051903(n+1)`
-/

namespace A076526.P1892391431328823549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A034444 (n + 1)).toNat * A051903 (n + 1)

end

end A076526.P1892391431328823549

namespace A076526

/-- `A051903(A034444(n+1))*A051903(n+1)` -/
def P1892391431328823549.Spec : Prop :=
  ∀ n, P1892391431328823549.a n = A076526 (n + 1)

end A076526

/-! ## A076526.P14845340639464850380

`A001222(A181819(n+1))*A051903(n+1)`
-/

namespace A076526.P14845340639464850380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A181819 (n + 1)).toNat * A051903 (n + 1)

end

end A076526.P14845340639464850380

namespace A076526

/-- `A001222(A181819(n+1))*A051903(n+1)` -/
def P14845340639464850380.Spec : Prop :=
  ∀ n, P14845340639464850380.a n = A076526 (n + 1)

end A076526

/-! ## A076526.P14540432798770235092

`(A225230(n+1)+A051903(n+1))*A051903(n+1)`
-/

namespace A076526.P14540432798770235092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A225230 (n + 1) + A051903 (n + 1)) * A051903 (n + 1)

end

end A076526.P14540432798770235092

namespace A076526

/-- `(A225230(n+1)+A051903(n+1))*A051903(n+1)` -/
def P14540432798770235092.Spec : Prop :=
  ∀ n, P14540432798770235092.a n = A076526 (n + 1)

theorem P14540432798770235092.correct : P14540432798770235092.Spec := by
  intro n
  simp only [A076526, Nat.add_sub_cancel, A076526.P14540432798770235092.a, A076526.P164306316077260978.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A225230, A225230.P5717106397182085981.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076526

/-! ## A076526.P2885905965524906847

`(A001221(n+1)-A225230(n+1))*A001221(n+1)`
-/

namespace A076526.P2885905965524906847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 1) - A225230 (n + 1)) * A001221 (n + 1)

end

end A076526.P2885905965524906847

namespace A076526

/-- `(A001221(n+1)-A225230(n+1))*A001221(n+1)` -/
def P2885905965524906847.Spec : Prop :=
  ∀ n, P2885905965524906847.a n = A076526 (n + 1)

theorem P2885905965524906847.correct : P2885905965524906847.Spec := by
  intro n
  simp only [A076526, Nat.add_sub_cancel, A076526.P2885905965524906847.a, A076526.P164306316077260978.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A225230, A225230.P5717106397182085981.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076526

/-! ## A076526.P13555496324151786801

`(A000005(∏{p}[n+1, A000005(#)])-1)*A051903(n+1)`
-/

namespace A076526.P13555496324151786801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (∏ p ∈ Nat.primeFactors (f1 n), A000005 p).toNat - 1) * A051903 (n + 1)

end

end A076526.P13555496324151786801

namespace A076526

/-- `(A000005(∏{p}[n+1, A000005(#)])-1)*A051903(n+1)` -/
def P13555496324151786801.Spec : Prop :=
  ∀ n, P13555496324151786801.a n = A076526 (n + 1)

end A076526

/-! ## A076526.P12736403781359439124

`A001222(∏{e}[n+1, A000040(#+1)])*A051903(n+1)`
-/

namespace A076526.P12736403781359439124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p + 1)).toNat * A051903 (n + 1)

end

end A076526.P12736403781359439124

namespace A076526

/-- `A001222(∏{e}[n+1, A000040(#+1)])*A051903(n+1)` -/
def P12736403781359439124.Spec : Prop :=
  ∀ n, P12736403781359439124.a n = A076526 (n + 1)

end A076526

/-!
# A076528: Numbers n such that sigma(n) = sigma(n-1) - sigma(n-2).

The programs for A076528, there is no canonical definition to state claims against.
-/

/-! ## A076528.P15819455281119629955

`A073500(n+1)+1`
-/

namespace A076528.P15819455281119629955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073500 (n + 1) + 1

end

end A076528.P15819455281119629955

/-! ## A076528.P17024505945539212513

`or(1, A073500(1-A001489(n)))`
-/

namespace A076528.P17024505945539212513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A073500 (1 - A001489 n).toNat)

end

end A076528.P17024505945539212513

/-! ## A076528.P2747175944506145114

`or(1, A073500(A052938(2*n)))`
-/

namespace A076528.P2747175944506145114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A073500 (A052938 (2 * n)).toNat)

end

end A076528.P2747175944506145114

/-! ## A076528.P2258169978946888543

`xor(A033999(n)², A073500(1-A001489(n)))`
-/

namespace A076528.P2258169978946888543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 n ^ 2) (A073500 (1 - A001489 n).toNat)

end

end A076528.P2258169978946888543

/-! ## A076528.P418845435522841662

`2-(A007318(C(2, n))-A073500(1-A001489(n)))`
-/

namespace A076528.P418845435522841662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (Nat.choose 2 n) - A073500 (1 - A001489 n).toNat)

end

end A076528.P418845435522841662

/-! ## A076528.P734041299760140175

`A005408(n)-(2*n-A073500(1-A001489(n)))`
-/

namespace A076528.P734041299760140175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - A073500 (1 - A001489 n).toNat)

end

end A076528.P734041299760140175

/-! ## A076528.P6017434204122116658

`1-(A008683(12*comp[5*n])-A073500(1-A001489(n)))`
-/

namespace A076528.P6017434204122116658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A008683 (12 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A073500 (1 - A001489 n).toNat)

end

end A076528.P6017434204122116658

/-!
# A076529: Numbers k for which phi(k) = phi(k+1) - phi(k-1).

The programs for A076529, there is no canonical definition to state claims against.
-/

/-! ## A076529.P8561344919652915509

`A229552(n+1)+1`
-/

namespace A076529.P8561344919652915509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229552 (n + 1) + 1

end

end A076529.P8561344919652915509

/-! ## A076529.P8919423118433061351

`A065557(1+n)-1`
-/

namespace A076529.P8919423118433061351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065557 (1 + n) - 1

end

end A076529.P8919423118433061351

/-! ## A076529.P17646879407935618188

`xor(1, A065557(n+1))`
-/

namespace A076529.P17646879407935618188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A065557 (n + 1))

end

end A076529.P17646879407935618188

/-! ## A076529.P8666167362074111044

`A082551(2*n+1)+A065557(n+1)`
-/

namespace A076529.P8666167362074111044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (2 * n + 1) + A065557 (n + 1)

end

end A076529.P8666167362074111044

/-! ## A076529.P7959821982798031500

`(A065557(n+1)+-A000040(n+2)%2)/gcd(n, n+1)`
-/

namespace A076529.P7959821982798031500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065557 (n + 1) + Int.tmod (-A000040 (n + 2)) 2 : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A076529.P7959821982798031500

/-! ## A076529.P17784448673096265397

`and(A007427(A000040(n+1)), A065557(n+1))`
-/

namespace A076529.P17784448673096265397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007427 (A000040 (n + 1)).toNat) (A065557 (n + 1))

end

end A076529.P17784448673096265397

/-!
# A076530: Numbers n such that sigma(n) = sigma(n+1) - sigma(n-1).

The programs for A076530, there is no canonical definition to state claims against.
-/

/-! ## A076530.P1144028837341799265

`A104149(n+1)+1`
-/

namespace A076530.P1144028837341799265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104149 (n + 1) + 1

end

end A076530.P1144028837341799265

/-! ## A076530.P5984720953751453219

`A065900(n+1)-1`
-/

namespace A076530.P5984720953751453219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065900 (n + 1) - 1

end

end A076530.P5984720953751453219

/-! ## A076530.P16217354913333424189

`A134824(n+2)+A065900(n+1)`
-/

namespace A076530.P16217354913333424189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A065900 (n + 1)

end

end A076530.P16217354913333424189

/-! ## A076530.P5372630487081350527

`A153881(n+2)+A065900(n+1)`
-/

namespace A076530.P5372630487081350527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A065900 (n + 1)

end

end A076530.P5372630487081350527

/-! ## A076530.P4219782079859111738

`A260196(n+2)+A065900(n+1)`
-/

namespace A076530.P4219782079859111738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A065900 (n + 1)

end

end A076530.P4219782079859111738

/-! ## A076530.P16936956196558842457

`abs(A065900(n+1)+A057428(n+1))`
-/

namespace A076530.P16936956196558842457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065900 (n + 1) + A057428 (n + 1)|

end

end A076530.P16936956196558842457

/-! ## A076530.P11923026467714821343

`A106400(A001316(n))+A065900(n+1)`
-/

namespace A076530.P11923026467714821343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A001316 n).toNat + A065900 (n + 1)

end

end A076530.P11923026467714821343

/-! ## A076530.P8051359035183524916

`A133574(A059268(n))+A065900(n+1)`
-/

namespace A076530.P8051359035183524916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133574 (A059268 n).toNat + A065900 (n + 1)

end

end A076530.P8051359035183524916

/-! ## A076530.P10566964327913528999

`A209615(A017557(n))+A065900(n+1)`
-/

namespace A076530.P10566964327913528999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (A017557 n).toNat + A065900 (n + 1)

end

end A076530.P10566964327913528999

/-! ## A076530.P7955198350887760566

`A082551(A006530(n+1))+A065900(n+1)`
-/

namespace A076530.P7955198350887760566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (A006530 (n + 1)).toNat + A065900 (n + 1)

end

end A076530.P7955198350887760566

/-! ## A076530.P464917606077139128

`A107393(A036960(n+1))+A065900(n+1)`
-/

namespace A076530.P464917606077139128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A036960 (n + 1)).toNat + A065900 (n + 1)

end

end A076530.P464917606077139128

/-! ## A076530.P14580699719413757263

`A107393(A049569(n+1))+A065900(n+1)`
-/

namespace A076530.P14580699719413757263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A049569 (n + 1)).toNat + A065900 (n + 1)

end

end A076530.P14580699719413757263

/-! ## A076530.P13935528460192612329

`A092673(A076566(n+1))+A065900(n+1)`
-/

namespace A076530.P13935528460192612329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (A076566 (n + 1)).toNat + A065900 (n + 1)

end

end A076530.P13935528460192612329

/-! ## A076530.P4816951065453384974

`A107393(A065722(n+1))+A065900(n+1)`
-/

namespace A076530.P4816951065453384974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A065722 (n + 1)).toNat + A065900 (n + 1)

end

end A076530.P4816951065453384974

/-! ## A076530.P10275532851891565147

`A157658(A046388(n+1))+A065900(n+1)`
-/

namespace A076530.P10275532851891565147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (A046388 (n + 1)).toNat + A065900 (n + 1)

end

end A076530.P10275532851891565147

/-! ## A076530.P6340814039449489509

`A157658(A128907(n+1))+A065900(n+1)`
-/

namespace A076530.P6340814039449489509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (A128907 (n + 1)).toNat + A065900 (n + 1)

end

end A076530.P6340814039449489509

/-! ## A076530.P8174492737611703596

`A107393(record[A006530(n+2)])+A065900(n+1)`
-/

namespace A076530.P8174492737611703596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A065900 (n + 1)

end

end A076530.P8174492737611703596

/-! ## A076530.P2673022718852070414

`A227985(A020639(2*(n+1)))+A065900(n+1)`
-/

namespace A076530.P2673022718852070414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227985 (A020639 (2 * (n + 1))).toNat + A065900 (n + 1)

end

end A076530.P2673022718852070414

/-! ## A076530.P15766613563745305598

`A087003(A020639(10*n+5))+A065900(n+1)`
-/

namespace A076530.P15766613563745305598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (A020639 (10 * n + 5)).toNat + A065900 (n + 1)

end

end A076530.P15766613563745305598

/-!
# A076533: Numbers n such that sum of the distinct prime factors of phi(n) = sum of the distinct prime factors of sigma(n).

The programs for A076533, there is no canonical definition to state claims against.
-/

/-! ## A076533.P1494502689350302028

`∪[A081377(n+1), A081378(n+1)]`
-/

namespace A076533.P1494502689350302028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076533.P1494502689350302028

/-! ## A076533.P7723909179838218555

`A081377(A077168(n))`
-/

namespace A076533.P7723909179838218555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081377 (A077168 n).toNat

end

end A076533.P7723909179838218555

/-! ## A076533.P12557933376189472144

`A081377(A008908(2^n))`
-/

namespace A076533.P12557933376189472144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081377 (A008908 (2 ^ n)).toNat

end

end A076533.P12557933376189472144

/-! ## A076533.P16050286032436336017

`A081377(A061775(2^n))`
-/

namespace A076533.P16050286032436336017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081377 (A061775 (2 ^ n)).toNat

end

end A076533.P16050286032436336017

/-! ## A076533.P1280288411762881900

`A081377(A070939(2^n))`
-/

namespace A076533.P1280288411762881900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081377 (A070939 (2 ^ n)).toNat

end

end A076533.P1280288411762881900

/-!
# A076534: Let P(n,x) be defined by P(1,x)=P(2,x)=x, P(n,x)=P(n-1,x)*P(n-2,x)+1; then a(n) is the maximum element among coefficients of P(n,x) of degree F(n) (where F(n) denotes the n-th Fibonacci number).

The programs for A076534, there is no canonical definition to state claims against.
-/

/-! ## A076534.P12076298470066984096

`A156144(A056441(n+2))`
-/

namespace A076534.P12076298470066984096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156144 (A056441 (n + 2)).toNat

end

end A076534.P12076298470066984096

/-! ## A076534.P4082504308935013201

`gcd(A002014(n)!, A239749(n))`
-/

namespace A076534.P4082504308935013201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A002014 n).toNat : ℤ) (A239749 n)

end

end A076534.P4082504308935013201

/-! ## A076534.P11385486890927229404

`A253887(A253853(abs(3-2*n)))`
-/

namespace A076534.P11385486890927229404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253887 (A253853 |3 - (2 * n : ℤ)|.toNat).toNat

end

end A076534.P11385486890927229404

/-! ## A076534.P6509947924607729671

`A134527(A090867(A297880(n)+n))`
-/

namespace A076534.P6509947924607729671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134527 (A090867 (A297880 n + (n : ℤ)).toNat).toNat

end

end A076534.P6509947924607729671

/-!
# A076535: a(n) = A064405 (2^m+n) - 2^m (for m large enough this difference appears to be constant).

The programs for A076535, the canonical program `A076535.P14204201055404177065` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076535 has offset 0).

The definition of A076535 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076535.P14204201055404177065

`n+1-4*A001316(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076535

/-- `n+1-4*A001316(n)` -/
def P14204201055404177065.Spec : Prop :=
  ∀ n, P14204201055404177065.a n = A076535 n

theorem P14204201055404177065.correct : P14204201055404177065.Spec := by
  intro n
  simp only [A076535]

end A076535

/-! ## A076535.P11641459529337095410

`2*A064405(n)-(n+1)`
-/

namespace A076535.P11641459529337095410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064405 n - (n + 1 : ℤ)

end

end A076535.P11641459529337095410

namespace A076535

/-- `2*A064405(n)-(n+1)` -/
def P11641459529337095410.Spec : Prop :=
  ∀ n, P11641459529337095410.a n = A076535 n

end A076535

/-! ## A076535.P18100086781499711283

`n+1-2*A117973(n)`
-/

namespace A076535.P18100086781499711283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A117973 n

end

end A076535.P18100086781499711283

namespace A076535

/-- `n+1-2*A117973(n)` -/
def P18100086781499711283.Spec : Prop :=
  ∀ n, P18100086781499711283.a n = A076535 n

theorem P18100086781499711283.correct : P18100086781499711283.Spec := by
  intro n
  simp only [A076535, Nat.add_sub_cancel, A076535.P18100086781499711283.a, A076535.P14204201055404177065.a, A001316, A001316.P6850078358198232129.a, A117973, A117973.P11230116199213534894.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A076535

/-! ## A076535.P7723949243565868701

`n+1-Δ[4*A006046(n)]`
-/

namespace A076535.P7723949243565868701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A076535.P7723949243565868701

namespace A076535

/-- `n+1-Δ[4*A006046(n)]` -/
def P7723949243565868701.Spec : Prop :=
  ∀ n, P7723949243565868701.a n = A076535 n

end A076535

/-! ## A076535.P6550994105895687420

`n+1-A001316(record[xor(3, n)])`
-/

namespace A076535.P6550994105895687420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001316 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A076535.P6550994105895687420

namespace A076535

/-- `n+1-A001316(record[xor(3, n)])` -/
def P6550994105895687420.Spec : Prop :=
  ∀ n, P6550994105895687420.a n = A076535 n

end A076535

/-! ## A076535.P7370257131834428697

`n+1-A001316(eq[n, or(6, n)])`
-/

namespace A076535.P7370257131834428697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001316 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A076535.P7370257131834428697

namespace A076535

/-- `n+1-A001316(eq[n, or(6, n)])` -/
def P7370257131834428697.Spec : Prop :=
  ∀ n, P7370257131834428697.a n = A076535 n

end A076535

/-! ## A076535.P16588450734914881040

`n-A004767(A038573(n))`
-/

namespace A076535.P16588450734914881040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004767 (A038573 n).toNat

end

end A076535.P16588450734914881040

namespace A076535

/-- `n-A004767(A038573(n))` -/
def P16588450734914881040.Spec : Prop :=
  ∀ n, P16588450734914881040.a n = A076535 n

end A076535

/-! ## A076535.P9868479623752503627

`n-A120738(A001316(n))`
-/

namespace A076535.P9868479623752503627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A120738 (A001316 n).toNat

end

end A076535.P9868479623752503627

namespace A076535

/-- `n-A120738(A001316(n))` -/
def P9868479623752503627.Spec : Prop :=
  ∀ n, P9868479623752503627.a n = A076535 n

end A076535

/-! ## A076535.P11816324756665793026

`A064405(n)-A117973(n)`
-/

namespace A076535.P11816324756665793026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064405 n - A117973 n

end

end A076535.P11816324756665793026

namespace A076535

/-- `A064405(n)-A117973(n)` -/
def P11816324756665793026.Spec : Prop :=
  ∀ n, P11816324756665793026.a n = A076535 n

end A076535

/-! ## A076535.P17900590963933879138

`A048967(n)-A160713(n)`
-/

namespace A076535.P17900590963933879138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 n - A160713 n

end

end A076535.P17900590963933879138

namespace A076535

/-- `A048967(n)-A160713(n)` -/
def P17900590963933879138.Spec : Prop :=
  ∀ n, P17900590963933879138.a n = A076535 n

end A076535

/-! ## A076535.P14082204836579126662

`1-A001316(A004767(n))+n`
-/

namespace A076535.P14082204836579126662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001316 (A004767 n).toNat + (n : ℤ)

end

end A076535.P14082204836579126662

namespace A076535

/-- `1-A001316(A004767(n))+n` -/
def P14082204836579126662.Spec : Prop :=
  ∀ n, P14082204836579126662.a n = A076535 n

end A076535

/-! ## A076535.P94949352478611876

`n-A126646(A000120(n)+1)`
-/

namespace A076535.P94949352478611876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A126646 (A000120 n + 1).toNat

end

end A076535.P94949352478611876

namespace A076535

/-- `n-A126646(A000120(n)+1)` -/
def P94949352478611876.Spec : Prop :=
  ∀ n, P94949352478611876.a n = A076535 n

end A076535

/-! ## A076535.P4725046584076908528

`n-A000225(A000120(n)+2)`
-/

namespace A076535.P4725046584076908528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000225 (A000120 n + 2).toNat

end

end A076535.P4725046584076908528

namespace A076535

/-- `n-A000225(A000120(n)+2)` -/
def P4725046584076908528.Spec : Prop :=
  ∀ n, P4725046584076908528.a n = A076535 n

end A076535

/-! ## A076535.P10760039413065178481

`n-A004767(A001316(n)-1)`
-/

namespace A076535.P10760039413065178481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004767 (A001316 n - 1).toNat

end

end A076535.P10760039413065178481

namespace A076535

/-- `n-A004767(A001316(n)-1)` -/
def P10760039413065178481.Spec : Prop :=
  ∀ n, P10760039413065178481.a n = A076535 n

end A076535

/-! ## A076535.P1705022385581748491

`n-A255047(A000120(n)+2)`
-/

namespace A076535.P1705022385581748491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A255047 (A000120 n + 2).toNat

end

end A076535.P1705022385581748491

namespace A076535

/-- `n-A255047(A000120(n)+2)` -/
def P1705022385581748491.Spec : Prop :=
  ∀ n, P1705022385581748491.a n = A076535 n

end A076535

/-! ## A076535.P8886466037173111039

`n-A000203(2*A001316(n))`
-/

namespace A076535.P8886466037173111039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000203 (2 * A001316 n).toNat

end

end A076535.P8886466037173111039

namespace A076535

/-- `n-A000203(2*A001316(n))` -/
def P8886466037173111039.Spec : Prop :=
  ∀ n, P8886466037173111039.a n = A076535 n

end A076535

/-! ## A076535.P193969236191186867

`n-A005187(2*A001316(n))`
-/

namespace A076535.P193969236191186867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005187 (2 * A001316 n).toNat

end

end A076535.P193969236191186867

namespace A076535

/-- `n-A005187(2*A001316(n))` -/
def P193969236191186867.Spec : Prop :=
  ∀ n, P193969236191186867.a n = A076535 n

end A076535

/-! ## A076535.P12040793350668010759

`n-A345401(A060632(2*n))`
-/

namespace A076535.P12040793350668010759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A345401 (A060632 (2 * n)).toNat

end

end A076535.P12040793350668010759

namespace A076535

/-- `n-A345401(A060632(2*n))` -/
def P12040793350668010759.Spec : Prop :=
  ∀ n, P12040793350668010759.a n = A076535 n

end A076535

/-! ## A076535.P14270390012588615393

`n-A000203(A001316(Δ[n²]))`
-/

namespace A076535.P14270390012588615393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000203 (A001316 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A076535.P14270390012588615393

namespace A076535

/-- `n-A000203(A001316(Δ[n²]))` -/
def P14270390012588615393.Spec : Prop :=
  ∀ n, P14270390012588615393.a n = A076535 n

end A076535

/-! ## A076535.P6444261827187770734

`n-A000203(2*sqrt(A102376(n)))`
-/

namespace A076535.P6444261827187770734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000203 (SequenceMachineLib.roundAway (2 * Real.sqrt (A102376 n : ℝ))).toNat

end

end A076535.P6444261827187770734

namespace A076535

/-- `n-A000203(2*sqrt(A102376(n)))` -/
def P6444261827187770734.Spec : Prop :=
  ∀ n, P6444261827187770734.a n = A076535 n

end A076535

/-!
# A076536: Image of n at the third step in the 3x+1 Problem: syr(3,n).

The programs for A076536, the canonical program `A076536.P12036762961433065870` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076536 has offset 1).

The definition of A076536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6665 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076536.P12036762961433065870

`A006370(A075884(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076536

/-- `A006370(A075884(n+1))` -/
def P12036762961433065870.Spec : Prop :=
  ∀ n, P12036762961433065870.a n = A076536 (n + 1)

theorem P12036762961433065870.correct : P12036762961433065870.Spec := by
  intro n
  simp only [A076536, Nat.add_sub_cancel]

end A076536

/-! ## A076536.P2140109517304465601

`A075884(A075884(2*(n+1)))`
-/

namespace A076536.P2140109517304465601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075884 (A075884 (2 * (n + 1))).toNat

end

end A076536.P2140109517304465601

namespace A076536

/-- `A075884(A075884(2*(n+1)))` -/
def P2140109517304465601.Spec : Prop :=
  ∀ n, P2140109517304465601.a n = A076536 (n + 1)

end A076536

/-! ## A076536.P6274909712184173432

`A075884(A006370(-xor(n, -1)))`
-/

namespace A076536.P6274909712184173432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075884 (A006370 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A076536.P6274909712184173432

namespace A076536

/-- `A075884(A006370(-xor(n, -1)))` -/
def P6274909712184173432.Spec : Prop :=
  ∀ n, P6274909712184173432.a n = A076536 (n + 1)

end A076536

/-! ## A076536.P18240272808943818710

`A075884(A075884(n+1)+A075884(n+1))`
-/

namespace A076536.P18240272808943818710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075884 (A075884 (n + 1) + A075884 (n + 1)).toNat

end

end A076536.P18240272808943818710

namespace A076536

/-- `A075884(A075884(n+1)+A075884(n+1))` -/
def P18240272808943818710.Spec : Prop :=
  ∀ n, P18240272808943818710.a n = A076536 (n + 1)

end A076536

/-! ## A076536.P1376015830924353115

`A006370(A006370(A006370(n+1)))`
-/

namespace A076536.P1376015830924353115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A006370 (A006370 (n + 1)).toNat).toNat

end

end A076536.P1376015830924353115

namespace A076536

/-- `A006370(A006370(A006370(n+1)))` -/
def P1376015830924353115.Spec : Prop :=
  ∀ n, P1376015830924353115.a n = A076536 (n + 1)

end A076536

/-! ## A076536.P18385535644188183414

`A288251(A034856(n+2))`
-/

namespace A076536.P18385535644188183414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288251 (A034856 (n + 2)).toNat

end

end A076536.P18385535644188183414

namespace A076536

/-- `A288251(A034856(n+2))` -/
def P18385535644188183414.Spec : Prop :=
  ∀ n, P18385535644188183414.a n = A076536 (n + 1)

end A076536

/-! ## A076536.P4465647663190088779

`A347270(A167614(n+2)+1)`
-/

namespace A076536.P4465647663190088779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347270 (A167614 (n + 2) + 1).toNat

end

end A076536.P4465647663190088779

namespace A076536

/-- `A347270(A167614(n+2)+1)` -/
def P4465647663190088779.Spec : Prop :=
  ∀ n, P4465647663190088779.a n = A076536 (n + 1)

end A076536

/-!
# A076537: Map positive rational numbers to positive integers by diagonal method using c(p,q) = (p + q - 2) * (p + q - 1) / 2 + p where p and q are positive integers. a(n) is an increasing sequence including all c(p,q) where gcd(p,q) > 1.

The programs for A076537, the canonical program `A076537.P12288578895659982277` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076537 has offset 1).

The definition of A076537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076537.P12288578895659982277

`eq[0, A300294(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076537

/-- `eq[0, A300294(n+1)]` -/
def P12288578895659982277.Spec : Prop :=
  ∀ n, (P12288578895659982277.a n : ℤ) = A076537 (n + 1)

theorem P12288578895659982277.correct : P12288578895659982277.Spec := by
  intro n
  simp only [A076537, Nat.add_sub_cancel]

end A076537

/-! ## A076537.P13725988200118019470

`eq[0, A054431(n+1)]+1`
-/

namespace A076537.P13725988200118019470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054431 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076537.P13725988200118019470

namespace A076537

/-- `eq[0, A054431(n+1)]+1` -/
def P13725988200118019470.Spec : Prop :=
  ∀ n, (P13725988200118019470.a n : ℤ) = A076537 (n + 1)

end A076537

/-! ## A076537.P3886485097737591155

`eq[0, A102057(n+1)]+1`
-/

namespace A076537.P3886485097737591155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102057 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076537.P3886485097737591155

namespace A076537

/-- `eq[0, A102057(n+1)]+1` -/
def P3886485097737591155.Spec : Prop :=
  ∀ n, (P3886485097737591155.a n : ℤ) = A076537 (n + 1)

end A076537

/-! ## A076537.P10507371770915493184

`eq[0, A162922(n+1)]+1`
-/

namespace A076537.P10507371770915493184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162922 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076537.P10507371770915493184

namespace A076537

/-- `eq[0, A162922(n+1)]+1` -/
def P10507371770915493184.Spec : Prop :=
  ∀ n, (P10507371770915493184.a n : ℤ) = A076537 (n + 1)

end A076537

/-! ## A076537.P7739392321747666939

`lt[1, A003989(n+1)]+1`
-/

namespace A076537.P7739392321747666939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A076537.P7739392321747666939

namespace A076537

/-- `lt[1, A003989(n+1)]+1` -/
def P7739392321747666939.Spec : Prop :=
  ∀ n, (P7739392321747666939.a n : ℤ) = A076537 (n + 1)

end A076537

/-! ## A076537.P7038712025357296493

`lt[A289905(n+1), 0]+1`
-/

namespace A076537.P7038712025357296493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289905 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A076537.P7038712025357296493

namespace A076537

/-- `lt[A289905(n+1), 0]+1` -/
def P7038712025357296493.Spec : Prop :=
  ∀ n, (P7038712025357296493.a n : ℤ) = A076537 (n + 1)

end A076537

/-! ## A076537.P6533740636660096779

`lt[1, A287957(n+1)]+1`
-/

namespace A076537.P6533740636660096779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287957 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A076537.P6533740636660096779

namespace A076537

/-- `lt[1, A287957(n+1)]+1` -/
def P6533740636660096779.Spec : Prop :=
  ∀ n, (P6533740636660096779.a n : ℤ) = A076537 (n + 1)

end A076537

/-! ## A076537.P15657606079630520402

`lt[1, A184097(n+1)]+1`
-/

namespace A076537.P15657606079630520402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184097 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A076537.P15657606079630520402

namespace A076537

/-- `lt[1, A184097(n+1)]+1` -/
def P15657606079630520402.Spec : Prop :=
  ∀ n, (P15657606079630520402.a n : ℤ) = A076537 (n + 1)

end A076537

/-! ## A076537.P9235425252929527070

`eq[0, A054425(n+1)]+1`
-/

namespace A076537.P9235425252929527070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054425 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076537.P9235425252929527070

namespace A076537

/-- `eq[0, A054425(n+1)]+1` -/
def P9235425252929527070.Spec : Prop :=
  ∀ n, (P9235425252929527070.a n : ℤ) = A076537 (n + 1)

end A076537

/-! ## A076537.P9028961243980054530

`lt[3, A184099(n+1)]+1`
-/

namespace A076537.P9028961243980054530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184099 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A076537.P9028961243980054530

namespace A076537

/-- `lt[3, A184099(n+1)]+1` -/
def P9028961243980054530.Spec : Prop :=
  ∀ n, (P9028961243980054530.a n : ℤ) = A076537 (n + 1)

end A076537

/-!
# A076538: Numerators a(n) of fractions slowly converging to e: let a(1) = 0, b(n) = n - a(n); if (a(n) + 1) / b(n) < e then a(n+1) = a(n) + 1, else a(n+1)= a(n).

The programs for A076538, the canonical program `A076538.P9984315147769689660` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076538 has offset 1).

The definition of A076538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076538.P9984315147769689660

`floor(19*(n+1)/26)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076538

/-- `floor(19*(n+1)/26)` -/
def P9984315147769689660.Spec : Prop :=
  ∀ n, P9984315147769689660.a n = A076538 (n + 1)

theorem P9984315147769689660.correct : P9984315147769689660.Spec := by
  intro n
  simp only [A076538, Nat.add_sub_cancel]

end A076538

/-! ## A076538.P6584767007796993972

`∑[dr(Δ[floor(19*n/26)])]`
-/

namespace A076538.P6584767007796993972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊19 * ((n : ℚ) / 26)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076538.P6584767007796993972

namespace A076538

/-- `∑[dr(Δ[floor(19*n/26)])]` -/
def P6584767007796993972.Spec : Prop :=
  ∀ n, (P6584767007796993972.a n : ℤ) = A076538 (n + 1)

end A076538

/-! ## A076538.P11297842423815028156

`∑[Δ[floor(19*n/26)]%2]`
-/

namespace A076538.P11297842423815028156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊19 * ((n : ℚ) / 26)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076538.P11297842423815028156

namespace A076538

/-- `∑[Δ[floor(19*n/26)]%2]` -/
def P11297842423815028156.Spec : Prop :=
  ∀ n, P11297842423815028156.a n = A076538 (n + 1)

end A076538

/-! ## A076538.P619160370583672813

`∑[and(1, Δ[floor(19*n/26)])]`
-/

namespace A076538.P619160370583672813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊19 * ((n : ℚ) / 26)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076538.P619160370583672813

namespace A076538

/-- `∑[and(1, Δ[floor(19*n/26)])]` -/
def P619160370583672813.Spec : Prop :=
  ∀ n, P619160370583672813.a n = A076538 (n + 1)

end A076538

/-! ## A076538.P9946127292463846408

`∑[A144610(n)]`
-/

namespace A076538.P9946127292463846408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076538.P9946127292463846408

namespace A076538

/-- `∑[A144610(n)]` -/
def P9946127292463846408.Spec : Prop :=
  ∀ n, P9946127292463846408.a n = A076538 (n + 1)

end A076538

/-! ## A076538.P16818696189768218723

`∑[A000045(Δ[floor(19*n/26)])]`
-/

namespace A076538.P16818696189768218723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊19 * ((n : ℚ) / 26)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076538.P16818696189768218723

namespace A076538

/-- `∑[A000045(Δ[floor(19*n/26)])]` -/
def P16818696189768218723.Spec : Prop :=
  ∀ n, P16818696189768218723.a n = A076538 (n + 1)

end A076538

/-! ## A076538.P7622967782276878293

`n-A059995(A330094(n+1))`
-/

namespace A076538.P7622967782276878293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A059995 (A330094 (n + 1)).toNat

end

end A076538.P7622967782276878293

namespace A076538

/-- `n-A059995(A330094(n+1))` -/
def P7622967782276878293.Spec : Prop :=
  ∀ n, P7622967782276878293.a n = A076538 (n + 1)

end A076538

/-!
# A076539: Numerators a(n) of fractions slowly converging to Pi: let a(1) = 0, b(n) = n - a(n); if (a(n) + 1) / b(n) < Pi, then a(n+1) = a(n) + 1, otherwise a(n+1) = a(n).

The programs for A076539, the canonical program `A076539.P14355845032435291225` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076539 has offset 1).

The definition of A076539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076539.P14355845032435291225

`∑[char[floor(29*(n+1)/22)]]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076539

/-- `∑[char[floor(29*(n+1)/22)]]` -/
def P14355845032435291225.Spec : Prop :=
  ∀ n, (P14355845032435291225.a n : ℤ) = A076539 (n + 1)

theorem P14355845032435291225.correct : P14355845032435291225.Spec := by
  intro n
  simp only [A076539, Nat.add_sub_cancel]

end A076539

/-! ## A076539.P890573157133613817

`char[floor(29*(n+1)/22)]+a(n-1)` with `a(0)=0`
-/

namespace A076539.P890573157133613817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊29 * ((n + 1 : ℚ) / 22)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A076539.P890573157133613817

namespace A076539

/-- `char[floor(29*(n+1)/22)]+a(n-1)` -/
def P890573157133613817.Spec : Prop :=
  ∀ n, (P890573157133613817.a n : ℤ) = A076539 (n + 1)

end A076539

/-! ## A076539.P1634900826927694356

`2*∑[A144609(n)/2]`
-/

namespace A076539.P1634900826927694356
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144609 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076539.P1634900826927694356

namespace A076539

/-- `2*∑[A144609(n)/2]` -/
def P1634900826927694356.Spec : Prop :=
  ∀ n, P1634900826927694356.a n = (A076539 (n + 1) : ℚ)

end A076539

/-! ## A076539.P4446804265770530374

`A023443(∑[A144609(n)]+1)`
-/

namespace A076539.P4446804265770530374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A076539.P4446804265770530374

namespace A076539

/-- `A023443(∑[A144609(n)]+1)` -/
def P4446804265770530374.Spec : Prop :=
  ∀ n, P4446804265770530374.a n = A076539 (n + 1)

end A076539

/-! ## A076539.P2674019921977822028

`∑[A144609(n)]%A026351(n)`
-/

namespace A076539.P2674019921977822028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A026351 n)

end

end A076539.P2674019921977822028

namespace A076539

/-- `∑[A144609(n)]%A026351(n)` -/
def P2674019921977822028.Spec : Prop :=
  ∀ n, P2674019921977822028.a n = A076539 (n + 1)

end A076539

/-! ## A076539.P3423437414721364150

`∑[A144609(n)]*A242784(C(5, n+3))`
-/

namespace A076539.P3423437414721364150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A242784 (Nat.choose 5 (n + 3))

end

end A076539.P3423437414721364150

namespace A076539

/-- `∑[A144609(n)]*A242784(C(5, n+3))` -/
def P3423437414721364150.Spec : Prop :=
  ∀ n, P3423437414721364150.a n = A076539 (n + 1)

end A076539

/-! ## A076539.P10126623154213994436

`∑[A144609(n)]*A333159(C(5, n+3))`
-/

namespace A076539.P10126623154213994436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A333159 (Nat.choose 5 (n + 3))

end

end A076539.P10126623154213994436

namespace A076539

/-- `∑[A144609(n)]*A333159(C(5, n+3))` -/
def P10126623154213994436.Spec : Prop :=
  ∀ n, P10126623154213994436.a n = A076539 (n + 1)

end A076539

/-! ## A076539.P1873036541775905847

`∑[A144609(n)]-A054977(n+1)+1`
-/

namespace A076539.P1873036541775905847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A054977 (n + 1) + 1

end

end A076539.P1873036541775905847

namespace A076539

/-- `∑[A144609(n)]-A054977(n+1)+1` -/
def P1873036541775905847.Spec : Prop :=
  ∀ n, P1873036541775905847.a n = A076539 (n + 1)

end A076539

/-! ## A076539.P12521515013341458849

`∑[A144609(n+1)]-A144609(n+1)`
-/

namespace A076539.P12521515013341458849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A144609 (n + 1)

end

end A076539.P12521515013341458849

namespace A076539

/-- `∑[A144609(n+1)]-A144609(n+1)` -/
def P12521515013341458849.Spec : Prop :=
  ∀ n, P12521515013341458849.a n = A076539 (n + 1)

end A076539

/-! ## A076539.P6394651034783957222

`A000196(∑[A144609(n)]²)`
-/

namespace A076539.P6394651034783957222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A076539.P6394651034783957222

namespace A076539

/-- `A000196(∑[A144609(n)]²)` -/
def P6394651034783957222.Spec : Prop :=
  ∀ n, P6394651034783957222.a n = A076539 (n + 1)

end A076539

/-!
# A076540: Number of branches in all ordered trees with n edges.

The programs for A076540, the canonical program `A076540.P14907461827048559839` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076540 has offset 1).

The definition of A076540 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076540.P14907461827048559839

`(3*(n+1)²-2*(n+1)+1)*C(2*(n+1), n+1)/(2*(n+2)*(2*(n+1)-1))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076540

/-- `(3*(n+1)²-2*(n+1)+1)*C(2*(n+1), n+1)/(2*(n+2)*(2*(n+1)-1))` -/
def P14907461827048559839.Spec : Prop :=
  ∀ n, P14907461827048559839.a n = (A076540 (n + 1) : ℚ)

end A076540

/-! ## A076540.P4910110509095003729

`∑[A073663(n)]`
-/

namespace A076540.P4910110509095003729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076540.P4910110509095003729

namespace A076540

/-- `∑[A073663(n)]` -/
def P4910110509095003729.Spec : Prop :=
  ∀ n, P4910110509095003729.a n = A076540 (n + 1)

end A076540

/-! ## A076540.P14320000035049605924

`Δ[A001791(n)]`
-/

namespace A076540.P14320000035049605924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076540.P14320000035049605924

namespace A076540

/-- `Δ[A001791(n)]` -/
def P14320000035049605924.Spec : Prop :=
  ∀ n, P14320000035049605924.a n = A076540 (n + 1)

end A076540

/-! ## A076540.P16689274886524051404

`Δ[A323229(n)]`
-/

namespace A076540.P16689274886524051404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076540.P16689274886524051404

namespace A076540

/-- `Δ[A323229(n)]` -/
def P16689274886524051404.Spec : Prop :=
  ∀ n, P16689274886524051404.a n = A076540 (n + 1)

end A076540

/-! ## A076540.P15998557971825506203

`Δ[Δ[A279561(n)]]`
-/

namespace A076540.P15998557971825506203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279561 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076540.P15998557971825506203

namespace A076540

/-- `Δ[Δ[A279561(n)]]` -/
def P15998557971825506203.Spec : Prop :=
  ∀ n, P15998557971825506203.a n = A076540 (n + 1)

end A076540

/-! ## A076540.P11483999958374982729

`Δ[A037952(2*n)]`
-/

namespace A076540.P11483999958374982729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076540.P11483999958374982729

namespace A076540

/-- `Δ[A037952(2*n)]` -/
def P11483999958374982729.Spec : Prop :=
  ∀ n, P11483999958374982729.a n = A076540 (n + 1)

end A076540

/-! ## A076540.P5698402338358315715

`Δ[A037955(2*n)]`
-/

namespace A076540.P5698402338358315715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076540.P5698402338358315715

namespace A076540

/-- `Δ[A037955(2*n)]` -/
def P5698402338358315715.Spec : Prop :=
  ∀ n, P5698402338358315715.a n = A076540 (n + 1)

end A076540

/-! ## A076540.P5430638597583805057

`Δ[n*A000108(n)]`
-/

namespace A076540.P5430638597583805057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076540.P5430638597583805057

namespace A076540

/-- `Δ[n*A000108(n)]` -/
def P5430638597583805057.Spec : Prop :=
  ∀ n, P5430638597583805057.a n = A076540 (n + 1)

end A076540

/-! ## A076540.P9920908706789031549

`Δ[abs(n*A168491(n))]`
-/

namespace A076540.P9920908706789031549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A168491 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076540.P9920908706789031549

namespace A076540

/-- `Δ[abs(n*A168491(n))]` -/
def P9920908706789031549.Spec : Prop :=
  ∀ n, P9920908706789031549.a n = A076540 (n + 1)

end A076540

/-! ## A076540.P12012153922725290127

`Δ[n*Δ[A155587(n)]]`
-/

namespace A076540.P12012153922725290127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076540.P12012153922725290127

namespace A076540

/-- `Δ[n*Δ[A155587(n)]]` -/
def P12012153922725290127.Spec : Prop :=
  ∀ n, P12012153922725290127.a n = A076540 (n + 1)

end A076540

/-! ## A076540.P10578145808028497775

`Δ[n*A120588(n+1)]`
-/

namespace A076540.P10578145808028497775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A120588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076540.P10578145808028497775

namespace A076540

/-- `Δ[n*A120588(n+1)]` -/
def P10578145808028497775.Spec : Prop :=
  ∀ n, P10578145808028497775.a n = A076540 (n + 1)

end A076540

/-! ## A076540.P7053391841022959219

`Δ[n*(A120304(n)+2)]`
-/

namespace A076540.P7053391841022959219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A120304 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076540.P7053391841022959219

namespace A076540

/-- `Δ[n*(A120304(n)+2)]` -/
def P7053391841022959219.Spec : Prop :=
  ∀ n, P7053391841022959219.a n = A076540 (n + 1)

end A076540

/-! ## A076540.P14782341111770034320

`Δ[n*A028303(2*n)]`
-/

namespace A076540.P14782341111770034320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A028303 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076540.P14782341111770034320

namespace A076540

/-- `Δ[n*A028303(2*n)]` -/
def P14782341111770034320.Spec : Prop :=
  ∀ n, P14782341111770034320.a n = A076540 (n + 1)

end A076540

/-! ## A076540.P10337819901561937251

`Δ[n*A028304(2*n)]`
-/

namespace A076540.P10337819901561937251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A028304 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076540.P10337819901561937251

namespace A076540

/-- `Δ[n*A028304(2*n)]` -/
def P10337819901561937251.Spec : Prop :=
  ∀ n, P10337819901561937251.a n = A076540 (n + 1)

end A076540

/-! ## A076540.P15825552223526953671

`Δ[n*A057977(2*n)]`
-/

namespace A076540.P15825552223526953671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A057977 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076540.P15825552223526953671

namespace A076540

/-- `Δ[n*A057977(2*n)]` -/
def P15825552223526953671.Spec : Prop :=
  ∀ n, P15825552223526953671.a n = A076540 (n + 1)

end A076540

/-! ## A076540.P6986010846595149186

`Δ[n*A099363(2*n)]`
-/

namespace A076540.P6986010846595149186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A099363 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076540.P6986010846595149186

namespace A076540

/-- `Δ[n*A099363(2*n)]` -/
def P6986010846595149186.Spec : Prop :=
  ∀ n, P6986010846595149186.a n = A076540 (n + 1)

end A076540

/-! ## A076540.P15283225338756611884

`Δ[n*A126120(2*n)]`
-/

namespace A076540.P15283225338756611884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A126120 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076540.P15283225338756611884

namespace A076540

/-- `Δ[n*A126120(2*n)]` -/
def P15283225338756611884.Spec : Prop :=
  ∀ n, P15283225338756611884.a n = A076540 (n + 1)

end A076540

/-! ## A076540.P18109917027797975882

`Δ[n*A126324(2*n)]`
-/

namespace A076540.P18109917027797975882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A126324 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076540.P18109917027797975882

namespace A076540

/-- `Δ[n*A126324(2*n)]` -/
def P18109917027797975882.Spec : Prop :=
  ∀ n, P18109917027797975882.a n = A076540 (n + 1)

end A076540

/-! ## A076540.P10981885160296265858

`Δ[n*A208355(2*n)]`
-/

namespace A076540.P10981885160296265858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A208355 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076540.P10981885160296265858

namespace A076540

/-- `Δ[n*A208355(2*n)]` -/
def P10981885160296265858.Spec : Prop :=
  ∀ n, P10981885160296265858.a n = A076540 (n + 1)

end A076540

/-! ## A076540.P17085656061477828092

`Δ[n/2*A068875(n)]`
-/

namespace A076540.P17085656061477828092
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A068875 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076540.P17085656061477828092

namespace A076540

/-- `Δ[n/2*A068875(n)]` -/
def P17085656061477828092.Spec : Prop :=
  ∀ n, P17085656061477828092.a n = (A076540 (n + 1) : ℚ)

end A076540

/-!
# A076542: Numbers n such that A068340(n) = +-1.

The programs for A076542, there is no canonical definition to state claims against.
-/

/-! ## A076542.P4953567887585817990

`eq[1, abs(A068340(n+1))]+1`
-/

namespace A076542.P4953567887585817990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A068340 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076542.P4953567887585817990

/-!
# A076543: a(n) = Sum_{k=1..n} k*sqf(k) where sqf(k)=1 if k is squarefree and sqf(k)=-1 otherwise.

The programs for A076543, the canonical program `A076543.P14043142973784260755` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076543 has offset 1).

The definition of A076543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076543.P14043142973784260755

`2*A066779(n+1)-∑[n+1]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076543

/-- `2*A066779(n+1)-∑[n+1]` -/
def P14043142973784260755.Spec : Prop :=
  ∀ n, P14043142973784260755.a n = A076543 (n + 1)

theorem P14043142973784260755.correct : P14043142973784260755.Spec := by
  intro n
  simp only [A076543, Nat.add_sub_cancel]

end A076543

/-! ## A076543.P13082470844763659824

`∑[(n+1)*(-1)^A346250(n+1)]`
-/

namespace A076543.P13082470844763659824
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (-1 : ℚ) ^ (A346250 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076543.P13082470844763659824

namespace A076543

/-- `∑[(n+1)*(-1)^A346250(n+1)]` -/
def P13082470844763659824.Spec : Prop :=
  ∀ n, P13082470844763659824.a n = (A076543 (n + 1) : ℚ)

end A076543

/-! ## A076543.P15388402408826678242

`∑[(n+1)*(lcm(2, A008683(n+1))-1)]`
-/

namespace A076543.P15388402408826678242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((Int.lcm 2 (A008683 (n + 1)) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076543.P15388402408826678242

namespace A076543

/-- `∑[(n+1)*(lcm(2, A008683(n+1))-1)]` -/
def P15388402408826678242.Spec : Prop :=
  ∀ n, P15388402408826678242.a n = A076543 (n + 1)

end A076543

/-! ## A076543.P11235556795228125844

`A066779(n+1)-A294246(n+1)`
-/

namespace A076543.P11235556795228125844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066779 (n + 1) - A294246 (n + 1)

end

end A076543.P11235556795228125844

namespace A076543

/-- `A066779(n+1)-A294246(n+1)` -/
def P11235556795228125844.Spec : Prop :=
  ∀ n, P11235556795228125844.a n = A076543 (n + 1)

end A076543

/-! ## A076543.P8324592853798744108

`∑[(n+1)*A008683(A123623(n+1))]`
-/

namespace A076543.P8324592853798744108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 (A123623 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076543.P8324592853798744108

namespace A076543

/-- `∑[(n+1)*A008683(A123623(n+1))]` -/
def P8324592853798744108.Spec : Prop :=
  ∀ n, P8324592853798744108.a n = A076543 (n + 1)

end A076543

/-! ## A076543.P6328069393465585803

`∑[(n+1)*A033999(A000040(∏{e}[n+1, #]))]`
-/

namespace A076543.P6328069393465585803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033999 (A000040 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076543.P6328069393465585803

namespace A076543

/-- `∑[(n+1)*A033999(A000040(∏{e}[n+1, #]))]` -/
def P6328069393465585803.Spec : Prop :=
  ∀ n, P6328069393465585803.a n = A076543 (n + 1)

end A076543

/-!
# A076544: a(n) = mu(n) + sqf(n) where mu(n) is Moebius function, sqf(n) = 1 if n is squarefree and sqf(n) = -1 otherwise.

The programs for A076544, the canonical program `A076544.P6625474145612120864` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076544 has offset 1).

The definition of A076544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076544.P6625474145612120864

`2*A008683(n+1)²+A008683(n+1)-1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076544

/-- `2*A008683(n+1)²+A008683(n+1)-1` -/
def P6625474145612120864.Spec : Prop :=
  ∀ n, P6625474145612120864.a n = A076544 (n + 1)

theorem P6625474145612120864.correct : P6625474145612120864.Spec := by
  intro n
  simp only [A076544, Nat.add_sub_cancel]

end A076544

/-! ## A076544.P18035077327110474635

`xor(1, A007423(n+1))-1`
-/

namespace A076544.P18035077327110474635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A007423 (n + 1)) - 1

end

end A076544.P18035077327110474635

namespace A076544

/-- `xor(1, A007423(n+1))-1` -/
def P18035077327110474635.Spec : Prop :=
  ∀ n, P18035077327110474635.a n = A076544 (n + 1)

end A076544

/-! ## A076544.P8931899033366879081

`-xor(1, -A008683(n+1))`
-/

namespace A076544.P8931899033366879081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-A008683 (n + 1))

end

end A076544.P8931899033366879081

namespace A076544

/-- `-xor(1, -A008683(n+1))` -/
def P8931899033366879081.Spec : Prop :=
  ∀ n, P8931899033366879081.a n = A076544 (n + 1)

end A076544

/-! ## A076544.P16304189396238293612

`A010555(n+1)+A008966(n+1)`
-/

namespace A076544.P16304189396238293612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010555 (n + 1) + A008966 (n + 1)

end

end A076544.P16304189396238293612

namespace A076544

/-- `A010555(n+1)+A008966(n+1)` -/
def P16304189396238293612.Spec : Prop :=
  ∀ n, P16304189396238293612.a n = A076544 (n + 1)

end A076544

/-! ## A076544.P14342115221761248247

`A007423(n+1)*A010555(n+1)`
-/

namespace A076544.P14342115221761248247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) * A010555 (n + 1)

end

end A076544.P14342115221761248247

namespace A076544

/-- `A007423(n+1)*A010555(n+1)` -/
def P14342115221761248247.Spec : Prop :=
  ∀ n, P14342115221761248247.a n = A076544 (n + 1)

end A076544

/-! ## A076544.P3909364962302736364

`A007423(n+1)*A133695(n+1)`
-/

namespace A076544.P3909364962302736364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) * A133695 (n + 1)

end

end A076544.P3909364962302736364

namespace A076544

/-- `A007423(n+1)*A133695(n+1)` -/
def P3909364962302736364.Spec : Prop :=
  ∀ n, P3909364962302736364.a n = A076544 (n + 1)

theorem P3909364962302736364.correct : P3909364962302736364.Spec := by
  intro n
  simp only [A076544, Nat.add_sub_cancel, A076544.P3909364962302736364.a, A076544.P6625474145612120864.a, A007423, A007423.P17981127199039660822.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A133695, A133695.P14090460044357670883.a, A080847, A080847.P17042895332239696920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076544

/-! ## A076544.P15740924128872095975

`A004718(∑{d}[A074823(n+1), #]+2)`
-/

namespace A076544.P15740924128872095975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (∑ d ∈ Nat.divisors (f1 n).natAbs, d + 2)

end

end A076544.P15740924128872095975

namespace A076544

/-- `A004718(∑{d}[A074823(n+1), #]+2)` -/
def P15740924128872095975.Spec : Prop :=
  ∀ n, P15740924128872095975.a n = A076544 (n + 1)

end A076544

/-! ## A076544.P12636419196492868423

`A010555(n+1)+A008683(n+1)²`
-/

namespace A076544.P12636419196492868423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010555 (n + 1) + A008683 (n + 1) ^ 2

end

end A076544.P12636419196492868423

namespace A076544

/-- `A010555(n+1)+A008683(n+1)²` -/
def P12636419196492868423.Spec : Prop :=
  ∀ n, P12636419196492868423.a n = A076544 (n + 1)

end A076544

/-! ## A076544.P7081369863880833514

`(A008683(n+1)+1)*A133695(n+1)`
-/

namespace A076544.P7081369863880833514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) + 1) * A133695 (n + 1)

end

end A076544.P7081369863880833514

namespace A076544

/-- `(A008683(n+1)+1)*A133695(n+1)` -/
def P7081369863880833514.Spec : Prop :=
  ∀ n, P7081369863880833514.a n = A076544 (n + 1)

theorem P7081369863880833514.correct : P7081369863880833514.Spec := by
  intro n
  simp only [A076544, Nat.add_sub_cancel, A076544.P7081369863880833514.a, A076544.P6625474145612120864.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A133695, A133695.P14090460044357670883.a, A080847, A080847.P17042895332239696920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076544

/-! ## A076544.P10125631372726031775

`A008683(n+1)²*A080847(n+1)-1`
-/

namespace A076544.P10125631372726031775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2 * A080847 (n + 1) - 1

end

end A076544.P10125631372726031775

namespace A076544

/-- `A008683(n+1)²*A080847(n+1)-1` -/
def P10125631372726031775.Spec : Prop :=
  ∀ n, P10125631372726031775.a n = A076544 (n + 1)

end A076544

/-! ## A076544.P2966496859247639878

`A092673(7-Δ[A002321(abs(1-n)+1)]^(2*n+1))`
-/

namespace A076544.P2966496859247639878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (7 - (f1 (n + 1) - f1 n) ^ (2 * n + 1)).toNat

end

end A076544.P2966496859247639878

namespace A076544

/-- `A092673(7-Δ[A002321(abs(1-n)+1)]^(2*n+1))` -/
def P2966496859247639878.Spec : Prop :=
  ∀ n, P2966496859247639878.a n = A076544 (n + 1)

end A076544

/-! ## A076544.P6482908405550985052

`A008683(n+1)+A008683(A123623(n+1))`
-/

namespace A076544.P6482908405550985052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + A008683 (A123623 (n + 1)).toNat

end

end A076544.P6482908405550985052

namespace A076544

/-- `A008683(n+1)+A008683(A123623(n+1))` -/
def P6482908405550985052.Spec : Prop :=
  ∀ n, P6482908405550985052.a n = A076544 (n + 1)

end A076544

/-! ## A076544.P6739101247286153587

`A076479(A162510(n+1))+A008683(n+1)`
-/

namespace A076544.P6739101247286153587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (A162510 (n + 1)).toNat + A008683 (n + 1)

end

end A076544.P6739101247286153587

namespace A076544

/-- `A076479(A162510(n+1))+A008683(n+1)` -/
def P6739101247286153587.Spec : Prop :=
  ∀ n, P6739101247286153587.a n = A076544 (n + 1)

end A076544

/-! ## A076544.P3980922180693308767

`A140575(A020639(2*(n+1))-A008683(n+1))`
-/

namespace A076544.P3980922180693308767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140575 (A020639 (2 * (n + 1)) - A008683 (n + 1)).toNat

end

end A076544.P3980922180693308767

namespace A076544

/-- `A140575(A020639(2*(n+1))-A008683(n+1))` -/
def P3980922180693308767.Spec : Prop :=
  ∀ n, P3980922180693308767.a n = A076544 (n + 1)

end A076544

/-! ## A076544.P12387843701724655549

`A092673(7-round(A023900(n+1)/A039649(n+1)))`
-/

namespace A076544.P12387843701724655549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (7 - SequenceMachineLib.roundAway ((A023900 (n + 1) : ℚ) / (A039649 (n + 1) : ℚ))).toNat

end

end A076544.P12387843701724655549

namespace A076544

/-- `A092673(7-round(A023900(n+1)/A039649(n+1)))` -/
def P12387843701724655549.Spec : Prop :=
  ∀ n, P12387843701724655549.a n = A076544 (n + 1)

end A076544

/-! ## A076544.P1196295116192082728

`A092673(7-round(A347092(n+1)/A347137(n+1)))`
-/

namespace A076544.P1196295116192082728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (7 - SequenceMachineLib.roundAway ((A347092 (n + 1) : ℚ) / (A347137 (n + 1) : ℚ))).toNat

end

end A076544.P1196295116192082728

namespace A076544

/-- `A092673(7-round(A347092(n+1)/A347137(n+1)))` -/
def P1196295116192082728.Spec : Prop :=
  ∀ n, P1196295116192082728.a n = A076544 (n + 1)

end A076544

/-! ## A076544.P8995047524356500660

`A010555(n+1)+A353629(n+1)+A252233(n+1)`
-/

namespace A076544.P8995047524356500660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010555 (n + 1) + (A353629 (n + 1) + A252233 (n + 1))

end

end A076544.P8995047524356500660

namespace A076544

/-- `A010555(n+1)+A353629(n+1)+A252233(n+1)` -/
def P8995047524356500660.Spec : Prop :=
  ∀ n, P8995047524356500660.a n = A076544 (n + 1)

end A076544

/-! ## A076544.P15240325274943797361

`A008683(n+1)+A008966(n+1)-A107078(n+1)`
-/

namespace A076544.P15240325274943797361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + (A008966 (n + 1) - A107078 (n + 1))

end

end A076544.P15240325274943797361

namespace A076544

/-- `A008683(n+1)+A008966(n+1)-A107078(n+1)` -/
def P15240325274943797361.Spec : Prop :=
  ∀ n, P15240325274943797361.a n = A076544 (n + 1)

end A076544

/-! ## A076544.P12457933203562870811

`(A007423(n+1)-A007424(n+1))*A007423(n+1)`
-/

namespace A076544.P12457933203562870811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007423 (n + 1) - A007424 (n + 1)) * A007423 (n + 1)

end

end A076544.P12457933203562870811

namespace A076544

/-- `(A007423(n+1)-A007424(n+1))*A007423(n+1)` -/
def P12457933203562870811.Spec : Prop :=
  ∀ n, P12457933203562870811.a n = A076544 (n + 1)

end A076544

/-! ## A076544.P1062332415763919632

`(A007423(n+1)-A129979(n+1))*A007423(n+1)`
-/

namespace A076544.P1062332415763919632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007423 (n + 1) - A129979 (n + 1)) * A007423 (n + 1)

end

end A076544.P1062332415763919632

namespace A076544

/-- `(A007423(n+1)-A129979(n+1))*A007423(n+1)` -/
def P1062332415763919632.Spec : Prop :=
  ∀ n, P1062332415763919632.a n = A076544 (n + 1)

theorem P1062332415763919632.correct : P1062332415763919632.Spec := by
  intro n
  simp only [A076544, Nat.add_sub_cancel, A076544.P1062332415763919632.a, A076544.P6625474145612120864.a, A007423, A007423.P17981127199039660822.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A129979, A129979.P5213750874207387056.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076544

/-!
# A076545: a(n) = Sum_{k=1..n} (mu(k) + sqf(k)) where mu(k) is Moebius function, sqf(k)=1 if k is squarefree and sqf(k)=-1 otherwise.

The programs for A076545, the canonical program `A076545.P6221361317140441619` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076545 has offset 1).

The definition of A076545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076545.P8771441059770769539

`∑[-xor(1, -round(∏{e}[n+1, -#^-2]))]`
-/

namespace A076545.P8771441059770769539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (-((Nat.factorization (f2 n) p : ℚ) ^ (-2 : ℤ)))))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076545.P8771441059770769539

namespace A076545

/-- `∑[-xor(1, -round(∏{e}[n+1, -#^-2]))]` -/
def P8771441059770769539.Spec : Prop :=
  ∀ n, P8771441059770769539.a n = A076545 (n + 1)

end A076545

/-! ## A076545.P6221361317140441619

`∑[A076544(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A076545

/-- `∑[A076544(n+1)]` -/
def P6221361317140441619.Spec : Prop :=
  ∀ n, P6221361317140441619.a n = A076545 (n + 1)

theorem P6221361317140441619.correct : P6221361317140441619.Spec := by
  intro n
  simp only [A076545, Nat.add_sub_cancel]

end A076545

/-! ## A076545.P1523875883074668471

`∑[xor(1, A007423(n+1))-1]`
-/

namespace A076545.P1523875883074668471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A007423 (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076545.P1523875883074668471

namespace A076545

/-- `∑[xor(1, A007423(n+1))-1]` -/
def P1523875883074668471.Spec : Prop :=
  ∀ n, P1523875883074668471.a n = A076545 (n + 1)

end A076545

/-! ## A076545.P15013290442248344546

`abs(∑[xor(1, -A008683(n+1))])`
-/

namespace A076545.P15013290442248344546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-A008683 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A076545.P15013290442248344546

namespace A076545

/-- `abs(∑[xor(1, -A008683(n+1))])` -/
def P15013290442248344546.Spec : Prop :=
  ∀ n, P15013290442248344546.a n = A076545 (n + 1)

end A076545

/-! ## A076545.P338875161880422477

`∑[-xor(1, -A008683(char[1]+1+n))]`
-/

namespace A076545.P338875161880422477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-A008683 ((if ∃ j, f2 j = n then 1 else 0) + 1 + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076545.P338875161880422477

namespace A076545

/-- `∑[-xor(1, -A008683(char[1]+1+n))]` -/
def P338875161880422477.Spec : Prop :=
  ∀ n, P338875161880422477.a n = A076545 (n + 1)

end A076545

/-! ## A076545.P11853645498761482521

`∑[-xor(1, -A008683(2*n-(n-1))^3)]`
-/

namespace A076545.P11853645498761482521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-(A008683 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076545.P11853645498761482521

namespace A076545

/-- `∑[-xor(1, -A008683(2*n-(n-1))^3)]` -/
def P11853645498761482521.Spec : Prop :=
  ∀ n, P11853645498761482521.a n = A076545 (n + 1)

end A076545

/-! ## A076545.P738844000890177016

`∑[round((5*A008683(C(n+1, n))-1)/2)%3]`
-/

namespace A076545.P738844000890177016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((5 * A008683 (Nat.choose (n + 1) n) - 1 : ℚ) / 2)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076545.P738844000890177016

namespace A076545

/-- `∑[round((5*A008683(C(n+1, n))-1)/2)%3]` -/
def P738844000890177016.Spec : Prop :=
  ∀ n, P738844000890177016.a n = A076545 (n + 1)

end A076545

/-! ## A076545.P16918207193683712485

`A000027(∑[-xor(1, -A008683(n+1))])`
-/

namespace A076545.P16918207193683712485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-A008683 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076545.P16918207193683712485

namespace A076545

/-- `A000027(∑[-xor(1, -A008683(n+1))])` -/
def P16918207193683712485.Spec : Prop :=
  ∀ n, P16918207193683712485.a n = A076545 (n + 1)

end A076545

/-! ## A076545.P541735498247789532

`∑[A008683(n+1)+A008683(A123623(n+1))]`
-/

namespace A076545.P541735498247789532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + A008683 (A123623 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076545.P541735498247789532

namespace A076545

/-- `∑[A008683(n+1)+A008683(A123623(n+1))]` -/
def P541735498247789532.Spec : Prop :=
  ∀ n, P541735498247789532.a n = A076545 (n + 1)

end A076545

/-! ## A076545.P7635234656859850852

`∑[char[∏{p}[n, #]-1]+(∏{p}[n+1, -#]-n)%2]`
-/

namespace A076545.P7635234656859850852
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ) - 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + Int.tmod (∏ p ∈ Nat.primeFactors (f4 n), (-(p : ℤ)) - (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076545.P7635234656859850852

namespace A076545

/-- `∑[char[∏{p}[n, #]-1]+(∏{p}[n+1, -#]-n)%2]` -/
def P7635234656859850852.Spec : Prop :=
  ∀ n, P7635234656859850852.a n = A076545 (n + 1)

end A076545

/-!
# A076546: Let P = { p_1 = 3, p_2 = 5, ...} be the set of odd primes. If p_n in P can be written as p_n = q+r+s with q, r, s in P, let a(n) = largest such q, otherwise let a(n) = p_{n+1}.

The programs for A076546, there is no canonical definition to state claims against.
-/

/-! ## A076546.P10684335658063863916

`or(A008578(n+1), A133618(A001405(n)))`
-/

namespace A076546.P10684335658063863916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008578 (n + 1)) (A133618 (A001405 n).toNat)

end

end A076546.P10684335658063863916

/-!
# A076548: Let P(n,x) be defined as follows: P(1,x)=x, P(n,x)=P(n-1,x)^2+1, sequence gives maximum value of coefficients of P(n,x).

The programs for A076548, there is no canonical definition to state claims against.
-/

/-! ## A076548.P5858111664020747922

`A329429(ceil((xor(2^n, floor(2^(n-1)))+n-1)/2))`
-/

namespace A076548.P5858111664020747922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329429 ⌈(Int.xor (2 ^ n : ℤ) ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + ((n : ℤ) - 1) : ℚ) / 2⌉.toNat

end

end A076548.P5858111664020747922

/-! ## A076548.P1064686201638638088

`A158985(A027559(n))`
-/

namespace A076548.P1064686201638638088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158985 (A027559 n).toNat

end

end A076548.P1064686201638638088

/-!
# A076550: Indices of triangular numbers listed in A075088.

The programs for A076550, there is no canonical definition to state claims against.
-/

/-! ## A076550.P2194696096845179158

`floor(sqrt(2*A075088(n)))`
-/

namespace A076550.P2194696096845179158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A075088 n)

end

end A076550.P2194696096845179158

/-! ## A076550.P9854404223200345745

`floor(sqrt(A083001(n+1)))`
-/

namespace A076550.P9854404223200345745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A083001 (n + 1))

end

end A076550.P9854404223200345745

/-! ## A076550.P18135180749836382582

`round(sqrt(A083001(n+1)))%A087289(n)`
-/

namespace A076550.P18135180749836382582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A083001 (n + 1) : ℝ))) (A087289 n)

end

end A076550.P18135180749836382582

/-! ## A076550.P185482111142368678

`floor(A155850(n+3)/2)`
-/

namespace A076550.P185482111142368678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155850 (n + 3) : ℚ) / 2⌋

end

end A076550.P185482111142368678

/-! ## A076550.P922971459289204537

`ceil(A155850(n+3)/2-((-1)^A007318(n))²)`
-/

namespace A076550.P922971459289204537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155850 (n + 3) : ℚ) / 2 - ((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2⌉

end

end A076550.P922971459289204537

/-!
# A076551: Smallest triangular number with n prime factors (counted without multiplicity).

The programs for A076551, there is no canonical definition to state claims against.
-/

/-! ## A076551.P17617049053930663325

`C(A359017(n)+1, 2)`
-/

namespace A076551.P17617049053930663325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A359017 n + 1).toNat 2

end

end A076551.P17617049053930663325

/-! ## A076551.P4962298819376609156

`A000217(A359017(n))`
-/

namespace A076551.P4962298819376609156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A359017 n).toNat

end

end A076551.P4962298819376609156

/-! ## A076551.P8613338845198612246

`A161680(A359017(n)+1)`
-/

namespace A076551.P8613338845198612246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A359017 n + 1).toNat

end

end A076551.P8613338845198612246

/-!
# A076552: a(n) = (-1)^(n+1)/3/(2n+1) * Sum_{k=0..n} 16^k*B(2k)*C(2n+1,2k) where B(k) denotes the k-th Bernoulli number.

The programs for A076552, there is no canonical definition to state claims against.
-/

/-! ## A076552.P1854427257734683531

`Δ[round(A173226(n)/3)]`
-/

namespace A076552.P1854427257734683531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A173226 n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076552.P1854427257734683531

/-! ## A076552.P14022563382074807178

`round(A009744(n+1)/3)`
-/

namespace A076552.P14022563382074807178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A009744 (n + 1) : ℚ) / 3)

end

end A076552.P14022563382074807178

/-! ## A076552.P12944905373413129717

`round(A162977(2*(n+1))/3)`
-/

namespace A076552.P12944905373413129717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A162977 (2 * (n + 1)) : ℚ) / 3)

end

end A076552.P12944905373413129717

/-! ## A076552.P14251550974167080534

`1/3*(A000364(n+1)-2*(-1)^(n+1))`
-/

namespace A076552.P14251550974167080534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A000364 (n + 1) - 2 * (-1) ^ (n + 1) : ℚ)

end

end A076552.P14251550974167080534

/-! ## A076552.P12249716476102799273

`A147719(2*n+1)-abs(A117569(n+2))`
-/

namespace A076552.P12249716476102799273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147719 (2 * n + 1) - |A117569 (n + 2)|

end

end A076552.P12249716476102799273

/-!
# A076555: Greatest prime divisor of n-th prime + 2.

The programs for A076555, the canonical program `A076555.P7673371548901123607` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076555 has offset 1).

The definition of A076555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076555.P7673371548901123607

`A006530(A052147(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A076555

/-- `A006530(A052147(n+1))` -/
def P7673371548901123607.Spec : Prop :=
  ∀ n, P7673371548901123607.a n = A076555 (n + 1)

theorem P7673371548901123607.correct : P7673371548901123607.Spec := by
  intro n
  simp only [A076555, Nat.add_sub_cancel]

end A076555

/-! ## A076555.P14032220565405683447

`A006530(Δ[A007504(n)]+2)`
-/

namespace A076555.P14032220565405683447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n + 2).toNat

end

end A076555.P14032220565405683447

namespace A076555

/-- `A006530(Δ[A007504(n)]+2)` -/
def P14032220565405683447.Spec : Prop :=
  ∀ n, P14032220565405683447.a n = A076555 (n + 1)

end A076555

/-! ## A076555.P2119414550606942089

`A006530(A008864(n+1)+1)`
-/

namespace A076555.P2119414550606942089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008864 (n + 1) + 1).toNat

end

end A076555.P2119414550606942089

namespace A076555

/-- `A006530(A008864(n+1)+1)` -/
def P2119414550606942089.Spec : Prop :=
  ∀ n, P2119414550606942089.a n = A076555 (n + 1)

theorem P2119414550606942089.correct : P2119414550606942089.Spec := by
  intro n
  simp only [A076555, Nat.add_sub_cancel, A076555.P2119414550606942089.a, A076555.P7673371548901123607.a, A006530, A006530.P13372528560459906635.a, A008864, A008864.P9177617808325052279.a, A052147, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076555

/-! ## A076555.P9893373026366117369

`A006530(A028815(n+1)+1)`
-/

namespace A076555.P9893373026366117369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028815 (n + 1) + 1).toNat

end

end A076555.P9893373026366117369

namespace A076555

/-- `A006530(A028815(n+1)+1)` -/
def P9893373026366117369.Spec : Prop :=
  ∀ n, P9893373026366117369.a n = A076555 (n + 1)

end A076555

/-! ## A076555.P1540780871790049280

`A006530(A055670(n+1)+1)`
-/

namespace A076555.P1540780871790049280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A055670 (n + 1) + 1).toNat

end

end A076555.P1540780871790049280

namespace A076555

/-- `A006530(A055670(n+1)+1)` -/
def P1540780871790049280.Spec : Prop :=
  ∀ n, P1540780871790049280.a n = A076555 (n + 1)

end A076555

/-! ## A076555.P12987072160364590448

`A006530(A000040(n+1)+2)`
-/

namespace A076555.P12987072160364590448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 1) + 2).toNat

end

end A076555.P12987072160364590448

namespace A076555

/-- `A006530(A000040(n+1)+2)` -/
def P12987072160364590448.Spec : Prop :=
  ∀ n, P12987072160364590448.a n = A076555 (n + 1)

end A076555

/-! ## A076555.P14335561747077314012

`A006530(A113935(n+1)-1)`
-/

namespace A076555.P14335561747077314012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A113935 (n + 1) - 1).toNat

end

end A076555.P14335561747077314012

namespace A076555

/-- `A006530(A113935(n+1)-1)` -/
def P14335561747077314012.Spec : Prop :=
  ∀ n, P14335561747077314012.a n = A076555 (n + 1)

theorem P14335561747077314012.correct : P14335561747077314012.Spec := by
  intro n
  simp only [A076555, Nat.add_sub_cancel, A076555.P14335561747077314012.a, A076555.P7673371548901123607.a, A006530, A006530.P13372528560459906635.a, A052147, A052147.P15217781913070555828.a, A113935, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076555

/-! ## A076555.P347705841219821171

`A006530(A006093(n+1)+3)`
-/

namespace A076555.P347705841219821171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006093 (n + 1) + 3).toNat

end

end A076555.P347705841219821171

namespace A076555

/-- `A006530(A006093(n+1)+3)` -/
def P347705841219821171.Spec : Prop :=
  ∀ n, P347705841219821171.a n = A076555 (n + 1)

theorem P347705841219821171.correct : P347705841219821171.Spec := by
  intro n
  simp only [A076555, Nat.add_sub_cancel, A076555.P347705841219821171.a, A076555.P7673371548901123607.a, A006093, A006093.P2906174024863549003.a, A006530, A006530.P13372528560459906635.a, A052147, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076555

/-! ## A076555.P2156068753581411666

`A006530(A008578(n+2)+2)`
-/

namespace A076555.P2156068753581411666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008578 (n + 2) + 2).toNat

end

end A076555.P2156068753581411666

namespace A076555

/-- `A006530(A008578(n+2)+2)` -/
def P2156068753581411666.Spec : Prop :=
  ∀ n, P2156068753581411666.a n = A076555 (n + 1)

end A076555

/-! ## A076555.P8317092333186579700

`A006530(A175221(n+1)-2)`
-/

namespace A076555.P8317092333186579700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A175221 (n + 1) - 2).toNat

end

end A076555.P8317092333186579700

namespace A076555

/-- `A006530(A175221(n+1)-2)` -/
def P8317092333186579700.Spec : Prop :=
  ∀ n, P8317092333186579700.a n = A076555 (n + 1)

theorem P8317092333186579700.correct : P8317092333186579700.Spec := by
  intro n
  simp only [A076555, Nat.add_sub_cancel, A076555.P8317092333186579700.a, A076555.P7673371548901123607.a, A006530, A006530.P13372528560459906635.a, A052147, A052147.P15217781913070555828.a, A175221, A175221.P11226718615464862765.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076555

/-! ## A076555.P7860556879744152481

`A006530(A090178(n+2)-n)`
-/

namespace A076555.P7860556879744152481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A090178 (n + 2) - (n : ℤ)).toNat

end

end A076555.P7860556879744152481

namespace A076555

/-- `A006530(A090178(n+2)-n)` -/
def P7860556879744152481.Spec : Prop :=
  ∀ n, P7860556879744152481.a n = A076555 (n + 1)

end A076555

/-! ## A076555.P14001524436018376365

`A006530(A129069(n+1)+1)`
-/

namespace A076555.P14001524436018376365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A129069 (n + 1) + 1).toNat

end

end A076555.P14001524436018376365

namespace A076555

/-- `A006530(A129069(n+1)+1)` -/
def P14001524436018376365.Spec : Prop :=
  ∀ n, P14001524436018376365.a n = A076555 (n + 1)

end A076555

/-! ## A076555.P2502484173291382036

`A006530(A089241(n+1)+2)`
-/

namespace A076555.P2502484173291382036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A089241 (n + 1) + 2).toNat

end

end A076555.P2502484173291382036

namespace A076555

/-- `A006530(A089241(n+1)+2)` -/
def P2502484173291382036.Spec : Prop :=
  ∀ n, P2502484173291382036.a n = A076555 (n + 1)

end A076555

/-! ## A076555.P12587646461615393492

`A006530(record[A162753(n)+2])`
-/

namespace A076555.P12587646461615393492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076555.P12587646461615393492

namespace A076555

/-- `A006530(record[A162753(n)+2])` -/
def P12587646461615393492.Spec : Prop :=
  ∀ n, P12587646461615393492.a n = A076555 (n + 1)

end A076555

/-! ## A076555.P2803274828400089139

`A006530(record[A051698(n)+2])`
-/

namespace A076555.P2803274828400089139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076555.P2803274828400089139

namespace A076555

/-- `A006530(record[A051698(n)+2])` -/
def P2803274828400089139.Spec : Prop :=
  ∀ n, P2803274828400089139.a n = A076555 (n + 1)

end A076555

/-! ## A076555.P13658499044964783079

`A006530(eq[n-1, ∑{d}[2-n, #]])`
-/

namespace A076555.P13658499044964783079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n)

end

end A076555.P13658499044964783079

namespace A076555

/-- `A006530(eq[n-1, ∑{d}[2-n, #]])` -/
def P13658499044964783079.Spec : Prop :=
  ∀ n, P13658499044964783079.a n = A076555 (n + 1)

end A076555

/-! ## A076555.P547776213091711748

`A086131(A100484(n+1))`
-/

namespace A076555.P547776213091711748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086131 (A100484 (n + 1)).toNat

end

end A076555.P547776213091711748

namespace A076555

/-- `A086131(A100484(n+1))` -/
def P547776213091711748.Spec : Prop :=
  ∀ n, P547776213091711748.a n = A076555 (n + 1)

end A076555

/-! ## A076555.P6907605676478604350

`A086131(A001747(n+2))`
-/

namespace A076555.P6907605676478604350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086131 (A001747 (n + 2)).toNat

end

end A076555.P6907605676478604350

namespace A076555

/-- `A086131(A001747(n+2))` -/
def P6907605676478604350.Spec : Prop :=
  ∀ n, P6907605676478604350.a n = A076555 (n + 1)

end A076555

/-! ## A076555.P2549575880704337086

`A006530(record[A100030(n+1)])`
-/

namespace A076555.P2549575880704337086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076555.P2549575880704337086

namespace A076555

/-- `A006530(record[A100030(n+1)])` -/
def P2549575880704337086.Spec : Prop :=
  ∀ n, P2549575880704337086.a n = A076555 (n + 1)

end A076555

/-! ## A076555.P16789237955572772084

`A006530(record[A227215(n+2)])`
-/

namespace A076555.P16789237955572772084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227215 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076555.P16789237955572772084

namespace A076555

/-- `A006530(record[A227215(n+2)])` -/
def P16789237955572772084.Spec : Prop :=
  ∀ n, P16789237955572772084.a n = A076555 (n + 1)

end A076555

/-!
# A076556: Greatest prime divisor of n-th prime + n.

The programs for A076556, the canonical program `A076556.P5329428728146528548` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076556 has offset 1).

The definition of A076556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076556.P2130124911227204950

`A006530(p?[abs(xor(n, -2))]+1+n)`
-/

namespace A076556.P2130124911227204950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 + (n : ℤ)).toNat

end

end A076556.P2130124911227204950

namespace A076556

/-- `A006530(p?[abs(xor(n, -2))]+1+n)` -/
def P2130124911227204950.Spec : Prop :=
  ∀ n, P2130124911227204950.a n = A076556 (n + 1)

end A076556

/-! ## A076556.P16267484003301115105

`A006530(p?[xor(1, n)+1]+1+n)`
-/

namespace A076556.P16267484003301115105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1 + n)

end

end A076556.P16267484003301115105

namespace A076556

/-- `A006530(p?[xor(1, n)+1]+1+n)` -/
def P16267484003301115105.Spec : Prop :=
  ∀ n, P16267484003301115105.a n = A076556 (n + 1)

end A076556

/-! ## A076556.P14744962216484034830

`A006530(p?[n%3+n]+1+n)`
-/

namespace A076556.P14744962216484034830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1 + n)

end

end A076556.P14744962216484034830

namespace A076556

/-- `A006530(p?[n%3+n]+1+n)` -/
def P14744962216484034830.Spec : Prop :=
  ∀ n, P14744962216484034830.a n = A076556 (n + 1)

end A076556

/-! ## A076556.P4059798166921084792

`A006530(p?[ceil(2/acot(n))]+n+1)`
-/

namespace A076556.P4059798166921084792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n + 1 : ℤ)).toNat

end

end A076556.P4059798166921084792

namespace A076556

/-- `A006530(p?[ceil(2/acot(n))]+n+1)` -/
def P4059798166921084792.Spec : Prop :=
  ∀ n, P4059798166921084792.a n = A076556 (n + 1)

end A076556

/-! ## A076556.P1182404438617786215

`A006530(p?[round(sqrt(n)+n)]+1+n)`
-/

namespace A076556.P1182404438617786215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 + (n : ℤ)).toNat

end

end A076556.P1182404438617786215

namespace A076556

/-- `A006530(p?[round(sqrt(n)+n)]+1+n)` -/
def P1182404438617786215.Spec : Prop :=
  ∀ n, P1182404438617786215.a n = A076556 (n + 1)

end A076556

/-! ## A076556.P12952723108001785183

`A006530(p?[n-(-1)^n]+n+1)`
-/

namespace A076556.P12952723108001785183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n + 1 : ℤ)).toNat

end

end A076556.P12952723108001785183

namespace A076556

/-- `A006530(p?[n-(-1)^n]+n+1)` -/
def P12952723108001785183.Spec : Prop :=
  ∀ n, P12952723108001785183.a n = A076556 (n + 1)

end A076556

/-! ## A076556.P3537686335102197263

`A006530(A014688(n+1))`
-/

namespace A076556.P3537686335102197263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A014688 (n + 1)).toNat

end

end A076556.P3537686335102197263

namespace A076556

/-- `A006530(A014688(n+1))` -/
def P3537686335102197263.Spec : Prop :=
  ∀ n, P3537686335102197263.a n = A076556 (n + 1)

end A076556

/-! ## A076556.P17711621416556713946

`A006530(A167136(n+2))`
-/

namespace A076556.P17711621416556713946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A167136 (n + 2)).toNat

end

end A076556.P17711621416556713946

namespace A076556

/-- `A006530(A167136(n+2))` -/
def P17711621416556713946.Spec : Prop :=
  ∀ n, P17711621416556713946.a n = A076556 (n + 1)

end A076556

/-! ## A076556.P16441201403346915876

`A006530(A095116(n+1)+1)`
-/

namespace A076556.P16441201403346915876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A095116 (n + 1) + 1).toNat

end

end A076556.P16441201403346915876

namespace A076556

/-- `A006530(A095116(n+1)+1)` -/
def P16441201403346915876.Spec : Prop :=
  ∀ n, P16441201403346915876.a n = A076556 (n + 1)

end A076556

/-! ## A076556.P11317092207675779817

`A006530(A090178(n+2)-1)`
-/

namespace A076556.P11317092207675779817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A090178 (n + 2) - 1).toNat

end

end A076556.P11317092207675779817

namespace A076556

/-- `A006530(A090178(n+2)-1)` -/
def P11317092207675779817.Spec : Prop :=
  ∀ n, P11317092207675779817.a n = A076556 (n + 1)

end A076556

/-! ## A076556.P10913559553050840369

`A006530(A008864(n+1)+n)`
-/

namespace A076556.P10913559553050840369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008864 (n + 1) + (n : ℤ)).toNat

end

end A076556.P10913559553050840369

namespace A076556

/-- `A006530(A008864(n+1)+n)` -/
def P10913559553050840369.Spec : Prop :=
  ∀ n, P10913559553050840369.a n = A076556 (n + 1)

end A076556

/-! ## A076556.P4184788592577247652

`A006530(A000040(n+1)+n+1)`
-/

namespace A076556.P4184788592577247652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 1) + (n + 1 : ℤ)).toNat

end

end A076556.P4184788592577247652

namespace A076556

/-- `A006530(A000040(n+1)+n+1)` -/
def P4184788592577247652.Spec : Prop :=
  ∀ n, P4184788592577247652.a n = A076556 (n + 1)

end A076556

/-! ## A076556.P9498568365290354416

`A006530(A006093(n+1)+n+2)`
-/

namespace A076556.P9498568365290354416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006093 (n + 1) + (n + 2 : ℤ)).toNat

end

end A076556.P9498568365290354416

namespace A076556

/-- `A006530(A006093(n+1)+n+2)` -/
def P9498568365290354416.Spec : Prop :=
  ∀ n, P9498568365290354416.a n = A076556 (n + 1)

end A076556

/-! ## A076556.P13373007324430178629

`A006530(A008578(n+2)+n+1)`
-/

namespace A076556.P13373007324430178629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008578 (n + 2) + (n + 1 : ℤ)).toNat

end

end A076556.P13373007324430178629

namespace A076556

/-- `A006530(A008578(n+2)+n+1)` -/
def P13373007324430178629.Spec : Prop :=
  ∀ n, P13373007324430178629.a n = A076556 (n + 1)

end A076556

/-! ## A076556.P15291080098274160859

`A006530(A000203(A000040(n+1))+n)`
-/

namespace A076556.P15291080098274160859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000203 (A000040 (n + 1)).toNat + (n : ℤ)).toNat

end

end A076556.P15291080098274160859

namespace A076556

/-- `A006530(A000203(A000040(n+1))+n)` -/
def P15291080098274160859.Spec : Prop :=
  ∀ n, P15291080098274160859.a n = A076556 (n + 1)

end A076556

/-! ## A076556.P5329428728146528548

`A000040(A061395(A000040(n+1)+n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A076556

/-- `A000040(A061395(A000040(n+1)+n+1))` -/
def P5329428728146528548.Spec : Prop :=
  ∀ n, P5329428728146528548.a n = A076556 (n + 1)

theorem P5329428728146528548.correct : P5329428728146528548.Spec := by
  intro n
  simp only [A076556, Nat.add_sub_cancel]

end A076556

/-! ## A076556.P17011493697983109886

`A006530(A006530(A100484(n+1))+n+1)`
-/

namespace A076556.P17011493697983109886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (A100484 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A076556.P17011493697983109886

namespace A076556

/-- `A006530(A006530(A100484(n+1))+n+1)` -/
def P17011493697983109886.Spec : Prop :=
  ∀ n, P17011493697983109886.a n = A076556 (n + 1)

end A076556

/-! ## A076556.P12011063080755551046

`A006530(A072055(n+1)+2*n+1)`
-/

namespace A076556.P12011063080755551046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A072055 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A076556.P12011063080755551046

namespace A076556

/-- `A006530(A072055(n+1)+2*n+1)` -/
def P12011063080755551046.Spec : Prop :=
  ∀ n, P12011063080755551046.a n = A076556 (n + 1)

end A076556

/-! ## A076556.P2762297335423482930

`A006530(A006530(A120700(n+1))+n+1)`
-/

namespace A076556.P2762297335423482930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (A120700 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A076556.P2762297335423482930

namespace A076556

/-- `A006530(A006530(A120700(n+1))+n+1)` -/
def P2762297335423482930.Spec : Prop :=
  ∀ n, P2762297335423482930.a n = A076556 (n + 1)

end A076556

/-! ## A076556.P16086664336819199091

`A100481(A000040(n+1))`
-/

namespace A076556.P16086664336819199091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100481 (A000040 (n + 1)).toNat

end

end A076556.P16086664336819199091

namespace A076556

/-- `A100481(A000040(n+1))` -/
def P16086664336819199091.Spec : Prop :=
  ∀ n, P16086664336819199091.a n = A076556 (n + 1)

end A076556

/-!
# A076557: Greatest prime divisor of (n-th prime - n).

The programs for A076557, the canonical program `A076557.P15080869135659825067` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076557 has offset 3).

The definition of A076557 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076557.P15080869135659825067

`A006530(A014689(n+3))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A076557

/-- `A006530(A014689(n+3))` -/
def P15080869135659825067.Spec : Prop :=
  ∀ n, P15080869135659825067.a n = A076557 (n + 3)

theorem P15080869135659825067.correct : P15080869135659825067.Spec := by
  intro n
  simp only [A076557, Nat.add_sub_cancel]

end A076557

/-! ## A076557.P4223836483156507630

`A006530(∑[A135732(n+1)])`
-/

namespace A076557.P4223836483156507630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076557.P4223836483156507630

namespace A076557

/-- `A006530(∑[A135732(n+1)])` -/
def P4223836483156507630.Spec : Prop :=
  ∀ n, P4223836483156507630.a n = A076557 (n + 3)

end A076557

/-! ## A076557.P12225161351677872950

`A006530(∑[A001223(n+2)]-n)`
-/

namespace A076557.P12225161351677872950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A076557.P12225161351677872950

namespace A076557

/-- `A006530(∑[A001223(n+2)]-n)` -/
def P12225161351677872950.Spec : Prop :=
  ∀ n, P12225161351677872950.a n = A076557 (n + 3)

end A076557

/-! ## A076557.P2816844528843534257

`A006530(A172367(n+1)+1-n)`
-/

namespace A076557.P2816844528843534257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A172367 (n + 1) + (1 - (n : ℤ))).toNat

end

end A076557.P2816844528843534257

namespace A076557

/-- `A006530(A172367(n+1)+1-n)` -/
def P2816844528843534257.Spec : Prop :=
  ∀ n, P2816844528843534257.a n = A076557 (n + 3)

theorem P2816844528843534257.correct : P2816844528843534257.Spec := by
  intro n
  simp only [A076557, Nat.add_sub_cancel, A076557.P2816844528843534257.a, A076557.P15080869135659825067.a, A006530, A006530.P13372528560459906635.a, A014689, A014689.P6286543075765329050.a, A172367, A172367.P6320412010058866458.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076557

/-! ## A076557.P16727356891903888399

`A006530(A173064(n+3)+2-n)`
-/

namespace A076557.P16727356891903888399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A173064 (n + 3) + (2 - (n : ℤ))).toNat

end

end A076557.P16727356891903888399

namespace A076557

/-- `A006530(A173064(n+3)+2-n)` -/
def P16727356891903888399.Spec : Prop :=
  ∀ n, P16727356891903888399.a n = A076557 (n + 3)

theorem P16727356891903888399.correct : P16727356891903888399.Spec := by
  intro n
  simp only [A076557, Nat.add_sub_cancel, A076557.P16727356891903888399.a, A076557.P15080869135659825067.a, A006530, A006530.P13372528560459906635.a, A014689, A014689.P6286543075765329050.a, A173064, A173064.P8849100773616818799.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076557

/-! ## A076557.P1439897370473493424

`A006530(A154115(n+2)-n)`
-/

namespace A076557.P1439897370473493424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A154115 (n + 2) - (n : ℤ)).toNat

end

end A076557.P1439897370473493424

namespace A076557

/-- `A006530(A154115(n+2)-n)` -/
def P1439897370473493424.Spec : Prop :=
  ∀ n, P1439897370473493424.a n = A076557 (n + 3)

theorem P1439897370473493424.correct : P1439897370473493424.Spec := by
  intro n
  simp only [A076557, Nat.add_sub_cancel, A076557.P1439897370473493424.a, A076557.P15080869135659825067.a, A006530, A006530.P13372528560459906635.a, A014689, A014689.P6286543075765329050.a, A154115, A154115.P220062109648616098.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A086801, A086801.P17699144881820784956.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076557

/-! ## A076557.P10116202735266709656

`A006530(Δ[A112997(n+2)])`
-/

namespace A076557.P10116202735266709656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112997 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A076557.P10116202735266709656

namespace A076557

/-- `A006530(Δ[A112997(n+2)])` -/
def P10116202735266709656.Spec : Prop :=
  ∀ n, P10116202735266709656.a n = A076557 (n + 3)

end A076557

/-! ## A076557.P37898569363742940

`p?[A006530(A006093(n+1)-n)]`
-/

namespace A076557.P37898569363742940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006093 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076557.P37898569363742940

namespace A076557

/-- `p?[A006530(A006093(n+1)-n)]` -/
def P37898569363742940.Spec : Prop :=
  ∀ n, P37898569363742940.a n = A076557 (n + 3)

end A076557

/-! ## A076557.P9061868671812461589

`A006530(A040976(n+3)-(n+1))`
-/

namespace A076557.P9061868671812461589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A040976 (n + 3) - (n + 1 : ℤ)).toNat

end

end A076557.P9061868671812461589

namespace A076557

/-- `A006530(A040976(n+3)-(n+1))` -/
def P9061868671812461589.Spec : Prop :=
  ∀ n, P9061868671812461589.a n = A076557 (n + 3)

theorem P9061868671812461589.correct : P9061868671812461589.Spec := by
  intro n
  simp only [A076557, Nat.add_sub_cancel, A076557.P9061868671812461589.a, A076557.P15080869135659825067.a, A006530, A006530.P13372528560459906635.a, A014689, A014689.P6286543075765329050.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076557

/-! ## A076557.P9659438677395356027

`A006530(A000040(n+3)-(n+3))`
-/

namespace A076557.P9659438677395356027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 3) - (n + 3 : ℤ)).toNat

end

end A076557.P9659438677395356027

namespace A076557

/-- `A006530(A000040(n+3)-(n+3))` -/
def P9659438677395356027.Spec : Prop :=
  ∀ n, P9659438677395356027.a n = A076557 (n + 3)

theorem P9659438677395356027.correct : P9659438677395356027.Spec := by
  intro n
  simp only [A076557, Nat.add_sub_cancel, A076557.P9659438677395356027.a, A076557.P15080869135659825067.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006530, A006530.P13372528560459906635.a, A014689, A014689.P6286543075765329050.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076557

/-! ## A076557.P18284499183945586303

`A006530(n-3-(2*n-A000040(2*n-(n-3))))`
-/

namespace A076557.P18284499183945586303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n : ℤ) - 3 - ((2 * n : ℤ) - A000040 ((2 * n : ℤ) - ((n : ℤ) - 3)).toNat)).toNat

end

end A076557.P18284499183945586303

namespace A076557

/-- `A006530(n-3-(2*n-A000040(2*n-(n-3))))` -/
def P18284499183945586303.Spec : Prop :=
  ∀ n, P18284499183945586303.a n = A076557 (n + 3)

end A076557

/-! ## A076557.P7812409318729539476

`p?[A006530(A008578(n+1)-n)]`
-/

namespace A076557.P7812409318729539476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008578 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076557.P7812409318729539476

namespace A076557

/-- `p?[A006530(A008578(n+1)-n)]` -/
def P7812409318729539476.Spec : Prop :=
  ∀ n, P7812409318729539476.a n = A076557 (n + 3)

end A076557

/-! ## A076557.P9144922216300050250

`A006530(record[A162753(2*n)-n])`
-/

namespace A076557.P9144922216300050250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076557.P9144922216300050250

namespace A076557

/-- `A006530(record[A162753(2*n)-n])` -/
def P9144922216300050250.Spec : Prop :=
  ∀ n, P9144922216300050250.a n = A076557 (n + 3)

end A076557

/-! ## A076557.P4892971062700197961

`A006530(∑[A072918(A045319(n+1))])`
-/

namespace A076557.P4892971062700197961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072918 (A045319 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076557.P4892971062700197961

namespace A076557

/-- `A006530(∑[A072918(A045319(n+1))])` -/
def P4892971062700197961.Spec : Prop :=
  ∀ n, P4892971062700197961.a n = A076557 (n + 3)

end A076557

/-! ## A076557.P6319725611014485116

`A006530(eq[2, A054546(n+1)])`
-/

namespace A076557.P6319725611014485116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A076557.P6319725611014485116

namespace A076557

/-- `A006530(eq[2, A054546(n+1)])` -/
def P6319725611014485116.Spec : Prop :=
  ∀ n, P6319725611014485116.a n = A076557 (n + 3)

end A076557

/-! ## A076557.P13601084867408236641

`A111089(A000040(n+3)-(n+3))`
-/

namespace A076557.P13601084867408236641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (A000040 (n + 3) - (n + 3 : ℤ)).toNat

end

end A076557.P13601084867408236641

namespace A076557

/-- `A111089(A000040(n+3)-(n+3))` -/
def P13601084867408236641.Spec : Prop :=
  ∀ n, P13601084867408236641.a n = A076557 (n + 3)

end A076557

/-! ## A076557.P12268699733570303423

`A006530(record[Δ[A305801(n+5)]])`
-/

namespace A076557.P12268699733570303423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076557.P12268699733570303423

namespace A076557

/-- `A006530(record[Δ[A305801(n+5)]])` -/
def P12268699733570303423.Spec : Prop :=
  ∀ n, P12268699733570303423.a n = A076557 (n + 3)

end A076557

/-! ## A076557.P1967728008563180039

`A006530(record[A048864(2*n+5)])`
-/

namespace A076557.P1967728008563180039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076557.P1967728008563180039

namespace A076557

/-- `A006530(record[A048864(2*n+5)])` -/
def P1967728008563180039.Spec : Prop :=
  ∀ n, P1967728008563180039.a n = A076557 (n + 3)

end A076557

/-! ## A076557.P10694121409206821592

`A006530(A039776(A000040(n+3)))`
-/

namespace A076557.P10694121409206821592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A039776 (A000040 (n + 3)).toNat).toNat

end

end A076557.P10694121409206821592

namespace A076557

/-- `A006530(A039776(A000040(n+3)))` -/
def P10694121409206821592.Spec : Prop :=
  ∀ n, P10694121409206821592.a n = A076557 (n + 3)

end A076557

/-! ## A076557.P12613711117516733996

`A006530(record[A006530(2*(n+1))-A230980(n+1)])`
-/

namespace A076557.P12613711117516733996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1)) - A230980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076557.P12613711117516733996

namespace A076557

/-- `A006530(record[A006530(2*(n+1))-A230980(n+1)])` -/
def P12613711117516733996.Spec : Prop :=
  ∀ n, P12613711117516733996.a n = A076557 (n + 3)

end A076557

/-!
# A076558: a(n) = r * min(e_1, ..., e_r), where n = p_1^e_1 . .... p_r^e_r is the canonical prime factorization of n, a(1) = 0.

The programs for A076558, the canonical program `A076558.P8649702641749758506` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076558 has offset 1).

The definition of A076558 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051904, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076558.P8649702641749758506

`A001221(n+1)*A051904(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A076558

/-- `A001221(n+1)*A051904(n+1)` -/
def P8649702641749758506.Spec : Prop :=
  ∀ n, P8649702641749758506.a n = A076558 (n + 1)

theorem P8649702641749758506.correct : P8649702641749758506.Spec := by
  intro n
  simp only [A076558, Nat.add_sub_cancel]

end A076558

/-! ## A076558.P16798773581490950433

`∑{e}[A062759(n+1), #]`
-/

namespace A076558.P16798773581490950433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A076558.P16798773581490950433

namespace A076558

/-- `∑{e}[A062759(n+1), #]` -/
def P16798773581490950433.Spec : Prop :=
  ∀ n, (P16798773581490950433.a n : ℤ) = A076558 (n + 1)

end A076558

/-! ## A076558.P2401127658808895667

`A001222(A062759(n+1))`
-/

namespace A076558.P2401127658808895667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A062759 (n + 1)).toNat

end

end A076558.P2401127658808895667

namespace A076558

/-- `A001222(A062759(n+1))` -/
def P2401127658808895667.Spec : Prop :=
  ∀ n, P2401127658808895667.a n = A076558 (n + 1)

end A076558

/-! ## A076558.P14158199462742098420

`A359360(A181819(n+1))`
-/

namespace A076558.P14158199462742098420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359360 (A181819 (n + 1)).toNat

end

end A076558.P14158199462742098420

namespace A076558

/-- `A359360(A181819(n+1))` -/
def P14158199462742098420.Spec : Prop :=
  ∀ n, P14158199462742098420.a n = A076558 (n + 1)

end A076558

/-! ## A076558.P13829473495562695275

`A001222((n+1)/A062760(n+1))`
-/

namespace A076558.P13829473495562695275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062760 (n + 1) : ℚ))).toNat

end

end A076558.P13829473495562695275

namespace A076558

/-- `A001222((n+1)/A062760(n+1))` -/
def P13829473495562695275.Spec : Prop :=
  ∀ n, P13829473495562695275.a n = A076558 (n + 1)

end A076558

/-! ## A076558.P6994008543935880404

`A076526((n+1)/A062760(n+1))`
-/

namespace A076558.P6994008543935880404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076526 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062760 (n + 1) : ℚ))).toNat

end

end A076558.P6994008543935880404

namespace A076558

/-- `A076526((n+1)/A062760(n+1))` -/
def P6994008543935880404.Spec : Prop :=
  ∀ n, P6994008543935880404.a n = A076558 (n + 1)

end A076558

/-! ## A076558.P14199283173126228557

`A001222(n+1)-A001222(A062760(n+1))`
-/

namespace A076558.P14199283173126228557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A062760 (n + 1)).toNat

end

end A076558.P14199283173126228557

namespace A076558

/-- `A001222(n+1)-A001222(A062760(n+1))` -/
def P14199283173126228557.Spec : Prop :=
  ∀ n, P14199283173126228557.a n = A076558 (n + 1)

end A076558

/-! ## A076558.P1286284444750940587

`A001222(A007947(n+1))*A051904(n+1)`
-/

namespace A076558.P1286284444750940587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat * A051904 (n + 1)

end

end A076558.P1286284444750940587

namespace A076558

/-- `A001222(A007947(n+1))*A051904(n+1)` -/
def P1286284444750940587.Spec : Prop :=
  ∀ n, P1286284444750940587.a n = A076558 (n + 1)

end A076558

/-! ## A076558.P3537271888096441624

`A001221(n+1)*A071178(A089247(n+1))`
-/

namespace A076558.P3537271888096441624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A071178 (A089247 (n + 1)).toNat

end

end A076558.P3537271888096441624

namespace A076558

/-- `A001221(n+1)*A071178(A089247(n+1))` -/
def P3537271888096441624.Spec : Prop :=
  ∀ n, P3537271888096441624.a n = A076558 (n + 1)

end A076558

/-! ## A076558.P3293603569500577464

`A001221(n+1)*A055396(A181819(n+1))`
-/

namespace A076558.P3293603569500577464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A055396 (A181819 (n + 1)).toNat

end

end A076558.P3293603569500577464

namespace A076558

/-- `A001221(n+1)*A055396(A181819(n+1))` -/
def P3293603569500577464.Spec : Prop :=
  ∀ n, P3293603569500577464.a n = A076558 (n + 1)

end A076558

/-! ## A076558.P7417480466909193044

`A001221(n+1)*A071178(A238745(n+1))`
-/

namespace A076558.P7417480466909193044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A071178 (A238745 (n + 1)).toNat

end

end A076558.P7417480466909193044

namespace A076558

/-- `A001221(n+1)*A071178(A238745(n+1))` -/
def P7417480466909193044.Spec : Prop :=
  ∀ n, P7417480466909193044.a n = A076558 (n + 1)

end A076558

/-! ## A076558.P3149505810746174824

`A001222(A007947(n+1)^A051904(n+1))`
-/

namespace A076558.P3149505810746174824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A007947 (n + 1) : ℚ) ^ (A051904 (n + 1) : ℤ))).toNat

end

end A076558.P3149505810746174824

namespace A076558

/-- `A001222(A007947(n+1)^A051904(n+1))` -/
def P3149505810746174824.Spec : Prop :=
  ∀ n, P3149505810746174824.a n = A076558 (n + 1)

end A076558

/-! ## A076558.P14537700554124587020

`A001222(A007947(n+1))*A071178(A089247(n+1))`
-/

namespace A076558.P14537700554124587020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat * A071178 (A089247 (n + 1)).toNat

end

end A076558.P14537700554124587020

namespace A076558

/-- `A001222(A007947(n+1))*A071178(A089247(n+1))` -/
def P14537700554124587020.Spec : Prop :=
  ∀ n, P14537700554124587020.a n = A076558 (n + 1)

end A076558

/-! ## A076558.P15320449562955174457

`A001222(A007947(n+1))*A071178(A238745(n+1))`
-/

namespace A076558.P15320449562955174457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat * A071178 (A238745 (n + 1)).toNat

end

end A076558.P15320449562955174457

namespace A076558

/-- `A001222(A007947(n+1))*A071178(A238745(n+1))` -/
def P15320449562955174457.Spec : Prop :=
  ∀ n, P15320449562955174457.a n = A076558 (n + 1)

end A076558

/-! ## A076558.P14473068563721383711

`A051904(n+1)*A087802(n+1)`
-/

namespace A076558.P14473068563721383711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (n + 1) * A087802 (n + 1)

end

end A076558.P14473068563721383711

namespace A076558

/-- `A051904(n+1)*A087802(n+1)` -/
def P14473068563721383711.Spec : Prop :=
  ∀ n, P14473068563721383711.a n = A076558 (n + 1)

end A076558

/-!
# A076559: Greatest prime divisor of n-th interprime: (prime(n) + prime(n+1))/2.

The programs for A076559, the canonical program `A076559.P8490046228483160738` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076559 has offset 2).

The definition of A076559 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076559.P8490046228483160738

`A006530(A024675(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A076559

/-- `A006530(A024675(n+1))` -/
def P8490046228483160738.Spec : Prop :=
  ∀ n, P8490046228483160738.a n = A076559 (n + 2)

theorem P8490046228483160738.correct : P8490046228483160738.Spec := by
  intro n
  simp only [A076559, Nat.add_sub_cancel]

end A076559

/-! ## A076559.P11937640016469908831

`A006530(A000040(n+2)+A000040(n+3))`
-/

namespace A076559.P11937640016469908831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 2) + A000040 (n + 3)).toNat

end

end A076559.P11937640016469908831

namespace A076559

/-- `A006530(A000040(n+2)+A000040(n+3))` -/
def P11937640016469908831.Spec : Prop :=
  ∀ n, P11937640016469908831.a n = A076559 (n + 2)

end A076559

/-! ## A076559.P9852931087221104863

`A071216(n+2)`
-/

namespace A076559.P9852931087221104863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071216 (n + 2)

end

end A076559.P9852931087221104863

namespace A076559

/-- `A071216(n+2)` -/
def P9852931087221104863.Spec : Prop :=
  ∀ n, P9852931087221104863.a n = A076559 (n + 2)

end A076559

/-! ## A076559.P5889475870155590059

`A006530(A162735(n+2))`
-/

namespace A076559.P5889475870155590059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A162735 (n + 2)).toNat

end

end A076559.P5889475870155590059

namespace A076559

/-- `A006530(A162735(n+2))` -/
def P5889475870155590059.Spec : Prop :=
  ∀ n, P5889475870155590059.a n = A076559 (n + 2)

end A076559

/-! ## A076559.P15845472385706302765

`A006530(A078444(n+2)+1)`
-/

namespace A076559.P15845472385706302765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A078444 (n + 2) + 1).toNat

end

end A076559.P15845472385706302765

namespace A076559

/-- `A006530(A078444(n+2)+1)` -/
def P15845472385706302765.Spec : Prop :=
  ∀ n, P15845472385706302765.a n = A076559 (n + 2)

end A076559

/-! ## A076559.P13025495204333352495

`A006530(A001043(n+2)/2)`
-/

namespace A076559.P13025495204333352495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A001043 (n + 2) : ℚ) / 2)).toNat

end

end A076559.P13025495204333352495

namespace A076559

/-- `A006530(A001043(n+2)/2)` -/
def P13025495204333352495.Spec : Prop :=
  ∀ n, P13025495204333352495.a n = A076559 (n + 2)

end A076559

/-! ## A076559.P11064789748222929015

`A006530(floor(sqrt(A075892(n+2))))`
-/

namespace A076559.P11064789748222929015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.sqrt (A075892 (n + 2))).toNat

end

end A076559.P11064789748222929015

namespace A076559

/-- `A006530(floor(sqrt(A075892(n+2))))` -/
def P11064789748222929015.Spec : Prop :=
  ∀ n, P11064789748222929015.a n = A076559 (n + 2)

end A076559

/-! ## A076559.P17098201394163675232

`A006530(ceil(sqrt(A006094(n+2))))`
-/

namespace A076559.P17098201394163675232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌈Real.sqrt (A006094 (n + 2) : ℝ)⌉.toNat

end

end A076559.P17098201394163675232

namespace A076559

/-- `A006530(ceil(sqrt(A006094(n+2))))` -/
def P17098201394163675232.Spec : Prop :=
  ∀ n, P17098201394163675232.a n = A076559 (n + 2)

end A076559

/-! ## A076559.P18152575727612480599

`A006530(round(sqrt(A006094(n+2))))`
-/

namespace A076559.P18152575727612480599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A006094 (n + 2) : ℝ))).toNat

end

end A076559.P18152575727612480599

namespace A076559

/-- `A006530(round(sqrt(A006094(n+2))))` -/
def P18152575727612480599.Spec : Prop :=
  ∀ n, P18152575727612480599.a n = A076559 (n + 2)

end A076559

/-! ## A076559.P12753021463275356185

`A006530(Δ[A061802(n+1)/2])`
-/

namespace A076559.P12753021463275356185
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061802 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A076559.P12753021463275356185

namespace A076559

/-- `A006530(Δ[A061802(n+1)/2])` -/
def P12753021463275356185.Spec : Prop :=
  ∀ n, P12753021463275356185.a n = A076559 (n + 2)

end A076559

/-! ## A076559.P4720349318222307637

`A006530(Δ[A102724(n+1)/2])`
-/

namespace A076559.P4720349318222307637
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102724 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A076559.P4720349318222307637

namespace A076559

/-- `A006530(Δ[A102724(n+1)/2])` -/
def P4720349318222307637.Spec : Prop :=
  ∀ n, P4720349318222307637.a n = A076559 (n + 2)

end A076559

/-! ## A076559.P1331118498983554633

`A006530(A024678(n+1)+2+n)`
-/

namespace A076559.P1331118498983554633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024678 (n + 1) + 2 + (n : ℤ)).toNat

end

end A076559.P1331118498983554633

namespace A076559

/-- `A006530(A024678(n+1)+2+n)` -/
def P1331118498983554633.Spec : Prop :=
  ∀ n, P1331118498983554633.a n = A076559 (n + 2)

theorem P1331118498983554633.correct : P1331118498983554633.Spec := by
  intro n
  simp only [A076559, Nat.add_sub_cancel, A076559.P1331118498983554633.a, A076559.P8490046228483160738.a, A006530, A006530.P13372528560459906635.a, A024675, A024675.P1773648843625354992.a, A024678, A024678.P7047042052226671607.a, A001043, A001043.P18269783162673735460.a, A070229, A070229.P5792893597916963980.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076559

/-! ## A076559.P12116829377625322602

`A006530(A001043(n+2))`
-/

namespace A076559.P12116829377625322602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001043 (n + 2)).toNat

end

end A076559.P12116829377625322602

namespace A076559

/-- `A006530(A001043(n+2))` -/
def P12116829377625322602.Spec : Prop :=
  ∀ n, P12116829377625322602.a n = A076559 (n + 2)

end A076559

/-! ## A076559.P5257049869693017025

`A006530(A011974(n+3))`
-/

namespace A076559.P5257049869693017025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A011974 (n + 3)).toNat

end

end A076559.P5257049869693017025

namespace A076559

/-- `A006530(A011974(n+3))` -/
def P5257049869693017025.Spec : Prop :=
  ∀ n, P5257049869693017025.a n = A076559 (n + 2)

end A076559

/-! ## A076559.P12147844332345446299

`A006530(Δ[A061802(n+1)])`
-/

namespace A076559.P12147844332345446299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A076559.P12147844332345446299

namespace A076559

/-- `A006530(Δ[A061802(n+1)])` -/
def P12147844332345446299.Spec : Prop :=
  ∀ n, P12147844332345446299.a n = A076559 (n + 2)

end A076559

/-! ## A076559.P3241732557952350771

`A006530(Δ[A102724(n+1)])`
-/

namespace A076559.P3241732557952350771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A076559.P3241732557952350771

namespace A076559

/-- `A006530(Δ[A102724(n+1)])` -/
def P3241732557952350771.Spec : Prop :=
  ∀ n, P3241732557952350771.a n = A076559 (n + 2)

end A076559

/-! ## A076559.P4605123905569340269

`A006530(A092949(n+2)-1)`
-/

namespace A076559.P4605123905569340269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A092949 (n + 2) - 1).toNat

end

end A076559.P4605123905569340269

namespace A076559

/-- `A006530(A092949(n+2)-1)` -/
def P4605123905569340269.Spec : Prop :=
  ∀ n, P4605123905569340269.a n = A076559 (n + 2)

end A076559

/-! ## A076559.P3612187760074739254

`A006530((A096277(n+1)+A031131(n+1))/2)`
-/

namespace A076559.P3612187760074739254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A096277 (n + 1) + A031131 (n + 1) : ℚ) / 2)).toNat

end

end A076559.P3612187760074739254

namespace A076559

/-- `A006530((A096277(n+1)+A031131(n+1))/2)` -/
def P3612187760074739254.Spec : Prop :=
  ∀ n, P3612187760074739254.a n = A076559 (n + 2)

end A076559

/-!
# A076560: a(1)=1; a(n>1)= greatest prime divisor of (a(n-1) + n).

The programs for A076560, the canonical program `A076560.P6572053109122002493` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076560 has offset 1).

The definition of A076560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076560.P6572053109122002493

`A006530(a(n-1)+1+n)` with `a(0)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A076560

/-- `A006530(a(n-1)+1+n)` -/
def P6572053109122002493.Spec : Prop :=
  ∀ n, P6572053109122002493.a n = A076560 (n + 1)

theorem P6572053109122002493.correct : P6572053109122002493.Spec := by
  intro n
  simp only [A076560, Nat.add_sub_cancel]

end A076560

/-! ## A076560.P12930146077933597445

`A006530(n-xor(-1, a(n-1)))` with `a(0)=1`
-/

namespace A076560.P12930146077933597445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 ((n : ℤ) - Int.xor (-1) (a (n - 1))).toNat

end

end A076560.P12930146077933597445

namespace A076560

/-- `A006530(n-xor(-1, a(n-1)))` -/
def P12930146077933597445.Spec : Prop :=
  ∀ n, P12930146077933597445.a n = A076560 (n + 1)

end A076560

/-! ## A076560.P7652566140004532086

`A006530(a(n-1)-(n-Δ[n²]))` with `a(0)=1`
-/

namespace A076560.P7652566140004532086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (a (n - 1) - ((n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))).toNat

end

end A076560.P7652566140004532086

namespace A076560

/-- `A006530(a(n-1)-(n-Δ[n²]))` -/
def P7652566140004532086.Spec : Prop :=
  ∀ n, P7652566140004532086.a n = A076560 (n + 1)

theorem P7652566140004532086.correct : P7652566140004532086.Spec := by
  intro n
  simp only [A076560, Nat.add_sub_cancel, A076560.P7652566140004532086.f1, A076560.P7652566140004532086.a, A076560.P6572053109122002493.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A076560

/-! ## A076560.P1572700146609744663

`A006530(1-(n-2*n-a(n-1)))` with `a(0)=1`
-/

namespace A076560.P1572700146609744663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (1 - ((n : ℤ) - (2 * n : ℤ) - a (n - 1))).toNat

end

end A076560.P1572700146609744663

namespace A076560

/-- `A006530(1-(n-2*n-a(n-1)))` -/
def P1572700146609744663.Spec : Prop :=
  ∀ n, P1572700146609744663.a n = A076560 (n + 1)

end A076560

/-! ## A076560.P14175934346598514508

`A111089(a(n-1)+n+1)` with `a(0)=1`
-/

namespace A076560.P14175934346598514508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A111089 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A076560.P14175934346598514508

namespace A076560

/-- `A111089(a(n-1)+n+1)` -/
def P14175934346598514508.Spec : Prop :=
  ∀ n, P14175934346598514508.a n = A076560 (n + 1)

end A076560

/-! ## A076560.P13399039372662264479

`A068211((a(n-1)+n+1)²)` with `a(0)=1`
-/

namespace A076560.P13399039372662264479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A068211 ((a (n - 1) + (n + 1 : ℤ)) ^ 2).toNat

end

end A076560.P13399039372662264479

namespace A076560

/-- `A068211((a(n-1)+n+1)²)` -/
def P13399039372662264479.Spec : Prop :=
  ∀ n, P13399039372662264479.a n = A076560 (n + 1)

end A076560

/-! ## A076560.P2483997536930792538

`A082061((a(n-1)+n+1)²)` with `a(0)=1`
-/

namespace A076560.P2483997536930792538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A082061 ((a (n - 1) + (n + 1 : ℤ)) ^ 2).toNat

end

end A076560.P2483997536930792538

namespace A076560

/-- `A082061((a(n-1)+n+1)²)` -/
def P2483997536930792538.Spec : Prop :=
  ∀ n, P2483997536930792538.a n = A076560 (n + 1)

end A076560

/-! ## A076560.P3882077118777162032

`A085392((a(n-1)+n+1)²)` with `a(0)=1`
-/

namespace A076560.P3882077118777162032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085392 ((a (n - 1) + (n + 1 : ℤ)) ^ 2).toNat

end

end A076560.P3882077118777162032

namespace A076560

/-- `A085392((a(n-1)+n+1)²)` -/
def P3882077118777162032.Spec : Prop :=
  ∀ n, P3882077118777162032.a n = A076560 (n + 1)

end A076560

/-! ## A076560.P3884533811736869241

`A087039((a(n-1)+n+1)²)` with `a(0)=1`
-/

namespace A076560.P3884533811736869241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087039 ((a (n - 1) + (n + 1 : ℤ)) ^ 2).toNat

end

end A076560.P3884533811736869241

namespace A076560

/-- `A087039((a(n-1)+n+1)²)` -/
def P3884533811736869241.Spec : Prop :=
  ∀ n, P3884533811736869241.a n = A076560 (n + 1)

end A076560

/-! ## A076560.P9959795570441002222

`A189172((a(n-1)+n+1)²)` with `a(0)=1`
-/

namespace A076560.P9959795570441002222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A189172 ((a (n - 1) + (n + 1 : ℤ)) ^ 2).toNat

end

end A076560.P9959795570441002222

namespace A076560

/-- `A189172((a(n-1)+n+1)²)` -/
def P9959795570441002222.Spec : Prop :=
  ∀ n, P9959795570441002222.a n = A076560 (n + 1)

end A076560

/-!
# A076561: a(1)=2; a(n>1)= greatest prime divisor of {a(n-1) + n}.

The programs for A076561, the canonical program `A076561.P13951901980164501420` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076561 has offset 1).

The definition of A076561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076561.P13951901980164501420

`A006530(a(n-1)+1+n)` with `a(0)=2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A076561

/-- `A006530(a(n-1)+1+n)` -/
def P13951901980164501420.Spec : Prop :=
  ∀ n, P13951901980164501420.a n = A076561 (n + 1)

theorem P13951901980164501420.correct : P13951901980164501420.Spec := by
  intro n
  simp only [A076561, Nat.add_sub_cancel]

end A076561

/-! ## A076561.P1639912095626503746

`A006530(a(n-1)-xor(n, -1))` with `a(0)=2`
-/

namespace A076561.P1639912095626503746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 (a (n - 1) - Int.xor (n : ℤ) (-1)).toNat

end

end A076561.P1639912095626503746

namespace A076561

/-- `A006530(a(n-1)-xor(n, -1))` -/
def P1639912095626503746.Spec : Prop :=
  ∀ n, P1639912095626503746.a n = A076561 (n + 1)

end A076561

/-! ## A076561.P14635609720659299007

`A006530(a(xor(-1, -n))+n+1)` with `a(0)=2`
-/

namespace A076561.P14635609720659299007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 (a (Int.xor (-1) (-(n : ℤ))).toNat + (n + 1 : ℤ)).toNat

end

end A076561.P14635609720659299007

namespace A076561

/-- `A006530(a(xor(-1, -n))+n+1)` -/
def P14635609720659299007.Spec : Prop :=
  ∀ n, P14635609720659299007.a n = A076561 (n + 1)

end A076561

/-! ## A076561.P14707179231416721580

`A006530(a(n-1)-(n-Δ[n²]))` with `a(0)=2`
-/

namespace A076561.P14707179231416721580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 (a (n - 1) - ((n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))).toNat

end

end A076561.P14707179231416721580

namespace A076561

/-- `A006530(a(n-1)-(n-Δ[n²]))` -/
def P14707179231416721580.Spec : Prop :=
  ∀ n, P14707179231416721580.a n = A076561 (n + 1)

theorem P14707179231416721580.correct : P14707179231416721580.Spec := by
  intro n
  simp only [A076561, Nat.add_sub_cancel, A076561.P14707179231416721580.f1, A076561.P14707179231416721580.a, A076561.P13951901980164501420.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A076561

/-! ## A076561.P10777245694663625746

`A006530(1-(n-2*n-a(n-1)))` with `a(0)=2`
-/

namespace A076561.P10777245694663625746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 (1 - ((n : ℤ) - (2 * n : ℤ) - a (n - 1))).toNat

end

end A076561.P10777245694663625746

namespace A076561

/-- `A006530(1-(n-2*n-a(n-1)))` -/
def P10777245694663625746.Spec : Prop :=
  ∀ n, P10777245694663625746.a n = A076561 (n + 1)

end A076561

/-! ## A076561.P2068722209446548854

`A006530(A116919(n+1))`
-/

namespace A076561.P2068722209446548854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A116919 (n + 1)).toNat

end

end A076561.P2068722209446548854

namespace A076561

/-- `A006530(A116919(n+1))` -/
def P2068722209446548854.Spec : Prop :=
  ∀ n, P2068722209446548854.a n = A076561 (n + 1)

end A076561

/-! ## A076561.P14270861783631061831

`A006530(A000203(a(n-1))+n)` with `a(0)=2`
-/

namespace A076561.P14270861783631061831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 (A000203 (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A076561.P14270861783631061831

namespace A076561

/-- `A006530(A000203(a(n-1))+n)` -/
def P14270861783631061831.Spec : Prop :=
  ∀ n, P14270861783631061831.a n = A076561 (n + 1)

end A076561

/-! ## A076561.P13267692134060996320

`A006530(2*n-(n-A000203(a(n-1))))` with `a(0)=2`
-/

namespace A076561.P13267692134060996320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 ((2 * n : ℤ) - ((n : ℤ) - A000203 (a (n - 1)).toNat)).toNat

end

end A076561.P13267692134060996320

namespace A076561

/-- `A006530(2*n-(n-A000203(a(n-1))))` -/
def P13267692134060996320.Spec : Prop :=
  ∀ n, P13267692134060996320.a n = A076561 (n + 1)

end A076561

/-! ## A076561.P17548592079855559449

`p?[A116919(n)-n]`
-/

namespace A076561.P17548592079855559449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116919 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076561.P17548592079855559449

namespace A076561

/-- `p?[A116919(n)-n]` -/
def P17548592079855559449.Spec : Prop :=
  ∀ n, P17548592079855559449.a n = A076561 (n + 1)

end A076561

/-! ## A076561.P8496329990541999861

`A116919(n+2)-(n+2)`
-/

namespace A076561.P8496329990541999861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116919 (n + 2) - (n + 2 : ℤ)

end

end A076561.P8496329990541999861

namespace A076561

/-- `A116919(n+2)-(n+2)` -/
def P8496329990541999861.Spec : Prop :=
  ∀ n, P8496329990541999861.a n = A076561 (n + 1)

end A076561

/-! ## A076561.P1975513339475555033

`A111089(a(n-1)+n+1)` with `a(0)=2`
-/

namespace A076561.P1975513339475555033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A111089 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A076561.P1975513339475555033

namespace A076561

/-- `A111089(a(n-1)+n+1)` -/
def P1975513339475555033.Spec : Prop :=
  ∀ n, P1975513339475555033.a n = A076561 (n + 1)

end A076561

/-!
# A076562: a(1)=3; a(n>1)= greatest prime divisor of a(n-1) + n.

The programs for A076562, the canonical program `A076562.P2465950073859678297` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076562 has offset 1).

The definition of A076562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076562.P2465950073859678297

`A006530(a(n-1)+1+n)` with `a(0)=3`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A076562

/-- `A006530(a(n-1)+1+n)` -/
def P2465950073859678297.Spec : Prop :=
  ∀ n, P2465950073859678297.a n = A076562 (n + 1)

theorem P2465950073859678297.correct : P2465950073859678297.Spec := by
  intro n
  simp only [A076562, Nat.add_sub_cancel]

end A076562

/-! ## A076562.P9993818212031093025

`A006530(n-xor(-1, a(n-1)))` with `a(0)=3`
-/

namespace A076562.P9993818212031093025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A006530 ((n : ℤ) - Int.xor (-1) (a (n - 1))).toNat

end

end A076562.P9993818212031093025

namespace A076562

/-- `A006530(n-xor(-1, a(n-1)))` -/
def P9993818212031093025.Spec : Prop :=
  ∀ n, P9993818212031093025.a n = A076562 (n + 1)

end A076562

/-! ## A076562.P1767753464760438268

`A006530(2*n-(n-1-a(n-1)))` with `a(0)=3`
-/

namespace A076562.P1767753464760438268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A006530 ((2 * n : ℤ) - ((n : ℤ) - 1 - a (n - 1))).toNat

end

end A076562.P1767753464760438268

namespace A076562

/-- `A006530(2*n-(n-1-a(n-1)))` -/
def P1767753464760438268.Spec : Prop :=
  ∀ n, P1767753464760438268.a n = A076562 (n + 1)

end A076562

/-! ## A076562.P14984698238271149377

`A006530(a((2*n)%(n+1))+n+1)` with `a(0)=3`
-/

namespace A076562.P14984698238271149377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A006530 (a (2 * n % (n + 1)) + (n + 1 : ℤ)).toNat

end

end A076562.P14984698238271149377

namespace A076562

/-- `A006530(a((2*n)%(n+1))+n+1)` -/
def P14984698238271149377.Spec : Prop :=
  ∀ n, P14984698238271149377.a n = A076562 (n + 1)

end A076562

/-! ## A076562.P14184426478645510265

`A006530(A000203(a(n-1))+n)` with `a(0)=3`
-/

namespace A076562.P14184426478645510265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A006530 (A000203 (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A076562.P14184426478645510265

namespace A076562

/-- `A006530(A000203(a(n-1))+n)` -/
def P14184426478645510265.Spec : Prop :=
  ∀ n, P14184426478645510265.a n = A076562 (n + 1)

end A076562

/-! ## A076562.P5516738481957073993

`A111089(a(n-1)+n+1)` with `a(0)=3`
-/

namespace A076562.P5516738481957073993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A111089 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A076562.P5516738481957073993

namespace A076562

/-- `A111089(a(n-1)+n+1)` -/
def P5516738481957073993.Spec : Prop :=
  ∀ n, P5516738481957073993.a n = A076562 (n + 1)

end A076562

/-!
# A076563: a(n) = n - greatest prime divisor of n, for n>1.

The programs for A076563, the canonical program `A076563.P4071807998228768681` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076563 has offset 2).

The definition of A076563 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076563.P4071807998228768681

`n+2-A006530(n+2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A076563

/-- `n+2-A006530(n+2)` -/
def P4071807998228768681.Spec : Prop :=
  ∀ n, P4071807998228768681.a n = A076563 (n + 2)

theorem P4071807998228768681.correct : P4071807998228768681.Spec := by
  intro n
  simp only [A076563, Nat.add_sub_cancel]

end A076563

/-! ## A076563.P1824671275853299591

`∑[Δ[-A006530(n+1)]+1]`
-/

namespace A076563.P1824671275853299591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076563.P1824671275853299591

namespace A076563

/-- `∑[Δ[-A006530(n+1)]+1]` -/
def P1824671275853299591.Spec : Prop :=
  ∀ n, P1824671275853299591.a n = A076563 (n + 2)

end A076563

/-! ## A076563.P306177090895797638

`n-n%A006530(n-log2(1/4))`
-/

namespace A076563.P306177090895797638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (n : ℤ) (A006530 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 4 : ℝ))).toNat)

end

end A076563.P306177090895797638

namespace A076563

/-- `n-n%A006530(n-log2(1/4))` -/
def P306177090895797638.Spec : Prop :=
  ∀ n, P306177090895797638.a n = A076563 (n + 2)

end A076563

/-! ## A076563.P14418420788886443055

`∑[1-Δ[A006530(2*n-(n-1))]]`
-/

namespace A076563.P14418420788886443055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076563.P14418420788886443055

namespace A076563

/-- `∑[1-Δ[A006530(2*n-(n-1))]]` -/
def P14418420788886443055.Spec : Prop :=
  ∀ n, P14418420788886443055.a n = A076563 (n + 2)

end A076563

/-! ## A076563.P7257636103581988507

`(2*(n+1))%(A006530(2*(n+2))+n)`
-/

namespace A076563.P7257636103581988507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (n + 1) : ℤ) (A006530 (2 * (n + 2)) + (n : ℤ))

end

end A076563.P7257636103581988507

namespace A076563

/-- `(2*(n+1))%(A006530(2*(n+2))+n)` -/
def P7257636103581988507.Spec : Prop :=
  ∀ n, P7257636103581988507.a n = A076563 (n + 2)

end A076563

/-! ## A076563.P2057043972499914349

`n-A003966(A006530(n+2))`
-/

namespace A076563.P2057043972499914349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A003966 (A006530 (n + 2)).toNat

end

end A076563.P2057043972499914349

namespace A076563

/-- `n-A003966(A006530(n+2))` -/
def P2057043972499914349.Spec : Prop :=
  ∀ n, P2057043972499914349.a n = A076563 (n + 2)

end A076563

/-! ## A076563.P6255541400038907877

`n-A040976(A061395(n+2))`
-/

namespace A076563.P6255541400038907877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A040976 (A061395 (n + 2)).toNat

end

end A076563.P6255541400038907877

namespace A076563

/-- `n-A040976(A061395(n+2))` -/
def P6255541400038907877.Spec : Prop :=
  ∀ n, P6255541400038907877.a n = A076563 (n + 2)

end A076563

/-! ## A076563.P9577611188265201492

`n+1-A090624(A007947(n+2))`
-/

namespace A076563.P9577611188265201492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A090624 (A007947 (n + 2)).toNat

end

end A076563.P9577611188265201492

namespace A076563

/-- `n+1-A090624(A007947(n+2))` -/
def P9577611188265201492.Spec : Prop :=
  ∀ n, P9577611188265201492.a n = A076563 (n + 2)

end A076563

/-! ## A076563.P6838990967007904456

`n+1-A070777(n+2)`
-/

namespace A076563.P6838990967007904456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A070777 (n + 2)

end

end A076563.P6838990967007904456

namespace A076563

/-- `n+1-A070777(n+2)` -/
def P6838990967007904456.Spec : Prop :=
  ∀ n, P6838990967007904456.a n = A076563 (n + 2)

end A076563

/-! ## A076563.P15138269363640034092

`2-A111089(n+2)+n`
-/

namespace A076563.P15138269363640034092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A111089 (n + 2) + (n : ℤ)

end

end A076563.P15138269363640034092

namespace A076563

/-- `2-A111089(n+2)+n` -/
def P15138269363640034092.Spec : Prop :=
  ∀ n, P15138269363640034092.a n = A076563 (n + 2)

end A076563

/-! ## A076563.P2633213340414696999

`2*(n+2)-A070229(n+2)`
-/

namespace A076563.P2633213340414696999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A070229 (n + 2)

end

end A076563.P2633213340414696999

namespace A076563

/-- `2*(n+2)-A070229(n+2)` -/
def P2633213340414696999.Spec : Prop :=
  ∀ n, P2633213340414696999.a n = A076563 (n + 2)

theorem P2633213340414696999.correct : P2633213340414696999.Spec := by
  intro n
  simp only [A076563, Nat.add_sub_cancel, A076563.P2633213340414696999.a, A076563.P4071807998228768681.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076563

/-! ## A076563.P1086900417310762669

`n+2-A053585(∏{p}[n+2, #])`
-/

namespace A076563.P1086900417310762669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A053585 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A076563.P1086900417310762669

namespace A076563

/-- `n+2-A053585(∏{p}[n+2, #])` -/
def P1086900417310762669.Spec : Prop :=
  ∀ n, P1086900417310762669.a n = A076563 (n + 2)

end A076563

/-! ## A076563.P11377964587133824619

`n-A003966(A111089(n+2))`
-/

namespace A076563.P11377964587133824619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A003966 (A111089 (n + 2)).toNat

end

end A076563.P11377964587133824619

namespace A076563

/-- `n-A003966(A111089(n+2))` -/
def P11377964587133824619.Spec : Prop :=
  ∀ n, P11377964587133824619.a n = A076563 (n + 2)

end A076563

/-! ## A076563.P12817476745640514136

`n+1-A000010(A299766(n+2))`
-/

namespace A076563.P12817476745640514136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000010 (A299766 (n + 2)).toNat

end

end A076563.P12817476745640514136

namespace A076563

/-- `n+1-A000010(A299766(n+2))` -/
def P12817476745640514136.Spec : Prop :=
  ∀ n, P12817476745640514136.a n = A076563 (n + 2)

end A076563

/-! ## A076563.P1332889631483485689

`n+2-A002034(A088835(n+2))`
-/

namespace A076563.P1332889631483485689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A002034 (A088835 (n + 2)).toNat

end

end A076563.P1332889631483485689

namespace A076563

/-- `n+2-A002034(A088835(n+2))` -/
def P1332889631483485689.Spec : Prop :=
  ∀ n, P1332889631483485689.a n = A076563 (n + 2)

end A076563

/-! ## A076563.P6159062809033565087

`n+2-A067695(A053585(n+2))`
-/

namespace A076563.P6159062809033565087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A067695 (A053585 (n + 2)).toNat

end

end A076563.P6159062809033565087

namespace A076563

/-- `n+2-A067695(A053585(n+2))` -/
def P6159062809033565087.Spec : Prop :=
  ∀ n, P6159062809033565087.a n = A076563 (n + 2)

end A076563

/-! ## A076563.P766977391946211888

`n+2-A079068(A117366(n+2))`
-/

namespace A076563.P766977391946211888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A079068 (A117366 (n + 2)).toNat

end

end A076563.P766977391946211888

namespace A076563

/-- `n+2-A079068(A117366(n+2))` -/
def P766977391946211888.Spec : Prop :=
  ∀ n, P766977391946211888.a n = A076563 (n + 2)

end A076563

/-! ## A076563.P8533873756195964885

`A144396(n+2)-(A070229(n+2)+1)`
-/

namespace A076563.P8533873756195964885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 2) - (A070229 (n + 2) + 1)

end

end A076563.P8533873756195964885

namespace A076563

/-- `A144396(n+2)-(A070229(n+2)+1)` -/
def P8533873756195964885.Spec : Prop :=
  ∀ n, P8533873756195964885.a n = A076563 (n + 2)

theorem P8533873756195964885.correct : P8533873756195964885.Spec := by
  intro n
  simp only [A076563, Nat.add_sub_cancel, A076563.P8533873756195964885.a, A076563.P4071807998228768681.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, A144396, A144396.P18396969748453668116.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076563

/-! ## A076563.P4383898576840036553

`n-A046665(2*(n+2))`
-/

namespace A076563.P4383898576840036553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A046665 (2 * (n + 2))

end

end A076563.P4383898576840036553

namespace A076563

/-- `n-A046665(2*(n+2))` -/
def P4383898576840036553.Spec : Prop :=
  ∀ n, P4383898576840036553.a n = A076563 (n + 2)

end A076563

/-! ## A076563.P7852859530257960544

`n-A111426(A065896(n+2))`
-/

namespace A076563.P7852859530257960544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A111426 (A065896 (n + 2)).toNat

end

end A076563.P7852859530257960544

namespace A076563

/-- `n-A111426(A065896(n+2))` -/
def P7852859530257960544.Spec : Prop :=
  ∀ n, P7852859530257960544.a n = A076563 (n + 2)

end A076563

/-!
# A076564: List of numbers k such that the k-th Fibonacci number (A000045) does not contain the digit zero.

The programs for A076564, there is no canonical definition to state claims against.
-/

/-! ## A076564.P6454445859288163992

`eq[0, A085854(n)]`
-/

namespace A076564.P6454445859288163992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085854 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076564.P6454445859288163992

/-! ## A076564.P6700862275244968148

`lt[0, ∏{digits}[A000045(n), #]]`
-/

namespace A076564.P6700862275244968148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n).natAbs).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A076564.P6700862275244968148

/-! ## A076564.P3541009188660574911

`lt[A085854(n+1), 1]+1`
-/

namespace A076564.P3541009188660574911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085854 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A076564.P3541009188660574911

/-! ## A076564.P16259237453884704360

`A000027(lt[A085854(n), 1])`
-/

namespace A076564.P16259237453884704360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085854 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A076564.P16259237453884704360

/-! ## A076564.P1059939836958787129

`A028310(lt[A085854(n), 1])`
-/

namespace A076564.P1059939836958787129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085854 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A076564.P1059939836958787129

/-!
# A076565: Greatest prime divisor of 2n+1 (sum of two successive integers).

The programs for A076565, the canonical program `A076565.P14706420899526487685` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076565 has offset 1).

The definition of A076565 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076565.P14706420899526487685

`A006530(2*(n+1)+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A076565

/-- `A006530(2*(n+1)+1)` -/
def P14706420899526487685.Spec : Prop :=
  ∀ n, P14706420899526487685.a n = A076565 (n + 1)

theorem P14706420899526487685.correct : P14706420899526487685.Spec := by
  intro n
  simp only [A076565, Nat.add_sub_cancel]

end A076565

/-! ## A076565.P11299260450179048877

`p?[A006530(gcd(n, or(1, n)))]`
-/

namespace A076565.P11299260450179048877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.gcd n (Nat.lor 1 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076565.P11299260450179048877

namespace A076565

/-- `p?[A006530(gcd(n, or(1, n)))]` -/
def P11299260450179048877.Spec : Prop :=
  ∀ n, P11299260450179048877.a n = A076565 (n + 1)

end A076565

/-! ## A076565.P17012737294891207526

`or(1, A006530(n+3+n))`
-/

namespace A076565.P17012737294891207526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (n + 3 + n))

end

end A076565.P17012737294891207526

namespace A076565

/-- `or(1, A006530(n+3+n))` -/
def P17012737294891207526.Spec : Prop :=
  ∀ n, P17012737294891207526.a n = A076565 (n + 1)

end A076565

/-! ## A076565.P11060695700843945205

`p?[gcd(and(1, n), A006530(n+1))]`
-/

namespace A076565.P11060695700843945205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.land 1 n : ℤ) (A006530 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A076565.P11060695700843945205

namespace A076565

/-- `p?[gcd(and(1, n), A006530(n+1))]` -/
def P11060695700843945205.Spec : Prop :=
  ∀ n, (P11060695700843945205.a n : ℤ) = A076565 (n + 1)

end A076565

/-! ## A076565.P13016867127177814867

`Δ[A006530(n+1+n)+a(n-1)]` with `a(0)=0`
-/

namespace A076565.P13016867127177814867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A006530 (n + 1 + n) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076565.P13016867127177814867

namespace A076565

/-- `Δ[A006530(n+1+n)+a(n-1)]` -/
def P13016867127177814867.Spec : Prop :=
  ∀ n, P13016867127177814867.a n = A076565 (n + 1)

end A076565

/-! ## A076565.P8130408265127793921

`A000040(A061395(2*n+3))`
-/

namespace A076565.P8130408265127793921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 (2 * n + 3)).toNat

end

end A076565.P8130408265127793921

namespace A076565

/-- `A000040(A061395(2*n+3))` -/
def P8130408265127793921.Spec : Prop :=
  ∀ n, P8130408265127793921.a n = A076565 (n + 1)

end A076565

/-! ## A076565.P10340324776886074945

`A000010(lcm(2, A006530(n+3+n)))+1`
-/

namespace A076565.P10340324776886074945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lcm 2 (A006530 (n + 3 + n))) + 1

end

end A076565.P10340324776886074945

namespace A076565

/-- `A000010(lcm(2, A006530(n+3+n)))+1` -/
def P10340324776886074945.Spec : Prop :=
  ∀ n, P10340324776886074945.a n = A076565 (n + 1)

end A076565

/-! ## A076565.P437953723797663764

`A006530(n+3+n)+C(2, A000203(n+2))`
-/

namespace A076565.P437953723797663764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3 + n) + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A076565.P437953723797663764

namespace A076565

/-- `A006530(n+3+n)+C(2, A000203(n+2))` -/
def P437953723797663764.Spec : Prop :=
  ∀ n, P437953723797663764.a n = A076565 (n + 1)

end A076565

/-! ## A076565.P2489204941564804115

`A006530(n+3+n)+and(1, A000010(n+3))`
-/

namespace A076565.P2489204941564804115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3 + n) + Int.land 1 (A000010 (n + 3))

end

end A076565.P2489204941564804115

namespace A076565

/-- `A006530(n+3+n)+and(1, A000010(n+3))` -/
def P2489204941564804115.Spec : Prop :=
  ∀ n, P2489204941564804115.a n = A076565 (n + 1)

end A076565

/-! ## A076565.P16546438573534508502

`A006530(n+3+n)+A000045(C(2, n+3))`
-/

namespace A076565.P16546438573534508502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3 + n) + A000045 (Nat.choose 2 (n + 3))

end

end A076565.P16546438573534508502

namespace A076565

/-- `A006530(n+3+n)+A000045(C(2, n+3))` -/
def P16546438573534508502.Spec : Prop :=
  ∀ n, P16546438573534508502.a n = A076565 (n + 1)

end A076565

/-! ## A076565.P6497673115661880336

`A006530(n+3+n)+C(A000005(n+1), n+2)`
-/

namespace A076565.P6497673115661880336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3 + n) + (Nat.choose (A000005 (n + 1)).toNat (n + 2) : ℤ)

end

end A076565.P6497673115661880336

namespace A076565

/-- `A006530(n+3+n)+C(A000005(n+1), n+2)` -/
def P6497673115661880336.Spec : Prop :=
  ∀ n, P6497673115661880336.a n = A076565 (n + 1)

end A076565

/-! ## A076565.P11615093013187828738

`A006530(n+3+n)/A000032(gcd(n+2, n+3))`
-/

namespace A076565.P11615093013187828738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 3 + n) : ℚ) / (A000032 (Nat.gcd (n + 2) (n + 3)) : ℚ)

end

end A076565.P11615093013187828738

namespace A076565

/-- `A006530(n+3+n)/A000032(gcd(n+2, n+3))` -/
def P11615093013187828738.Spec : Prop :=
  ∀ n, P11615093013187828738.a n = (A076565 (n + 1) : ℚ)

end A076565

/-! ## A076565.P18321007646388526872

`A006530(n+3+n)/A008683(A005117(n+1))²`
-/

namespace A076565.P18321007646388526872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 3 + n) : ℚ) / (A008683 (A005117 (n + 1)).toNat ^ 2 : ℚ)

end

end A076565.P18321007646388526872

namespace A076565

/-- `A006530(n+3+n)/A008683(A005117(n+1))²` -/
def P18321007646388526872.Spec : Prop :=
  ∀ n, P18321007646388526872.a n = (A076565 (n + 1) : ℚ)

end A076565

/-! ## A076565.P17916378877009898587

`p?[A006530(Δ[n²])]`
-/

namespace A076565.P17916378877009898587
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076565.P17916378877009898587

namespace A076565

/-- `p?[A006530(Δ[n²])]` -/
def P17916378877009898587.Spec : Prop :=
  ∀ n, P17916378877009898587.a n = A076565 (n + 1)

end A076565

/-! ## A076565.P275999753549052213

`A006530(n+3+n)/gcd(2, A000040(n+2))`
-/

namespace A076565.P275999753549052213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 3 + n) : ℚ) / (Int.gcd 2 (A000040 (n + 2)) : ℚ)

end

end A076565.P275999753549052213

namespace A076565

/-- `A006530(n+3+n)/gcd(2, A000040(n+2))` -/
def P275999753549052213.Spec : Prop :=
  ∀ n, P275999753549052213.a n = (A076565 (n + 1) : ℚ)

end A076565

/-! ## A076565.P18051114517518000258

`A006530(n+3+n)+C(2, A000040(n+3))`
-/

namespace A076565.P18051114517518000258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3 + n) + (Nat.choose 2 (A000040 (n + 3)).toNat : ℤ)

end

end A076565.P18051114517518000258

namespace A076565

/-- `A006530(n+3+n)+C(2, A000040(n+3))` -/
def P18051114517518000258.Spec : Prop :=
  ∀ n, P18051114517518000258.a n = A076565 (n + 1)

end A076565

/-! ## A076565.P14932751530147753122

`A076566(2*(n+1))`
-/

namespace A076565.P14932751530147753122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076566 (2 * (n + 1))

end

end A076565.P14932751530147753122

namespace A076565

/-- `A076566(2*(n+1))` -/
def P14932751530147753122.Spec : Prop :=
  ∀ n, P14932751530147753122.a n = A076565 (n + 1)

end A076565

/-!
# A076566: Greatest prime divisor of 3n+3 (sum of three successive integers).

The programs for A076566, the canonical program `A076566.P10108082377382600414` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076566 has offset 1).

The definition of A076566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076566.P16641801504504960056

`A006530(3*(n+2))`
-/

namespace A076566.P16641801504504960056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * (n + 2))

end

end A076566.P16641801504504960056

namespace A076566

/-- `A006530(3*(n+2))` -/
def P16641801504504960056.Spec : Prop :=
  ∀ n, P16641801504504960056.a n = A076566 (n + 1)

end A076566

/-! ## A076566.P8412252261746829151

`or(1, A006530(n+2))`
-/

namespace A076566.P8412252261746829151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (n + 2))

end

end A076566.P8412252261746829151

namespace A076566

/-- `or(1, A006530(n+2))` -/
def P8412252261746829151.Spec : Prop :=
  ∀ n, P8412252261746829151.a n = A076566 (n + 1)

end A076566

/-! ## A076566.P6656673748842095981

`A069902(A006530(n+2))`
-/

namespace A076566.P6656673748842095981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069902 (A006530 (n + 2)).toNat

end

end A076566.P6656673748842095981

namespace A076566

/-- `A069902(A006530(n+2))` -/
def P6656673748842095981.Spec : Prop :=
  ∀ n, P6656673748842095981.a n = A076566 (n + 1)

end A076566

/-! ## A076566.P3825196730988087692

`A051697(A006530(n+2)+1)`
-/

namespace A076566.P3825196730988087692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (A006530 (n + 2) + 1).toNat

end

end A076566.P3825196730988087692

namespace A076566

/-- `A051697(A006530(n+2)+1)` -/
def P3825196730988087692.Spec : Prop :=
  ∀ n, P3825196730988087692.a n = A076566 (n + 1)

end A076566

/-! ## A076566.P1916701977168989206

`A063196(A006530(n+2)+1)`
-/

namespace A076566.P1916701977168989206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (A006530 (n + 2) + 1).toNat

end

end A076566.P1916701977168989206

namespace A076566

/-- `A063196(A006530(n+2)+1)` -/
def P1916701977168989206.Spec : Prop :=
  ∀ n, P1916701977168989206.a n = A076566 (n + 1)

end A076566

/-! ## A076566.P4236551363165906121

`A051698(A006530(n+2)+2)`
-/

namespace A076566.P4236551363165906121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A006530 (n + 2) + 2).toNat

end

end A076566.P4236551363165906121

namespace A076566

/-- `A051698(A006530(n+2)+2)` -/
def P4236551363165906121.Spec : Prop :=
  ∀ n, P4236551363165906121.a n = A076566 (n + 1)

end A076566

/-! ## A076566.P14688187838507829072

`A305429(A006530(n+2)+2)`
-/

namespace A076566.P14688187838507829072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305429 (A006530 (n + 2) + 2).toNat

end

end A076566.P14688187838507829072

namespace A076566

/-- `A305429(A006530(n+2)+2)` -/
def P14688187838507829072.Spec : Prop :=
  ∀ n, P14688187838507829072.a n = A076566 (n + 1)

end A076566

/-! ## A076566.P10108082377382600414

`A000040(A061395(3*(n+2)))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A076566

/-- `A000040(A061395(3*(n+2)))` -/
def P10108082377382600414.Spec : Prop :=
  ∀ n, P10108082377382600414.a n = A076566 (n + 1)

theorem P10108082377382600414.correct : P10108082377382600414.Spec := by
  intro n
  simp only [A076566, Nat.add_sub_cancel]

end A076566

/-! ## A076566.P11263739892303929487

`A006530(n+2)+2-A201219(n+2)`
-/

namespace A076566.P11263739892303929487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + (2 - A201219 (n + 2))

end

end A076566.P11263739892303929487

namespace A076566

/-- `A006530(n+2)+2-A201219(n+2)` -/
def P11263739892303929487.Spec : Prop :=
  ∀ n, P11263739892303929487.a n = A076566 (n + 1)

end A076566

/-! ## A076566.P5078825042985180611

`A117366(A007918(A008578(A061395(n+2))))`
-/

namespace A076566.P5078825042985180611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (A007918 (A008578 (A061395 (n + 2)).toNat).toNat).toNat

end

end A076566.P5078825042985180611

namespace A076566

/-- `A117366(A007918(A008578(A061395(n+2))))` -/
def P5078825042985180611.Spec : Prop :=
  ∀ n, P5078825042985180611.a n = A076566 (n + 1)

end A076566

/-! ## A076566.P8920720182017112392

`or(1, A111089(n+2))`
-/

namespace A076566.P8920720182017112392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A111089 (n + 2))

end

end A076566.P8920720182017112392

namespace A076566

/-- `or(1, A111089(n+2))` -/
def P8920720182017112392.Spec : Prop :=
  ∀ n, P8920720182017112392.a n = A076566 (n + 1)

end A076566

/-! ## A076566.P17912786963966689530

`A069902(A111089(n+2))`
-/

namespace A076566.P17912786963966689530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069902 (A111089 (n + 2)).toNat

end

end A076566.P17912786963966689530

namespace A076566

/-- `A069902(A111089(n+2))` -/
def P17912786963966689530.Spec : Prop :=
  ∀ n, P17912786963966689530.a n = A076566 (n + 1)

end A076566

/-! ## A076566.P3957380974507868176

`A080512(A006530(A080512(n+2)))`
-/

namespace A076566.P3957380974507868176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (A006530 (A080512 (n + 2)).toNat).toNat

end

end A076566.P3957380974507868176

namespace A076566

/-- `A080512(A006530(A080512(n+2)))` -/
def P3957380974507868176.Spec : Prop :=
  ∀ n, P3957380974507868176.a n = A076566 (n + 1)

end A076566

/-! ## A076566.P14543517993489419660

`A136548(A006530(n+2)+2)`
-/

namespace A076566.P14543517993489419660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A006530 (n + 2) + 2).toNat

end

end A076566.P14543517993489419660

namespace A076566

/-- `A136548(A006530(n+2)+2)` -/
def P14543517993489419660.Spec : Prop :=
  ∀ n, P14543517993489419660.a n = A076566 (n + 1)

end A076566

/-!
# A076567: Greatest prime divisor of 4n+6 (sum of four successive integers).

The programs for A076567, the canonical program `A076567.P1168870904317662066` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076567 has offset 1).

The definition of A076567 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076565, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076567.P11318914759606906348

`A006530(4*(n+1)+6)`
-/

namespace A076567.P11318914759606906348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (4 * (n + 1) + 6)

end

end A076567.P11318914759606906348

namespace A076567

/-- `A006530(4*(n+1)+6)` -/
def P11318914759606906348.Spec : Prop :=
  ∀ n, P11318914759606906348.a n = A076567 (n + 1)

end A076567

/-! ## A076567.P1168870904317662066

`A076565(n+2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A076567

/-- `A076565(n+2)` -/
def P1168870904317662066.Spec : Prop :=
  ∀ n, P1168870904317662066.a n = A076567 (n + 1)

theorem P1168870904317662066.correct : P1168870904317662066.Spec := by
  intro n
  simp only [A076567, Nat.add_sub_cancel]

end A076567

/-! ## A076567.P7593640874026702105

`or(1, A006530(n+5+n))`
-/

namespace A076567.P7593640874026702105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (n + 5 + n))

end

end A076567.P7593640874026702105

namespace A076567

/-- `or(1, A006530(n+5+n))` -/
def P7593640874026702105.Spec : Prop :=
  ∀ n, P7593640874026702105.a n = A076567 (n + 1)

end A076567

/-! ## A076567.P3782889055764624756

`Δ[A006530(n+3+n)+a(n-1)]` with `a(0)=0`
-/

namespace A076567.P3782889055764624756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A006530 (n + 3 + n) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076567.P3782889055764624756

namespace A076567

/-- `Δ[A006530(n+3+n)+a(n-1)]` -/
def P3782889055764624756.Spec : Prop :=
  ∀ n, P3782889055764624756.a n = A076567 (n + 1)

end A076567

/-! ## A076567.P13867865665556145670

`A000040(A061395(2*n+5))`
-/

namespace A076567.P13867865665556145670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 (2 * n + 5)).toNat

end

end A076567.P13867865665556145670

namespace A076567

/-- `A000040(A061395(2*n+5))` -/
def P13867865665556145670.Spec : Prop :=
  ∀ n, P13867865665556145670.a n = A076567 (n + 1)

end A076567

/-! ## A076567.P4629174062840319137

`A000265(A006530(n+5+n))`
-/

namespace A076567.P4629174062840319137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A006530 (n + 5 + n)).toNat

end

end A076567.P4629174062840319137

namespace A076567

/-- `A000265(A006530(n+5+n))` -/
def P4629174062840319137.Spec : Prop :=
  ∀ n, P4629174062840319137.a n = A076567 (n + 1)

end A076567

/-! ## A076567.P3213497411576678947

`A000027(A006530(Δ[(n+2)²]))`
-/

namespace A076567.P3213497411576678947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A006530 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A076567.P3213497411576678947

namespace A076567

/-- `A000027(A006530(Δ[(n+2)²]))` -/
def P3213497411576678947.Spec : Prop :=
  ∀ n, P3213497411576678947.a n = A076567 (n + 1)

end A076567

/-! ## A076567.P553691904323142686

`lcm(A006530(A005408(n+2)), A057077(n))`
-/

namespace A076567.P553691904323142686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006530 (A005408 (n + 2)).toNat) (A057077 n)

end

end A076567.P553691904323142686

namespace A076567

/-- `lcm(A006530(A005408(n+2)), A057077(n))` -/
def P553691904323142686.Spec : Prop :=
  ∀ n, (P553691904323142686.a n : ℤ) = A076567 (n + 1)

end A076567

/-! ## A076567.P7699426874867677874

`A000040(A285715(n+3)+1)`
-/

namespace A076567.P7699426874867677874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A285715 (n + 3) + 1).toNat

end

end A076567.P7699426874867677874

namespace A076567

/-- `A000040(A285715(n+3)+1)` -/
def P7699426874867677874.Spec : Prop :=
  ∀ n, P7699426874867677874.a n = A076567 (n + 1)

end A076567

/-! ## A076567.P4080727414979521625

`A006530(A005408(n+2))%A016969(n+2)`
-/

namespace A076567.P4080727414979521625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A005408 (n + 2)).toNat) (A016969 (n + 2))

end

end A076567.P4080727414979521625

namespace A076567

/-- `A006530(A005408(n+2))%A016969(n+2)` -/
def P4080727414979521625.Spec : Prop :=
  ∀ n, P4080727414979521625.a n = A076567 (n + 1)

end A076567

/-! ## A076567.P7784453166865048920

`A076566(2*(n+2))`
-/

namespace A076567.P7784453166865048920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076566 (2 * (n + 2))

end

end A076567.P7784453166865048920

namespace A076567

/-- `A076566(2*(n+2))` -/
def P7784453166865048920.Spec : Prop :=
  ∀ n, P7784453166865048920.a n = A076567 (n + 1)

end A076567

/-! ## A076567.P6752266914563576155

`A126288(2*(n+2))/A052126(2*(n+2))`
-/

namespace A076567.P6752266914563576155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126288 (2 * (n + 2)) : ℚ) / (A052126 (2 * (n + 2)) : ℚ)

end

end A076567.P6752266914563576155

namespace A076567

/-- `A126288(2*(n+2))/A052126(2*(n+2))` -/
def P6752266914563576155.Spec : Prop :=
  ∀ n, P6752266914563576155.a n = (A076567 (n + 1) : ℚ)

end A076567

/-! ## A076567.P449135623448806075

`A111089(2*n+5)`
-/

namespace A076567.P449135623448806075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (2 * n + 5)

end

end A076567.P449135623448806075

namespace A076567

/-- `A111089(2*n+5)` -/
def P449135623448806075.Spec : Prop :=
  ∀ n, P449135623448806075.a n = A076567 (n + 1)

end A076567

/-! ## A076567.P10035380050946115993

`A299766(2*n+5)`
-/

namespace A076567.P10035380050946115993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299766 (2 * n + 5)

end

end A076567.P10035380050946115993

namespace A076567

/-- `A299766(2*n+5)` -/
def P10035380050946115993.Spec : Prop :=
  ∀ n, P10035380050946115993.a n = A076567 (n + 1)

end A076567

/-! ## A076567.P6281408700838178144

`p?[Δ[A360559(n+3)]]`
-/

namespace A076567.P6281408700838178144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360559 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076567.P6281408700838178144

namespace A076567

/-- `p?[Δ[A360559(n+3)]]` -/
def P6281408700838178144.Spec : Prop :=
  ∀ n, P6281408700838178144.a n = A076567 (n + 1)

end A076567

/-! ## A076567.P15729805456849348804

`A070229(A144396(n+2))-A144396(n+2)`
-/

namespace A076567.P15729805456849348804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (A144396 (n + 2)).toNat - A144396 (n + 2)

end

end A076567.P15729805456849348804

namespace A076567

/-- `A070229(A144396(n+2))-A144396(n+2)` -/
def P15729805456849348804.Spec : Prop :=
  ∀ n, P15729805456849348804.a n = A076567 (n + 1)

end A076567

/-! ## A076567.P15337981005722309791

`A076569(3*(n+1)+2)`
-/

namespace A076567.P15337981005722309791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076569 (3 * (n + 1) + 2)

end

end A076567.P15337981005722309791

namespace A076567

/-- `A076569(3*(n+1)+2)` -/
def P15337981005722309791.Spec : Prop :=
  ∀ n, P15337981005722309791.a n = A076567 (n + 1)

end A076567

/-! ## A076567.P16852182962404815143

`A085392(Δ[(2*(n+2))²])`
-/

namespace A076567.P16852182962404815143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A076567.P16852182962404815143

namespace A076567

/-- `A085392(Δ[(2*(n+2))²])` -/
def P16852182962404815143.Spec : Prop :=
  ∀ n, P16852182962404815143.a n = A076567 (n + 1)

end A076567

/-!
# A076568: Greatest prime divisor of 5n+10 (sum of five successive integers).

The programs for A076568, the canonical program `A076568.P8878829068693360086` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076568 has offset 1).

The definition of A076568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076568.P5568535710768490490

`A006530(5*(n+3))`
-/

namespace A076568.P5568535710768490490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (5 * (n + 3))

end

end A076568.P5568535710768490490

namespace A076568

/-- `A006530(5*(n+3))` -/
def P5568535710768490490.Spec : Prop :=
  ∀ n, P5568535710768490490.a n = A076568 (n + 1)

end A076568

/-! ## A076568.P15273389423071269472

`or(1, A006530(lcm(5, n+3)))`
-/

namespace A076568.P15273389423071269472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (Nat.lcm 5 (n + 3)))

end

end A076568.P15273389423071269472

namespace A076568

/-- `or(1, A006530(lcm(5, n+3)))` -/
def P15273389423071269472.Spec : Prop :=
  ∀ n, P15273389423071269472.a n = A076568 (n + 1)

end A076568

/-! ## A076568.P3832755409518325620

`or(1, A006530(5*(2*n-(n-3))))`
-/

namespace A076568.P3832755409518325620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (5 * ((2 * n : ℤ) - ((n : ℤ) - 3))).toNat)

end

end A076568.P3832755409518325620

namespace A076568

/-- `or(1, A006530(5*(2*n-(n-3))))` -/
def P3832755409518325620.Spec : Prop :=
  ∀ n, P3832755409518325620.a n = A076568 (n + 1)

end A076568

/-! ## A076568.P12379208442498059019

`abs(A291497(A006530(n+3)))`
-/

namespace A076568.P12379208442498059019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A291497 (A006530 (n + 3)).toNat|

end

end A076568.P12379208442498059019

namespace A076568

/-- `abs(A291497(A006530(n+3)))` -/
def P12379208442498059019.Spec : Prop :=
  ∀ n, P12379208442498059019.a n = A076568 (n + 1)

end A076568

/-! ## A076568.P8878829068693360086

`A000040(A061395(5*(n+3)))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A076568

/-- `A000040(A061395(5*(n+3)))` -/
def P8878829068693360086.Spec : Prop :=
  ∀ n, P8878829068693360086.a n = A076568 (n + 1)

theorem P8878829068693360086.correct : P8878829068693360086.Spec := by
  intro n
  simp only [A076568, Nat.add_sub_cancel]

end A076568

/-! ## A076568.P15080759424973566698

`A092487(A076566(n+2))`
-/

namespace A076568.P15080759424973566698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092487 (A076566 (n + 2)).toNat

end

end A076568.P15080759424973566698

namespace A076568

/-- `A092487(A076566(n+2))` -/
def P15080759424973566698.Spec : Prop :=
  ∀ n, P15080759424973566698.a n = A076568 (n + 1)

end A076568

/-! ## A076568.P848981618684158495

`A085392(5*(n+3))`
-/

namespace A076568.P848981618684158495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (5 * (n + 3))

end

end A076568.P848981618684158495

namespace A076568

/-- `A085392(5*(n+3))` -/
def P848981618684158495.Spec : Prop :=
  ∀ n, P848981618684158495.a n = A076568 (n + 1)

end A076568

/-! ## A076568.P16436838411064084394

`A111089(5*(n+3))`
-/

namespace A076568.P16436838411064084394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (5 * (n + 3))

end

end A076568.P16436838411064084394

namespace A076568

/-- `A111089(5*(n+3))` -/
def P16436838411064084394.Spec : Prop :=
  ∀ n, P16436838411064084394.a n = A076568 (n + 1)

end A076568

/-! ## A076568.P447295281919506189

`A299766(5*(n+3))`
-/

namespace A076568.P447295281919506189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299766 (5 * (n + 3))

end

end A076568.P447295281919506189

namespace A076568

/-- `A299766(5*(n+3))` -/
def P447295281919506189.Spec : Prop :=
  ∀ n, P447295281919506189.a n = A076568 (n + 1)

end A076568

/-!
# A076569: Greatest prime divisor of 6n+15 (sum of six successive integers).

The programs for A076569, the canonical program `A076569.P878931947249207020` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076569 has offset 1).

The definition of A076569 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076569.P878931947249207020

`A006530(6*(n+1)+15)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A076569

/-- `A006530(6*(n+1)+15)` -/
def P878931947249207020.Spec : Prop :=
  ∀ n, P878931947249207020.a n = A076569 (n + 1)

theorem P878931947249207020.correct : P878931947249207020.Spec := by
  intro n
  simp only [A076569, Nat.add_sub_cancel]

end A076569

/-! ## A076569.P14391124511334484478

`or(1, A006530(n+7+n))`
-/

namespace A076569.P14391124511334484478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (n + 7 + n))

end

end A076569.P14391124511334484478

namespace A076569

/-- `or(1, A006530(n+7+n))` -/
def P14391124511334484478.Spec : Prop :=
  ∀ n, P14391124511334484478.a n = A076569 (n + 1)

end A076569

/-! ## A076569.P2135737187920691654

`A076567(n+2)`
-/

namespace A076569.P2135737187920691654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076567 (n + 2)

end

end A076569.P2135737187920691654

namespace A076569

/-- `A076567(n+2)` -/
def P2135737187920691654.Spec : Prop :=
  ∀ n, P2135737187920691654.a n = A076569 (n + 1)

end A076569

/-! ## A076569.P1235060710436873805

`A076565(n+3)`
-/

namespace A076569.P1235060710436873805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076565 (n + 3)

end

end A076569.P1235060710436873805

namespace A076569

/-- `A076565(n+3)` -/
def P1235060710436873805.Spec : Prop :=
  ∀ n, P1235060710436873805.a n = A076569 (n + 1)

end A076569

/-! ## A076569.P16840638128270491655

`A076566(2*(n+3))`
-/

namespace A076569.P16840638128270491655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076566 (2 * (n + 3))

end

end A076569.P16840638128270491655

namespace A076569

/-- `A076566(2*(n+3))` -/
def P16840638128270491655.Spec : Prop :=
  ∀ n, P16840638128270491655.a n = A076569 (n + 1)

end A076569

/-! ## A076569.P11765661768762065857

`A111089(2*n+7)`
-/

namespace A076569.P11765661768762065857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (2 * n + 7)

end

end A076569.P11765661768762065857

namespace A076569

/-- `A111089(2*n+7)` -/
def P11765661768762065857.Spec : Prop :=
  ∀ n, P11765661768762065857.a n = A076569 (n + 1)

end A076569

/-! ## A076569.P17481733963019178788

`A299766(2*n+7)`
-/

namespace A076569.P17481733963019178788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299766 (2 * n + 7)

end

end A076569.P17481733963019178788

namespace A076569

/-- `A299766(2*n+7)` -/
def P17481733963019178788.Spec : Prop :=
  ∀ n, P17481733963019178788.a n = A076569 (n + 1)

end A076569

/-!
# A076570: Greatest prime divisor of sum of first n primes.

The programs for A076570, the canonical program `A076570.P16756945530304824433` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076570 has offset 1).

The definition of A076570 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076570.P16756945530304824433

`A006530(A007504(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A076570

/-- `A006530(A007504(n+1))` -/
def P16756945530304824433.Spec : Prop :=
  ∀ n, P16756945530304824433.a n = A076570 (n + 1)

theorem P16756945530304824433.correct : P16756945530304824433.Spec := by
  intro n
  simp only [A076570, Nat.add_sub_cancel]

end A076570

/-! ## A076570.P3740166766387280742

`A006530(A014963(2*(n+2))*A294612(n+1))`
-/

namespace A076570.P3740166766387280742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A014963 (2 * (n + 2)) * A294612 (n + 1)).toNat

end

end A076570.P3740166766387280742

namespace A076570

/-- `A006530(A014963(2*(n+2))*A294612(n+1))` -/
def P3740166766387280742.Spec : Prop :=
  ∀ n, P3740166766387280742.a n = A076570 (n + 1)

end A076570

/-! ## A076570.P11198242004916830359

`A006530(∑[p?[comp[n²]]])`
-/

namespace A076570.P11198242004916830359
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076570.P11198242004916830359

namespace A076570

/-- `A006530(∑[p?[comp[n²]]])` -/
def P11198242004916830359.Spec : Prop :=
  ∀ n, P11198242004916830359.a n = A076570 (n + 1)

end A076570

/-! ## A076570.P16964793985311451090

`A006530(∑[p?[a(n-1)+2]-1]+n+1)` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A076570.P16964793985311451090
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1).toNat

end

end A076570.P16964793985311451090

namespace A076570

/-- `A006530(∑[p?[a(n-1)+2]-1]+n+1)` -/
def P16964793985311451090.Spec : Prop :=
  ∀ n, P16964793985311451090.a n = A076570 (n + 1)

end A076570

/-! ## A076570.P17448886648261041679

`A006530(∑[record[A051698(n)]])`
-/

namespace A076570.P17448886648261041679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076570.P17448886648261041679

namespace A076570

/-- `A006530(∑[record[A051698(n)]])` -/
def P17448886648261041679.Spec : Prop :=
  ∀ n, P17448886648261041679.a n = A076570 (n + 1)

end A076570

/-! ## A076570.P8970361860189311434

`A006530(∑[A000040(n+1)])`
-/

namespace A076570.P8970361860189311434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076570.P8970361860189311434

namespace A076570

/-- `A006530(∑[A000040(n+1)])` -/
def P8970361860189311434.Spec : Prop :=
  ∀ n, P8970361860189311434.a n = A076570 (n + 1)

end A076570

/-! ## A076570.P14905598268989283867

`A006530(∑[A008578(n+2)])`
-/

namespace A076570.P14905598268989283867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076570.P14905598268989283867

namespace A076570

/-- `A006530(∑[A008578(n+2)])` -/
def P14905598268989283867.Spec : Prop :=
  ∀ n, P14905598268989283867.a n = A076570 (n + 1)

end A076570

/-! ## A076570.P16983927520466982425

`A006530(∑[A182986(n+2)])`
-/

namespace A076570.P16983927520466982425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076570.P16983927520466982425

namespace A076570

/-- `A006530(∑[A182986(n+2)])` -/
def P16983927520466982425.Spec : Prop :=
  ∀ n, P16983927520466982425.a n = A076570 (n + 1)

end A076570

/-! ## A076570.P5674552587849575041

`A006530(∑[A158611(n+3)])`
-/

namespace A076570.P5674552587849575041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076570.P5674552587849575041

namespace A076570

/-- `A006530(∑[A158611(n+3)])` -/
def P5674552587849575041.Spec : Prop :=
  ∀ n, P5674552587849575041.a n = A076570 (n + 1)

end A076570

/-! ## A076570.P637521515165522085

`A006530(record[A160793(n+2)])`
-/

namespace A076570.P637521515165522085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076570.P637521515165522085

namespace A076570

/-- `A006530(record[A160793(n+2)])` -/
def P637521515165522085.Spec : Prop :=
  ∀ n, P637521515165522085.a n = A076570 (n + 1)

end A076570

/-! ## A076570.P12944315490640331609

`A006530(A237589(n+1)+1)`
-/

namespace A076570.P12944315490640331609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A237589 (n + 1) + 1).toNat

end

end A076570.P12944315490640331609

namespace A076570

/-- `A006530(A237589(n+1)+1)` -/
def P12944315490640331609.Spec : Prop :=
  ∀ n, P12944315490640331609.a n = A076570 (n + 1)

theorem P12944315490640331609.correct : P12944315490640331609.Spec := by
  intro n
  simp only [A076570, Nat.add_sub_cancel, A076570.P12944315490640331609.a, A076570.P16756945530304824433.a, A006530, A006530.P13372528560459906635.a, A007504, A007504.P14310834286015847203.a, A237589, A237589.P15064465826932885110.a, A014284, A014284.P18183547548072881472.a, A070229, A070229.P5792893597916963980.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076570

/-! ## A076570.P13952783253538036303

`A006530(A014284(n+2)-1)`
-/

namespace A076570.P13952783253538036303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A014284 (n + 2) - 1).toNat

end

end A076570.P13952783253538036303

namespace A076570

/-- `A006530(A014284(n+2)-1)` -/
def P13952783253538036303.Spec : Prop :=
  ∀ n, P13952783253538036303.a n = A076570 (n + 1)

theorem P13952783253538036303.correct : P13952783253538036303.Spec := by
  intro n
  simp only [A076570, Nat.add_sub_cancel, A076570.P13952783253538036303.a, A076570.P16756945530304824433.a, A006530, A006530.P13372528560459906635.a, A007504, A007504.P14310834286015847203.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076570

/-! ## A076570.P12748961530545683557

`A006530(A036439(n+2)-2)`
-/

namespace A076570.P12748961530545683557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A036439 (n + 2) - 2).toNat

end

end A076570.P12748961530545683557

namespace A076570

/-- `A006530(A036439(n+2)-2)` -/
def P12748961530545683557.Spec : Prop :=
  ∀ n, P12748961530545683557.a n = A076570 (n + 1)

end A076570

/-! ## A076570.P17309524257953643004

`A006530(A160793(2*(n+1)))`
-/

namespace A076570.P17309524257953643004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A160793 (2 * (n + 1))).toNat

end

end A076570.P17309524257953643004

namespace A076570

/-- `A006530(A160793(2*(n+1)))` -/
def P17309524257953643004.Spec : Prop :=
  ∀ n, P17309524257953643004.a n = A076570 (n + 1)

end A076570

/-! ## A076570.P34534038215387198

`A006530(∑[∑[A054541(n+1)]])`
-/

namespace A076570.P34534038215387198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076570.P34534038215387198

namespace A076570

/-- `A006530(∑[∑[A054541(n+1)]])` -/
def P34534038215387198.Spec : Prop :=
  ∀ n, P34534038215387198.a n = A076570 (n + 1)

end A076570

/-! ## A076570.P11056373187231604120

`A006530(∑[record[A006530(n+2)]])`
-/

namespace A076570.P11056373187231604120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076570.P11056373187231604120

namespace A076570

/-- `A006530(∑[record[A006530(n+2)]])` -/
def P11056373187231604120.Spec : Prop :=
  ∀ n, P11056373187231604120.a n = A076570 (n + 1)

end A076570

/-! ## A076570.P10054662713507595725

`A006530(A066911(A000040(n+2)))`
-/

namespace A076570.P10054662713507595725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A066911 (A000040 (n + 2)).toNat).toNat

end

end A076570.P10054662713507595725

namespace A076570

/-- `A006530(A066911(A000040(n+2)))` -/
def P10054662713507595725.Spec : Prop :=
  ∀ n, P10054662713507595725.a n = A076570 (n + 1)

end A076570

/-! ## A076570.P1447817655346548759

`A006530(A362419(n+1))`
-/

namespace A076570.P1447817655346548759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A362419 (n + 1)).toNat

end

end A076570.P1447817655346548759

namespace A076570

/-- `A006530(A362419(n+1))` -/
def P1447817655346548759.Spec : Prop :=
  ∀ n, P1447817655346548759.a n = A076570 (n + 1)

end A076570

/-!
# A076571: Binomial triangle based on factorials.

The programs for A076571, there is no canonical definition to state claims against.
-/

/-! ## A076571.P12176485452125884622

`A119502(n)*A143409(A061579(n))`
-/

namespace A076571.P12176485452125884622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A143409 (A061579 n).toNat

end

end A076571.P12176485452125884622

/-! ## A076571.P4522194147375580059

`A025581(n)!*A143409(A061579(n))`
-/

namespace A076571.P4522194147375580059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℤ) * A143409 (A061579 n).toNat

end

end A076571.P4522194147375580059

/-! ## A076571.P5918356069498669312

`A073474(A061579(n))/A007318(n)`
-/

namespace A076571.P5918356069498669312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073474 (A061579 n).toNat : ℚ) / (A007318 n : ℚ)

end

end A076571.P5918356069498669312

/-! ## A076571.P16227142400081577281

`abs(A073474(A061579(n))/A130595(n))`
-/

namespace A076571.P16227142400081577281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A073474 (A061579 n).toNat : ℚ) / (A130595 n : ℚ)|

end

end A076571.P16227142400081577281

/-! ## A076571.P9654730197125161517

`A073474(A061579(n))/sqrt(A008459(n))`
-/

namespace A076571.P9654730197125161517
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A073474 (A061579 n).toNat : ℝ) / Real.sqrt (A008459 n : ℝ)

end

end A076571.P9654730197125161517

/-!
# A076577: Sum of squares of divisors d of n such that n/d is odd.

The programs for A076577, the canonical program `A076577.P8083081140773198791` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076577 has offset 1).

The definition of A076577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076577.P8083081140773198791

`∑{d}[2*(n+1), ((n+1)%#)²]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076577

/-- `∑{d}[2*(n+1), ((n+1)%#)²]` -/
def P8083081140773198791.Spec : Prop :=
  ∀ n, (P8083081140773198791.a n : ℤ) = A076577 (n + 1)

theorem P8083081140773198791.correct : P8083081140773198791.Spec := by
  intro n
  simp only [A076577, Nat.add_sub_cancel]

end A076577

/-! ## A076577.P3529385684859784856

`∑{d}[n+1, A308422(#)]`
-/

namespace A076577.P3529385684859784856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A308422 d

end

end A076577.P3529385684859784856

namespace A076577

/-- `∑{d}[n+1, A308422(#)]` -/
def P3529385684859784856.Spec : Prop :=
  ∀ n, P3529385684859784856.a n = A076577 (n + 1)

end A076577

/-! ## A076577.P3073947996689109817

`A352048(n+1)+char[2*n]`
-/

namespace A076577.P3073947996689109817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352048 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A076577.P3073947996689109817

namespace A076577

/-- `A352048(n+1)+char[2*n]` -/
def P3073947996689109817.Spec : Prop :=
  ∀ n, P3073947996689109817.a n = A076577 (n + 1)

end A076577

/-! ## A076577.P2894509630573811211

`∑{d}[A000265(n+1), ((n+1)/#)²]`
-/

namespace A076577.P2894509630573811211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1 : ℚ) / (d : ℚ)) ^ 2

end

end A076577.P2894509630573811211

namespace A076577

/-- `∑{d}[A000265(n+1), ((n+1)/#)²]` -/
def P2894509630573811211.Spec : Prop :=
  ∀ n, P2894509630573811211.a n = (A076577 (n + 1) : ℚ)

end A076577

/-! ## A076577.P9723072820783577045

`A050465(n+1)+A050461(n+1)`
-/

namespace A076577.P9723072820783577045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050465 (n + 1) + A050461 (n + 1)

end

end A076577.P9723072820783577045

namespace A076577

/-- `A050465(n+1)+A050461(n+1)` -/
def P9723072820783577045.Spec : Prop :=
  ∀ n, P9723072820783577045.a n = A076577 (n + 1)

theorem P9723072820783577045.correct : P9723072820783577045.Spec := by
  intro n
  simp only [A076577, Nat.add_sub_cancel, A076577.P9723072820783577045.a, A076577.P8083081140773198791.f1, A076577.P8083081140773198791.a, A050461, A050461.P8492635839699756591.a, A050465, A050465.P7394313666540459640.f1, A050465.P7394313666540459640.a, A038189, A038189.P710315829662968223.a, A050470, A050470.P13784025442860772715.a, A308422, A308422.P5686290696795046031.a, A014707, A014707.P14309168736324698614.f1, A014707.P14309168736324698614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076577

/-! ## A076577.P13164159542426693842

`A006519(n+1)²*A050999(n+1)`
-/

namespace A076577.P13164159542426693842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) ^ 2 * A050999 (n + 1)

end

end A076577.P13164159542426693842

namespace A076577

/-- `A006519(n+1)²*A050999(n+1)` -/
def P13164159542426693842.Spec : Prop :=
  ∀ n, P13164159542426693842.a n = A076577 (n + 1)

end A076577

/-! ## A076577.P17812501817086927877

`A050470(n+1)+2*A050465(n+1)`
-/

namespace A076577.P17812501817086927877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050470 (n + 1) + 2 * A050465 (n + 1)

end

end A076577.P17812501817086927877

namespace A076577

/-- `A050470(n+1)+2*A050465(n+1)` -/
def P17812501817086927877.Spec : Prop :=
  ∀ n, P17812501817086927877.a n = A076577 (n + 1)

theorem P17812501817086927877.correct : P17812501817086927877.Spec := by
  intro n
  simp only [A076577, Nat.add_sub_cancel, A076577.P17812501817086927877.a, A076577.P8083081140773198791.f1, A076577.P8083081140773198791.a, A050465, A050465.P7394313666540459640.f1, A050465.P7394313666540459640.a, A050470, A050470.P13784025442860772715.a, A038189, A038189.P710315829662968223.a, A308422, A308422.P5686290696795046031.a, A014707, A014707.P14309168736324698614.f1, A014707.P14309168736324698614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076577

/-! ## A076577.P13318866386786166264

`(A078306(n+1)+A001157(n+1))/2`
-/

namespace A076577.P13318866386786166264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078306 (n + 1) + A001157 (n + 1) : ℚ) / 2

end

end A076577.P13318866386786166264

namespace A076577

/-- `(A078306(n+1)+A001157(n+1))/2` -/
def P13318866386786166264.Spec : Prop :=
  ∀ n, P13318866386786166264.a n = (A076577 (n + 1) : ℚ)

end A076577

/-! ## A076577.P11635641429143457707

`2*A050461(n+1)-A050470(n+1)`
-/

namespace A076577.P11635641429143457707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050461 (n + 1) - A050470 (n + 1)

end

end A076577.P11635641429143457707

namespace A076577

/-- `2*A050461(n+1)-A050470(n+1)` -/
def P11635641429143457707.Spec : Prop :=
  ∀ n, P11635641429143457707.a n = A076577 (n + 1)

theorem P11635641429143457707.correct : P11635641429143457707.Spec := by
  intro n
  simp only [A076577, Nat.add_sub_cancel, A076577.P11635641429143457707.a, A076577.P8083081140773198791.f1, A076577.P8083081140773198791.a, A050461, A050461.P8492635839699756591.a, A050470, A050470.P13784025442860772715.a, A050465, A050465.P7394313666540459640.f1, A050465.P7394313666540459640.a, A038189, A038189.P710315829662968223.a, A308422, A308422.P5686290696795046031.a, A014707, A014707.P14309168736324698614.f1, A014707.P14309168736324698614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076577

/-! ## A076577.P14145948561340773235

`abs(A138501(n+1))+2*A050465(n+1)`
-/

namespace A076577.P14145948561340773235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138501 (n + 1)| + 2 * A050465 (n + 1)

end

end A076577.P14145948561340773235

namespace A076577

/-- `abs(A138501(n+1))+2*A050465(n+1)` -/
def P14145948561340773235.Spec : Prop :=
  ∀ n, P14145948561340773235.a n = A076577 (n + 1)

end A076577

/-! ## A076577.P15101087714513879070

`∑{d}[n+1, A002131(#)*A002618((n+1)/#)]`
-/

namespace A076577.P15101087714513879070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A002618 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076577.P15101087714513879070

namespace A076577

/-- `∑{d}[n+1, A002131(#)*A002618((n+1)/#)]` -/
def P15101087714513879070.Spec : Prop :=
  ∀ n, P15101087714513879070.a n = A076577 (n + 1)

end A076577

/-! ## A076577.P17195789599105916077

`∑{d}[n+1, A001227(#)*A007434((n+1)/#)]`
-/

namespace A076577.P17195789599105916077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A007434 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076577.P17195789599105916077

namespace A076577

/-- `∑{d}[n+1, A001227(#)*A007434((n+1)/#)]` -/
def P17195789599105916077.Spec : Prop :=
  ∀ n, P17195789599105916077.a n = A076577 (n + 1)

end A076577

/-! ## A076577.P7727003128806272667

`∑{d}[n+1, A026741(#)*A057660((n+1)/#)]`
-/

namespace A076577.P7727003128806272667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A026741 d * A057660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076577.P7727003128806272667

namespace A076577

/-- `∑{d}[n+1, A026741(#)*A057660((n+1)/#)]` -/
def P7727003128806272667.Spec : Prop :=
  ∀ n, P7727003128806272667.a n = A076577 (n + 1)

end A076577

/-! ## A076577.P5864031909516918594

`∑{d}[n+1, A007433(#)*A092673((n+1)/#)]`
-/

namespace A076577.P5864031909516918594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007433 d * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076577.P5864031909516918594

namespace A076577

/-- `∑{d}[n+1, A007433(#)*A092673((n+1)/#)]` -/
def P5864031909516918594.Spec : Prop :=
  ∀ n, P5864031909516918594.a n = A076577 (n + 1)

end A076577

/-! ## A076577.P4452790377906602035

`∑{d}[n+1, A001157(#)*A154955((n+1)/#)]`
-/

namespace A076577.P4452790377906602035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076577.P4452790377906602035

namespace A076577

/-- `∑{d}[n+1, A001157(#)*A154955((n+1)/#)]` -/
def P4452790377906602035.Spec : Prop :=
  ∀ n, P4452790377906602035.a n = A076577 (n + 1)

end A076577

/-! ## A076577.P6479169872603029413

`∑{d}[n+1, A065958(#)*A143259((n+1)/#)]`
-/

namespace A076577.P6479169872603029413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065958 d * A143259 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076577.P6479169872603029413

namespace A076577

/-- `∑{d}[n+1, A065958(#)*A143259((n+1)/#)]` -/
def P6479169872603029413.Spec : Prop :=
  ∀ n, P6479169872603029413.a n = A076577 (n + 1)

end A076577

/-! ## A076577.P14924954959138141912

`∑{d}[n+1, A091519(#)*A230074((n+1)/#)]`
-/

namespace A076577.P14924954959138141912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091519 d * A230074 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076577.P14924954959138141912

namespace A076577

/-- `∑{d}[n+1, A091519(#)*A230074((n+1)/#)]` -/
def P14924954959138141912.Spec : Prop :=
  ∀ n, P14924954959138141912.a n = A076577 (n + 1)

end A076577

/-! ## A076577.P12397838353097248877

`∑{d}[n+1, A078747(#)*A267092((n+1)/#)]`
-/

namespace A076577.P12397838353097248877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078747 d * A267092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076577.P12397838353097248877

namespace A076577

/-- `∑{d}[n+1, A078747(#)*A267092((n+1)/#)]` -/
def P12397838353097248877.Spec : Prop :=
  ∀ n, P12397838353097248877.a n = A076577 (n + 1)

end A076577

/-! ## A076577.P17817541447743297690

`∑{d}[n+1, A001001(#)*A359484((n+1)/#)]`
-/

namespace A076577.P17817541447743297690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001001 d * A359484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076577.P17817541447743297690

namespace A076577

/-- `∑{d}[n+1, A001001(#)*A359484((n+1)/#)]` -/
def P17817541447743297690.Spec : Prop :=
  ∀ n, P17817541447743297690.a n = A076577 (n + 1)

end A076577

/-! ## A076577.P8663338859295502292

`∑{d}[n+1, A063445(#)*A327096((n+1)/#)]`
-/

namespace A076577.P8663338859295502292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063445 d * A327096 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076577.P8663338859295502292

namespace A076577

/-- `∑{d}[n+1, A063445(#)*A327096((n+1)/#)]` -/
def P8663338859295502292.Spec : Prop :=
  ∀ n, P8663338859295502292.a n = A076577 (n + 1)

end A076577

/-!
# A076578: Triangular numbers which are 4-almost primes.

The programs for A076578, the canonical program `A076578.P9366943857635252810` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076578 has offset 1).

The definition of A076578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5535 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076578.P9366943857635252810

`A000217(A114435(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076578

/-- `A000217(A114435(n+1))` -/
def P9366943857635252810.Spec : Prop :=
  ∀ n, P9366943857635252810.a n = A076578 (n + 1)

theorem P9366943857635252810.correct : P9366943857635252810.Spec := by
  intro n
  simp only [A076578, Nat.add_sub_cancel]

end A076578

/-! ## A076578.P6175627353633816851

`A253145(eq[4, A069904(n+1)])`
-/

namespace A076578.P6175627353633816851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A076578.P6175627353633816851

namespace A076578

/-- `A253145(eq[4, A069904(n+1)])` -/
def P6175627353633816851.Spec : Prop :=
  ∀ n, P6175627353633816851.a n = A076578 (n + 1)

end A076578

/-! ## A076578.P5876371505915013903

`A000124(A114435(n+1))-abs(A033999(n))`
-/

namespace A076578.P5876371505915013903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A114435 (n + 1)).toNat - |A033999 n|

end

end A076578.P5876371505915013903

namespace A076578

/-- `A000124(A114435(n+1))-abs(A033999(n))` -/
def P5876371505915013903.Spec : Prop :=
  ∀ n, P5876371505915013903.a n = A076578 (n + 1)

end A076578

/-! ## A076578.P15931573636418452886

`A000124(A114435(n+1))-abs(A160357(n))`
-/

namespace A076578.P15931573636418452886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A114435 (n + 1)).toNat - |A160357 n|

end

end A076578.P15931573636418452886

namespace A076578

/-- `A000124(A114435(n+1))-abs(A160357(n))` -/
def P15931573636418452886.Spec : Prop :=
  ∀ n, P15931573636418452886.a n = A076578 (n + 1)

end A076578

/-! ## A076578.P2045071373326982716

`A008683(A007304(n+1))+A000124(A114435(n+1))`
-/

namespace A076578.P2045071373326982716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007304 (n + 1)).toNat + A000124 (A114435 (n + 1)).toNat

end

end A076578.P2045071373326982716

namespace A076578

/-- `A008683(A007304(n+1))+A000124(A114435(n+1))` -/
def P2045071373326982716.Spec : Prop :=
  ∀ n, P2045071373326982716.a n = A076578 (n + 1)

end A076578

/-! ## A076578.P7051140436314324536

`A000124(A114435(n+1))-A249066(A294338(n+1))`
-/

namespace A076578.P7051140436314324536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A114435 (n + 1)).toNat - A249066 (A294338 (n + 1)).toNat

end

end A076578.P7051140436314324536

namespace A076578

/-- `A000124(A114435(n+1))-A249066(A294338(n+1))` -/
def P7051140436314324536.Spec : Prop :=
  ∀ n, P7051140436314324536.a n = A076578 (n + 1)

end A076578

/-! ## A076578.P10943643949585983400

`A008795(2*A114435(n+1)+1)`
-/

namespace A076578.P10943643949585983400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (2 * A114435 (n + 1) + 1).toNat

end

end A076578.P10943643949585983400

namespace A076578

/-- `A008795(2*A114435(n+1)+1)` -/
def P10943643949585983400.Spec : Prop :=
  ∀ n, P10943643949585983400.a n = A076578 (n + 1)

end A076578

/-! ## A076578.P17991844883992545512

`A008795(A114435(n+1)+A114435(n+1)+1)`
-/

namespace A076578.P17991844883992545512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (A114435 (n + 1) + (A114435 (n + 1) + 1)).toNat

end

end A076578.P17991844883992545512

namespace A076578

/-- `A008795(A114435(n+1)+A114435(n+1)+1)` -/
def P17991844883992545512.Spec : Prop :=
  ∀ n, P17991844883992545512.a n = A076578 (n + 1)

end A076578

/-! ## A076578.P3936307844931794915

`A000124(A114435(n+1))-A007318(A008795(n))`
-/

namespace A076578.P3936307844931794915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A114435 (n + 1)).toNat - A007318 (A008795 n).toNat

end

end A076578.P3936307844931794915

namespace A076578

/-- `A000124(A114435(n+1))-A007318(A008795(n))` -/
def P3936307844931794915.Spec : Prop :=
  ∀ n, P3936307844931794915.a n = A076578 (n + 1)

end A076578

/-! ## A076578.P7616474127680135123

`filter[A000217(n+1), A101637(#)]`
-/

namespace A076578.P7616474127680135123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A076578.P7616474127680135123

namespace A076578

/-- `filter[A000217(n+1), A101637(#)]` -/
def P7616474127680135123.Spec : Prop :=
  ∀ n, P7616474127680135123.a n = A076578 (n + 1)

end A076578

/-! ## A076578.P14123528703818901895

`filter[A074134(n+1), A101637(#)]`
-/

namespace A076578.P14123528703818901895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A076578.P14123528703818901895

namespace A076578

/-- `filter[A074134(n+1), A101637(#)]` -/
def P14123528703818901895.Spec : Prop :=
  ∀ n, P14123528703818901895.a n = A076578 (n + 1)

end A076578

/-! ## A076578.P1438189573777743111

`filter[A100542(n+1), A101637(#)]`
-/

namespace A076578.P1438189573777743111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A076578.P1438189573777743111

namespace A076578

/-- `filter[A100542(n+1), A101637(#)]` -/
def P1438189573777743111.Spec : Prop :=
  ∀ n, P1438189573777743111.a n = A076578 (n + 1)

end A076578

/-! ## A076578.P10735856517967236994

`filter[A179865(n+1), A101637(#)]`
-/

namespace A076578.P10735856517967236994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A076578.P10735856517967236994

namespace A076578

/-- `filter[A179865(n+1), A101637(#)]` -/
def P10735856517967236994.Spec : Prop :=
  ∀ n, P10735856517967236994.a n = A076578 (n + 1)

end A076578

/-! ## A076578.P17853871617079668956

`filter[A253145(n+1), A101637(#)]`
-/

namespace A076578.P17853871617079668956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A076578.P17853871617079668956

namespace A076578

/-- `filter[A253145(n+1), A101637(#)]` -/
def P17853871617079668956.Spec : Prop :=
  ∀ n, P17853871617079668956.a n = A076578 (n + 1)

end A076578

/-! ## A076578.P7356190349051867290

`filter[A161680(n+2), A101637(#)]`
-/

namespace A076578.P7356190349051867290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A076578.P7356190349051867290

namespace A076578

/-- `filter[A161680(n+2), A101637(#)]` -/
def P7356190349051867290.Spec : Prop :=
  ∀ n, P7356190349051867290.a n = A076578 (n + 1)

end A076578

/-! ## A076578.P16668064420063499998

`filter[A186783(n+2), A101637(#)]`
-/

namespace A076578.P16668064420063499998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186783 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A076578.P16668064420063499998

namespace A076578

/-- `filter[A186783(n+2), A101637(#)]` -/
def P16668064420063499998.Spec : Prop :=
  ∀ n, P16668064420063499998.a n = A076578 (n + 1)

end A076578

/-! ## A076578.P14992491653418414603

`filter[A350295(n+3), A101637(#)]`
-/

namespace A076578.P14992491653418414603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350295 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A076578.P14992491653418414603

namespace A076578

/-- `filter[A350295(n+3), A101637(#)]` -/
def P14992491653418414603.Spec : Prop :=
  ∀ n, P14992491653418414603.a n = A076578 (n + 1)

end A076578

/-! ## A076578.P9718157420188019507

`filter[A001972(2*n), A101637(#)]`
-/

namespace A076578.P9718157420188019507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A076578.P9718157420188019507

namespace A076578

/-- `filter[A001972(2*n), A101637(#)]` -/
def P9718157420188019507.Spec : Prop :=
  ∀ n, P9718157420188019507.a n = A076578 (n + 1)

end A076578

/-! ## A076578.P6713849596178612614

`filter[A008795(2*n), A101637(#)]`
-/

namespace A076578.P6713849596178612614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A076578.P6713849596178612614

namespace A076578

/-- `filter[A008795(2*n), A101637(#)]` -/
def P6713849596178612614.Spec : Prop :=
  ∀ n, P6713849596178612614.a n = A076578 (n + 1)

end A076578

/-! ## A076578.P13520171453575762969

`filter[A008805(2*n), A101637(#)]`
-/

namespace A076578.P13520171453575762969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A076578.P13520171453575762969

namespace A076578

/-- `filter[A008805(2*n), A101637(#)]` -/
def P13520171453575762969.Spec : Prop :=
  ∀ n, P13520171453575762969.a n = A076578 (n + 1)

end A076578

/-!
# A076579: Triangular numbers which are 5-almost primes.

The programs for A076579, the canonical program `A076579.P10008059916613887531` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076579 has offset 1).

The definition of A076579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4748 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076579.P7273839466023736872

`A000217(A114436(n+1))`
-/

namespace A076579.P7273839466023736872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A114436 (n + 1)).toNat

end

end A076579.P7273839466023736872

namespace A076579

/-- `A000217(A114436(n+1))` -/
def P7273839466023736872.Spec : Prop :=
  ∀ n, P7273839466023736872.a n = A076579 (n + 1)

end A076579

/-! ## A076579.P10008059916613887531

`A000217(eq[5, A069904(n+1)]+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A076579

/-- `A000217(eq[5, A069904(n+1)]+1)` -/
def P10008059916613887531.Spec : Prop :=
  ∀ n, P10008059916613887531.a n = A076579 (n + 1)

theorem P10008059916613887531.correct : P10008059916613887531.Spec := by
  intro n
  simp only [A076579, Nat.add_sub_cancel]

end A076579

/-! ## A076579.P6733158962582203532

`A350295(A114436(n+1)+1)`
-/

namespace A076579.P6733158962582203532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350295 (A114436 (n + 1) + 1).toNat

end

end A076579.P6733158962582203532

namespace A076579

/-- `A350295(A114436(n+1)+1)` -/
def P6733158962582203532.Spec : Prop :=
  ∀ n, P6733158962582203532.a n = A076579 (n + 1)

end A076579

/-! ## A076579.P7076969744415791280

`A253145(eq[5, A069904(n+1)])`
-/

namespace A076579.P7076969744415791280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A076579.P7076969744415791280

namespace A076579

/-- `A253145(eq[5, A069904(n+1)])` -/
def P7076969744415791280.Spec : Prop :=
  ∀ n, P7076969744415791280.a n = A076579 (n + 1)

end A076579

/-! ## A076579.P11843930627369914863

`A000096(eq[5, A069904(n+1)])+1`
-/

namespace A076579.P11843930627369914863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A076579.P11843930627369914863

namespace A076579

/-- `A000096(eq[5, A069904(n+1)])+1` -/
def P11843930627369914863.Spec : Prop :=
  ∀ n, P11843930627369914863.a n = A076579 (n + 1)

theorem P11843930627369914863.correct : P11843930627369914863.Spec := by
  intro n
  simp only [A076579, Nat.add_sub_cancel, A076579.P11843930627369914863.f1, A076579.P11843930627369914863.f2, A076579.P11843930627369914863.a, A076579.P10008059916613887531.f1, A076579.P10008059916613887531.f2, A076579.P10008059916613887531.a, A000096, A000096.P6925830517264718723.a, A000217, A000217.P10269402890581615239.a, A069904, A069904.P2434558843873151070.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A076579

/-! ## A076579.P2595821819132255035

`A000124(A114436(n+1))+A008683(A006093(n+1)+1)`
-/

namespace A076579.P2595821819132255035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A114436 (n + 1)).toNat + A008683 (A006093 (n + 1) + 1).toNat

end

end A076579.P2595821819132255035

namespace A076579

/-- `A000124(A114436(n+1))+A008683(A006093(n+1)+1)` -/
def P2595821819132255035.Spec : Prop :=
  ∀ n, P2595821819132255035.a n = A076579 (n + 1)

end A076579

/-! ## A076579.P9133192428297415600

`C(eq[5, ∑{e}[C(n, 2), #]], 2)`
-/

namespace A076579.P9133192428297415600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) 2

end

end A076579.P9133192428297415600

namespace A076579

/-- `C(eq[5, ∑{e}[C(n, 2), #]], 2)` -/
def P9133192428297415600.Spec : Prop :=
  ∀ n, (P9133192428297415600.a n : ℤ) = A076579 (n + 1)

end A076579

/-! ## A076579.P3341242175551221980

`∩[A014614(n+1), A000217(n)]`
-/

namespace A076579.P3341242175551221980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076579.P3341242175551221980

namespace A076579

/-- `∩[A014614(n+1), A000217(n)]` -/
def P3341242175551221980.Spec : Prop :=
  ∀ n, (P3341242175551221980.a n : ℤ) = A076579 (n + 1)

end A076579

/-! ## A076579.P10909020701223534484

`∩[A014614(n+1), A253145(n)]`
-/

namespace A076579.P10909020701223534484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076579.P10909020701223534484

namespace A076579

/-- `∩[A014614(n+1), A253145(n)]` -/
def P10909020701223534484.Spec : Prop :=
  ∀ n, (P10909020701223534484.a n : ℤ) = A076579 (n + 1)

end A076579

/-! ## A076579.P7075268920633975950

`∩[A005214(n+1), A014614(n+1)]`
-/

namespace A076579.P7075268920633975950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076579.P7075268920633975950

namespace A076579

/-- `∩[A005214(n+1), A014614(n+1)]` -/
def P7075268920633975950.Spec : Prop :=
  ∀ n, (P7075268920633975950.a n : ℤ) = A076579 (n + 1)

end A076579

/-!
# A076580: Triangular numbers which are 6-almost primes.

The programs for A076580, there is no canonical definition to state claims against.
-/

/-! ## A076580.P2531765200675496040

`A000217(A114437(n+1))`
-/

namespace A076580.P2531765200675496040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A114437 (n + 1)).toNat

end

end A076580.P2531765200675496040

/-! ## A076580.P5734221614199432708

`A161680(A114437(n+1)+1)`
-/

namespace A076580.P5734221614199432708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A114437 (n + 1) + 1).toNat

end

end A076580.P5734221614199432708

/-! ## A076580.P10246765733811167275

`A253145(A114437(n+1)-1)`
-/

namespace A076580.P10246765733811167275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A114437 (n + 1) - 1).toNat

end

end A076580.P10246765733811167275

/-! ## A076580.P11024653064520632845

`A000096(A114437(n+1)-1)+1`
-/

namespace A076580.P11024653064520632845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A114437 (n + 1) - 1).toNat + 1

end

end A076580.P11024653064520632845

/-! ## A076580.P13538033371197064395

`A000124(A114437(n+1))-A000120(A034444(n+1))`
-/

namespace A076580.P13538033371197064395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A114437 (n + 1)).toNat - A000120 (A034444 (n + 1)).toNat

end

end A076580.P13538033371197064395

/-!
# A076581: Triangular numbers which are 7-almost primes.

The programs for A076581, there is no canonical definition to state claims against.
-/

/-! ## A076581.P15873294047651320417

`C(A240527(n+1)+1, 2)`
-/

namespace A076581.P15873294047651320417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A240527 (n + 1) + 1).toNat 2

end

end A076581.P15873294047651320417

/-! ## A076581.P9476406387185877952

`A000217(A240527(n+1))`
-/

namespace A076581.P9476406387185877952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A240527 (n + 1)).toNat

end

end A076581.P9476406387185877952

/-! ## A076581.P1593351247828353272

`A161680(A240527(n+1)+1)`
-/

namespace A076581.P1593351247828353272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A240527 (n + 1) + 1).toNat

end

end A076581.P1593351247828353272

/-! ## A076581.P238060617228942267

`A179865(A240527(n+1)+1)`
-/

namespace A076581.P238060617228942267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A240527 (n + 1) + 1).toNat

end

end A076581.P238060617228942267

/-! ## A076581.P8914480473758995394

`A253145(A240527(n+1)-1)`
-/

namespace A076581.P8914480473758995394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A240527 (n + 1) - 1).toNat

end

end A076581.P8914480473758995394

/-! ## A076581.P3221485593392023238

`A253145(eq[7, A069904(n+1)])`
-/

namespace A076581.P3221485593392023238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A076581.P3221485593392023238

/-! ## A076581.P6399054093851201005

`A000124(A240527(n+1))-ceil(1/A000041(n))`
-/

namespace A076581.P6399054093851201005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A240527 (n + 1)).toNat - ⌈1 / (A000041 n : ℚ)⌉

end

end A076581.P6399054093851201005

/-! ## A076581.P7663425663106175256

`A000124(A240527(n+1))-A008683(A014963(n+1))²`
-/

namespace A076581.P7663425663106175256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A240527 (n + 1)).toNat - A008683 (A014963 (n + 1)).toNat ^ 2

end

end A076581.P7663425663106175256

/-! ## A076581.P14099611533075336734

`A245467(2*A240527(n+1))`
-/

namespace A076581.P14099611533075336734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245467 (2 * A240527 (n + 1)).toNat

end

end A076581.P14099611533075336734

/-! ## A076581.P13521114250000061053

`A000124(A240527(n+1))-A031346(A056709(2*(n+1)))`
-/

namespace A076581.P13521114250000061053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A240527 (n + 1)).toNat - A031346 (A056709 (2 * (n + 1))).toNat

end

end A076581.P13521114250000061053

/-!
# A076582: Triangular numbers which are 8-almost primes.

The programs for A076582, there is no canonical definition to state claims against.
-/

/-! ## A076582.P9339537989373960727

`C(A240528(n+1)+1, 2)`
-/

namespace A076582.P9339537989373960727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A240528 (n + 1) + 1).toNat 2

end

end A076582.P9339537989373960727

/-! ## A076582.P3121473469780678998

`A000217(A240528(n+1))`
-/

namespace A076582.P3121473469780678998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A240528 (n + 1)).toNat

end

end A076582.P3121473469780678998

/-! ## A076582.P14955165880386868381

`A161680(A240528(n+1)+1)`
-/

namespace A076582.P14955165880386868381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A240528 (n + 1) + 1).toNat

end

end A076582.P14955165880386868381

/-! ## A076582.P11214366809043227233

`A179865(A240528(n+1)+1)`
-/

namespace A076582.P11214366809043227233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A240528 (n + 1) + 1).toNat

end

end A076582.P11214366809043227233

/-! ## A076582.P13428957765729779374

`A000124(A240528(n+1))-A000034(2*n)`
-/

namespace A076582.P13428957765729779374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A240528 (n + 1)).toNat - A000034 (2 * n)

end

end A076582.P13428957765729779374

/-! ## A076582.P2227170091260262090

`A000124(A240528(n+1))-A007318(and(3, -n))`
-/

namespace A076582.P2227170091260262090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A240528 (n + 1)).toNat - A007318 (Int.land 3 (-(n : ℤ))).toNat

end

end A076582.P2227170091260262090

/-! ## A076582.P12092597894800091458

`A000124(A240528(n+1))-A007318(val(n+1, 7))`
-/

namespace A076582.P12092597894800091458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A240528 (n + 1)).toNat - A007318 (SequenceMachineLib.valuation (n + 1) 7)

end

end A076582.P12092597894800091458

/-! ## A076582.P14397150284289236499

`floor(A000124(A240528(n+1))-1/A006530(n+1))`
-/

namespace A076582.P14397150284289236499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000124 (A240528 (n + 1)).toNat : ℚ) - 1 / (A006530 (n + 1) : ℚ)⌋

end

end A076582.P14397150284289236499

/-! ## A076582.P13604037657483917585

`A000124(A240528(n+1))-A001221(A001359(n+1))`
-/

namespace A076582.P13604037657483917585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A240528 (n + 1)).toNat - A001221 (A001359 (n + 1)).toNat

end

end A076582.P13604037657483917585

/-! ## A076582.P9208198718621656283

`A000124(A240528(n+1))-A001222(A002313(n+1))`
-/

namespace A076582.P9208198718621656283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A240528 (n + 1)).toNat - A001222 (A002313 (n + 1)).toNat

end

end A076582.P9208198718621656283

/-! ## A076582.P5941396169218227416

`A000124(A240528(n+1))-A000045(A020639(2*(n+1)))`
-/

namespace A076582.P5941396169218227416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A240528 (n + 1)).toNat - A000045 (A020639 (2 * (n + 1))).toNat

end

end A076582.P5941396169218227416

/-! ## A076582.P5736468186289725958

`A000124(A240528(n+1))-A014963(lcm(22, n+1))`
-/

namespace A076582.P5736468186289725958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A240528 (n + 1)).toNat - A014963 (Nat.lcm 22 (n + 1))

end

end A076582.P5736468186289725958

/-! ## A076582.P2783542528949804266

`A160791(2*A240528(n+1))`
-/

namespace A076582.P2783542528949804266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160791 (2 * A240528 (n + 1)).toNat

end

end A076582.P2783542528949804266

/-! ## A076582.P328623175634387238

`A245467(2*A240528(n+1))`
-/

namespace A076582.P328623175634387238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245467 (2 * A240528 (n + 1)).toNat

end

end A076582.P328623175634387238

/-!
# A076583: Triangular numbers which are 9-almost primes.

The programs for A076583, there is no canonical definition to state claims against.
-/

/-! ## A076583.P14727029457357193511

`C(A240529(n+1)+1, 2)`
-/

namespace A076583.P14727029457357193511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A240529 (n + 1) + 1).toNat 2

end

end A076583.P14727029457357193511

/-! ## A076583.P6714323771259858736

`A000217(A240529(n+1))`
-/

namespace A076583.P6714323771259858736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A240529 (n + 1)).toNat

end

end A076583.P6714323771259858736

/-! ## A076583.P8705356168158160485

`A253145(A240529(n+1)-1)`
-/

namespace A076583.P8705356168158160485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A240529 (n + 1) - 1).toNat

end

end A076583.P8705356168158160485

/-! ## A076583.P11286535714822291788

`A161680(A240529(n+1)+1)`
-/

namespace A076583.P11286535714822291788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A240529 (n + 1) + 1).toNat

end

end A076583.P11286535714822291788

/-! ## A076583.P15734932842317351627

`A179865(A240529(n+1)+1)`
-/

namespace A076583.P15734932842317351627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A240529 (n + 1) + 1).toNat

end

end A076583.P15734932842317351627

/-!
# A076585: Let P(n,x) = Product_{k=1..n} polcyclo(k,x) where polcyclo(k,x) denotes the k-th cyclotomic polynomial. Sequence gives array of coefficients of P(n,x).

The programs for A076585, there is no canonical definition to state claims against.
-/

/-! ## A076585.P12205223002148479712

`A049347(A001629(n*A267533(n)))`
-/

namespace A076585.P12205223002148479712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A001629 ((n : ℤ) * A267533 n).toNat).toNat

end

end A076585.P12205223002148479712

/-! ## A076585.P12464593368313860329

`A276516(C(A359907(n), A207031(n+1)))`
-/

namespace A076585.P12464593368313860329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276516 (Nat.choose (A359907 n).toNat (A207031 (n + 1)).toNat)

end

end A076585.P12464593368313860329

/-! ## A076585.P5942656686670707773

`A128130(and(A008955(n+3), A074083(n+3)))`
-/

namespace A076585.P5942656686670707773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128130 (Int.land (A008955 (n + 3)) (A074083 (n + 3))).toNat

end

end A076585.P5942656686670707773

/-! ## A076585.P11199384287275387761

`A152904(A107857(n+1))`
-/

namespace A076585.P11199384287275387761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152904 (A107857 (n + 1)).toNat

end

end A076585.P11199384287275387761

/-! ## A076585.P2808891122140832783

`A102283(A272464(n+1)+A022358(n))`
-/

namespace A076585.P2808891122140832783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A272464 (n + 1) + A022358 n).toNat

end

end A076585.P2808891122140832783

/-!
# A076591: a(1)=1, a(2)=2 a(n)=a(n-1)+(a(n-2) mod n).

The programs for A076591, the canonical program `A076591.P1559582876334619694` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076591 has offset 1).

The definition of A076591 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)%(n+1)` (program `A076591.P1559582876334619694`, by `A076591.P1559582876334619694.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076591.P1559582876334619694

`a(n-1)+a(n-2)%(n+1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076591

/-- `a(n-1)+a(n-2)%(n+1)` -/
def P1559582876334619694.Spec : Prop :=
  ∀ n, (P1559582876334619694.a n : ℤ) = A076591 (n + 1)

theorem P1559582876334619694.correct : P1559582876334619694.Spec := by
  intro n
  simp only [A076591, Nat.add_sub_cancel]

end A076591

/-! ## A076591.P9433233069019990460

`a(n-1)--a(n-2)%xor(n, -1)` with `a(0)=1, a(1)=2`
-/

namespace A076591.P9433233069019990460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - Int.tmod (-a (n - 2)) (Int.xor (n : ℤ) (-1))

end

end A076591.P9433233069019990460

namespace A076591

/-- `a(n-1)--a(n-2)%xor(n, -1)` -/
def P9433233069019990460.Spec : Prop :=
  ∀ n, P9433233069019990460.a n = A076591 (n + 1)

end A076591

/-! ## A076591.P11937154593351837507

`A122953(or(1, A265758(n)))`
-/

namespace A076591.P11937154593351837507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122953 (Int.lor 1 (A265758 n)).toNat

end

end A076591.P11937154593351837507

namespace A076591

/-- `A122953(or(1, A265758(n)))` -/
def P11937154593351837507.Spec : Prop :=
  ∀ n, P11937154593351837507.a n = A076591 (n + 1)

end A076591

/-! ## A076591.P14987633340414612115

`∑[dr(A283463(A333681(n)))]`
-/

namespace A076591.P14987633340414612115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A283463 (A333681 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076591.P14987633340414612115

namespace A076591

/-- `∑[dr(A283463(A333681(n)))]` -/
def P14987633340414612115.Spec : Prop :=
  ∀ n, (P14987633340414612115.a n : ℤ) = A076591 (n + 1)

end A076591

/-! ## A076591.P1504733075331952056

`∑[A227185(A072881(n+1))]`
-/

namespace A076591.P1504733075331952056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 (A072881 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076591.P1504733075331952056

namespace A076591

/-- `∑[A227185(A072881(n+1))]` -/
def P1504733075331952056.Spec : Prop :=
  ∀ n, P1504733075331952056.a n = A076591 (n + 1)

end A076591

/-!
# A076592: First occurrence of n as a term in the continued fraction for log(2).

The programs for A076592, there is no canonical definition to state claims against.
-/

/-! ## A076592.P16803419080612081854

`A228269(n+1)+1`
-/

namespace A076592.P16803419080612081854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228269 (n + 1) + 1

end

end A076592.P16803419080612081854

/-! ## A076592.P6095823392208887854

`A020725(A228269(n+1))`
-/

namespace A076592.P6095823392208887854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A228269 (n + 1)).toNat

end

end A076592.P6095823392208887854

/-!
# A076597: Numbers k such that sqrt(k*(k-1)*(k-2)*(k-3)+1) is a prime.

The programs for A076597, there is no canonical definition to state claims against.
-/

/-! ## A076597.P8937253740408366509

`A002328(n+1)+1`
-/

namespace A076597.P8937253740408366509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) + 1

end

end A076597.P8937253740408366509

/-! ## A076597.P7225029834839886821

`A045546(n+1)+2`
-/

namespace A076597.P7225029834839886821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1) + 2

end

end A076597.P7225029834839886821

/-! ## A076597.P927001857010304791

`A089362(n+1)-1`
-/

namespace A076597.P927001857010304791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089362 (n + 1) - 1

end

end A076597.P927001857010304791

/-! ## A076597.P15843949630157257047

`A094210(n+1)+3`
-/

namespace A076597.P15843949630157257047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1) + 3

end

end A076597.P15843949630157257047

/-! ## A076597.P2849503312618414871

`(A088502(n+1)+3)/2`
-/

namespace A076597.P2849503312618414871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088502 (n + 1) + 3 : ℚ) / 2

end

end A076597.P2849503312618414871

/-! ## A076597.P4065789317820632766

`floor(sqrt(A002327(n+1)))+2`
-/

namespace A076597.P4065789317820632766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002327 (n + 1)) + 2

end

end A076597.P4065789317820632766

/-! ## A076597.P12898005377056878312

`(sqrt(A110013(n+1))+3)/2`
-/

namespace A076597.P12898005377056878312
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A110013 (n + 1) : ℝ) + 3) / 2

end

end A076597.P12898005377056878312

/-! ## A076597.P1440101114797179566

`A014682(A088502(n+1)+1)+1`
-/

namespace A076597.P1440101114797179566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A088502 (n + 1) + 1).toNat + 1

end

end A076597.P1440101114797179566

/-! ## A076597.P15042223084072332584

`A020725(A002328(n+1))`
-/

namespace A076597.P15042223084072332584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A002328 (n + 1)).toNat

end

end A076597.P15042223084072332584

/-! ## A076597.P4692072905172516698

`A009056(A045546(n+1))`
-/

namespace A076597.P4692072905172516698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A045546 (n + 1)).toNat

end

end A076597.P4692072905172516698

/-! ## A076597.P8087084055437491029

`A023443(A089362(n+1))`
-/

namespace A076597.P8087084055437491029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A089362 (n + 1)).toNat

end

end A076597.P8087084055437491029

/-! ## A076597.P559638694883643746

`A023444(A089362(n+1)+1)`
-/

namespace A076597.P559638694883643746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A089362 (n + 1) + 1).toNat

end

end A076597.P559638694883643746

/-! ## A076597.P15946023511064099855

`A023445(A089362(n+1)+2)`
-/

namespace A076597.P15946023511064099855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A089362 (n + 1) + 2).toNat

end

end A076597.P15946023511064099855

/-! ## A076597.P9197929772787611881

`A009056(eq[2, A278247(n)]+1)`
-/

namespace A076597.P9197929772787611881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A076597.P9197929772787611881

/-! ## A076597.P17317437906361531018

`A023446(A089362(n+1)+1)+2`
-/

namespace A076597.P17317437906361531018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A089362 (n + 1) + 1).toNat + 2

end

end A076597.P17317437906361531018

/-! ## A076597.P12970513242051366857

`A030451(A088502(n+1))`
-/

namespace A076597.P12970513242051366857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (A088502 (n + 1)).toNat

end

end A076597.P12970513242051366857

/-! ## A076597.P13425653321207331615

`A008619(A088502(n+1)+1)`
-/

namespace A076597.P13425653321207331615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A088502 (n + 1) + 1).toNat

end

end A076597.P13425653321207331615

/-! ## A076597.P4338035449099878105

`A052938(A088502(n+1)+1)`
-/

namespace A076597.P4338035449099878105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A088502 (n + 1) + 1).toNat

end

end A076597.P4338035449099878105

/-! ## A076597.P12863489120999376390

`A097065(A088502(n+1)+1)`
-/

namespace A076597.P12863489120999376390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (A088502 (n + 1) + 1).toNat

end

end A076597.P12863489120999376390

/-! ## A076597.P7378238657305478373

`A008621(2*(A088502(n+1)+1))`
-/

namespace A076597.P7378238657305478373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * (A088502 (n + 1) + 1)).toNat

end

end A076597.P7378238657305478373

/-!
# A076598: Sum of squares of divisors d of n such that d or n/d is odd.

The programs for A076598, the canonical program `A076598.P8952972172380469105` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076598 has offset 1).

The definition of A076598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076598.P7503329035129377515

`(A328667(n+1)+A001157(n+1))/2`
-/

namespace A076598.P7503329035129377515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328667 (n + 1) + A001157 (n + 1) : ℚ) / 2

end

end A076598.P7503329035129377515

namespace A076598

/-- `(A328667(n+1)+A001157(n+1))/2` -/
def P7503329035129377515.Spec : Prop :=
  ∀ n, P7503329035129377515.a n = (A076598 (n + 1) : ℚ)

end A076598

/-! ## A076598.P8952972172380469105

`or(1, A006519(n+1)²)*A050999(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076598

/-- `or(1, A006519(n+1)²)*A050999(n+1)` -/
def P8952972172380469105.Spec : Prop :=
  ∀ n, P8952972172380469105.a n = A076598 (n + 1)

theorem P8952972172380469105.correct : P8952972172380469105.Spec := by
  intro n
  simp only [A076598, Nat.add_sub_cancel]

end A076598

/-! ## A076598.P15727004461963997826

`∑{d}[n+1, A002618(#)*A046897((n+1)/#)]`
-/

namespace A076598.P15727004461963997826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A046897 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076598.P15727004461963997826

namespace A076598

/-- `∑{d}[n+1, A002618(#)*A046897((n+1)/#)]` -/
def P15727004461963997826.Spec : Prop :=
  ∀ n, P15727004461963997826.a n = A076598 (n + 1)

end A076598

/-! ## A076598.P9797644656708720642

`∑{d}[n+1, A254520(#)*A360159((n+1)/#)]`
-/

namespace A076598.P9797644656708720642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254520 d * A360159 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076598.P9797644656708720642

namespace A076598

/-- `∑{d}[n+1, A254520(#)*A360159((n+1)/#)]` -/
def P9797644656708720642.Spec : Prop :=
  ∀ n, P9797644656708720642.a n = A076598 (n + 1)

end A076598

/-! ## A076598.P17978124680552920112

`∑{d}[n+1, A078306(#)*A130706((n+1)/#-1)]`
-/

namespace A076598.P17978124680552920112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078306 d * A130706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A076598.P17978124680552920112

namespace A076598

/-- `∑{d}[n+1, A078306(#)*A130706((n+1)/#-1)]` -/
def P17978124680552920112.Spec : Prop :=
  ∀ n, P17978124680552920112.a n = A076598 (n + 1)

end A076598

/-! ## A076598.P4121006459065421299

`A050999(n+1)+A076577(n+1)%A001157(n+1)`
-/

namespace A076598.P4121006459065421299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050999 (n + 1) + Int.tmod (A076577 (n + 1)) (A001157 (n + 1))

end

end A076598.P4121006459065421299

namespace A076598

/-- `A050999(n+1)+A076577(n+1)%A001157(n+1)` -/
def P4121006459065421299.Spec : Prop :=
  ∀ n, P4121006459065421299.a n = A076598 (n + 1)

end A076598

/-! ## A076598.P14932061757103374078

`A076577(n+1)+A001157(2*(n+1))%A001157(n+1)`
-/

namespace A076598.P14932061757103374078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076577 (n + 1) + Int.tmod (A001157 (2 * (n + 1))) (A001157 (n + 1))

end

end A076598.P14932061757103374078

namespace A076598

/-- `A076577(n+1)+A001157(2*(n+1))%A001157(n+1)` -/
def P14932061757103374078.Spec : Prop :=
  ∀ n, P14932061757103374078.a n = A076598 (n + 1)

end A076598

/-! ## A076598.P6121562988872153018

`Δ[A008619(A001196(n))]*A050999(n+1)`
-/

namespace A076598.P6121562988872153018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A001196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A050999 (n + 1)

end

end A076598.P6121562988872153018

namespace A076598

/-- `Δ[A008619(A001196(n))]*A050999(n+1)` -/
def P6121562988872153018.Spec : Prop :=
  ∀ n, P6121562988872153018.a n = A076598 (n + 1)

end A076598

