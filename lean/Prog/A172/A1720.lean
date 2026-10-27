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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A172000: Nonsquare positive integers n such that the fundamental unit of quadratic field Q(sqrt(n)) has norm -1.

The programs for A172000, there is no canonical definition to state claims against.
-/

/-! ## A172000.P2491164626526035439

`filter[A245226(n+1), A049240(#)]`
-/

namespace A172000.P2491164626526035439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A172000.P2491164626526035439

/-! ## A172000.P9886337345454331347

`filter[A245226(n+1), A267594(#)]`
-/

namespace A172000.P9886337345454331347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A172000.P9886337345454331347

/-! ## A172000.P5988711104514869567

`filter[A245226(n+1), A267635(#)]`
-/

namespace A172000.P5988711104514869567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A172000.P5988711104514869567

/-! ## A172000.P620373766505208190

`∩[A000037(n+1), A245226(n+1)]`
-/

namespace A172000.P620373766505208190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172000.P620373766505208190

/-! ## A172000.P12940114305948867685

`∩[A000415(n+1), A245226(n+1)]`
-/

namespace A172000.P12940114305948867685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172000.P12940114305948867685

/-! ## A172000.P18017291732436018914

`∩[A092206(n+1), A245226(n+1)]`
-/

namespace A172000.P18017291732436018914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172000.P18017291732436018914

/-! ## A172000.P7117792271219816477

`∪[A197115(n+1), A197120(n+1)]`
-/

namespace A172000.P7117792271219816477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A172000.P7117792271219816477

/-!
# A172001: Nonsquare positive integers n such that Pell equation y^2 - n*x^2 = -1 has rational solutions but the norm of fundamental unit of quadratic field Q(sqrt(n)) is 1.

The programs for A172001, there is no canonical definition to state claims against.
-/

/-! ## A172001.P865994464482353012

`A155561(A338976(n+1)+1)`
-/

namespace A172001.P865994464482353012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155561 (A338976 (n + 1) + 1).toNat

end

end A172001.P865994464482353012

/-!
# A172003: Let y = y(u,v) be implicitly defined by g(u,v,y(u,v)) = 0. Read as a triangle by rows, the sequence represents the number of terms a(i,k-i) in the expansion of the bivariate divided difference [u_0,...,u_i; v_0,...,v_{k-i}]y in terms of trivariate divided differences of g.

The programs for A172003, there is no canonical definition to state claims against.
-/

/-! ## A172003.P9203717562669711405

`A003005(A085881(n+1))`
-/

namespace A172003.P9203717562669711405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003005 (A085881 (n + 1)).toNat

end

end A172003.P9203717562669711405

/-! ## A172003.P8364712211259469732

`A353904(A360667(n+1))`
-/

namespace A172003.P8364712211259469732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353904 (A360667 (n + 1)).toNat

end

end A172003.P8364712211259469732

/-!
# A172005: Shortest SNUSP representation of a number using only + and @.

The programs for A172005, there is no canonical definition to state claims against.
-/

/-! ## A172005.P9950465472993856365

`or(A000035(A317118(n+1)), A172006(n+1))`
-/

namespace A172005.P9950465472993856365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A317118 (n + 1)).toNat) (A172006 (n + 1))

end

end A172005.P9950465472993856365

/-! ## A172005.P14595101845248916337

`A172006(n+1)+A025469(A011939(n))`
-/

namespace A172005.P14595101845248916337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172006 (n + 1) + A025469 (A011939 n).toNat

end

end A172005.P14595101845248916337

/-! ## A172005.P10763704361687647735

`A172006(n+1)+A025469(A066179(n+1))`
-/

namespace A172005.P10763704361687647735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172006 (n + 1) + A025469 (A066179 (n + 1)).toNat

end

end A172005.P10763704361687647735

/-! ## A172005.P8384645267701375577

`A172006(n+1)+A025469(∑[A279445(n+1)])`
-/

namespace A172005.P8384645267701375577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172006 (n + 1) + A025469 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A172005.P8384645267701375577

/-! ## A172005.P356113590570594131

`A172006(A135381(n+1))`
-/

namespace A172005.P356113590570594131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172006 (A135381 (n + 1)).toNat

end

end A172005.P356113590570594131

/-!
# A172006: Shortest SNUSP representation of a number using only +, - and @.

The programs for A172006, there is no canonical definition to state claims against.
-/

/-! ## A172006.P4287444218907963070

`A172005(A328617(n+1)%p?[A328617(n+1)])`
-/

namespace A172006.P4287444218907963070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172005 (Int.tmod (A328617 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A172006.P4287444218907963070

/-! ## A172006.P11788717662242115752

`A172005(n+1)-A025469(A011939(n))`
-/

namespace A172006.P11788717662242115752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172005 (n + 1) - A025469 (A011939 n).toNat

end

end A172006.P11788717662242115752

/-! ## A172006.P13442127389615460610

`A172005(n+1)-A025469(A066179(n+1))`
-/

namespace A172006.P13442127389615460610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172005 (n + 1) - A025469 (A066179 (n + 1)).toNat

end

end A172006.P13442127389615460610

/-! ## A172006.P4130114649755137613

`and(A172005(A107602(n+1)), A172005(n+1))`
-/

namespace A172006.P4130114649755137613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A172005 (A107602 (n + 1)).toNat) (A172005 (n + 1))

end

end A172006.P4130114649755137613

/-! ## A172006.P1523383313737008093

`and(A172005(n+1), A172005(A272215(n+1)))`
-/

namespace A172006.P1523383313737008093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A172005 (n + 1)) (A172005 (A272215 (n + 1)).toNat)

end

end A172006.P1523383313737008093

/-!
# A172007: Numbers which require a - in their minimal SNUSP representation.

The programs for A172007, there is no canonical definition to state claims against.
-/

/-! ## A172007.P11399599831044010299

`lt[A172006(n+1), A172005(n+1)]+1`
-/

namespace A172007.P11399599831044010299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A172007.P11399599831044010299

/-!
# A172011: a(n) = 12*A002605(n).

The programs for A172011, the canonical program `A172011.P12570364966338476228` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172011 has offset 0).

The definition of A172011 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*A002605(n)` (program `A172011.P12570364966338476228`, by `A172011.P12570364966338476228.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172011.P4105920100824679043

`2*a(n-1)+2*a(n-2)` with `a(0)=0, a(1)=12`
-/

namespace A172011.P4105920100824679043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 12] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2)

end

end A172011.P4105920100824679043

namespace A172011

/-- `2*a(n-1)+2*a(n-2)` -/
def P4105920100824679043.Spec : Prop :=
  ∀ n, (P4105920100824679043.a n : ℤ) = A172011 n

end A172011

/-! ## A172011.P12570364966338476228

`12*A002605(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A172011

/-- `12*A002605(n)` -/
def P12570364966338476228.Spec : Prop :=
  ∀ n, P12570364966338476228.a n = A172011 n

theorem P12570364966338476228.correct : P12570364966338476228.Spec := by
  intro n
  simp only [A172011]

end A172011

/-! ## A172011.P9324268373569178824

`ogf(12x/(1-2x-2x^2))`
-/

namespace A172011.P9324268373569178824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 12] [1, -2, -2] n

end

end A172011.P9324268373569178824

namespace A172011

/-- `ogf(12x/(1-2x-2x^2))` -/
def P9324268373569178824.Spec : Prop :=
  ∀ n, P9324268373569178824.a n = A172011 n

end A172011

/-! ## A172011.P11751679255106705470

`2*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=12`
-/

namespace A172011.P11751679255106705470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 12] fun n a =>
  2 * (a (n - 1) + a (n - 2))

end

end A172011.P11751679255106705470

namespace A172011

/-- `2*(a(n-1)+a(n-2))` -/
def P11751679255106705470.Spec : Prop :=
  ∀ n, (P11751679255106705470.a n : ℤ) = A172011 n

end A172011

/-! ## A172011.P17319856454245811517

`Δ[lcm(2, a(n-1)+a(n-2)+3)]` with `a(0)=2, a(1)=2`
-/

namespace A172011.P17319856454245811517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  Nat.lcm 2 (f1 (n - 1) + (f1 (n - 2) + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A172011.P17319856454245811517

namespace A172011

/-- `Δ[lcm(2, a(n-1)+a(n-2)+3)]` -/
def P17319856454245811517.Spec : Prop :=
  ∀ n, P17319856454245811517.a n = A172011 n

end A172011

/-! ## A172011.P6932504993969395491

`3*A116556(n)`
-/

namespace A172011.P6932504993969395491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A116556 n

end

end A172011.P6932504993969395491

namespace A172011

/-- `3*A116556(n)` -/
def P6932504993969395491.Spec : Prop :=
  ∀ n, P6932504993969395491.a n = A172011 n

end A172011

/-! ## A172011.P13074058309259199716

`4*A083337(n)`
-/

namespace A172011.P13074058309259199716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A083337 n

end

end A172011.P13074058309259199716

namespace A172011

/-- `4*A083337(n)` -/
def P13074058309259199716.Spec : Prop :=
  ∀ n, P13074058309259199716.a n = A172011 n

end A172011

/-! ## A172011.P8110210886791517256

`Δ[2*A080040(n)]`
-/

namespace A172011.P8110210886791517256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172011.P8110210886791517256

namespace A172011

/-- `Δ[2*A080040(n)]` -/
def P8110210886791517256.Spec : Prop :=
  ∀ n, P8110210886791517256.a n = A172011 n

end A172011

/-! ## A172011.P10669483321544448028

`Δ[4*A026150(n)]`
-/

namespace A172011.P10669483321544448028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A026150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172011.P10669483321544448028

namespace A172011

/-- `Δ[4*A026150(n)]` -/
def P10669483321544448028.Spec : Prop :=
  ∀ n, P10669483321544448028.a n = A172011 n

end A172011

/-! ## A172011.P2355778703704431784

`2*A398309(n+3)`
-/

namespace A172011.P2355778703704431784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A398309 (n + 3)

end

end A172011.P2355778703704431784

namespace A172011

/-- `2*A398309(n+3)` -/
def P2355778703704431784.Spec : Prop :=
  ∀ n, P2355778703704431784.a n = A172011 n

end A172011

/-! ## A172011.P5768350181388073696

`6*(A108898(n)+1)`
-/

namespace A172011.P5768350181388073696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A108898 n + 1)

end

end A172011.P5768350181388073696

namespace A172011

/-- `6*(A108898(n)+1)` -/
def P5768350181388073696.Spec : Prop :=
  ∀ n, P5768350181388073696.a n = A172011 n

end A172011

/-! ## A172011.P14264109634690488968

`6*A293007(n+1)`
-/

namespace A172011.P14264109634690488968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A293007 (n + 1)

end

end A172011.P14264109634690488968

namespace A172011

/-- `6*A293007(n+1)` -/
def P14264109634690488968.Spec : Prop :=
  ∀ n, P14264109634690488968.a n = A172011 n

end A172011

/-! ## A172011.P2941023401105113707

`6*A028860(n+2)`
-/

namespace A172011.P2941023401105113707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A028860 (n + 2)

end

end A172011.P2941023401105113707

namespace A172011

/-- `6*A028860(n+2)` -/
def P2941023401105113707.Spec : Prop :=
  ∀ n, P2941023401105113707.a n = A172011 n

end A172011

/-! ## A172011.P10287660710361124850

`lcm(A083337(n), A116556(n))`
-/

namespace A172011.P10287660710361124850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A083337 n) (A116556 n)

end

end A172011.P10287660710361124850

namespace A172011

/-- `lcm(A083337(n), A116556(n))` -/
def P10287660710361124850.Spec : Prop :=
  ∀ n, (P10287660710361124850.a n : ℤ) = A172011 n

end A172011

/-! ## A172011.P17583145922285630445

`Δ[A026150(n)+A080040(n)+A026150(n)]`
-/

namespace A172011.P17583145922285630445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n + (A080040 n + A026150 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172011.P17583145922285630445

namespace A172011

/-- `Δ[A026150(n)+A080040(n)+A026150(n)]` -/
def P17583145922285630445.Spec : Prop :=
  ∀ n, P17583145922285630445.a n = A172011 n

end A172011

/-! ## A172011.P12700701106004957153

`Δ[A162562(n)-A026150(n+1)]`
-/

namespace A172011.P12700701106004957153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162562 n - A026150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172011.P12700701106004957153

namespace A172011

/-- `Δ[A162562(n)-A026150(n+1)]` -/
def P12700701106004957153.Spec : Prop :=
  ∀ n, P12700701106004957153.a n = A172011 n

end A172011

/-! ## A172011.P10807841336562828608

`A162562(n+1)-2*A162559(n)`
-/

namespace A172011.P10807841336562828608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162562 (n + 1) - 2 * A162559 n

end

end A172011.P10807841336562828608

namespace A172011

/-- `A162562(n+1)-2*A162559(n)` -/
def P10807841336562828608.Spec : Prop :=
  ∀ n, P10807841336562828608.a n = A172011 n

end A172011

/-! ## A172011.P14063054341176308856

`Δ[A239171(n+1)]-A239171(n+1)`
-/

namespace A172011.P14063054341176308856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A239171 (n + 1)

end

end A172011.P14063054341176308856

namespace A172011

/-- `Δ[A239171(n+1)]-A239171(n+1)` -/
def P14063054341176308856.Spec : Prop :=
  ∀ n, P14063054341176308856.a n = A172011 n

end A172011

/-! ## A172011.P3021798918364169304

`Δ[2*2*(A162562(n)-A162559(n))]`
-/

namespace A172011.P3021798918364169304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * (A162562 n - A162559 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172011.P3021798918364169304

namespace A172011

/-- `Δ[2*2*(A162562(n)-A162559(n))]` -/
def P3021798918364169304.Spec : Prop :=
  ∀ n, P3021798918364169304.a n = A172011 n

end A172011

/-! ## A172011.P5146473921229075083

`Δ[Δ[A080040(n+1)]-A080040(n+1)]`
-/

namespace A172011.P5146473921229075083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A080040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172011.P5146473921229075083

namespace A172011

/-- `Δ[Δ[A080040(n+1)]-A080040(n+1)]` -/
def P5146473921229075083.Spec : Prop :=
  ∀ n, P5146473921229075083.a n = A172011 n

end A172011

/-!
# A172012: Expansion of (2-3*x)/(1-3*x-3*x^2).

The programs for A172012, the canonical program `A172012.P13006306347062429257` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172012 has offset 0).

The definition of A172012 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2-3x)/(1-3x-3x^2))` (program `A172012.P13006306347062429257`, by `A172012.P13006306347062429257.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172012.P13006306347062429257

`ogf((2-3x)/(1-3x-3x^2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172012

/-- `ogf((2-3x)/(1-3x-3x^2))` -/
def P13006306347062429257.Spec : Prop :=
  ∀ n, P13006306347062429257.a n = A172012 n

theorem P13006306347062429257.correct : P13006306347062429257.Spec := by
  intro n
  simp only [A172012]

end A172012

/-! ## A172012.P6591119281903962899

`3*(a(n-1)+a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A172012.P6591119281903962899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  3 * (a (n - 1) + a (n - 2))

end

end A172012.P6591119281903962899

namespace A172012

/-- `3*(a(n-1)+a(n-2))` -/
def P6591119281903962899.Spec : Prop :=
  ∀ n, (P6591119281903962899.a n : ℤ) = A172012 n

end A172012

/-! ## A172012.P9307253810591544439

`2*A030195(n+1)-3*A030195(n)`
-/

namespace A172012.P9307253810591544439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030195 (n + 1) - 3 * A030195 n

end

end A172012.P9307253810591544439

namespace A172012

/-- `2*A030195(n+1)-3*A030195(n)` -/
def P9307253810591544439.Spec : Prop :=
  ∀ n, P9307253810591544439.a n = A172012 n

end A172012

/-! ## A172012.P13572563785614752106

`Δ[3*(a(n-1)-(2-a(n-2)))]` with `a(0)=1, a(1)=3`
-/

namespace A172012.P13572563785614752106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  3 * (f1 (n - 1) - (2 - f1 (n - 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172012.P13572563785614752106

namespace A172012

/-- `Δ[3*(a(n-1)-(2-a(n-2)))]` -/
def P13572563785614752106.Spec : Prop :=
  ∀ n, P13572563785614752106.a n = A172012 n

end A172012

/-! ## A172012.P11383667342147891498

`3-3*(1-a(n-1)-a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A172012.P11383667342147891498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  3 - 3 * (1 - a (n - 1) - a (n - 2))

end

end A172012.P11383667342147891498

namespace A172012

/-- `3-3*(1-a(n-1)-a(n-2))` -/
def P11383667342147891498.Spec : Prop :=
  ∀ n, P11383667342147891498.a n = A172012 n

end A172012

/-! ## A172012.P13238588896817529854

`(a(n-1)+a(n-2))/(1-2/3)` with `a(0)=2, a(1)=3`
-/

namespace A172012.P13238588896817529854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  (a (n - 1) + a (n - 2)) / (1 - (2 : ℚ) / 3)

end

end A172012.P13238588896817529854

namespace A172012

/-- `(a(n-1)+a(n-2))/(1-2/3)` -/
def P13238588896817529854.Spec : Prop :=
  ∀ n, P13238588896817529854.a n = (A172012 n : ℚ)

end A172012

/-! ## A172012.P8120322243516050630

`or(2, A085480(n+1))`
-/

namespace A172012.P8120322243516050630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A085480 (n + 1))

end

end A172012.P8120322243516050630

namespace A172012

/-- `or(2, A085480(n+1))` -/
def P8120322243516050630.Spec : Prop :=
  ∀ n, P8120322243516050630.a n = A172012 n

end A172012

/-! ## A172012.P3574573778803766509

`A202206(n)+A134927(n)`
-/

namespace A172012.P3574573778803766509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202206 n + A134927 n

end

end A172012.P3574573778803766509

namespace A172012

/-- `A202206(n)+A134927(n)` -/
def P3574573778803766509.Spec : Prop :=
  ∀ n, P3574573778803766509.a n = A172012 n

end A172012

/-! ## A172012.P14925787515308529376

`A085480(n+1)+A000038(n)`
-/

namespace A172012.P14925787515308529376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085480 (n + 1) + A000038 n

end

end A172012.P14925787515308529376

namespace A172012

/-- `A085480(n+1)+A000038(n)` -/
def P14925787515308529376.Spec : Prop :=
  ∀ n, P14925787515308529376.a n = A172012 n

end A172012

/-! ## A172012.P7652917092756650839

`A106435(n+1)-A108306(n)`
-/

namespace A172012.P7652917092756650839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106435 (n + 1) - A108306 n

end

end A172012.P7652917092756650839

namespace A172012

/-- `A106435(n+1)-A108306(n)` -/
def P7652917092756650839.Spec : Prop :=
  ∀ n, P7652917092756650839.a n = A172012 n

end A172012

/-! ## A172012.P16620396663729810557

`A030195(n)+2*A134927(n)`
-/

namespace A172012.P16620396663729810557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030195 n + 2 * A134927 n

end

end A172012.P16620396663729810557

namespace A172012

/-- `A030195(n)+2*A134927(n)` -/
def P16620396663729810557.Spec : Prop :=
  ∀ n, P16620396663729810557.a n = A172012 n

end A172012

/-! ## A172012.P13884616530982009827

`2*A202206(n)-A030195(n)`
-/

namespace A172012.P13884616530982009827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A202206 n - A030195 n

end

end A172012.P13884616530982009827

namespace A172012

/-- `2*A202206(n)-A030195(n)` -/
def P13884616530982009827.Spec : Prop :=
  ∀ n, P13884616530982009827.a n = A172012 n

end A172012

/-! ## A172012.P15645280035199988886

`A106435(n+1)-A134927(n+1)`
-/

namespace A172012.P15645280035199988886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106435 (n + 1) - A134927 (n + 1)

end

end A172012.P15645280035199988886

namespace A172012

/-- `A106435(n+1)-A134927(n+1)` -/
def P15645280035199988886.Spec : Prop :=
  ∀ n, P15645280035199988886.a n = A172012 n

end A172012

/-! ## A172012.P2266990017849479601

`A030195(n+1)+A134927(n)-A030195(n)`
-/

namespace A172012.P2266990017849479601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030195 (n + 1) + (A134927 n - A030195 n)

end

end A172012.P2266990017849479601

namespace A172012

/-- `A030195(n+1)+A134927(n)-A030195(n)` -/
def P2266990017849479601.Spec : Prop :=
  ∀ n, P2266990017849479601.a n = A172012 n

end A172012

/-! ## A172012.P17294599010382893381

`A030195(n+1)+A030195(n+1)-A106435(n)`
-/

namespace A172012.P17294599010382893381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030195 (n + 1) + (A030195 (n + 1) - A106435 n)

end

end A172012.P17294599010382893381

namespace A172012

/-- `A030195(n+1)+A030195(n+1)-A106435(n)` -/
def P17294599010382893381.Spec : Prop :=
  ∀ n, P17294599010382893381.a n = A172012 n

end A172012

/-! ## A172012.P9171268922663962049

`2*A106435(n+1)-A125145(n+1)`
-/

namespace A172012.P9171268922663962049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106435 (n + 1) - A125145 (n + 1)

end

end A172012.P9171268922663962049

namespace A172012

/-- `2*A106435(n+1)-A125145(n+1)` -/
def P9171268922663962049.Spec : Prop :=
  ∀ n, P9171268922663962049.a n = A172012 n

end A172012

/-! ## A172012.P17240233101274088016

`A125145(n+1)-2*A134927(n+1)`
-/

namespace A172012.P17240233101274088016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125145 (n + 1) - 2 * A134927 (n + 1)

end

end A172012.P17240233101274088016

namespace A172012

/-- `A125145(n+1)-2*A134927(n+1)` -/
def P17240233101274088016.Spec : Prop :=
  ∀ n, P17240233101274088016.a n = A172012 n

end A172012

/-! ## A172012.P663653706503861111

`A030195(n+1)+A125145(n+1)-A085480(n+2)`
-/

namespace A172012.P663653706503861111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030195 (n + 1) + (A125145 (n + 1) - A085480 (n + 2))

end

end A172012.P663653706503861111

namespace A172012

/-- `A030195(n+1)+A125145(n+1)-A085480(n+2)` -/
def P663653706503861111.Spec : Prop :=
  ∀ n, P663653706503861111.a n = A172012 n

end A172012

/-!
# A172014: A142459(2*n,n)/(n+1).

The programs for A172014, there is no canonical definition to state claims against.
-/

/-! ## A172014.P11685596900484595229

`A142459((n+1)²+n²)/(n+1)`
-/

namespace A172014.P11685596900484595229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142459 ((n + 1) ^ 2 + n ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A172014.P11685596900484595229

/-!
# A172015: Numbers of the form 6*k-+1 such that 6*k-1=prime and 6*k+1=nonprime.

The programs for A172015, there is no canonical definition to state claims against.
-/

/-! ## A172015.P4401052966500556659

`eq[A049711(n+3), A284721(n)]`
-/

namespace A172015.P4401052966500556659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172015.P4401052966500556659

/-! ## A172015.P15356529900605223151

`A121762(A008619(n))+2*and(1, n)`
-/

namespace A172015.P15356529900605223151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (A008619 n).toNat + (2 * Nat.land 1 n : ℤ)

end

end A172015.P15356529900605223151

/-! ## A172015.P3820198840979641375

`eq[A007917(n+2)+1, A061800(n)]`
-/

namespace A172015.P3820198840979641375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172015.P3820198840979641375

/-! ## A172015.P2070732349034012813

`∪[A121762(n+1)+2, A121762(n+1)]`
-/

namespace A172015.P2070732349034012813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A172015.P2070732349034012813

/-! ## A172015.P5045174556082156541

`eq[A000203(A007917(n+2)), A061800(n)]`
-/

namespace A172015.P5045174556082156541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007917 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172015.P5045174556082156541

/-! ## A172015.P992034748379520600

`eq[A000203(A136548(n+3)), A061800(n)]`
-/

namespace A172015.P992034748379520600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A136548 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172015.P992034748379520600

/-! ## A172015.P9894251614957844364

`eq[A063202(A013635(n+3)), A063213(n+1)]`
-/

namespace A172015.P9894251614957844364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063202 (A013635 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063213 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172015.P9894251614957844364

/-!
# A172016: Numbers of the form 6*k-+1 such that 6*k-1=nonprime and 6*k+1=prime.

The programs for A172016, the canonical program `A172016.P3154640750281185273` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172016 has offset 1).

The definition of A172016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172016.P3154640750281185273

`∪[A121764(n+1)-2, A121764(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A172016

/-- `∪[A121764(n+1)-2, A121764(n+1)]` -/
def P3154640750281185273.Spec : Prop :=
  ∀ n, (P3154640750281185273.a n : ℤ) = A172016 (n + 1)

theorem P3154640750281185273.correct : P3154640750281185273.Spec := by
  intro n
  simp only [A172016, Nat.add_sub_cancel]

end A172016

/-! ## A172016.P17605525434840327970

`eq[A030118(n), A151800(A065170(n+1)+1)]`
-/

namespace A172016.P17605525434840327970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030118 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A065170 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172016.P17605525434840327970

namespace A172016

/-- `eq[A030118(n), A151800(A065170(n+1)+1)]` -/
def P17605525434840327970.Spec : Prop :=
  ∀ n, (P17605525434840327970.a n : ℤ) = A172016 (n + 1)

end A172016

/-! ## A172016.P12094283216142477248

`∪[A121764(n+1), A049820(A121764(n+1))]`
-/

namespace A172016.P12094283216142477248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A121764 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A172016.P12094283216142477248

namespace A172016

/-- `∪[A121764(n+1), A049820(A121764(n+1))]` -/
def P12094283216142477248.Spec : Prop :=
  ∀ n, (P12094283216142477248.a n : ℤ) = A172016 (n + 1)

end A172016

/-! ## A172016.P2485073106104080017

`eq[A113520(n+1)+A113520(n+3), A113520(2*n+1)]`
-/

namespace A172016.P2485073106104080017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (n + 1) + A113520 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172016.P2485073106104080017

namespace A172016

/-- `eq[A113520(n+1)+A113520(n+3), A113520(2*n+1)]` -/
def P2485073106104080017.Spec : Prop :=
  ∀ n, (P2485073106104080017.a n : ℤ) = A172016 (n + 1)

end A172016

/-!
# A172017: Twin semiprimes: nonprimes of the form 6*k-+1 where 6*k-+1 are both semiprime.

The programs for A172017, there is no canonical definition to state claims against.
-/

/-! ## A172017.P9780609773063158950

`A171697(A061497(n+2)%A171697(n+2))`
-/

namespace A172017.P9780609773063158950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171697 (Int.tmod (A061497 (n + 2)) (A171697 (n + 2))).toNat

end

end A172017.P9780609773063158950

/-! ## A172017.P18102007709862897732

`A171697(A043316(n+2))`
-/

namespace A172017.P18102007709862897732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171697 (A043316 (n + 2)).toNat

end

end A172017.P18102007709862897732

/-! ## A172017.P17650011262941454710

`A171697(A044913(n+2))`
-/

namespace A172017.P17650011262941454710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171697 (A044913 (n + 2)).toNat

end

end A172017.P17650011262941454710

/-! ## A172017.P8073209719360933408

`A171697(A051022(n)+2)`
-/

namespace A172017.P8073209719360933408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171697 (A051022 n + 2).toNat

end

end A172017.P8073209719360933408

/-! ## A172017.P6199510515564344861

`A171697(A061147(n+2))`
-/

namespace A172017.P6199510515564344861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171697 (A061147 (n + 2)).toNat

end

end A172017.P6199510515564344861

/-!
# A172018: a(n) = A142458(2*n-1, n)/n.

The programs for A172018, there is no canonical definition to state claims against.
-/

/-! ## A172018.P3525401372553577252

`A154425(2*n+1)/(n+1)`
-/

namespace A172018.P3525401372553577252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154425 (2 * n + 1) : ℚ) / (n + 1 : ℚ)

end

end A172018.P3525401372553577252

/-! ## A172018.P3806069641654343267

`A142458(∑[4*n]+1)/(n+1)`
-/

namespace A172018.P3806069641654343267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142458 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / (n + 1 : ℚ)

end

end A172018.P3806069641654343267

/-! ## A172018.P17611045783007248357

`(n+1)^A008683(A020483(n))*A154425(2*n+1)`
-/

namespace A172018.P17611045783007248357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A154425 (2 * n + 1) : ℚ)

end

end A172018.P17611045783007248357

/-!
# A172019: Numbers k such that 4 divides phi(k) (i.e., A000010(k)).

The programs for A172019, the canonical program `A172019.P16950728949524570251` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172019 has offset 1).

The definition of A172019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172019.P16233159254712632192

`lt[A000010(n+1)%4, 1]+1`
-/

namespace A172019.P16233159254712632192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A172019.P16233159254712632192

namespace A172019

/-- `lt[A000010(n+1)%4, 1]+1` -/
def P16233159254712632192.Spec : Prop :=
  ∀ n, (P16233159254712632192.a n : ℤ) = A172019 (n + 1)

end A172019

/-! ## A172019.P18413355496232846083

`eq[4, gcd(4, A000010(n+2))]+2`
-/

namespace A172019.P18413355496232846083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A000010 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A172019.P18413355496232846083

namespace A172019

/-- `eq[4, gcd(4, A000010(n+2))]+2` -/
def P18413355496232846083.Spec : Prop :=
  ∀ n, (P18413355496232846083.a n : ℤ) = A172019 (n + 1)

end A172019

/-! ## A172019.P14033826528010512868

`eq[0, A010873(A000010(n+1))]+1`
-/

namespace A172019.P14033826528010512868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A172019.P14033826528010512868

namespace A172019

/-- `eq[0, A010873(A000010(n+1))]+1` -/
def P14033826528010512868.Spec : Prop :=
  ∀ n, (P14033826528010512868.a n : ℤ) = A172019 (n + 1)

end A172019

/-! ## A172019.P4150066659493462607

`∪[A004431(n+1), A033949(n+1)]`
-/

namespace A172019.P4150066659493462607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A172019.P4150066659493462607

namespace A172019

/-- `∪[A004431(n+1), A033949(n+1)]` -/
def P4150066659493462607.Spec : Prop :=
  ∀ n, (P4150066659493462607.a n : ℤ) = A172019 (n + 1)

end A172019

/-! ## A172019.P16787142111776385017

`∪[A009003(n+1), A033949(n+1)]`
-/

namespace A172019.P16787142111776385017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A172019.P16787142111776385017

namespace A172019

/-- `∪[A009003(n+1), A033949(n+1)]` -/
def P16787142111776385017.Spec : Prop :=
  ∀ n, (P16787142111776385017.a n : ℤ) = A172019 (n + 1)

end A172019

/-! ## A172019.P16950728949524570251

`∪[A033949(n+1), A071821(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A172019

/-- `∪[A033949(n+1), A071821(n+1)]` -/
def P16950728949524570251.Spec : Prop :=
  ∀ n, (P16950728949524570251.a n : ℤ) = A172019 (n + 1)

theorem P16950728949524570251.correct : P16950728949524570251.Spec := by
  intro n
  simp only [A172019, Nat.add_sub_cancel]

end A172019

/-! ## A172019.P17441764033975351224

`∪[A033949(n+1), A073503(n+1)]`
-/

namespace A172019.P17441764033975351224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A172019.P17441764033975351224

namespace A172019

/-- `∪[A033949(n+1), A073503(n+1)]` -/
def P17441764033975351224.Spec : Prop :=
  ∀ n, (P17441764033975351224.a n : ℤ) = A172019 (n + 1)

end A172019

/-! ## A172019.P9033855659084120384

`∪[A033949(n+1), A221265(n+1)]`
-/

namespace A172019.P9033855659084120384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A172019.P9033855659084120384

namespace A172019

/-- `∪[A033949(n+1), A221265(n+1)]` -/
def P9033855659084120384.Spec : Prop :=
  ∀ n, (P9033855659084120384.a n : ℤ) = A172019 (n + 1)

end A172019

/-! ## A172019.P2685157969703480686

`∪[A033949(n+1), A268379(n+1)]`
-/

namespace A172019.P2685157969703480686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A172019.P2685157969703480686

namespace A172019

/-- `∪[A033949(n+1), A268379(n+1)]` -/
def P2685157969703480686.Spec : Prop :=
  ∀ n, (P2685157969703480686.a n : ℤ) = A172019 (n + 1)

end A172019

/-! ## A172019.P3326092914568068802

`∪[A033949(n+1), A389199(n+1)]`
-/

namespace A172019.P3326092914568068802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A172019.P3326092914568068802

namespace A172019

/-- `∪[A033949(n+1), A389199(n+1)]` -/
def P3326092914568068802.Spec : Prop :=
  ∀ n, (P3326092914568068802.a n : ℤ) = A172019 (n + 1)

end A172019

/-! ## A172019.P5936049600382614415

`comp[lt[A121358(A000010(n+1)+1), 3]]+1`
-/

namespace A172019.P5936049600382614415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121358 (A000010 (n + 1) + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A172019.P5936049600382614415

namespace A172019

/-- `comp[lt[A121358(A000010(n+1)+1), 3]]+1` -/
def P5936049600382614415.Spec : Prop :=
  ∀ n, (P5936049600382614415.a n : ℤ) = A172019 (n + 1)

end A172019

/-! ## A172019.P6576814731817316815

`eq[2, A001222(and(3, -(A000010(n+1)+1))+1)]+1`
-/

namespace A172019.P6576814731817316815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land 3 (-(A000010 (n + 1) + 1)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A172019.P6576814731817316815

namespace A172019

/-- `eq[2, A001222(and(3, -(A000010(n+1)+1))+1)]+1` -/
def P6576814731817316815.Spec : Prop :=
  ∀ n, (P6576814731817316815.a n : ℤ) = A172019 (n + 1)

end A172019

/-! ## A172019.P11346404779746248864

`lt[A347634(A000010(abs(1-n)+1)), n]`
-/

namespace A172019.P11346404779746248864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347634 (A000010 (|1 - (n : ℤ)| + 1).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A172019.P11346404779746248864

namespace A172019

/-- `lt[A347634(A000010(abs(1-n)+1)), n]` -/
def P11346404779746248864.Spec : Prop :=
  ∀ n, (P11346404779746248864.a n : ℤ) = A172019 (n + 1)

end A172019

/-! ## A172019.P8541146553163314755

`eq[1, A209615(A000010(n+1)+1)]+1`
-/

namespace A172019.P8541146553163314755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A172019.P8541146553163314755

namespace A172019

/-- `eq[1, A209615(A000010(n+1)+1)]+1` -/
def P8541146553163314755.Spec : Prop :=
  ∀ n, (P8541146553163314755.a n : ℤ) = A172019 (n + 1)

end A172019

/-! ## A172019.P3745379752575316726

`eq[2, gcd(2, A023022(n+2))]+2`
-/

namespace A172019.P3745379752575316726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A023022 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A172019.P3745379752575316726

namespace A172019

/-- `eq[2, gcd(2, A023022(n+2))]+2` -/
def P3745379752575316726.Spec : Prop :=
  ∀ n, (P3745379752575316726.a n : ℤ) = A172019 (n + 1)

end A172019

/-! ## A172019.P14791329971833245512

`lt[1, A053574(n+1)]+1`
-/

namespace A172019.P14791329971833245512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053574 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A172019.P14791329971833245512

namespace A172019

/-- `lt[1, A053574(n+1)]+1` -/
def P14791329971833245512.Spec : Prop :=
  ∀ n, (P14791329971833245512.a n : ℤ) = A172019 (n + 1)

end A172019

/-! ## A172019.P11451071049399145792

`lt[2, A069177(n+1)]+1`
-/

namespace A172019.P11451071049399145792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069177 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A172019.P11451071049399145792

namespace A172019

/-- `lt[2, A069177(n+1)]+1` -/
def P11451071049399145792.Spec : Prop :=
  ∀ n, (P11451071049399145792.a n : ℤ) = A172019 (n + 1)

end A172019

/-! ## A172019.P2435384766148637128

`lt[2, A073103(n+1)]+1`
-/

namespace A172019.P2435384766148637128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A172019.P2435384766148637128

namespace A172019

/-- `lt[2, A073103(n+1)]+1` -/
def P2435384766148637128.Spec : Prop :=
  ∀ n, (P2435384766148637128.a n : ℤ) = A172019 (n + 1)

end A172019

/-! ## A172019.P8438329186364976908

`lt[2, A247257(n+1)]+1`
-/

namespace A172019.P8438329186364976908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247257 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A172019.P8438329186364976908

namespace A172019

/-- `lt[2, A247257(n+1)]+1` -/
def P8438329186364976908.Spec : Prop :=
  ∀ n, (P8438329186364976908.a n : ℤ) = A172019 (n + 1)

end A172019

/-! ## A172019.P6370629618969600440

`lt[1, val(A109606(n+1)+1, 2)]+1`
-/

namespace A172019.P6370629618969600440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A109606 (n + 1) + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A172019.P6370629618969600440

namespace A172019

/-- `lt[1, val(A109606(n+1)+1, 2)]+1` -/
def P6370629618969600440.Spec : Prop :=
  ∀ n, (P6370629618969600440.a n : ℤ) = A172019 (n + 1)

end A172019

/-!
# A172020: Number of subsets S of {1,2,3,...,n} with the property that if x is a member of S then at least one of x-2 and x+2 is also a member of S.

The programs for A172020, there is no canonical definition to state claims against.
-/

/-! ## A172020.P2835375216291543422

`A000267(A378383(n+1))`
-/

namespace A172020.P2835375216291543422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A378383 (n + 1)).toNat

end

end A172020.P2835375216291543422

/-! ## A172020.P5583068754941927794

`A005041(A318902(n+6))`
-/

namespace A172020.P5583068754941927794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A318902 (n + 6)).toNat

end

end A172020.P5583068754941927794

/-! ## A172020.P1032194472265230664

`A003056(A028493(n))+n-4`
-/

namespace A172020.P1032194472265230664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A028493 n).toNat + ((n : ℤ) - 4)

end

end A172020.P1032194472265230664

/-! ## A172020.P14971953904469659024

`∏{e}[A182752(n+2), A182746(#)]`
-/

namespace A172020.P14971953904469659024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182752 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A182746 (Nat.factorization (f1 n).natAbs p)

end

end A172020.P14971953904469659024

/-! ## A172020.P4655010496124019344

`A130520(n)+A003056(A007051(n))`
-/

namespace A172020.P4655010496124019344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 n + A003056 (A007051 n).toNat

end

end A172020.P4655010496124019344

/-!
# A172021: Start with the triangle A171661, reverse its rows, add missing powers of 2 at beginning of each row.

The programs for A172021, there is no canonical definition to state claims against.
-/

/-! ## A172021.P14643209931780716062

`A368175(A007606(n+1))`
-/

namespace A172021.P14643209931780716062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368175 (A007606 (n + 1)).toNat

end

end A172021.P14643209931780716062

/-! ## A172021.P9890287726768374998

`A097853(A079511(n+2)-A079531(n+1))`
-/

namespace A172021.P9890287726768374998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (A079511 (n + 2) - A079531 (n + 1)).toNat

end

end A172021.P9890287726768374998

/-!
# A172022: a(n) = prime(n) + (-1)^n.

The programs for A172022, the canonical program `A172022.P2113971824774684846` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172022 has offset 1).

The definition of A172022 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)+(-1)^(n+1)` (program `A172022.P2113971824774684846`, by `A172022.P2113971824774684846.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172022.P2113971824774684846

`A000040(n+1)+(-1)^(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A172022

/-- `A000040(n+1)+(-1)^(n+1)` -/
def P2113971824774684846.Spec : Prop :=
  ∀ n, P2113971824774684846.a n = A172022 (n + 1)

theorem P2113971824774684846.correct : P2113971824774684846.Spec := by
  intro n
  simp only [A172022, Nat.add_sub_cancel]

end A172022

/-! ## A172022.P12274106533362803965

`abs(A273960(n+1)+1)`
-/

namespace A172022.P12274106533362803965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A273960 (n + 1) + 1|

end

end A172022.P12274106533362803965

namespace A172022

/-- `abs(A273960(n+1)+1)` -/
def P12274106533362803965.Spec : Prop :=
  ∀ n, P12274106533362803965.a n = A172022 (n + 1)

end A172022

/-! ## A172022.P14136334611001558006

`Δ[A007504(n)+gcd(2, n)]`
-/

namespace A172022.P14136334611001558006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n + (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172022.P14136334611001558006

namespace A172022

/-- `Δ[A007504(n)+gcd(2, n)]` -/
def P14136334611001558006.Spec : Prop :=
  ∀ n, P14136334611001558006.a n = A172022 (n + 1)

end A172022

/-! ## A172022.P17233119009471851656

`A095116(n+1)-xor(1, n)`
-/

namespace A172022.P17233119009471851656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) - (Nat.xor 1 n : ℤ)

end

end A172022.P17233119009471851656

namespace A172022

/-- `A095116(n+1)-xor(1, n)` -/
def P17233119009471851656.Spec : Prop :=
  ∀ n, P17233119009471851656.a n = A172022 (n + 1)

end A172022

/-! ## A172022.P7256603764682289421

`A001043(n)-a(n-1)` with `a(0)=1`
-/

namespace A172022.P7256603764682289421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001043 n - a (n - 1)

end

end A172022.P7256603764682289421

namespace A172022

/-- `A001043(n)-a(n-1)` -/
def P7256603764682289421.Spec : Prop :=
  ∀ n, P7256603764682289421.a n = A172022 (n + 1)

end A172022

/-! ## A172022.P14645117734930070798

`abs(Δ[A022837(n)])-(-1)^n`
-/

namespace A172022.P14645117734930070798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - (-1) ^ n

end

end A172022.P14645117734930070798

namespace A172022

/-- `abs(Δ[A022837(n)])-(-1)^n` -/
def P14645117734930070798.Spec : Prop :=
  ∀ n, P14645117734930070798.a n = A172022 (n + 1)

end A172022

/-! ## A172022.P12401777999609934051

`A006093(n+1)+Δ[or(1, n)]`
-/

namespace A172022.P12401777999609934051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A172022.P12401777999609934051

namespace A172022

/-- `A006093(n+1)+Δ[or(1, n)]` -/
def P12401777999609934051.Spec : Prop :=
  ∀ n, P12401777999609934051.a n = A172022 (n + 1)

end A172022

/-! ## A172022.P17851805882626262836

`A011974(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A172022.P17851805882626262836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011974 (n + 1) - a (n - 1)

end

end A172022.P17851805882626262836

namespace A172022

/-- `A011974(n+1)-a(n-1)` -/
def P17851805882626262836.Spec : Prop :=
  ∀ n, P17851805882626262836.a n = A172022 (n + 1)

end A172022

/-! ## A172022.P11179365321021264918

`Δ[A007504(n)]-A033999(n)`
-/

namespace A172022.P11179365321021264918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A033999 n

end

end A172022.P11179365321021264918

namespace A172022

/-- `Δ[A007504(n)]-A033999(n)` -/
def P11179365321021264918.Spec : Prop :=
  ∀ n, P11179365321021264918.a n = A172022 (n + 1)

end A172022

/-! ## A172022.P9356652170562763939

`A010673(n)+A006093(n+1)`
-/

namespace A172022.P9356652170562763939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n + A006093 (n + 1)

end

end A172022.P9356652170562763939

namespace A172022

/-- `A010673(n)+A006093(n+1)` -/
def P9356652170562763939.Spec : Prop :=
  ∀ n, P9356652170562763939.a n = A172022 (n + 1)

end A172022

/-! ## A172022.P8311145306586982034

`A040976(n+1)+A010684(n)`
-/

namespace A172022.P8311145306586982034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + A010684 n

end

end A172022.P8311145306586982034

namespace A172022

/-- `A040976(n+1)+A010684(n)` -/
def P8311145306586982034.Spec : Prop :=
  ∀ n, P8311145306586982034.a n = A172022 (n + 1)

end A172022

/-! ## A172022.P7985663702643000045

`A062157(n)+A006005(n+1)`
-/

namespace A172022.P7985663702643000045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n + A006005 (n + 1)

end

end A172022.P7985663702643000045

namespace A172022

/-- `A062157(n)+A006005(n+1)` -/
def P7985663702643000045.Spec : Prop :=
  ∀ n, P7985663702643000045.a n = A172022 (n + 1)

theorem P7985663702643000045.correct : P7985663702643000045.Spec := by
  intro n
  simp only [A172022, Nat.add_sub_cancel, A172022.P7985663702643000045.a, A172022.P2113971824774684846.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006005, A006005.P1228063357782503489.a, A062157, A062157.P13834877263571195293.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A172022

/-! ## A172022.P4496685442086492377

`A086801(n+1)+A010694(n)`
-/

namespace A172022.P4496685442086492377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + A010694 n

end

end A172022.P4496685442086492377

namespace A172022

/-- `A086801(n+1)+A010694(n)` -/
def P4496685442086492377.Spec : Prop :=
  ∀ n, P4496685442086492377.a n = A172022 (n + 1)

end A172022

/-! ## A172022.P1059997505764940507

`A083236(n+1)+A036467(n)`
-/

namespace A172022.P1059997505764940507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083236 (n + 1) + A036467 n

end

end A172022.P1059997505764940507

namespace A172022

/-- `A083236(n+1)+A036467(n)` -/
def P1059997505764940507.Spec : Prop :=
  ∀ n, P1059997505764940507.a n = A172022 (n + 1)

end A172022

/-! ## A172022.P888865478962700958

`A176624(n+1)+A038608(n)`
-/

namespace A172022.P888865478962700958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176624 (n + 1) + A038608 n

end

end A172022.P888865478962700958

namespace A172022

/-- `A176624(n+1)+A038608(n)` -/
def P888865478962700958.Spec : Prop :=
  ∀ n, P888865478962700958.a n = A172022 (n + 1)

theorem P888865478962700958.correct : P888865478962700958.Spec := by
  intro n
  simp only [A172022, Nat.add_sub_cancel, A172022.P888865478962700958.a, A172022.P2113971824774684846.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A038608, A038608.P11893247063823867553.a, A176624, A176624.P11210976316289419648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A172022

/-! ## A172022.P17899701014384511542

`A095116(n+1)-A004442(n)`
-/

namespace A172022.P17899701014384511542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) - A004442 n

end

end A172022.P17899701014384511542

namespace A172022

/-- `A095116(n+1)-A004442(n)` -/
def P17899701014384511542.Spec : Prop :=
  ∀ n, P17899701014384511542.a n = A172022 (n + 1)

theorem P17899701014384511542.correct : P17899701014384511542.Spec := by
  intro n
  simp only [A172022, Nat.add_sub_cancel, A172022.P17899701014384511542.a, A172022.P2113971824774684846.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A004442, A004442.P2439415777187857398.a, A095116, A095116.P2789422422958858773.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A172022

/-! ## A172022.P1663399609995793246

`A014692(n+1)-A114285(n)`
-/

namespace A172022.P1663399609995793246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) - A114285 n

end

end A172022.P1663399609995793246

namespace A172022

/-- `A014692(n+1)-A114285(n)` -/
def P1663399609995793246.Spec : Prop :=
  ∀ n, P1663399609995793246.a n = A172022 (n + 1)

end A172022

/-! ## A172022.P4437271820014967701

`A113935(n+1)-A105397(n)`
-/

namespace A172022.P4437271820014967701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) - A105397 n

end

end A172022.P4437271820014967701

namespace A172022

/-- `A113935(n+1)-A105397(n)` -/
def P4437271820014967701.Spec : Prop :=
  ∀ n, P4437271820014967701.a n = A172022 (n + 1)

theorem P4437271820014967701.correct : P4437271820014967701.Spec := by
  intro n
  simp only [A172022, Nat.add_sub_cancel, A172022.P4437271820014967701.a, A172022.P2113971824774684846.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A105397, A105397.P12786109591907576801.a, A113935, A113935.P8490065931569907193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A172022

/-! ## A172022.P13184817716254661678

`A052147(n+1)-A176040(n)`
-/

namespace A172022.P13184817716254661678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - A176040 n

end

end A172022.P13184817716254661678

namespace A172022

/-- `A052147(n+1)-A176040(n)` -/
def P13184817716254661678.Spec : Prop :=
  ∀ n, P13184817716254661678.a n = A172022 (n + 1)

end A172022

/-! ## A172022.P11337888712797167818

`A176624(n+1)-A181983(n)`
-/

namespace A172022.P11337888712797167818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176624 (n + 1) - A181983 n

end

end A172022.P11337888712797167818

namespace A172022

/-- `A176624(n+1)-A181983(n)` -/
def P11337888712797167818.Spec : Prop :=
  ∀ n, P11337888712797167818.a n = A172022 (n + 1)

theorem P11337888712797167818.correct : P11337888712797167818.Spec := by
  intro n
  simp only [A172022, Nat.add_sub_cancel, A172022.P11337888712797167818.a, A172022.P2113971824774684846.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A176624, A176624.P11210976316289419648.a, A181983, A181983.P3699358180015306672.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A172022

/-!
# A172023: Number of Sona graphs.

The programs for A172023, there is no canonical definition to state claims against.
-/

/-! ## A172023.P5367501787690831011

`A220413(A151460(n))`
-/

namespace A172023.P5367501787690831011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220413 (A151460 n).toNat

end

end A172023.P5367501787690831011

/-! ## A172023.P1008115861548059628

`A325393(Δ[A299027(n+1)])`
-/

namespace A172023.P1008115861548059628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325393 (f1 (n + 1) - f1 n).toNat

end

end A172023.P1008115861548059628

/-! ## A172023.P8237994904119819560

`abs(A128664(record[A324644(n+1)]))`
-/

namespace A172023.P8237994904119819560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128664 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A172023.P8237994904119819560

/-! ## A172023.P7233925942299353961

`A026834(A071969(n))+char[∑[n+1]+2]`
-/

namespace A172023.P7233925942299353961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A071969 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A172023.P7233925942299353961

/-!
# A172025: Expansion of (2/(3*sqrt(1-4*z)-1+4*z))*((1-sqrt(1-4*z))/(2*z))^k with k=3.

The programs for A172025, the canonical program `A172025.P3610616556556391778` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172025 has offset 0).

The definition of A172025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172025.P11694110163573975077

`A072547(n+3)-A104629(n)`
-/

namespace A172025.P11694110163573975077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072547 (n + 3) - A104629 n

end

end A172025.P11694110163573975077

namespace A172025

/-- `A072547(n+3)-A104629(n)` -/
def P11694110163573975077.Spec : Prop :=
  ∀ n, P11694110163573975077.a n = A172025 n

end A172025

/-! ## A172025.P3610616556556391778

`A014300(n+2)-A000958(n+2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A172025

/-- `A014300(n+2)-A000958(n+2)` -/
def P3610616556556391778.Spec : Prop :=
  ∀ n, P3610616556556391778.a n = A172025 n

theorem P3610616556556391778.correct : P3610616556556391778.Spec := by
  intro n
  simp only [A172025]

end A172025

/-! ## A172025.P397016409174715924

`A072547(n+3)-A000957(n+3)`
-/

namespace A172025.P397016409174715924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072547 (n + 3) - A000957 (n + 3)

end

end A172025.P397016409174715924

namespace A172025

/-- `A072547(n+3)-A000957(n+3)` -/
def P397016409174715924.Spec : Prop :=
  ∀ n, P397016409174715924.a n = A172025 n

end A172025

/-! ## A172025.P16089335755369677527

`A109078(2*n+3)-A000957(n+3)`
-/

namespace A172025.P16089335755369677527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109078 (2 * n + 3) - A000957 (n + 3)

end

end A172025.P16089335755369677527

namespace A172025

/-- `A109078(2*n+3)-A000957(n+3)` -/
def P16089335755369677527.Spec : Prop :=
  ∀ n, P16089335755369677527.a n = A172025 n

end A172025

/-! ## A172025.P4873884325361666257

`A191526(A004273(n+2))-A000958(n+2)`
-/

namespace A172025.P4873884325361666257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191526 (A004273 (n + 2)).toNat - A000958 (n + 2)

end

end A172025.P4873884325361666257

namespace A172025

/-- `A191526(A004273(n+2))-A000958(n+2)` -/
def P4873884325361666257.Spec : Prop :=
  ∀ n, P4873884325361666257.a n = A172025 n

end A172025

/-! ## A172025.P738650582219860517

`A014300(n+3)-A000984(n+2)`
-/

namespace A172025.P738650582219860517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014300 (n + 3) - A000984 (n + 2)

end

end A172025.P738650582219860517

namespace A172025

/-- `A014300(n+3)-A000984(n+2)` -/
def P738650582219860517.Spec : Prop :=
  ∀ n, P738650582219860517.a n = A172025 n

end A172025

/-! ## A172025.P6966052049808092980

`A001791(n+2)-A014301(n+3)`
-/

namespace A172025.P6966052049808092980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 2) - A014301 (n + 3)

end

end A172025.P6966052049808092980

namespace A172025

/-- `A001791(n+2)-A014301(n+3)` -/
def P6966052049808092980.Spec : Prop :=
  ∀ n, P6966052049808092980.a n = A172025 n

end A172025

/-! ## A172025.P17154214299778532847

`A014301(n+3)-A014300(n+2)`
-/

namespace A172025.P17154214299778532847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014301 (n + 3) - A014300 (n + 2)

end

end A172025.P17154214299778532847

namespace A172025

/-- `A014301(n+3)-A014300(n+2)` -/
def P17154214299778532847.Spec : Prop :=
  ∀ n, P17154214299778532847.a n = A172025 n

end A172025

/-! ## A172025.P1443984603719826377

`A014300(n+3)%A001700(n+1)`
-/

namespace A172025.P1443984603719826377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014300 (n + 3)) (A001700 (n + 1))

end

end A172025.P1443984603719826377

namespace A172025

/-- `A014300(n+3)%A001700(n+1)` -/
def P1443984603719826377.Spec : Prop :=
  ∀ n, P1443984603719826377.a n = A172025 n

end A172025

/-! ## A172025.P12073033149169062329

`Δ[A014301(n+2)-∑[A191526(2*n)]]`
-/

namespace A172025.P12073033149169062329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191526 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014301 (n + 2) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172025.P12073033149169062329

namespace A172025

/-- `Δ[A014301(n+2)-∑[A191526(2*n)]]` -/
def P12073033149169062329.Spec : Prop :=
  ∀ n, P12073033149169062329.a n = A172025 n

end A172025

/-! ## A172025.P1938302126478336716

`A109244(A167614(n+2))`
-/

namespace A172025.P1938302126478336716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 (A167614 (n + 2)).toNat

end

end A172025.P1938302126478336716

namespace A172025

/-- `A109244(A167614(n+2))` -/
def P1938302126478336716.Spec : Prop :=
  ∀ n, P1938302126478336716.a n = A172025 n

end A172025

/-!
# A172026: Riordan array (f(x^2), x*f(x^2)) where f(x) is the g.f. of A001764.

The programs for A172026, there is no canonical definition to state claims against.
-/

/-! ## A172026.P9117519147414355197

`A124305(comp[∑[n]])`
-/

namespace A172026.P9117519147414355197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124305 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A172026.P9117519147414355197

/-! ## A172026.P12390481951530353653

`or(char[2], A124305(A014132(n+1)))`
-/

namespace A172026.P12390481951530353653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A124305 (A014132 (n + 1)).toNat)

end

end A172026.P12390481951530353653

/-! ## A172026.P6722744391617429610

`A004525(2*A124305(A014132(n+1)))`
-/

namespace A172026.P6722744391617429610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A124305 (A014132 (n + 1)).toNat).toNat

end

end A172026.P6722744391617429610

/-! ## A172026.P9096702369326748237

`A124305(A014132(n+1))%A000032(n)`
-/

namespace A172026.P9096702369326748237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124305 (A014132 (n + 1)).toNat) (A000032 n)

end

end A172026.P9096702369326748237

/-! ## A172026.P2000771793374804504

`gcd(A000038(n), A124305(A014132(n+1)))`
-/

namespace A172026.P2000771793374804504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A124305 (A014132 (n + 1)).toNat)

end

end A172026.P2000771793374804504

/-! ## A172026.P12420745437127134208

`lcm(A020985(n), A124305(A014132(n+1)))`
-/

namespace A172026.P12420745437127134208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A124305 (A014132 (n + 1)).toNat)

end

end A172026.P12420745437127134208

/-! ## A172026.P18300827681600251149

`A007318(∑[n])*A124305(A014132(n+1))`
-/

namespace A172026.P18300827681600251149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A124305 (A014132 (n + 1)).toNat

end

end A172026.P18300827681600251149

/-! ## A172026.P458210891504399282

`A124305(A014132(n+1))^A014963(2*(n+2))`
-/

namespace A172026.P458210891504399282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124305 (A014132 (n + 1)).toNat : ℚ) ^ (A014963 (2 * (n + 2)) : ℤ)

end

end A172026.P458210891504399282

/-! ## A172026.P6156752313601002746

`A000045(((-1)^n)²)*A124305(A014132(n+1))`
-/

namespace A172026.P6156752313601002746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((-1) ^ n) ^ 2).toNat * A124305 (A014132 (n + 1)).toNat

end

end A172026.P6156752313601002746

/-!
# A172027: a(1) = 1; for n > 1, a(n) = smallest k such that a(n-1)^3 + k is a cube.

The programs for A172027, the canonical program `A172027.P1772734167044970462` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172027 has offset 1).

The definition of A172027 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172027.P1772734167044970462

`1+3*a(n-1)*(a(n-1)+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172027

/-- `1+3*a(n-1)*(a(n-1)+1)` -/
def P1772734167044970462.Spec : Prop :=
  ∀ n, (P1772734167044970462.a n : ℤ) = A172027 (n + 1)

theorem P1772734167044970462.correct : P1772734167044970462.Spec := by
  intro n
  simp only [A172027, Nat.add_sub_cancel]

end A172027

/-! ## A172027.P12160404226708645562

`6*C(a(n-1)+1, 2)+1` with `a(0)=1`
-/

namespace A172027.P12160404226708645562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 * Nat.choose (a (n - 1) + 1) 2 + 1

end

end A172027.P12160404226708645562

namespace A172027

/-- `6*C(a(n-1)+1, 2)+1` -/
def P12160404226708645562.Spec : Prop :=
  ∀ n, (P12160404226708645562.a n : ℤ) = A172027 (n + 1)

end A172027

/-! ## A172027.P3546920620049788854

`3*(a(n-1)+a(n-1)²)+1` with `a(0)=1`
-/

namespace A172027.P3546920620049788854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * (a (n - 1) + a (n - 1) ^ 2) + 1

end

end A172027.P3546920620049788854

namespace A172027

/-- `3*(a(n-1)+a(n-1)²)+1` -/
def P3546920620049788854.Spec : Prop :=
  ∀ n, (P3546920620049788854.a n : ℤ) = A172027 (n + 1)

theorem P3546920620049788854.correct : P3546920620049788854.Spec := by
  intro n
  simp only [A172027, Nat.add_sub_cancel, A172027.P3546920620049788854.a, A172027.P1772734167044970462.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A172027

/-!
# A172028: a(1) = 2; for n > 1, a(n) = smallest k such that a(n-1)^3+k is a cube.

The programs for A172028, the canonical program `A172028.P17770867790812545507` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172028 has offset 1).

The definition of A172028 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172028.P17770867790812545507

`1+3*a(n-1)*(1+a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172028

/-- `1+3*a(n-1)*(1+a(n-1))` -/
def P17770867790812545507.Spec : Prop :=
  ∀ n, (P17770867790812545507.a n : ℤ) = A172028 (n + 1)

theorem P17770867790812545507.correct : P17770867790812545507.Spec := by
  intro n
  simp only [A172028, Nat.add_sub_cancel]

end A172028

/-! ## A172028.P7238641867907096362

`6*C(a(n-1)+1, 2)+1` with `a(0)=2`
-/

namespace A172028.P7238641867907096362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  6 * Nat.choose (a (n - 1) + 1) 2 + 1

end

end A172028.P7238641867907096362

namespace A172028

/-- `6*C(a(n-1)+1, 2)+1` -/
def P7238641867907096362.Spec : Prop :=
  ∀ n, (P7238641867907096362.a n : ℤ) = A172028 (n + 1)

end A172028

/-! ## A172028.P9342353783241709192

`3*(a(n-1)+a(n-1)²)+1` with `a(0)=2`
-/

namespace A172028.P9342353783241709192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  3 * (a (n - 1) + a (n - 1) ^ 2) + 1

end

end A172028.P9342353783241709192

namespace A172028

/-- `3*(a(n-1)+a(n-1)²)+1` -/
def P9342353783241709192.Spec : Prop :=
  ∀ n, (P9342353783241709192.a n : ℤ) = A172028 (n + 1)

theorem P9342353783241709192.correct : P9342353783241709192.Spec := by
  intro n
  simp only [A172028, Nat.add_sub_cancel, A172028.P9342353783241709192.a, A172028.P17770867790812545507.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A172028

/-!
# A172029: a(1) = 3; for n > 1, a(n) = smallest k such that a(n-1)^3 + k is a cube.

The programs for A172029, there is no canonical definition to state claims against.
-/

/-! ## A172029.P227123213896936837

`6*C(a(n-1)+1, 2)+1` with `a(0)=3`
-/

namespace A172029.P227123213896936837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  6 * Nat.choose (a (n - 1) + 1) 2 + 1

end

end A172029.P227123213896936837

/-! ## A172029.P8743296716018277404

`3*(a(n-1)+a(n-1)²)+1` with `a(0)=3`
-/

namespace A172029.P8743296716018277404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  3 * (a (n - 1) + a (n - 1) ^ 2) + 1

end

end A172029.P8743296716018277404

/-! ## A172029.P10269365244787403590

`3*(a(n-1)+1)*a(n-1)+1` with `a(0)=3`
-/

namespace A172029.P10269365244787403590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  3 * ((a (n - 1) + 1) * a (n - 1)) + 1

end

end A172029.P10269365244787403590

/-!
# A172030: Numerators of the sequence with g.f. x*B(x)/(1-2*x), where B(x) denotes the "original" Bernoulli numbers.

The programs for A172030, there is no canonical definition to state claims against.
-/

/-! ## A172030.P13795455787043898472

`A028141(A347578(n))%A004027(n)`
-/

namespace A172030.P13795455787043898472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028141 (A347578 n).toNat) (A004027 n)

end

end A172030.P13795455787043898472

/-! ## A172030.P16618168140054067822

`A028141(A347610(n))%A004027(n)`
-/

namespace A172030.P16618168140054067822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028141 (A347610 n).toNat) (A004027 n)

end

end A172030.P16618168140054067822

/-!
# A172031: Denominator of the fraction c(n) defined in A172030.

The programs for A172031, there is no canonical definition to state claims against.
-/

/-! ## A172031.P15145520065662141879

`A192366(round(log2(A290829(n))))`
-/

namespace A172031.P15145520065662141879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192366 (SequenceMachineLib.roundAway (Real.logb 2 (A290829 n : ℝ))).toNat

end

end A172031.P15145520065662141879

/-! ## A172031.P1620758661472120079

`A192366(A014681(n-char[1]))`
-/

namespace A172031.P1620758661472120079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192366 (A014681 (n - (if ∃ j, f1 j = n then 1 else 0))).toNat

end

end A172031.P1620758661472120079

/-! ## A172031.P8800516858151459893

`A192366(A014681(n)%(2^n))`
-/

namespace A172031.P8800516858151459893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192366 (Int.tmod (A014681 n) (2 ^ n : ℤ)).toNat

end

end A172031.P8800516858151459893

/-! ## A172031.P6130575948691606609

`A192366(A014681(n))+A159075(n)`
-/

namespace A172031.P6130575948691606609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192366 (A014681 n).toNat + A159075 n

end

end A172031.P6130575948691606609

/-! ## A172031.P15700012910012150324

`A192366(A014681(n))-A063524(n)`
-/

namespace A172031.P15700012910012150324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192366 (A014681 n).toNat - A063524 n

end

end A172031.P15700012910012150324

/-!
# A172032: Numerator of the rational sequence c(n) defined by c(n+1) - 2*c(n) = Bernoulli number B_n (A027641/A027642).

The programs for A172032, there is no canonical definition to state claims against.
-/

/-! ## A172032.P13048761973988565477

`A171975(A172030(n)+1)`
-/

namespace A172032.P13048761973988565477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171975 (A172030 n + 1).toNat

end

end A172032.P13048761973988565477

/-! ## A172032.P235503509741974943

`A317157(A039593(n+1))%A351984(n+1)`
-/

namespace A172032.P235503509741974943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317157 (A039593 (n + 1)).toNat) (A351984 (n + 1))

end

end A172032.P235503509741974943

/-!
# A172033: Number of partitions of n into distinct parts that are 1 or even, i.e., into distinct terms of A004277.

The programs for A172033, there is no canonical definition to state claims against.
-/

/-! ## A172033.P16717558606228770433

`A035457(and(n, -2))`
-/

namespace A172033.P16717558606228770433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (Int.land (n : ℤ) (-2)).toNat

end

end A172033.P16717558606228770433

/-! ## A172033.P15628972125088902787

`A000009(floor(n/2))`
-/

namespace A172033.P15628972125088902787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 ⌊(n : ℚ) / 2⌋.toNat

end

end A172033.P15628972125088902787

/-! ## A172033.P16224718286339031278

`A035457(or(1, n)-1)`
-/

namespace A172033.P16224718286339031278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (Nat.lor 1 n - 1)

end

end A172033.P16224718286339031278

/-! ## A172033.P9067916198080114749

`A035457(n-n%2)`
-/

namespace A172033.P9067916198080114749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (n - n % 2)

end

end A172033.P9067916198080114749

/-! ## A172033.P15532164356303909050

`A035457(n-and(1, n))`
-/

namespace A172033.P15532164356303909050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (n - Nat.land 1 n)

end

end A172033.P15532164356303909050

/-! ## A172033.P8985945134763712150

`abs(A081360(floor(n/2)))`
-/

namespace A172033.P8985945134763712150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 ⌊(n : ℚ) / 2⌋.toNat|

end

end A172033.P8985945134763712150

/-! ## A172033.P10520298973340139716

`A035457(xor(n, and(1, n)))`
-/

namespace A172033.P10520298973340139716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (Nat.xor n (Nat.land 1 n))

end

end A172033.P10520298973340139716

/-! ## A172033.P932328056005264237

`A035457(gcd(2, n)+n-2)`
-/

namespace A172033.P932328056005264237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 ((Nat.gcd 2 n : ℤ) + ((n : ℤ) - 2)).toNat

end

end A172033.P932328056005264237

/-! ## A172033.P17396140400300817967

`A111133(∑[char[2*n]]-1)+1`
-/

namespace A172033.P17396140400300817967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + 1

end

end A172033.P17396140400300817967

/-! ## A172033.P14481176668813996033

`A035457(A052928(n))`
-/

namespace A172033.P14481176668813996033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A052928 n).toNat

end

end A172033.P14481176668813996033

/-! ## A172033.P11895366756582131124

`A035457(A109613(n)-1)`
-/

namespace A172033.P11895366756582131124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A109613 n - 1).toNat

end

end A172033.P11895366756582131124

/-! ## A172033.P7787148928294353039

`A035457(2*A004526(n))`
-/

namespace A172033.P7787148928294353039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * A004526 n).toNat

end

end A172033.P7787148928294353039

/-! ## A172033.P3119306670770232306

`A035457(A042948(n)-n)`
-/

namespace A172033.P3119306670770232306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A042948 n - (n : ℤ)).toNat

end

end A172033.P3119306670770232306

/-! ## A172033.P17419501180930738491

`A035457(n-(1-A059841(n)))`
-/

namespace A172033.P17419501180930738491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 ((n : ℤ) - (1 - A059841 n)).toNat

end

end A172033.P17419501180930738491

/-! ## A172033.P5249542633145868822

`A035457(2*(n-A110654(n)))`
-/

namespace A172033.P5249542633145868822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * ((n : ℤ) - A110654 n)).toNat

end

end A172033.P5249542633145868822

/-! ## A172033.P16540145878950192295

`A035457(xor(1, n))+A035457(n)`
-/

namespace A172033.P16540145878950192295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (Nat.xor 1 n) + A035457 n

end

end A172033.P16540145878950192295

/-! ## A172033.P5600040953726823401

`gcd(n+1, A000040(n+1))*A000009(n-round(n/2))`
-/

namespace A172033.P5600040953726823401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A000040 (n + 1)) : ℤ) * A000009 ((n : ℤ) - SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat

end

end A172033.P5600040953726823401

/-! ## A172033.P6630980737221659939

`A035457(A004442(n))+A035457(n)`
-/

namespace A172033.P6630980737221659939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004442 n).toNat + A035457 n

end

end A172033.P6630980737221659939

/-! ## A172033.P13237648853975515853

`abs(Δ[A035457(xor(1, n))])`
-/

namespace A172033.P13237648853975515853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A172033.P13237648853975515853

/-! ## A172033.P11106373151022325562

`A035457(n-A056594(n+1)²)`
-/

namespace A172033.P11106373151022325562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 ((n : ℤ) - A056594 (n + 1) ^ 2).toNat

end

end A172033.P11106373151022325562

/-!
# A172034: Partial sums of Pillai primes (A063980).

The programs for A172034, there is no canonical definition to state claims against.
-/

/-! ## A172034.P9163540026089808652

`∑[A063980(n+1)]`
-/

namespace A172034.P9163540026089808652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172034.P9163540026089808652

/-! ## A172034.P17174331522610715269

`∑[record[A063980(A126759(n))]]`
-/

namespace A172034.P17174331522610715269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063980 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172034.P17174331522610715269

/-! ## A172034.P11278851887741948621

`∑[record[A063980(A117910(n))]]`
-/

namespace A172034.P11278851887741948621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063980 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172034.P11278851887741948621

/-! ## A172034.P6862077595691642227

`∑[record[A063980(A020986(n))]]`
-/

namespace A172034.P6862077595691642227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063980 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172034.P6862077595691642227

/-! ## A172034.P6892717797859969468

`∑[record[A063980(A112382(n))]]`
-/

namespace A172034.P6892717797859969468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063980 (A112382 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172034.P6892717797859969468

/-!
# A172036: Prime partial sums of safe primes A005385.

The programs for A172036, there is no canonical definition to state claims against.
-/

/-! ## A172036.P665789445124753502

`p?[A066869(n+1)]`
-/

namespace A172036.P665789445124753502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172036.P665789445124753502

/-! ## A172036.P11032370953112375585

`p?[∑[A005385(n+1)]]`
-/

namespace A172036.P11032370953112375585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172036.P11032370953112375585

/-! ## A172036.P9482703417357747347

`p?[∑[A079148(n+3)]]`
-/

namespace A172036.P9482703417357747347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172036.P9482703417357747347

/-! ## A172036.P8306286504876411728

`p?[∑[record[A023590(n+1)]]]`
-/

namespace A172036.P8306286504876411728
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172036.P8306286504876411728

/-! ## A172036.P9982816692618914392

`p?[∑[record[A023592(n+1)]]]`
-/

namespace A172036.P9982816692618914392
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172036.P9982816692618914392

/-!
# A172037: Prime partial sums of Sophie Germain primes A005384.

The programs for A172037, there is no canonical definition to state claims against.
-/

/-! ## A172037.P14839215752234704370

`p?[A066819(n+1)]`
-/

namespace A172037.P14839215752234704370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172037.P14839215752234704370

/-! ## A172037.P3191503515807918301

`p?[∑[A005384(n+1)]]`
-/

namespace A172037.P3191503515807918301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172037.P3191503515807918301

/-! ## A172037.P4825210626617140513

`p?[∑[p?[A005097(n+1)]]]`
-/

namespace A172037.P4825210626617140513
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172037.P4825210626617140513

/-!
# A172039: Petoukhov primes, generated by M*H*M; M = 2^n circulant matrices generated from A164281, H = all inequivalent Hadamard matrices of order 2^n.

The programs for A172039, there is no canonical definition to state claims against.
-/

/-! ## A172039.P7206845554146308974

`A000040(lt[A258803(n+1), A161328(n)])`
-/

namespace A172039.P7206845554146308974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A172039.P7206845554146308974

/-! ## A172039.P17266752015640976827

`p?[A196176(A195770(n+4))+n]`
-/

namespace A172039.P17266752015640976827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196176 (A195770 (n + 4)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172039.P17266752015640976827

/-! ## A172039.P3077793396362660176

`A000040(lt[A340694(n), A086070(n+1)])`
-/

namespace A172039.P3077793396362660176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340694 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A172039.P3077793396362660176

/-! ## A172039.P16829377434520625623

`A000040(lt[A331414(n+4), A331470(n)])`
-/

namespace A172039.P16829377434520625623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331414 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A172039.P16829377434520625623

/-!
# A172040: Triangle T(n,k), read by rows, given by [0,1,2,1,2,1,2,1,2,1,2,...] DELTA [2,0,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

The programs for A172040, there is no canonical definition to state claims against.
-/

/-! ## A172040.P4475717187988372416

`A059268(n)*A180101(A122538(n))`
-/

namespace A172040.P4475717187988372416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A180101 (A122538 n).toNat

end

end A172040.P4475717187988372416

/-! ## A172040.P4034605939293251627

`A059268(n)*A131138(A265435(n))`
-/

namespace A172040.P4034605939293251627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A131138 (A265435 n).toNat

end

end A172040.P4034605939293251627

/-! ## A172040.P13460237625015802275

`A000079(A002262(n))*A131138(A265435(n))`
-/

namespace A172040.P13460237625015802275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A131138 (A265435 n).toNat

end

end A172040.P13460237625015802275

/-!
# A172042: a(n) = A000010(A083553(n)).

The programs for A172042, the canonical program `A172042.P6434497082481578345` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172042 has offset 1).

The definition of A172042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172042.P6434497082481578345

`A000010(A083553(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A172042

/-- `A000010(A083553(n+1))` -/
def P6434497082481578345.Spec : Prop :=
  ∀ n, P6434497082481578345.a n = A172042 (n + 1)

theorem P6434497082481578345.correct : P6434497082481578345.Spec := by
  intro n
  simp only [A172042, Nat.add_sub_cancel]

end A172042

/-! ## A172042.P17733553282779037015

`A000010((A000040(n+2)-1)*(A000040(n+1)-1))`
-/

namespace A172042.P17733553282779037015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((A000040 (n + 2) - 1) * (A000040 (n + 1) - 1)).toNat

end

end A172042.P17733553282779037015

namespace A172042

/-- `A000010((A000040(n+2)-1)*(A000040(n+1)-1))` -/
def P17733553282779037015.Spec : Prop :=
  ∀ n, P17733553282779037015.a n = A172042 (n + 1)

theorem P17733553282779037015.correct : P17733553282779037015.Spec := by
  intro n
  simp only [A172042, Nat.add_sub_cancel, A172042.P17733553282779037015.a, A172042.P6434497082481578345.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A083553, A083553.P14618886648007354780.a, A003557, A003557.P6364735403900941810.a, A037165, A037165.P6513622621090832271.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A172042

/-! ## A172042.P15763961468200066268

`A000010(A083554(n+1))*A058263(n+1)`
-/

namespace A172042.P15763961468200066268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A083554 (n + 1)).toNat * A058263 (n + 1)

end

end A172042.P15763961468200066268

namespace A172042

/-- `A000010(A083554(n+1))*A058263(n+1)` -/
def P15763961468200066268.Spec : Prop :=
  ∀ n, P15763961468200066268.a n = A172042 (n + 1)

end A172042

/-! ## A172042.P16955190670023465001

`A000010(A083554(n+1))*A173751(A048852(n+1))`
-/

namespace A172042.P16955190670023465001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A083554 (n + 1)).toNat * A173751 (A048852 (n + 1)).toNat

end

end A172042.P16955190670023465001

namespace A172042

/-- `A000010(A083554(n+1))*A173751(A048852(n+1))` -/
def P16955190670023465001.Spec : Prop :=
  ∀ n, P16955190670023465001.a n = A172042 (n + 1)

end A172042

/-! ## A172042.P18230395249934273180

`A000010(A083554(n+1))*A173751(A291463(n+1))`
-/

namespace A172042.P18230395249934273180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A083554 (n + 1)).toNat * A173751 (A291463 (n + 1)).toNat

end

end A172042.P18230395249934273180

namespace A172042

/-- `A000010(A083554(n+1))*A173751(A291463(n+1))` -/
def P18230395249934273180.Spec : Prop :=
  ∀ n, P18230395249934273180.a n = A172042 (n + 1)

end A172042

/-! ## A172042.P1188118192576742761

`A083554(n+1)/A083555(n+1)*A000010(A083554(n+1))`
-/

namespace A172042.P1188118192576742761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083554 (n + 1) : ℚ) / (A083555 (n + 1) : ℚ) * (A000010 (A083554 (n + 1)).toNat : ℚ)

end

end A172042.P1188118192576742761

namespace A172042

/-- `A083554(n+1)/A083555(n+1)*A000010(A083554(n+1))` -/
def P1188118192576742761.Spec : Prop :=
  ∀ n, P1188118192576742761.a n = (A172042 (n + 1) : ℚ)

end A172042

/-! ## A172042.P17381617215178764908

`2*A000010(A099407(n+1))-A000007(n)`
-/

namespace A172042.P17381617215178764908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (A099407 (n + 1)).toNat - A000007 n

end

end A172042.P17381617215178764908

namespace A172042

/-- `2*A000010(A099407(n+1))-A000007(n)` -/
def P17381617215178764908.Spec : Prop :=
  ∀ n, P17381617215178764908.a n = A172042 (n + 1)

end A172042

/-! ## A172042.P4271983043068177978

`A000010(A099407(n+1))*A040001(2*n)`
-/

namespace A172042.P4271983043068177978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A099407 (n + 1)).toNat * A040001 (2 * n)

end

end A172042.P4271983043068177978

namespace A172042

/-- `A000010(A099407(n+1))*A040001(2*n)` -/
def P4271983043068177978.Spec : Prop :=
  ∀ n, P4271983043068177978.a n = A172042 (n + 1)

end A172042

/-! ## A172042.P6393256674975323363

`(A000040(n+1)%2+1)*A000010(A099407(n+1))`
-/

namespace A172042.P6393256674975323363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A000040 (n + 1)) 2 + 1) * A000010 (A099407 (n + 1)).toNat

end

end A172042.P6393256674975323363

namespace A172042

/-- `(A000040(n+1)%2+1)*A000010(A099407(n+1))` -/
def P6393256674975323363.Spec : Prop :=
  ∀ n, P6393256674975323363.a n = A172042 (n + 1)

end A172042

/-!
# A172043: a(n) = 5*n^2 - n + 1.

The programs for A172043, the canonical program `A172043.P1662803192776030026` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172043 has offset 0).

The definition of A172043 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n²-n+1` (program `A172043.P1662803192776030026`, by `A172043.P1662803192776030026.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172043.P1662803192776030026

`5*n²-n+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172043

/-- `5*n²-n+1` -/
def P1662803192776030026.Spec : Prop :=
  ∀ n, P1662803192776030026.a n = A172043 n

theorem P1662803192776030026.correct : P1662803192776030026.Spec := by
  intro n
  simp only [A172043]

end A172043

/-! ## A172043.P5087831481199472369

`or(1, 5*n²-n)`
-/

namespace A172043.P5087831481199472369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((5 * n ^ 2 : ℤ) - (n : ℤ))

end

end A172043.P5087831481199472369

namespace A172043

/-- `or(1, 5*n²-n)` -/
def P5087831481199472369.Spec : Prop :=
  ∀ n, P5087831481199472369.a n = A172043 n

end A172043

/-! ## A172043.P17048221501477046948

`xor(1, 5*n²-n)`
-/

namespace A172043.P17048221501477046948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((5 * n ^ 2 : ℤ) - (n : ℤ))

end

end A172043.P17048221501477046948

namespace A172043

/-- `xor(1, 5*n²-n)` -/
def P17048221501477046948.Spec : Prop :=
  ∀ n, P17048221501477046948.a n = A172043 n

end A172043

/-! ## A172043.P11518140599436090976

`∑[a(n-1)+10]` with `a(0)=1, a(1)=4`
-/

namespace A172043.P11518140599436090976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172043.P11518140599436090976

namespace A172043

/-- `∑[a(n-1)+10]` -/
def P11518140599436090976.Spec : Prop :=
  ∀ n, (P11518140599436090976.a n : ℤ) = A172043 n

end A172043

/-! ## A172043.P1591170803823252583

`∑[ogf((1+2x+7x^2)/(1-2x+x^2))]`
-/

namespace A172043.P1591170803823252583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172043.P1591170803823252583

namespace A172043

/-- `∑[ogf((1+2x+7x^2)/(1-2x+x^2))]` -/
def P1591170803823252583.Spec : Prop :=
  ∀ n, P1591170803823252583.a n = A172043 n

end A172043

/-! ## A172043.P1153275441933393152

`ogf((1+2x+7x^2)/(1-3x+3x^2-x^3))`
-/

namespace A172043.P1153275441933393152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 7] [1, -3, 3, -1] n

end

end A172043.P1153275441933393152

namespace A172043

/-- `ogf((1+2x+7x^2)/(1-3x+3x^2-x^3))` -/
def P1153275441933393152.Spec : Prop :=
  ∀ n, P1153275441933393152.a n = A172043 n

end A172043

/-! ## A172043.P11244766181282004797

`abs(5*(lcm(n, n+1)-n)-abs(n-1))`
-/

namespace A172043.P11244766181282004797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 * ((Nat.lcm n (n + 1) : ℤ) - (n : ℤ)) - |(n : ℤ) - 1|)|

end

end A172043.P11244766181282004797

namespace A172043

/-- `abs(5*(lcm(n, n+1)-n)-abs(n-1))` -/
def P11244766181282004797.Spec : Prop :=
  ∀ n, P11244766181282004797.a n = A172043 n

end A172043

/-! ## A172043.P13713614257349301756

`floor(2*(a(n-1)+5)-a(n-2))` with `a(0)=1, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A172043.P13713614257349301756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 * (a (n - 1) + 5) - a (n - 2)

end

end A172043.P13713614257349301756

namespace A172043

/-- `floor(2*(a(n-1)+5)-a(n-2))` -/
def P13713614257349301756.Spec : Prop :=
  ∀ n, P13713614257349301756.a n = A172043 n

theorem P13713614257349301756.correct : P13713614257349301756.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A172043, Nat.add_sub_cancel, A172043.P13713614257349301756.a, A172043.P1662803192776030026.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A172043, Nat.add_sub_cancel, A172043.P13713614257349301756.a, A172043.P1662803192776030026.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A172043

/-! ## A172043.P8010437204233032578

`(A195018(n)+2+n)/2`
-/

namespace A172043.P8010437204233032578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195018 n + 2 + (n : ℤ) : ℚ) / 2

end

end A172043.P8010437204233032578

namespace A172043

/-- `(A195018(n)+2+n)/2` -/
def P8010437204233032578.Spec : Prop :=
  ∀ n, P8010437204233032578.a n = (A172043 n : ℚ)

theorem P8010437204233032578.correct : P8010437204233032578.Spec := by
  intro n
  simp only [A172043, Nat.add_sub_cancel, A172043.P8010437204233032578.a, A172043.P1662803192776030026.a, A195018, A195018.P10780825552711397623.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A172043

/-! ## A172043.P6220000233430510794

`abs(n-1-5*A000290(n))`
-/

namespace A172043.P6220000233430510794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - 1 - 5 * A000290 n|

end

end A172043.P6220000233430510794

namespace A172043

/-- `abs(n-1-5*A000290(n))` -/
def P6220000233430510794.Spec : Prop :=
  ∀ n, P6220000233430510794.a n = A172043 n

end A172043

/-! ## A172043.P8362478959620126525

`abs(A005408(n)+n*(5*n-3))`
-/

namespace A172043.P8362478959620126525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005408 n + (n : ℤ) * ((5 * n : ℤ) - 3)|

end

end A172043.P8362478959620126525

namespace A172043

/-- `abs(A005408(n)+n*(5*n-3))` -/
def P8362478959620126525.Spec : Prop :=
  ∀ n, P8362478959620126525.a n = A172043 n

end A172043

/-! ## A172043.P1291647999354577977

`abs(n*(A016873(n)-1)+1-2*n)`
-/

namespace A172043.P1291647999354577977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (A016873 n - 1) + 1 - (2 * n : ℤ)|

end

end A172043.P1291647999354577977

namespace A172043

/-- `abs(n*(A016873(n)-1)+1-2*n)` -/
def P1291647999354577977.Spec : Prop :=
  ∀ n, P1291647999354577977.a n = A172043 n

end A172043

/-! ## A172043.P11481898862342439147

`A207596(n+1)%A273366(n)`
-/

namespace A172043.P11481898862342439147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207596 (n + 1)) (A273366 n)

end

end A172043.P11481898862342439147

namespace A172043

/-- `A207596(n+1)%A273366(n)` -/
def P11481898862342439147.Spec : Prop :=
  ∀ n, P11481898862342439147.a n = A172043 n

end A172043

/-! ## A172043.P15245803306710313175

`abs(A000217(2*n+1)+Δ[A007531(n)]-n)`
-/

namespace A172043.P15245803306710313175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 (2 * n + 1) + (f1 (n + 1) - f1 n) - (n : ℤ)|

end

end A172043.P15245803306710313175

namespace A172043

/-- `abs(A000217(2*n+1)+Δ[A007531(n)]-n)` -/
def P15245803306710313175.Spec : Prop :=
  ∀ n, P15245803306710313175.a n = A172043 n

end A172043

/-! ## A172043.P17021782400214733143

`((val(A157532(n+4), 43)+5*n+4)*n²+1)/(n+1)`
-/

namespace A172043.P17021782400214733143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.valuation (A157532 (n + 4)).toNat 43 + (5 * n + 4)) * n ^ 2 + 1 : ℚ) / (n + 1 : ℚ)

end

end A172043.P17021782400214733143

namespace A172043

/-- `((val(A157532(n+4), 43)+5*n+4)*n²+1)/(n+1)` -/
def P17021782400214733143.Spec : Prop :=
  ∀ n, P17021782400214733143.a n = (A172043 n : ℚ)

end A172043

/-! ## A172043.P665321828083950939

`∑[A109474(2*n+1)]`
-/

namespace A172043.P665321828083950939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109474 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172043.P665321828083950939

namespace A172043

/-- `∑[A109474(2*n+1)]` -/
def P665321828083950939.Spec : Prop :=
  ∀ n, P665321828083950939.a n = A172043 n

end A172043

/-! ## A172043.P4815784161748696643

`∑[A261954(2*n)+n]`
-/

namespace A172043.P4815784161748696643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261954 (2 * n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172043.P4815784161748696643

namespace A172043

/-- `∑[A261954(2*n)+n]` -/
def P4815784161748696643.Spec : Prop :=
  ∀ n, P4815784161748696643.a n = A172043 n

end A172043

/-! ## A172043.P14922768498068243516

`∑[record[A267318(n)]]`
-/

namespace A172043.P14922768498068243516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172043.P14922768498068243516

namespace A172043

/-- `∑[record[A267318(n)]]` -/
def P14922768498068243516.Spec : Prop :=
  ∀ n, P14922768498068243516.a n = A172043 n

end A172043

/-!
# A172044: a(n) = 5*n^2 + 11*n + 1.

The programs for A172044, the canonical program `A172044.P1657044642303172272` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172044 has offset 0).

The definition of A172044 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n²+11*n+1` (program `A172044.P1657044642303172272`, by `A172044.P1657044642303172272.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172044.P1657044642303172272

`5*n²+11*n+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172044

/-- `5*n²+11*n+1` -/
def P1657044642303172272.Spec : Prop :=
  ∀ n, (P1657044642303172272.a n : ℤ) = A172044 n

theorem P1657044642303172272.correct : P1657044642303172272.Spec := by
  intro n
  simp only [A172044]

end A172044

/-! ## A172044.P14621781229288648174

`∑[a(n-1)+10]` with `a(0)=1, a(1)=16`
-/

namespace A172044.P14621781229288648174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172044.P14621781229288648174

namespace A172044

/-- `∑[a(n-1)+10]` -/
def P14621781229288648174.Spec : Prop :=
  ∀ n, (P14621781229288648174.a n : ℤ) = A172044 n

end A172044

/-! ## A172044.P8604564008912783513

`or(1, n*(5*n+11))`
-/

namespace A172044.P8604564008912783513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (5 * n + 11))

end

end A172044.P8604564008912783513

namespace A172044

/-- `or(1, n*(5*n+11))` -/
def P8604564008912783513.Spec : Prop :=
  ∀ n, (P8604564008912783513.a n : ℤ) = A172044 n

end A172044

/-! ## A172044.P6835986117811136456

`xor(1, n*(5*(n+2)+1))`
-/

namespace A172044.P6835986117811136456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * (5 * (n + 2) + 1))

end

end A172044.P6835986117811136456

namespace A172044

/-- `xor(1, n*(5*(n+2)+1))` -/
def P6835986117811136456.Spec : Prop :=
  ∀ n, (P6835986117811136456.a n : ℤ) = A172044 n

end A172044

/-! ## A172044.P2784507741007595642

`abs(a(n-1)+10*n+6)` with `a(0)=1`
-/

namespace A172044.P2784507741007595642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (10 * n + 6)

end

end A172044.P2784507741007595642

namespace A172044

/-- `abs(a(n-1)+10*n+6)` -/
def P2784507741007595642.Spec : Prop :=
  ∀ n, (P2784507741007595642.a n : ℤ) = A172044 n

theorem P2784507741007595642.correct : P2784507741007595642.Spec := by
  intro n
  induction n with
  | zero => simp [A172044, A172044.P2784507741007595642.a, A172044.P1657044642303172272.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A172044, Nat.add_sub_cancel, A172044.P2784507741007595642.a, A172044.P1657044642303172272.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A172044

/-! ## A172044.P9096218619247469156

`floor(a(n-1)+10*n+6)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A172044.P9096218619247469156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (10 * n + 6)

end

end A172044.P9096218619247469156

namespace A172044

/-- `floor(a(n-1)+10*n+6)` -/
def P9096218619247469156.Spec : Prop :=
  ∀ n, (P9096218619247469156.a n : ℤ) = A172044 n

theorem P9096218619247469156.correct : P9096218619247469156.Spec := by
  intro n
  induction n with
  | zero => simp [A172044, A172044.P9096218619247469156.a, A172044.P1657044642303172272.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A172044, Nat.add_sub_cancel, A172044.P9096218619247469156.a, A172044.P1657044642303172272.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A172044

/-! ## A172044.P6996603842578131689

`abs(A134538(n+1)+n-3)`
-/

namespace A172044.P6996603842578131689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134538 (n + 1) + ((n : ℤ) - 3)|

end

end A172044.P6996603842578131689

namespace A172044

/-- `abs(A134538(n+1)+n-3)` -/
def P6996603842578131689.Spec : Prop :=
  ∀ n, P6996603842578131689.a n = A172044 n

end A172044

/-! ## A172044.P17764325687970445297

`abs((n+2)*A016861(n)-1)`
-/

namespace A172044.P17764325687970445297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 2 : ℤ) * A016861 n - 1|

end

end A172044.P17764325687970445297

namespace A172044

/-- `abs((n+2)*A016861(n)-1)` -/
def P17764325687970445297.Spec : Prop :=
  ∀ n, P17764325687970445297.a n = A172044 n

end A172044

/-! ## A172044.P755386865722496665

`∑[A017341(n)^floor(atan(n+1))]`
-/

namespace A172044.P755386865722496665
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017341 n : ℚ) ^ (⌊Real.arctan (n + 1 : ℝ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172044.P755386865722496665

namespace A172044

/-- `∑[A017341(n)^floor(atan(n+1))]` -/
def P755386865722496665.Spec : Prop :=
  ∀ n, P755386865722496665.a n = (A172044 n : ℚ)

end A172044

/-! ## A172044.P3535033215522017921

`abs(A152811(n+1)+A004538(n))`
-/

namespace A172044.P3535033215522017921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152811 (n + 1) + A004538 n|

end

end A172044.P3535033215522017921

namespace A172044

/-- `abs(A152811(n+1)+A004538(n))` -/
def P3535033215522017921.Spec : Prop :=
  ∀ n, P3535033215522017921.a n = A172044 n

end A172044

/-! ## A172044.P5847085897978050421

`Δ[A174814(n)+(2-n)²]`
-/

namespace A172044.P5847085897978050421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174814 n + (2 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172044.P5847085897978050421

namespace A172044

/-- `Δ[A174814(n)+(2-n)²]` -/
def P5847085897978050421.Spec : Prop :=
  ∀ n, P5847085897978050421.a n = A172044 n

end A172044

/-! ## A172044.P12328310017966825339

`Δ[A144945(n+1)-5*n]`
-/

namespace A172044.P12328310017966825339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144945 (n + 1) - (5 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172044.P12328310017966825339

namespace A172044

/-- `Δ[A144945(n+1)-5*n]` -/
def P12328310017966825339.Spec : Prop :=
  ∀ n, P12328310017966825339.a n = A172044 n

end A172044

/-! ## A172044.P2870409945817594642

`∑[A017341(n)^A001221(A000961(n+1))]`
-/

namespace A172044.P2870409945817594642
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017341 n : ℚ) ^ (A001221 (A000961 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172044.P2870409945817594642

namespace A172044

/-- `∑[A017341(n)^A001221(A000961(n+1))]` -/
def P2870409945817594642.Spec : Prop :=
  ∀ n, P2870409945817594642.a n = (A172044 n : ℚ)

end A172044

/-! ## A172044.P1519850218231066365

`∑[A016861(comp[A004277(n)])]`
-/

namespace A172044.P1519850218231066365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172044.P1519850218231066365

namespace A172044

/-- `∑[A016861(comp[A004277(n)])]` -/
def P1519850218231066365.Spec : Prop :=
  ∀ n, P1519850218231066365.a n = A172044 n

end A172044

/-! ## A172044.P13526054559244391461

`∑[A016861(xor(1, A004277(n)))]`
-/

namespace A172044.P13526054559244391461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (Int.xor 1 (A004277 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172044.P13526054559244391461

namespace A172044

/-- `∑[A016861(xor(1, A004277(n)))]` -/
def P13526054559244391461.Spec : Prop :=
  ∀ n, P13526054559244391461.a n = A172044 n

end A172044

/-! ## A172044.P6524395831289479464

`∑[gcd(A017341(n), A049084(2*(n+1)))]`
-/

namespace A172044.P6524395831289479464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017341 n) (A049084 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172044.P6524395831289479464

namespace A172044

/-- `∑[gcd(A017341(n), A049084(2*(n+1)))]` -/
def P6524395831289479464.Spec : Prop :=
  ∀ n, (P6524395831289479464.a n : ℤ) = A172044 n

end A172044

/-! ## A172044.P1419402061014933742

`∑[A131439(2*n+1)+2*n]`
-/

namespace A172044.P1419402061014933742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131439 (2 * n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172044.P1419402061014933742

namespace A172044

/-- `∑[A131439(2*n+1)+2*n]` -/
def P1419402061014933742.Spec : Prop :=
  ∀ n, P1419402061014933742.a n = A172044 n

end A172044

/-! ## A172044.P8136399751136792063

`∑[A191558(5*(2*n+1))+1]`
-/

namespace A172044.P8136399751136792063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (5 * (2 * n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172044.P8136399751136792063

namespace A172044

/-- `∑[A191558(5*(2*n+1))+1]` -/
def P8136399751136792063.Spec : Prop :=
  ∀ n, P8136399751136792063.a n = A172044 n

end A172044

/-!
# A172045: a(n) = (9*n^4+10*n^3-3*n^2-4*n)/12.

The programs for A172045, the canonical program `A172045.P10592350077727731038` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172045 has offset 0).

The definition of A172045 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n^4+10*n^3-3*n²-4*n)/12` (program `A172045.P17394909670982920072`, by `A172045.P17394909670982920072.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172045.P9702560194785429338

`n*(n+1)*(9*n²+n-4)/12`
-/

namespace A172045.P9702560194785429338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((9 * n ^ 2 + n : ℤ) - 4) : ℚ) / 12

end

end A172045.P9702560194785429338

namespace A172045

/-- `n*(n+1)*(9*n²+n-4)/12` -/
def P9702560194785429338.Spec : Prop :=
  ∀ n, P9702560194785429338.a n = (A172045 n : ℚ)

theorem P9702560194785429338.correct : P9702560194785429338.Spec := by
  intro n
  induction n with
  | zero => simp [A172045, A172045.P9702560194785429338.a, A172045.P10592350077727731038.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A172045, Nat.add_sub_cancel, A172045.P9702560194785429338.a, A172045.P10592350077727731038.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A172045

/-! ## A172045.P17394909670982920072

`(9*n^4+10*n^3-3*n²-4*n)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172045.P17394909670982920072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * n ^ 4 + 10 * n ^ 3 : ℤ) - (3 * n ^ 2 : ℤ) - (4 * n : ℤ) : ℚ) / 12

end

end A172045.P17394909670982920072

namespace A172045

/-- `(9*n^4+10*n^3-3*n²-4*n)/12` -/
def P17394909670982920072.Spec : Prop :=
  ∀ n, P17394909670982920072.a n = (A172045 n : ℚ)

theorem P17394909670982920072.correct : P17394909670982920072.Spec := by
  intro n
  induction n with
  | zero => simp [A172045, A172045.P17394909670982920072.a, A172045.P10592350077727731038.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A172045, Nat.add_sub_cancel, A172045.P17394909670982920072.a, A172045.P10592350077727731038.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A172045

/-! ## A172045.P10673795811232293401

`∑[4*n*C(n, 2)]+∑[n]²`
-/

namespace A172045.P10673795811232293401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n * Nat.choose n 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A172045.P10673795811232293401

namespace A172045

/-- `∑[4*n*C(n, 2)]+∑[n]²` -/
def P10673795811232293401.Spec : Prop :=
  ∀ n, (P10673795811232293401.a n : ℤ) = A172045 n

end A172045

/-! ## A172045.P10592350077727731038

`a(n-1)+(2*n+n-2)*n²` with `a(0)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172045

/-- `a(n-1)+(2*n+n-2)*n²` -/
def P10592350077727731038.Spec : Prop :=
  ∀ n, P10592350077727731038.a n = A172045 n

theorem P10592350077727731038.correct : P10592350077727731038.Spec := by
  intro n
  simp only [A172045]

end A172045

/-! ## A172045.P13826194240510683845

`∑[n*A000567(n)]`
-/

namespace A172045.P13826194240510683845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172045.P13826194240510683845

namespace A172045

/-- `∑[n*A000567(n)]` -/
def P13826194240510683845.Spec : Prop :=
  ∀ n, P13826194240510683845.a n = A172045 n

end A172045

/-! ## A172045.P12060422093619307257

`A036464(n+1)+∑[n]²`
-/

namespace A172045.P12060422093619307257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036464 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A172045.P12060422093619307257

namespace A172045

/-- `A036464(n+1)+∑[n]²` -/
def P12060422093619307257.Spec : Prop :=
  ∀ n, P12060422093619307257.a n = A172045 n

end A172045

/-! ## A172045.P4518273886718097591

`A264853(n)+A112742(n)`
-/

namespace A172045.P4518273886718097591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264853 n + A112742 n

end

end A172045.P4518273886718097591

namespace A172045

/-- `A264853(n)+A112742(n)` -/
def P4518273886718097591.Spec : Prop :=
  ∀ n, P4518273886718097591.a n = A172045 n

end A172045

/-! ## A172045.P2680667608954371

`A213827(n)-A000292(n)`
-/

namespace A172045.P2680667608954371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213827 n - A000292 n

end

end A172045.P2680667608954371

namespace A172045

/-- `A213827(n)-A000292(n)` -/
def P2680667608954371.Spec : Prop :=
  ∀ n, P2680667608954371.a n = A172045 n

end A172045

/-! ## A172045.P4725672460239504993

`A172077(n)-A035291(n+1)`
-/

namespace A172045.P4725672460239504993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172077 n - A035291 (n + 1)

end

end A172045.P4725672460239504993

namespace A172045

/-- `A172077(n)-A035291(n+1)` -/
def P4725672460239504993.Spec : Prop :=
  ∀ n, P4725672460239504993.a n = A172045 n

end A172045

/-! ## A172045.P175629724436337846

`A172047(n)-A036464(n+1)`
-/

namespace A172045.P175629724436337846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172047 n - A036464 (n + 1)

end

end A172045.P175629724436337846

namespace A172045

/-- `A172047(n)-A036464(n+1)` -/
def P175629724436337846.Spec : Prop :=
  ∀ n, P175629724436337846.a n = A172045 n

end A172045

/-! ## A172045.P2568149045678472016

`A126274(n)-A100157(n+1)`
-/

namespace A172045.P2568149045678472016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126274 n - A100157 (n + 1)

end

end A172045.P2568149045678472016

namespace A172045

/-- `A126274(n)-A100157(n+1)` -/
def P2568149045678472016.Spec : Prop :=
  ∀ n, P2568149045678472016.a n = A172045 n

end A172045

/-! ## A172045.P15716621900281302580

`A219086(n)-A052149(n+1)`
-/

namespace A172045.P15716621900281302580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 n - A052149 (n + 1)

end

end A172045.P15716621900281302580

namespace A172045

/-- `A219086(n)-A052149(n+1)` -/
def P15716621900281302580.Spec : Prop :=
  ∀ n, P15716621900281302580.a n = A172045 n

end A172045

/-! ## A172045.P10552056210793240561

`A297662(n+1)-A006331(n)`
-/

namespace A172045.P10552056210793240561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297662 (n + 1) - A006331 n

end

end A172045.P10552056210793240561

namespace A172045

/-- `A297662(n+1)-A006331(n)` -/
def P10552056210793240561.Spec : Prop :=
  ∀ n, P10552056210793240561.a n = A172045 n

end A172045

/-! ## A172045.P8414839656353558078

`2*A172047(n)-A172077(n)`
-/

namespace A172045.P8414839656353558078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172047 n - A172077 n

end

end A172045.P8414839656353558078

namespace A172045

/-- `2*A172047(n)-A172077(n)` -/
def P8414839656353558078.Spec : Prop :=
  ∀ n, P8414839656353558078.a n = A172045 n

end A172045

/-! ## A172045.P2696736044890421493

`2*A103220(n)-A000217(n)²`
-/

namespace A172045.P2696736044890421493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103220 n - A000217 n ^ 2

end

end A172045.P2696736044890421493

namespace A172045

/-- `2*A103220(n)-A000217(n)²` -/
def P2696736044890421493.Spec : Prop :=
  ∀ n, P2696736044890421493.a n = A172045 n

end A172045

/-! ## A172045.P7114743343742426701

`A000537(n)+∑[2*A045991(n)]`
-/

namespace A172045.P7114743343742426701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172045.P7114743343742426701

namespace A172045

/-- `A000537(n)+∑[2*A045991(n)]` -/
def P7114743343742426701.Spec : Prop :=
  ∀ n, P7114743343742426701.a n = A172045 n

end A172045

/-! ## A172045.P7418540437826575840

`∑[n]*A005449(n)-A000292(n)`
-/

namespace A172045.P7418540437826575840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A005449 n - A000292 n

end

end A172045.P7418540437826575840

namespace A172045

/-- `∑[n]*A005449(n)-A000292(n)` -/
def P7418540437826575840.Spec : Prop :=
  ∀ n, P7418540437826575840.a n = A172045 n

end A172045

/-! ## A172045.P6587834386921160077

`A000537(n)+A035291(n+1)/2`
-/

namespace A172045.P6587834386921160077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000537 n : ℚ) + (A035291 (n + 1) : ℚ) / 2

end

end A172045.P6587834386921160077

namespace A172045

/-- `A000537(n)+A035291(n+1)/2` -/
def P6587834386921160077.Spec : Prop :=
  ∀ n, P6587834386921160077.a n = (A172045 n : ℚ)

end A172045

/-! ## A172045.P11395759227588257867

`A103220(n)+A036464(n+1)/2`
-/

namespace A172045.P11395759227588257867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103220 n : ℚ) + (A036464 (n + 1) : ℚ) / 2

end

end A172045.P11395759227588257867

namespace A172045

/-- `A103220(n)+A036464(n+1)/2` -/
def P11395759227588257867.Spec : Prop :=
  ∀ n, P11395759227588257867.a n = (A172045 n : ℚ)

end A172045

/-! ## A172045.P10609963715714985159

`A019582(n+1)+A000537(n)-A000292(n)`
-/

namespace A172045.P10609963715714985159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019582 (n + 1) + (A000537 n - A000292 n)

end

end A172045.P10609963715714985159

namespace A172045

/-- `A019582(n+1)+A000537(n)-A000292(n)` -/
def P10609963715714985159.Spec : Prop :=
  ∀ n, P10609963715714985159.a n = A172045 n

end A172045

/-!
# A172046: Partial sums of floor(n^2/7) (A056834).

The programs for A172046, the canonical program `A172046.P13897390913111684896` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172046 has offset 0).

The definition of A172046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172046.P13897390913111684896

`round((2*n^3+3*n²-11*n)/42)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172046

/-- `round((2*n^3+3*n²-11*n)/42)` -/
def P13897390913111684896.Spec : Prop :=
  ∀ n, P13897390913111684896.a n = A172046 n

theorem P13897390913111684896.correct : P13897390913111684896.Spec := by
  intro n
  simp only [A172046]

end A172046

/-! ## A172046.P5987111691168308671

`a(n-7)+(n-2)*(n-4)+3` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=3, a(5)=6, a(6)=11`
-/

namespace A172046.P5987111691168308671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 3, 6, 11] fun n a =>
  a (n - 7) + ((n : ℤ) - 2) * ((n : ℤ) - 4) + 3

end

end A172046.P5987111691168308671

namespace A172046

/-- `a(n-7)+(n-2)*(n-4)+3` -/
def P5987111691168308671.Spec : Prop :=
  ∀ n, P5987111691168308671.a n = A172046 n

end A172046

/-! ## A172046.P2146038582872768201

`floor(a(n-1)+n²/7)` with `a(0)=0`
-/

namespace A172046.P2146038582872768201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n ^ 2 : ℚ) / 7⌋

end

end A172046.P2146038582872768201

namespace A172046

/-- `floor(a(n-1)+n²/7)` -/
def P2146038582872768201.Spec : Prop :=
  ∀ n, P2146038582872768201.a n = A172046 n

end A172046

/-! ## A172046.P241895965003016953

`a(n-1)+floor(n*n/7)` with `a(0)=0`
-/

namespace A172046.P241895965003016953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(n : ℚ) * ((n : ℚ) / 7)⌋

end

end A172046.P241895965003016953

namespace A172046

/-- `a(n-1)+floor(n*n/7)` -/
def P241895965003016953.Spec : Prop :=
  ∀ n, P241895965003016953.a n = A172046 n

end A172046

/-! ## A172046.P13969288318742953608

`∑[A056834(n)]`
-/

namespace A172046.P13969288318742953608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172046.P13969288318742953608

namespace A172046

/-- `∑[A056834(n)]` -/
def P13969288318742953608.Spec : Prop :=
  ∀ n, P13969288318742953608.a n = A172046 n

end A172046

/-! ## A172046.P14671420517944874892

`ceil(∑[(n+2)*(n-1)-A028310(n)]/7)`
-/

namespace A172046.P14671420517944874892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ((n : ℤ) - 1) - A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 7⌉

end

end A172046.P14671420517944874892

namespace A172046

/-- `ceil(∑[(n+2)*(n-1)-A028310(n)]/7)` -/
def P14671420517944874892.Spec : Prop :=
  ∀ n, P14671420517944874892.a n = A172046 n

end A172046

/-! ## A172046.P5635670990367307126

`A175822(n)-A145569(n)`
-/

namespace A172046.P5635670990367307126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175822 n - A145569 n

end

end A172046.P5635670990367307126

namespace A172046

/-- `A175822(n)-A145569(n)` -/
def P5635670990367307126.Spec : Prop :=
  ∀ n, P5635670990367307126.a n = A172046 n

end A172046

/-! ## A172046.P7078109499681887044

`∑[∑[A057356(n+1)]]`
-/

namespace A172046.P7078109499681887044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172046.P7078109499681887044

namespace A172046

/-- `∑[∑[A057356(n+1)]]` -/
def P7078109499681887044.Spec : Prop :=
  ∀ n, P7078109499681887044.a n = A172046 n

end A172046

/-! ## A172046.P15037139552990992175

`∑[A132270(n²+1)]`
-/

namespace A172046.P15037139552990992175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172046.P15037139552990992175

namespace A172046

/-- `∑[A132270(n²+1)]` -/
def P15037139552990992175.Spec : Prop :=
  ∀ n, P15037139552990992175.a n = A172046 n

end A172046

/-! ## A172046.P4391418977610705980

`∑[A230198(n²+1)]`
-/

namespace A172046.P4391418977610705980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230198 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172046.P4391418977610705980

namespace A172046

/-- `∑[A230198(n²+1)]` -/
def P4391418977610705980.Spec : Prop :=
  ∀ n, P4391418977610705980.a n = A172046 n

end A172046

/-!
# A172047: a(n) = n*(n+1)*(15*n^2-n-8)/12.

The programs for A172047, the canonical program `A172047.P9757449435803970936` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172047 has offset 0).

The definition of A172047 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A172047.anchor (n : ℕ) : (A172047 n : ℚ) = ((n * (n + 1) : ℤ) * ((15 * n ^ 2 : ℤ) - (n : ℤ) - 8) : ℚ) / 12` in `Proof.A172.A172047`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172047.P9757449435803970936

`n*(n+1)*(15*n²-n-8)/12`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172047

/-- `n*(n+1)*(15*n²-n-8)/12` -/
def P9757449435803970936.Spec : Prop :=
  ∀ n, P9757449435803970936.a n = (A172047 n : ℚ)

end A172047

/-! ## A172047.P13019341022346272395

`∑[n*A051624(n)]`
-/

namespace A172047.P13019341022346272395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172047.P13019341022346272395

namespace A172047

/-- `∑[n*A051624(n)]` -/
def P13019341022346272395.Spec : Prop :=
  ∀ n, P13019341022346272395.a n = A172047 n

end A172047

/-! ## A172047.P1829095083011024412

`A035291(n+1)+∑[n]²`
-/

namespace A172047.P1829095083011024412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035291 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A172047.P1829095083011024412

namespace A172047

/-- `A035291(n+1)+∑[n]²` -/
def P1829095083011024412.Spec : Prop :=
  ∀ n, P1829095083011024412.a n = A172047 n

end A172047

/-! ## A172047.P342215499030427875

`A172045(n)+A036464(n+1)`
-/

namespace A172047.P342215499030427875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172045 n + A036464 (n + 1)

end

end A172047.P342215499030427875

namespace A172047

/-- `A172045(n)+A036464(n+1)` -/
def P342215499030427875.Spec : Prop :=
  ∀ n, P342215499030427875.a n = A172047 n

end A172047

/-! ## A172047.P16015609861247023797

`A172085(n)-A035291(n+1)`
-/

namespace A172047.P16015609861247023797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172085 n - A035291 (n + 1)

end

end A172047.P16015609861247023797

namespace A172047

/-- `A172085(n)-A035291(n+1)` -/
def P16015609861247023797.Spec : Prop :=
  ∀ n, P16015609861247023797.a n = A172047 n

end A172047

/-! ## A172047.P10314105851873937742

`A172077(n)-A036464(n+1)`
-/

namespace A172047.P10314105851873937742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172077 n - A036464 (n + 1)

end

end A172047.P10314105851873937742

namespace A172047

/-- `A172077(n)-A036464(n+1)` -/
def P10314105851873937742.Spec : Prop :=
  ∀ n, P10314105851873937742.a n = A172047 n

end A172047

/-! ## A172047.P7843481889313250618

`2*A172045(n)-A000537(n)`
-/

namespace A172047.P7843481889313250618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172045 n - A000537 n

end

end A172047.P7843481889313250618

namespace A172047

/-- `2*A172045(n)-A000537(n)` -/
def P7843481889313250618.Spec : Prop :=
  ∀ n, P7843481889313250618.a n = A172047 n

end A172047

/-! ## A172047.P787428750685659112

`2*A172077(n)-A172085(n)`
-/

namespace A172047.P787428750685659112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172077 n - A172085 n

end

end A172047.P787428750685659112

namespace A172047

/-- `2*A172077(n)-A172085(n)` -/
def P787428750685659112.Spec : Prop :=
  ∀ n, P787428750685659112.a n = A172047 n

end A172047

/-! ## A172047.P17134450425946963883

`2*A172045(n)-A000217(n)²`
-/

namespace A172047.P17134450425946963883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172045 n - A000217 n ^ 2

end

end A172047.P17134450425946963883

namespace A172047

/-- `2*A172045(n)-A000217(n)²` -/
def P17134450425946963883.Spec : Prop :=
  ∀ n, P17134450425946963883.a n = A172047 n

end A172047

/-! ## A172047.P16903524974587042386

`A000537(n)+2*A036464(n+1)`
-/

namespace A172047.P16903524974587042386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n + 2 * A036464 (n + 1)

end

end A172047.P16903524974587042386

namespace A172047

/-- `A000537(n)+2*A036464(n+1)` -/
def P16903524974587042386.Spec : Prop :=
  ∀ n, P16903524974587042386.a n = A172047 n

end A172047

/-! ## A172047.P12209887677587850289

`A172045(n)+A035291(n+1)/2`
-/

namespace A172047.P12209887677587850289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172045 n : ℚ) + (A035291 (n + 1) : ℚ) / 2

end

end A172047.P12209887677587850289

namespace A172047

/-- `A172045(n)+A035291(n+1)/2` -/
def P12209887677587850289.Spec : Prop :=
  ∀ n, P12209887677587850289.a n = (A172047 n : ℚ)

end A172047

/-! ## A172047.P15604469201649392830

`A172085(n)-2*A036464(n+1)`
-/

namespace A172047.P15604469201649392830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172085 n - 2 * A036464 (n + 1)

end

end A172047.P15604469201649392830

namespace A172047

/-- `A172085(n)-2*A036464(n+1)` -/
def P15604469201649392830.Spec : Prop :=
  ∀ n, P15604469201649392830.a n = A172047 n

end A172047

/-! ## A172047.P4580475539787736606

`A172077(n)-A035291(n+1)/2`
-/

namespace A172047.P4580475539787736606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172077 n : ℚ) - (A035291 (n + 1) : ℚ) / 2

end

end A172047.P4580475539787736606

namespace A172047

/-- `A172077(n)-A035291(n+1)/2` -/
def P4580475539787736606.Spec : Prop :=
  ∀ n, P4580475539787736606.a n = (A172047 n : ℚ)

end A172047

/-! ## A172047.P10720471812708023266

`A172075(n)-A036464(n+1)/2`
-/

namespace A172047.P10720471812708023266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172075 n : ℚ) - (A036464 (n + 1) : ℚ) / 2

end

end A172047.P10720471812708023266

namespace A172047

/-- `A172075(n)-A036464(n+1)/2` -/
def P10720471812708023266.Spec : Prop :=
  ∀ n, P10720471812708023266.a n = (A172047 n : ℚ)

end A172047

/-! ## A172047.P5442905000520137909

`A000217(n)²+2*A036464(n+1)`
-/

namespace A172047.P5442905000520137909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n ^ 2 + 2 * A036464 (n + 1)

end

end A172047.P5442905000520137909

namespace A172047

/-- `A000217(n)²+2*A036464(n+1)` -/
def P5442905000520137909.Spec : Prop :=
  ∀ n, P5442905000520137909.a n = A172047 n

end A172047

/-!
# A172048: a(n) = A104275(n) + A014076(n).

The programs for A172048, the canonical program `A172048.P1924917802631505532` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172048 has offset 1).

The definition of A172048 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, A104275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A172048.P1924917802631505532

`A104275(n+1)+A014076(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A172048

/-- `A104275(n+1)+A014076(n+1)` -/
def P1924917802631505532.Spec : Prop :=
  ∀ n, P1924917802631505532.a n = A172048 (n + 1)

theorem P1924917802631505532.correct : P1924917802631505532.Spec := by
  intro n
  simp only [A172048, Nat.add_sub_cancel]

end A172048

/-! ## A172048.P7710231174094381586

`A179899(n+1)+2`
-/

namespace A172048.P7710231174094381586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179899 (n + 1) + 2

end

end A172048.P7710231174094381586

namespace A172048

/-- `A179899(n+1)+2` -/
def P7710231174094381586.Spec : Prop :=
  ∀ n, P7710231174094381586.a n = A172048 (n + 1)

end A172048

/-! ## A172048.P8424363935511852105

`3*A047845(n+1)+2`
-/

namespace A172048.P8424363935511852105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A047845 (n + 1) + 2

end

end A172048.P8424363935511852105

namespace A172048

/-- `3*A047845(n+1)+2` -/
def P8424363935511852105.Spec : Prop :=
  ∀ n, P8424363935511852105.a n = A172048 (n + 1)

end A172048

/-! ## A172048.P18367230029985326859

`3*A104275(n+1)-1`
-/

namespace A172048.P18367230029985326859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A104275 (n + 1) - 1

end

end A172048.P18367230029985326859

namespace A172048

/-- `3*A104275(n+1)-1` -/
def P18367230029985326859.Spec : Prop :=
  ∀ n, P18367230029985326859.a n = A172048 (n + 1)

end A172048

/-! ## A172048.P798154518275809677

`3*A153043(n+1)-4`
-/

namespace A172048.P798154518275809677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A153043 (n + 1) - 4

end

end A172048.P798154518275809677

namespace A172048

/-- `3*A153043(n+1)-4` -/
def P798154518275809677.Spec : Prop :=
  ∀ n, P798154518275809677.a n = A172048 (n + 1)

end A172048

/-! ## A172048.P5168717241242294373

`3*comp[A005097(n+1)]+2`
-/

namespace A172048.P5168717241242294373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A172048.P5168717241242294373

namespace A172048

/-- `3*comp[A005097(n+1)]+2` -/
def P5168717241242294373.Spec : Prop :=
  ∀ n, (P5168717241242294373.a n : ℤ) = A172048 (n + 1)

end A172048

/-! ## A172048.P13772691657989366151

`a(n-1)+3*A196274(n)` with `a(0)=2`
-/

namespace A172048.P13772691657989366151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 3 * A196274 n

end

end A172048.P13772691657989366151

namespace A172048

/-- `a(n-1)+3*A196274(n)` -/
def P13772691657989366151.Spec : Prop :=
  ∀ n, P13772691657989366151.a n = A172048 (n + 1)

end A172048

/-! ## A172048.P16722798723376085010

`3*comp[floor(A000040(n+1)/2)]+2`
-/

namespace A172048.P16722798723376085010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A172048.P16722798723376085010

namespace A172048

/-- `3*comp[floor(A000040(n+1)/2)]+2` -/
def P16722798723376085010.Spec : Prop :=
  ∀ n, (P16722798723376085010.a n : ℤ) = A172048 (n + 1)

end A172048

/-! ## A172048.P612888863570190128

`3*lt[A006530(2*n+1), n+2]+2`
-/

namespace A172048.P612888863570190128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A172048.P612888863570190128

namespace A172048

/-- `3*lt[A006530(2*n+1), n+2]+2` -/
def P612888863570190128.Spec : Prop :=
  ∀ n, (P612888863570190128.a n : ℤ) = A172048 (n + 1)

end A172048

/-! ## A172048.P11975707865388570774

`3*lt[A020639(2*n+1), n+2]+2`
-/

namespace A172048.P11975707865388570774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A172048.P11975707865388570774

namespace A172048

/-- `3*lt[A020639(2*n+1), n+2]+2` -/
def P11975707865388570774.Spec : Prop :=
  ∀ n, (P11975707865388570774.a n : ℤ) = A172048 (n + 1)

end A172048

/-! ## A172048.P4191642666816880759

`A014682(A014076(n+1))`
-/

namespace A172048.P4191642666816880759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A014076 (n + 1)).toNat

end

end A172048.P4191642666816880759

namespace A172048

/-- `A014682(A014076(n+1))` -/
def P4191642666816880759.Spec : Prop :=
  ∀ n, P4191642666816880759.a n = A172048 (n + 1)

end A172048

/-! ## A172048.P1252761194108346801

`A014682(record[A171435(2*n+1)])`
-/

namespace A172048.P1252761194108346801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A172048.P1252761194108346801

namespace A172048

/-- `A014682(record[A171435(2*n+1)])` -/
def P1252761194108346801.Spec : Prop :=
  ∀ n, P1252761194108346801.a n = A172048 (n + 1)

end A172048

/-! ## A172048.P13318459581848987877

`A014076(n+1)+A047845(n+1)+1`
-/

namespace A172048.P13318459581848987877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1) + (A047845 (n + 1) + 1)

end

end A172048.P13318459581848987877

namespace A172048

/-- `A014076(n+1)+A047845(n+1)+1` -/
def P13318459581848987877.Spec : Prop :=
  ∀ n, P13318459581848987877.a n = A172048 (n + 1)

end A172048

/-! ## A172048.P3370564623029226785

`A014682(A104275(n+1)+A104275(n+1)-1)`
-/

namespace A172048.P3370564623029226785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A104275 (n + 1) + (A104275 (n + 1) - 1)).toNat

end

end A172048.P3370564623029226785

namespace A172048

/-- `A014682(A104275(n+1)+A104275(n+1)-1)` -/
def P3370564623029226785.Spec : Prop :=
  ∀ n, P3370564623029226785.a n = A172048 (n + 1)

end A172048

/-! ## A172048.P16237652439887058926

`A047845(n+1)+A153043(n+1)+A047845(n+1)`
-/

namespace A172048.P16237652439887058926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1) + (A153043 (n + 1) + A047845 (n + 1))

end

end A172048.P16237652439887058926

namespace A172048

/-- `A047845(n+1)+A153043(n+1)+A047845(n+1)` -/
def P16237652439887058926.Spec : Prop :=
  ∀ n, P16237652439887058926.a n = A172048 (n + 1)

end A172048

/-! ## A172048.P7225672642670442854

`A047845(n+1)+A104275(n+1)+A104275(n+1)`
-/

namespace A172048.P7225672642670442854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1) + (A104275 (n + 1) + A104275 (n + 1))

end

end A172048.P7225672642670442854

namespace A172048

/-- `A047845(n+1)+A104275(n+1)+A104275(n+1)` -/
def P7225672642670442854.Spec : Prop :=
  ∀ n, P7225672642670442854.a n = A172048 (n + 1)

end A172048

/-! ## A172048.P4893407128675409232

`A016789(A047845(n+1))`
-/

namespace A172048.P4893407128675409232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A047845 (n + 1)).toNat

end

end A172048.P4893407128675409232

namespace A172048

/-- `A016789(A047845(n+1))` -/
def P4893407128675409232.Spec : Prop :=
  ∀ n, P4893407128675409232.a n = A172048 (n + 1)

end A172048

/-! ## A172048.P14559801447030283667

`A016789(A104275(n+1)-1)`
-/

namespace A172048.P14559801447030283667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A104275 (n + 1) - 1).toNat

end

end A172048.P14559801447030283667

namespace A172048

/-- `A016789(A104275(n+1)-1)` -/
def P14559801447030283667.Spec : Prop :=
  ∀ n, P14559801447030283667.a n = A172048 (n + 1)

end A172048

/-! ## A172048.P13305861591166778140

`A016789(A153043(n+1)-2)`
-/

namespace A172048.P13305861591166778140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A153043 (n + 1) - 2).toNat

end

end A172048.P13305861591166778140

namespace A172048

/-- `A016789(A153043(n+1)-2)` -/
def P13305861591166778140.Spec : Prop :=
  ∀ n, P13305861591166778140.a n = A172048 (n + 1)

end A172048

/-! ## A172048.P2769243898607140750

`A016777(comp[A005097(n+1)])+1`
-/

namespace A172048.P2769243898607140750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A172048.P2769243898607140750

namespace A172048

/-- `A016777(comp[A005097(n+1)])+1` -/
def P2769243898607140750.Spec : Prop :=
  ∀ n, P2769243898607140750.a n = A172048 (n + 1)

end A172048

/-!
# A172049: Irregular triangle T(n,k) = 2k-1 with A008794(n+2) values in row n.

The programs for A172049, there is no canonical definition to state claims against.
-/

/-! ## A172049.P7378746166861322226

`A172002(2*(n+1))-A172002(2*n+1)`
-/

namespace A172049.P7378746166861322226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172002 (2 * (n + 1)) - A172002 (2 * n + 1)

end

end A172049.P7378746166861322226

/-! ## A172049.P2032994485175533830

`A172002(2*(n+1))+A033999(2*n+1)*A172002(2*n+1)`
-/

namespace A172049.P2032994485175533830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172002 (2 * (n + 1)) + A033999 (2 * n + 1) * A172002 (2 * n + 1)

end

end A172049.P2032994485175533830

/-! ## A172049.P4224562915196185833

`A171710(Δ[n²])-A168342(n+1)`
-/

namespace A172049.P4224562915196185833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171710 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A168342 (n + 1)

end

end A172049.P4224562915196185833

/-! ## A172049.P2498695411051390941

`A171710(2*(n+1))-A138509(Δ[n²])`
-/

namespace A172049.P2498695411051390941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171710 (2 * (n + 1)) - A138509 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A172049.P2498695411051390941

/-! ## A172049.P1641246724383276702

`A171710(A005408(n))-(A138509(2*(n+1))+1)`
-/

namespace A172049.P1641246724383276702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171710 (A005408 n).toNat - (A138509 (2 * (n + 1)) + 1)

end

end A172049.P1641246724383276702

/-! ## A172049.P2654651517916404008

`(A171219(n+1)-A168342(n+1))%A138102(n+1)`
-/

namespace A172049.P2654651517916404008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171219 (n + 1) - A168342 (n + 1)) (A138102 (n + 1))

end

end A172049.P2654651517916404008

/-!
# A172050: A008585+A029907.

The programs for A172050, the canonical program `A172050.P796616272451847665` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172050 has offset 0).

The definition of A172050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172050.P796616272451847665

`3*n+A029907(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A172050

/-- `3*n+A029907(n)` -/
def P796616272451847665.Spec : Prop :=
  ∀ n, P796616272451847665.a n = A172050 n

theorem P796616272451847665.correct : P796616272451847665.Spec := by
  intro n
  simp only [A172050]

end A172050

/-! ## A172050.P7834162657348245509

`A029907(n)+A008585(n)`
-/

namespace A172050.P7834162657348245509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n + A008585 n

end

end A172050.P7834162657348245509

namespace A172050

/-- `A029907(n)+A008585(n)` -/
def P7834162657348245509.Spec : Prop :=
  ∀ n, P7834162657348245509.a n = A172050 n

theorem P7834162657348245509.correct : P7834162657348245509.Spec := by
  intro n
  simp only [A172050, Nat.add_sub_cancel, A172050.P7834162657348245509.a, A172050.P796616272451847665.a, A008585, A008585.P13732812384316341435.a, A029907, A029907.P6582962671373940873.a, A010049, A010049.P2470396957428042949.a, A152163, A152163.P15912959983015136417.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A172050

/-! ## A172050.P15831120105085135702

`A016777(n)+A029907(n)-1`
-/

namespace A172050.P15831120105085135702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (A029907 n - 1)

end

end A172050.P15831120105085135702

namespace A172050

/-- `A016777(n)+A029907(n)-1` -/
def P15831120105085135702.Spec : Prop :=
  ∀ n, P15831120105085135702.a n = A172050 n

theorem P15831120105085135702.correct : P15831120105085135702.Spec := by
  intro n
  simp only [A172050, Nat.add_sub_cancel, A172050.P15831120105085135702.a, A172050.P796616272451847665.a, A016777, A016777.P9931792138852554157.a, A029907, A029907.P6582962671373940873.a, A010049, A010049.P2470396957428042949.a, A152163, A152163.P15912959983015136417.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A172050

/-! ## A172050.P12541696293061195311

`A005843(n)+A029907(n)+n`
-/

namespace A172050.P12541696293061195311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A029907 n + (n : ℤ))

end

end A172050.P12541696293061195311

namespace A172050

/-- `A005843(n)+A029907(n)+n` -/
def P12541696293061195311.Spec : Prop :=
  ∀ n, P12541696293061195311.a n = A172050 n

theorem P12541696293061195311.correct : P12541696293061195311.Spec := by
  intro n
  simp only [A172050, Nat.add_sub_cancel, A172050.P12541696293061195311.a, A172050.P796616272451847665.a, A005843, A005843.P3167286115683555970.a, A029907, A029907.P6582962671373940873.a, A010049, A010049.P2470396957428042949.a, A152163, A152163.P15912959983015136417.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A172050

/-! ## A172050.P13689183834426732653

`3*n+A001629(n)+A000045(n)`
-/

namespace A172050.P13689183834426732653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (A001629 n + A000045 n)

end

end A172050.P13689183834426732653

namespace A172050

/-- `3*n+A001629(n)+A000045(n)` -/
def P13689183834426732653.Spec : Prop :=
  ∀ n, P13689183834426732653.a n = A172050 n

end A172050

/-!
# A172051: Decimal expansion of 1/999999.

The programs for A172051, the canonical program `A172051.P2384889647580025238` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172051 has offset 0).

The definition of A172051 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172051.P2384889647580025238

`C((5*n+10)%6, 5)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172051

/-- `C((5*n+10)%6, 5)` -/
def P2384889647580025238.Spec : Prop :=
  ∀ n, (P2384889647580025238.a n : ℤ) = A172051 n

theorem P2384889647580025238.correct : P2384889647580025238.Spec := by
  intro n
  simp only [A172051]

end A172051

/-!
# A172052: a(n)=abs(A171696(n)-A002822(n)).

The programs for A172052, the canonical program `A172052.P14180275572290181514` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172052 has offset 1).

The definition of A172052 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002822, A171696, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A172052.P14180275572290181514

`abs(A171696(n+1)-A002822(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A172052

/-- `abs(A171696(n+1)-A002822(n+1))` -/
def P14180275572290181514.Spec : Prop :=
  ∀ n, P14180275572290181514.a n = A172052 (n + 1)

theorem P14180275572290181514.correct : P14180275572290181514.Spec := by
  intro n
  simp only [A172052, Nat.add_sub_cancel]

end A172052

/-! ## A172052.P14031402514815241713

`abs(A002822(n+1)-comp[A024699(n+1)])`
-/

namespace A172052.P14031402514815241713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024699 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002822 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)|

end

end A172052.P14031402514815241713

namespace A172052

/-- `abs(A002822(n+1)-comp[A024699(n+1)])` -/
def P14031402514815241713.Spec : Prop :=
  ∀ n, P14031402514815241713.a n = A172052 (n + 1)

end A172052

/-! ## A172052.P17611779683441960656

`abs(A153196(n+1)+1-A171696(n+1))`
-/

namespace A172052.P17611779683441960656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A153196 (n + 1) + (1 - A171696 (n + 1))|

end

end A172052.P17611779683441960656

namespace A172052

/-- `abs(A153196(n+1)+1-A171696(n+1))` -/
def P17611779683441960656.Spec : Prop :=
  ∀ n, P17611779683441960656.a n = A172052 (n + 1)

end A172052

/-! ## A172052.P9831441203531734588

`abs(A167379(n+1)/2-A171696(n+1))`
-/

namespace A172052.P9831441203531734588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A167379 (n + 1) : ℚ) / 2 - (A171696 (n + 1) : ℚ)|

end

end A172052.P9831441203531734588

namespace A172052

/-- `abs(A167379(n+1)/2-A171696(n+1))` -/
def P9831441203531734588.Spec : Prop :=
  ∀ n, P9831441203531734588.a n = (A172052 (n + 1) : ℚ)

end A172052

/-! ## A172052.P15363836675455681675

`abs(A171696(n+1)-A040040(n+2)/3)`
-/

namespace A172052.P15363836675455681675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A171696 (n + 1) : ℚ) - (A040040 (n + 2) : ℚ) / 3|

end

end A172052.P15363836675455681675

namespace A172052

/-- `abs(A171696(n+1)-A040040(n+2)/3)` -/
def P15363836675455681675.Spec : Prop :=
  ∀ n, P15363836675455681675.a n = (A172052 (n + 1) : ℚ)

end A172052

/-! ## A172052.P14225503731967199173

`abs(A171696(n+1)-A168497(n+3)/3)`
-/

namespace A172052.P14225503731967199173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A171696 (n + 1) : ℚ) - (A168497 (n + 3) : ℚ) / 3|

end

end A172052.P14225503731967199173

namespace A172052

/-- `abs(A171696(n+1)-A168497(n+3)/3)` -/
def P14225503731967199173.Spec : Prop :=
  ∀ n, P14225503731967199173.a n = (A172052 (n + 1) : ℚ)

end A172052

/-! ## A172052.P12551857957511479292

`abs(A171696(n+1)-A014574(n+2)/6)`
-/

namespace A172052.P12551857957511479292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A171696 (n + 1) : ℚ) - (A014574 (n + 2) : ℚ) / 6|

end

end A172052.P12551857957511479292

namespace A172052

/-- `abs(A171696(n+1)-A014574(n+2)/6)` -/
def P12551857957511479292.Spec : Prop :=
  ∀ n, P12551857957511479292.a n = (A172052 (n + 1) : ℚ)

end A172052

/-! ## A172052.P2445933161782930359

`abs(A171696(n+1)-A054735(n+2)/12)`
-/

namespace A172052.P2445933161782930359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A171696 (n + 1) : ℚ) - (A054735 (n + 2) : ℚ) / 12|

end

end A172052.P2445933161782930359

namespace A172052

/-- `abs(A171696(n+1)-A054735(n+2)/12)` -/
def P2445933161782930359.Spec : Prop :=
  ∀ n, P2445933161782930359.a n = (A172052 (n + 1) : ℚ)

end A172052

/-! ## A172052.P10805859623612935841

`abs(A171696(n+1)-floor(A177139(n+1)/2))`
-/

namespace A172052.P10805859623612935841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171696 (n + 1) - ⌊(A177139 (n + 1) : ℚ) / 2⌋|

end

end A172052.P10805859623612935841

namespace A172052

/-- `abs(A171696(n+1)-floor(A177139(n+1)/2))` -/
def P10805859623612935841.Spec : Prop :=
  ∀ n, P10805859623612935841.a n = A172052 (n + 1)

end A172052

/-! ## A172052.P4629134665797556345

`abs(A171696(n+1)-ceil(A001359(n+2)/6))`
-/

namespace A172052.P4629134665797556345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171696 (n + 1) - ⌈(A001359 (n + 2) : ℚ) / 6⌉|

end

end A172052.P4629134665797556345

namespace A172052

/-- `abs(A171696(n+1)-ceil(A001359(n+2)/6))` -/
def P4629134665797556345.Spec : Prop :=
  ∀ n, P4629134665797556345.a n = A172052 (n + 1)

end A172052

/-!
# A172053: n-th nonnegative number k such that neither 6*k+-1 is prime plus n-th number m such that 6*m+-1 are both twin primes.

The programs for A172053, the canonical program `A172053.P3465448990225709035` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172053 has offset 1).

The definition of A172053 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002822, A171696, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A172053.P3465448990225709035

`A171696(n+1)+A002822(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A172053

/-- `A171696(n+1)+A002822(n+1)` -/
def P3465448990225709035.Spec : Prop :=
  ∀ n, P3465448990225709035.a n = A172053 (n + 1)

theorem P3465448990225709035.correct : P3465448990225709035.Spec := by
  intro n
  simp only [A172053, Nat.add_sub_cancel]

end A172053

/-! ## A172053.P4029398914625508446

`A002822(n+1)+comp[A024699(n+1)]`
-/

namespace A172053.P4029398914625508446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024699 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A172053.P4029398914625508446

namespace A172053

/-- `A002822(n+1)+comp[A024699(n+1)]` -/
def P4029398914625508446.Spec : Prop :=
  ∀ n, P4029398914625508446.a n = A172053 (n + 1)

end A172053

/-! ## A172053.P8587940759748303369

`A153196(n+1)+A171696(n+1)+1`
-/

namespace A172053.P8587940759748303369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153196 (n + 1) + (A171696 (n + 1) + 1)

end

end A172053.P8587940759748303369

namespace A172053

/-- `A153196(n+1)+A171696(n+1)+1` -/
def P8587940759748303369.Spec : Prop :=
  ∀ n, P8587940759748303369.a n = A172053 (n + 1)

end A172053

/-! ## A172053.P11229138039301318859

`A171696(n+1)+A167379(n+1)/2`
-/

namespace A172053.P11229138039301318859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171696 (n + 1) : ℚ) + (A167379 (n + 1) : ℚ) / 2

end

end A172053.P11229138039301318859

namespace A172053

/-- `A171696(n+1)+A167379(n+1)/2` -/
def P11229138039301318859.Spec : Prop :=
  ∀ n, P11229138039301318859.a n = (A172053 (n + 1) : ℚ)

theorem P11229138039301318859.correct : P11229138039301318859.Spec := by
  intro n
  simp only [A172053, Nat.add_sub_cancel, A172053.P11229138039301318859.a, A172053.P3465448990225709035.a, A002822, A002822.P1649574763564528316.a, A167379, A167379.P16470544176518882026.a, A171696, A171696.P13576368370877495331.f1, A171696.P13576368370877495331.a, A014574, A014574.P4587706211531852143.a, A377540, A377540.P8485193340030685808.f1, A377540.P8485193340030685808.f2, A377540.P8485193340030685808.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A161996, A161996.P3418427153135750794.f1, A161996.P3418427153135750794.a, A000010, A000010.P4673923239450215316.a, A000045, A000045.P11838749114346432762.a, A063919, A063919.P11181265949704613022.a, A100637, A100637.P13819822131188342482.a, A166597, A166597.P14552351031517696526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A172053

/-! ## A172053.P16200762242756056458

`A171696(n+1)+A054735(n+2)/12`
-/

namespace A172053.P16200762242756056458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171696 (n + 1) : ℚ) + (A054735 (n + 2) : ℚ) / 12

end

end A172053.P16200762242756056458

namespace A172053

/-- `A171696(n+1)+A054735(n+2)/12` -/
def P16200762242756056458.Spec : Prop :=
  ∀ n, P16200762242756056458.a n = (A172053 (n + 1) : ℚ)

end A172053

/-! ## A172053.P9990681132700884151

`A171696(n+1)+ceil(A001359(n+2)/6)`
-/

namespace A172053.P9990681132700884151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171696 (n + 1) + ⌈(A001359 (n + 2) : ℚ) / 6⌉

end

end A172053.P9990681132700884151

namespace A172053

/-- `A171696(n+1)+ceil(A001359(n+2)/6)` -/
def P9990681132700884151.Spec : Prop :=
  ∀ n, P9990681132700884151.a n = A172053 (n + 1)

end A172053

/-! ## A172053.P17928688836051944174

`comp[A024699(n+1)]+A168497(n+3)/3`
-/

namespace A172053.P17928688836051944174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024699 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) + (A168497 (n + 3) : ℚ) / 3

end

end A172053.P17928688836051944174

namespace A172053

/-- `comp[A024699(n+1)]+A168497(n+3)/3` -/
def P17928688836051944174.Spec : Prop :=
  ∀ n, P17928688836051944174.a n = (A172053 (n + 1) : ℚ)

end A172053

/-! ## A172053.P10671700765382064840

`comp[A024699(n+1)]+floor(A177139(n+1)/2)`
-/

namespace A172053.P10671700765382064840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024699 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + ⌊(A177139 (n + 1) : ℚ) / 2⌋

end

end A172053.P10671700765382064840

namespace A172053

/-- `comp[A024699(n+1)]+floor(A177139(n+1)/2)` -/
def P10671700765382064840.Spec : Prop :=
  ∀ n, P10671700765382064840.a n = A172053 (n + 1)

end A172053

/-! ## A172053.P5616577995683733739

`A002822(n+1)+comp[round(A000040(n+2)/6)]`
-/

namespace A172053.P5616577995683733739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 (n + 2) : ℚ) / 6)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A172053.P5616577995683733739

namespace A172053

/-- `A002822(n+1)+comp[round(A000040(n+2)/6)]` -/
def P5616577995683733739.Spec : Prop :=
  ∀ n, P5616577995683733739.a n = A172053 (n + 1)

end A172053

/-! ## A172053.P17015425015148944233

`eq[0, A002126(6*n+1)]+A040040(n+2)/3`
-/

namespace A172053.P17015425015148944233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (6 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) + (A040040 (n + 2) : ℚ) / 3

end

end A172053.P17015425015148944233

namespace A172053

/-- `eq[0, A002126(6*n+1)]+A040040(n+2)/3` -/
def P17015425015148944233.Spec : Prop :=
  ∀ n, P17015425015148944233.a n = (A172053 (n + 1) : ℚ)

end A172053

/-!
# A172054: n-th number k such that 6*k-1 is composite while 6*k+1 is prime minus n-th number m such that 6*m-1 is prime while 6*m+1 is composite.

The programs for A172054, the canonical program `A172054.P10035823565765016099` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172054 has offset 1).

The definition of A172054 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121763, A121765, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A172054.P10035823565765016099

`A121765(n+1)-A121763(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A172054

/-- `A121765(n+1)-A121763(n+1)` -/
def P10035823565765016099.Spec : Prop :=
  ∀ n, P10035823565765016099.a n = A172054 (n + 1)

theorem P10035823565765016099.correct : P10035823565765016099.Spec := by
  intro n
  simp only [A172054, Nat.add_sub_cancel]

end A172054

/-! ## A172054.P5596169533662373335

`A172055(n+1)%A121763(n+1)`
-/

namespace A172054.P5596169533662373335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172055 (n + 1)) (A121763 (n + 1))

end

end A172054.P5596169533662373335

namespace A172054

/-- `A172055(n+1)%A121763(n+1)` -/
def P5596169533662373335.Spec : Prop :=
  ∀ n, P5596169533662373335.a n = A172054 (n + 1)

end A172054

/-! ## A172054.P3918273611660443843

`2*A121765(n+1)-A172055(n+1)`
-/

namespace A172054.P3918273611660443843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121765 (n + 1) - A172055 (n + 1)

end

end A172054.P3918273611660443843

namespace A172054

/-- `2*A121765(n+1)-A172055(n+1)` -/
def P3918273611660443843.Spec : Prop :=
  ∀ n, P3918273611660443843.a n = A172054 (n + 1)

theorem P3918273611660443843.correct : P3918273611660443843.Spec := by
  intro n
  simp only [A172054, Nat.add_sub_cancel, A172054.P3918273611660443843.a, A172054.P10035823565765016099.a, A121763, A121763.P355992002445267932.a, A121765, A121765.P17102494836504524144.a, A172055, A172055.P1149678872916383177.a, A121762, A121762.P7258193871153872247.f1, A121762.P7258193871153872247.a, A121764, A121764.P18179720075456038304.f1, A121764.P18179720075456038304.a, A107472, A107472.P3955423761168080437.f1, A107472.P3955423761168080437.a, A005171, A005171.P15860856746370777121.a, A107323, A107323.P12283925054271668122.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A172054

/-! ## A172054.P13754286269762426227

`A121765(A000027(n+1))%A121763(n+1)`
-/

namespace A172054.P13754286269762426227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121765 (A000027 (n + 1)).toNat) (A121763 (n + 1))

end

end A172054.P13754286269762426227

namespace A172054

/-- `A121765(A000027(n+1))%A121763(n+1)` -/
def P13754286269762426227.Spec : Prop :=
  ∀ n, P13754286269762426227.a n = A172054 (n + 1)

end A172054

/-! ## A172054.P4068393275740401505

`(A121765(n+1)%A121763(n+1))%A014574(n+1)`
-/

namespace A172054.P4068393275740401505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A121765 (n + 1)) (A121763 (n + 1))) (A014574 (n + 1))

end

end A172054.P4068393275740401505

namespace A172054

/-- `(A121765(n+1)%A121763(n+1))%A014574(n+1)` -/
def P4068393275740401505.Spec : Prop :=
  ∀ n, P4068393275740401505.a n = A172054 (n + 1)

end A172054

/-! ## A172054.P9675054874730790452

`A008615(A121764(n+1))-A121763(n+1)`
-/

namespace A172054.P9675054874730790452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A121764 (n + 1)).toNat - A121763 (n + 1)

end

end A172054.P9675054874730790452

namespace A172054

/-- `A008615(A121764(n+1))-A121763(n+1)` -/
def P9675054874730790452.Spec : Prop :=
  ∀ n, P9675054874730790452.a n = A172054 (n + 1)

end A172054

/-!
# A172055: n-th number k such that 6*k-1 is composite while 6*k+1 is prime plus n-th number m such that 6*m-1 is prime while 6*m+1 is composite.

The programs for A172055, the canonical program `A172055.P1149678872916383177` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172055 has offset 1).

The definition of A172055 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121763, A121765, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A172055.P1149678872916383177

`A121765(n+1)+A121763(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A172055

/-- `A121765(n+1)+A121763(n+1)` -/
def P1149678872916383177.Spec : Prop :=
  ∀ n, P1149678872916383177.a n = A172055 (n + 1)

theorem P1149678872916383177.correct : P1149678872916383177.Spec := by
  intro n
  simp only [A172055, Nat.add_sub_cancel]

end A172055

/-! ## A172055.P1394065584244711346

`A172054(n+1)+2*A121763(n+1)`
-/

namespace A172055.P1394065584244711346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172054 (n + 1) + 2 * A121763 (n + 1)

end

end A172055.P1394065584244711346

namespace A172055

/-- `A172054(n+1)+2*A121763(n+1)` -/
def P1394065584244711346.Spec : Prop :=
  ∀ n, P1394065584244711346.a n = A172055 (n + 1)

theorem P1394065584244711346.correct : P1394065584244711346.Spec := by
  intro n
  simp only [A172055, Nat.add_sub_cancel, A172055.P1394065584244711346.a, A172055.P1149678872916383177.a, A121763, A121763.P355992002445267932.a, A121765, A121765.P17102494836504524144.a, A172054, A172054.P10035823565765016099.a, A121762, A121762.P7258193871153872247.f1, A121762.P7258193871153872247.a, A121764, A121764.P18179720075456038304.f1, A121764.P18179720075456038304.a, A107472, A107472.P3955423761168080437.f1, A107472.P3955423761168080437.a, A005171, A005171.P15860856746370777121.a, A107323, A107323.P12283925054271668122.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A172055

/-! ## A172055.P15559070894674707101

`2*A121765(n+1)-A172054(n+1)`
-/

namespace A172055.P15559070894674707101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121765 (n + 1) - A172054 (n + 1)

end

end A172055.P15559070894674707101

namespace A172055

/-- `2*A121765(n+1)-A172054(n+1)` -/
def P15559070894674707101.Spec : Prop :=
  ∀ n, P15559070894674707101.a n = A172055 (n + 1)

theorem P15559070894674707101.correct : P15559070894674707101.Spec := by
  intro n
  simp only [A172055, Nat.add_sub_cancel, A172055.P15559070894674707101.a, A172055.P1149678872916383177.a, A121763, A121763.P355992002445267932.a, A121765, A121765.P17102494836504524144.a, A172054, A172054.P10035823565765016099.a, A121762, A121762.P7258193871153872247.f1, A121762.P7258193871153872247.a, A121764, A121764.P18179720075456038304.f1, A121764.P18179720075456038304.a, A107472, A107472.P3955423761168080437.f1, A107472.P3955423761168080437.a, A005171, A005171.P15860856746370777121.a, A107323, A107323.P12283925054271668122.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A172055

/-! ## A172055.P7985805075299317613

`(A121764(n+1)+A121762(n+1))/6`
-/

namespace A172055.P7985805075299317613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121764 (n + 1) + A121762 (n + 1) : ℚ) / 6

end

end A172055.P7985805075299317613

namespace A172055

/-- `(A121764(n+1)+A121762(n+1))/6` -/
def P7985805075299317613.Spec : Prop :=
  ∀ n, P7985805075299317613.a n = (A172055 (n + 1) : ℚ)

end A172055

/-! ## A172055.P650456555496299680

`(A121763(n+1)*A121764(n+1))%A121762(n+1)`
-/

namespace A172055.P650456555496299680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121763 (n + 1) * A121764 (n + 1)) (A121762 (n + 1))

end

end A172055.P650456555496299680

namespace A172055

/-- `(A121763(n+1)*A121764(n+1))%A121762(n+1)` -/
def P650456555496299680.Spec : Prop :=
  ∀ n, P650456555496299680.a n = A172055 (n + 1)

end A172055

/-! ## A172055.P1781916304312936095

`A121763(n+1)+A008615(A121764(n+1))`
-/

namespace A172055.P1781916304312936095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121763 (n + 1) + A008615 (A121764 (n + 1)).toNat

end

end A172055.P1781916304312936095

namespace A172055

/-- `A121763(n+1)+A008615(A121764(n+1))` -/
def P1781916304312936095.Spec : Prop :=
  ∀ n, P1781916304312936095.a n = A172055 (n + 1)

end A172055

/-!
# A172056: Primes p such that 2*p+-1 and 2*p+-3 are all composites.

The programs for A172056, the canonical program `A172056.P9937115509810461680` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172056 has offset 1).

The definition of A172056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172056.P9937115509810461680

`p?[lt[8, A175851(2*n+3)]]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A172056

/-- `p?[lt[8, A175851(2*n+3)]]` -/
def P9937115509810461680.Spec : Prop :=
  ∀ n, (P9937115509810461680.a n : ℤ) = A172056 (n + 1)

theorem P9937115509810461680.correct : P9937115509810461680.Spec := by
  intro n
  simp only [A172056, Nat.add_sub_cancel]

end A172056

/-! ## A172056.P14210910088962327684

`∩[A068497(n+1), A172256(n+1)]`
-/

namespace A172056.P14210910088962327684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172056.P14210910088962327684

namespace A172056

/-- `∩[A068497(n+1), A172256(n+1)]` -/
def P14210910088962327684.Spec : Prop :=
  ∀ n, (P14210910088962327684.a n : ℤ) = A172056 (n + 1)

end A172056

/-! ## A172056.P9230059965408938450

`∩[A104278(n+1), A172256(n+1)]`
-/

namespace A172056.P9230059965408938450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172056.P9230059965408938450

namespace A172056

/-- `∩[A104278(n+1), A172256(n+1)]` -/
def P9230059965408938450.Spec : Prop :=
  ∀ n, (P9230059965408938450.a n : ℤ) = A172056 (n + 1)

end A172056

/-! ## A172056.P17559927044350876806

`p?[A072480(A167776(n+1))]`
-/

namespace A172056.P17559927044350876806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A167776 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172056.P17559927044350876806

namespace A172056

/-- `p?[A072480(A167776(n+1))]` -/
def P17559927044350876806.Spec : Prop :=
  ∀ n, P17559927044350876806.a n = A172056 (n + 1)

end A172056

/-! ## A172056.P8629133055038123714

`record[A006530(A167776(n+3))]`
-/

namespace A172056.P8629133055038123714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A167776 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172056.P8629133055038123714

namespace A172056

/-- `record[A006530(A167776(n+3))]` -/
def P8629133055038123714.Spec : Prop :=
  ∀ n, P8629133055038123714.a n = A172056 (n + 1)

end A172056

/-! ## A172056.P1776693589791221272

`p?[lt[7, A049653(n+2)]]`
-/

namespace A172056.P1776693589791221272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049653 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A172056.P1776693589791221272

namespace A172056

/-- `p?[lt[7, A049653(n+2)]]` -/
def P1776693589791221272.Spec : Prop :=
  ∀ n, (P1776693589791221272.a n : ℤ) = A172056 (n + 1)

end A172056

/-! ## A172056.P1947658486430093925

`∩[A068497(n+1), A130771(n+1)]`
-/

namespace A172056.P1947658486430093925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172056.P1947658486430093925

namespace A172056

/-- `∩[A068497(n+1), A130771(n+1)]` -/
def P1947658486430093925.Spec : Prop :=
  ∀ n, (P1947658486430093925.a n : ℤ) = A172056 (n + 1)

end A172056

/-! ## A172056.P1705963500565279393

`p?[lt[1, A051700(A051700(2*n))]]`
-/

namespace A172056.P1705963500565279393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A051700 (2 * n)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A172056.P1705963500565279393

namespace A172056

/-- `p?[lt[1, A051700(A051700(2*n))]]` -/
def P1705963500565279393.Spec : Prop :=
  ∀ n, (P1705963500565279393.a n : ℤ) = A172056 (n + 1)

end A172056

/-! ## A172056.P3483688388865066607

`record[A014673(A167776(2*n-(n-3)))]`
-/

namespace A172056.P3483688388865066607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A167776 ((2 * n : ℤ) - ((n : ℤ) - 3)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172056.P3483688388865066607

namespace A172056

/-- `record[A014673(A167776(2*n-(n-3)))]` -/
def P3483688388865066607.Spec : Prop :=
  ∀ n, P3483688388865066607.a n = A172056 (n + 1)

end A172056

/-! ## A172056.P3231111988878980234

`p?[lt[9, A049711(2*n+5)]]`
-/

namespace A172056.P3231111988878980234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (2 * n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A172056.P3231111988878980234

namespace A172056

/-- `p?[lt[9, A049711(2*n+5)]]` -/
def P3231111988878980234.Spec : Prop :=
  ∀ n, (P3231111988878980234.a n : ℤ) = A172056 (n + 1)

end A172056

/-!
# A172057: Primes p such that either p-3 or p-2 (but not both) is/are prime.

The programs for A172057, the canonical program `A172057.P13327719943038495945` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172057 has offset 1).

The definition of A172057 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006512, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A172057.P13327719943038495945

`A006512(n+2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A172057

/-- `A006512(n+2)` -/
def P13327719943038495945.Spec : Prop :=
  ∀ n, P13327719943038495945.a n = A172057 (n + 1)

theorem P13327719943038495945.correct : P13327719943038495945.Spec := by
  intro n
  simp only [A172057, Nat.add_sub_cancel]

end A172057

/-! ## A172057.P5640910249820139565

`2+A001359(n+2)`
-/

namespace A172057.P5640910249820139565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A001359 (n + 2)

end

end A172057.P5640910249820139565

namespace A172057

/-- `2+A001359(n+2)` -/
def P5640910249820139565.Spec : Prop :=
  ∀ n, P5640910249820139565.a n = A172057 (n + 1)

end A172057

/-! ## A172057.P17495931565725335822

`∑[A053319(n+1)]+5`
-/

namespace A172057.P17495931565725335822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A172057.P17495931565725335822

namespace A172057

/-- `∑[A053319(n+1)]+5` -/
def P17495931565725335822.Spec : Prop :=
  ∀ n, P17495931565725335822.a n = A172057 (n + 1)

end A172057

/-! ## A172057.P9320408666994462865

`2*A040040(n+2)+1`
-/

namespace A172057.P9320408666994462865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040040 (n + 2) + 1

end

end A172057.P9320408666994462865

namespace A172057

/-- `2*A040040(n+2)+1` -/
def P9320408666994462865.Spec : Prop :=
  ∀ n, P9320408666994462865.a n = A172057 (n + 1)

end A172057

/-! ## A172057.P10314076910989830345

`3*A167379(n+1)+1`
-/

namespace A172057.P10314076910989830345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A167379 (n + 1) + 1

end

end A172057.P10314076910989830345

namespace A172057

/-- `3*A167379(n+1)+1` -/
def P10314076910989830345.Spec : Prop :=
  ∀ n, P10314076910989830345.a n = A172057 (n + 1)

end A172057

/-! ## A172057.P12846592966690939510

`3*(A177139(n+1)-1)+1`
-/

namespace A172057.P12846592966690939510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A177139 (n + 1) - 1) + 1

end

end A172057.P12846592966690939510

namespace A172057

/-- `3*(A177139(n+1)-1)+1` -/
def P12846592966690939510.Spec : Prop :=
  ∀ n, P12846592966690939510.a n = A172057 (n + 1)

end A172057

/-! ## A172057.P1980742660607313372

`3*2*A002822(n+1)+1`
-/

namespace A172057.P1980742660607313372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (2 * A002822 (n + 1)) + 1

end

end A172057.P1980742660607313372

namespace A172057

/-- `3*2*A002822(n+1)+1` -/
def P1980742660607313372.Spec : Prop :=
  ∀ n, P1980742660607313372.a n = A172057 (n + 1)

end A172057

/-! ## A172057.P3852579994512473967

`A242757(n+1)+A112414(n)`
-/

namespace A172057.P3852579994512473967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242757 (n + 1) + A112414 n

end

end A172057.P3852579994512473967

namespace A172057

/-- `A242757(n+1)+A112414(n)` -/
def P3852579994512473967.Spec : Prop :=
  ∀ n, P3852579994512473967.a n = A172057 (n + 1)

theorem P3852579994512473967.correct : P3852579994512473967.Spec := by
  intro n
  simp only [A172057, Nat.add_sub_cancel, A172057.P3852579994512473967.a, A172057.P13327719943038495945.a, A006512, A006512.P8157243218962949380.a, A112414, A112414.P1084450287602083744.a, A242757, A242757.P13009663021335079436.a, A001359, A001359.P8865495035699438537.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A172057

/-! ## A172057.P3373740024728320642

`A135283(n+1)-A108605(n+1)`
-/

namespace A172057.P3373740024728320642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135283 (n + 1) - A108605 (n + 1)

end

end A172057.P3373740024728320642

namespace A172057

/-- `A135283(n+1)-A108605(n+1)` -/
def P3373740024728320642.Spec : Prop :=
  ∀ n, P3373740024728320642.a n = A172057 (n + 1)

end A172057

/-! ## A172057.P371114344185199437

`A176810(n+1)-A135284(n+1)`
-/

namespace A172057.P371114344185199437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176810 (n + 1) - A135284 (n + 1)

end

end A172057.P371114344185199437

namespace A172057

/-- `A176810(n+1)-A135284(n+1)` -/
def P371114344185199437.Spec : Prop :=
  ∀ n, P371114344185199437.a n = A172057 (n + 1)

end A172057

/-! ## A172057.P5306097360147562252

`sqrt(A108604(n+2))`
-/

namespace A172057.P5306097360147562252
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A108604 (n + 2) : ℝ)

end

end A172057.P5306097360147562252

namespace A172057

/-- `sqrt(A108604(n+2))` -/
def P5306097360147562252.Spec : Prop :=
  ∀ n, P5306097360147562252.a n = (A172057 (n + 1) : ℝ)

end A172057

/-! ## A172057.P2779128570120974846

`Δ[A086168(n+1)]`
-/

namespace A172057.P2779128570120974846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172057.P2779128570120974846

namespace A172057

/-- `Δ[A086168(n+1)]` -/
def P2779128570120974846.Spec : Prop :=
  ∀ n, P2779128570120974846.a n = A172057 (n + 1)

end A172057

/-! ## A172057.P14755361068802476492

`1+A014574(n+2)`
-/

namespace A172057.P14755361068802476492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A014574 (n + 2)

end

end A172057.P14755361068802476492

namespace A172057

/-- `1+A014574(n+2)` -/
def P14755361068802476492.Spec : Prop :=
  ∀ n, P14755361068802476492.a n = A172057 (n + 1)

end A172057

/-! ## A172057.P18344563194230188667

`A111166(n+2)+2`
-/

namespace A172057.P18344563194230188667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 2) + 2

end

end A172057.P18344563194230188667

namespace A172057

/-- `A111166(n+2)+2` -/
def P18344563194230188667.Spec : Prop :=
  ∀ n, P18344563194230188667.a n = A172057 (n + 1)

end A172057

/-! ## A172057.P3575754379422806555

`A144834(n+2)+3`
-/

namespace A172057.P3575754379422806555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 2) + 3

end

end A172057.P3575754379422806555

namespace A172057

/-- `A144834(n+2)+3` -/
def P3575754379422806555.Spec : Prop :=
  ∀ n, P3575754379422806555.a n = A172057 (n + 1)

theorem P3575754379422806555.correct : P3575754379422806555.Spec := by
  intro n
  simp only [A172057, Nat.add_sub_cancel, A172057.P3575754379422806555.a, A172057.P13327719943038495945.a, A006512, A006512.P8157243218962949380.a, A144834, A144834.P8121320371945032170.a, A001359, A001359.P8865495035699438537.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A172057

/-! ## A172057.P10099662882218491525

`A176810(n+2)/2`
-/

namespace A172057.P10099662882218491525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176810 (n + 2) : ℚ) / 2

end

end A172057.P10099662882218491525

namespace A172057

/-- `A176810(n+2)/2` -/
def P10099662882218491525.Spec : Prop :=
  ∀ n, P10099662882218491525.a n = (A172057 (n + 1) : ℚ)

theorem P10099662882218491525.correct : P10099662882218491525.Spec := by
  intro n
  simp only [A172057, Nat.add_sub_cancel, A172057.P10099662882218491525.a, A172057.P13327719943038495945.a, A006512, A006512.P8157243218962949380.a, A176810, A176810.P15699924405240602414.a, A001359, A001359.P8865495035699438537.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A172057

/-! ## A172057.P6640737375505584119

`ceil(sqrt(A135286(n+2)))`
-/

namespace A172057.P6640737375505584119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A135286 (n + 2) : ℝ)⌉

end

end A172057.P6640737375505584119

namespace A172057

/-- `ceil(sqrt(A135286(n+2)))` -/
def P6640737375505584119.Spec : Prop :=
  ∀ n, P6640737375505584119.a n = A172057 (n + 1)

end A172057

/-! ## A172057.P9215193366450143328

`sqrt(A075369(n+2))+1`
-/

namespace A172057.P9215193366450143328
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075369 (n + 2) : ℝ) + 1

end

end A172057.P9215193366450143328

namespace A172057

/-- `sqrt(A075369(n+2))+1` -/
def P9215193366450143328.Spec : Prop :=
  ∀ n, P9215193366450143328.a n = (A172057 (n + 1) : ℝ)

end A172057

/-! ## A172057.P1323229005999234336

`Δ[A086167(n+1)]+2`
-/

namespace A172057.P1323229005999234336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A172057.P1323229005999234336

namespace A172057

/-- `Δ[A086167(n+1)]+2` -/
def P1323229005999234336.Spec : Prop :=
  ∀ n, P1323229005999234336.a n = A172057 (n + 1)

end A172057

/-! ## A172057.P3145061569275417883

`A067829(n+3)`
-/

namespace A172057.P3145061569275417883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 3)

end

end A172057.P3145061569275417883

namespace A172057

/-- `A067829(n+3)` -/
def P3145061569275417883.Spec : Prop :=
  ∀ n, P3145061569275417883.a n = A172057 (n + 1)

end A172057

/-!
# A172058: Prime numbers p such that every prime divisor of p-1 is a primitive root modulo p.

The programs for A172058, there is no canonical definition to state claims against.
-/

/-! ## A172058.P18024974080400074460

`p?[record[A292285(n+2)+1]]`
-/

namespace A172058.P18024974080400074460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292285 (n + 2) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172058.P18024974080400074460

/-! ## A172058.P13781167394087428025

`record[gcd(A292285(n+2)+1, A006094(n+1))]`
-/

namespace A172058.P13781167394087428025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A292285 (n + 2) + 1) (A006094 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172058.P13781167394087428025

/-! ## A172058.P749814091746595917

`record[A020639(record[A292285(n+2)+1])]`
-/

namespace A172058.P749814091746595917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292285 (n + 2) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172058.P749814091746595917

/-! ## A172058.P15514552685681555727

`p?[A004442(record[A292285(n+2)])]`
-/

namespace A172058.P15514552685681555727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292285 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172058.P15514552685681555727

/-! ## A172058.P9464686669753316735

`record[A014963(record[A292285(n+2)+1])]`
-/

namespace A172058.P9464686669753316735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292285 (n + 2) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172058.P9464686669753316735

/-!
# A172059: Partial sums of A003459.

The programs for A172059, there is no canonical definition to state claims against.
-/

/-! ## A172059.P12511980206656365631

`∑[A003459(n+1)]`
-/

namespace A172059.P12511980206656365631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172059.P12511980206656365631

/-! ## A172059.P1434705051497459264

`∑[record[A003459(A193738(n))]]`
-/

namespace A172059.P1434705051497459264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003459 (A193738 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172059.P1434705051497459264

/-! ## A172059.P1099511247888678226

`∑[record[A003459(A193739(n))]]`
-/

namespace A172059.P1099511247888678226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003459 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172059.P1099511247888678226

/-! ## A172059.P11355744193651915361

`∑[record[A003459(A274640(n))]]`
-/

namespace A172059.P11355744193651915361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003459 (A274640 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172059.P11355744193651915361

/-! ## A172059.P13137667560021487704

`∑[record[A003459(A286532(n))]]`
-/

namespace A172059.P13137667560021487704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003459 (A286532 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172059.P13137667560021487704

/-!
# A172060: The number of returns to the origin in all possible one-dimensional walks of length 2n.

The programs for A172060, the canonical program `A172060.P5248690933070459008` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172060 has offset 0).

The definition of A172060 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172060.P5248690933070459008

`A002457(n)-A000302(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A172060

/-- `A002457(n)-A000302(n)` -/
def P5248690933070459008.Spec : Prop :=
  ∀ n, P5248690933070459008.a n = A172060 n

theorem P5248690933070459008.correct : P5248690933070459008.Spec := by
  intro n
  simp only [A172060]

end A172060

/-! ## A172060.P12821581485485433633

`4*a(n-1)+C(2*n, n)` with `a(0)=0`
-/

namespace A172060.P12821581485485433633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  4 * a (n - 1) + Nat.choose (2 * n) n

end

end A172060.P12821581485485433633

namespace A172060

/-- `4*a(n-1)+C(2*n, n)` -/
def P12821581485485433633.Spec : Prop :=
  ∀ n, (P12821581485485433633.a n : ℤ) = A172060 n

end A172060

/-! ## A172060.P7538788409027127273

`(2*n+1)!/n!²-4^n`
-/

namespace A172060.P7538788409027127273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n + 1) : ℚ) / (Nat.factorial n ^ 2 : ℚ) - (4 ^ n : ℚ)

end

end A172060.P7538788409027127273

namespace A172060

/-- `(2*n+1)!/n!²-4^n` -/
def P7538788409027127273.Spec : Prop :=
  ∀ n, P7538788409027127273.a n = (A172060 n : ℚ)

end A172060

/-! ## A172060.P7134218983449121432

`A107373(2*(n+1))`
-/

namespace A172060.P7134218983449121432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (2 * (n + 1))

end

end A172060.P7134218983449121432

namespace A172060

/-- `A107373(2*(n+1))` -/
def P7134218983449121432.Spec : Prop :=
  ∀ n, P7134218983449121432.a n = A172060 n

end A172060

/-! ## A172060.P16974163987683749693

`2*A107373(Δ[n²])`
-/

namespace A172060.P16974163987683749693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107373 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A172060.P16974163987683749693

namespace A172060

/-- `2*A107373(Δ[n²])` -/
def P16974163987683749693.Spec : Prop :=
  ∀ n, P16974163987683749693.a n = A172060 n

end A172060

/-! ## A172060.P3664558130616950793

`record[A056040(n+1)-2^n]`
-/

namespace A172060.P3664558130616950793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (n + 1) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172060.P3664558130616950793

namespace A172060

/-- `record[A056040(n+1)-2^n]` -/
def P3664558130616950793.Spec : Prop :=
  ∀ n, P3664558130616950793.a n = A172060 n

end A172060

/-! ## A172060.P15750462333922210585

`record[A107373(n^(n%2)+1)]`
-/

namespace A172060.P15750462333922210585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (n ^ (n % 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172060.P15750462333922210585

namespace A172060

/-- `record[A107373(n^(n%2)+1)]` -/
def P15750462333922210585.Spec : Prop :=
  ∀ n, P15750462333922210585.a n = A172060 n

end A172060

/-! ## A172060.P5488810303863826526

`A056040(2*n+1)-4^n`
-/

namespace A172060.P5488810303863826526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (2 * n + 1) - (4 ^ n : ℤ)

end

end A172060.P5488810303863826526

namespace A172060

/-- `A056040(2*n+1)-4^n` -/
def P5488810303863826526.Spec : Prop :=
  ∀ n, P5488810303863826526.a n = A172060 n

end A172060

/-! ## A172060.P7718293677761169520

`(2*n+1)*A000984(n)-4^n`
-/

namespace A172060.P7718293677761169520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000984 n - (4 ^ n : ℤ)

end

end A172060.P7718293677761169520

namespace A172060

/-- `(2*n+1)*A000984(n)-4^n` -/
def P7718293677761169520.Spec : Prop :=
  ∀ n, P7718293677761169520.a n = A172060 n

theorem P7718293677761169520.correct : P7718293677761169520.Spec := by
  intro n
  simp only [A172060, Nat.add_sub_cancel, A172060.P7718293677761169520.a, A172060.P5248690933070459008.a, A000302, A000302.P5166485833484575275.a, A000984, A000984.P7946844122574426130.a, A002457, A002457.P9253550667326779954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A172060

/-! ## A172060.P11386770056440233271

`A000108(n+1)*∑[n+1]-4^n`
-/

namespace A172060.P11386770056440233271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (4 ^ n : ℤ)

end

end A172060.P11386770056440233271

namespace A172060

/-- `A000108(n+1)*∑[n+1]-4^n` -/
def P11386770056440233271.Spec : Prop :=
  ∀ n, P11386770056440233271.a n = A172060 n

end A172060

/-! ## A172060.P7005876543424250289

`4*a(n-1)+(n+1)*A000108(n)` with `a(0)=0`
-/

namespace A172060.P7005876543424250289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 * a (n - 1) + (n + 1 : ℤ) * A000108 n

end

end A172060.P7005876543424250289

namespace A172060

/-- `4*a(n-1)+(n+1)*A000108(n)` -/
def P7005876543424250289.Spec : Prop :=
  ∀ n, P7005876543424250289.a n = A172060 n

end A172060

/-! ## A172060.P8640421603013293765

`A068552(n)+A000984(n)`
-/

namespace A172060.P8640421603013293765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068552 n + A000984 n

end

end A172060.P8640421603013293765

namespace A172060

/-- `A068552(n)+A000984(n)` -/
def P8640421603013293765.Spec : Prop :=
  ∀ n, P8640421603013293765.a n = A172060 n

theorem P8640421603013293765.correct : P8640421603013293765.Spec := by
  intro n
  simp only [A172060, Nat.add_sub_cancel, A172060.P8640421603013293765.a, A172060.P5248690933070459008.a, A000302, A000302.P5166485833484575275.a, A000984, A000984.P7946844122574426130.a, A002457, A002457.P9253550667326779954.a, A068552, A068552.P18101198138906414966.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A172060

/-! ## A172060.P12761436084591344270

`A296665(n)-A000984(n)`
-/

namespace A172060.P12761436084591344270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296665 n - A000984 n

end

end A172060.P12761436084591344270

namespace A172060

/-- `A296665(n)-A000984(n)` -/
def P12761436084591344270.Spec : Prop :=
  ∀ n, P12761436084591344270.a n = A172060 n

end A172060

/-! ## A172060.P12124668366268996380

`A296770(n)-A001700(n)`
-/

namespace A172060.P12124668366268996380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296770 n - A001700 n

end

end A172060.P12124668366268996380

namespace A172060

/-- `A296770(n)-A001700(n)` -/
def P12124668366268996380.Spec : Prop :=
  ∀ n, P12124668366268996380.a n = A172060 n

theorem P12124668366268996380.correct : P12124668366268996380.Spec := by
  intro n
  simp only [A172060, Nat.add_sub_cancel, A172060.P12124668366268996380.a, A172060.P5248690933070459008.a, A000302, A000302.P5166485833484575275.a, A001700, A001700.P11212155124506223364.a, A002457, A002457.P9253550667326779954.a, A296770, A296770.P4976538490288116259.a, A000984, A000984.P7946844122574426130.a, A008549, A008549.P3567318639937649678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A172060

/-! ## A172060.P7876293657382838303

`A001316(n)*A173384(n)`
-/

namespace A172060.P7876293657382838303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A173384 n

end

end A172060.P7876293657382838303

namespace A172060

/-- `A001316(n)*A173384(n)` -/
def P7876293657382838303.Spec : Prop :=
  ∀ n, P7876293657382838303.a n = A172060 n

end A172060

/-! ## A172060.P8742498123210934259

`A002457(n)-A000079(n)²`
-/

namespace A172060.P8742498123210934259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n - A000079 n ^ 2

end

end A172060.P8742498123210934259

namespace A172060

/-- `A002457(n)-A000079(n)²` -/
def P8742498123210934259.Spec : Prop :=
  ∀ n, P8742498123210934259.a n = A172060 n

end A172060

/-! ## A172060.P3405225593747426767

`A139262(n+1)+A008549(n)`
-/

namespace A172060.P3405225593747426767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139262 (n + 1) + A008549 n

end

end A172060.P3405225593747426767

namespace A172060

/-- `A139262(n+1)+A008549(n)` -/
def P3405225593747426767.Spec : Prop :=
  ∀ n, P3405225593747426767.a n = A172060 n

end A172060

/-! ## A172060.P15538024026233501655

`A002457(n)-A000079(2*n)`
-/

namespace A172060.P15538024026233501655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n - A000079 (2 * n)

end

end A172060.P15538024026233501655

namespace A172060

/-- `A002457(n)-A000079(2*n)` -/
def P15538024026233501655.Spec : Prop :=
  ∀ n, P15538024026233501655.a n = A172060 n

end A172060

/-! ## A172060.P12349998977306289740

`A068552(n)+A028329(n)/2`
-/

namespace A172060.P12349998977306289740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068552 n : ℚ) + (A028329 n : ℚ) / 2

end

end A172060.P12349998977306289740

namespace A172060

/-- `A068552(n)+A028329(n)/2` -/
def P12349998977306289740.Spec : Prop :=
  ∀ n, P12349998977306289740.a n = (A172060 n : ℚ)

theorem P12349998977306289740.correct : P12349998977306289740.Spec := by
  intro n
  simp only [A172060, Nat.add_sub_cancel, A172060.P12349998977306289740.a, A172060.P5248690933070459008.a, A000302, A000302.P5166485833484575275.a, A002457, A002457.P9253550667326779954.a, A028329, A028329.P2723209719397665586.a, A068552, A068552.P18101198138906414966.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A172060

/-! ## A172060.P4819318806160013848

`A296663(2*n)-A000984(n)`
-/

namespace A172060.P4819318806160013848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296663 (2 * n) - A000984 n

end

end A172060.P4819318806160013848

namespace A172060

/-- `A296663(2*n)-A000984(n)` -/
def P4819318806160013848.Spec : Prop :=
  ∀ n, P4819318806160013848.a n = A172060 n

end A172060

/-!
# A172061: Expansion of (2/(3*sqrt(1-4*z)-1+4*z))*((1-sqrt(1-4*z))/(2*z))^k with k=4.

The programs for A172061, the canonical program `A172061.P9656388105380330391` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172061 has offset 0).

The definition of A172061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172061.P7872553601053912175

`A172025(n+1)-A014301(n+3)`
-/

namespace A172061.P7872553601053912175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172025 (n + 1) - A014301 (n + 3)

end

end A172061.P7872553601053912175

namespace A172061

/-- `A172025(n+1)-A014301(n+3)` -/
def P7872553601053912175.Spec : Prop :=
  ∀ n, P7872553601053912175.a n = A172061 n

end A172061

/-! ## A172061.P9656388105380330391

`A026641(n+2)-A000958(n+3)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A172061

/-- `A026641(n+2)-A000958(n+3)` -/
def P9656388105380330391.Spec : Prop :=
  ∀ n, P9656388105380330391.a n = A172061 n

theorem P9656388105380330391.correct : P9656388105380330391.Spec := by
  intro n
  simp only [A172061]

end A172061

/-! ## A172061.P6430303149425541558

`(A172025(n)+A002694(n+2))/2`
-/

namespace A172061.P6430303149425541558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172025 n + A002694 (n + 2) : ℚ) / 2

end

end A172061.P6430303149425541558

namespace A172061

/-- `(A172025(n)+A002694(n+2))/2` -/
def P6430303149425541558.Spec : Prop :=
  ∀ n, P6430303149425541558.a n = (A172061 n : ℚ)

end A172061

/-! ## A172061.P9481594809653176650

`A172025(round(sqrt(n²+1))+1)%A014301(n+3)`
-/

namespace A172061.P9481594809653176650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172025 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat) (A014301 (n + 3))

end

end A172061.P9481594809653176650

namespace A172061

/-- `A172025(round(sqrt(n²+1))+1)%A014301(n+3)` -/
def P9481594809653176650.Spec : Prop :=
  ∀ n, P9481594809653176650.a n = A172061 n

end A172061

/-! ## A172061.P5805432562961219392

`A172025(n+1)-(A172025(n)+A014300(n+2))`
-/

namespace A172061.P5805432562961219392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172025 (n + 1) - (A172025 n + A014300 (n + 2))

end

end A172061.P5805432562961219392

namespace A172061

/-- `A172025(n+1)-(A172025(n)+A014300(n+2))` -/
def P5805432562961219392.Spec : Prop :=
  ∀ n, P5805432562961219392.a n = A172061 n

end A172061

/-! ## A172061.P14086156802475015475

`(A006659(n+1)+A001558(n))/3`
-/

namespace A172061.P14086156802475015475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006659 (n + 1) + A001558 n : ℚ) / 3

end

end A172061.P14086156802475015475

namespace A172061

/-- `(A006659(n+1)+A001558(n))/3` -/
def P14086156802475015475.Spec : Prop :=
  ∀ n, P14086156802475015475.a n = (A172061 n : ℚ)

end A172061

/-! ## A172061.P9718418205587444622

`A395545(∑[4*(n+1)])`
-/

namespace A172061.P9718418205587444622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395545 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172061.P9718418205587444622

namespace A172061

/-- `A395545(∑[4*(n+1)])` -/
def P9718418205587444622.Spec : Prop :=
  ∀ n, P9718418205587444622.a n = A172061 n

end A172061

/-! ## A172061.P18025812693248877122

`A035317(2*(n+1)*(n+3))`
-/

namespace A172061.P18025812693248877122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (2 * ((n + 1) * (n + 3)))

end

end A172061.P18025812693248877122

namespace A172061

/-- `A035317(2*(n+1)*(n+3))` -/
def P18025812693248877122.Spec : Prop :=
  ∀ n, P18025812693248877122.a n = A172061 n

end A172061

/-! ## A172061.P735327533235770971

`A128176((n+1)²+(n+3)²)`
-/

namespace A172061.P735327533235770971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128176 ((n + 1) ^ 2 + (n + 3) ^ 2)

end

end A172061.P735327533235770971

namespace A172061

/-- `A128176((n+1)²+(n+3)²)` -/
def P735327533235770971.Spec : Prop :=
  ∀ n, P735327533235770971.a n = A172061 n

end A172061

/-! ## A172061.P13244396969774915955

`A080242(A033537(n+1))`
-/

namespace A172061.P13244396969774915955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080242 (A033537 (n + 1)).toNat

end

end A172061.P13244396969774915955

namespace A172061

/-- `A080242(A033537(n+1))` -/
def P13244396969774915955.Spec : Prop :=
  ∀ n, P13244396969774915955.a n = A172061 n

end A172061

/-!
# A172062: Expansion of (2/(3*sqrt(1-4*z)-1+4*z))*((1-sqrt(1-4*z))/(2*z))^k with k=5.

The programs for A172062, the canonical program `A172062.P6130199588010829759` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172062 has offset 0).

The definition of A172062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172062.P17997499933516490973

`A014300(n+3)-A104629(n+2)`
-/

namespace A172062.P17997499933516490973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014300 (n + 3) - A104629 (n + 2)

end

end A172062.P17997499933516490973

namespace A172062

/-- `A014300(n+3)-A104629(n+2)` -/
def P17997499933516490973.Spec : Prop :=
  ∀ n, P17997499933516490973.a n = A172062 n

end A172062

/-! ## A172062.P6130199588010829759

`∑[A001791(n+2)-A001558(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A172062

/-- `∑[A001791(n+2)-A001558(n+1)]` -/
def P6130199588010829759.Spec : Prop :=
  ∀ n, P6130199588010829759.a n = A172062 n

theorem P6130199588010829759.correct : P6130199588010829759.Spec := by
  intro n
  simp only [A172062]

end A172062

/-! ## A172062.P4900985493449570112

`Δ[A172061(n)]-A014301(n+3)`
-/

namespace A172062.P4900985493449570112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A014301 (n + 3)

end

end A172062.P4900985493449570112

namespace A172062

/-- `Δ[A172061(n)]-A014301(n+3)` -/
def P4900985493449570112.Spec : Prop :=
  ∀ n, P4900985493449570112.a n = A172062 n

end A172062

/-! ## A172062.P10237835472962566200

`A172061(n+1)-A172025(n+1)`
-/

namespace A172062.P10237835472962566200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172061 (n + 1) - A172025 (n + 1)

end

end A172062.P10237835472962566200

namespace A172062

/-- `A172061(n+1)-A172025(n+1)` -/
def P10237835472962566200.Spec : Prop :=
  ∀ n, P10237835472962566200.a n = A172062 n

end A172062

/-! ## A172062.P4750800097992599190

`(A002694(n+3)-A172025(n+1))/2`
-/

namespace A172062.P4750800097992599190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002694 (n + 3) - A172025 (n + 1) : ℚ) / 2

end

end A172062.P4750800097992599190

namespace A172062

/-- `(A002694(n+3)-A172025(n+1))/2` -/
def P4750800097992599190.Spec : Prop :=
  ∀ n, P4750800097992599190.a n = (A172062 n : ℚ)

end A172062

/-! ## A172062.P7797410371907735363

`A035317(A090288(n+1))`
-/

namespace A172062.P7797410371907735363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (A090288 (n + 1)).toNat

end

end A172062.P7797410371907735363

namespace A172062

/-- `A035317(A090288(n+1))` -/
def P7797410371907735363.Spec : Prop :=
  ∀ n, P7797410371907735363.a n = A172062 n

end A172062

/-! ## A172062.P14248077701056415367

`A059259(A268581(n+1))`
-/

namespace A172062.P14248077701056415367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 (A268581 (n + 1)).toNat

end

end A172062.P14248077701056415367

namespace A172062

/-- `A059259(A268581(n+1))` -/
def P14248077701056415367.Spec : Prop :=
  ∀ n, P14248077701056415367.a n = A172062 n

end A172062

/-! ## A172062.P16213102171913609669

`record[A112465(A294774(n)-2)]`
-/

namespace A172062.P16213102171913609669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (A294774 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172062.P16213102171913609669

namespace A172062

/-- `record[A112465(A294774(n)-2)]` -/
def P16213102171913609669.Spec : Prop :=
  ∀ n, P16213102171913609669.a n = A172062 n

end A172062

/-! ## A172062.P8727075414816750096

`A112465(A099776(n+3)+2)`
-/

namespace A172062.P8727075414816750096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (A099776 (n + 3) + 2).toNat

end

end A172062.P8727075414816750096

namespace A172062

/-- `A112465(A099776(n+3)+2)` -/
def P8727075414816750096.Spec : Prop :=
  ∀ n, P8727075414816750096.a n = A172062 n

end A172062

/-!
# A172063: Expansion of (2/(3*sqrt(1-4*z)-1+4*z))*((1-sqrt(1-4*z))/(2*z))^k with k=6.

The programs for A172063, the canonical program `A172063.P11418259923037975551` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172063 has offset 0).

The definition of A172063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172063.P8000198055544816317

`Δ[A172062(n)]-A172025(n+1)`
-/

namespace A172063.P8000198055544816317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A172025 (n + 1)

end

end A172063.P8000198055544816317

namespace A172063

/-- `Δ[A172062(n)]-A172025(n+1)` -/
def P8000198055544816317.Spec : Prop :=
  ∀ n, P8000198055544816317.a n = A172063 n

end A172063

/-! ## A172063.P11418259923037975551

`A172062(n+1)-A172061(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A172063

/-- `A172062(n+1)-A172061(n+1)` -/
def P11418259923037975551.Spec : Prop :=
  ∀ n, P11418259923037975551.a n = A172063 n

theorem P11418259923037975551.correct : P11418259923037975551.Spec := by
  intro n
  simp only [A172063]

end A172063

/-! ## A172063.P6821359584237562784

`A014301(n+4)-A001558(n+2)`
-/

namespace A172063.P6821359584237562784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014301 (n + 4) - A001558 (n + 2)

end

end A172063.P6821359584237562784

namespace A172063

/-- `A014301(n+4)-A001558(n+2)` -/
def P6821359584237562784.Spec : Prop :=
  ∀ n, P6821359584237562784.a n = A172063 n

end A172063

/-! ## A172063.P13747049164449980135

`Δ[A172062(n)-A172025(n)]-A172025(n)`
-/

namespace A172063.P13747049164449980135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172062 n - A172025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A172025 n

end

end A172063.P13747049164449980135

namespace A172063

/-- `Δ[A172062(n)-A172025(n)]-A172025(n)` -/
def P13747049164449980135.Spec : Prop :=
  ∀ n, P13747049164449980135.a n = A172063 n

end A172063

/-! ## A172063.P12725675583541598260

`A172062(n+1)-(A172062(n)+A172025(n+1))`
-/

namespace A172063.P12725675583541598260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172062 (n + 1) - (A172062 n + A172025 (n + 1))

end

end A172063.P12725675583541598260

namespace A172063

/-- `A172062(n+1)-(A172062(n)+A172025(n+1))` -/
def P12725675583541598260.Spec : Prop :=
  ∀ n, P12725675583541598260.a n = A172063 n

end A172063

/-! ## A172063.P313503052479829834

`A172062(A000027(n+1))%A172061(A000027(n+1))`
-/

namespace A172063.P313503052479829834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172062 (A000027 (n + 1)).toNat) (A172061 (A000027 (n + 1)).toNat)

end

end A172063.P313503052479829834

namespace A172063

/-- `A172062(A000027(n+1))%A172061(A000027(n+1))` -/
def P313503052479829834.Spec : Prop :=
  ∀ n, P313503052479829834.a n = A172063 n

end A172063

/-! ## A172063.P15554093916593428384

`A035317(A268581(n+1))`
-/

namespace A172063.P15554093916593428384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (A268581 (n + 1)).toNat

end

end A172063.P15554093916593428384

namespace A172063

/-- `A035317(A268581(n+1))` -/
def P15554093916593428384.Spec : Prop :=
  ∀ n, P15554093916593428384.a n = A172063 n

end A172063

/-! ## A172063.P13245457980757266603

`record[A112465(A001105(n)+3)]`
-/

namespace A172063.P13245457980757266603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (A001105 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172063.P13245457980757266603

namespace A172063

/-- `record[A112465(A001105(n)+3)]` -/
def P13245457980757266603.Spec : Prop :=
  ∀ n, P13245457980757266603.a n = A172063 n

end A172063

/-!
# A172064: Expansion of (2/(3*sqrt(1-4*z)-1+4*z))*((1-sqrt(1-4*z))/(2*z))^k with k=7.

The programs for A172064, the canonical program `A172064.P15345812233759413588` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172064 has offset 0).

The definition of A172064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172064.P15345812233759413588

`Δ[A172063(n)]-A172061(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A172064

/-- `Δ[A172063(n)]-A172061(n+1)` -/
def P15345812233759413588.Spec : Prop :=
  ∀ n, P15345812233759413588.a n = A172064 n

theorem P15345812233759413588.correct : P15345812233759413588.Spec := by
  intro n
  simp only [A172064]

end A172064

/-! ## A172064.P10999377040098493685

`A172063(n+1)-A172062(n+1)`
-/

namespace A172064.P10999377040098493685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172063 (n + 1) - A172062 (n + 1)

end

end A172064.P10999377040098493685

namespace A172064

/-- `A172063(n+1)-A172062(n+1)` -/
def P10999377040098493685.Spec : Prop :=
  ∀ n, P10999377040098493685.a n = A172064 n

theorem P10999377040098493685.correct : P10999377040098493685.Spec := by
  intro n
  simp only [A172064, Nat.add_sub_cancel, A172064.P10999377040098493685.a, A172064.P15345812233759413588.f1, A172064.P15345812233759413588.a, A172061, A172061.P9656388105380330391.a, A172062, A172062.P6130199588010829759.f1, A172062.P6130199588010829759.a, A172063, A172063.P11418259923037975551.a, A000958, A000958.P9732772004639125395.a, A001558, A001558.P12122410934121705503.a, A001791, A001791.P9713013280951293137.a, A026641, A026641.P1352791935542625718.a, A000108, A000108.P17551949696095299361.a, A000957, A000957.P17024256012114130201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A172064

/-! ## A172064.P15381029603826637507

`∑[A172065(n)+A172062(n)]-A172065(n)`
-/

namespace A172064.P15381029603826637507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172065 n + A172062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A172065 n

end

end A172064.P15381029603826637507

namespace A172064

/-- `∑[A172065(n)+A172062(n)]-A172065(n)` -/
def P15381029603826637507.Spec : Prop :=
  ∀ n, P15381029603826637507.a n = A172064 n

end A172064

/-! ## A172064.P9106149288894548879

`Δ[A172063(n)-A172061(n)]-A172061(n)`
-/

namespace A172064.P9106149288894548879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172063 n - A172061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A172061 n

end

end A172064.P9106149288894548879

namespace A172064

/-- `Δ[A172063(n)-A172061(n)]-A172061(n)` -/
def P9106149288894548879.Spec : Prop :=
  ∀ n, P9106149288894548879.a n = A172064 n

theorem P9106149288894548879.correct : P9106149288894548879.Spec := by
  intro n
  simp only [A172064, Nat.add_sub_cancel, A172064.P9106149288894548879.f1, A172064.P9106149288894548879.a, A172064.P15345812233759413588.f1, A172064.P15345812233759413588.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A172064

/-! ## A172064.P1201628695805864250

`A172063(n+1)-(A172063(n)+A172061(n+1))`
-/

namespace A172064.P1201628695805864250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172063 (n + 1) - (A172063 n + A172061 (n + 1))

end

end A172064.P1201628695805864250

namespace A172064

/-- `A172063(n+1)-(A172063(n)+A172061(n+1))` -/
def P1201628695805864250.Spec : Prop :=
  ∀ n, P1201628695805864250.a n = A172064 n

theorem P1201628695805864250.correct : P1201628695805864250.Spec := by
  intro n
  simp only [A172064, Nat.add_sub_cancel, A172064.P1201628695805864250.a, A172064.P15345812233759413588.f1, A172064.P15345812233759413588.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A172064

/-! ## A172064.P11643265411843763641

`A108561(A139570(n+3))`
-/

namespace A172064.P11643265411843763641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (A139570 (n + 3)).toNat

end

end A172064.P11643265411843763641

namespace A172064

/-- `A108561(A139570(n+3))` -/
def P11643265411843763641.Spec : Prop :=
  ∀ n, P11643265411843763641.a n = A172064 n

end A172064

/-! ## A172064.P17067346154185331756

`A108561(A187989(n+1)-n)`
-/

namespace A172064.P17067346154185331756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (A187989 (n + 1) - (n : ℤ)).toNat

end

end A172064.P17067346154185331756

namespace A172064

/-- `A108561(A187989(n+1)-n)` -/
def P17067346154185331756.Spec : Prop :=
  ∀ n, P17067346154185331756.a n = A172064 n

end A172064

/-! ## A172064.P796584109547362929

`record[A112465(A294774(n+1)-1)]`
-/

namespace A172064.P796584109547362929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (A294774 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172064.P796584109547362929

namespace A172064

/-- `record[A112465(A294774(n+1)-1)]` -/
def P796584109547362929.Spec : Prop :=
  ∀ n, P796584109547362929.a n = A172064 n

end A172064

/-!
# A172065: Expansion of (2/(3*sqrt(1-4*z)-1+4*z))*((1-sqrt(1-4*z))/(2*z))^k with k=8.

The programs for A172065, the canonical program `A172065.P14685096181985572914` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172065 has offset 0).

The definition of A172065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172065.P14685096181985572914

`Δ[A172064(n)]-A172062(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A172065

/-- `Δ[A172064(n)]-A172062(n+1)` -/
def P14685096181985572914.Spec : Prop :=
  ∀ n, P14685096181985572914.a n = A172065 n

theorem P14685096181985572914.correct : P14685096181985572914.Spec := by
  intro n
  simp only [A172065]

end A172065

/-! ## A172065.P6657904139799557786

`A172064(n+1)-A172063(n+1)`
-/

namespace A172065.P6657904139799557786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172064 (n + 1) - A172063 (n + 1)

end

end A172065.P6657904139799557786

namespace A172065

/-- `A172064(n+1)-A172063(n+1)` -/
def P6657904139799557786.Spec : Prop :=
  ∀ n, P6657904139799557786.a n = A172065 n

theorem P6657904139799557786.correct : P6657904139799557786.Spec := by
  intro n
  simp only [A172065, Nat.add_sub_cancel, A172065.P6657904139799557786.a, A172065.P14685096181985572914.f1, A172065.P14685096181985572914.a, A172062, A172062.P6130199588010829759.f1, A172062.P6130199588010829759.a, A172063, A172063.P11418259923037975551.a, A172064, A172064.P15345812233759413588.f1, A172064.P15345812233759413588.a, A001558, A001558.P12122410934121705503.a, A001791, A001791.P9713013280951293137.a, A172061, A172061.P9656388105380330391.a, A000108, A000108.P17551949696095299361.a, A000957, A000957.P17024256012114130201.a, A000958, A000958.P9732772004639125395.a, A026641, A026641.P1352791935542625718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A172065

/-! ## A172065.P8200265043687542646

`Δ[A172064(n)-A172062(n)]-A172062(n)`
-/

namespace A172065.P8200265043687542646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172064 n - A172062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A172062 n

end

end A172065.P8200265043687542646

namespace A172065

/-- `Δ[A172064(n)-A172062(n)]-A172062(n)` -/
def P8200265043687542646.Spec : Prop :=
  ∀ n, P8200265043687542646.a n = A172065 n

theorem P8200265043687542646.correct : P8200265043687542646.Spec := by
  intro n
  simp only [A172065, Nat.add_sub_cancel, A172065.P8200265043687542646.f1, A172065.P8200265043687542646.a, A172065.P14685096181985572914.f1, A172065.P14685096181985572914.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A172065

/-! ## A172065.P139866381856168423

`A172064(n+1)-(A172064(n)+A172062(n+1))`
-/

namespace A172065.P139866381856168423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172064 (n + 1) - (A172064 n + A172062 (n + 1))

end

end A172065.P139866381856168423

namespace A172065

/-- `A172064(n+1)-(A172064(n)+A172062(n+1))` -/
def P139866381856168423.Spec : Prop :=
  ∀ n, P139866381856168423.a n = A172065 n

theorem P139866381856168423.correct : P139866381856168423.Spec := by
  intro n
  simp only [A172065, Nat.add_sub_cancel, A172065.P139866381856168423.a, A172065.P14685096181985572914.f1, A172065.P14685096181985572914.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A172065

/-! ## A172065.P9938182036033633729

`A035317(A005843((n+4)²-2))`
-/

namespace A172065.P9938182036033633729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (A005843 ((n + 4) ^ 2 - 2)).toNat

end

end A172065.P9938182036033633729

namespace A172065

/-- `A035317(A005843((n+4)²-2))` -/
def P9938182036033633729.Spec : Prop :=
  ∀ n, P9938182036033633729.a n = A172065 n

end A172065

/-!
# A172066: Expansion of (2/(3*sqrt(1-4*z)-1+4*z))*((1-sqrt(1-4*z))/(2*z))^k with k=9.

The programs for A172066, the canonical program `A172066.P636120753324226920` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172066 has offset 0).

The definition of A172066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172066.P636120753324226920

`Δ[A172065(n)-∑[A172063(n)]]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A172066

/-- `Δ[A172065(n)-∑[A172063(n)]]` -/
def P636120753324226920.Spec : Prop :=
  ∀ n, P636120753324226920.a n = A172066 n

theorem P636120753324226920.correct : P636120753324226920.Spec := by
  intro n
  simp only [A172066]

end A172066

/-! ## A172066.P3334282386911238241

`Δ[A172065(n)]-A172063(n+1)`
-/

namespace A172066.P3334282386911238241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A172063 (n + 1)

end

end A172066.P3334282386911238241

namespace A172066

/-- `Δ[A172065(n)]-A172063(n+1)` -/
def P3334282386911238241.Spec : Prop :=
  ∀ n, P3334282386911238241.a n = A172066 n

end A172066

/-! ## A172066.P1343875880165172497

`A172065(n+1)-A172064(n+1)`
-/

namespace A172066.P1343875880165172497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172065 (n + 1) - A172064 (n + 1)

end

end A172066.P1343875880165172497

namespace A172066

/-- `A172065(n+1)-A172064(n+1)` -/
def P1343875880165172497.Spec : Prop :=
  ∀ n, P1343875880165172497.a n = A172066 n

end A172066

/-! ## A172066.P9946212401374024540

`A112465(A294774(n+5))`
-/

namespace A172066.P9946212401374024540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (A294774 (n + 5)).toNat

end

end A172066.P9946212401374024540

namespace A172066

/-- `A112465(A294774(n+5))` -/
def P9946212401374024540.Spec : Prop :=
  ∀ n, P9946212401374024540.a n = A172066 n

end A172066

/-! ## A172066.P14478772559777666361

`A108561(A046092(n+5)-5)`
-/

namespace A172066.P14478772559777666361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (A046092 (n + 5) - 5).toNat

end

end A172066.P14478772559777666361

namespace A172066

/-- `A108561(A046092(n+5)-5)` -/
def P14478772559777666361.Spec : Prop :=
  ∀ n, P14478772559777666361.a n = A172066 n

end A172066

/-! ## A172066.P7357384571732132036

`record[A112465(A056011(A294774(n)))]`
-/

namespace A172066.P7357384571732132036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (A056011 (A294774 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172066.P7357384571732132036

namespace A172066

/-- `record[A112465(A056011(A294774(n)))]` -/
def P7357384571732132036.Spec : Prop :=
  ∀ n, P7357384571732132036.a n = A172066 n

end A172066

/-! ## A172066.P1697388585783660029

`record[A108561(A154684(A034856(n+1)))]`
-/

namespace A172066.P1697388585783660029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (A154684 (A034856 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172066.P1697388585783660029

namespace A172066

/-- `record[A108561(A154684(A034856(n+1)))]` -/
def P1697388585783660029.Spec : Prop :=
  ∀ n, P1697388585783660029.a n = A172066 n

end A172066

/-!
# A172067: Expansion of (2/(3*sqrt(1-4*z)-1+4*z))*((1-sqrt(1-4*z))/(2*z))^k with k=10.

The programs for A172067, the canonical program `A172067.P8128341851257573489` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172067 has offset 0).

The definition of A172067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172067.P8128341851257573489

`Δ[A172066(n)-∑[A172064(n)]]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A172067

/-- `Δ[A172066(n)-∑[A172064(n)]]` -/
def P8128341851257573489.Spec : Prop :=
  ∀ n, P8128341851257573489.a n = A172067 n

theorem P8128341851257573489.correct : P8128341851257573489.Spec := by
  intro n
  simp only [A172067]

end A172067

/-! ## A172067.P5542781479342877864

`Δ[A172066(n)]-A172064(n+1)`
-/

namespace A172067.P5542781479342877864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172066 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A172064 (n + 1)

end

end A172067.P5542781479342877864

namespace A172067

/-- `Δ[A172066(n)]-A172064(n+1)` -/
def P5542781479342877864.Spec : Prop :=
  ∀ n, P5542781479342877864.a n = A172067 n

end A172067

/-! ## A172067.P11177417632324029694

`A172066(n+1)-A172065(n+1)`
-/

namespace A172067.P11177417632324029694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172066 (n + 1) - A172065 (n + 1)

end

end A172067.P11177417632324029694

namespace A172067

/-- `A172066(n+1)-A172065(n+1)` -/
def P11177417632324029694.Spec : Prop :=
  ∀ n, P11177417632324029694.a n = A172067 n

end A172067

/-! ## A172067.P16158034586559322207

`A172066(n+1)%A172065(A000027(n+1))`
-/

namespace A172067.P16158034586559322207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172066 (n + 1)) (A172065 (A000027 (n + 1)).toNat)

end

end A172067.P16158034586559322207

namespace A172067

/-- `A172066(n+1)%A172065(A000027(n+1))` -/
def P16158034586559322207.Spec : Prop :=
  ∀ n, P16158034586559322207.a n = A172067 n

end A172067

/-! ## A172067.P1080467505636697751

`A172066(n+1)-(A172066(n)+A172064(n+1))`
-/

namespace A172067.P1080467505636697751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172066 (n + 1) - (A172066 n + A172064 (n + 1))

end

end A172067.P1080467505636697751

namespace A172067

/-- `A172066(n+1)-(A172066(n)+A172064(n+1))` -/
def P1080467505636697751.Spec : Prop :=
  ∀ n, P1080467505636697751.a n = A172067 n

end A172067

/-! ## A172067.P4748581502561845873

`A109244(A000217(n+11)-(n+1))`
-/

namespace A172067.P4748581502561845873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 (A000217 (n + 11) - (n + 1 : ℤ)).toNat

end

end A172067.P4748581502561845873

namespace A172067

/-- `A109244(A000217(n+11)-(n+1))` -/
def P4748581502561845873.Spec : Prop :=
  ∀ n, P4748581502561845873.a n = A172067 n

end A172067

/-! ## A172067.P17527593035241043406

`A109244(A000124(n+11)-(n+2))`
-/

namespace A172067.P17527593035241043406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 (A000124 (n + 11) - (n + 2 : ℤ)).toNat

end

end A172067.P17527593035241043406

namespace A172067

/-- `A109244(A000124(n+11)-(n+2))` -/
def P17527593035241043406.Spec : Prop :=
  ∀ n, P17527593035241043406.a n = A172067 n

end A172067

/-! ## A172067.P3684116094233703123

`A201635(A000217(n+12)-12)`
-/

namespace A172067.P3684116094233703123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A000217 (n + 12) - 12).toNat

end

end A172067.P3684116094233703123

namespace A172067

/-- `A201635(A000217(n+12)-12)` -/
def P3684116094233703123.Spec : Prop :=
  ∀ n, P3684116094233703123.a n = A172067 n

end A172067

/-! ## A172067.P1559814248800652191

`A201635(A133263(n+10)+A004280(n+6))`
-/

namespace A172067.P1559814248800652191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A133263 (n + 10) + A004280 (n + 6)).toNat

end

end A172067.P1559814248800652191

namespace A172067

/-- `A201635(A133263(n+10)+A004280(n+6))` -/
def P1559814248800652191.Spec : Prop :=
  ∀ n, P1559814248800652191.a n = A172067 n

end A172067

/-!
# A172069: The number of primes adjacent to A129912(n): 0, 1 or 2.

The programs for A172069, there is no canonical definition to state claims against.
-/

/-! ## A172069.P1608245735756392928

`A003137(A249094(n+2)^5+n+5)`
-/

namespace A172069.P1608245735756392928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003137 (A249094 (n + 2) ^ 5 + (n : ℤ) + 5).toNat

end

end A172069.P1608245735756392928

/-! ## A172069.P12563140239205724234

`A294548(A333708(A123753(n)))%3`
-/

namespace A172069.P12563140239205724234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294548 (A333708 (A123753 n).toNat).toNat) 3

end

end A172069.P12563140239205724234

/-! ## A172069.P2213475800741060834

`A128084(A162322(2*n+1))%A161409(2*(n+1))`
-/

namespace A172069.P2213475800741060834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128084 (A162322 (2 * n + 1)).toNat) (A161409 (2 * (n + 1)))

end

end A172069.P2213475800741060834

/-!
# A172070: Primes p such that either p-1/2-+5/2, but not both, is prime.

The programs for A172070, there is no canonical definition to state claims against.
-/

/-! ## A172070.P1806749930868867751

`record[A242034(n+3)]`
-/

namespace A172070.P1806749930868867751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242034 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172070.P1806749930868867751

/-! ## A172070.P5327388752045402500

`A265760(2*(n+1))`
-/

namespace A172070.P5327388752045402500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (2 * (n + 1))

end

end A172070.P5327388752045402500

/-! ## A172070.P14214395415772529408

`p?[p?[A080036(n)]-2]`
-/

namespace A172070.P14214395415772529408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172070.P14214395415772529408

/-! ## A172070.P16436137254154491652

`record[A265760(abs(xor(n, -2)))]`
-/

namespace A172070.P16436137254154491652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 |Int.xor (n : ℤ) (-2)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172070.P16436137254154491652

/-! ## A172070.P5900066620765183638

`p?[A045405(n+1)-2]`
-/

namespace A172070.P5900066620765183638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172070.P5900066620765183638

/-! ## A172070.P5788049725891165667

`p?[floor(sqrt(A135285(n+1)))]`
-/

namespace A172070.P5788049725891165667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A135285 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172070.P5788049725891165667

/-! ## A172070.P6941940620977983887

`A001359(ceil(cosh(sin(n))+n))`
-/

namespace A172070.P6941940620977983887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 ⌈Real.cosh (Real.sin (n : ℝ)) + (n : ℝ)⌉.toNat

end

end A172070.P6941940620977983887

/-! ## A172070.P17528351705948110887

`p?[p?[A047207(n+1)]-2]`
-/

namespace A172070.P17528351705948110887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047207 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172070.P17528351705948110887

/-! ## A172070.P3209278361184700310

`p?[p?[A047309(n+1)]-2]`
-/

namespace A172070.P3209278361184700310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047309 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172070.P3209278361184700310

/-! ## A172070.P14400086024352992312

`p?[p?[A080713(n+1)]-2]`
-/

namespace A172070.P14400086024352992312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080713 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172070.P14400086024352992312

/-!
# A172071: Primes p such that either p - 5/2 -+ 7/2 is prime.

The programs for A172071, the canonical program `A172071.P10522151630773515166` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172071 has offset 1).

The definition of A172071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172071.P10522151630773515166

`A046117(n-gcd(n, a(n-1))+1)` with `a(0)=2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A172071

/-- `A046117(n-gcd(n, a(n-1))+1)` -/
def P10522151630773515166.Spec : Prop :=
  ∀ n, P10522151630773515166.a n = A172071 (n + 1)

theorem P10522151630773515166.correct : P10522151630773515166.Spec := by
  intro n
  simp only [A172071, Nat.add_sub_cancel]

end A172071

/-! ## A172071.P4219485141584071441

`A172988(n+1)%A001539(n)`
-/

namespace A172071.P4219485141584071441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172988 (n + 1)) (A001539 n)

end

end A172071.P4219485141584071441

namespace A172071

/-- `A172988(n+1)%A001539(n)` -/
def P4219485141584071441.Spec : Prop :=
  ∀ n, P4219485141584071441.a n = A172071 (n + 1)

end A172071

/-! ## A172071.P9683063197529259052

`∪[A007352(n+1), A046117(n+1)]`
-/

namespace A172071.P9683063197529259052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A172071.P9683063197529259052

namespace A172071

/-- `∪[A007352(n+1), A046117(n+1)]` -/
def P9683063197529259052.Spec : Prop :=
  ∀ n, (P9683063197529259052.a n : ℤ) = A172071 (n + 1)

end A172071

/-! ## A172071.P15728998045259734172

`A067831(n+1)%A000465(n)`
-/

namespace A172071.P15728998045259734172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067831 (n + 1)) (A000465 n)

end

end A172071.P15728998045259734172

namespace A172071

/-- `A067831(n+1)%A000465(n)` -/
def P15728998045259734172.Spec : Prop :=
  ∀ n, P15728998045259734172.a n = A172071 (n + 1)

end A172071

/-! ## A172071.P18068156685784991065

`A000040(A172072(n+1))`
-/

namespace A172071.P18068156685784991065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A172072 (n + 1)).toNat

end

end A172071.P18068156685784991065

namespace A172071

/-- `A000040(A172072(n+1))` -/
def P18068156685784991065.Spec : Prop :=
  ∀ n, P18068156685784991065.a n = A172071 (n + 1)

end A172071

/-! ## A172071.P9503003449447595804

`p?[(A000040(n+1)+6)%A340773(n+1)]`
-/

namespace A172071.P9503003449447595804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) + 6) (A340773 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172071.P9503003449447595804

namespace A172071

/-- `p?[(A000040(n+1)+6)%A340773(n+1)]` -/
def P9503003449447595804.Spec : Prop :=
  ∀ n, P9503003449447595804.a n = A172071 (n + 1)

end A172071

/-! ## A172071.P13918807855543550281

`p?[∪[A046117(n+1), A086304(n+1)+1]]`
-/

namespace A172071.P13918807855543550281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A172071.P13918807855543550281

namespace A172071

/-- `p?[∪[A046117(n+1), A086304(n+1)+1]]` -/
def P13918807855543550281.Spec : Prop :=
  ∀ n, (P13918807855543550281.a n : ℤ) = A172071 (n + 1)

end A172071

/-! ## A172071.P10530612406382738410

`p?[∪[A046117(n+1), A118538(n+1)+1]]`
-/

namespace A172071.P10530612406382738410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A172071.P10530612406382738410

namespace A172071

/-- `p?[∪[A046117(n+1), A118538(n+1)+1]]` -/
def P10530612406382738410.Spec : Prop :=
  ∀ n, (P10530612406382738410.a n : ℤ) = A172071 (n + 1)

end A172071

/-! ## A172071.P8181219363120464266

`p?[∪[A139049(n+1), A023202(n+1)-1]]`
-/

namespace A172071.P8181219363120464266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139049 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A172071.P8181219363120464266

namespace A172071

/-- `p?[∪[A139049(n+1), A023202(n+1)-1]]` -/
def P8181219363120464266.Spec : Prop :=
  ∀ n, (P8181219363120464266.a n : ℤ) = A172071 (n + 1)

end A172071

/-! ## A172071.P6482888998833298328

`A008578(A172072(n+1)+1)`
-/

namespace A172071.P6482888998833298328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A172072 (n + 1) + 1).toNat

end

end A172071.P6482888998833298328

namespace A172071

/-- `A008578(A172072(n+1)+1)` -/
def P6482888998833298328.Spec : Prop :=
  ∀ n, P6482888998833298328.a n = A172071 (n + 1)

end A172071

/-! ## A172071.P11854093334540985723

`p?[∪[A046117(n+1), A000040(n+1)-1]]`
-/

namespace A172071.P11854093334540985723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A172071.P11854093334540985723

namespace A172071

/-- `p?[∪[A046117(n+1), A000040(n+1)-1]]` -/
def P11854093334540985723.Spec : Prop :=
  ∀ n, (P11854093334540985723.a n : ℤ) = A172071 (n + 1)

end A172071

/-! ## A172071.P14094146111580098870

`p?[∪[2*n, A139049(n+1)]]`
-/

namespace A172071.P14094146111580098870
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139049 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A172071.P14094146111580098870

namespace A172071

/-- `p?[∪[2*n, A139049(n+1)]]` -/
def P14094146111580098870.Spec : Prop :=
  ∀ n, (P14094146111580098870.a n : ℤ) = A172071 (n + 1)

end A172071

/-! ## A172071.P15154373727489616787

`record[A020639(A020639(n+4)+6)]`
-/

namespace A172071.P15154373727489616787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 (n + 4) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172071.P15154373727489616787

namespace A172071

/-- `record[A020639(A020639(n+4)+6)]` -/
def P15154373727489616787.Spec : Prop :=
  ∀ n, P15154373727489616787.a n = A172071 (n + 1)

end A172071

/-! ## A172071.P10346093210041636756

`p?[A000040(n+1)+6%A001033(n+1)]`
-/

namespace A172071.P10346093210041636756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + Int.tmod 6 (A001033 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172071.P10346093210041636756

namespace A172071

/-- `p?[A000040(n+1)+6%A001033(n+1)]` -/
def P10346093210041636756.Spec : Prop :=
  ∀ n, P10346093210041636756.a n = A172071 (n + 1)

end A172071

/-! ## A172071.P5635611647720414649

`p?[A267884(2*n)+A008578(n+2)]`
-/

namespace A172071.P5635611647720414649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267884 (2 * n) + A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172071.P5635611647720414649

namespace A172071

/-- `p?[A267884(2*n)+A008578(n+2)]` -/
def P5635611647720414649.Spec : Prop :=
  ∀ n, P5635611647720414649.a n = A172071 (n + 1)

end A172071

/-! ## A172071.P2262863377185284171

`A181351(A172988(n+1))`
-/

namespace A172071.P2262863377185284171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181351 (A172988 (n + 1)).toNat

end

end A172071.P2262863377185284171

namespace A172071

/-- `A181351(A172988(n+1))` -/
def P2262863377185284171.Spec : Prop :=
  ∀ n, P2262863377185284171.a n = A172071 (n + 1)

end A172071

/-! ## A172071.P5892097961606448837

`record[p?[A082343(2*n+1)]]`
-/

namespace A172071.P5892097961606448837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082343 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172071.P5892097961606448837

namespace A172071

/-- `record[p?[A082343(2*n+1)]]` -/
def P5892097961606448837.Spec : Prop :=
  ∀ n, P5892097961606448837.a n = A172071 (n + 1)

end A172071

/-! ## A172071.P2919331992750042945

`and(A067831(n+1), A198693(n))`
-/

namespace A172071.P2919331992750042945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A067831 (n + 1)) (A198693 n)

end

end A172071.P2919331992750042945

namespace A172071

/-- `and(A067831(n+1), A198693(n))` -/
def P2919331992750042945.Spec : Prop :=
  ∀ n, P2919331992750042945.a n = A172071 (n + 1)

end A172071

/-! ## A172071.P3843407582128247512

`and(A067831(n+1), A198695(n))`
-/

namespace A172071.P3843407582128247512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A067831 (n + 1)) (A198695 n)

end

end A172071.P3843407582128247512

namespace A172071

/-- `and(A067831(n+1), A198695(n))` -/
def P3843407582128247512.Spec : Prop :=
  ∀ n, P3843407582128247512.a n = A172071 (n + 1)

end A172071

/-!
# A172072: Numbers k such that either prime(k) - 5/2 +- 7/2 is prime.

The programs for A172072, the canonical program `A172072.P14384555314162830453` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172072 has offset 1).

The definition of A172072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172072.P4366961743197213120

`A000720(A172071(n+1))`
-/

namespace A172072.P4366961743197213120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A172071 (n + 1)).toNat

end

end A172072.P4366961743197213120

namespace A172072

/-- `A000720(A172071(n+1))` -/
def P4366961743197213120.Spec : Prop :=
  ∀ n, P4366961743197213120.a n = A172072 (n + 1)

end A172072

/-! ## A172072.P6823862250983910170

`∑{d}[A172071(n+1), A061395(#)]`
-/

namespace A172072.P6823862250983910170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A172072.P6823862250983910170

namespace A172072

/-- `∑{d}[A172071(n+1), A061395(#)]` -/
def P6823862250983910170.Spec : Prop :=
  ∀ n, P6823862250983910170.a n = A172072 (n + 1)

end A172072

/-! ## A172072.P14384555314162830453

`record[A061395(A151800(3*n)+6)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A172072

/-- `record[A061395(A151800(3*n)+6)]` -/
def P14384555314162830453.Spec : Prop :=
  ∀ n, P14384555314162830453.a n = A172072 (n + 1)

theorem P14384555314162830453.correct : P14384555314162830453.Spec := by
  intro n
  simp only [A172072, Nat.add_sub_cancel]

end A172072

/-! ## A172072.P11553454409669630674

`A061395(A172071(n+1)+A172071(n+1))`
-/

namespace A172072.P11553454409669630674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A172071 (n + 1) + A172071 (n + 1)).toNat

end

end A172072.P11553454409669630674

namespace A172072

/-- `A061395(A172071(n+1)+A172071(n+1))` -/
def P11553454409669630674.Spec : Prop :=
  ∀ n, P11553454409669630674.a n = A172072 (n + 1)

end A172072

/-! ## A172072.P13013900853495596286

`A065864(A067831(n+1))`
-/

namespace A172072.P13013900853495596286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065864 (A067831 (n + 1)).toNat

end

end A172072.P13013900853495596286

namespace A172072

/-- `A065864(A067831(n+1))` -/
def P13013900853495596286.Spec : Prop :=
  ∀ n, P13013900853495596286.a n = A172072 (n + 1)

end A172072

/-! ## A172072.P691237824346825278

`A065864(A172988(n+1))`
-/

namespace A172072.P691237824346825278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065864 (A172988 (n + 1)).toNat

end

end A172072.P691237824346825278

namespace A172072

/-- `A065864(A172988(n+1))` -/
def P691237824346825278.Spec : Prop :=
  ∀ n, P691237824346825278.a n = A172072 (n + 1)

end A172072

/-! ## A172072.P3360623398210047225

`record[A055396(A134735(n+4)+6)]`
-/

namespace A172072.P3360623398210047225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A134735 (n + 4) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172072.P3360623398210047225

namespace A172072

/-- `record[A055396(A134735(n+4)+6)]` -/
def P3360623398210047225.Spec : Prop :=
  ∀ n, P3360623398210047225.a n = A172072 (n + 1)

end A172072

/-! ## A172072.P3165366393183222748

`A061395(A172071(n+1)*A219347(n))`
-/

namespace A172072.P3165366393183222748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A172071 (n + 1) * A219347 n).toNat

end

end A172072.P3165366393183222748

namespace A172072

/-- `A061395(A172071(n+1)*A219347(n))` -/
def P3165366393183222748.Spec : Prop :=
  ∀ n, P3165366393183222748.a n = A172072 (n + 1)

end A172072

/-! ## A172072.P704730090718105497

`A061395((n+1)*A172071(n+1))`
-/

namespace A172072.P704730090718105497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 ((n + 1 : ℤ) * A172071 (n + 1)).toNat

end

end A172072.P704730090718105497

namespace A172072

/-- `A061395((n+1)*A172071(n+1))` -/
def P704730090718105497.Spec : Prop :=
  ∀ n, P704730090718105497.a n = A172072 (n + 1)

end A172072

/-!
# A172073: a(n) = (4*n^3 + n^2 - 3*n)/2.

The programs for A172073, the canonical program `A172073.P11123203697136420528` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172073 has offset 0).

The definition of A172073 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n^3+n²-3*n)/2` (program `A172073.P8395165368795478011`, by `A172073.P8395165368795478011.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172073.P13058886137363170994

`n*(n+1)*(4*n-3)/2`
-/

namespace A172073.P13058886137363170994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((4 * n : ℤ) - 3) : ℚ) / 2

end

end A172073.P13058886137363170994

namespace A172073

/-- `n*(n+1)*(4*n-3)/2` -/
def P13058886137363170994.Spec : Prop :=
  ∀ n, P13058886137363170994.a n = (A172073 n : ℚ)

theorem P13058886137363170994.correct : P13058886137363170994.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A172073, Nat.add_sub_cancel, A172073.P13058886137363170994.a, A172073.P11123203697136420528.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A172073, Nat.add_sub_cancel, A172073.P13058886137363170994.a, A172073.P11123203697136420528.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A172073

/-! ## A172073.P8395165368795478011

`(4*n^3+n²-3*n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172073.P8395165368795478011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n ^ 3 + n ^ 2 : ℤ) - (3 * n : ℤ) : ℚ) / 2

end

end A172073.P8395165368795478011

namespace A172073

/-- `(4*n^3+n²-3*n)/2` -/
def P8395165368795478011.Spec : Prop :=
  ∀ n, P8395165368795478011.a n = (A172073 n : ℚ)

theorem P8395165368795478011.correct : P8395165368795478011.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A172073, Nat.add_sub_cancel, A172073.P8395165368795478011.a, A172073.P11123203697136420528.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A172073, Nat.add_sub_cancel, A172073.P8395165368795478011.a, A172073.P11123203697136420528.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A172073

/-! ## A172073.P11123203697136420528

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=15, a(3)=54`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172073

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11123203697136420528.Spec : Prop :=
  ∀ n, P11123203697136420528.a n = A172073 n

theorem P11123203697136420528.correct : P11123203697136420528.Spec := by
  intro n
  simp only [A172073]

end A172073

/-! ## A172073.P1731312129834476445

`∑[∑[a(n-1)+12]]` with `a(0)=0, a(1)=1`
-/

namespace A172073.P1731312129834476445
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + 12

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172073.P1731312129834476445

namespace A172073

/-- `∑[∑[a(n-1)+12]]` -/
def P1731312129834476445.Spec : Prop :=
  ∀ n, (P1731312129834476445.a n : ℤ) = A172073 n

end A172073

/-! ## A172073.P8696359427800769024

`C(n+1, 2)+12*C(n+1, 3)`
-/

namespace A172073.P8696359427800769024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + 12 * Nat.choose (n + 1) 3

end

end A172073.P8696359427800769024

namespace A172073

/-- `C(n+1, 2)+12*C(n+1, 3)` -/
def P8696359427800769024.Spec : Prop :=
  ∀ n, (P8696359427800769024.a n : ℤ) = A172073 n

end A172073

/-! ## A172073.P4485664293058618865

`∑[A051866(n)]`
-/

namespace A172073.P4485664293058618865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051866 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172073.P4485664293058618865

namespace A172073

/-- `∑[A051866(n)]` -/
def P4485664293058618865.Spec : Prop :=
  ∀ n, P4485664293058618865.a n = A172073 n

end A172073

/-! ## A172073.P8749576286668497223

`∑[A033568(n)-1]`
-/

namespace A172073.P8749576286668497223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033568 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172073.P8749576286668497223

namespace A172073

/-- `∑[A033568(n)-1]` -/
def P8749576286668497223.Spec : Prop :=
  ∀ n, P8749576286668497223.a n = A172073 n

end A172073

/-! ## A172073.P4832064135680955357

`∑[A139267(n)-n]`
-/

namespace A172073.P4832064135680955357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139267 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172073.P4832064135680955357

namespace A172073

/-- `∑[A139267(n)-n]` -/
def P4832064135680955357.Spec : Prop :=
  ∀ n, P4832064135680955357.a n = A172073 n

end A172073

/-! ## A172073.P11291883564718685329

`Δ[A391092(n)]-n`
-/

namespace A172073.P11291883564718685329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A172073.P11291883564718685329

namespace A172073

/-- `Δ[A391092(n)]-n` -/
def P11291883564718685329.Spec : Prop :=
  ∀ n, P11291883564718685329.a n = A172073 n

end A172073

/-! ## A172073.P14236604193783270910

`∑[A139268(n)-n²]`
-/

namespace A172073.P14236604193783270910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139268 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172073.P14236604193783270910

namespace A172073

/-- `∑[A139268(n)-n²]` -/
def P14236604193783270910.Spec : Prop :=
  ∀ n, P14236604193783270910.a n = A172073 n

end A172073

/-! ## A172073.P14714406709625783420

`∑[A226488(n)-∑[n]]`
-/

namespace A172073.P14714406709625783420
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226488 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172073.P14714406709625783420

namespace A172073

/-- `∑[A226488(n)-∑[n]]` -/
def P14714406709625783420.Spec : Prop :=
  ∀ n, P14714406709625783420.a n = A172073 n

end A172073

/-! ## A172073.P851031483242176132

`∑[A103115(n)+1+n]`
-/

namespace A172073.P851031483242176132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172073.P851031483242176132

namespace A172073

/-- `∑[A103115(n)+1+n]` -/
def P851031483242176132.Spec : Prop :=
  ∀ n, P851031483242176132.a n = A172073 n

end A172073

/-! ## A172073.P11906348579191137833

`∑[2*A000567(n)-n]`
-/

namespace A172073.P11906348579191137833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000567 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172073.P11906348579191137833

namespace A172073

/-- `∑[2*A000567(n)-n]` -/
def P11906348579191137833.Spec : Prop :=
  ∀ n, P11906348579191137833.a n = A172073 n

end A172073

/-! ## A172073.P4623801923784178032

`∑[A064200(n)/2+n]`
-/

namespace A172073.P4623801923784178032
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064200 n : ℚ) / 2 + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172073.P4623801923784178032

namespace A172073

/-- `∑[A064200(n)/2+n]` -/
def P4623801923784178032.Spec : Prop :=
  ∀ n, P4623801923784178032.a n = (A172073 n : ℚ)

end A172073

/-! ## A172073.P14497785822362055942

`∑[A094159(n)-2*n]`
-/

namespace A172073.P14497785822362055942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094159 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172073.P14497785822362055942

namespace A172073

/-- `∑[A094159(n)-2*n]` -/
def P14497785822362055942.Spec : Prop :=
  ∀ n, P14497785822362055942.a n = A172073 n

end A172073

/-! ## A172073.P14441102385912872033

`∑[(A255185(n)+n)/2]`
-/

namespace A172073.P14441102385912872033
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255185 n + (n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172073.P14441102385912872033

namespace A172073

/-- `∑[(A255185(n)+n)/2]` -/
def P14441102385912872033.Spec : Prop :=
  ∀ n, P14441102385912872033.a n = (A172073 n : ℚ)

end A172073

/-! ## A172073.P3391488035409311993

`∑[n]+A272871(n)/2`
-/

namespace A172073.P3391488035409311993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (A272871 n : ℚ) / 2

end

end A172073.P3391488035409311993

namespace A172073

/-- `∑[n]+A272871(n)/2` -/
def P3391488035409311993.Spec : Prop :=
  ∀ n, P3391488035409311993.a n = (A172073 n : ℚ)

end A172073

/-! ## A172073.P3525367896830759068

`∑[(A152767(n)-n)/2]`
-/

namespace A172073.P3525367896830759068
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152767 n - (n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172073.P3525367896830759068

namespace A172073

/-- `∑[(A152767(n)-n)/2]` -/
def P3525367896830759068.Spec : Prop :=
  ∀ n, P3525367896830759068.a n = (A172073 n : ℚ)

end A172073

/-! ## A172073.P669088932042581504

`∑[A153794(n)/2-n]`
-/

namespace A172073.P669088932042581504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153794 n : ℚ) / 2 - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172073.P669088932042581504

namespace A172073

/-- `∑[A153794(n)/2-n]` -/
def P669088932042581504.Spec : Prop :=
  ∀ n, P669088932042581504.a n = (A172073 n : ℚ)

end A172073

/-! ## A172073.P13996016486370327005

`(n+1)/2*A001107(n)`
-/

namespace A172073.P13996016486370327005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A001107 n : ℚ)

end

end A172073.P13996016486370327005

namespace A172073

/-- `(n+1)/2*A001107(n)` -/
def P13996016486370327005.Spec : Prop :=
  ∀ n, P13996016486370327005.a n = (A172073 n : ℚ)

theorem P13996016486370327005.correct : P13996016486370327005.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A172073, Nat.add_sub_cancel, A172073.P13996016486370327005.a, A172073.P11123203697136420528.a, A001107, A001107.P15766833630772781234.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A172073, Nat.add_sub_cancel, A172073.P13996016486370327005.a, A172073.P11123203697136420528.a, A001107, A001107.P15766833630772781234.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A172073

/-!
# A172075: a(n) = n*(n+1)*(9*n^2 - n - 5)/6.

The programs for A172075, the canonical program `A172075.P13525443449354109114` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172075 has offset 0).

The definition of A172075 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(9*n²-n-5)/6` (program `A172075.P17654659069368217073`, by `A172075.P17654659069368217073.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172075.P17654659069368217073

`n*(n+1)*(9*n²-n-5)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172075.P17654659069368217073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((9 * n ^ 2 : ℤ) - (n : ℤ) - 5) : ℚ) / 6

end

end A172075.P17654659069368217073

namespace A172075

/-- `n*(n+1)*(9*n²-n-5)/6` -/
def P17654659069368217073.Spec : Prop :=
  ∀ n, P17654659069368217073.a n = (A172075 n : ℚ)

theorem P17654659069368217073.correct : P17654659069368217073.Spec := by
  intro n
  simp only [A172075, Nat.add_sub_cancel, A172075.P17654659069368217073.a, A172075.P13525443449354109114.a, A036464, A036464.P6645508525514235542.a, A172118, A172118.P14181338963914298180.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A172075

/-! ## A172075.P6608658309657120944

`∑[n*A051866(n)]`
-/

namespace A172075.P6608658309657120944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051866 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172075.P6608658309657120944

namespace A172075

/-- `∑[n*A051866(n)]` -/
def P6608658309657120944.Spec : Prop :=
  ∀ n, P6608658309657120944.a n = A172075 n

end A172075

/-! ## A172075.P10056193400684913261

`A103220(n)+A035291(n+1)`
-/

namespace A172075.P10056193400684913261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103220 n + A035291 (n + 1)

end

end A172075.P10056193400684913261

namespace A172075

/-- `A103220(n)+A035291(n+1)` -/
def P10056193400684913261.Spec : Prop :=
  ∀ n, P10056193400684913261.a n = A172075 n

end A172075

/-! ## A172075.P7420002785951830905

`A172118(n)-A035291(n+1)`
-/

namespace A172075.P7420002785951830905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172118 n - A035291 (n + 1)

end

end A172075.P7420002785951830905

namespace A172075

/-- `A172118(n)-A035291(n+1)` -/
def P7420002785951830905.Spec : Prop :=
  ∀ n, P7420002785951830905.a n = A172075 n

end A172075

/-! ## A172075.P720879730937236346

`A172080(n)-A036464(n+1)`
-/

namespace A172075.P720879730937236346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172080 n - A036464 (n + 1)

end

end A172075.P720879730937236346

namespace A172075

/-- `A172080(n)-A036464(n+1)` -/
def P720879730937236346.Spec : Prop :=
  ∀ n, P720879730937236346.a n = A172075 n

end A172075

/-! ## A172075.P14367101743145507292

`2*A172080(n)-A172118(n)`
-/

namespace A172075.P14367101743145507292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172080 n - A172118 n

end

end A172075.P14367101743145507292

namespace A172075

/-- `2*A172080(n)-A172118(n)` -/
def P14367101743145507292.Spec : Prop :=
  ∀ n, P14367101743145507292.a n = A172075 n

end A172075

/-! ## A172075.P5640580731387687075

`n*A143690(n)-A255687(n)`
-/

namespace A172075.P5640580731387687075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A143690 n - A255687 n

end

end A172075.P5640580731387687075

namespace A172075

/-- `n*A143690(n)-A255687(n)` -/
def P5640580731387687075.Spec : Prop :=
  ∀ n, P5640580731387687075.a n = A172075 n

end A172075

/-! ## A172075.P2203153776594530729

`A103220(n)+2*A036464(n+1)`
-/

namespace A172075.P2203153776594530729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103220 n + 2 * A036464 (n + 1)

end

end A172075.P2203153776594530729

namespace A172075

/-- `A103220(n)+2*A036464(n+1)` -/
def P2203153776594530729.Spec : Prop :=
  ∀ n, P2203153776594530729.a n = A172075 n

end A172075

/-! ## A172075.P10073208761371814703

`A172047(n)+A036464(n+1)/2`
-/

namespace A172075.P10073208761371814703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172047 n : ℚ) + (A036464 (n + 1) : ℚ) / 2

end

end A172075.P10073208761371814703

namespace A172075

/-- `A172047(n)+A036464(n+1)/2` -/
def P10073208761371814703.Spec : Prop :=
  ∀ n, P10073208761371814703.a n = (A172075 n : ℚ)

end A172075

/-! ## A172075.P13525443449354109114

`A172118(n)-2*A036464(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A172075

/-- `A172118(n)-2*A036464(n+1)` -/
def P13525443449354109114.Spec : Prop :=
  ∀ n, P13525443449354109114.a n = A172075 n

theorem P13525443449354109114.correct : P13525443449354109114.Spec := by
  intro n
  simp only [A172075]

end A172075

/-! ## A172075.P14500279750414289875

`A172077(n)-A036464(n+1)/2`
-/

namespace A172075.P14500279750414289875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172077 n : ℚ) - (A036464 (n + 1) : ℚ) / 2

end

end A172075.P14500279750414289875

namespace A172075

/-- `A172077(n)-A036464(n+1)/2` -/
def P14500279750414289875.Spec : Prop :=
  ∀ n, P14500279750414289875.a n = (A172075 n : ℚ)

end A172075

/-! ## A172075.P18033668344119382781

`A000447(n)+A260810(n)-A000217(n)`
-/

namespace A172075.P18033668344119382781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 n + (A260810 n - A000217 n)

end

end A172075.P18033668344119382781

namespace A172075

/-- `A000447(n)+A260810(n)-A000217(n)` -/
def P18033668344119382781.Spec : Prop :=
  ∀ n, P18033668344119382781.a n = A172075 n

end A172075

/-! ## A172075.P969090643928302167

`A001296(2*n)-A083374(n+1)`
-/

namespace A172075.P969090643928302167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 (2 * n) - A083374 (n + 1)

end

end A172075.P969090643928302167

namespace A172075

/-- `A001296(2*n)-A083374(n+1)` -/
def P969090643928302167.Spec : Prop :=
  ∀ n, P969090643928302167.a n = A172075 n

end A172075

/-! ## A172075.P9606618294791287317

`A001296(2*n)-2*A006011(n+1)`
-/

namespace A172075.P9606618294791287317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 (2 * n) - 2 * A006011 (n + 1)

end

end A172075.P9606618294791287317

namespace A172075

/-- `A001296(2*n)-2*A006011(n+1)` -/
def P9606618294791287317.Spec : Prop :=
  ∀ n, P9606618294791287317.a n = A172075 n

end A172075

/-! ## A172075.P3582775893539163750

`A001296(2*n)-n*A002411(n+1)`
-/

namespace A172075.P3582775893539163750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 (2 * n) - (n : ℤ) * A002411 (n + 1)

end

end A172075.P3582775893539163750

namespace A172075

/-- `A001296(2*n)-n*A002411(n+1)` -/
def P3582775893539163750.Spec : Prop :=
  ∀ n, P3582775893539163750.a n = A172075 n

end A172075

/-! ## A172075.P6474969735899471428

`A033581(∑[n])-∑[A033429(n)]`
-/

namespace A172075.P6474969735899471428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A172075.P6474969735899471428

namespace A172075

/-- `A033581(∑[n])-∑[A033429(n)]` -/
def P6474969735899471428.Spec : Prop :=
  ∀ n, P6474969735899471428.a n = A172075 n

end A172075

/-!
# A172076: a(n) = n*(n+1)*(14*n-11)/6.

The programs for A172076, the canonical program `A172076.P1383740934166208424` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172076 has offset 0).

The definition of A172076 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A172076.anchor (n : ℕ) : (A172076 n : ℚ) = ((n * (n + 1) : ℤ) * ((14 * n : ℤ) - 11) : ℚ) / 6` in `Proof.A172.A172076`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172076.P1383740934166208424

`n*(n+1)*(14*n-11)/6`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172076

/-- `n*(n+1)*(14*n-11)/6` -/
def P1383740934166208424.Spec : Prop :=
  ∀ n, P1383740934166208424.a n = (A172076 n : ℚ)

end A172076

/-! ## A172076.P14874969152896705405

`∑[∑[a(n-1)+14]]` with `a(0)=0, a(1)=1`
-/

namespace A172076.P14874969152896705405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + 14

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172076.P14874969152896705405

namespace A172076

/-- `∑[∑[a(n-1)+14]]` -/
def P14874969152896705405.Spec : Prop :=
  ∀ n, (P14874969152896705405.a n : ℤ) = A172076 n

end A172076

/-! ## A172076.P18090292657958879491

`∑[3*C(n, 2)]+∑[11*C(n, 2)+n]`
-/

namespace A172076.P18090292657958879491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * Nat.choose n 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A172076.P18090292657958879491

namespace A172076

/-- `∑[3*C(n, 2)]+∑[11*C(n, 2)+n]` -/
def P18090292657958879491.Spec : Prop :=
  ∀ n, (P18090292657958879491.a n : ℤ) = A172076 n

end A172076

/-! ## A172076.P12125851744781639972

`∑[A051868(n)]`
-/

namespace A172076.P12125851744781639972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172076.P12125851744781639972

namespace A172076

/-- `∑[A051868(n)]` -/
def P12125851744781639972.Spec : Prop :=
  ∀ n, P12125851744781639972.a n = A172076 n

end A172076

/-! ## A172076.P12293790284111348524

`∑[A139268(n)-n]`
-/

namespace A172076.P12293790284111348524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139268 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172076.P12293790284111348524

namespace A172076

/-- `∑[A139268(n)-n]` -/
def P12293790284111348524.Spec : Prop :=
  ∀ n, P12293790284111348524.a n = A172076 n

end A172076

/-! ## A172076.P13551716640083910413

`A063521(n)+C(n, 2)`
-/

namespace A172076.P13551716640083910413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063521 n + (Nat.choose n 2 : ℤ)

end

end A172076.P13551716640083910413

namespace A172076

/-- `A063521(n)+C(n, 2)` -/
def P13551716640083910413.Spec : Prop :=
  ∀ n, P13551716640083910413.a n = A172076 n

end A172076

/-! ## A172076.P15082399475975392044

`∑[A139271(n)-n²]`
-/

namespace A172076.P15082399475975392044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139271 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172076.P15082399475975392044

namespace A172076

/-- `∑[A139271(n)-n²]` -/
def P15082399475975392044.Spec : Prop :=
  ∀ n, P15082399475975392044.a n = A172076 n

end A172076

/-! ## A172076.P9993268997541191236

`∑[A239449(n)-(n+1)]`
-/

namespace A172076.P9993268997541191236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239449 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172076.P9993268997541191236

namespace A172076

/-- `∑[A239449(n)-(n+1)]` -/
def P9993268997541191236.Spec : Prop :=
  ∀ n, P9993268997541191236.a n = A172076 n

end A172076

/-! ## A172076.P426194851221429082

`2*A007584(n)-∑[n]`
-/

namespace A172076.P426194851221429082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007584 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A172076.P426194851221429082

namespace A172076

/-- `2*A007584(n)-∑[n]` -/
def P426194851221429082.Spec : Prop :=
  ∀ n, P426194851221429082.a n = A172076 n

end A172076

/-! ## A172076.P20591496846619196

`A050409(n)-∑[4*n]`
-/

namespace A172076.P20591496846619196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050409 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A172076.P20591496846619196

namespace A172076

/-- `A050409(n)-∑[4*n]` -/
def P20591496846619196.Spec : Prop :=
  ∀ n, P20591496846619196.a n = A172076 n

end A172076

/-! ## A172076.P8060726574534634305

`∑[A080856(n)-(n+1)²]`
-/

namespace A172076.P8060726574534634305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080856 n - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172076.P8060726574534634305

namespace A172076

/-- `∑[A080856(n)-(n+1)²]` -/
def P8060726574534634305.Spec : Prop :=
  ∀ n, P8060726574534634305.a n = A172076 n

end A172076

/-! ## A172076.P2905551181007607731

`A051925(n)+A007588(n)`
-/

namespace A172076.P2905551181007607731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051925 n + A007588 n

end

end A172076.P2905551181007607731

namespace A172076

/-- `A051925(n)+A007588(n)` -/
def P2905551181007607731.Spec : Prop :=
  ∀ n, P2905551181007607731.a n = A172076 n

end A172076

/-! ## A172076.P6547084817686709362

`A062025(n)+A005581(n)`
-/

namespace A172076.P6547084817686709362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062025 n + A005581 n

end

end A172076.P6547084817686709362

namespace A172076

/-- `A062025(n)+A005581(n)` -/
def P6547084817686709362.Spec : Prop :=
  ∀ n, P6547084817686709362.a n = A172076 n

end A172076

/-! ## A172076.P12532718400540749608

`A135503(n)+A050441(n)`
-/

namespace A172076.P12532718400540749608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A050441 n

end

end A172076.P12532718400540749608

namespace A172076

/-- `A135503(n)+A050441(n)` -/
def P12532718400540749608.Spec : Prop :=
  ∀ n, P12532718400540749608.a n = A172076 n

end A172076

/-! ## A172076.P8295792258959760899

`A161680(n)+A063521(n)`
-/

namespace A172076.P8295792258959760899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A063521 n

end

end A172076.P8295792258959760899

namespace A172076

/-- `A161680(n)+A063521(n)` -/
def P8295792258959760899.Spec : Prop :=
  ∀ n, P8295792258959760899.a n = A172076 n

end A172076

/-! ## A172076.P2816097573680165

`A341768(n)+A215646(n)`
-/

namespace A172076.P2816097573680165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341768 n + A215646 n

end

end A172076.P2816097573680165

namespace A172076

/-- `A341768(n)+A215646(n)` -/
def P2816097573680165.Spec : Prop :=
  ∀ n, P2816097573680165.a n = A172076 n

end A172076

/-! ## A172076.P3874125299194342038

`A169607(n)-A028896(n)`
-/

namespace A172076.P3874125299194342038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169607 n - A028896 n

end

end A172076.P3874125299194342038

namespace A172076

/-- `A169607(n)-A028896(n)` -/
def P3874125299194342038.Spec : Prop :=
  ∀ n, P3874125299194342038.a n = A172076 n

end A172076

/-! ## A172076.P17489557304050110189

`A220084(n)-A090197(n)`
-/

namespace A172076.P17489557304050110189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220084 n - A090197 n

end

end A172076.P17489557304050110189

namespace A172076

/-- `A220084(n)-A090197(n)` -/
def P17489557304050110189.Spec : Prop :=
  ∀ n, P17489557304050110189.a n = A172076 n

end A172076

/-! ## A172076.P18101128031088175300

`A237617(n)-A135503(n)`
-/

namespace A172076.P18101128031088175300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237617 n - A135503 n

end

end A172076.P18101128031088175300

namespace A172076

/-- `A237617(n)-A135503(n)` -/
def P18101128031088175300.Spec : Prop :=
  ∀ n, P18101128031088175300.a n = A172076 n

end A172076

/-! ## A172076.P17038886447261726048

`A145067(n+1)+A033431(n)`
-/

namespace A172076.P17038886447261726048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145067 (n + 1) + A033431 n

end

end A172076.P17038886447261726048

namespace A172076

/-- `A145067(n+1)+A033431(n)` -/
def P17038886447261726048.Spec : Prop :=
  ∀ n, P17038886447261726048.a n = A172076 n

end A172076

/-!
# A172077: a(n) = n*(n+1)*(7*n^2 - n - 4)/4.

The programs for A172077, the canonical program `A172077.P2979719852962049009` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172077 has offset 0).

The definition of A172077 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A172077.anchor (n : ℕ) : (A172077 n : ℚ) = ((n * (n + 1) : ℤ) * ((7 * n ^ 2 : ℤ) - (n : ℤ) - 4) : ℚ) / 4` in `Proof.A172.A172077`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172077.P2979719852962049009

`n*(n+1)*(7*n²-n-4)/4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172077

/-- `n*(n+1)*(7*n²-n-4)/4` -/
def P2979719852962049009.Spec : Prop :=
  ∀ n, P2979719852962049009.a n = (A172077 n : ℚ)

end A172077

/-! ## A172077.P4178684554570883915

`∑[n*A051868(n)]`
-/

namespace A172077.P4178684554570883915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172077.P4178684554570883915

namespace A172077

/-- `∑[n*A051868(n)]` -/
def P4178684554570883915.Spec : Prop :=
  ∀ n, P4178684554570883915.a n = A172077 n

end A172077

/-! ## A172077.P3613006582054738118

`(A022264(n)-2)*∑[n]`
-/

namespace A172077.P3613006582054738118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022264 n - 2) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A172077.P3613006582054738118

namespace A172077

/-- `(A022264(n)-2)*∑[n]` -/
def P3613006582054738118.Spec : Prop :=
  ∀ n, P3613006582054738118.a n = A172077 n

end A172077

/-! ## A172077.P12065070984040099248

`A008893(n)-A051895(n)`
-/

namespace A172077.P12065070984040099248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008893 n - A051895 n

end

end A172077.P12065070984040099248

namespace A172077

/-- `A008893(n)-A051895(n)` -/
def P12065070984040099248.Spec : Prop :=
  ∀ n, P12065070984040099248.a n = A172077 n

end A172077

/-! ## A172077.P4603806824135052554

`A172045(n)+A035291(n+1)`
-/

namespace A172077.P4603806824135052554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172045 n + A035291 (n + 1)

end

end A172077.P4603806824135052554

namespace A172077

/-- `A172045(n)+A035291(n+1)` -/
def P4603806824135052554.Spec : Prop :=
  ∀ n, P4603806824135052554.a n = A172077 n

end A172077

/-! ## A172077.P13169457232551359105

`A172047(n)+A036464(n+1)`
-/

namespace A172077.P13169457232551359105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172047 n + A036464 (n + 1)

end

end A172077.P13169457232551359105

namespace A172077

/-- `A172047(n)+A036464(n+1)` -/
def P13169457232551359105.Spec : Prop :=
  ∀ n, P13169457232551359105.a n = A172077 n

end A172077

/-! ## A172077.P6978776171161602947

`A172085(n)-A036464(n+1)`
-/

namespace A172077.P6978776171161602947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172085 n - A036464 (n + 1)

end

end A172077.P6978776171161602947

namespace A172077

/-- `A172085(n)-A036464(n+1)` -/
def P6978776171161602947.Spec : Prop :=
  ∀ n, P6978776171161602947.a n = A172077 n

end A172077

/-! ## A172077.P4492587400088399970

`2*A172047(n)-A172045(n)`
-/

namespace A172077.P4492587400088399970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172047 n - A172045 n

end

end A172077.P4492587400088399970

namespace A172077

/-- `2*A172047(n)-A172045(n)` -/
def P4492587400088399970.Spec : Prop :=
  ∀ n, P4492587400088399970.a n = A172077 n

end A172077

/-! ## A172077.P17619209734409275785

`A172045(n)+2*A036464(n+1)`
-/

namespace A172077.P17619209734409275785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172045 n + 2 * A036464 (n + 1)

end

end A172077.P17619209734409275785

namespace A172077

/-- `A172045(n)+2*A036464(n+1)` -/
def P17619209734409275785.Spec : Prop :=
  ∀ n, P17619209734409275785.a n = A172077 n

end A172077

/-! ## A172077.P16154729060480384693

`A172047(n)+A035291(n+1)/2`
-/

namespace A172077.P16154729060480384693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172047 n : ℚ) + (A035291 (n + 1) : ℚ) / 2

end

end A172077.P16154729060480384693

namespace A172077

/-- `A172047(n)+A035291(n+1)/2` -/
def P16154729060480384693.Spec : Prop :=
  ∀ n, P16154729060480384693.a n = (A172077 n : ℚ)

end A172077

/-! ## A172077.P11917774259668072046

`A172075(n)+A036464(n+1)/2`
-/

namespace A172077.P11917774259668072046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172075 n : ℚ) + (A036464 (n + 1) : ℚ) / 2

end

end A172077.P11917774259668072046

namespace A172077

/-- `A172075(n)+A036464(n+1)/2` -/
def P11917774259668072046.Spec : Prop :=
  ∀ n, P11917774259668072046.a n = (A172077 n : ℚ)

end A172077

/-! ## A172077.P14082070823441392578

`A172085(n)-A035291(n+1)/2`
-/

namespace A172077.P14082070823441392578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172085 n : ℚ) - (A035291 (n + 1) : ℚ) / 2

end

end A172077.P14082070823441392578

namespace A172077

/-- `A172085(n)-A035291(n+1)/2` -/
def P14082070823441392578.Spec : Prop :=
  ∀ n, P14082070823441392578.a n = (A172077 n : ℚ)

end A172077

/-! ## A172077.P2391264906327796253

`A172080(n)-A036464(n+1)/2`
-/

namespace A172077.P2391264906327796253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172080 n : ℚ) - (A036464 (n + 1) : ℚ) / 2

end

end A172077.P2391264906327796253

namespace A172077

/-- `A172080(n)-A036464(n+1)/2` -/
def P2391264906327796253.Spec : Prop :=
  ∀ n, P2391264906327796253.a n = (A172077 n : ℚ)

end A172077

/-! ## A172077.P10282371906784841724

`(A069099(n+1)-A004767(n))*∑[n]`
-/

namespace A172077.P10282371906784841724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069099 (n + 1) - A004767 n) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A172077.P10282371906784841724

namespace A172077

/-- `(A069099(n+1)-A004767(n))*∑[n]` -/
def P10282371906784841724.Spec : Prop :=
  ∀ n, P10282371906784841724.a n = A172077 n

end A172077

/-! ## A172077.P3256693176084161186

`A000217(n)*A022264(n)-A002378(n)`
-/

namespace A172077.P3256693176084161186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A022264 n - A002378 n

end

end A172077.P3256693176084161186

namespace A172077

/-- `A000217(n)*A022264(n)-A002378(n)` -/
def P3256693176084161186.Spec : Prop :=
  ∀ n, P3256693176084161186.a n = A172077 n

end A172077

/-! ## A172077.P3096906030906876302

`A050534(2*n+1)-A001621(n)`
-/

namespace A172077.P3096906030906876302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 (2 * n + 1) - A001621 n

end

end A172077.P3096906030906876302

namespace A172077

/-- `A050534(2*n+1)-A001621(n)` -/
def P3096906030906876302.Spec : Prop :=
  ∀ n, P3096906030906876302.a n = A172077 n

end A172077

/-! ## A172077.P574000800005148837

`A050534(2*n+1)-A212135(n+1)/2`
-/

namespace A172077.P574000800005148837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050534 (2 * n + 1) : ℚ) - (A212135 (n + 1) : ℚ) / 2

end

end A172077.P574000800005148837

namespace A172077

/-- `A050534(2*n+1)-A212135(n+1)/2` -/
def P574000800005148837.Spec : Prop :=
  ∀ n, P574000800005148837.a n = (A172077 n : ℚ)

end A172077

/-! ## A172077.P5711302128329836488

`A085787(2*n)²-A000217(A001082(2*n+1))`
-/

namespace A172077.P5711302128329836488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 (2 * n) ^ 2 - A000217 (A001082 (2 * n + 1)).toNat

end

end A172077.P5711302128329836488

namespace A172077

/-- `A085787(2*n)²-A000217(A001082(2*n+1))` -/
def P5711302128329836488.Spec : Prop :=
  ∀ n, P5711302128329836488.a n = A172077 n

end A172077

/-!
# A172078: a(n) = n*(16*n^2 + 3*n - 13)/6.

The programs for A172078, the canonical program `A172078.P16285925449283628725` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172078 has offset 0).

The definition of A172078 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172078.P16285925449283628725

`n*(n+1)*(16*n-13)/6`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172078

/-- `n*(n+1)*(16*n-13)/6` -/
def P16285925449283628725.Spec : Prop :=
  ∀ n, P16285925449283628725.a n = (A172078 n : ℚ)

end A172078

/-! ## A172078.P12705487780919965639

`n*(16*n²+3*n-13)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172078.P12705487780919965639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((16 * n ^ 2 + 3 * n : ℤ) - 13) : ℚ) / 6

end

end A172078.P12705487780919965639

namespace A172078

/-- `n*(16*n²+3*n-13)/6` -/
def P12705487780919965639.Spec : Prop :=
  ∀ n, P12705487780919965639.a n = (A172078 n : ℚ)

end A172078

/-! ## A172078.P15223026118068172635

`∑[16*C(n, 2)]+∑[n]`
-/

namespace A172078.P15223026118068172635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * Nat.choose n 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A172078.P15223026118068172635

namespace A172078

/-- `∑[16*C(n, 2)]+∑[n]` -/
def P15223026118068172635.Spec : Prop :=
  ∀ n, (P15223026118068172635.a n : ℤ) = A172078 n

end A172078

/-! ## A172078.P17372759795764917853

`∑[A051870(n)]`
-/

namespace A172078.P17372759795764917853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172078.P17372759795764917853

namespace A172078

/-- `∑[A051870(n)]` -/
def P17372759795764917853.Spec : Prop :=
  ∀ n, P17372759795764917853.a n = A172078 n

end A172078

/-! ## A172078.P5780446891282425669

`∑[A125201(n)-1]`
-/

namespace A172078.P5780446891282425669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125201 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172078.P5780446891282425669

namespace A172078

/-- `∑[A125201(n)-1]` -/
def P5780446891282425669.Spec : Prop :=
  ∀ n, P5780446891282425669.a n = A172078 n

end A172078

/-! ## A172078.P13474154568383486846

`∑[A360417(n)-2]`
-/

namespace A172078.P13474154568383486846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360417 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172078.P13474154568383486846

namespace A172078

/-- `∑[A360417(n)-2]` -/
def P13474154568383486846.Spec : Prop :=
  ∀ n, P13474154568383486846.a n = A172078 n

end A172078

/-! ## A172078.P9106776766901313028

`∑[A139271(n)-n]`
-/

namespace A172078.P9106776766901313028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139271 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172078.P9106776766901313028

namespace A172078

/-- `∑[A139271(n)-n]` -/
def P9106776766901313028.Spec : Prop :=
  ∀ n, P9106776766901313028.a n = A172078 n

end A172078

/-! ## A172078.P1548549007680017132

`∑[A152995(n)-n²]`
-/

namespace A172078.P1548549007680017132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152995 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172078.P1548549007680017132

namespace A172078

/-- `∑[A152995(n)-n²]` -/
def P1548549007680017132.Spec : Prop :=
  ∀ n, P1548549007680017132.a n = A172078 n

end A172078

/-! ## A172078.P17483550182199708943

`∑[A033567(n)-(n+1)]`
-/

namespace A172078.P17483550182199708943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033567 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172078.P17483550182199708943

namespace A172078

/-- `∑[A033567(n)-(n+1)]` -/
def P17483550182199708943.Spec : Prop :=
  ∀ n, P17483550182199708943.a n = A172078 n

end A172078

/-! ## A172078.P14802160027882556928

`2*A007585(n)-∑[n]`
-/

namespace A172078.P14802160027882556928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007585 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A172078.P14802160027882556928

namespace A172078

/-- `2*A007585(n)-∑[n]` -/
def P14802160027882556928.Spec : Prop :=
  ∀ n, P14802160027882556928.a n = A172078 n

end A172078

/-! ## A172078.P13656484159035501039

`∑[n]+A063523(n)-n`
-/

namespace A172078.P13656484159035501039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A063523 n - (n : ℤ))

end

end A172078.P13656484159035501039

namespace A172078

/-- `∑[n]+A063523(n)-n` -/
def P13656484159035501039.Spec : Prop :=
  ∀ n, P13656484159035501039.a n = A172078 n

end A172078

/-! ## A172078.P3895300869305863882

`∑[A383464(n)]-(n+1)²`
-/

namespace A172078.P3895300869305863882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A172078.P3895300869305863882

namespace A172078

/-- `∑[A383464(n)]-(n+1)²` -/
def P3895300869305863882.Spec : Prop :=
  ∀ n, P3895300869305863882.a n = A172078 n

end A172078

/-! ## A172078.P16419920822902219425

`A139098(n)-(7*n-a(n-1))` with `a(0)=0`
-/

namespace A172078.P16419920822902219425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A139098 n - ((7 * n : ℤ) - a (n - 1))

end

end A172078.P16419920822902219425

namespace A172078

/-- `A139098(n)-(7*n-a(n-1))` -/
def P16419920822902219425.Spec : Prop :=
  ∀ n, P16419920822902219425.a n = A172078 n

end A172078

/-! ## A172078.P3974591666796679713

`A259110(n)-(Δ[n²]-∑[abs(1-n)]-n)`
-/

namespace A172078.P3974591666796679713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259110 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ))

end

end A172078.P3974591666796679713

namespace A172078

/-- `A259110(n)-(Δ[n²]-∑[abs(1-n)]-n)` -/
def P3974591666796679713.Spec : Prop :=
  ∀ n, P3974591666796679713.a n = A172078 n

end A172078

/-! ## A172078.P14685889298439804549

`A063522(n)+A005581(n)`
-/

namespace A172078.P14685889298439804549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063522 n + A005581 n

end

end A172078.P14685889298439804549

namespace A172078

/-- `A063522(n)+A005581(n)` -/
def P14685889298439804549.Spec : Prop :=
  ∀ n, P14685889298439804549.a n = A172078 n

end A172078

/-! ## A172078.P543383598626020980

`A063521(n)+A051925(n)`
-/

namespace A172078.P543383598626020980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063521 n + A051925 n

end

end A172078.P543383598626020980

namespace A172078

/-- `A063521(n)+A051925(n)` -/
def P543383598626020980.Spec : Prop :=
  ∀ n, P543383598626020980.a n = A172078 n

end A172078

/-! ## A172078.P12038681253052490542

`A161680(n)+A063523(n)`
-/

namespace A172078.P12038681253052490542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A063523 n

end

end A172078.P12038681253052490542

namespace A172078

/-- `A161680(n)+A063523(n)` -/
def P12038681253052490542.Spec : Prop :=
  ∀ n, P12038681253052490542.a n = A172078 n

end A172078

/-! ## A172078.P15428724298450562325

`A177890(n)+A135503(n)`
-/

namespace A172078.P15428724298450562325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177890 n + A135503 n

end

end A172078.P15428724298450562325

namespace A172078

/-- `A177890(n)+A135503(n)` -/
def P15428724298450562325.Spec : Prop :=
  ∀ n, P15428724298450562325.a n = A172078 n

end A172078

/-! ## A172078.P3815614364948065646

`A057813(n)-A198017(n)`
-/

namespace A172078.P3815614364948065646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057813 n - A198017 n

end

end A172078.P3815614364948065646

namespace A172078

/-- `A057813(n)-A198017(n)` -/
def P3815614364948065646.Spec : Prop :=
  ∀ n, P3815614364948065646.a n = A172078 n

end A172078

/-! ## A172078.P16625920969021840414

`A304659(n)-A046092(n)`
-/

namespace A172078.P16625920969021840414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304659 n - A046092 n

end

end A172078.P16625920969021840414

namespace A172078

/-- `A304659(n)-A046092(n)` -/
def P16625920969021840414.Spec : Prop :=
  ∀ n, P16625920969021840414.a n = A172078 n

end A172078

/-!
# A172079: First differences of A181669.

The programs for A172079, there is no canonical definition to state claims against.
-/

/-! ## A172079.P13435091547149194097

`Δ[A181669(n+1)]`
-/

namespace A172079.P13435091547149194097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172079.P13435091547149194097

/-! ## A172079.P9326196034911466824

`Δ[A181602(ceil(cosh(sin(n))+n))]`
-/

namespace A172079.P9326196034911466824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181602 ⌈Real.cosh (Real.sin (n : ℝ)) + (n : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172079.P9326196034911466824

/-! ## A172079.P17737569588243709081

`Δ[p?[A181602(n+1)+char[1]]]`
-/

namespace A172079.P17737569588243709081
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181602 (n + 1) + ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172079.P17737569588243709081

/-! ## A172079.P3320284126865847621

`Δ[A181602(n+2-floor(acot(n)))]`
-/

namespace A172079.P3320284126865847621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181602 ((n + 2 : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172079.P3320284126865847621

/-! ## A172079.P2836115070055422240

`Δ[A181602(n+3-ceil(acot(n)))]`
-/

namespace A172079.P2836115070055422240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181602 ((n + 3 : ℤ) - ⌈SequenceMachineLib.acot (n : ℝ)⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172079.P2836115070055422240

/-!
# A172080: a(n) = n*(12*n^3 + 10*n^2 - 9*n - 7)/6.

The programs for A172080, the canonical program `A172080.P7991216407013649424` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172080 has offset 0).

The definition of A172080 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172080.P7991216407013649424

`n*(n+1)*(12*n²-2*n-7)/6`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172080

/-- `n*(n+1)*(12*n²-2*n-7)/6` -/
def P7991216407013649424.Spec : Prop :=
  ∀ n, P7991216407013649424.a n = (A172080 n : ℚ)

end A172080

/-! ## A172080.P15660566417474558938

`n*(12*n^3+10*n²-9*n-7)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172080.P15660566417474558938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((12 * n ^ 3 + 10 * n ^ 2 : ℤ) - (9 * n : ℤ) - 7) : ℚ) / 6

end

end A172080.P15660566417474558938

namespace A172080

/-- `n*(12*n^3+10*n²-9*n-7)/6` -/
def P15660566417474558938.Spec : Prop :=
  ∀ n, P15660566417474558938.a n = (A172080 n : ℚ)

end A172080

/-! ## A172080.P12465232280719751022

`C(n*(2*n+1), 2)-∑[∑[2*n]]`
-/

namespace A172080.P12465232280719751022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n * (2 * n + 1)) 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A172080.P12465232280719751022

namespace A172080

/-- `C(n*(2*n+1), 2)-∑[∑[2*n]]` -/
def P12465232280719751022.Spec : Prop :=
  ∀ n, P12465232280719751022.a n = A172080 n

end A172080

/-! ## A172080.P16825909338508810949

`∑[n*A051870(n)]`
-/

namespace A172080.P16825909338508810949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172080.P16825909338508810949

namespace A172080

/-- `∑[n*A051870(n)]` -/
def P16825909338508810949.Spec : Prop :=
  ∀ n, P16825909338508810949.a n = A172080 n

end A172080

/-! ## A172080.P12873827468315611627

`A254371(n)-A169607(n)`
-/

namespace A172080.P12873827468315611627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254371 n - A169607 n

end

end A172080.P12873827468315611627

namespace A172080

/-- `A254371(n)-A169607(n)` -/
def P12873827468315611627.Spec : Prop :=
  ∀ n, P12873827468315611627.a n = A172080 n

end A172080

/-! ## A172080.P16281622875947113526

`A172075(n)+A036464(n+1)`
-/

namespace A172080.P16281622875947113526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172075 n + A036464 (n + 1)

end

end A172080.P16281622875947113526

namespace A172080

/-- `A172075(n)+A036464(n+1)` -/
def P16281622875947113526.Spec : Prop :=
  ∀ n, P16281622875947113526.a n = A172080 n

end A172080

/-! ## A172080.P17863164572970271267

`A172118(n)-A036464(n+1)`
-/

namespace A172080.P17863164572970271267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172118 n - A036464 (n + 1)

end

end A172080.P17863164572970271267

namespace A172080

/-- `A172118(n)-A036464(n+1)` -/
def P17863164572970271267.Spec : Prop :=
  ∀ n, P17863164572970271267.a n = A172080 n

end A172080

/-! ## A172080.P2887129479563261376

`A237516(n+1)-A299646(n)`
-/

namespace A172080.P2887129479563261376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237516 (n + 1) - A299646 n

end

end A172080.P2887129479563261376

namespace A172080

/-- `A237516(n+1)-A299646(n)` -/
def P2887129479563261376.Spec : Prop :=
  ∀ n, P2887129479563261376.a n = A172080 n

end A172080

/-! ## A172080.P7077556645938711910

`n*A135713(n)-A162148(n)`
-/

namespace A172080.P7077556645938711910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A135713 n - A162148 n

end

end A172080.P7077556645938711910

namespace A172080

/-- `n*A135713(n)-A162148(n)` -/
def P7077556645938711910.Spec : Prop :=
  ∀ n, P7077556645938711910.a n = A172080 n

end A172080

/-! ## A172080.P1490412174689760819

`2*A002378(n)²-A169607(n)`
-/

namespace A172080.P1490412174689760819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002378 n ^ 2 - A169607 n

end

end A172080.P1490412174689760819

namespace A172080

/-- `2*A002378(n)²-A169607(n)` -/
def P1490412174689760819.Spec : Prop :=
  ∀ n, P1490412174689760819.a n = A172080 n

end A172080

/-! ## A172080.P1978482196915441896

`A000330(n)+2*A035291(n+1)`
-/

namespace A172080.P1978482196915441896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n + 2 * A035291 (n + 1)

end

end A172080.P1978482196915441896

namespace A172080

/-- `A000330(n)+2*A035291(n+1)` -/
def P1978482196915441896.Spec : Prop :=
  ∀ n, P1978482196915441896.a n = A172080 n

end A172080

/-! ## A172080.P9128526009810455094

`A172075(n)+A035291(n+1)/2`
-/

namespace A172080.P9128526009810455094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172075 n : ℚ) + (A035291 (n + 1) : ℚ) / 2

end

end A172080.P9128526009810455094

namespace A172080

/-- `A172075(n)+A035291(n+1)/2` -/
def P9128526009810455094.Spec : Prop :=
  ∀ n, P9128526009810455094.a n = (A172080 n : ℚ)

end A172080

/-! ## A172080.P3628701399142524357

`A172077(n)+A036464(n+1)/2`
-/

namespace A172080.P3628701399142524357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172077 n : ℚ) + (A036464 (n + 1) : ℚ) / 2

end

end A172080.P3628701399142524357

namespace A172080

/-- `A172077(n)+A036464(n+1)/2` -/
def P3628701399142524357.Spec : Prop :=
  ∀ n, P3628701399142524357.a n = (A172080 n : ℚ)

end A172080

/-! ## A172080.P7038697981415859131

`A172118(n)-A035291(n+1)/2`
-/

namespace A172080.P7038697981415859131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172118 n : ℚ) - (A035291 (n + 1) : ℚ) / 2

end

end A172080.P7038697981415859131

namespace A172080

/-- `A172118(n)-A035291(n+1)/2` -/
def P7038697981415859131.Spec : Prop :=
  ∀ n, P7038697981415859131.a n = (A172080 n : ℚ)

end A172080

/-! ## A172080.P17894216113825637936

`A172085(n)-A036464(n+1)/2`
-/

namespace A172080.P17894216113825637936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172085 n : ℚ) - (A036464 (n + 1) : ℚ) / 2

end

end A172080.P17894216113825637936

namespace A172080

/-- `A172085(n)-A036464(n+1)/2` -/
def P17894216113825637936.Spec : Prop :=
  ∀ n, P17894216113825637936.a n = (A172080 n : ℚ)

end A172080

/-! ## A172080.P3935420403559238357

`A050534(2*n+1)-A007290(n+2)`
-/

namespace A172080.P3935420403559238357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 (2 * n + 1) - A007290 (n + 2)

end

end A172080.P3935420403559238357

namespace A172080

/-- `A050534(2*n+1)-A007290(n+2)` -/
def P3935420403559238357.Spec : Prop :=
  ∀ n, P3935420403559238357.a n = A172080 n

end A172080

/-!
# A172082: a(n) = n*(n+1)*(6*n-5)/2.

The programs for A172082, the canonical program `A172082.P4108796344621455831` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172082 has offset 0).

The definition of A172082 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(6*n-5)/2` (program `A172082.P12401364420837458188`, by `A172082.P12401364420837458188.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172082.P12401364420837458188

`n*(n+1)*(6*n-5)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172082.P12401364420837458188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((6 * n : ℤ) - 5) : ℚ) / 2

end

end A172082.P12401364420837458188

namespace A172082

/-- `n*(n+1)*(6*n-5)/2` -/
def P12401364420837458188.Spec : Prop :=
  ∀ n, P12401364420837458188.a n = (A172082 n : ℚ)

theorem P12401364420837458188.correct : P12401364420837458188.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A172082, Nat.add_sub_cancel, A172082.P12401364420837458188.a, A172082.P4108796344621455831.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A172082, Nat.add_sub_cancel, A172082.P12401364420837458188.a, A172082.P4108796344621455831.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A172082

/-! ## A172082.P4108796344621455831

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=21, a(3)=78`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172082

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P4108796344621455831.Spec : Prop :=
  ∀ n, P4108796344621455831.a n = A172082 n

theorem P4108796344621455831.correct : P4108796344621455831.Spec := by
  intro n
  simp only [A172082]

end A172082

/-! ## A172082.P15036104676874592608

`∑[∑[a(n-1)+18]]` with `a(0)=0, a(1)=1`
-/

namespace A172082.P15036104676874592608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + 18

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172082.P15036104676874592608

namespace A172082

/-- `∑[∑[a(n-1)+18]]` -/
def P15036104676874592608.Spec : Prop :=
  ∀ n, (P15036104676874592608.a n : ℤ) = A172082 n

end A172082

/-! ## A172082.P11270223188249540417

`C(n+1, 2)+18*C(n+1, 3)`
-/

namespace A172082.P11270223188249540417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + 18 * Nat.choose (n + 1) 3

end

end A172082.P11270223188249540417

namespace A172082

/-- `C(n+1, 2)+18*C(n+1, 3)` -/
def P11270223188249540417.Spec : Prop :=
  ∀ n, (P11270223188249540417.a n : ℤ) = A172082 n

end A172082

/-! ## A172082.P1874376064903544120

`(2*n+n-1)²+a(n-1)-(2*n+1)` with `a(0)=0`
-/

namespace A172082.P1874376064903544120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((2 * n : ℤ) + ((n : ℤ) - 1)) ^ 2 + (a (n - 1) - (2 * n + 1 : ℤ))

end

end A172082.P1874376064903544120

namespace A172082

/-- `(2*n+n-1)²+a(n-1)-(2*n+1)` -/
def P1874376064903544120.Spec : Prop :=
  ∀ n, P1874376064903544120.a n = A172082 n

end A172082

/-! ## A172082.P2356784793072721824

`∑[A051872(n)]`
-/

namespace A172082.P2356784793072721824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172082.P2356784793072721824

namespace A172082

/-- `∑[A051872(n)]` -/
def P2356784793072721824.Spec : Prop :=
  ∀ n, P2356784793072721824.a n = A172082 n

end A172082

/-! ## A172082.P17094404143321988475

`∑[A154254(n)-2]`
-/

namespace A172082.P17094404143321988475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154254 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172082.P17094404143321988475

namespace A172082

/-- `∑[A154254(n)-2]` -/
def P17094404143321988475.Spec : Prop :=
  ∀ n, P17094404143321988475.a n = A172082 n

end A172082

/-! ## A172082.P226837155734607948

`∑[A152995(n)-n]`
-/

namespace A172082.P226837155734607948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152995 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172082.P226837155734607948

namespace A172082

/-- `∑[A152995(n)-n]` -/
def P226837155734607948.Spec : Prop :=
  ∀ n, P226837155734607948.a n = A172082 n

end A172082

/-! ## A172082.P17313713170234587765

`∑[A152965(n)-n²]`
-/

namespace A172082.P17313713170234587765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152965 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172082.P17313713170234587765

namespace A172082

/-- `∑[A152965(n)-n²]` -/
def P17313713170234587765.Spec : Prop :=
  ∀ n, P17313713170234587765.a n = A172082 n

end A172082

/-! ## A172082.P1669130671507431652

`∑[A226490(n)-∑[n]]`
-/

namespace A172082.P1669130671507431652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226490 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172082.P1669130671507431652

namespace A172082

/-- `∑[A226490(n)-∑[n]]` -/
def P1669130671507431652.Spec : Prop :=
  ∀ n, P1669130671507431652.a n = A172082 n

end A172082

/-! ## A172082.P6546217620341423342

`2*A007586(n)-∑[n]`
-/

namespace A172082.P6546217620341423342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007586 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A172082.P6546217620341423342

namespace A172082

/-- `2*A007586(n)-∑[n]` -/
def P6546217620341423342.Spec : Prop :=
  ∀ n, P6546217620341423342.a n = A172082 n

end A172082

/-! ## A172082.P8833223682540471618

`∑[2*A051682(n)-n]`
-/

namespace A172082.P8833223682540471618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051682 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172082.P8833223682540471618

namespace A172082

/-- `∑[2*A051682(n)-n]` -/
def P8833223682540471618.Spec : Prop :=
  ∀ n, P8833223682540471618.a n = A172082 n

end A172082

/-! ## A172082.P5237205903166834010

`∑[A152751(n)-2*n]`
-/

namespace A172082.P5237205903166834010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152751 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172082.P5237205903166834010

namespace A172082

/-- `∑[A152751(n)-2*n]` -/
def P5237205903166834010.Spec : Prop :=
  ∀ n, P5237205903166834010.a n = A172082 n

end A172082

/-! ## A172082.P12680698427422185574

`(n+1)/2*A051866(n)`
-/

namespace A172082.P12680698427422185574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A051866 n : ℚ)

end

end A172082.P12680698427422185574

namespace A172082

/-- `(n+1)/2*A051866(n)` -/
def P12680698427422185574.Spec : Prop :=
  ∀ n, P12680698427422185574.a n = (A172082 n : ℚ)

theorem P12680698427422185574.correct : P12680698427422185574.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A172082, Nat.add_sub_cancel, A172082.P12680698427422185574.a, A172082.P4108796344621455831.a, A051866, A051866.P7037994286834974710.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A172082, Nat.add_sub_cancel, A172082.P12680698427422185574.a, A172082.P4108796344621455831.a, A051866, A051866.P7037994286834974710.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A172082

/-! ## A172082.P9927887471028685086

`A272378(n)-a(n-1)` with `a(0)=0`
-/

namespace A172082.P9927887471028685086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A272378 n - a (n - 1)

end

end A172082.P9927887471028685086

namespace A172082

/-- `A272378(n)-a(n-1)` -/
def P9927887471028685086.Spec : Prop :=
  ∀ n, P9927887471028685086.a n = A172082 n

end A172082

/-! ## A172082.P8844256100130442132

`A115519(n)-n*(n+3)`
-/

namespace A172082.P8844256100130442132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115519 n - (n * (n + 3) : ℤ)

end

end A172082.P8844256100130442132

namespace A172082

/-- `A115519(n)-n*(n+3)` -/
def P8844256100130442132.Spec : Prop :=
  ∀ n, P8844256100130442132.a n = A172082 n

end A172082

/-! ## A172082.P8214947868719786303

`∑[n*(A181390(n+1)+n)]`
-/

namespace A172082.P8214947868719786303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A181390 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172082.P8214947868719786303

namespace A172082

/-- `∑[n*(A181390(n+1)+n)]` -/
def P8214947868719786303.Spec : Prop :=
  ∀ n, P8214947868719786303.a n = A172082 n

end A172082

/-! ## A172082.P1172057293610558588

`A063523(n)+A051925(n)`
-/

namespace A172082.P1172057293610558588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063523 n + A051925 n

end

end A172082.P1172057293610558588

namespace A172082

/-- `A063523(n)+A051925(n)` -/
def P1172057293610558588.Spec : Prop :=
  ∀ n, P1172057293610558588.a n = A172082 n

end A172082

/-! ## A172082.P13013290866303127091

`A270205(n)+A051867(n)`
-/

namespace A172082.P13013290866303127091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270205 n + A051867 n

end

end A172082.P13013290866303127091

namespace A172082

/-- `A270205(n)+A051867(n)` -/
def P13013290866303127091.Spec : Prop :=
  ∀ n, P13013290866303127091.a n = A172082 n

end A172082

/-!
# A172083: 1, followed by numerators of first differences of Bernoulli numbers (B(i) - B(i-1)).

The programs for A172083, there is no canonical definition to state claims against.
-/

/-! ## A172083.P15335345614046434044

`A172086(n)+A016231(A052905(n))`
-/

namespace A172083.P15335345614046434044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172086 n + A016231 (A052905 n).toNat

end

end A172083.P15335345614046434044

/-! ## A172083.P5874234304786909461

`A172086(n)-A154269(A000041(n))`
-/

namespace A172083.P5874234304786909461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172086 n - A154269 (A000041 n).toNat

end

end A172083.P5874234304786909461

/-! ## A172083.P16631900413171967868

`A172086(n)-A154269(A001401(n))`
-/

namespace A172083.P16631900413171967868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172086 n - A154269 (A001401 n).toNat

end

end A172083.P16631900413171967868

/-! ## A172083.P5169968456699376054

`xor(A010674(A094497(n)), A172086(n))`
-/

namespace A172083.P5169968456699376054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010674 (A094497 n).toNat) (A172086 n)

end

end A172083.P5169968456699376054

/-! ## A172083.P2828653477753927709

`xor(A010674(A182062(n)), A172086(n))`
-/

namespace A172083.P2828653477753927709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010674 (A182062 n).toNat) (A172086 n)

end

end A172083.P2828653477753927709

/-!
# A172085: a(n) = n*(27*n^3 + 22*n^2 - 21*n - 16)/12.

The programs for A172085, the canonical program `A172085.P11806554903667462835` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172085 has offset 0).

The definition of A172085 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(27*n^3+22*n²-21*n-16)/12` (program `A172085.P6171135598579825350`, by `A172085.P6171135598579825350.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172085.P5684562877544911632

`n*(n+1)*(27*n²-5*n-16)/12`
-/

namespace A172085.P5684562877544911632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((27 * n ^ 2 : ℤ) - (5 * n : ℤ) - 16) : ℚ) / 12

end

end A172085.P5684562877544911632

namespace A172085

/-- `n*(n+1)*(27*n²-5*n-16)/12` -/
def P5684562877544911632.Spec : Prop :=
  ∀ n, P5684562877544911632.a n = (A172085 n : ℚ)

theorem P5684562877544911632.correct : P5684562877544911632.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A172085, Nat.add_sub_cancel, A172085.P5684562877544911632.a, A172085.P11806554903667462835.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A172085, Nat.add_sub_cancel, A172085.P5684562877544911632.a, A172085.P11806554903667462835.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A172085

/-! ## A172085.P6171135598579825350

`n*(27*n^3+22*n²-21*n-16)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172085.P6171135598579825350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((27 * n ^ 3 + 22 * n ^ 2 : ℤ) - (21 * n : ℤ) - 16) : ℚ) / 12

end

end A172085.P6171135598579825350

namespace A172085

/-- `n*(27*n^3+22*n²-21*n-16)/12` -/
def P6171135598579825350.Spec : Prop :=
  ∀ n, P6171135598579825350.a n = (A172085 n : ℚ)

theorem P6171135598579825350.correct : P6171135598579825350.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A172085, Nat.add_sub_cancel, A172085.P6171135598579825350.a, A172085.P11806554903667462835.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A172085, Nat.add_sub_cancel, A172085.P6171135598579825350.a, A172085.P11806554903667462835.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A172085

/-! ## A172085.P11806554903667462835

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=41, a(3)=212, a(4)=660`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172085

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P11806554903667462835.Spec : Prop :=
  ∀ n, P11806554903667462835.a n = A172085 n

theorem P11806554903667462835.correct : P11806554903667462835.Spec := by
  intro n
  simp only [A172085]

end A172085

/-! ## A172085.P3023376370638889043

`∑[n*A051872(n)]`
-/

namespace A172085.P3023376370638889043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172085.P3023376370638889043

namespace A172085

/-- `∑[n*A051872(n)]` -/
def P3023376370638889043.Spec : Prop :=
  ∀ n, P3023376370638889043.a n = A172085 n

end A172085

/-! ## A172085.P6288513454202221962

`A172047(n)+A035291(n+1)`
-/

namespace A172085.P6288513454202221962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172047 n + A035291 (n + 1)

end

end A172085.P6288513454202221962

namespace A172085

/-- `A172047(n)+A035291(n+1)` -/
def P6288513454202221962.Spec : Prop :=
  ∀ n, P6288513454202221962.a n = A172085 n

end A172085

/-! ## A172085.P453476433308937407

`A172077(n)+A036464(n+1)`
-/

namespace A172085.P453476433308937407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172077 n + A036464 (n + 1)

end

end A172085.P453476433308937407

namespace A172085

/-- `A172077(n)+A036464(n+1)` -/
def P453476433308937407.Spec : Prop :=
  ∀ n, P453476433308937407.a n = A172085 n

end A172085

/-! ## A172085.P15253428272886667499

`2*A172047(n)-A000537(n)`
-/

namespace A172085.P15253428272886667499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172047 n - A000537 n

end

end A172085.P15253428272886667499

namespace A172085

/-- `2*A172047(n)-A000537(n)` -/
def P15253428272886667499.Spec : Prop :=
  ∀ n, P15253428272886667499.a n = A172085 n

end A172085

/-! ## A172085.P14810101384990759017

`2*A172077(n)-A172047(n)`
-/

namespace A172085.P14810101384990759017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172077 n - A172047 n

end

end A172085.P14810101384990759017

namespace A172085

/-- `2*A172077(n)-A172047(n)` -/
def P14810101384990759017.Spec : Prop :=
  ∀ n, P14810101384990759017.a n = A172085 n

end A172085

/-! ## A172085.P5639489253738139283

`A045943(n)²-2*A002492(n)`
-/

namespace A172085.P5639489253738139283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n ^ 2 - 2 * A002492 n

end

end A172085.P5639489253738139283

namespace A172085

/-- `A045943(n)²-2*A002492(n)` -/
def P5639489253738139283.Spec : Prop :=
  ∀ n, P5639489253738139283.a n = A172085 n

end A172085

/-! ## A172085.P8825162978444740632

`A000537(n)+2*A035291(n+1)`
-/

namespace A172085.P8825162978444740632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n + 2 * A035291 (n + 1)

end

end A172085.P8825162978444740632

namespace A172085

/-- `A000537(n)+2*A035291(n+1)` -/
def P8825162978444740632.Spec : Prop :=
  ∀ n, P8825162978444740632.a n = A172085 n

end A172085

/-! ## A172085.P16933522763828248976

`A172047(n)+2*A036464(n+1)`
-/

namespace A172085.P16933522763828248976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172047 n + 2 * A036464 (n + 1)

end

end A172085.P16933522763828248976

namespace A172085

/-- `A172047(n)+2*A036464(n+1)` -/
def P16933522763828248976.Spec : Prop :=
  ∀ n, P16933522763828248976.a n = A172085 n

end A172085

/-! ## A172085.P9565902822514670969

`A172077(n)+A035291(n+1)/2`
-/

namespace A172085.P9565902822514670969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172077 n : ℚ) + (A035291 (n + 1) : ℚ) / 2

end

end A172085.P9565902822514670969

namespace A172085

/-- `A172077(n)+A035291(n+1)/2` -/
def P9565902822514670969.Spec : Prop :=
  ∀ n, P9565902822514670969.a n = (A172085 n : ℚ)

end A172085

/-! ## A172085.P15850895518449519390

`A172080(n)+A036464(n+1)/2`
-/

namespace A172085.P15850895518449519390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172080 n : ℚ) + (A036464 (n + 1) : ℚ) / 2

end

end A172085.P15850895518449519390

namespace A172085

/-- `A172080(n)+A036464(n+1)/2` -/
def P15850895518449519390.Spec : Prop :=
  ∀ n, P15850895518449519390.a n = (A172085 n : ℚ)

end A172085

/-! ## A172085.P7743556296813661779

`A172118(n)-A036464(n+1)/2`
-/

namespace A172085.P7743556296813661779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172118 n : ℚ) - (A036464 (n + 1) : ℚ) / 2

end

end A172085.P7743556296813661779

namespace A172085

/-- `A172118(n)-A036464(n+1)/2` -/
def P7743556296813661779.Spec : Prop :=
  ∀ n, P7743556296813661779.a n = (A172085 n : ℚ)

end A172085

/-! ## A172085.P3179877913620646178

`A000326(n+1)*A000326(n)-A304993(n)`
-/

namespace A172085.P3179877913620646178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1) * A000326 n - A304993 n

end

end A172085.P3179877913620646178

namespace A172085

/-- `A000326(n+1)*A000326(n)-A304993(n)` -/
def P3179877913620646178.Spec : Prop :=
  ∀ n, P3179877913620646178.a n = A172085 n

end A172085

/-! ## A172085.P17519992737590714825

`A001840(3*n)²-A006918(4*n)`
-/

namespace A172085.P17519992737590714825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (3 * n) ^ 2 - A006918 (4 * n)

end

end A172085.P17519992737590714825

namespace A172085

/-- `A001840(3*n)²-A006918(4*n)` -/
def P17519992737590714825.Spec : Prop :=
  ∀ n, P17519992737590714825.a n = A172085 n

end A172085

/-!
# A172086: Numerators of sum (C(n) = A051716/A051717) + (1 followed by first differences A172083/A051717 of Bernoulli numbers).

The programs for A172086, there is no canonical definition to state claims against.
-/

/-! ## A172086.P13045933527075515306

`Δ[A256003(n)]`
-/

namespace A172086.P13045933527075515306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172086.P13045933527075515306

/-! ## A172086.P3233735821374889939

`(-1)^n*A256003(or(1, n))`
-/

namespace A172086.P3233735821374889939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A256003 (Nat.lor 1 n)

end

end A172086.P3233735821374889939

/-! ## A172086.P15745318184718354736

`Δ[A027641((n-1)^(n%2))+∏{d}[1-n, #%2]]`
-/

namespace A172086.P15745318184718354736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 (((n : ℤ) - 1) ^ (n % 2)).toNat + ((∏ d ∈ Nat.divisors (f2 n).natAbs, d % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172086.P15745318184718354736

/-! ## A172086.P6720180179424955177

`A256003(n+1)-A256003(n)`
-/

namespace A172086.P6720180179424955177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256003 (n + 1) - A256003 n

end

end A172086.P6720180179424955177

/-! ## A172086.P3432792323890802860

`A027641(n)-A027641(xor(1, n))`
-/

namespace A172086.P3432792323890802860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n - A027641 (Nat.xor 1 n)

end

end A172086.P3432792323890802860

/-!
# A172087: A001897 with terms repeated.

The programs for A172087, the canonical program `A172087.P4108028179192671906` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172087 has offset 0).

The definition of A172087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172087.P4108028179192671906

`A141459(and(n, -2))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A172087

/-- `A141459(and(n, -2))` -/
def P4108028179192671906.Spec : Prop :=
  ∀ n, P4108028179192671906.a n = A172087 n

theorem P4108028179192671906.correct : P4108028179192671906.Spec := by
  intro n
  simp only [A172087]

end A172087

/-! ## A172087.P3368024845504643828

`lcm(2, A051717(n))/2`
-/

namespace A172087.P3368024845504643828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A051717 n) : ℚ) / 2

end

end A172087.P3368024845504643828

namespace A172087

/-- `lcm(2, A051717(n))/2` -/
def P3368024845504643828.Spec : Prop :=
  ∀ n, P3368024845504643828.a n = (A172087 n : ℚ)

end A172087

/-! ## A172087.P14630935374875860906

`A141459(or(1, n)-1)`
-/

namespace A172087.P14630935374875860906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 (Nat.lor 1 n - 1)

end

end A172087.P14630935374875860906

namespace A172087

/-- `A141459(or(1, n)-1)` -/
def P14630935374875860906.Spec : Prop :=
  ∀ n, P14630935374875860906.a n = A172087 n

end A172087

/-! ## A172087.P12490841129840828567

`A051717(or(1, n))/2`
-/

namespace A172087.P12490841129840828567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051717 (Nat.lor 1 n) : ℚ) / 2

end

end A172087.P12490841129840828567

namespace A172087

/-- `A051717(or(1, n))/2` -/
def P12490841129840828567.Spec : Prop :=
  ∀ n, P12490841129840828567.a n = (A172087 n : ℚ)

end A172087

/-! ## A172087.P3834707508365588299

`A141459(A052928(n))`
-/

namespace A172087.P3834707508365588299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 (A052928 n).toNat

end

end A172087.P3834707508365588299

namespace A172087

/-- `A141459(A052928(n))` -/
def P3834707508365588299.Spec : Prop :=
  ∀ n, P3834707508365588299.a n = A172087 n

end A172087

/-! ## A172087.P16930435534121471504

`A141459(2*A004526(n))`
-/

namespace A172087.P16930435534121471504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 (2 * A004526 n).toNat

end

end A172087.P16930435534121471504

namespace A172087

/-- `A141459(2*A004526(n))` -/
def P16930435534121471504.Spec : Prop :=
  ∀ n, P16930435534121471504.a n = A172087 n

end A172087

/-! ## A172087.P2508833851493380386

`A141459(n-A059841(n+1))`
-/

namespace A172087.P2508833851493380386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 ((n : ℤ) - A059841 (n + 1)).toNat

end

end A172087.P2508833851493380386

namespace A172087

/-- `A141459(n-A059841(n+1))` -/
def P2508833851493380386.Spec : Prop :=
  ∀ n, P2508833851493380386.a n = A172087 n

end A172087

/-! ## A172087.P6627995326401289195

`A001897(floor(n/2))`
-/

namespace A172087.P6627995326401289195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001897 ⌊(n : ℚ) / 2⌋.toNat

end

end A172087.P6627995326401289195

namespace A172087

/-- `A001897(floor(n/2))` -/
def P6627995326401289195.Spec : Prop :=
  ∀ n, P6627995326401289195.a n = A172087 n

end A172087

/-! ## A172087.P16536425382805565625

`gcd(A051717(n), A217858(n+1))`
-/

namespace A172087.P16536425382805565625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051717 n) (A217858 (n + 1))

end

end A172087.P16536425382805565625

namespace A172087

/-- `gcd(A051717(n), A217858(n+1))` -/
def P16536425382805565625.Spec : Prop :=
  ∀ n, (P16536425382805565625.a n : ℤ) = A172087 n

end A172087

/-!
# A172088: Triangle: T(n,m) = n!! - m!! - (n-m)!! read by rows 0 <= m <= n, where ()!! are the double factorials.

The programs for A172088, the canonical program `A172088.P8529767009654993960` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172088 has offset 0).

The definition of A172088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172088.P8529767009654993960

`A006882(row(n))-A006882(col(n))-A006882(row(n)-col(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A172088

/-- `A006882(row(n))-A006882(col(n))-A006882(row(n)-col(n))` -/
def P8529767009654993960.Spec : Prop :=
  ∀ n, P8529767009654993960.a n = A172088 n

theorem P8529767009654993960.correct : P8529767009654993960.Spec := by
  intro n
  simp only [A172088]

end A172088

/-!
# A172089: Triangle T(n,m) = n!/(m!!*(n-m)!!) read by rows, where (.)!! = A006882(.) are double factorials.

The programs for A172089, the canonical program `A172089.P13994400287206175773` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172089 has offset 0).

The definition of A172089 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172089.P13994400287206175773

`A000142(row(n))/(A006882(col(n))*A006882(row(n)-col(n)))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A172089

/-- `A000142(row(n))/(A006882(col(n))*A006882(row(n)-col(n)))` -/
def P13994400287206175773.Spec : Prop :=
  ∀ n, P13994400287206175773.a n = (A172089 n : ℚ)

end A172089

/-! ## A172089.P1671809155330200679

`A201052(A039913(n)!)`
-/

namespace A172089.P1671809155330200679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201052 (Nat.factorial (A039913 n).toNat)

end

end A172089.P1671809155330200679

namespace A172089

/-- `A201052(A039913(n)!)` -/
def P1671809155330200679.Spec : Prop :=
  ∀ n, P1671809155330200679.a n = A172089 n

end A172089

/-! ## A172089.P2827552524514684222

`A027615(A000041(A039913(n)²))`
-/

namespace A172089.P2827552524514684222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027615 (A000041 (A039913 n ^ 2).toNat).toNat

end

end A172089.P2827552524514684222

namespace A172089

/-- `A027615(A000041(A039913(n)²))` -/
def P2827552524514684222.Spec : Prop :=
  ∀ n, P2827552524514684222.a n = A172089 n

end A172089

/-! ## A172089.P3108137450479760169

`A055980(A039913(n)^A039913(n))`
-/

namespace A172089.P3108137450479760169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055980 (SequenceMachineLib.roundAway ((A039913 n : ℚ) ^ (A039913 n : ℤ))).toNat

end

end A172089.P3108137450479760169

namespace A172089

/-- `A055980(A039913(n)^A039913(n))` -/
def P3108137450479760169.Spec : Prop :=
  ∀ n, P3108137450479760169.a n = A172089 n

end A172089

/-! ## A172089.P9528647723407797572

`A193905(A039913(n))%A193905(3*(n+1))`
-/

namespace A172089.P9528647723407797572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193905 (A039913 n).toNat) (A193905 (3 * (n + 1)))

end

end A172089.P9528647723407797572

namespace A172089

/-- `A193905(A039913(n))%A193905(3*(n+1))` -/
def P9528647723407797572.Spec : Prop :=
  ∀ n, P9528647723407797572.a n = A172089 n

end A172089

/-!
# A172090: Triangle T(n, k) = f(n-k) + f(k) - f(n), where f(n) = -3*n with f(0) = 1, f(1) = -2, read by rows.

The programs for A172090, the canonical program `A172090.P16523150407882409080` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172090 has offset 0).

The definition of A172090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172090.P3647791617602459167

`(A155170(n)+1)%2+1`
-/

namespace A172090.P3647791617602459167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155170 n + 1) 2 + 1

end

end A172090.P3647791617602459167

namespace A172090

/-- `(A155170(n)+1)%2+1` -/
def P3647791617602459167.Spec : Prop :=
  ∀ n, P3647791617602459167.a n = A172090 n

end A172090

/-! ## A172090.P16443966572235860563

`(3-A176305(n))%2+1`
-/

namespace A172090.P16443966572235860563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 - A176305 n) 2 + 1

end

end A172090.P16443966572235860563

namespace A172090

/-- `(3-A176305(n))%2+1` -/
def P16443966572235860563.Spec : Prop :=
  ∀ n, P16443966572235860563.a n = A172090 n

end A172090

/-! ## A172090.P11654016148272403581

`char[eq[1, A259094(n+2)]]+char[4]`
-/

namespace A172090.P11654016148272403581
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f4 j = n then 1 else 0)

end

end A172090.P11654016148272403581

namespace A172090

/-- `char[eq[1, A259094(n+2)]]+char[4]` -/
def P11654016148272403581.Spec : Prop :=
  ∀ n, (P11654016148272403581.a n : ℤ) = A172090 n

end A172090

/-! ## A172090.P9214921350066921855

`(floor(Δ[n²]/ceil((A134059(n)/3)²))-1)%2+1`
-/

namespace A172090.P9214921350066921855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (⌈((A134059 n : ℚ) / 3) ^ 2⌉ : ℚ)⌋ - 1) 2 + 1

end

end A172090.P9214921350066921855

namespace A172090

/-- `(floor(Δ[n²]/ceil((A134059(n)/3)²))-1)%2+1` -/
def P9214921350066921855.Spec : Prop :=
  ∀ n, P9214921350066921855.a n = A172090 n

end A172090

/-! ## A172090.P14202220665365293478

`A000120(and(7, A156609(n)))`
-/

namespace A172090.P14202220665365293478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land 7 (A156609 n)).toNat

end

end A172090.P14202220665365293478

namespace A172090

/-- `A000120(and(7, A156609(n)))` -/
def P14202220665365293478.Spec : Prop :=
  ∀ n, P14202220665365293478.a n = A172090 n

end A172090

/-! ## A172090.P15157282139795230684

`floor(A155864(n)/A174126(n))`
-/

namespace A172090.P15157282139795230684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155864 n : ℚ) / (A174126 n : ℚ)⌋

end

end A172090.P15157282139795230684

namespace A172090

/-- `floor(A155864(n)/A174126(n))` -/
def P15157282139795230684.Spec : Prop :=
  ∀ n, P15157282139795230684.a n = A172090 n

end A172090

/-! ## A172090.P11220159571557348530

`A176305(n)%A165063(n+1)`
-/

namespace A172090.P11220159571557348530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176305 n) (A165063 (n + 1))

end

end A172090.P11220159571557348530

namespace A172090

/-- `A176305(n)%A165063(n+1)` -/
def P11220159571557348530.Spec : Prop :=
  ∀ n, P11220159571557348530.a n = A172090 n

end A172090

/-! ## A172090.P6551610675782661433

`A156045(n)%A034077(n+2)`
-/

namespace A172090.P6551610675782661433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156045 n) (A034077 (n + 2))

end

end A172090.P6551610675782661433

namespace A172090

/-- `A156045(n)%A034077(n+2)` -/
def P6551610675782661433.Spec : Prop :=
  ∀ n, P6551610675782661433.a n = A172090 n

end A172090

/-! ## A172090.P13051751803292298662

`C(2, A053616(n)*A290428(n))`
-/

namespace A172090.P13051751803292298662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A053616 n * A290428 n).toNat

end

end A172090.P13051751803292298662

namespace A172090

/-- `C(2, A053616(n)*A290428(n))` -/
def P13051751803292298662.Spec : Prop :=
  ∀ n, (P13051751803292298662.a n : ℤ) = A172090 n

end A172090

/-! ## A172090.P16523150407882409080

`C(A157458(n), C(A157458(n), 2))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A172090

/-- `C(A157458(n), C(A157458(n), 2))` -/
def P16523150407882409080.Spec : Prop :=
  ∀ n, (P16523150407882409080.a n : ℤ) = A172090 n

theorem P16523150407882409080.correct : P16523150407882409080.Spec := by
  intro n
  simp only [A172090]

end A172090

/-! ## A172090.P14042028485929912403

`C(2, A157685(A115281(n)))`
-/

namespace A172090.P14042028485929912403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A157685 (A115281 n).toNat).toNat

end

end A172090.P14042028485929912403

namespace A172090

/-- `C(2, A157685(A115281(n)))` -/
def P14042028485929912403.Spec : Prop :=
  ∀ n, (P14042028485929912403.a n : ℤ) = A172090 n

end A172090

/-! ## A172090.P17185112899197634286

`and(3, A172092(n))`
-/

namespace A172090.P17185112899197634286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A172092 n)

end

end A172090.P17185112899197634286

namespace A172090

/-- `and(3, A172092(n))` -/
def P17185112899197634286.Spec : Prop :=
  ∀ n, P17185112899197634286.a n = A172090 n

end A172090

/-! ## A172090.P1118792427621005523

`C(char[4]+1, A333159(n))`
-/

namespace A172090.P1118792427621005523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((if ∃ j, f1 j = n then 1 else 0) + 1) (A333159 n).toNat

end

end A172090.P1118792427621005523

namespace A172090

/-- `C(char[4]+1, A333159(n))` -/
def P1118792427621005523.Spec : Prop :=
  ∀ n, (P1118792427621005523.a n : ℤ) = A172090 n

end A172090

/-! ## A172090.P12246212810522613377

`floor(A000267(A108514(n+1))/A219354(n+1))`
-/

namespace A172090.P12246212810522613377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000267 (A108514 (n + 1)).toNat : ℚ) / (A219354 (n + 1) : ℚ)⌋

end

end A172090.P12246212810522613377

namespace A172090

/-- `floor(A000267(A108514(n+1))/A219354(n+1))` -/
def P12246212810522613377.Spec : Prop :=
  ∀ n, P12246212810522613377.a n = A172090 n

end A172090

/-!
# A172091: Triangle, read by rows, T(n,k,q) = c(k,q) + c(n-k,q) - c(n, q) where c(n,q) = Product_{j=1..n-1} ((q^(j+1) - 1)/(q-1)) and q = 2.

The programs for A172091, there is no canonical definition to state claims against.
-/

/-! ## A172091.P17941646713227234054

`A318056(A176639(n))`
-/

namespace A172091.P17941646713227234054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318056 (A176639 n).toNat

end

end A172091.P17941646713227234054

/-! ## A172091.P15858528841905846233

`A379714(A046792(n+1))`
-/

namespace A172091.P15858528841905846233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379714 (A046792 (n + 1)).toNat

end

end A172091.P15858528841905846233

/-!
# A172092: Triangle, read by rows, T(n,k,q) = c(k,q) + c(n-k,q) - c(n, q) where c(n,q) = Product_{j=1..n-1} ((q^(j+1) - 1)/(q-1)) and q = 3.

The programs for A172092, there is no canonical definition to state claims against.
-/

/-! ## A172092.P12025812943329939623

`∏{p}[A004772(A276777(n)!²), -#]`
-/

namespace A172092.P12025812943329939623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004772 (Nat.factorial (A276777 n).toNat ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(p : ℤ))

end

end A172092.P12025812943329939623

/-! ## A172092.P1671126046020504805

`∏{p}[A042965(A276777(n)!²), -#]`
-/

namespace A172092.P1671126046020504805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (Nat.factorial (A276777 n).toNat ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(p : ℤ))

end

end A172092.P1671126046020504805

/-! ## A172092.P11195906203450264178

`(6-A022179(A004914(n+1)))/5`
-/

namespace A172092.P11195906203450264178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 - A022179 (A004914 (n + 1)).toNat : ℚ) / 5

end

end A172092.P11195906203450264178

/-! ## A172092.P6912820715989412616

`∏{p}[A247210(or(1, A247268(n+1))), -#]`
-/

namespace A172092.P6912820715989412616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247210 (Int.lor 1 (A247268 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(p : ℤ))

end

end A172092.P6912820715989412616

/-! ## A172092.P15298784004647431953

`A218622(A000108(n))-A278272(n+1)`
-/

namespace A172092.P15298784004647431953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218622 (A000108 n).toNat - A278272 (n + 1)

end

end A172092.P15298784004647431953

/-!
# A172093: Triangle, read by rows, T(n,k,q) = c(k,q) + c(n-k,q) - c(n, q) where c(n,q) = Product_{j=1..n-1} ((q^(j+1) - 1)/(q-1)) and q = 4.

The programs for A172093, there is no canonical definition to state claims against.
-/

/-! ## A172093.P12904569178190293875

`2-A174919(A004892(n+1))`
-/

namespace A172093.P12904569178190293875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A174919 (A004892 (n + 1)).toNat

end

end A172093.P12904569178190293875

/-! ## A172093.P14197174144303925461

`2-A174919(A004914(n+1))`
-/

namespace A172093.P14197174144303925461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A174919 (A004914 (n + 1)).toNat

end

end A172093.P14197174144303925461

/-! ## A172093.P246949094244864653

`2-A093466(A182779(n+1))`
-/

namespace A172093.P246949094244864653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A093466 (A182779 (n + 1)).toNat

end

end A172093.P246949094244864653

/-! ## A172093.P4341702798450463973

`A000005(A073688(n))-A174919(n)`
-/

namespace A172093.P4341702798450463973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A073688 n).toNat - A174919 n

end

end A172093.P4341702798450463973

/-!
# A172094: The Riordan square of the little Schröder numbers A001003.

The programs for A172094, there is no canonical definition to state claims against.
-/

/-! ## A172094.P1371909097479373006

`A175427(A147721(n)+1)`
-/

namespace A172094.P1371909097479373006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A147721 n + 1).toNat

end

end A172094.P1371909097479373006

/-! ## A172094.P13936407658640851510

`A114608(n)-A037913(A235679(n+1))`
-/

namespace A172094.P13936407658640851510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114608 n - A037913 (A235679 (n + 1)).toNat

end

end A172094.P13936407658640851510

/-! ## A172094.P12877060908751844585

`A167662(A147721(n)^A096825(n+1))`
-/

namespace A172094.P12877060908751844585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167662 (SequenceMachineLib.roundAway ((A147721 n : ℚ) ^ (A096825 (n + 1) : ℤ))).toNat

end

end A172094.P12877060908751844585

/-! ## A172094.P18429870305357994266

`or(A147721(n), A250002(A157153(n+1)))`
-/

namespace A172094.P18429870305357994266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147721 n) (A250002 (A157153 (n + 1)).toNat)

end

end A172094.P18429870305357994266

/-!
# A172095: Integers k such that k-1,k,k+1 have few distinct primes: k=p^r, p odd prime, and (k^2-1)/8 divisible by at most two distinct prime factors.

The programs for A172095, there is no canonical definition to state claims against.
-/

/-! ## A172095.P11245152676751430276

`A316355(A321679(n)+A100464(2*n+1))`
-/

namespace A172095.P11245152676751430276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A321679 n + A100464 (2 * n + 1)).toNat

end

end A172095.P11245152676751430276

/-! ## A172095.P13517951564719620510

`∑[A322867(3^n+1)]+2`
-/

namespace A172095.P13517951564719620510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322867 (3 ^ n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A172095.P13517951564719620510

/-! ## A172095.P11027591394992418891

`A386243(A164175(n))`
-/

namespace A172095.P11027591394992418891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386243 (A164175 n).toNat

end

end A172095.P11027591394992418891

/-! ## A172095.P8797147324758425492

`∩[A285514(n+1), A143452(n)]`
-/

namespace A172095.P8797147324758425492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143452 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172095.P8797147324758425492

/-! ## A172095.P3604114518909380811

`∩[A300273(n+1), A143452(n)]`
-/

namespace A172095.P3604114518909380811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143452 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172095.P3604114518909380811

/-!
# A172096: Primes having no representation of the form prime(n)-+n.

The programs for A172096, there is no canonical definition to state claims against.
-/

/-! ## A172096.P3979949021035626172

`p?[A091215(n+1)-A016231(A000217(n))]`
-/

namespace A172096.P3979949021035626172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091215 (n + 1) - A016231 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172096.P3979949021035626172

/-! ## A172096.P6242214095535014005

`p?[A375926(n+3)]`
-/

namespace A172096.P6242214095535014005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375926 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172096.P6242214095535014005

/-! ## A172096.P11024239598214309451

`filter[A375926(n+3), A010051(#)]`
-/

namespace A172096.P11024239598214309451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375926 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A172096.P11024239598214309451

/-! ## A172096.P6155701005316268707

`filter[A375926(n+3), A080339(#)]`
-/

namespace A172096.P6155701005316268707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375926 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A172096.P6155701005316268707

/-! ## A172096.P3949410417222842932

`filter[A375926(n+3), A080545(#)]`
-/

namespace A172096.P3949410417222842932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375926 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A172096.P3949410417222842932

/-!
# A172097: Table T(n,k) read by rows which contains in row n the 2^n terms of A171968 starting at the (n+1)st 3.

The programs for A172097, there is no canonical definition to state claims against.
-/

/-! ## A172097.P15690440218032524707

`and(4*n+7, a(n-1)+4)` with `a(0)=3`
-/

namespace A172097.P15690440218032524707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.land (4 * n + 7) (a (n - 1) + 4)

end

end A172097.P15690440218032524707

/-! ## A172097.P14633910918826139744

`4*(n+1-2^floor(log2(n+1)))+3`
-/

namespace A172097.P14633910918826139744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1 : ℤ) - (2 ^ Nat.log 2 (n + 1) : ℤ)) + 3

end

end A172097.P14633910918826139744

/-! ## A172097.P10467242883553338004

`(a(n-1)+4)%∑[Δ[lcm(2, n)]+1]` with `a(0)=3`
-/

namespace A172097.P10467242883553338004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.tmod (a (n - 1) + 4) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172097.P10467242883553338004

/-! ## A172097.P12887170970964877326

`or(2, (2*n+a(n-1)-1)%(2*n)+3)` with `a(0)=3`
-/

namespace A172097.P12887170970964877326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor 2 (Int.tmod ((2 * n : ℤ) + (a (n - 1) - 1)) (2 * n : ℤ) + 3)

end

end A172097.P12887170970964877326

/-! ## A172097.P11298882336743328908

`or(1, Δ[A266538(n)])`
-/

namespace A172097.P11298882336743328908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A172097.P11298882336743328908

/-! ## A172097.P2141427607472518989

`A006257(2*n+3)`
-/

namespace A172097.P2141427607472518989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (2 * n + 3)

end

end A172097.P2141427607472518989

/-! ## A172097.P8012746388078215383

`A115379(2*n+3)`
-/

namespace A172097.P8012746388078215383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115379 (2 * n + 3)

end

end A172097.P8012746388078215383

/-! ## A172097.P9711939752083899631

`A266539(4*(n+2))`
-/

namespace A172097.P9711939752083899631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266539 (4 * (n + 2))

end

end A172097.P9711939752083899631

/-! ## A172097.P14013663895953447646

`floor(log2(A282388(n+1)²))`
-/

namespace A172097.P14013663895953447646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A282388 (n + 1) ^ 2).toNat

end

end A172097.P14013663895953447646

/-! ## A172097.P2260120348500682099

`(A256251(n+1)+2)/2`
-/

namespace A172097.P2260120348500682099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256251 (n + 1) + 2 : ℚ) / 2

end

end A172097.P2260120348500682099

/-!
# A172098: Irregular triangle T(n, k) = [x^k]( p(n, x) ), where p(n, x) = x^(n-1)*p(n-1, x) + p(n-2, x) with p(0, x) = 1 and p(1, x) = 1 + x, read by rows.

The programs for A172098, there is no canonical definition to state claims against.
-/

/-! ## A172098.P11037569001515510646

`A263571(A352266(n+1)%A138121(n+1))`
-/

namespace A172098.P11037569001515510646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263571 (Int.tmod (A352266 (n + 1)) (A138121 (n + 1))).toNat

end

end A172098.P11037569001515510646

/-! ## A172098.P15174101975242666889

`A328457(A324000(n+2)%A002260(n+5)+2)`
-/

namespace A172098.P15174101975242666889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328457 (Int.tmod (A324000 (n + 2)) (A002260 (n + 5)) + 2).toNat

end

end A172098.P15174101975242666889

/-! ## A172098.P16033212622529883354

`A023416(and(A201251(n+3), A263234(n)))`
-/

namespace A172098.P16033212622529883354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.land (A201251 (n + 3)) (A263234 n)).toNat

end

end A172098.P16033212622529883354

/-! ## A172098.P8891148011799145956

`A007318(∑{e}[A240202(n), A000035(#)])`
-/

namespace A172098.P8891148011799145956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240202 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000035 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A172098.P8891148011799145956

/-! ## A172098.P7331192099482611309

`A355382(or(A007318(n+1), A318336(n)))`
-/

namespace A172098.P7331192099482611309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355382 (Int.lor (A007318 (n + 1)) (A318336 n)).toNat

end

end A172098.P7331192099482611309

/-!
# A172099: Irregular triangle T(n, k) = [x^k]( p(n, x) ), where p(n, x) = x^(2*n-1)*p(n-1, x) + p(n-2, x) with p(0, x) = 1 and p(1, x) = 1 + x, read by rows.

The programs for A172099, there is no canonical definition to state claims against.
-/

/-! ## A172099.P14209002588602978150

`(A062684(n+4)+A028307(n+3))%2`
-/

namespace A172099.P14209002588602978150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062684 (n + 4) + A028307 (n + 3)) 2

end

end A172099.P14209002588602978150

/-! ## A172099.P8832619453794797887

`A010059(A195028(n)+A010059(3*n+4))`
-/

namespace A172099.P8832619453794797887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A195028 n + A010059 (3 * n + 4)).toNat

end

end A172099.P8832619453794797887

/-! ## A172099.P7746462486825394117

`A040051(A264008(n+1)+A008587(n))`
-/

namespace A172099.P7746462486825394117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 (A264008 (n + 1) + A008587 n).toNat

end

end A172099.P7746462486825394117

/-! ## A172099.P6231509401266056473

`A244221(A098348(n+1)-A051382(n+1))`
-/

namespace A172099.P6231509401266056473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244221 (A098348 (n + 1) - A051382 (n + 1)).toNat

end

end A172099.P6231509401266056473

/-! ## A172099.P8874014011248366490

`A260552(A000070(n+2)-A258996(n+1))`
-/

namespace A172099.P8874014011248366490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260552 (A000070 (n + 2) - A258996 (n + 1)).toNat

end

end A172099.P8874014011248366490

