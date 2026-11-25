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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C051
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B005.C003
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A076500: Distance between natural sculptures.

The programs for A076500, there is no canonical definition to state claims against.
-/

/-! ## A076500.P14268669572884733080

`Δ[A076450(1+n)]`
-/

namespace A076500.P14268669572884733080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076450 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076500.P14268669572884733080

/-! ## A076500.P17645174069339197217

`A076450(n+2)-A076450(n+1)`
-/

namespace A076500.P17645174069339197217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076450 (n + 2) - A076450 (n + 1)

end

end A076500.P17645174069339197217

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
# A076502: a(1)=1, a(n)=n-a(n-a(n-a(n-1))).

The programs for A076502, the canonical program `A076502.P2802763690025371067` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076502 has offset 1).

The definition of A076502 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-a(n-a(n-a(n-1)))` (program `A076502.P2802763690025371067`, by `A076502.P2802763690025371067.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076502.P2802763690025371067

`n+1-a(n-a(n-a(n-1)))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
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

The programs for A076503, there is no canonical definition to state claims against.
-/

/-! ## A076503.P10982383402071221078

`p?[A215618(n+1)]`
-/

namespace A076503.P10982383402071221078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076503.P10982383402071221078

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

/-! ## A076504.P6234678983461053415

`2*(1+A069142(n+1))`
-/

namespace A076504.P6234678983461053415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 + A069142 (n + 1))

end

end A076504.P6234678983461053415

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

The programs for A076505, the canonical program `A076505.P15315995906408355833` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076505 has offset 1).

The definition of A076505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076505.P15315995906408355833

`ogf((1+2x+9x^2-12x^3)/(1-24x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A076505

/-- `ogf((1+2x+9x^2-12x^3)/(1-24x^3))` -/
def P15315995906408355833.Spec : Prop :=
  ∀ n, P15315995906408355833.a n = A076505 (n + 1)

theorem P15315995906408355833.correct : P15315995906408355833.Spec := by
  intro n
  simp only [A076505, Nat.add_sub_cancel]

end A076505

/-! ## A076505.P4666007799640939732

`24*a(n-3)` with `a(0)=1, a(1)=2, a(2)=9, a(3)=12`
-/

namespace A076505.P4666007799640939732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 9, 12] fun n a =>
  24 * a (n - 3)

end

end A076505.P4666007799640939732

namespace A076505

/-- `24*a(n-3)` -/
def P4666007799640939732.Spec : Prop :=
  ∀ n, (P4666007799640939732.a n : ℤ) = A076505 (n + 1)

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

/-! ## A076505.P17786636109691085325

`Δ[A076506(A028310(n))+A040000(n)]`
-/

namespace A076505.P17786636109691085325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076506 (A028310 n).toNat + A040000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076505.P17786636109691085325

namespace A076505

/-- `Δ[A076506(A028310(n))+A040000(n)]` -/
def P17786636109691085325.Spec : Prop :=
  ∀ n, P17786636109691085325.a n = A076505 (n + 1)

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

The programs for A076506, the canonical program `A076506.P5341087153202782567` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076506 has offset 1).

The definition of A076506 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+12x^2)/(1-24x^3))` (program `A076506.P5341087153202782567`, by `A076506.P5341087153202782567.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076506.P5341087153202782567

`ogf((1+3x+12x^2)/(1-24x^3))`

The canonical program, it is in `Seq.B000.C014`.
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

The programs for A076507, the canonical program `A076507.P13737087136461869714` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076507 has offset 1).

The definition of A076507 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076507.P13737087136461869714

`ogf((2+6x+8x^2-16x^3)/(1-24x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A076507

/-- `ogf((2+6x+8x^2-16x^3)/(1-24x^3))` -/
def P13737087136461869714.Spec : Prop :=
  ∀ n, P13737087136461869714.a n = A076507 (n + 1)

theorem P13737087136461869714.correct : P13737087136461869714.Spec := by
  intro n
  simp only [A076507, Nat.add_sub_cancel]

end A076507

/-! ## A076507.P12967974437446968008

`Δ[24*a(n-3)]` with `a(0)=0, a(1)=2, a(2)=8, a(3)=16`
-/

namespace A076507.P12967974437446968008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 8, 16] fun n f1 =>
  24 * f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A076507.P12967974437446968008

namespace A076507

/-- `Δ[24*a(n-3)]` -/
def P12967974437446968008.Spec : Prop :=
  ∀ n, P12967974437446968008.a n = A076507 (n + 1)

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

The programs for A076508, the canonical program `A076508.P9893825075980860230` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076508 has offset 1).

The definition of A076508 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2+8x+16x^2)/(1-24x^3))` (program `A076508.P9893825075980860230`, by `A076508.P9893825075980860230.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076508.P9893825075980860230

`ogf((2+8x+16x^2)/(1-24x^3))`

The canonical program, it is in `Seq.B000.C014`.
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

The programs for A076509, the canonical program `A076509.P7365516774212724396` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076509 has offset 1).

The definition of A076509 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3+3x+12x^2-18x^3)/(1-24x^3))` (program `A076509.P7365516774212724396`, by `A076509.P7365516774212724396.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076509.P7365516774212724396

`ogf((3+3x+12x^2-18x^3)/(1-24x^3))`

The canonical program, it is in `Seq.B000.C014`.
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

The programs for A076510, the canonical program `A076510.P17032470915015039823` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076510 has offset 1).

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

The canonical program, it is in `Seq.B000.C014`.
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

The programs for A076511, the canonical program `A076511.P7316728277018635984` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076511 has offset 1).

The definition of A076511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076511.P7316728277018635984

`A051953(n+1)/A009195(n+1)`

The canonical program, it is in `Seq.B004.C001`.
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

/-! ## A076511.P5503181507867040285

`lcm(1+n, A051953(1+n))/(n+1)`
-/

namespace A076511.P5503181507867040285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (1 + n : ℤ) (A051953 (1 + n)) : ℚ) / (n + 1 : ℚ)

end

end A076511.P5503181507867040285

namespace A076511

/-- `lcm(1+n, A051953(1+n))/(n+1)` -/
def P5503181507867040285.Spec : Prop :=
  ∀ n, P5503181507867040285.a n = (A076511 (n + 1) : ℚ)

end A076511

/-! ## A076511.P12780317361675881289

`(∏{p}[n+1, #]-∏{p}[1+n, #-1])/A009195(∏{p}[n+1, #])`
-/

namespace A076511.P12780317361675881289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - ∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) / (A009195 (∏ p ∈ Nat.primeFactors (f3 n), p) : ℚ)

end

end A076511.P12780317361675881289

namespace A076511

/-- `(∏{p}[n+1, #]-∏{p}[1+n, #-1])/A009195(∏{p}[n+1, #])` -/
def P12780317361675881289.Spec : Prop :=
  ∀ n, P12780317361675881289.a n = (A076511 (n + 1) : ℚ)

end A076511

/-! ## A076511.P14863494502940269405

`A075857(n+1)/Δ[A005728(n)]`
-/

namespace A076511.P14863494502940269405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075857 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A076511.P14863494502940269405

namespace A076511

/-- `A075857(n+1)/Δ[A005728(n)]` -/
def P14863494502940269405.Spec : Prop :=
  ∀ n, P14863494502940269405.a n = (A076511 (n + 1) : ℚ)

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

/-!
# A076512: Denominator of cototient(n)/totient(n).

The programs for A076512, the canonical program `A076512.P8858335873698659586` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076512 has offset 1).

The definition of A076512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076512.P8858335873698659586

`A000010(n+1)/A009195(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A076512

/-- `A000010(n+1)/A009195(n+1)` -/
def P8858335873698659586.Spec : Prop :=
  ∀ n, P8858335873698659586.a n = (A076512 (n + 1) : ℚ)

end A076512

/-! ## A076512.P3597317773834199067

`lcm((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], ∑[(2*n+1)*(1-4/2)^n])/(n+1)`
-/

namespace A076512.P3597317773834199067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * (1 - (4 : ℚ) / 2) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f3 j)) : ℚ) / (n + 1 : ℚ)

end

end A076512.P3597317773834199067

namespace A076512

/-- `lcm((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], ∑[(2*n+1)*(1-4/2)^n])/(n+1)` -/
def P3597317773834199067.Spec : Prop :=
  ∀ n, P3597317773834199067.a n = (A076512 (n + 1) : ℚ)

end A076512

/-! ## A076512.P16548643602186945576

`A294649(∏{p}[1+n, #])`
-/

namespace A076512.P16548643602186945576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294649 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A076512.P16548643602186945576

namespace A076512

/-- `A294649(∏{p}[1+n, #])` -/
def P16548643602186945576.Spec : Prop :=
  ∀ n, P16548643602186945576.a n = A076512 (n + 1)

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

/-! ## A076512.P7144945521017324619

`A009262(n+1)/(1+n)`
-/

namespace A076512.P7144945521017324619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009262 (n + 1) : ℚ) / (1 + n : ℚ)

end

end A076512.P7144945521017324619

namespace A076512

/-- `A009262(n+1)/(1+n)` -/
def P7144945521017324619.Spec : Prop :=
  ∀ n, P7144945521017324619.a n = (A076512 (n + 1) : ℚ)

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

/-! ## A076512.P6731953576975852625

`A000010(A050399(n+1))/(n+1)`
-/

namespace A076512.P6731953576975852625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A050399 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A076512.P6731953576975852625

namespace A076512

/-- `A000010(A050399(n+1))/(n+1)` -/
def P6731953576975852625.Spec : Prop :=
  ∀ n, P6731953576975852625.a n = (A076512 (n + 1) : ℚ)

end A076512

/-! ## A076512.P5436206893753326025

`A000188(A127473(n+1))/A009195(n+1)`
-/

namespace A076512.P5436206893753326025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000188 (A127473 (n + 1)).toNat : ℚ) / (A009195 (n + 1) : ℚ)

end

end A076512.P5436206893753326025

namespace A076512

/-- `A000188(A127473(n+1))/A009195(n+1)` -/
def P5436206893753326025.Spec : Prop :=
  ∀ n, P5436206893753326025.a n = (A076512 (n + 1) : ℚ)

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

/-! ## A076517.P14911373905877862953

`∑[A006556(4+n)]`
-/

namespace A076517.P14911373905877862953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006556 (4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076517.P14911373905877862953

/-! ## A076517.P15362846958838170572

`A006556(n+4)+a(n-1)` with `a(0)=1`
-/

namespace A076517.P15362846958838170572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006556 (n + 4) + a (n - 1)

end

end A076517.P15362846958838170572

/-! ## A076517.P5449949752580463753

`∑[A060370(4+n)]`
-/

namespace A076517.P5449949752580463753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076517.P5449949752580463753

/-! ## A076517.P15169608686314773368

`A060370(n+4)+a(n-1)` with `a(0)=1`
-/

namespace A076517.P15169608686314773368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A060370 (n + 4) + a (n - 1)

end

end A076517.P15169608686314773368

/-! ## A076517.P3624003943173762477

`∑[A023142(A000040(4+n))-1]`
-/

namespace A076517.P3624003943173762477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023142 (A000040 (4 + n)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076517.P3624003943173762477

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

The programs for A076520, the canonical program `A076520.P4684353534651509883` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076520 has offset 1).

The definition of A076520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1862 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076520.P4684353534651509883

`fp[A237526(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076520

/-- `fp[A237526(n)]` -/
def P4684353534651509883.Spec : Prop :=
  ∀ n, (P4684353534651509883.a n : ℤ) = A076520 (n + 1)

theorem P4684353534651509883.correct : P4684353534651509883.Spec := by
  intro n
  simp only [A076520, Nat.add_sub_cancel]

end A076520

/-! ## A076520.P4332099139050961137

`fp[∑[A063725(n)]]`
-/

namespace A076520.P4332099139050961137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A076520.P4332099139050961137

namespace A076520

/-- `fp[∑[A063725(n)]]` -/
def P4332099139050961137.Spec : Prop :=
  ∀ n, (P4332099139050961137.a n : ℤ) = A076520 (n + 1)

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

/-!
# A076521: a(n) = floor( (n/2)*log_2(2*n/3) ).

The programs for A076521, the canonical program `A076521.P4967248313304446533` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076521 has offset 2).

The definition of A076521 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+2)/2*log2(2*(n+2)/3))` (program `A076521.P4967248313304446533`, by `A076521.P4967248313304446533.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076521.P4967248313304446533

`floor((n+2)/2*log2(2*(n+2)/3))`

The canonical program, it is in `Seq.B000.C014`.
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

/-! ## A076521.P6436105376774295542

`A394247(C(∑[n+1], 2))`
-/

namespace A076521.P6436105376774295542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394247 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A076521.P6436105376774295542

namespace A076521

/-- `A394247(C(∑[n+1], 2))` -/
def P6436105376774295542.Spec : Prop :=
  ∀ n, P6436105376774295542.a n = A076521 (n + 2)

end A076521

/-!
# A076522: a(n) = floor( n*log_2(4*n/3) ).

The programs for A076522, the canonical program `A076522.P8325656967563149502` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076522 has offset 1).

The definition of A076522 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*log2(4*(n+1)/3))` (program `A076522.P8325656967563149502`, by `A076522.P8325656967563149502.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076522.P8325656967563149502

`floor((n+1)*log2(4*(n+1)/3))`

The canonical program, it is in `Seq.B000.C014`.
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

/-! ## A076522.P13626715731533316017

`A094685(2*n*A000093(2*n))`
-/

namespace A076522.P13626715731533316017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094685 ((2 * n : ℤ) * A000093 (2 * n)).toNat

end

end A076522.P13626715731533316017

namespace A076522

/-- `A094685(2*n*A000093(2*n))` -/
def P13626715731533316017.Spec : Prop :=
  ∀ n, P13626715731533316017.a n = A076522 (n + 1)

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

/-! ## A076523.P13338970863042232644

`row(∑[∑[floor(n*(ϕ+3))]])+1`
-/

namespace A076523.P13338970863042232644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.goldenRatio + 3)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A076523.P13338970863042232644

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

/-! ## A076524.P1927042383463318389

`or(A000005(3*n+2), A180101(A145669(n+1)))`
-/

namespace A076524.P1927042383463318389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (3 * n + 2)) (A180101 (A145669 (n + 1)).toNat)

end

end A076524.P1927042383463318389

/-!
# A076525: Numbers n such that sopf(n) = sopf(n+1) - sopf(n-1), where sopf(x) = sum of the distinct prime factors of x.

The programs for A076525, there is no canonical definition to state claims against.
-/

/-! ## A076525.P516962488654713627

`A075565(1+n)-1`
-/

namespace A076525.P516962488654713627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075565 (1 + n) - 1

end

end A076525.P516962488654713627

/-! ## A076525.P14910524855106239648

`-1+A075565(n+1)`
-/

namespace A076525.P14910524855106239648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A075565 (n + 1)

end

end A076525.P14910524855106239648

/-! ## A076525.P18348751908054285618

`A066182(A075565(n+1))`
-/

namespace A076525.P18348751908054285618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A075565 (n + 1)).toNat

end

end A076525.P18348751908054285618

/-! ## A076525.P12691178387579394743

`A004483(A075565(n+1))`
-/

namespace A076525.P12691178387579394743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A075565 (n + 1)).toNat

end

end A076525.P12691178387579394743

/-!
# A076526: a(n) = r * max(e_1, ..., e_r), where n = p_1^e_1 . .... p_r^e_r is the canonical prime factorization of n, a(1) = 0.

The programs for A076526, the canonical program `A076526.P164306316077260978` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076526 has offset 1).

The definition of A076526 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076526.P164306316077260978

`A001221(n+1)*A051903(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A076526

/-- `A001221(n+1)*A051903(n+1)` -/
def P164306316077260978.Spec : Prop :=
  ∀ n, P164306316077260978.a n = A076526 (n + 1)

theorem P164306316077260978.correct : P164306316077260978.Spec := by
  intro n
  simp only [A076526, Nat.add_sub_cancel]

end A076526

/-! ## A076526.P5251402270985691660

`∑{p}[n+1, gcd(n, #)]*A051903(n+1)`
-/

namespace A076526.P5251402270985691660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ) * A051903 (n + 1)

end

end A076526.P5251402270985691660

namespace A076526

/-- `∑{p}[n+1, gcd(n, #)]*A051903(n+1)` -/
def P5251402270985691660.Spec : Prop :=
  ∀ n, P5251402270985691660.a n = A076526 (n + 1)

end A076526

/-! ## A076526.P1575651010129592993

`(A067132(1+n)-1)*∑{e}[∏{p}[n+1, #], #]`
-/

namespace A076526.P1575651010129592993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A067132 (1 + n) - 1) * ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A076526.P1575651010129592993

namespace A076526

/-- `(A067132(1+n)-1)*∑{e}[∏{p}[n+1, #], #]` -/
def P1575651010129592993.Spec : Prop :=
  ∀ n, P1575651010129592993.a n = A076526 (n + 1)

end A076526

/-! ## A076526.P9530729201577264337

`val(A359600(n+1), 3)*∑{e}[∏{p}[n+1, #], #]`
-/

namespace A076526.P9530729201577264337
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A359600 (n + 1)).toNat 3 * (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A076526.P9530729201577264337

namespace A076526

/-- `val(A359600(n+1), 3)*∑{e}[∏{p}[n+1, #], #]` -/
def P9530729201577264337.Spec : Prop :=
  ∀ n, (P9530729201577264337.a n : ℤ) = A076526 (n + 1)

end A076526

/-! ## A076526.P17417119032474195463

`val(A278254(n+1), 4)*∑{e}[∏{p}[n+1, #], #]`
-/

namespace A076526.P17417119032474195463
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278254 (n + 1)).toNat 4 * (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A076526.P17417119032474195463

namespace A076526

/-- `val(A278254(n+1), 4)*∑{e}[∏{p}[n+1, #], #]` -/
def P17417119032474195463.Spec : Prop :=
  ∀ n, (P17417119032474195463.a n : ℤ) = A076526 (n + 1)

end A076526

/-! ## A076526.P15098078732851855538

`val(A328400(n+1), 2)*∑{p}[n+1, ceil(1/#)]`
-/

namespace A076526.P15098078732851855538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A328400 (n + 1)).toNat 2 : ℤ) * (∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉)

end

end A076526.P15098078732851855538

namespace A076526

/-- `val(A328400(n+1), 2)*∑{p}[n+1, ceil(1/#)]` -/
def P15098078732851855538.Spec : Prop :=
  ∀ n, P15098078732851855538.a n = A076526 (n + 1)

end A076526

/-! ## A076526.P5381232727682491021

`∑{p}[n+1, ceil(1/#)]*∑{e}[A238745(n+1), #]`
-/

namespace A076526.P5381232727682491021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉) * ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

end

end A076526.P5381232727682491021

namespace A076526

/-- `∑{p}[n+1, ceil(1/#)]*∑{e}[A238745(n+1), #]` -/
def P5381232727682491021.Spec : Prop :=
  ∀ n, P5381232727682491021.a n = A076526 (n + 1)

end A076526

/-! ## A076526.P8065647713464578740

`A335603(A046523(n+1))`
-/

namespace A076526.P8065647713464578740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335603 (A046523 (n + 1)).toNat

end

end A076526.P8065647713464578740

namespace A076526

/-- `A335603(A046523(n+1))` -/
def P8065647713464578740.Spec : Prop :=
  ∀ n, P8065647713464578740.a n = A076526 (n + 1)

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
  simp only [A076526, Nat.add_sub_cancel, A076526.P13824860245754883589.a, A076526.P164306316077260978.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A051903, A051903.P2322391309586276104.a, A067132, A067132.P2149404699775634079.a, A028234, A028234.P14857795114050463851.f1, A028234.P14857795114050463851.a, A067029, A067029.P6774187829245926468.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A020639, A020639.P7578813688609615429.a, A241917, A241917.P8169004480460949126.a, A329607, A329607.P16260753851820396302.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A055396, A055396.P18305262754425103137.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, SequenceMachineLib.memo_apply]
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
  simp only [A076526, Nat.add_sub_cancel, A076526.P2289416880772241202.a, A076526.P164306316077260978.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A051903, A051903.P2322391309586276104.a, A083399, A083399.P16148020281325742632.a, A000005, A000005.P16091521709108585461.a, A028234, A028234.P14857795114050463851.f1, A028234.P14857795114050463851.a, A055212, A055212.P14412881054625885538.a, A067029, A067029.P6774187829245926468.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A020639, A020639.P7578813688609615429.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A033273, A033273.P18420659424697249895.a, A241917, A241917.P8169004480460949126.a, A329607, A329607.P16260753851820396302.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A051731, A051731.P11318043630102858095.a, A052126, A052126.P1944428405920482243.a, A055396, A055396.P18305262754425103137.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

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

/-! ## A076526.P5830982725721432316

`A051903(n+1)*A051903(A034444(n+1))`
-/

namespace A076526.P5830982725721432316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) * A051903 (A034444 (n + 1)).toNat

end

end A076526.P5830982725721432316

namespace A076526

/-- `A051903(n+1)*A051903(A034444(n+1))` -/
def P5830982725721432316.Spec : Prop :=
  ∀ n, P5830982725721432316.a n = A076526 (n + 1)

end A076526

/-! ## A076526.P5015246573714392380

`A051903(n+1)*A398572(A007947(n+1))`
-/

namespace A076526.P5015246573714392380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) * A398572 (A007947 (n + 1)).toNat

end

end A076526.P5015246573714392380

namespace A076526

/-- `A051903(n+1)*A398572(A007947(n+1))` -/
def P5015246573714392380.Spec : Prop :=
  ∀ n, P5015246573714392380.a n = A076526 (n + 1)

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

/-! ## A076528.P1545928208032008669

`or(1, A073500(-xor(n, -1)))`
-/

namespace A076528.P1545928208032008669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A073500 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A076528.P1545928208032008669

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

/-! ## A076528.P734041299760140175

`A005408(n)-(2*n-A073500(1-A001489(n)))`
-/

namespace A076528.P734041299760140175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - A073500 (1 - A001489 n).toNat)

end

end A076528.P734041299760140175

/-!
# A076529: Numbers k for which phi(k) = phi(k+1) - phi(k-1).

The programs for A076529, there is no canonical definition to state claims against.
-/

/-! ## A076529.P6128877201906056319

`1+A229552(n+1)`
-/

namespace A076529.P6128877201906056319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A229552 (n + 1)

end

end A076529.P6128877201906056319

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

/-! ## A076529.P10322984619311519529

`and(A065557(n+1), A228038(n+2))`
-/

namespace A076529.P10322984619311519529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065557 (n + 1)) (A228038 (n + 2))

end

end A076529.P10322984619311519529

/-! ## A076529.P12925616320439538180

`A185048(A065557(n+1))`
-/

namespace A076529.P12925616320439538180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A065557 (n + 1)).toNat

end

end A076529.P12925616320439538180

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

/-!
# A076533: Numbers n such that sum of the distinct prime factors of phi(n) = sum of the distinct prime factors of sigma(n).

The programs for A076533, there is no canonical definition to state claims against.
-/

/-! ## A076533.P14877047905686982312

`∪[A081377(1+n), A081378(n+1)]`
-/

namespace A076533.P14877047905686982312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081377 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076533.P14877047905686982312

/-! ## A076533.P7723909179838218555

`A081377(A077168(n))`
-/

namespace A076533.P7723909179838218555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081377 (A077168 n).toNat

end

end A076533.P7723909179838218555

/-! ## A076533.P13662751875774287060

`A081377(n+1)`
-/

namespace A076533.P13662751875774287060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081377 (n + 1)

end

end A076533.P13662751875774287060

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

The programs for A076535, the canonical program `A076535.P14204201055404177065` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076535 has offset 0).

The definition of A076535 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076535.P14204201055404177065

`n+1-4*A001316(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076535

/-- `n+1-4*A001316(n)` -/
def P14204201055404177065.Spec : Prop :=
  ∀ n, P14204201055404177065.a n = A076535 n

theorem P14204201055404177065.correct : P14204201055404177065.Spec := by
  intro n
  simp only [A076535]

end A076535

/-! ## A076535.P4364506884082923704

`n-∑{d}[2*a(and(n, n-1)), #]/4` with `a(0)=6`
-/

namespace A076535.P4364506884082923704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / 4

end

end A076535.P4364506884082923704

namespace A076535

/-- `n-∑{d}[2*a(and(n, n-1)), #]/4` -/
def P4364506884082923704.Spec : Prop :=
  ∀ n, P4364506884082923704.a n = (A076535 n : ℚ)

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

/-! ## A076535.P8912607903384291667

`1-2*A117973(n)+n`
-/

namespace A076535.P8912607903384291667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A117973 n + (n : ℤ)

end

end A076535.P8912607903384291667

namespace A076535

/-- `1-2*A117973(n)+n` -/
def P8912607903384291667.Spec : Prop :=
  ∀ n, P8912607903384291667.a n = A076535 n

theorem P8912607903384291667.correct : P8912607903384291667.Spec := by
  intro n
  simp only [A076535, Nat.add_sub_cancel, A076535.P8912607903384291667.a, A076535.P14204201055404177065.a, A001316, A001316.P6434973587264609955.f1, A001316.P6434973587264609955.a, A117973, A117973.P11230116199213534894.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A076535

/-! ## A076535.P10105698746928918994

`1-4*A001316(n)+n`
-/

namespace A076535.P10105698746928918994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 4 * A001316 n + (n : ℤ)

end

end A076535.P10105698746928918994

namespace A076535

/-- `1-4*A001316(n)+n` -/
def P10105698746928918994.Spec : Prop :=
  ∀ n, P10105698746928918994.a n = A076535 n

theorem P10105698746928918994.correct : P10105698746928918994.Spec := by
  intro n
  simp only [A076535, Nat.add_sub_cancel, A076535.P10105698746928918994.a, A076535.P14204201055404177065.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A076535

/-! ## A076535.P2008961881051838914

`n-4*A038573(n)-3`
-/

namespace A076535.P2008961881051838914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 4 * A038573 n - 3

end

end A076535.P2008961881051838914

namespace A076535

/-- `n-4*A038573(n)-3` -/
def P2008961881051838914.Spec : Prop :=
  ∀ n, P2008961881051838914.a n = A076535 n

theorem P2008961881051838914.correct : P2008961881051838914.Spec := by
  intro n
  simp only [A076535, Nat.add_sub_cancel, A076535.P2008961881051838914.a, A076535.P14204201055404177065.a, A001316, A001316.P6434973587264609955.f1, A001316.P6434973587264609955.a, A038573, A038573.P5952807231814584452.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

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

/-!
# A076536: Image of n at the third step in the 3x+1 Problem: syr(3,n).

The programs for A076536, the canonical program `A076536.P9664379181442432830` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076536 has offset 1).

The definition of A076536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6665 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076536.P9664379181442432830

`A006370(A075884(1+n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076536

/-- `A006370(A075884(1+n))` -/
def P9664379181442432830.Spec : Prop :=
  ∀ n, P9664379181442432830.a n = A076536 (n + 1)

theorem P9664379181442432830.correct : P9664379181442432830.Spec := by
  intro n
  simp only [A076536, Nat.add_sub_cancel]

end A076536

/-! ## A076536.P5269629535416242265

`A075884(A006370(1+n))`
-/

namespace A076536.P5269629535416242265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075884 (A006370 (1 + n)).toNat

end

end A076536.P5269629535416242265

namespace A076536

/-- `A075884(A006370(1+n))` -/
def P5269629535416242265.Spec : Prop :=
  ∀ n, P5269629535416242265.a n = A076536 (n + 1)

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

The programs for A076537, the canonical program `A076537.P13397665728526798041` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076537 has offset 1).

The definition of A076537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076537.P13397665728526798041

`lt[1, gcd(col(n)+1, row(n)+2)]+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A076537

/-- `lt[1, gcd(col(n)+1, row(n)+2)]+1` -/
def P13397665728526798041.Spec : Prop :=
  ∀ n, (P13397665728526798041.a n : ℤ) = A076537 (n + 1)

theorem P13397665728526798041.correct : P13397665728526798041.Spec := by
  intro n
  simp only [A076537, Nat.add_sub_cancel]

end A076537

/-! ## A076537.P14578246041345704875

`eq[0, A300294(1+n)]`
-/

namespace A076537.P14578246041345704875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300294 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076537.P14578246041345704875

namespace A076537

/-- `eq[0, A300294(1+n)]` -/
def P14578246041345704875.Spec : Prop :=
  ∀ n, (P14578246041345704875.a n : ℤ) = A076537 (n + 1)

end A076537

/-! ## A076537.P8878660937133975551

`lt[A300294(n+1), 1]`
-/

namespace A076537.P8878660937133975551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300294 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A076537.P8878660937133975551

namespace A076537

/-- `lt[A300294(n+1), 1]` -/
def P8878660937133975551.Spec : Prop :=
  ∀ n, (P8878660937133975551.a n : ℤ) = A076537 (n + 1)

end A076537

/-! ## A076537.P17746481286749972989

`eq[0, A400532(n+1)]+1`
-/

namespace A076537.P17746481286749972989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076537.P17746481286749972989

namespace A076537

/-- `eq[0, A400532(n+1)]+1` -/
def P17746481286749972989.Spec : Prop :=
  ∀ n, (P17746481286749972989.a n : ℤ) = A076537 (n + 1)

end A076537

/-! ## A076537.P6488274583433243904

`eq[0, A396382(n+1)]+1`
-/

namespace A076537.P6488274583433243904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396382 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076537.P6488274583433243904

namespace A076537

/-- `eq[0, A396382(n+1)]+1` -/
def P6488274583433243904.Spec : Prop :=
  ∀ n, (P6488274583433243904.a n : ℤ) = A076537 (n + 1)

end A076537

/-! ## A076537.P4979017413704472674

`eq[0, A054431(1+n)]+1`
-/

namespace A076537.P4979017413704472674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054431 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076537.P4979017413704472674

namespace A076537

/-- `eq[0, A054431(1+n)]+1` -/
def P4979017413704472674.Spec : Prop :=
  ∀ n, (P4979017413704472674.a n : ℤ) = A076537 (n + 1)

end A076537

/-! ## A076537.P3303974343455928646

`eq[0, A102057(1+n)]+1`
-/

namespace A076537.P3303974343455928646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102057 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076537.P3303974343455928646

namespace A076537

/-- `eq[0, A102057(1+n)]+1` -/
def P3303974343455928646.Spec : Prop :=
  ∀ n, (P3303974343455928646.a n : ℤ) = A076537 (n + 1)

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

/-! ## A076537.P3749228712790360002

`eq[0, A250211(n+1)]+1`
-/

namespace A076537.P3749228712790360002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250211 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076537.P3749228712790360002

namespace A076537

/-- `eq[0, A250211(n+1)]+1` -/
def P3749228712790360002.Spec : Prop :=
  ∀ n, (P3749228712790360002.a n : ℤ) = A076537 (n + 1)

end A076537

/-! ## A076537.P6344571614363577329

`lt[0, A076953(n+1)]+1`
-/

namespace A076537.P6344571614363577329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A076537.P6344571614363577329

namespace A076537

/-- `lt[0, A076953(n+1)]+1` -/
def P6344571614363577329.Spec : Prop :=
  ∀ n, (P6344571614363577329.a n : ℤ) = A076537 (n + 1)

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

/-!
# A076538: Numerators a(n) of fractions slowly converging to e: let a(1) = 0, b(n) = n - a(n); if (a(n) + 1) / b(n) < e then a(n+1) = a(n) + 1, else a(n+1)= a(n).

The programs for A076538, the canonical program `A076538.P9984315147769689660` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076538 has offset 1).

The definition of A076538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076538.P9984315147769689660

`floor(19*(n+1)/26)`

The canonical program, it is in `Seq.B000.C014`.
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

/-!
# A076539: Numerators a(n) of fractions slowly converging to Pi: let a(1) = 0, b(n) = n - a(n); if (a(n) + 1) / b(n) < Pi, then a(n+1) = a(n) + 1, otherwise a(n+1) = a(n).

The programs for A076539, the canonical program `A076539.P14355845032435291225` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076539 has offset 1).

The definition of A076539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076539.P14355845032435291225

`∑[char[floor(29*(n+1)/22)]]`

The canonical program, it is in `Seq.B000.C014`.
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

/-! ## A076539.P4641835204182066309

`floor(log2(A227232(n+1)))`
-/

namespace A076539.P4641835204182066309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A227232 (n + 1)).toNat

end

end A076539.P4641835204182066309

namespace A076539

/-- `floor(log2(A227232(n+1)))` -/
def P4641835204182066309.Spec : Prop :=
  ∀ n, (P4641835204182066309.a n : ℤ) = A076539 (n + 1)

end A076539

/-!
# A076540: Number of branches in all ordered trees with n edges.

The programs for A076540, the canonical program `A076540.P14907461827048559839` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076540 has offset 1).

The definition of A076540 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076540.P14907461827048559839

`(3*(n+1)²-2*(n+1)+1)*C(2*(n+1), n+1)/(2*(n+2)*(2*(n+1)-1))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A076540

/-- `(3*(n+1)²-2*(n+1)+1)*C(2*(n+1), n+1)/(2*(n+2)*(2*(n+1)-1))` -/
def P14907461827048559839.Spec : Prop :=
  ∀ n, P14907461827048559839.a n = (A076540 (n + 1) : ℚ)

end A076540

/-! ## A076540.P13629834515298734747

`Δ[n*∑{#}[n, C(n, #)²]/(n+1)]`
-/

namespace A076540.P13629834515298734747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((∑ k ∈ Finset.range (f2 n + 1), Nat.choose n k ^ 2 : ℕ) : ℚ) / (n + 1 : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076540.P13629834515298734747

namespace A076540

/-- `Δ[n*∑{#}[n, C(n, #)²]/(n+1)]` -/
def P13629834515298734747.Spec : Prop :=
  ∀ n, P13629834515298734747.a n = (A076540 (n + 1) : ℚ)

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

/-!
# A076541: a(n) = Sum_{k=1..n} C(n,k) mod k.

The programs for A076541, the canonical program `A076541.P9624039320840755660` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076541 has offset 1).

The definition of A076541 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+1, #+1)%(#+1)]` (program `A076541.P9624039320840755660`, by `A076541.P9624039320840755660.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076541.P9624039320840755660

`∑{#}[n, C(n+1, #+1)%(#+1)]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A076541

/-- `∑{#}[n, C(n+1, #+1)%(#+1)]` -/
def P9624039320840755660.Spec : Prop :=
  ∀ n, (P9624039320840755660.a n : ℤ) = A076541 (n + 1)

theorem P9624039320840755660.correct : P9624039320840755660.Spec := by
  intro n
  simp only [A076541, Nat.add_sub_cancel]

end A076541

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

/-! ## A076543.P7592390511236107266

`∑[(lcm(2, A008683(n+1))-1)*(n+1)]`
-/

namespace A076543.P7592390511236107266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Int.lcm 2 (A008683 (n + 1)) : ℤ) - 1) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076543.P7592390511236107266

namespace A076543

/-- `∑[(lcm(2, A008683(n+1))-1)*(n+1)]` -/
def P7592390511236107266.Spec : Prop :=
  ∀ n, P7592390511236107266.a n = A076543 (n + 1)

end A076543

/-! ## A076543.P9070446245892557229

`∑[(A015053(n+1)-n)%2*(n+1)]`
-/

namespace A076543.P9070446245892557229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015053 (n + 1) - (n : ℤ)) 2 * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076543.P9070446245892557229

namespace A076543

/-- `∑[(A015053(n+1)-n)%2*(n+1)]` -/
def P9070446245892557229.Spec : Prop :=
  ∀ n, P9070446245892557229.a n = A076543 (n + 1)

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

/-! ## A076544.P14327601275483606699

`A008683(n+1)+(-1)^(1+abs(A008683(n+1)))`
-/

namespace A076544.P14327601275483606699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) : ℚ) + (-1 : ℚ) ^ (1 + |A008683 (n + 1)| : ℤ)

end

end A076544.P14327601275483606699

namespace A076544

/-- `A008683(n+1)+(-1)^(1+abs(A008683(n+1)))` -/
def P14327601275483606699.Spec : Prop :=
  ∀ n, P14327601275483606699.a n = (A076544 (n + 1) : ℚ)

end A076544

/-! ## A076544.P5765536320739285865

`xor(1, ∏{e}[1+n, -floor(1/#)]+1)-1`
-/

namespace A076544.P5765536320739285865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋) + 1) - 1

end

end A076544.P5765536320739285865

namespace A076544

/-- `xor(1, ∏{e}[1+n, -floor(1/#)]+1)-1` -/
def P5765536320739285865.Spec : Prop :=
  ∀ n, P5765536320739285865.a n = A076544 (n + 1)

end A076544

/-! ## A076544.P13882218561671190209

`xor(1, round(1/∏{e}[n+1, -#²])+1)-1`
-/

namespace A076544.P13882218561671190209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p ^ 2 : ℤ)) : ℤ) : ℚ)) + 1) - 1

end

end A076544.P13882218561671190209

namespace A076544

/-- `xor(1, round(1/∏{e}[n+1, -#²])+1)-1` -/
def P13882218561671190209.Spec : Prop :=
  ∀ n, P13882218561671190209.a n = A076544 (n + 1)

end A076544

/-! ## A076544.P18379186370643715632

`xor(1, A007423(1+n))-1`
-/

namespace A076544.P18379186370643715632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A007423 (1 + n)) - 1

end

end A076544.P18379186370643715632

namespace A076544

/-- `xor(1, A007423(1+n))-1` -/
def P18379186370643715632.Spec : Prop :=
  ∀ n, P18379186370643715632.a n = A076544 (n + 1)

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

/-! ## A076544.P15756157387293157712

`A014107(∏{e}[n+1, -floor(1/#)]+1)`
-/

namespace A076544.P15756157387293157712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014107 (∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋) + 1).toNat

end

end A076544.P15756157387293157712

namespace A076544

/-- `A014107(∏{e}[n+1, -floor(1/#)]+1)` -/
def P15756157387293157712.Spec : Prop :=
  ∀ n, P15756157387293157712.a n = A076544 (n + 1)

end A076544

/-! ## A076544.P12002522346974921278

`4-A074459(∏{e}[n+1, -floor(1/#)]+1)`
-/

namespace A076544.P12002522346974921278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A074459 (∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋) + 1).toNat

end

end A076544.P12002522346974921278

namespace A076544

/-- `4-A074459(∏{e}[n+1, -floor(1/#)]+1)` -/
def P12002522346974921278.Spec : Prop :=
  ∀ n, P12002522346974921278.a n = A076544 (n + 1)

end A076544

/-! ## A076544.P9304194693704228987

`A097063(round(1/∏{e}[n+1, -#²])+1)-1`
-/

namespace A076544.P9304194693704228987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097063 (SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p ^ 2 : ℤ)) : ℤ) : ℚ)) + 1).toNat - 1

end

end A076544.P9304194693704228987

namespace A076544

/-- `A097063(round(1/∏{e}[n+1, -#²])+1)-1` -/
def P9304194693704228987.Spec : Prop :=
  ∀ n, P9304194693704228987.a n = A076544 (n + 1)

end A076544

/-! ## A076544.P4091055499657195687

`A107583(round(1/∏{e}[n+1, -#²])+1)-1`
-/

namespace A076544.P4091055499657195687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107583 (SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p ^ 2 : ℤ)) : ℤ) : ℚ)) + 1).toNat - 1

end

end A076544.P4091055499657195687

namespace A076544

/-- `A107583(round(1/∏{e}[n+1, -#²])+1)-1` -/
def P4091055499657195687.Spec : Prop :=
  ∀ n, P4091055499657195687.a n = A076544 (n + 1)

end A076544

/-! ## A076544.P11356825949647832742

`A326218(round(1/∏{e}[n+1, -#²])+1)-1`
-/

namespace A076544.P11356825949647832742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326218 (SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p ^ 2 : ℤ)) : ℤ) : ℚ)) + 1).toNat - 1

end

end A076544.P11356825949647832742

namespace A076544

/-- `A326218(round(1/∏{e}[n+1, -#²])+1)-1` -/
def P11356825949647832742.Spec : Prop :=
  ∀ n, P11356825949647832742.a n = A076544 (n + 1)

end A076544

/-! ## A076544.P1674236950912511724

`xor(1, A078042(round(1/∏{e}[n+1, -#²])+1))`
-/

namespace A076544.P1674236950912511724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A078042 (SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p ^ 2 : ℤ)) : ℤ) : ℚ)) + 1).toNat)

end

end A076544.P1674236950912511724

namespace A076544

/-- `xor(1, A078042(round(1/∏{e}[n+1, -#²])+1))` -/
def P1674236950912511724.Spec : Prop :=
  ∀ n, P1674236950912511724.a n = A076544 (n + 1)

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

/-!
# A076545: a(n) = Sum_{k=1..n} (mu(k) + sqf(k)) where mu(k) is Moebius function, sqf(k)=1 if k is squarefree and sqf(k)=-1 otherwise.

The programs for A076545, the canonical program `A076545.P1356470946309381990` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076545 has offset 1).

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

/-! ## A076545.P1356470946309381990

`∑[xor(1, ∏{e}[n+1, -floor(1/#)]+1)-1]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A076545

/-- `∑[xor(1, ∏{e}[n+1, -floor(1/#)]+1)-1]` -/
def P1356470946309381990.Spec : Prop :=
  ∀ n, P1356470946309381990.a n = A076545 (n + 1)

theorem P1356470946309381990.correct : P1356470946309381990.Spec := by
  intro n
  simp only [A076545, Nat.add_sub_cancel]

end A076545

/-! ## A076545.P16310225412379126112

`∑[A076544(1+n)]`
-/

namespace A076545.P16310225412379126112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076544 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076545.P16310225412379126112

namespace A076545

/-- `∑[A076544(1+n)]` -/
def P16310225412379126112.Spec : Prop :=
  ∀ n, P16310225412379126112.a n = A076545 (n + 1)

end A076545

/-! ## A076545.P404806712865153298

`∑[xor(1, A007423(1+n))-1]`
-/

namespace A076545.P404806712865153298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A007423 (1 + n)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076545.P404806712865153298

namespace A076545

/-- `∑[xor(1, A007423(1+n))-1]` -/
def P404806712865153298.Spec : Prop :=
  ∀ n, P404806712865153298.a n = A076545 (n + 1)

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

/-! ## A076545.P5310452706247266692

`A070548(n+1)+A070548(n+1)-A057627(n+1)`
-/

namespace A076545.P5310452706247266692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (n + 1) + A070548 (n + 1) - A057627 (n + 1)

end

end A076545.P5310452706247266692

namespace A076545

/-- `A070548(n+1)+A070548(n+1)-A057627(n+1)` -/
def P5310452706247266692.Spec : Prop :=
  ∀ n, P5310452706247266692.a n = A076545 (n + 1)

end A076545

/-! ## A076545.P1856580852243787149

`A013928(n+2)+A002321(n+1)-A057627(n+1)`
-/

namespace A076545.P1856580852243787149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 2) + A002321 (n + 1) - A057627 (n + 1)

end

end A076545.P1856580852243787149

namespace A076545

/-- `A013928(n+2)+A002321(n+1)-A057627(n+1)` -/
def P1856580852243787149.Spec : Prop :=
  ∀ n, P1856580852243787149.a n = A076545 (n + 1)

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
# A076547: a(n) = (2^n-1-numerator(B(2^(n+1))))/2^n where numerator(B(k)) denotes the numerator of the k-th Bernoulli number.

The programs for A076547, there is no canonical definition to state claims against.
-/

/-! ## A076547.P3948450956688893383

`A081739(n+1)+1`
-/

namespace A076547.P3948450956688893383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081739 (n + 1) + 1

end

end A076547.P3948450956688893383

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

/-! ## A076550.P185482111142368678

`floor(A155850(n+3)/2)`
-/

namespace A076550.P185482111142368678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155850 (n + 3) : ℚ) / 2⌋

end

end A076550.P185482111142368678

/-! ## A076550.P12206992351063061398

`fo[A069904(n+1)]+1`
-/

namespace A076550.P12206992351063061398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A076550.P12206992351063061398

/-! ## A076550.P3673045916063209993

`A080098(A075088(n))`
-/

namespace A076550.P3673045916063209993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A075088 n).toNat

end

end A076550.P3673045916063209993

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

/-! ## A076552.P6286052284193412663

`Δ[round(∑[A000364(n)/3])]`
-/

namespace A076552.P6286052284193412663
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000364 n : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076552.P6286052284193412663

/-! ## A076552.P5888212476709480956

`abs((A028296(n+1)-2)/3)`
-/

namespace A076552.P5888212476709480956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A028296 (n + 1) - 2 : ℚ) / 3|

end

end A076552.P5888212476709480956

/-! ## A076552.P2607047070097688148

`abs(A119880(2*(n+1)))/3`
-/

namespace A076552.P2607047070097688148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A119880 (2 * (n + 1))| : ℚ) / 3

end

end A076552.P2607047070097688148

/-!
# A076555: Greatest prime divisor of n-th prime + 2.

The programs for A076555, the canonical program `A076555.P11036078511274247804` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076555 has offset 1).

The definition of A076555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076555.P11036078511274247804

`A006530(A052147(1+n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A076555

/-- `A006530(A052147(1+n))` -/
def P11036078511274247804.Spec : Prop :=
  ∀ n, P11036078511274247804.a n = A076555 (n + 1)

theorem P11036078511274247804.correct : P11036078511274247804.Spec := by
  intro n
  simp only [A076555, Nat.add_sub_cancel]

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

/-! ## A076555.P13355366925167574165

`A395042(2*A000040(n+1))`
-/

namespace A076555.P13355366925167574165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395042 (2 * A000040 (n + 1)).toNat

end

end A076555.P13355366925167574165

namespace A076555

/-- `A395042(2*A000040(n+1))` -/
def P13355366925167574165.Spec : Prop :=
  ∀ n, P13355366925167574165.a n = A076555 (n + 1)

end A076555

/-! ## A076555.P7337348065970204435

`A162325(A052147(n+1))`
-/

namespace A076555.P7337348065970204435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162325 (A052147 (n + 1)).toNat

end

end A076555.P7337348065970204435

namespace A076555

/-- `A162325(A052147(n+1))` -/
def P7337348065970204435.Spec : Prop :=
  ∀ n, P7337348065970204435.a n = A076555 (n + 1)

end A076555

/-!
# A076556: Greatest prime divisor of n-th prime + n.

The programs for A076556, the canonical program `A076556.P5329428728146528548` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076556 has offset 1).

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

/-! ## A076556.P5329428728146528548

`A000040(A061395(A000040(n+1)+n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A076556

/-- `A000040(A061395(A000040(n+1)+n+1))` -/
def P5329428728146528548.Spec : Prop :=
  ∀ n, P5329428728146528548.a n = A076556 (n + 1)

theorem P5329428728146528548.correct : P5329428728146528548.Spec := by
  intro n
  simp only [A076556, Nat.add_sub_cancel]

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

/-! ## A076556.P10080972210076316678

`A111089(A167136(n+2))`
-/

namespace A076556.P10080972210076316678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (A167136 (n + 2)).toNat

end

end A076556.P10080972210076316678

namespace A076556

/-- `A111089(A167136(n+2))` -/
def P10080972210076316678.Spec : Prop :=
  ∀ n, P10080972210076316678.a n = A076556 (n + 1)

end A076556

/-! ## A076556.P2875094254435986788

`A027748(A082186(A000040(n+1)+n+1))`
-/

namespace A076556.P2875094254435986788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (A082186 (A000040 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A076556.P2875094254435986788

namespace A076556

/-- `A027748(A082186(A000040(n+1)+n+1))` -/
def P2875094254435986788.Spec : Prop :=
  ∀ n, P2875094254435986788.a n = A076556 (n + 1)

end A076556

/-! ## A076556.P14012855025978817397

`A020639(A304180(A000040(n+1)+n+1))`
-/

namespace A076556.P14012855025978817397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304180 (A000040 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A076556.P14012855025978817397

namespace A076556

/-- `A020639(A304180(A000040(n+1)+n+1))` -/
def P14012855025978817397.Spec : Prop :=
  ∀ n, P14012855025978817397.a n = A076556 (n + 1)

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

/-! ## A076557.P12202043708909514071

`A111089(A014692(n+3)-1)`
-/

namespace A076557.P12202043708909514071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (A014692 (n + 3) - 1).toNat

end

end A076557.P12202043708909514071

namespace A076557

/-- `A111089(A014692(n+3)-1)` -/
def P12202043708909514071.Spec : Prop :=
  ∀ n, P12202043708909514071.a n = A076557 (n + 3)

end A076557

/-!
# A076558: a(n) = r * min(e_1, ..., e_r), where n = p_1^e_1 . .... p_r^e_r is the canonical prime factorization of n, a(1) = 0.

The programs for A076558, the canonical program `A076558.P8649702641749758506` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076558 has offset 1).

The definition of A076558 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051904, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076558.P8649702641749758506

`A001221(n+1)*A051904(n+1)`

The canonical program, it is in `Seq.B002.C001`.
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

/-! ## A076558.P10202767204748683489

`∑{e}[(n+1)/A062760(n+1), #]`
-/

namespace A076558.P10202767204748683489
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A062760 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A076558.P10202767204748683489

namespace A076558

/-- `∑{e}[(n+1)/A062760(n+1), #]` -/
def P10202767204748683489.Spec : Prop :=
  ∀ n, (P10202767204748683489.a n : ℤ) = A076558 (n + 1)

end A076558

/-! ## A076558.P16505944306844376534

`∑{p}[n+1, gcd(n, #)]*A051904(n+1)`
-/

namespace A076558.P16505944306844376534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ) * A051904 (n + 1)

end

end A076558.P16505944306844376534

namespace A076558

/-- `∑{p}[n+1, gcd(n, #)]*A051904(n+1)` -/
def P16505944306844376534.Spec : Prop :=
  ∀ n, P16505944306844376534.a n = A076558 (n + 1)

end A076558

/-! ## A076558.P4843983516024449031

`A001222(A062759(1+n))`
-/

namespace A076558.P4843983516024449031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A062759 (1 + n)).toNat

end

end A076558.P4843983516024449031

namespace A076558

/-- `A001222(A062759(1+n))` -/
def P4843983516024449031.Spec : Prop :=
  ∀ n, P4843983516024449031.a n = A076558 (n + 1)

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

/-! ## A076559.P18106213540096069701

`A071216(2+n)`
-/

namespace A076559.P18106213540096069701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071216 (2 + n)

end

end A076559.P18106213540096069701

namespace A076559

/-- `A071216(2+n)` -/
def P18106213540096069701.Spec : Prop :=
  ∀ n, P18106213540096069701.a n = A076559 (n + 2)

end A076559

/-! ## A076559.P10169859112959981566

`A085392(A001043(n+2))`
-/

namespace A076559.P10169859112959981566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A001043 (n + 2)).toNat

end

end A076559.P10169859112959981566

namespace A076559

/-- `A085392(A001043(n+2))` -/
def P10169859112959981566.Spec : Prop :=
  ∀ n, P10169859112959981566.a n = A076559 (n + 2)

end A076559

/-! ## A076559.P9702287162193708559

`A086131(A006094(n+2))`
-/

namespace A076559.P9702287162193708559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086131 (A006094 (n + 2)).toNat

end

end A076559.P9702287162193708559

namespace A076559

/-- `A086131(A006094(n+2))` -/
def P9702287162193708559.Spec : Prop :=
  ∀ n, P9702287162193708559.a n = A076559 (n + 2)

end A076559

/-!
# A076560: a(1)=1; a(n>1)= greatest prime divisor of (a(n-1) + n).

The programs for A076560, the canonical program `A076560.P14026703366955993077` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076560 has offset 1).

The definition of A076560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076560.P14026703366955993077

`A006530(1+a(n-1)+n)` with `a(0)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A076560

/-- `A006530(1+a(n-1)+n)` -/
def P14026703366955993077.Spec : Prop :=
  ∀ n, P14026703366955993077.a n = A076560 (n + 1)

theorem P14026703366955993077.correct : P14026703366955993077.Spec := by
  intro n
  simp only [A076560, Nat.add_sub_cancel]

end A076560

/-! ## A076560.P4746797073621321658

`A111089(1+a(n-1)+n)` with `a(0)=1`
-/

namespace A076560.P4746797073621321658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A111089 (1 + (a (n - 1) + (n : ℤ))).toNat

end

end A076560.P4746797073621321658

namespace A076560

/-- `A111089(1+a(n-1)+n)` -/
def P4746797073621321658.Spec : Prop :=
  ∀ n, P4746797073621321658.a n = A076560 (n + 1)

end A076560

/-! ## A076560.P15934021054636538468

`A070777(n+1+a(n-1))+1` with `a(0)=1`
-/

namespace A076560.P15934021054636538468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070777 ((n + 1 : ℤ) + a (n - 1)).toNat + 1

end

end A076560.P15934021054636538468

namespace A076560

/-- `A070777(n+1+a(n-1))+1` -/
def P15934021054636538468.Spec : Prop :=
  ∀ n, P15934021054636538468.a n = A076560 (n + 1)

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

/-! ## A076560.P54825168258354326

`A217581((a(n-1)+n+1)²)` with `a(0)=1`
-/

namespace A076560.P54825168258354326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A217581 ((a (n - 1) + (n + 1 : ℤ)) ^ 2).toNat

end

end A076560.P54825168258354326

namespace A076560

/-- `A217581((a(n-1)+n+1)²)` -/
def P54825168258354326.Spec : Prop :=
  ∀ n, P54825168258354326.a n = A076560 (n + 1)

end A076560

/-! ## A076560.P379682767989311165

`A249740((a(n-1)+n+1)²)` with `a(0)=1`
-/

namespace A076560.P379682767989311165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A249740 ((a (n - 1) + (n + 1 : ℤ)) ^ 2).toNat

end

end A076560.P379682767989311165

namespace A076560

/-- `A249740((a(n-1)+n+1)²)` -/
def P379682767989311165.Spec : Prop :=
  ∀ n, P379682767989311165.a n = A076560 (n + 1)

end A076560

/-!
# A076561: a(1)=2; a(n>1)= greatest prime divisor of {a(n-1) + n}.

The programs for A076561, the canonical program `A076561.P14916811916990000258` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076561 has offset 1).

The definition of A076561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076561.P14916811916990000258

`A006530(1+a(n-1)+n)` with `a(0)=2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A076561

/-- `A006530(1+a(n-1)+n)` -/
def P14916811916990000258.Spec : Prop :=
  ∀ n, P14916811916990000258.a n = A076561 (n + 1)

theorem P14916811916990000258.correct : P14916811916990000258.Spec := by
  intro n
  simp only [A076561, Nat.add_sub_cancel]

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

/-! ## A076561.P5800187743829796030

`A111089(1+n+a(n-1))` with `a(0)=2`
-/

namespace A076561.P5800187743829796030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A111089 (1 + ((n : ℤ) + a (n - 1))).toNat

end

end A076561.P5800187743829796030

namespace A076561

/-- `A111089(1+n+a(n-1))` -/
def P5800187743829796030.Spec : Prop :=
  ∀ n, P5800187743829796030.a n = A076561 (n + 1)

end A076561

/-! ## A076561.P15729955271311813459

`A082061((a(n-1)+n+1)²)` with `a(0)=2`
-/

namespace A076561.P15729955271311813459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A082061 ((a (n - 1) + (n + 1 : ℤ)) ^ 2).toNat

end

end A076561.P15729955271311813459

namespace A076561

/-- `A082061((a(n-1)+n+1)²)` -/
def P15729955271311813459.Spec : Prop :=
  ∀ n, P15729955271311813459.a n = A076561 (n + 1)

end A076561

/-!
# A076562: a(1)=3; a(n>1)= greatest prime divisor of a(n-1) + n.

The programs for A076562, the canonical program `A076562.P5543920745790761090` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076562 has offset 1).

The definition of A076562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076562.P5543920745790761090

`A006530(1+a(n-1)+n)` with `a(0)=3`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A076562

/-- `A006530(1+a(n-1)+n)` -/
def P5543920745790761090.Spec : Prop :=
  ∀ n, P5543920745790761090.a n = A076562 (n + 1)

theorem P5543920745790761090.correct : P5543920745790761090.Spec := by
  intro n
  simp only [A076562, Nat.add_sub_cancel]

end A076562

/-! ## A076562.P9818682383424563230

`A111089(a(n-1)+1+n)` with `a(0)=3`
-/

namespace A076562.P9818682383424563230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A111089 (a (n - 1) + 1 + (n : ℤ)).toNat

end

end A076562.P9818682383424563230

namespace A076562

/-- `A111089(a(n-1)+1+n)` -/
def P9818682383424563230.Spec : Prop :=
  ∀ n, P9818682383424563230.a n = A076562 (n + 1)

end A076562

/-! ## A076562.P1601507171885370513

`A082061((a(n-1)+n+1)²)` with `a(0)=3`
-/

namespace A076562.P1601507171885370513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A082061 ((a (n - 1) + (n + 1 : ℤ)) ^ 2).toNat

end

end A076562.P1601507171885370513

namespace A076562

/-- `A082061((a(n-1)+n+1)²)` -/
def P1601507171885370513.Spec : Prop :=
  ∀ n, P1601507171885370513.a n = A076562 (n + 1)

end A076562

/-! ## A076562.P17793668327006651146

`A359612((a(n-1)+n+1)²)` with `a(0)=3`
-/

namespace A076562.P17793668327006651146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A359612 ((a (n - 1) + (n + 1 : ℤ)) ^ 2).toNat

end

end A076562.P17793668327006651146

namespace A076562

/-- `A359612((a(n-1)+n+1)²)` -/
def P17793668327006651146.Spec : Prop :=
  ∀ n, P17793668327006651146.a n = A076562 (n + 1)

end A076562

/-! ## A076562.P14232703587481805114

`A068211((a(n-1)+n+1)²)` with `a(0)=3`
-/

namespace A076562.P14232703587481805114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A068211 ((a (n - 1) + (n + 1 : ℤ)) ^ 2).toNat

end

end A076562.P14232703587481805114

namespace A076562

/-- `A068211((a(n-1)+n+1)²)` -/
def P14232703587481805114.Spec : Prop :=
  ∀ n, P14232703587481805114.a n = A076562 (n + 1)

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

/-! ## A076563.P8636640595174378393

`2-A006530(2+n)+n`
-/

namespace A076563.P8636640595174378393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A006530 (2 + n) + (n : ℤ)

end

end A076563.P8636640595174378393

namespace A076563

/-- `2-A006530(2+n)+n` -/
def P8636640595174378393.Spec : Prop :=
  ∀ n, P8636640595174378393.a n = A076563 (n + 2)

theorem P8636640595174378393.correct : P8636640595174378393.Spec := by
  intro n
  simp only [A076563, Nat.add_sub_cancel, A076563.P8636640595174378393.a, A076563.P4071807998228768681.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

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

/-! ## A076565.P17087885381748073778

`A117366(A064216(n+2))`
-/

namespace A076565.P17087885381748073778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (A064216 (n + 2)).toNat

end

end A076565.P17087885381748073778

namespace A076565

/-- `A117366(A064216(n+2))` -/
def P17087885381748073778.Spec : Prop :=
  ∀ n, P17087885381748073778.a n = A076565 (n + 1)

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

/-! ## A076565.P14655433361592775669

`A210437(A004156(n+1))`
-/

namespace A076565.P14655433361592775669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210437 (A004156 (n + 1)).toNat

end

end A076565.P14655433361592775669

namespace A076565

/-- `A210437(A004156(n+1))` -/
def P14655433361592775669.Spec : Prop :=
  ∀ n, P14655433361592775669.a n = A076565 (n + 1)

end A076565

/-! ## A076565.P8588755803890072810

`A126288(2*(n+1))/A052126(2*(n+1))`
-/

namespace A076565.P8588755803890072810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126288 (2 * (n + 1)) : ℚ) / (A052126 (2 * (n + 1)) : ℚ)

end

end A076565.P8588755803890072810

namespace A076565

/-- `A126288(2*(n+1))/A052126(2*(n+1))` -/
def P8588755803890072810.Spec : Prop :=
  ∀ n, P8588755803890072810.a n = (A076565 (n + 1) : ℚ)

end A076565

/-! ## A076565.P16055537878768249664

`A111089(2*n+3)`
-/

namespace A076565.P16055537878768249664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (2 * n + 3)

end

end A076565.P16055537878768249664

namespace A076565

/-- `A111089(2*n+3)` -/
def P16055537878768249664.Spec : Prop :=
  ∀ n, P16055537878768249664.a n = A076565 (n + 1)

end A076565

/-! ## A076565.P11779694026684694453

`A299766(2*n+3)`
-/

namespace A076565.P11779694026684694453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299766 (2 * n + 3)

end

end A076565.P11779694026684694453

namespace A076565

/-- `A299766(2*n+3)` -/
def P11779694026684694453.Spec : Prop :=
  ∀ n, P11779694026684694453.a n = A076565 (n + 1)

end A076565

/-! ## A076565.P17188205544331156094

`p?[Δ[A360559(n+1)]]`
-/

namespace A076565.P17188205544331156094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360559 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076565.P17188205544331156094

namespace A076565

/-- `p?[Δ[A360559(n+1)]]` -/
def P17188205544331156094.Spec : Prop :=
  ∀ n, P17188205544331156094.a n = A076565 (n + 1)

end A076565

/-! ## A076565.P669741528043935058

`A070777(2*n+3)+1`
-/

namespace A076565.P669741528043935058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070777 (2 * n + 3) + 1

end

end A076565.P669741528043935058

namespace A076565

/-- `A070777(2*n+3)+1` -/
def P669741528043935058.Spec : Prop :=
  ∀ n, P669741528043935058.a n = A076565 (n + 1)

end A076565

/-! ## A076565.P296785608571969426

`A002034(A099984(n+2))`
-/

namespace A076565.P296785608571969426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A099984 (n + 2)).toNat

end

end A076565.P296785608571969426

namespace A076565

/-- `A002034(A099984(n+2))` -/
def P296785608571969426.Spec : Prop :=
  ∀ n, P296785608571969426.a n = A076565 (n + 1)

end A076565

/-! ## A076565.P14486308828608901409

`A076567(3*(n+1))`
-/

namespace A076565.P14486308828608901409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076567 (3 * (n + 1))

end

end A076565.P14486308828608901409

namespace A076565

/-- `A076567(3*(n+1))` -/
def P14486308828608901409.Spec : Prop :=
  ∀ n, P14486308828608901409.a n = A076565 (n + 1)

end A076565

/-! ## A076565.P3088926983786757173

`A076569(3*n+2)`
-/

namespace A076565.P3088926983786757173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076569 (3 * n + 2)

end

end A076565.P3088926983786757173

namespace A076565

/-- `A076569(3*n+2)` -/
def P3088926983786757173.Spec : Prop :=
  ∀ n, P3088926983786757173.a n = A076565 (n + 1)

end A076565

/-! ## A076565.P16988027198627092693

`A085392(A016825(n+1))`
-/

namespace A076565.P16988027198627092693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A016825 (n + 1)).toNat

end

end A076565.P16988027198627092693

namespace A076565

/-- `A085392(A016825(n+1))` -/
def P16988027198627092693.Spec : Prop :=
  ∀ n, P16988027198627092693.a n = A076565 (n + 1)

end A076565

/-! ## A076565.P4881627811103239240

`A085392(Δ[(2*(n+1))²])`
-/

namespace A076565.P4881627811103239240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A076565.P4881627811103239240

namespace A076565

/-- `A085392(Δ[(2*(n+1))²])` -/
def P4881627811103239240.Spec : Prop :=
  ∀ n, P4881627811103239240.a n = A076565 (n + 1)

end A076565

/-! ## A076565.P8375364036505943286

`A117364(A249735(n+2))`
-/

namespace A076565.P8375364036505943286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117364 (A249735 (n + 2)).toNat

end

end A076565.P8375364036505943286

namespace A076565

/-- `A117364(A249735(n+2))` -/
def P8375364036505943286.Spec : Prop :=
  ∀ n, P8375364036505943286.a n = A076565 (n + 1)

end A076565

/-!
# A076566: Greatest prime divisor of 3n+3 (sum of three successive integers).

The programs for A076566, the canonical program `A076566.P10108082377382600414` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076566 has offset 1).

The definition of A076566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076566.P7858185917694692627

`A006530(3*(2+n))`
-/

namespace A076566.P7858185917694692627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * (2 + n))

end

end A076566.P7858185917694692627

namespace A076566

/-- `A006530(3*(2+n))` -/
def P7858185917694692627.Spec : Prop :=
  ∀ n, P7858185917694692627.a n = A076566 (n + 1)

end A076566

/-! ## A076566.P4659061728318626932

`or(1, A006530(2+n))`
-/

namespace A076566.P4659061728318626932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (2 + n))

end

end A076566.P4659061728318626932

namespace A076566

/-- `or(1, A006530(2+n))` -/
def P4659061728318626932.Spec : Prop :=
  ∀ n, P4659061728318626932.a n = A076566 (n + 1)

end A076566

/-! ## A076566.P15476890267104442086

`max(3, A006530(n+2))`
-/

namespace A076566.P15476890267104442086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (3 : ℤ) (A006530 (n + 2))

end

end A076566.P15476890267104442086

namespace A076566

/-- `max(3, A006530(n+2))` -/
def P15476890267104442086.Spec : Prop :=
  ∀ n, P15476890267104442086.a n = A076566 (n + 1)

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

/-! ## A076566.P11646748752534834379

`A151799(A006530(n+2)+2)`
-/

namespace A076566.P11646748752534834379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A006530 (n + 2) + 2).toNat

end

end A076566.P11646748752534834379

namespace A076566

/-- `A151799(A006530(n+2)+2)` -/
def P11646748752534834379.Spec : Prop :=
  ∀ n, P11646748752534834379.a n = A076566 (n + 1)

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

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A076566

/-- `A000040(A061395(3*(n+2)))` -/
def P10108082377382600414.Spec : Prop :=
  ∀ n, P10108082377382600414.a n = A076566 (n + 1)

theorem P10108082377382600414.correct : P10108082377382600414.Spec := by
  intro n
  simp only [A076566, Nat.add_sub_cancel]

end A076566

/-! ## A076566.P6719030682323980039

`A036987(n+1)+A006530(n+2)`
-/

namespace A076566.P6719030682323980039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (n + 1) + A006530 (n + 2)

end

end A076566.P6719030682323980039

namespace A076566

/-- `A036987(n+1)+A006530(n+2)` -/
def P6719030682323980039.Spec : Prop :=
  ∀ n, P6719030682323980039.a n = A076566 (n + 1)

end A076566

/-! ## A076566.P8710648230827695518

`A209229(n+2)+A006530(n+2)`
-/

namespace A076566.P8710648230827695518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (n + 2) + A006530 (n + 2)

end

end A076566.P8710648230827695518

namespace A076566

/-- `A209229(n+2)+A006530(n+2)` -/
def P8710648230827695518.Spec : Prop :=
  ∀ n, P8710648230827695518.a n = A076566 (n + 1)

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

/-! ## A076566.P3024892222443810907

`A078752(A070777(n+2))`
-/

namespace A076566.P3024892222443810907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078752 (A070777 (n + 2)).toNat

end

end A076566.P3024892222443810907

namespace A076566

/-- `A078752(A070777(n+2))` -/
def P3024892222443810907.Spec : Prop :=
  ∀ n, P3024892222443810907.a n = A076566 (n + 1)

end A076566

/-! ## A076566.P6963083179904266927

`A096015(A053585(n+2))`
-/

namespace A076566.P6963083179904266927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096015 (A053585 (n + 2)).toNat

end

end A076566.P6963083179904266927

namespace A076566

/-- `A096015(A053585(n+2))` -/
def P6963083179904266927.Spec : Prop :=
  ∀ n, P6963083179904266927.a n = A076566 (n + 1)

end A076566

/-! ## A076566.P13902893921949458541

`A070801(A111089(n+2))`
-/

namespace A076566.P13902893921949458541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070801 (A111089 (n + 2)).toNat

end

end A076566.P13902893921949458541

namespace A076566

/-- `A070801(A111089(n+2))` -/
def P13902893921949458541.Spec : Prop :=
  ∀ n, P13902893921949458541.a n = A076566 (n + 1)

end A076566

/-! ## A076566.P6225575438756344431

`A117366(A079707(n+2))`
-/

namespace A076566.P6225575438756344431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (A079707 (n + 2)).toNat

end

end A076566.P6225575438756344431

namespace A076566

/-- `A117366(A079707(n+2))` -/
def P6225575438756344431.Spec : Prop :=
  ∀ n, P6225575438756344431.a n = A076566 (n + 1)

end A076566

/-!
# A076567: Greatest prime divisor of 4n+6 (sum of four successive integers).

The programs for A076567, the canonical program `A076567.P1168870904317662066` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076567 has offset 1).

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

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A076567

/-- `A076565(n+2)` -/
def P1168870904317662066.Spec : Prop :=
  ∀ n, P1168870904317662066.a n = A076567 (n + 1)

theorem P1168870904317662066.correct : P1168870904317662066.Spec := by
  intro n
  simp only [A076567, Nat.add_sub_cancel]

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

/-! ## A076567.P17846920501206320729

`A085392(A073760(n+2))`
-/

namespace A076567.P17846920501206320729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A073760 (n + 2)).toNat

end

end A076567.P17846920501206320729

namespace A076567

/-- `A085392(A073760(n+2))` -/
def P17846920501206320729.Spec : Prop :=
  ∀ n, P17846920501206320729.a n = A076567 (n + 1)

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

/-! ## A076567.P5418376802138536441

`A071190(A136026(n+2))`
-/

namespace A076567.P5418376802138536441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071190 (A136026 (n + 2)).toNat

end

end A076567.P5418376802138536441

namespace A076567

/-- `A071190(A136026(n+2))` -/
def P5418376802138536441.Spec : Prop :=
  ∀ n, P5418376802138536441.a n = A076567 (n + 1)

end A076567

/-! ## A076567.P8363740598457499098

`A231233(∑[n+1]+2)`
-/

namespace A076567.P8363740598457499098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231233 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A076567.P8363740598457499098

namespace A076567

/-- `A231233(∑[n+1]+2)` -/
def P8363740598457499098.Spec : Prop :=
  ∀ n, P8363740598457499098.a n = A076567 (n + 1)

end A076567

/-! ## A076567.P11635896124209801947

`A068211(A136020(n+2))`
-/

namespace A076567.P11635896124209801947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068211 (A136020 (n + 2)).toNat

end

end A076567.P11635896124209801947

namespace A076567

/-- `A068211(A136020(n+2))` -/
def P11635896124209801947.Spec : Prop :=
  ∀ n, P11635896124209801947.a n = A076567 (n + 1)

end A076567

/-!
# A076568: Greatest prime divisor of 5n+10 (sum of five successive integers).

The programs for A076568, the canonical program `A076568.P8878829068693360086` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076568 has offset 1).

The definition of A076568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076568.P350425913621676522

`A006530(5*(3+n))`
-/

namespace A076568.P350425913621676522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (5 * (3 + n))

end

end A076568.P350425913621676522

namespace A076568

/-- `A006530(5*(3+n))` -/
def P350425913621676522.Spec : Prop :=
  ∀ n, P350425913621676522.a n = A076568 (n + 1)

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

The canonical program, it is in `Seq.B007.C000`.
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

/-! ## A076569.P13901294998167738894

`A076567(2+n)`
-/

namespace A076569.P13901294998167738894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076567 (2 + n)

end

end A076569.P13901294998167738894

namespace A076569

/-- `A076567(2+n)` -/
def P13901294998167738894.Spec : Prop :=
  ∀ n, P13901294998167738894.a n = A076569 (n + 1)

end A076569

/-! ## A076569.P17451285926111221564

`A076565(3+n)`
-/

namespace A076569.P17451285926111221564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076565 (3 + n)

end

end A076569.P17451285926111221564

namespace A076569

/-- `A076565(3+n)` -/
def P17451285926111221564.Spec : Prop :=
  ∀ n, P17451285926111221564.a n = A076569 (n + 1)

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

/-! ## A076570.P13862881552278568742

`A111089(A294612(n+1))`
-/

namespace A076570.P13862881552278568742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (A294612 (n + 1)).toNat

end

end A076570.P13862881552278568742

namespace A076570

/-- `A111089(A294612(n+1))` -/
def P13862881552278568742.Spec : Prop :=
  ∀ n, P13862881552278568742.a n = A076570 (n + 1)

end A076570

/-! ## A076570.P11361057704470957212

`A085392(A362419(n+1))`
-/

namespace A076570.P11361057704470957212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A362419 (n + 1)).toNat

end

end A076570.P11361057704470957212

namespace A076570

/-- `A085392(A362419(n+1))` -/
def P11361057704470957212.Spec : Prop :=
  ∀ n, P11361057704470957212.a n = A076570 (n + 1)

end A076570

/-! ## A076570.P16814070156020422179

`A359612(A162867(n+1))`
-/

namespace A076570.P16814070156020422179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359612 (A162867 (n + 1)).toNat

end

end A076570.P16814070156020422179

namespace A076570

/-- `A359612(A162867(n+1))` -/
def P16814070156020422179.Spec : Prop :=
  ∀ n, P16814070156020422179.a n = A076570 (n + 1)

end A076570

/-!
# A076571: Binomial triangle based on factorials.

The programs for A076571, the canonical program `A076571.P12176485452125884622` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076571 has offset 0).

The definition of A076571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076571.P12176485452125884622

`A119502(n)*A143409(A061579(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A076571

/-- `A119502(n)*A143409(A061579(n))` -/
def P12176485452125884622.Spec : Prop :=
  ∀ n, P12176485452125884622.a n = A076571 n

theorem P12176485452125884622.correct : P12176485452125884622.Spec := by
  intro n
  simp only [A076571]

end A076571

/-! ## A076571.P4522194147375580059

`A025581(n)!*A143409(A061579(n))`
-/

namespace A076571.P4522194147375580059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℤ) * A143409 (A061579 n).toNat

end

end A076571.P4522194147375580059

namespace A076571

/-- `A025581(n)!*A143409(A061579(n))` -/
def P4522194147375580059.Spec : Prop :=
  ∀ n, P4522194147375580059.a n = A076571 n

end A076571

/-! ## A076571.P5918356069498669312

`A073474(A061579(n))/A007318(n)`
-/

namespace A076571.P5918356069498669312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073474 (A061579 n).toNat : ℚ) / (A007318 n : ℚ)

end

end A076571.P5918356069498669312

namespace A076571

/-- `A073474(A061579(n))/A007318(n)` -/
def P5918356069498669312.Spec : Prop :=
  ∀ n, P5918356069498669312.a n = (A076571 n : ℚ)

end A076571

/-! ## A076571.P16227142400081577281

`abs(A073474(A061579(n))/A130595(n))`
-/

namespace A076571.P16227142400081577281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A073474 (A061579 n).toNat : ℚ) / (A130595 n : ℚ)|

end

end A076571.P16227142400081577281

namespace A076571

/-- `abs(A073474(A061579(n))/A130595(n))` -/
def P16227142400081577281.Spec : Prop :=
  ∀ n, P16227142400081577281.a n = (A076571 n : ℚ)

end A076571

/-! ## A076571.P9654730197125161517

`A073474(A061579(n))/sqrt(A008459(n))`
-/

namespace A076571.P9654730197125161517
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A073474 (A061579 n).toNat : ℝ) / Real.sqrt (A008459 n : ℝ)

end

end A076571.P9654730197125161517

namespace A076571

/-- `A073474(A061579(n))/sqrt(A008459(n))` -/
def P9654730197125161517.Spec : Prop :=
  ∀ n, P9654730197125161517.a n = (A076571 n : ℝ)

end A076571

/-!
# A076577: Sum of squares of divisors d of n such that n/d is odd.

The programs for A076577, the canonical program `A076577.P8083081140773198791` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076577 has offset 1).

The definition of A076577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076577.P8083081140773198791

`∑{d}[2*(n+1), ((n+1)%#)²]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A076577

/-- `∑{d}[2*(n+1), ((n+1)%#)²]` -/
def P8083081140773198791.Spec : Prop :=
  ∀ n, (P8083081140773198791.a n : ℤ) = A076577 (n + 1)

theorem P8083081140773198791.correct : P8083081140773198791.Spec := by
  intro n
  simp only [A076577, Nat.add_sub_cancel]

end A076577

/-! ## A076577.P13110820316366381339

`1/2*∑{d}[n+1, (1-(-1)^#)*#²]*(2^val(n+1, 2))²`
-/

namespace A076577.P13110820316366381339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((∑ d ∈ Nat.divisors (f1 n), (1 - (-1) ^ d) * (d ^ 2 : ℤ) : ℤ) : ℚ) * ((2 ^ SequenceMachineLib.valuation (n + 1) 2) ^ 2 : ℚ)

end

end A076577.P13110820316366381339

namespace A076577

/-- `1/2*∑{d}[n+1, (1-(-1)^#)*#²]*(2^val(n+1, 2))²` -/
def P13110820316366381339.Spec : Prop :=
  ∀ n, P13110820316366381339.a n = (A076577 (n + 1) : ℚ)

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

/-! ## A076577.P16030129824468229024

`1/2*∑{d}[n+1, (1-(-1)^#)*#²]*A006519(n+1)²`
-/

namespace A076577.P16030129824468229024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((∑ d ∈ Nat.divisors (f1 n), (1 - (-1) ^ d) * (d ^ 2 : ℤ) : ℤ) : ℚ) * (A006519 (n + 1) ^ 2 : ℚ)

end

end A076577.P16030129824468229024

namespace A076577

/-- `1/2*∑{d}[n+1, (1-(-1)^#)*#²]*A006519(n+1)²` -/
def P16030129824468229024.Spec : Prop :=
  ∀ n, P16030129824468229024.a n = (A076577 (n + 1) : ℚ)

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

/-!
# A076578: Triangular numbers which are 4-almost primes.

The programs for A076578, the canonical program `A076578.P10758783548542668324` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076578 has offset 1).

The definition of A076578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5535 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076578.P10758783548542668324

`A000217(A114435(1+n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076578

/-- `A000217(A114435(1+n))` -/
def P10758783548542668324.Spec : Prop :=
  ∀ n, P10758783548542668324.a n = A076578 (n + 1)

theorem P10758783548542668324.correct : P10758783548542668324.Spec := by
  intro n
  simp only [A076578, Nat.add_sub_cancel]

end A076578

/-! ## A076578.P9756595559252754284

`C(2+eq[4, A069904(n+1)], 2)`
-/

namespace A076578.P9756595559252754284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2

end

end A076578.P9756595559252754284

namespace A076578

/-- `C(2+eq[4, A069904(n+1)], 2)` -/
def P9756595559252754284.Spec : Prop :=
  ∀ n, (P9756595559252754284.a n : ℤ) = A076578 (n + 1)

end A076578

/-! ## A076578.P8146994799634064386

`A350295(A114435(n+1)+1)`
-/

namespace A076578.P8146994799634064386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350295 (A114435 (n + 1) + 1).toNat

end

end A076578.P8146994799634064386

namespace A076578

/-- `A350295(A114435(n+1)+1)` -/
def P8146994799634064386.Spec : Prop :=
  ∀ n, P8146994799634064386.a n = A076578 (n + 1)

end A076578

/-! ## A076578.P4411566836140555612

`A000096(A114435(n+1)-1)+1`
-/

namespace A076578.P4411566836140555612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A114435 (n + 1) - 1).toNat + 1

end

end A076578.P4411566836140555612

namespace A076578

/-- `A000096(A114435(n+1)-1)+1` -/
def P4411566836140555612.Spec : Prop :=
  ∀ n, P4411566836140555612.a n = A076578 (n + 1)

end A076578

/-! ## A076578.P14833429809948623532

`A161680(A114435(n+1)+1)`
-/

namespace A076578.P14833429809948623532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A114435 (n + 1) + 1).toNat

end

end A076578.P14833429809948623532

namespace A076578

/-- `A161680(A114435(n+1)+1)` -/
def P14833429809948623532.Spec : Prop :=
  ∀ n, P14833429809948623532.a n = A076578 (n + 1)

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

/-! ## A076578.P1801008674332248924

`A002378(eq[4, A069904(n+1)]+1)/2`
-/

namespace A076578.P1801008674332248924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 2

end

end A076578.P1801008674332248924

namespace A076578

/-- `A002378(eq[4, A069904(n+1)]+1)/2` -/
def P1801008674332248924.Spec : Prop :=
  ∀ n, P1801008674332248924.a n = (A076578 (n + 1) : ℚ)

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

/-! ## A076578.P9996069682797254900

`∑{#}[A114435(n+1), #]`
-/

namespace A076578.P9996069682797254900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114435 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, k

end

end A076578.P9996069682797254900

namespace A076578

/-- `∑{#}[A114435(n+1), #]` -/
def P9996069682797254900.Spec : Prop :=
  ∀ n, (P9996069682797254900.a n : ℤ) = A076578 (n + 1)

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

/-! ## A076578.P14368485551967814279

`filter[A082667(n+2), A101637(#)]`
-/

namespace A076578.P14368485551967814279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082667 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A076578.P14368485551967814279

namespace A076578

/-- `filter[A082667(n+2), A101637(#)]` -/
def P14368485551967814279.Spec : Prop :=
  ∀ n, P14368485551967814279.a n = A076578 (n + 1)

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

/-!
# A076579: Triangular numbers which are 5-almost primes.

The programs for A076579, the canonical program `A076579.P832701110737595350` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076579 has offset 1).

The definition of A076579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076579.P832701110737595350

`C(1+A114436(n+1), 2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076579

/-- `C(1+A114436(n+1), 2)` -/
def P832701110737595350.Spec : Prop :=
  ∀ n, (P832701110737595350.a n : ℤ) = A076579 (n + 1)

theorem P832701110737595350.correct : P832701110737595350.Spec := by
  intro n
  simp only [A076579, Nat.add_sub_cancel]

end A076579

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

/-! ## A076579.P13642301853992123414

`C(eq[5, A069904(n+1)]+2, 2)`
-/

namespace A076579.P13642301853992123414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2) 2

end

end A076579.P13642301853992123414

namespace A076579

/-- `C(eq[5, A069904(n+1)]+2, 2)` -/
def P13642301853992123414.Spec : Prop :=
  ∀ n, (P13642301853992123414.a n : ℤ) = A076579 (n + 1)

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

/-! ## A076580.P1892553600750612005

`C(A114437(1+n)+1, 2)`
-/

namespace A076580.P1892553600750612005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A114437 (1 + n) + 1).toNat 2

end

end A076580.P1892553600750612005

/-! ## A076580.P1324506719844915894

`A000217(A114437(1+n))`
-/

namespace A076580.P1324506719844915894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A114437 (1 + n)).toNat

end

end A076580.P1324506719844915894

/-! ## A076580.P5673551009165105329

`A161680(A114437(1+n)+1)`
-/

namespace A076580.P5673551009165105329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A114437 (1 + n) + 1).toNat

end

end A076580.P5673551009165105329

/-! ## A076580.P17602456594010811209

`A000124(A114437(n+1))-1`
-/

namespace A076580.P17602456594010811209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A114437 (n + 1)).toNat - 1

end

end A076580.P17602456594010811209

/-! ## A076580.P4417866634020988603

`A253145(A114437(1+n)-1)`
-/

namespace A076580.P4417866634020988603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A114437 (1 + n) - 1).toNat

end

end A076580.P4417866634020988603

/-! ## A076580.P11024653064520632845

`A000096(A114437(n+1)-1)+1`
-/

namespace A076580.P11024653064520632845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A114437 (n + 1) - 1).toNat + 1

end

end A076580.P11024653064520632845

/-!
# A076581: Triangular numbers which are 7-almost primes.

The programs for A076581, there is no canonical definition to state claims against.
-/

/-! ## A076581.P3709930667372265695

`C(A240527(1+n)+1, 2)`
-/

namespace A076581.P3709930667372265695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A240527 (1 + n) + 1).toNat 2

end

end A076581.P3709930667372265695

/-! ## A076581.P1592641749037912861

`A000217(A240527(1+n))`
-/

namespace A076581.P1592641749037912861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A240527 (1 + n)).toNat

end

end A076581.P1592641749037912861

/-! ## A076581.P13554358703322908196

`A161680(A240527(1+n)+1)`
-/

namespace A076581.P13554358703322908196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A240527 (1 + n) + 1).toNat

end

end A076581.P13554358703322908196

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

/-! ## A076581.P14099611533075336734

`A245467(2*A240527(n+1))`
-/

namespace A076581.P14099611533075336734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245467 (2 * A240527 (n + 1)).toNat

end

end A076581.P14099611533075336734

/-! ## A076581.P18336377386783235733

`∩[A000217(n), A046308(n+1)]`
-/

namespace A076581.P18336377386783235733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076581.P18336377386783235733

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

/-! ## A076582.P13805732820946231988

`A000217(A240528(1+n))`
-/

namespace A076582.P13805732820946231988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A240528 (1 + n)).toNat

end

end A076582.P13805732820946231988

/-! ## A076582.P17702041131563395564

`A161680(A240528(1+n)+1)`
-/

namespace A076582.P17702041131563395564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A240528 (1 + n) + 1).toNat

end

end A076582.P17702041131563395564

/-! ## A076582.P11214366809043227233

`A179865(A240528(n+1)+1)`
-/

namespace A076582.P11214366809043227233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A240528 (n + 1) + 1).toNat

end

end A076582.P11214366809043227233

/-! ## A076582.P14397150284289236499

`floor(A000124(A240528(n+1))-1/A006530(n+1))`
-/

namespace A076582.P14397150284289236499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000124 (A240528 (n + 1)).toNat : ℚ) - 1 / (A006530 (n + 1) : ℚ)⌋

end

end A076582.P14397150284289236499

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

/-! ## A076583.P7428959773128156249

`C(A240529(1+n)+1, 2)`
-/

namespace A076583.P7428959773128156249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A240529 (1 + n) + 1).toNat 2

end

end A076583.P7428959773128156249

/-! ## A076583.P4004880814075777678

`A000217(A240529(1+n))`
-/

namespace A076583.P4004880814075777678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A240529 (1 + n)).toNat

end

end A076583.P4004880814075777678

/-! ## A076583.P10996541036025855380

`A253145(A240529(1+n)-1)`
-/

namespace A076583.P10996541036025855380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A240529 (1 + n) - 1).toNat

end

end A076583.P10996541036025855380

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
# A076587: First occurrence of n as a term in the continued fraction for Pi/2.

The programs for A076587, there is no canonical definition to state claims against.
-/

/-! ## A076587.P3708833835817479364

`fo[A053300(n)-1]+1`
-/

namespace A076587.P3708833835817479364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053300 n - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A076587.P3708833835817479364

/-!
# A076588: First occurrence of n as a term in the continued fraction for Pi/4.

The programs for A076588, there is no canonical definition to state claims against.
-/

/-! ## A076588.P14986253390099392748

`fo[A070989(n)-1]+1`
-/

namespace A076588.P14986253390099392748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070989 n - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A076588.P14986253390099392748

/-!
# A076589: First occurrence of n as a term in the continued fraction for sqrt(Pi).

The programs for A076589, there is no canonical definition to state claims against.
-/

/-! ## A076589.P2608410665759794852

`fo[A058280(n)-1]+1`
-/

namespace A076589.P2608410665759794852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058280 n - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A076589.P2608410665759794852

/-!
# A076590: First occurrence of n as a term in the continued fraction for zeta(2)=Pi^2/6.

The programs for A076590, there is no canonical definition to state claims against.
-/

/-! ## A076590.P4873040737300900342

`fo[A013679(n)-1]+1`
-/

namespace A076590.P4873040737300900342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013679 n - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A076590.P4873040737300900342

/-!
# A076591: a(1)=1, a(2)=2 a(n)=a(n-1)+(a(n-2) mod n).

The programs for A076591, the canonical program `A076591.P1559582876334619694` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076591 has offset 1).

The definition of A076591 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)%(n+1)` (program `A076591.P1559582876334619694`, by `A076591.P1559582876334619694.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076591.P1559582876334619694

`a(n-1)+a(n-2)%(n+1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C014`.
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

/-! ## A076592.P4775873294590209677

`1+A228269(n+1)`
-/

namespace A076592.P4775873294590209677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A228269 (n + 1)

end

end A076592.P4775873294590209677

/-! ## A076592.P8986026338931821900

`fo[A016730(n)-1]+1`
-/

namespace A076592.P8986026338931821900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016730 n - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A076592.P8986026338931821900

/-! ## A076592.P1020240624455889550

`A020725(A228269(1+n))`
-/

namespace A076592.P1020240624455889550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A228269 (1 + n)).toNat

end

end A076592.P1020240624455889550

/-!
# A076593: First occurrence of n as a term in the continued fraction for log(3).

The programs for A076593, there is no canonical definition to state claims against.
-/

/-! ## A076593.P16782500467908239024

`fo[A016731(n)-1]+1`
-/

namespace A076593.P16782500467908239024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016731 n - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A076593.P16782500467908239024

/-!
# A076594: First occurrence of n as a term in the continued fraction for log(5).

The programs for A076594, there is no canonical definition to state claims against.
-/

/-! ## A076594.P2442796742540635455

`fo[A016733(n)-1]+1`
-/

namespace A076594.P2442796742540635455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016733 n - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A076594.P2442796742540635455

/-!
# A076595: First occurrence of n as a term in the continued fraction for the cube root of 2.

The programs for A076595, there is no canonical definition to state claims against.
-/

/-! ## A076595.P1393330860036901029

`fo[A002945(n)-1]+1`
-/

namespace A076595.P1393330860036901029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002945 n - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A076595.P1393330860036901029

/-!
# A076597: Numbers k such that sqrt(k*(k-1)*(k-2)*(k-3)+1) is a prime.

The programs for A076597, there is no canonical definition to state claims against.
-/

/-! ## A076597.P5275271911894852842

`A002328(1+n)+1`
-/

namespace A076597.P5275271911894852842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (1 + n) + 1

end

end A076597.P5275271911894852842

/-! ## A076597.P17538982629668838343

`A045546(1+n)+2`
-/

namespace A076597.P17538982629668838343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (1 + n) + 2

end

end A076597.P17538982629668838343

/-! ## A076597.P10666507054039305969

`A089362(1+n)-1`
-/

namespace A076597.P10666507054039305969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089362 (1 + n) - 1

end

end A076597.P10666507054039305969

/-! ## A076597.P10876479062528773943

`A094210(1+n)+3`
-/

namespace A076597.P10876479062528773943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (1 + n) + 3

end

end A076597.P10876479062528773943

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

/-! ## A076597.P15632319147324791462

`eq[1, ∑{e}[(n-1)²-n, #]]`
-/

namespace A076597.P15632319147324791462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2 - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076597.P15632319147324791462

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

/-! ## A076598.P13504778130708748448

`or(1, A006519((n+1)²))*A050999(n+1)`
-/

namespace A076598.P13504778130708748448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006519 ((n + 1) ^ 2)) * A050999 (n + 1)

end

end A076598.P13504778130708748448

namespace A076598

/-- `or(1, A006519((n+1)²))*A050999(n+1)` -/
def P13504778130708748448.Spec : Prop :=
  ∀ n, P13504778130708748448.a n = A076598 (n + 1)

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

