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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A215400: Number of length-n 0..7 arrays connected end-around, with no sequence of L

The programs for A215400, there is no canonical definition to state claims against.
-/

/-! ## A215400.P14250094347020420339

`A215401(A055999(n+4))`
-/

namespace A215400.P14250094347020420339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215401 (A055999 (n + 4)).toNat

end

end A215400.P14250094347020420339

/-! ## A215400.P9994283623570700337

`A215401(eq[4, A219347(n)])`
-/

namespace A215400.P9994283623570700337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215401 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215400.P9994283623570700337

/-! ## A215400.P16296257648193838630

`A215401(eq[6, A193592(n)])`
-/

namespace A215400.P16296257648193838630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215401 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215400.P16296257648193838630

/-! ## A215400.P12960555102483654467

`A215401(eq[7, A152157(n)])`
-/

namespace A215400.P12960555102483654467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215401 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215400.P12960555102483654467

/-! ## A215400.P11408550800567627106

`A215401(Δ[A023551(n+2)])`
-/

namespace A215400.P11408550800567627106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215401 (f1 (n + 1) - f1 n).toNat

end

end A215400.P11408550800567627106

/-!
# A215401: T(n,k) = number of length-n 0..k arrays connected end-around, with no sequence of L

The programs for A215401, there is no canonical definition to state claims against.
-/

/-! ## A215401.P15608250851174065469

`A298972(2^A262124(n))`
-/

namespace A215401.P15608250851174065469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298972 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A262124 n : ℤ))).toNat

end

end A215401.P15608250851174065469

/-! ## A215401.P3225668319475700858

`A139352(3^A287417(n))`
-/

namespace A215401.P3225668319475700858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A287417 n : ℤ))).toNat

end

end A215401.P3225668319475700858

/-! ## A215401.P5482536270960536970

`A010874(A262124(n)^5)`
-/

namespace A215401.P5482536270960536970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A262124 n ^ 5).toNat

end

end A215401.P5482536270960536970

/-! ## A215401.P3482927811051678440

`A282355(12*A287417(n))`
-/

namespace A215401.P3482927811051678440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282355 (12 * A287417 n).toNat

end

end A215401.P3482927811051678440

/-! ## A215401.P6699183469425390466

`A262124(n)%A346633(A070276(n+4))`
-/

namespace A215401.P6699183469425390466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262124 n) (A346633 (A070276 (n + 4)).toNat)

end

end A215401.P6699183469425390466

/-!
# A215402: Number of rooted maps of (orientable) genus 4 containing n edges.

The programs for A215402, there is no canonical definition to state claims against.
-/

/-! ## A215402.P16564165954556059640

`A238396(eq[20, A292745(n)])`
-/

namespace A215402.P16564165954556059640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215402.P16564165954556059640

/-! ## A215402.P1397176461930040679

`A238396(eq[12, A292085(n+1)])`
-/

namespace A215402.P1397176461930040679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215402.P1397176461930040679

/-! ## A215402.P11545963272366054617

`A238396(eq[12, A320747(n+1)])`
-/

namespace A215402.P11545963272366054617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215402.P11545963272366054617

/-! ## A215402.P8143137324160732732

`A238396(eq[5, A214676(n+1)])`
-/

namespace A215402.P8143137324160732732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215402.P8143137324160732732

/-!
# A215404: a(n) = 4*a(n-1) - 3*a(n-2) - a(n-3), with a(0)=0, a(1)=0 and a(2)=1.

The programs for A215404, the canonical program `A215404.P12073808530060612332` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215404 has offset 0).

The definition of A215404 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-3*a(n-2)-a(n-3)` (program `A215404.P12073808530060612332`, by `A215404.P12073808530060612332.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215404.P12073808530060612332

`4*a(n-1)-3*a(n-2)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215404

/-- `4*a(n-1)-3*a(n-2)-a(n-3)` -/
def P12073808530060612332.Spec : Prop :=
  ∀ n, P12073808530060612332.a n = A215404 n

theorem P12073808530060612332.correct : P12073808530060612332.Spec := by
  intro n
  simp only [A215404]

end A215404

/-! ## A215404.P15896897498798745749

`ogf(x^2/(1-4x+3x^2+x^3))`
-/

namespace A215404.P15896897498798745749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -4, 3, 1] n

end

end A215404.P15896897498798745749

namespace A215404

/-- `ogf(x^2/(1-4x+3x^2+x^3))` -/
def P15896897498798745749.Spec : Prop :=
  ∀ n, P15896897498798745749.a n = A215404 n

end A215404

/-! ## A215404.P6167068346474482967

`A116423(n)+a(n-1)` with `a(0)=0`
-/

namespace A215404.P6167068346474482967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A116423 n + a (n - 1)

end

end A215404.P6167068346474482967

namespace A215404

/-- `A116423(n)+a(n-1)` -/
def P6167068346474482967.Spec : Prop :=
  ∀ n, P6167068346474482967.a n = A215404 n

end A215404

/-! ## A215404.P12900029083245115334

`∑[A116423(comp[2*(n+1)]-n+1)]`
-/

namespace A215404.P12900029083245115334
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116423 ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215404.P12900029083245115334

namespace A215404

/-- `∑[A116423(comp[2*(n+1)]-n+1)]` -/
def P12900029083245115334.Spec : Prop :=
  ∀ n, P12900029083245115334.a n = A215404 n

end A215404

/-! ## A215404.P12730833170488339599

`∑[A121449(n)]%A322504(n)`
-/

namespace A215404.P12730833170488339599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A322504 n)

end

end A215404.P12730833170488339599

namespace A215404

/-- `∑[A121449(n)]%A322504(n)` -/
def P12730833170488339599.Spec : Prop :=
  ∀ n, P12730833170488339599.a n = A215404 n

end A215404

/-! ## A215404.P2186400113665379069

`A085810(n+1)%A322504(n)`
-/

namespace A215404.P2186400113665379069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085810 (n + 1)) (A322504 n)

end

end A215404.P2186400113665379069

namespace A215404

/-- `A085810(n+1)%A322504(n)` -/
def P2186400113665379069.Spec : Prop :=
  ∀ n, P2186400113665379069.a n = A215404 n

end A215404

/-! ## A215404.P1700461618140800372

`A085810(n+1)-∑[A085810(A028310(n))]`
-/

namespace A215404.P1700461618140800372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085810 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085810 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215404.P1700461618140800372

namespace A215404

/-- `A085810(n+1)-∑[A085810(A028310(n))]` -/
def P1700461618140800372.Spec : Prop :=
  ∀ n, P1700461618140800372.a n = A215404 n

end A215404

/-! ## A215404.P12421292570941132414

`Δ[A307466(n)]%A307466(n)`
-/

namespace A215404.P12421292570941132414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A307466 n)

end

end A215404.P12421292570941132414

namespace A215404

/-- `Δ[A307466(n)]%A307466(n)` -/
def P12421292570941132414.Spec : Prop :=
  ∀ n, P12421292570941132414.a n = A215404 n

end A215404

/-! ## A215404.P9767303912237482153

`A307466(n+1)%A307466(n)`
-/

namespace A215404.P9767303912237482153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307466 (n + 1)) (A307466 n)

end

end A215404.P9767303912237482153

namespace A215404

/-- `A307466(n+1)%A307466(n)` -/
def P9767303912237482153.Spec : Prop :=
  ∀ n, P9767303912237482153.a n = A215404 n

end A215404

/-! ## A215404.P4819326273892290594

`A136776(n+1)-A085810(n+1)`
-/

namespace A215404.P4819326273892290594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136776 (n + 1) - A085810 (n + 1)

end

end A215404.P4819326273892290594

namespace A215404

/-- `A136776(n+1)-A085810(n+1)` -/
def P4819326273892290594.Spec : Prop :=
  ∀ n, P4819326273892290594.a n = A215404 n

end A215404

/-! ## A215404.P4913633488608795560

`A116423(n+2)-A121449(n+1)`
-/

namespace A215404.P4913633488608795560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116423 (n + 2) - A121449 (n + 1)

end

end A215404.P4913633488608795560

namespace A215404

/-- `A116423(n+2)-A121449(n+1)` -/
def P4913633488608795560.Spec : Prop :=
  ∀ n, P4913633488608795560.a n = A215404 n

end A215404

/-! ## A215404.P9378645133009945398

`∑[A116423(n+1)]-A116423(n+1)`
-/

namespace A215404.P9378645133009945398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A116423 (n + 1)

end

end A215404.P9378645133009945398

namespace A215404

/-- `∑[A116423(n+1)]-A116423(n+1)` -/
def P9378645133009945398.Spec : Prop :=
  ∀ n, P9378645133009945398.a n = A215404 n

end A215404

/-! ## A215404.P15189216398994819422

`A116423(n+2)-(A116423(n+1)+A085810(n+1))`
-/

namespace A215404.P15189216398994819422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116423 (n + 2) - (A116423 (n + 1) + A085810 (n + 1))

end

end A215404.P15189216398994819422

namespace A215404

/-- `A116423(n+2)-(A116423(n+1)+A085810(n+1))` -/
def P15189216398994819422.Spec : Prop :=
  ∀ n, P15189216398994819422.a n = A215404 n

end A215404

/-! ## A215404.P13896284745432834800

`A136776(n+2)-2*A121449(n+1)`
-/

namespace A215404.P13896284745432834800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136776 (n + 2) - 2 * A121449 (n + 1)

end

end A215404.P13896284745432834800

namespace A215404

/-- `A136776(n+2)-2*A121449(n+1)` -/
def P13896284745432834800.Spec : Prop :=
  ∀ n, P13896284745432834800.a n = A215404 n

end A215404

/-! ## A215404.P13862276325904684559

`2*A116423(n+2)-A136776(n+2)`
-/

namespace A215404.P13862276325904684559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116423 (n + 2) - A136776 (n + 2)

end

end A215404.P13862276325904684559

namespace A215404

/-- `2*A116423(n+2)-A136776(n+2)` -/
def P13862276325904684559.Spec : Prop :=
  ∀ n, P13862276325904684559.a n = A215404 n

end A215404

/-! ## A215404.P2627879799233806028

`Δ[Δ[A085810(n+1)]]-A085810(n+2)`
-/

namespace A215404.P2627879799233806028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085810 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A085810 (n + 2)

end

end A215404.P2627879799233806028

namespace A215404

/-- `Δ[Δ[A085810(n+1)]]-A085810(n+2)` -/
def P2627879799233806028.Spec : Prop :=
  ∀ n, P2627879799233806028.a n = A215404 n

end A215404

/-!
# A215405: Largest prime factor of the n-th n-almost prime.

The programs for A215405, there is no canonical definition to state claims against.
-/

/-! ## A215405.P16283779825259394523

`A006530(A101695(n+1))`
-/

namespace A215405.P16283779825259394523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A101695 (n + 1)).toNat

end

end A215405.P16283779825259394523

/-! ## A215405.P17550064121571459241

`A006530(A046310(n+1))`
-/

namespace A215405.P17550064121571459241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046310 (n + 1)).toNat

end

end A215405.P17550064121571459241

/-! ## A215405.P6945918424919837484

`A006530(A046312(n+1))`
-/

namespace A215405.P6945918424919837484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046312 (n + 1)).toNat

end

end A215405.P6945918424919837484

/-! ## A215405.P17824284232187811078

`A006530(A046314(n+1))`
-/

namespace A215405.P17824284232187811078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046314 (n + 1)).toNat

end

end A215405.P17824284232187811078

/-! ## A215405.P5058021918201818820

`A006530(A069272(n+1))`
-/

namespace A215405.P5058021918201818820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A069272 (n + 1)).toNat

end

end A215405.P5058021918201818820

/-! ## A215405.P4829836749174180703

`A006530(A109636(n+1))`
-/

namespace A215405.P4829836749174180703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A109636 (n + 1)).toNat

end

end A215405.P4829836749174180703

/-! ## A215405.P11045826740851131809

`A111089(A122943(n+1))`
-/

namespace A215405.P11045826740851131809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (A122943 (n + 1)).toNat

end

end A215405.P11045826740851131809

/-! ## A215405.P18343267000370050235

`A006530(2*A122943(n+1))`
-/

namespace A215405.P18343267000370050235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A122943 (n + 1)).toNat

end

end A215405.P18343267000370050235

/-! ## A215405.P6307515725950308544

`A006530(A069273(n+1)/2)`
-/

namespace A215405.P6307515725950308544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A069273 (n + 1) : ℚ) / 2)).toNat

end

end A215405.P6307515725950308544

/-! ## A215405.P6019357341323273504

`A006530(lcm(2, A122943(n+1)))`
-/

namespace A215405.P6019357341323273504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (A122943 (n + 1)))

end

end A215405.P6019357341323273504

/-!
# A215409: The Goodstein sequence G_n(3).

The programs for A215409, the canonical program `A215409.P17592404338468301690` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215409 has offset 0).

The definition of A215409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215409.P17592404338468301690

`3-floor(n-atan(n))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215409

/-- `3-floor(n-atan(n))` -/
def P17592404338468301690.Spec : Prop :=
  ∀ n, P17592404338468301690.a n = A215409 n

theorem P17592404338468301690.correct : P17592404338468301690.Spec := by
  intro n
  simp only [A215409]

end A215409

/-!
# A215410: a(0) = 0; a(n+1) = 2*a(n) + k where k = 0 if prime(n+2)/prime(n+1) < prime(n+1)/prime(n), otherwise k = 1.

The programs for A215410, there is no canonical definition to state claims against.
-/

/-! ## A215410.P10172793475549829485

`2^n-(A215411(n)+1)`
-/

namespace A215410.P10172793475549829485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (A215411 n + 1)

end

end A215410.P10172793475549829485

/-! ## A215410.P1937537960010624400

`A000225(n)-A215411(n)`
-/

namespace A215410.P1937537960010624400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A215411 n

end

end A215410.P1937537960010624400

/-! ## A215410.P9391171418686787927

`∑[A131577(n)]-A215411(n)`
-/

namespace A215410.P9391171418686787927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A215411 n

end

end A215410.P9391171418686787927

/-! ## A215410.P6128022405237380284

`Δ[A000295(n)]-A215411(n)`
-/

namespace A215410.P6128022405237380284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A215411 n

end

end A215410.P6128022405237380284

/-! ## A215410.P411386167555713045

`record[A232751(n)]-A215411(n)`
-/

namespace A215410.P411386167555713045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A215411 n

end

end A215410.P411386167555713045

/-!
# A215411: a(0) = 0; a(n+1) = 2*a(n) + k where k = 0 if prime(n+2)/prime(n+1) > prime(n+1)/prime(n), otherwise k = 1.

The programs for A215411, there is no canonical definition to state claims against.
-/

/-! ## A215411.P3660666526807130091

`2^n-(A215410(n)+1)`
-/

namespace A215411.P3660666526807130091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (A215410 n + 1)

end

end A215411.P3660666526807130091

/-! ## A215411.P9171408435643721162

`A000225(n)-A215410(n)`
-/

namespace A215411.P9171408435643721162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A215410 n

end

end A215411.P9171408435643721162

/-! ## A215411.P7949138772505546957

`A089633(∑[n])-A215410(n)`
-/

namespace A215411.P7949138772505546957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (∑ j ∈ Finset.range (n + 1), f1 j) - A215410 n

end

end A215411.P7949138772505546957

/-! ## A215411.P12848523344812373548

`∑[A131577(n)]-A215410(n)`
-/

namespace A215411.P12848523344812373548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A215410 n

end

end A215411.P12848523344812373548

/-! ## A215411.P4095357946058484375

`Δ[A000295(n)]-A215410(n)`
-/

namespace A215411.P4095357946058484375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A215410 n

end

end A215411.P4095357946058484375

/-!
# A215415: a(2*n) = n, a(4*n+1) = 2*n-1, a(4*n+3) = 2*n+3.

The programs for A215415, the canonical program `A215415.P10885264764584390891` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215415 has offset 0).

The definition of A215415 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215415.P10885264764584390891

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=-1, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215415

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P10885264764584390891.Spec : Prop :=
  ∀ n, P10885264764584390891.a n = A215415 n

theorem P10885264764584390891.correct : P10885264764584390891.Spec := by
  intro n
  simp only [A215415]

end A215415

/-! ## A215415.P11942515765816235838

`∑[floor(sinh(and(2, n)))]-n`
-/

namespace A215415.P11942515765816235838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Nat.land 2 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A215415.P11942515765816235838

namespace A215415

/-- `∑[floor(sinh(and(2, n)))]-n` -/
def P11942515765816235838.Spec : Prop :=
  ∀ n, P11942515765816235838.a n = A215415 n

end A215415

/-! ## A215415.P11624657764660982087

`∑[and(2, n)^log2(3)]-n`
-/

namespace A215415.P11624657764660982087
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℝ)

end

end A215415.P11624657764660982087

namespace A215415

/-- `∑[and(2, n)^log2(3)]-n` -/
def P11624657764660982087.Spec : Prop :=
  ∀ n, P11624657764660982087.a n = (A215415 n : ℝ)

end A215415

/-! ## A215415.P11734311011434875747

`3*∑[char[or(2, n)]]-n`
-/

namespace A215415.P11734311011434875747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n : ℤ)

end

end A215415.P11734311011434875747

namespace A215415

/-- `3*∑[char[or(2, n)]]-n` -/
def P11734311011434875747.Spec : Prop :=
  ∀ n, P11734311011434875747.a n = A215415 n

end A215415

/-! ## A215415.P3631698635590319730

`∑[floor(ϕ*and(2, n))]-n`
-/

namespace A215415.P3631698635590319730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Nat.land 2 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A215415.P3631698635590319730

namespace A215415

/-- `∑[floor(ϕ*and(2, n))]-n` -/
def P3631698635590319730.Spec : Prop :=
  ∀ n, P3631698635590319730.a n = A215415 n

end A215415

/-! ## A215415.P18201804919288056892

`∑[3*and(2, n)/2]-n`
-/

namespace A215415.P18201804919288056892
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((Nat.land 2 n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℚ)

end

end A215415.P18201804919288056892

namespace A215415

/-- `∑[3*and(2, n)/2]-n` -/
def P18201804919288056892.Spec : Prop :=
  ∀ n, P18201804919288056892.a n = (A215415 n : ℚ)

end A215415

/-! ## A215415.P10980089633430757028

`∑[C(and(2, n)+1, 2)]-n`
-/

namespace A215415.P10980089633430757028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land 2 n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A215415.P10980089633430757028

namespace A215415

/-- `∑[C(and(2, n)+1, 2)]-n` -/
def P10980089633430757028.Spec : Prop :=
  ∀ n, P10980089633430757028.a n = A215415 n

end A215415

/-! ## A215415.P7769323252825008802

`∑[3%(3^(n%4))]-n`
-/

namespace A215415.P7769323252825008802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 % 3 ^ (n % 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A215415.P7769323252825008802

namespace A215415

/-- `∑[3%(3^(n%4))]-n` -/
def P7769323252825008802.Spec : Prop :=
  ∀ n, P7769323252825008802.a n = A215415 n

end A215415

/-! ## A215415.P5710815908011273092

`a(n-4)+2` with `a(0)=0, a(1)=-1, a(2)=1, a(3)=3`
-/

namespace A215415.P5710815908011273092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 1, 3] fun n a =>
  a (n - 4) + 2

end

end A215415.P5710815908011273092

namespace A215415

/-- `a(n-4)+2` -/
def P5710815908011273092.Spec : Prop :=
  ∀ n, P5710815908011273092.a n = A215415 n

end A215415

/-! ## A215415.P17170300527279498138

`∑[1-a(n-2)]` with `a(0)=0, a(1)=-1, a(2)=2`
-/

namespace A215415.P17170300527279498138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 2] fun n f1 =>
  1 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215415.P17170300527279498138

namespace A215415

/-- `∑[1-a(n-2)]` -/
def P17170300527279498138.Spec : Prop :=
  ∀ n, P17170300527279498138.a n = A215415 n

end A215415

/-! ## A215415.P6926211807982713752

`n-1-a(n-2)` with `a(0)=0, a(1)=-1`
-/

namespace A215415.P6926211807982713752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n a =>
  (n : ℤ) - 1 - a (n - 2)

end

end A215415.P6926211807982713752

namespace A215415

/-- `n-1-a(n-2)` -/
def P6926211807982713752.Spec : Prop :=
  ∀ n, P6926211807982713752.a n = A215415 n

end A215415

/-! ## A215415.P437464145469855349

`ogf((-x+3x^2-x^3)/(1-2x+2x^2-2x^3+x^4))`
-/

namespace A215415.P437464145469855349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 3, -1] [1, -2, 2, -2, 1] n

end

end A215415.P437464145469855349

namespace A215415

/-- `ogf((-x+3x^2-x^3)/(1-2x+2x^2-2x^3+x^4))` -/
def P437464145469855349.Spec : Prop :=
  ∀ n, P437464145469855349.a n = A215415 n

end A215415

/-! ## A215415.P10529807104174415016

`∑[2^and(2, n)]-(2*n+1)`
-/

namespace A215415.P10529807104174415016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.land 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n + 1 : ℤ)

end

end A215415.P10529807104174415016

namespace A215415

/-- `∑[2^and(2, n)]-(2*n+1)` -/
def P10529807104174415016.Spec : Prop :=
  ∀ n, P10529807104174415016.a n = A215415 n

end A215415

/-! ## A215415.P7514412574407419680

`∑[gcd(2, ∑[n+1])²-2]+1`
-/

namespace A215415.P7514412574407419680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A215415.P7514412574407419680

namespace A215415

/-- `∑[gcd(2, ∑[n+1])²-2]+1` -/
def P7514412574407419680.Spec : Prop :=
  ∀ n, P7514412574407419680.a n = A215415 n

end A215415

/-! ## A215415.P13471218407557943503

`∑[and(2, n)!²]-(2*n+1)`
-/

namespace A215415.P13471218407557943503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n + 1 : ℤ)

end

end A215415.P13471218407557943503

namespace A215415

/-- `∑[and(2, n)!²]-(2*n+1)` -/
def P13471218407557943503.Spec : Prop :=
  ∀ n, P13471218407557943503.a n = A215415 n

end A215415

/-! ## A215415.P16499960893600344288

`∑[(∑[n+1]²-1)%4]-n`
-/

namespace A215415.P16499960893600344288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) - 1) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A215415.P16499960893600344288

namespace A215415

/-- `∑[(∑[n+1]²-1)%4]-n` -/
def P16499960893600344288.Spec : Prop :=
  ∀ n, P16499960893600344288.a n = A215415 n

end A215415

/-! ## A215415.P7432672003500466212

`∑[floor(3^(-1)^∑[n+1])]-n`
-/

namespace A215415.P7432672003500466212
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A215415.P7432672003500466212

namespace A215415

/-- `∑[floor(3^(-1)^∑[n+1])]-n` -/
def P7432672003500466212.Spec : Prop :=
  ∀ n, P7432672003500466212.a n = A215415 n

end A215415

/-! ## A215415.P4556245451472961991

`∑[1-A280193(A266286(n))]`
-/

namespace A215415.P4556245451472961991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A280193 (A266286 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215415.P4556245451472961991

namespace A215415

/-- `∑[1-A280193(A266286(n))]` -/
def P4556245451472961991.Spec : Prop :=
  ∀ n, P4556245451472961991.a n = A215415 n

end A215415

/-! ## A215415.P11642922470775649064

`A063942(A047237(n+2))`
-/

namespace A215415.P11642922470775649064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063942 (A047237 (n + 2)).toNat

end

end A215415.P11642922470775649064

namespace A215415

/-- `A063942(A047237(n+2))` -/
def P11642922470775649064.Spec : Prop :=
  ∀ n, P11642922470775649064.a n = A215415 n

end A215415

/-! ## A215415.P18073622475487979658

`(A109247(2*n+1)+n)/2`
-/

namespace A215415.P18073622475487979658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109247 (2 * n + 1) + (n : ℤ) : ℚ) / 2

end

end A215415.P18073622475487979658

namespace A215415

/-- `(A109247(2*n+1)+n)/2` -/
def P18073622475487979658.Spec : Prop :=
  ∀ n, P18073622475487979658.a n = (A215415 n : ℚ)

end A215415

/-!
# A215417: Primes that remain prime when a single zero digit is inserted between any two adjacent digits.

The programs for A215417, there is no canonical definition to state claims against.
-/

/-! ## A215417.P8535549200465870520

`p?[A164329(n+1)]`
-/

namespace A215417.P8535549200465870520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215417.P8535549200465870520

/-! ## A215417.P7785923387261681031

`p?[A164329(A008619(n))-A000035(n)]`
-/

namespace A215417.P7785923387261681031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (A008619 n).toNat - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215417.P7785923387261681031

/-! ## A215417.P4415256534514384722

`p?[A164329(A008619(n))-A056594(n)]`
-/

namespace A215417.P4415256534514384722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (A008619 n).toNat - A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215417.P4415256534514384722

/-! ## A215417.P10782092519515206863

`p?[A164329(A008619(n))-A059841(n)]`
-/

namespace A215417.P10782092519515206863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (A008619 n).toNat - A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215417.P10782092519515206863

/-! ## A215417.P8892510574697612035

`p?[A033999(n)*A164329(A008619(n))]`
-/

namespace A215417.P8892510574697612035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A164329 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215417.P8892510574697612035

/-! ## A215417.P4387887595748850499

`∩[A000040(n+1), A164329(n+1)]`
-/

namespace A215417.P4387887595748850499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215417.P4387887595748850499

/-! ## A215417.P11146331924744605062

`∩[A004139(n+1), A164329(n+1)]`
-/

namespace A215417.P11146331924744605062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215417.P11146331924744605062

/-! ## A215417.P7704200708432565126

`∩[A006005(n+1), A164329(n+1)]`
-/

namespace A215417.P7704200708432565126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215417.P7704200708432565126

/-! ## A215417.P10592181647781877668

`∩[A008578(n+1), A164329(n+1)]`
-/

namespace A215417.P10592181647781877668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215417.P10592181647781877668

/-! ## A215417.P7636581767065263950

`∩[A045319(n+1), A164329(n+1)]`
-/

namespace A215417.P7636581767065263950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215417.P7636581767065263950

/-! ## A215417.P4590150875475462140

`∩[A045344(n+1), A164329(n+1)]`
-/

namespace A215417.P4590150875475462140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215417.P4590150875475462140

/-! ## A215417.P16372136042825073510

`∩[A046022(n+1), A164329(n+1)]`
-/

namespace A215417.P16372136042825073510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215417.P16372136042825073510

/-! ## A215417.P13657760944734513334

`∩[A051948(n+1), A164329(n+1)]`
-/

namespace A215417.P13657760944734513334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215417.P13657760944734513334

/-! ## A215417.P8977242980890253698

`∩[A053577(n+1), A164329(n+1)]`
-/

namespace A215417.P8977242980890253698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215417.P8977242980890253698

/-! ## A215417.P9990581490324804222

`∩[A053813(n+1), A164329(n+1)]`
-/

namespace A215417.P9990581490324804222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215417.P9990581490324804222

/-! ## A215417.P5759642798895476008

`∩[A055977(n+1), A164329(n+1)]`
-/

namespace A215417.P5759642798895476008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215417.P5759642798895476008

/-! ## A215417.P14884933474294582500

`∩[A060634(n+1), A164329(n+1)]`
-/

namespace A215417.P14884933474294582500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215417.P14884933474294582500

/-! ## A215417.P5421493489418653217

`∩[A062972(n+1), A164329(n+1)]`
-/

namespace A215417.P5421493489418653217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215417.P5421493489418653217

/-! ## A215417.P18291576881003288608

`∩[A065091(n+1), A164329(n+1)]`
-/

namespace A215417.P18291576881003288608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215417.P18291576881003288608

/-! ## A215417.P14115296466449923626

`∩[A067126(n+1), A164329(n+1)]`
-/

namespace A215417.P14115296466449923626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215417.P14115296466449923626

/-!
# A215418: Number of Regular and Stellar polytopes in n-dimensional Euclidean space, or -1 if infinite.

The programs for A215418, there is no canonical definition to state claims against.
-/

/-! ## A215418.P980469153980928222

`a(n-1)` with `a(0)=1, a(1)=-1, a(2)=9, a(3)=16, a(4)=3`
-/

namespace A215418.P980469153980928222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 9, 16, 3] fun n a =>
  a (n - 1)

end

end A215418.P980469153980928222

/-!
# A215419: Primes that remain prime when a single digit 3 is inserted between any two consecutive digits or as the leading or trailing digit.

The programs for A215419, there is no canonical definition to state claims against.
-/

/-! ## A215419.P8098361942096601045

`p?[A158594(n+1)]`
-/

namespace A215419.P8098361942096601045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215419.P8098361942096601045

/-! ## A215419.P10842042472002752615

`p?[record[A158594(A109785(n))]]`
-/

namespace A215419.P10842042472002752615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158594 (A109785 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215419.P10842042472002752615

/-! ## A215419.P15076440458747365387

`p?[record[A158594(A126759(n))]]`
-/

namespace A215419.P15076440458747365387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158594 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215419.P15076440458747365387

/-! ## A215419.P12018062547263653534

`p?[record[A158594(A246694(n))]]`
-/

namespace A215419.P12018062547263653534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158594 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215419.P12018062547263653534

/-! ## A215419.P15607547553744972336

`p?[record[A158594(A293428(n))]]`
-/

namespace A215419.P15607547553744972336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158594 (A293428 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215419.P15607547553744972336

/-! ## A215419.P1949210656280048776

`p?[record[A158594(A324347(n))]]`
-/

namespace A215419.P1949210656280048776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158594 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215419.P1949210656280048776

/-! ## A215419.P18076242186286460371

`∩[A023238(n+1), A158594(n+1)]`
-/

namespace A215419.P18076242186286460371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215419.P18076242186286460371

/-!
# A215420: Primes that remain prime when a single digit 7 is inserted between any two consecutive digits or as the leading or trailing digit.

The programs for A215420, there is no canonical definition to state claims against.
-/

/-! ## A215420.P15649306288567683340

`p?[A069832(n+1)]`
-/

namespace A215420.P15649306288567683340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215420.P15649306288567683340

/-! ## A215420.P10015440588405491009

`p?[or(1, A069832(-xor(n, -1)))]`
-/

namespace A215420.P10015440588405491009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A069832 (-Int.xor (n : ℤ) (-1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215420.P10015440588405491009

/-! ## A215420.P4921932412139014958

`p?[record[A069832(A109785(n))]]`
-/

namespace A215420.P4921932412139014958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069832 (A109785 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215420.P4921932412139014958

/-! ## A215420.P1762011552896767542

`p?[record[A069832(A126759(n))]]`
-/

namespace A215420.P1762011552896767542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069832 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215420.P1762011552896767542

/-! ## A215420.P9719919196852622723

`p?[record[A069832(A133310(n))]]`
-/

namespace A215420.P9719919196852622723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069832 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215420.P9719919196852622723

/-!
# A215421: Primes that remain prime when a single digit 9 is inserted between any two consecutive digits or as the leading or trailing digit.

The programs for A215421, there is no canonical definition to state claims against.
-/

/-! ## A215421.P15879931648130396233

`p?[A069833(n+1)]`
-/

namespace A215421.P15879931648130396233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215421.P15879931648130396233

/-! ## A215421.P2066208128681871743

`p?[or(1, A069833(ϕ²-(ϕ-n)))]`
-/

namespace A215421.P2066208128681871743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A069833 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215421.P2066208128681871743

/-! ## A215421.P11009607831638868285

`p?[record[A069833(A293428(n))]]`
-/

namespace A215421.P11009607831638868285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069833 (A293428 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215421.P11009607831638868285

/-! ## A215421.P9020793452032436342

`p?[record[A069833(A324347(n))]]`
-/

namespace A215421.P9020793452032436342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069833 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215421.P9020793452032436342

/-! ## A215421.P7145713725894140765

`p?[A069833(ϕ²-(ϕ-n))%A017642(n)]`
-/

namespace A215421.P7145713725894140765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069833 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat) (A017642 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215421.P7145713725894140765

/-! ## A215421.P9766798827075656818

`A000041(round(n/39))*p?[A069833(ϕ²-(ϕ-n))]`
-/

namespace A215421.P9766798827075656818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069833 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((n : ℚ) / 39)).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215421.P9766798827075656818

/-!
# A215422: Length of binary representation of Fibonacci(2^n).

The programs for A215422, there is no canonical definition to state claims against.
-/

/-! ## A215422.P8507696708125677047

`A020909(2^n)`
-/

namespace A215422.P8507696708125677047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020909 (2 ^ n)

end

end A215422.P8507696708125677047

/-! ## A215422.P5970887480395436300

`and(-1, A020909(A000079(n)))`
-/

namespace A215422.P5970887480395436300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A020909 (A000079 n).toNat)

end

end A215422.P5970887480395436300

/-! ## A215422.P10958166032783264044

`A016068(n)*A020909(A000079(n))`
-/

namespace A215422.P10958166032783264044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016068 n * A020909 (A000079 n).toNat

end

end A215422.P10958166032783264044

/-! ## A215422.P12017419800219000847

`A020909(A000079(n))%A004171(n)`
-/

namespace A215422.P12017419800219000847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020909 (A000079 n).toNat) (A004171 n)

end

end A215422.P12017419800219000847

/-! ## A215422.P11432665168952764686

`gcd(A020909(A000079(n)), A322281(n))`
-/

namespace A215422.P11432665168952764686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020909 (A000079 n).toNat) (A322281 n)

end

end A215422.P11432665168952764686

/-!
# A215423: Primes congruent to {0, 1, 2, 4, 5, 6} mod 11.

The programs for A215423, there is no canonical definition to state claims against.
-/

/-! ## A215423.P3685941240177523531

`∪[A141849(n+1), A215427(n+1)]`
-/

namespace A215423.P3685941240177523531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215423.P3685941240177523531

/-! ## A215423.P14110485207557139055

`∪[A215214(n+1), A215275(n+1)]`
-/

namespace A215423.P14110485207557139055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215423.P14110485207557139055

/-! ## A215423.P7163555517212330173

`∪[A215163(n+1), A215427(n+1)]`
-/

namespace A215423.P7163555517212330173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215423.P7163555517212330173

/-! ## A215423.P17735975991131436504

`∪[A215214(n+1), A215427(n+1)]`
-/

namespace A215423.P17735975991131436504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215423.P17735975991131436504

/-! ## A215423.P14857869337226402941

`∪[A215390(n+1), A215427(n+1)]`
-/

namespace A215423.P14857869337226402941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215423.P14857869337226402941

/-! ## A215423.P1639453704322252689

`p?[A008851(A008620(n))+n]`
-/

namespace A215423.P1639453704322252689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (A008620 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215423.P1639453704322252689

/-! ## A215423.P2347843740414024537

`p?[A047221(A002264(n+5))+n]`
-/

namespace A215423.P2347843740414024537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (A002264 (n + 5)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215423.P2347843740414024537

/-! ## A215423.P12104999952849287579

`p?[A168237(A002264(n))+A004773(n)]`
-/

namespace A215423.P12104999952849287579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168237 (A002264 n).toNat + A004773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215423.P12104999952849287579

/-! ## A215423.P15319900286267703451

`p?[A026215(A032766(n)+A008620(n))]`
-/

namespace A215423.P15319900286267703451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026215 (A032766 n + A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215423.P15319900286267703451

/-! ## A215423.P4814520611413649067

`p?[A004396(A010761(n+1)+n)+1]`
-/

namespace A215423.P4814520611413649067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A010761 (n + 1) + (n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215423.P4814520611413649067

/-! ## A215423.P7426778782046613155

`p?[A004523(A010761(n+1)+2+n)]`
-/

namespace A215423.P7426778782046613155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A010761 (n + 1) + 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215423.P7426778782046613155

/-! ## A215423.P104528191511448856

`p?[A004523(A008619(n)+A004773(n))]`
-/

namespace A215423.P104528191511448856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A008619 n + A004773 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215423.P104528191511448856

/-! ## A215423.P16323731656446524090

`p?[A004523(A032766(n)+A008620(n))]`
-/

namespace A215423.P16323731656446524090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A032766 n + A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215423.P16323731656446524090

/-! ## A215423.P5845680012924658064

`p?[A004523(A002264(n)+A001651(n+1))]`
-/

namespace A215423.P5845680012924658064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A002264 n + A001651 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215423.P5845680012924658064

/-! ## A215423.P12040361679208261624

`p?[A002264(A063199(n+1)+A005843(n))]`
-/

namespace A215423.P12040361679208261624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A063199 (n + 1) + A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215423.P12040361679208261624

/-! ## A215423.P82283729276947310

`p?[A002264(A047202(n+1)+A042948(n))]`
-/

namespace A215423.P82283729276947310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A047202 (n + 1) + A042948 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215423.P82283729276947310

/-! ## A215423.P1083637115370291867

`p?[A002264(A227542(A017449(n)))]`
-/

namespace A215423.P1083637115370291867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A227542 (A017449 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215423.P1083637115370291867

/-!
# A215424: Primes congruent to {0, 1, 2, 4, 5, 6} mod 13.

The programs for A215424, the canonical program `A215424.P12279259074454482005` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215424 has offset 1).

The definition of A215424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215424.P12279259074454482005

`∪[A215215(n+1), A215276(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A215424

/-- `∪[A215215(n+1), A215276(n+1)]` -/
def P12279259074454482005.Spec : Prop :=
  ∀ n, (P12279259074454482005.a n : ℤ) = A215424 (n + 1)

theorem P12279259074454482005.correct : P12279259074454482005.Spec := by
  intro n
  simp only [A215424, Nat.add_sub_cancel]

end A215424

/-! ## A215424.P13103397045584387355

`∪[A215164(n+1), A215428(n+1)]`
-/

namespace A215424.P13103397045584387355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215424.P13103397045584387355

namespace A215424

/-- `∪[A215164(n+1), A215428(n+1)]` -/
def P13103397045584387355.Spec : Prop :=
  ∀ n, (P13103397045584387355.a n : ℤ) = A215424 (n + 1)

end A215424

/-! ## A215424.P12948915823236461519

`∪[A215215(n+1), A215428(n+1)]`
-/

namespace A215424.P12948915823236461519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215424.P12948915823236461519

namespace A215424

/-- `∪[A215215(n+1), A215428(n+1)]` -/
def P12948915823236461519.Spec : Prop :=
  ∀ n, (P12948915823236461519.a n : ℤ) = A215424 (n + 1)

end A215424

/-! ## A215424.P9281498674727633567

`∪[A215391(n+1), A215428(n+1)]`
-/

namespace A215424.P9281498674727633567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215424.P9281498674727633567

namespace A215424

/-- `∪[A215391(n+1), A215428(n+1)]` -/
def P9281498674727633567.Spec : Prop :=
  ∀ n, (P9281498674727633567.a n : ℤ) = A215424 (n + 1)

end A215424

/-! ## A215424.P13786245198020213078

`∪[A215428(n+1), A268753(n+1)]`
-/

namespace A215424.P13786245198020213078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215424.P13786245198020213078

namespace A215424

/-- `∪[A215428(n+1), A268753(n+1)]` -/
def P13786245198020213078.Spec : Prop :=
  ∀ n, (P13786245198020213078.a n : ℤ) = A215424 (n + 1)

end A215424

/-! ## A215424.P16579128158387284818

`p?[A047274(A008620(n))+n]`
-/

namespace A215424.P16579128158387284818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047274 (A008620 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215424.P16579128158387284818

namespace A215424

/-- `p?[A047274(A008620(n))+n]` -/
def P16579128158387284818.Spec : Prop :=
  ∀ n, P16579128158387284818.a n = A215424 (n + 1)

end A215424

/-! ## A215424.P8175622594523088679

`p?[A047274(A154958(2*n+1))+n]`
-/

namespace A215424.P8175622594523088679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047274 (A154958 (2 * n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215424.P8175622594523088679

namespace A215424

/-- `p?[A047274(A154958(2*n+1))+n]` -/
def P8175622594523088679.Spec : Prop :=
  ∀ n, P8175622594523088679.a n = A215424 (n + 1)

end A215424

/-! ## A215424.P2290143401170501149

`p?[A004523(A047623(n+1)-A008619(n))]`
-/

namespace A215424.P2290143401170501149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A047623 (n + 1) - A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215424.P2290143401170501149

namespace A215424

/-- `p?[A004523(A047623(n+1)-A008619(n))]` -/
def P2290143401170501149.Spec : Prop :=
  ∀ n, P2290143401170501149.a n = A215424 (n + 1)

end A215424

/-! ## A215424.P5738467886385380783

`eq[A032741(n), A320006(A315057(n))]`
-/

namespace A215424.P5738467886385380783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320006 (A315057 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215424.P5738467886385380783

namespace A215424

/-- `eq[A032741(n), A320006(A315057(n))]` -/
def P5738467886385380783.Spec : Prop :=
  ∀ n, (P5738467886385380783.a n : ℤ) = A215424 (n + 1)

end A215424

/-!
# A215425: Primes congruent to {0, 1, 2, 4, 5, 6} mod 17.

The programs for A215425, the canonical program `A215425.P11391704542697951119` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215425 has offset 1).

The definition of A215425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215425.P11391704542697951119

`∪[A215273(n+1), A215277(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A215425

/-- `∪[A215273(n+1), A215277(n+1)]` -/
def P11391704542697951119.Spec : Prop :=
  ∀ n, (P11391704542697951119.a n : ℤ) = A215425 (n + 1)

theorem P11391704542697951119.correct : P11391704542697951119.Spec := by
  intro n
  simp only [A215425, Nat.add_sub_cancel]

end A215425

/-!
# A215426: Primes congruent to {0, 1, 2, 4, 5, 6} mod 19.

The programs for A215426, the canonical program `A215426.P10195043611066381914` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215426 has offset 1).

The definition of A215426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215426.P10195043611066381914

`∪[A215274(n+1), A215278(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A215426

/-- `∪[A215274(n+1), A215278(n+1)]` -/
def P10195043611066381914.Spec : Prop :=
  ∀ n, (P10195043611066381914.a n : ℤ) = A215426 (n + 1)

theorem P10195043611066381914.correct : P10195043611066381914.Spec := by
  intro n
  simp only [A215426, Nat.add_sub_cancel]

end A215426

/-! ## A215426.P13712335628227413217

`p?[A112653(A002264(n))+n]`
-/

namespace A215426.P13712335628227413217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112653 (A002264 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215426.P13712335628227413217

namespace A215426

/-- `p?[A112653(A002264(n))+n]` -/
def P13712335628227413217.Spec : Prop :=
  ∀ n, P13712335628227413217.a n = A215426 (n + 1)

end A215426

/-!
# A215427: Primes congruent to {0, 2, 4, 5, 6} mod 11.

The programs for A215427, there is no canonical definition to state claims against.
-/

/-! ## A215427.P4476310340526476267

`∪[A022011(n+1), A215275(n+1)]`
-/

namespace A215427.P4476310340526476267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215427.P4476310340526476267

/-! ## A215427.P3837160114006549746

`∪[A022545(n+1), A215275(n+1)]`
-/

namespace A215427.P3837160114006549746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215427.P3837160114006549746

/-! ## A215427.P9547382477798599637

`∪[A027569(n+1), A215275(n+1)]`
-/

namespace A215427.P9547382477798599637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215427.P9547382477798599637

/-! ## A215427.P13035178791705196778

`p?[∑[xor(1, A152893(n))]]`
-/

namespace A215427.P13035178791705196778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A152893 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215427.P13035178791705196778

/-! ## A215427.P18401055993969055828

`p?[A267755(n)+A177706(n)]`
-/

namespace A215427.P18401055993969055828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267755 n + A177706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215427.P18401055993969055828

/-! ## A215427.P16440620877587936650

`p?[5*(n+1)-A085624(A085624(n+1)+1)]`
-/

namespace A215427.P16440620877587936650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - A085624 (A085624 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215427.P16440620877587936650

/-! ## A215427.P1263039144665152001

`p?[A112689(A047263(n+3))+A004273(n)]`
-/

namespace A215427.P1263039144665152001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A047263 (n + 3)).toNat + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215427.P1263039144665152001

/-! ## A215427.P145391988560345687

`p?[A112689(A047263(n+3))+A014681(2*n)]`
-/

namespace A215427.P145391988560345687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A047263 (n + 3)).toNat + A014681 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215427.P145391988560345687

/-! ## A215427.P9390061862350510060

`p?[A008615(A098181(A017509(n)))]`
-/

namespace A215427.P9390061862350510060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A098181 (A017509 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215427.P9390061862350510060

/-! ## A215427.P13186963353531645901

`p?[A103221(A098180(A017497(n)))]`
-/

namespace A215427.P13186963353531645901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A098180 (A017497 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215427.P13186963353531645901

/-!
# A215428: Primes congruent to {0, 2, 4, 5, 6} mod 13.

The programs for A215428, the canonical program `A215428.P13698564390233230581` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215428 has offset 1).

The definition of A215428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215428.P14148761118433815445

`∪[A022547(n+1), A215276(n+1)]`
-/

namespace A215428.P14148761118433815445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215428.P14148761118433815445

namespace A215428

/-- `∪[A022547(n+1), A215276(n+1)]` -/
def P14148761118433815445.Spec : Prop :=
  ∀ n, (P14148761118433815445.a n : ℤ) = A215428 (n + 1)

end A215428

/-! ## A215428.P8299028209578634504

`∪[A087511(n+1), A215276(n+1)]`
-/

namespace A215428.P8299028209578634504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215428.P8299028209578634504

namespace A215428

/-- `∪[A087511(n+1), A215276(n+1)]` -/
def P8299028209578634504.Spec : Prop :=
  ∀ n, (P8299028209578634504.a n : ℤ) = A215428 (n + 1)

end A215428

/-! ## A215428.P13698564390233230581

`record[p?[a(n-4)+13]]` with `a(0)=2, a(1)=5, a(2)=13, a(3)=0, a(4)=1, a(5)=2, a(6)=5, a(7)=4, a(8)=6`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215428

/-- `record[p?[a(n-4)+13]]` -/
def P13698564390233230581.Spec : Prop :=
  ∀ n, (P13698564390233230581.a n : ℤ) = A215428 (n + 1)

theorem P13698564390233230581.correct : P13698564390233230581.Spec := by
  intro n
  simp only [A215428, Nat.add_sub_cancel]

end A215428

/-! ## A215428.P15254012225280498432

`p?[∑[A071282(A078112(n+1))]]`
-/

namespace A215428.P15254012225280498432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071282 (A078112 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215428.P15254012225280498432

namespace A215428

/-- `p?[∑[A071282(A078112(n+1))]]` -/
def P15254012225280498432.Spec : Prop :=
  ∀ n, P15254012225280498432.a n = A215428 (n + 1)

end A215428

/-! ## A215428.P6053007051777711464

`∩[A215424(n+1), A279367(n+1)]`
-/

namespace A215428.P6053007051777711464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215428.P6053007051777711464

namespace A215428

/-- `∩[A215424(n+1), A279367(n+1)]` -/
def P6053007051777711464.Spec : Prop :=
  ∀ n, (P6053007051777711464.a n : ℤ) = A215428 (n + 1)

end A215428

/-!
# A215429: Primes of the form (n^2+2)/6 where n^2+1 is prime.

The programs for A215429, there is no canonical definition to state claims against.
-/

/-! ## A215429.P18366752157056559420

`ceil(A215248(n+1)²/6)`
-/

namespace A215429.P18366752157056559420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A215248 (n + 1) ^ 2 : ℚ) / 6⌉

end

end A215429.P18366752157056559420

/-! ## A215429.P3461760741141191063

`A011975(A215248(n+1))`
-/

namespace A215429.P3461760741141191063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011975 (A215248 (n + 1)).toNat

end

end A215429.P3461760741141191063

/-! ## A215429.P15616773416615234259

`A008747(A215248(n+1)-1)`
-/

namespace A215429.P15616773416615234259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008747 (A215248 (n + 1) - 1).toNat

end

end A215429.P15616773416615234259

/-! ## A215429.P2765207033155843463

`A211541(lcm(2, A215248(n+1)))`
-/

namespace A215429.P2765207033155843463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211541 (Int.lcm 2 (A215248 (n + 1)))

end

end A215429.P2765207033155843463

/-! ## A215429.P13119742830563704223

`A211541(A215248(n+1)+A000007(n))`
-/

namespace A215429.P13119742830563704223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211541 (A215248 (n + 1) + A000007 n).toNat

end

end A215429.P13119742830563704223

/-! ## A215429.P17597692632139345978

`A211541(A215248(n+1)%A121326(n+1))`
-/

namespace A215429.P17597692632139345978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211541 (Int.tmod (A215248 (n + 1)) (A121326 (n + 1))).toNat

end

end A215429.P17597692632139345978

/-!
# A215439: Numbers k such that 2^k + k^2 - 1 is prime.

The programs for A215439, there is no canonical definition to state claims against.
-/

/-! ## A215439.P10980943093729844758

`A077462(∑{d}[A041065(n), #])`
-/

namespace A215439.P10980943093729844758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A215439.P10980943093729844758

/-!
# A215441: Numbers k such that 3^k + k^3 + 1 is prime.

The programs for A215441, there is no canonical definition to state claims against.
-/

/-! ## A215441.P4562083849990633905

`A016921(3*n+4)%A095117(A002110(n))`
-/

namespace A215441.P4562083849990633905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016921 (3 * n + 4)) (A095117 (A002110 n).toNat)

end

end A215441.P4562083849990633905

/-!
# A215443: Numbers k such that 5^k + k^5 - 1 is prime.

The programs for A215443, there is no canonical definition to state claims against.
-/

/-! ## A215443.P2219674204638802480

`A383508(a(n-1))` with `a(0)=1, a(1)=3, a(2)=9, a(3)=13`
-/

namespace A215443.P2219674204638802480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 13] fun n a =>
  A383508 (a (n - 1)).toNat

end

end A215443.P2219674204638802480

/-! ## A215443.P4795958029119341390

`record[A351544(A240519(n+1))]`
-/

namespace A215443.P4795958029119341390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351544 (A240519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215443.P4795958029119341390

/-!
# A215444: Numbers k such that 7^k + k^7 + 1 is prime.

The programs for A215444, there is no canonical definition to state claims against.
-/

/-! ## A215444.P14763726278168762854

`A029470(a(n-1))` with `a(0)=0, a(1)=3`
-/

namespace A215444.P14763726278168762854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  A029470 (a (n - 1)).toNat

end

end A215444.P14763726278168762854

/-!
# A215446: Numbers k such that 11^k + k^11 - 1 is prime.

The programs for A215446, there is no canonical definition to state claims against.
-/

/-! ## A215446.P15758001811249813623

`or(A037916(A002893(n)), A269755(n))`
-/

namespace A215446.P15758001811249813623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037916 (A002893 n).toNat) (A269755 n)

end

end A215446.P15758001811249813623

/-!
# A215448: a(0)=1, a(1)=0, a(n) = a(n-1) + a(n-2) + Sum_{i=0...n-1} a(i).

The programs for A215448, the canonical program `A215448.P9384846522557923361` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215448 has offset 0).

The definition of A215448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215448.P8417274496774263333

`ogf((1-3x+2x^2)/(1-3x+x^3))`
-/

namespace A215448.P8417274496774263333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 2] [1, -3, 0, 1] n

end

end A215448.P8417274496774263333

namespace A215448

/-- `ogf((1-3x+2x^2)/(1-3x+x^3))` -/
def P8417274496774263333.Spec : Prop :=
  ∀ n, P8417274496774263333.a n = A215448 n

end A215448

/-! ## A215448.P9384846522557923361

`3*a(n-1)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215448

/-- `3*a(n-1)-a(n-3)` -/
def P9384846522557923361.Spec : Prop :=
  ∀ n, P9384846522557923361.a n = A215448 n

theorem P9384846522557923361.correct : P9384846522557923361.Spec := by
  intro n
  simp only [A215448]

end A215448

/-! ## A215448.P1925391648367633270

`a(n-1)+a(n-1)+a(n-1)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A215448.P1925391648367633270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 3)))

end

end A215448.P1925391648367633270

namespace A215448

/-- `a(n-1)+a(n-1)+a(n-1)-a(n-3)` -/
def P1925391648367633270.Spec : Prop :=
  ∀ n, P1925391648367633270.a n = A215448 n

theorem P1925391648367633270.correct : P1925391648367633270.Spec := by
  intro n
  simp only [A215448, Nat.add_sub_cancel, A215448.P1925391648367633270.a, A215448.P9384846522557923361.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A215448

/-! ## A215448.P8796089743191421650

`a(n-1)-(a(n-3)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A215448.P8796089743191421650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1) - a (n - 1))

end

end A215448.P8796089743191421650

namespace A215448

/-- `a(n-1)-(a(n-3)-a(n-1)-a(n-1))` -/
def P8796089743191421650.Spec : Prop :=
  ∀ n, P8796089743191421650.a n = A215448 n

theorem P8796089743191421650.correct : P8796089743191421650.Spec := by
  intro n
  simp only [A215448, Nat.add_sub_cancel, A215448.P8796089743191421650.a, A215448.P9384846522557923361.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A215448

/-! ## A215448.P5013097559323112522

`A122100(n)-A122100(n+2)`
-/

namespace A215448.P5013097559323112522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122100 n - A122100 (n + 2)

end

end A215448.P5013097559323112522

namespace A215448

/-- `A122100(n)-A122100(n+2)` -/
def P5013097559323112522.Spec : Prop :=
  ∀ n, P5013097559323112522.a n = A215448 n

end A215448

/-! ## A215448.P14705669025452362126

`Δ[abs(Δ[A122099(n)])]`
-/

namespace A215448.P14705669025452362126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122099 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215448.P14705669025452362126

namespace A215448

/-- `Δ[abs(Δ[A122099(n)])]` -/
def P14705669025452362126.Spec : Prop :=
  ∀ n, P14705669025452362126.a n = A215448 n

end A215448

/-! ## A215448.P12799869400380835576

`A122100(n+2)+A052545(n)`
-/

namespace A215448.P12799869400380835576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122100 (n + 2) + A052545 n

end

end A215448.P12799869400380835576

namespace A215448

/-- `A122100(n+2)+A052545(n)` -/
def P12799869400380835576.Spec : Prop :=
  ∀ n, P12799869400380835576.a n = A215448 n

end A215448

/-! ## A215448.P15416114127662334886

`Δ[A187504(3*n+1)]-A187504(3*n+1)`
-/

namespace A215448.P15416114127662334886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187504 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A187504 (3 * n + 1)

end

end A215448.P15416114127662334886

namespace A215448

/-- `Δ[A187504(3*n+1)]-A187504(3*n+1)` -/
def P15416114127662334886.Spec : Prop :=
  ∀ n, P15416114127662334886.a n = A215448 n

end A215448

/-! ## A215448.P2420137993613313907

`A052545(n)+A052545(n)-A052536(n)`
-/

namespace A215448.P2420137993613313907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 n + (A052545 n - A052536 n)

end

end A215448.P2420137993613313907

namespace A215448

/-- `A052545(n)+A052545(n)-A052536(n)` -/
def P2420137993613313907.Spec : Prop :=
  ∀ n, P2420137993613313907.a n = A215448 n

end A215448

/-! ## A215448.P7730096411759910663

`A052536(n)-(A052545(n)-A122100(n))`
-/

namespace A215448.P7730096411759910663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 n - (A052545 n - A122100 n)

end

end A215448.P7730096411759910663

namespace A215448

/-- `A052536(n)-(A052545(n)-A122100(n))` -/
def P7730096411759910663.Spec : Prop :=
  ∀ n, P7730096411759910663.a n = A215448 n

end A215448

/-! ## A215448.P15976965945749950930

`2*A052545(n)-A052536(n)`
-/

namespace A215448.P15976965945749950930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052545 n - A052536 n

end

end A215448.P15976965945749950930

namespace A215448

/-- `2*A052545(n)-A052536(n)` -/
def P15976965945749950930.Spec : Prop :=
  ∀ n, P15976965945749950930.a n = A215448 n

end A215448

/-! ## A215448.P11785380360258620634

`A052545(n)+A076264(n)-A052545(n+1)`
-/

namespace A215448.P11785380360258620634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 n + (A076264 n - A052545 (n + 1))

end

end A215448.P11785380360258620634

namespace A215448

/-- `A052545(n)+A076264(n)-A052545(n+1)` -/
def P11785380360258620634.Spec : Prop :=
  ∀ n, P11785380360258620634.a n = A215448 n

end A215448

/-!
# A215453: a(n) = least k>0 such that n^n divides Fibonacci(k).

The programs for A215453, there is no canonical definition to state claims against.
-/

/-! ## A215453.P1022284073946582830

`A001177((n+1)^(n+1))`
-/

namespace A215453.P1022284073946582830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 ((n + 1) ^ (n + 1))

end

end A215453.P1022284073946582830

/-! ## A215453.P8499770918100082164

`A001177(A000169(n+1))*A010889(n)`
-/

namespace A215453.P8499770918100082164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A000169 (n + 1)).toNat * A010889 n

end

end A215453.P8499770918100082164

/-!
# A215454: a(n) = least positive k such that n^2 divides k!

The programs for A215454, there is no canonical definition to state claims against.
-/

/-! ## A215454.P8613283202447368029

`A002034((n+1)²)`
-/

namespace A215454.P8613283202447368029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 ((n + 1) ^ 2)

end

end A215454.P8613283202447368029

/-! ## A215454.P10564544952979649399

`A057108((n+1)²)+A006530(n+1)`
-/

namespace A215454.P10564544952979649399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057108 ((n + 1) ^ 2) + A006530 (n + 1)

end

end A215454.P10564544952979649399

/-! ## A215454.P4684193367646631260

`A122416((n+1)²)-1`
-/

namespace A215454.P4684193367646631260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122416 ((n + 1) ^ 2) - 1

end

end A215454.P4684193367646631260

/-! ## A215454.P6388494814312342376

`A061243((n+1)²)-(n+1)²`
-/

namespace A215454.P6388494814312342376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061243 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ)

end

end A215454.P6388494814312342376

/-! ## A215454.P17134076612497897727

`or(char[26], A002034(∑[2*n+1]))`
-/

namespace A215454.P17134076612497897727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A002034 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A215454.P17134076612497897727

/-! ## A215454.P6602157717872791669

`lcm((-1)^n, A002034(record[(1-n)²]))`
-/

namespace A215454.P6602157717872791669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A002034 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A215454.P6602157717872791669

/-! ## A215454.P203955067047228862

`A002034((n+1)^2)%(2*n+5)`
-/

namespace A215454.P203955067047228862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002034 ((n + 1) ^ 2)) (2 * n + 5 : ℤ)

end

end A215454.P203955067047228862

/-! ## A215454.P3208329390007461911

`A023443(A122416((n+1)²))`
-/

namespace A215454.P3208329390007461911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A122416 ((n + 1) ^ 2)).toNat

end

end A215454.P3208329390007461911

/-! ## A215454.P16881789730709133143

`∑{d}[A002034(∑[2*n+1]), A000010(#)]`
-/

namespace A215454.P16881789730709133143
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A215454.P16881789730709133143

/-! ## A215454.P12838534161198872597

`A007318(C(2, n))*A002034(∑[2*n+1])`
-/

namespace A215454.P12838534161198872597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A002034 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215454.P12838534161198872597

/-! ## A215454.P17149089646122614825

`A027750(A006218(A002034((n+1)*(n+1))))`
-/

namespace A215454.P17149089646122614825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A006218 (A002034 ((n + 1) * (n + 1))).toNat).toNat

end

end A215454.P17149089646122614825

/-!
# A215455: a(n) = 6*a(n-1) - 9*a(n-2) + a(n-3), with a(0)=3, a(1)=6 and a(2)=18.

The programs for A215455, the canonical program `A215455.P519122879346892516` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215455 has offset 0).

The definition of A215455 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-9*a(n-2)+a(n-3)` (program `A215455.P519122879346892516`, by `A215455.P519122879346892516.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215455.P519122879346892516

`6*a(n-1)-9*a(n-2)+a(n-3)` with `a(0)=3, a(1)=6, a(2)=18`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215455

/-- `6*a(n-1)-9*a(n-2)+a(n-3)` -/
def P519122879346892516.Spec : Prop :=
  ∀ n, P519122879346892516.a n = A215455 n

theorem P519122879346892516.correct : P519122879346892516.Spec := by
  intro n
  simp only [A215455]

end A215455

/-! ## A215455.P9968348675816474347

`3*A094831(n)`
-/

namespace A215455.P9968348675816474347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A094831 n

end

end A215455.P9968348675816474347

namespace A215455

/-- `3*A094831(n)` -/
def P9968348675816474347.Spec : Prop :=
  ∀ n, P9968348675816474347.a n = A215455 n

end A215455

/-! ## A215455.P9344070394636706776

`record[3*a(n-2)-a(n-3)]` with `a(0)=3, a(1)=0, a(2)=6`
-/

namespace A215455.P9344070394636706776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 6] fun n f1 =>
  3 * f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215455.P9344070394636706776

namespace A215455

/-- `record[3*a(n-2)-a(n-3)]` -/
def P9344070394636706776.Spec : Prop :=
  ∀ n, P9344070394636706776.a n = A215455 n

end A215455

/-! ## A215455.P3354964153710527875

`record[A215664(n)]`
-/

namespace A215455.P3354964153710527875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215455.P3354964153710527875

namespace A215455

/-- `record[A215664(n)]` -/
def P3354964153710527875.Spec : Prop :=
  ∀ n, P3354964153710527875.a n = A215455 n

end A215455

/-! ## A215455.P4279717540284097067

`A215664(2*n)`
-/

namespace A215455.P4279717540284097067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215664 (2 * n)

end

end A215455.P4279717540284097067

namespace A215455

/-- `A215664(2*n)` -/
def P4279717540284097067.Spec : Prop :=
  ∀ n, P4279717540284097067.a n = A215455 n

end A215455

/-! ## A215455.P16098169302696048819

`Δ[record[A214699(n)]]`
-/

namespace A215455.P16098169302696048819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214699 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215455.P16098169302696048819

namespace A215455

/-- `Δ[record[A214699(n)]]` -/
def P16098169302696048819.Spec : Prop :=
  ∀ n, P16098169302696048819.a n = A215455 n

end A215455

/-! ## A215455.P10392349805673022616

`A094649(2*n)-1`
-/

namespace A215455.P10392349805673022616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094649 (2 * n) - 1

end

end A215455.P10392349805673022616

namespace A215455

/-- `A094649(2*n)-1` -/
def P10392349805673022616.Spec : Prop :=
  ∀ n, P10392349805673022616.a n = A215455 n

end A215455

/-! ## A215455.P15789146705850083246

`3*A188048(2*n)`
-/

namespace A215455.P15789146705850083246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A188048 (2 * n)

end

end A215455.P15789146705850083246

namespace A215455

/-- `3*A188048(2*n)` -/
def P15789146705850083246.Spec : Prop :=
  ∀ n, P15789146705850083246.a n = A215455 n

end A215455

/-! ## A215455.P8825154754289774745

`abs(A215664(A005843(n)))`
-/

namespace A215455.P8825154754289774745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A215664 (A005843 n).toNat|

end

end A215455.P8825154754289774745

namespace A215455

/-- `abs(A215664(A005843(n)))` -/
def P8825154754289774745.Spec : Prop :=
  ∀ n, P8825154754289774745.a n = A215455 n

end A215455

/-! ## A215455.P7448072054453011546

`Δ[A187495(A016777(2*n))]*3`
-/

namespace A215455.P7448072054453011546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187495 (A016777 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * 3

end

end A215455.P7448072054453011546

namespace A215455

/-- `Δ[A187495(A016777(2*n))]*3` -/
def P7448072054453011546.Spec : Prop :=
  ∀ n, P7448072054453011546.a n = A215455 n

end A215455

/-! ## A215455.P14895294796603496221

`A214699(2*n+1)-record[A214699(n)]`
-/

namespace A215455.P14895294796603496221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214699 (2 * n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215455.P14895294796603496221

namespace A215455

/-- `A214699(2*n+1)-record[A214699(n)]` -/
def P14895294796603496221.Spec : Prop :=
  ∀ n, P14895294796603496221.a n = A215455 n

end A215455

/-! ## A215455.P5028095534981258840

`A174971(2*n+1)+A094649(2*n)+2`
-/

namespace A215455.P5028095534981258840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174971 (2 * n + 1) + (A094649 (2 * n) + 2)

end

end A215455.P5028095534981258840

namespace A215455

/-- `A174971(2*n+1)+A094649(2*n)+2` -/
def P5028095534981258840.Spec : Prop :=
  ∀ n, P5028095534981258840.a n = A215455 n

end A215455

/-! ## A215455.P7409524696798135224

`A215665(2*n)-A215665(2*n+1)`
-/

namespace A215455.P7409524696798135224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215665 (2 * n) - A215665 (2 * n + 1)

end

end A215455.P7409524696798135224

namespace A215455

/-- `A215665(2*n)-A215665(2*n+1)` -/
def P7409524696798135224.Spec : Prop :=
  ∀ n, P7409524696798135224.a n = A215455 n

end A215455

/-! ## A215455.P18143978250520002850

`A214699(2*n+1)+A215665(2*n)+A214699(2*n)`
-/

namespace A215455.P18143978250520002850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214699 (2 * n + 1) + (A215665 (2 * n) + A214699 (2 * n))

end

end A215455.P18143978250520002850

namespace A215455

/-- `A214699(2*n+1)+A215665(2*n)+A214699(2*n)` -/
def P18143978250520002850.Spec : Prop :=
  ∀ n, P18143978250520002850.a n = A215455 n

end A215455

/-!
# A215456: a(n)=(4n-1)!! modulo 2n, n=1,2,...

The programs for A215456, the canonical program `A215456.P7038399107069761046` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215456 has offset 1).

The definition of A215456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215456.P11476292167498184830

`A040026(2*(n+1))²%(2*(n+1))`
-/

namespace A215456.P11476292167498184830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040026 (2 * (n + 1)) ^ 2) (2 * (n + 1) : ℤ)

end

end A215456.P11476292167498184830

namespace A215456

/-- `A040026(2*(n+1))²%(2*(n+1))` -/
def P11476292167498184830.Spec : Prop :=
  ∀ n, P11476292167498184830.a n = A215456 (n + 1)

end A215456

/-! ## A215456.P5727825608810482142

`A119688(A004771(n))%(2*(n+1))`
-/

namespace A215456.P5727825608810482142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119688 (A004771 n).toNat) (2 * (n + 1) : ℤ)

end

end A215456.P5727825608810482142

namespace A215456

/-- `A119688(A004771(n))%(2*(n+1))` -/
def P5727825608810482142.Spec : Prop :=
  ∀ n, P5727825608810482142.a n = A215456 (n + 1)

end A215456

/-! ## A215456.P7038399107069761046

`A007912(4*(n+1))%Δ[A002378(n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215456

/-- `A007912(4*(n+1))%Δ[A002378(n)]` -/
def P7038399107069761046.Spec : Prop :=
  ∀ n, P7038399107069761046.a n = A215456 (n + 1)

theorem P7038399107069761046.correct : P7038399107069761046.Spec := by
  intro n
  simp only [A215456, Nat.add_sub_cancel]

end A215456

/-! ## A215456.P10281792990392930261

`A119688(4*n+3)%A038722(A038722(2*(n+1)))`
-/

namespace A215456.P10281792990392930261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119688 (4 * n + 3)) (A038722 (A038722 (2 * (n + 1))).toNat)

end

end A215456.P10281792990392930261

namespace A215456

/-- `A119688(4*n+3)%A038722(A038722(2*(n+1)))` -/
def P10281792990392930261.Spec : Prop :=
  ∀ n, P10281792990392930261.a n = A215456 (n + 1)

end A215456

/-! ## A215456.P302410703450230623

`A100371(n+1)²%(2*(n+1))`
-/

namespace A215456.P302410703450230623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100371 (n + 1) ^ 2) (2 * (n + 1) : ℤ)

end

end A215456.P302410703450230623

namespace A215456

/-- `A100371(n+1)²%(2*(n+1))` -/
def P302410703450230623.Spec : Prop :=
  ∀ n, P302410703450230623.a n = A215456 (n + 1)

end A215456

/-! ## A215456.P12147491725595653601

`A000225(A000010(n+1))²%(2*(n+1))`
-/

namespace A215456.P12147491725595653601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (A000010 (n + 1)).toNat ^ 2) (2 * (n + 1) : ℤ)

end

end A215456.P12147491725595653601

namespace A215456

/-- `A000225(A000010(n+1))²%(2*(n+1))` -/
def P12147491725595653601.Spec : Prop :=
  ∀ n, P12147491725595653601.a n = A215456 (n + 1)

end A215456

/-! ## A215456.P7372289765662424906

`A000246(n+1)%A004277(n+1)`
-/

namespace A215456.P7372289765662424906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000246 (n + 1)) (A004277 (n + 1))

end

end A215456.P7372289765662424906

namespace A215456

/-- `A000246(n+1)%A004277(n+1)` -/
def P7372289765662424906.Spec : Prop :=
  ∀ n, P7372289765662424906.a n = A215456 (n + 1)

end A215456

/-!
# A215457: Position of 2n-1 in A215456.

The programs for A215457, there is no canonical definition to state claims against.
-/

/-! ## A215457.P16092877339948096333

`A364391(A123168(n+2))`
-/

namespace A215457.P16092877339948096333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364391 (A123168 (n + 2)).toNat

end

end A215457.P16092877339948096333

/-!
# A215458: a(n) = 4*a(n-1) - 7*a(n-2) + 8*a(n-3) - 4*a(n-4) starting 0, 1, 4, 7.

The programs for A215458, the canonical program `A215458.P5573742734780270137` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215458 has offset 0).

The definition of A215458 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-7*a(n-2)+8*a(n-3)-4*a(n-4)` (program `A215458.P5573742734780270137`, by `A215458.P5573742734780270137.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215458.P16377017224683008892

`2^(n-1)-2^(n/2)*cos(n*atan(sqrt(7)))+1/2`
-/

namespace A215458.P16377017224683008892
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - (2 : ℝ) ^ ((n : ℚ) / 2 : ℝ) * Real.cos ((n : ℝ) * Real.arctan (Real.sqrt (7 : ℝ))) + ((1 : ℚ) / 2 : ℝ)

end

end A215458.P16377017224683008892

namespace A215458

/-- `2^(n-1)-2^(n/2)*cos(n*atan(sqrt(7)))+1/2` -/
def P16377017224683008892.Spec : Prop :=
  ∀ n, P16377017224683008892.a n = (A215458 n : ℝ)

end A215458

/-! ## A215458.P5573742734780270137

`4*a(n-1)-7*a(n-2)+8*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215458

/-- `4*a(n-1)-7*a(n-2)+8*a(n-3)-4*a(n-4)` -/
def P5573742734780270137.Spec : Prop :=
  ∀ n, P5573742734780270137.a n = A215458 n

theorem P5573742734780270137.correct : P5573742734780270137.Spec := by
  intro n
  simp only [A215458]

end A215458

/-! ## A215458.P3009584086747325551

`2*a(n-1)-A105225(n)` with `a(0)=0, a(1)=1`
-/

namespace A215458.P3009584086747325551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1) - A105225 n

end

end A215458.P3009584086747325551

namespace A215458

/-- `2*a(n-1)-A105225(n)` -/
def P3009584086747325551.Spec : Prop :=
  ∀ n, P3009584086747325551.a n = A215458 n

end A215458

/-! ## A215458.P878421598733087577

`floor(2*a(n-1)-A002249(n+1)/2)` with `a(0)=0`
-/

namespace A215458.P878421598733087577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(2 * a (n - 1) : ℚ) - (A002249 (n + 1) : ℚ) / 2⌋

end

end A215458.P878421598733087577

namespace A215458

/-- `floor(2*a(n-1)-A002249(n+1)/2)` -/
def P878421598733087577.Spec : Prop :=
  ∀ n, P878421598733087577.a n = A215458 n

end A215458

/-! ## A215458.P13036597248215270137

`ceil((2^n-A002249(n))/2)`
-/

namespace A215458.P13036597248215270137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 ^ n : ℤ) - A002249 n : ℚ) / 2⌉

end

end A215458.P13036597248215270137

namespace A215458

/-- `ceil((2^n-A002249(n))/2)` -/
def P13036597248215270137.Spec : Prop :=
  ∀ n, P13036597248215270137.a n = A215458 n

end A215458

/-! ## A215458.P3176030269596711332

`(A000051(n)-A002249(n))/2`
-/

namespace A215458.P3176030269596711332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000051 n - A002249 n : ℚ) / 2

end

end A215458.P3176030269596711332

namespace A215458

/-- `(A000051(n)-A002249(n))/2` -/
def P3176030269596711332.Spec : Prop :=
  ∀ n, P3176030269596711332.a n = (A215458 n : ℚ)

end A215458

/-!
# A215459: Arises in quick gossiping without duplicate transmission.

The programs for A215459, there is no canonical definition to state claims against.
-/

/-! ## A215459.P9615890201815453332

`ogf((1+x^2+2x^3-2x^7)/(1-2x+x^2))`
-/

namespace A215459.P9615890201815453332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, 2, 0, 0, 0, -2] [1, -2, 1] n

end

end A215459.P9615890201815453332

/-!
# A215460: a(n) = floor(n!^2 / n^n).

The programs for A215460, the canonical program `A215460.P4818613980440703813` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215460 has offset 1).

The definition of A215460 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)!²/(n+1)^(n+1))` (program `A215460.P4818613980440703813`, by `A215460.P4818613980440703813.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215460.P4818613980440703813

`floor((n+1)!²/(n+1)^(n+1))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215460

/-- `floor((n+1)!²/(n+1)^(n+1))` -/
def P4818613980440703813.Spec : Prop :=
  ∀ n, P4818613980440703813.a n = A215460 (n + 1)

theorem P4818613980440703813.correct : P4818613980440703813.Spec := by
  intro n
  simp only [A215460, Nat.add_sub_cancel]

end A215460

/-! ## A215460.P15633746259998369004

`floor(∏[(n+1)²]/(n+1)^(n+1))`
-/

namespace A215460.P15633746259998369004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((n + 1) ^ (n + 1) : ℚ)⌋

end

end A215460.P15633746259998369004

namespace A215460

/-- `floor(∏[(n+1)²]/(n+1)^(n+1))` -/
def P15633746259998369004.Spec : Prop :=
  ∀ n, P15633746259998369004.a n = A215460 (n + 1)

end A215460

/-!
# A215462: Number of decompositions of 2n into ordered sums of two odd nonprimes.

The programs for A215462, there is no canonical definition to state claims against.
-/

/-! ## A215462.P12931379368610333549

`and(A139351(A005318(n)), A344117(n+1))`
-/

namespace A215462.P12931379368610333549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139351 (A005318 n).toNat) (A344117 (n + 1))

end

end A215462.P12931379368610333549

/-!
# A215464: Smallest prime not generated by Buss's function (A067836) through B(n).

The programs for A215464, there is no canonical definition to state claims against.
-/

/-! ## A215464.P1491850708400333754

`A268101(∪[A173757(2*(n+2)), A184902(n+1)])`
-/

namespace A215464.P1491850708400333754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173757 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184902 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268101 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A215464.P1491850708400333754

/-! ## A215464.P9878490821882961942

`A268101(∑[A268045(n+1)])`
-/

namespace A215464.P9878490821882961942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268101 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A215464.P9878490821882961942

/-! ## A215464.P7664853426236121922

`A137847(∪[A212959(2*(n+1)), A279767(n+1)])`
-/

namespace A215464.P7664853426236121922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212959 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279767 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137847 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A215464.P7664853426236121922

/-! ## A215464.P13430419775258410070

`A137847(A074997(n+1))`
-/

namespace A215464.P13430419775258410070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137847 (A074997 (n + 1)).toNat

end

end A215464.P13430419775258410070

/-! ## A215464.P11026145044186489854

`A137847(A279767(n+1))`
-/

namespace A215464.P11026145044186489854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137847 (A279767 (n + 1)).toNat

end

end A215464.P11026145044186489854

/-!
# A215465: a(n) = (Lucas(4n) - Lucas(2n))/4.

The programs for A215465, the canonical program `A215465.P18371968892146487040` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215465 has offset 0).

The definition of A215465 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215465.P18371968892146487040

`10*a(n-1)-23*a(n-2)+10*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=10, a(3)=76`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215465

/-- `10*a(n-1)-23*a(n-2)+10*a(n-3)-a(n-4)` -/
def P18371968892146487040.Spec : Prop :=
  ∀ n, P18371968892146487040.a n = A215465 n

theorem P18371968892146487040.correct : P18371968892146487040.Spec := by
  intro n
  simp only [A215465]

end A215465

/-! ## A215465.P5951018598942586177

`A056854(n)/4-A005248(n)/4`
-/

namespace A215465.P5951018598942586177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056854 n : ℚ) / 4 - (A005248 n : ℚ) / 4

end

end A215465.P5951018598942586177

namespace A215465

/-- `A056854(n)/4-A005248(n)/4` -/
def P5951018598942586177.Spec : Prop :=
  ∀ n, P5951018598942586177.a n = (A215465 n : ℚ)

end A215465

/-! ## A215465.P11637771470365847172

`(A000032(4*n)-A000032(2*n))/4`
-/

namespace A215465.P11637771470365847172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (4 * n) - A000032 (2 * n) : ℚ) / 4

end

end A215465.P11637771470365847172

namespace A215465

/-- `(A000032(4*n)-A000032(2*n))/4` -/
def P11637771470365847172.Spec : Prop :=
  ∀ n, P11637771470365847172.a n = (A215465 n : ℚ)

end A215465

/-! ## A215465.P5433737949947598565

`A215466(n)+A056014(2*n)`
-/

namespace A215465.P5433737949947598565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215466 n + A056014 (2 * n)

end

end A215465.P5433737949947598565

namespace A215465

/-- `A215466(n)+A056014(2*n)` -/
def P5433737949947598565.Spec : Prop :=
  ∀ n, P5433737949947598565.a n = A215465 n

end A215465

/-! ## A215465.P520048021107854986

`A049681(2*n)/2`
-/

namespace A215465.P520048021107854986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049681 (2 * n) : ℚ) / 2

end

end A215465.P520048021107854986

namespace A215465

/-- `A049681(2*n)/2` -/
def P520048021107854986.Spec : Prop :=
  ∀ n, P520048021107854986.a n = (A215465 n : ℚ)

end A215465

/-! ## A215465.P14736048352902749702

`floor(C(A000032(2*n), 2)/2)`
-/

namespace A215465.P14736048352902749702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (A000032 (2 * n)).toNat 2 : ℚ) / 2⌋

end

end A215465.P14736048352902749702

namespace A215465

/-- `floor(C(A000032(2*n), 2)/2)` -/
def P14736048352902749702.Spec : Prop :=
  ∀ n, P14736048352902749702.a n = A215465 n

end A215465

/-! ## A215465.P4115047089779783550

`(A056854(n)-A005248(n))/4`
-/

namespace A215465.P4115047089779783550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056854 n - A005248 n : ℚ) / 4

end

end A215465.P4115047089779783550

namespace A215465

/-- `(A056854(n)-A005248(n))/4` -/
def P4115047089779783550.Spec : Prop :=
  ∀ n, P4115047089779783550.a n = (A215465 n : ℚ)

end A215465

/-! ## A215465.P2207591010518472404

`(A005248(2*n)-A049680(2*n))/2`
-/

namespace A215465.P2207591010518472404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005248 (2 * n) - A049680 (2 * n) : ℚ) / 2

end

end A215465.P2207591010518472404

namespace A215465

/-- `(A005248(2*n)-A049680(2*n))/2` -/
def P2207591010518472404.Spec : Prop :=
  ∀ n, P2207591010518472404.a n = (A215465 n : ℚ)

end A215465

/-! ## A215465.P15094195218103796672

`(A096140(2*n)-A094292(2*n))/2`
-/

namespace A215465.P15094195218103796672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096140 (2 * n) - A094292 (2 * n) : ℚ) / 2

end

end A215465.P15094195218103796672

namespace A215465

/-- `(A096140(2*n)-A094292(2*n))/2` -/
def P15094195218103796672.Spec : Prop :=
  ∀ n, P15094195218103796672.a n = (A215465 n : ℚ)

end A215465

/-! ## A215465.P2117441389808862669

`(A142586(2*n)-A147586(2*n))/2`
-/

namespace A215465.P2117441389808862669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142586 (2 * n) - A147586 (2 * n) : ℚ) / 2

end

end A215465.P2117441389808862669

namespace A215465

/-- `(A142586(2*n)-A147586(2*n))/2` -/
def P2117441389808862669.Spec : Prop :=
  ∀ n, P2117441389808862669.a n = (A215465 n : ℚ)

end A215465

/-! ## A215465.P14530471088443902359

`(A147586(2*n)-A142585(2*n))/2`
-/

namespace A215465.P14530471088443902359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147586 (2 * n) - A142585 (2 * n) : ℚ) / 2

end

end A215465.P14530471088443902359

namespace A215465

/-- `(A147586(2*n)-A142585(2*n))/2` -/
def P14530471088443902359.Spec : Prop :=
  ∀ n, P14530471088443902359.a n = (A215465 n : ℚ)

end A215465

/-! ## A215465.P16667939783201301389

`(A071618(2*n)-A245968(2*n))/2`
-/

namespace A215465.P16667939783201301389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071618 (2 * n) - A245968 (2 * n) : ℚ) / 2

end

end A215465.P16667939783201301389

namespace A215465

/-- `(A071618(2*n)-A245968(2*n))/2` -/
def P16667939783201301389.Spec : Prop :=
  ∀ n, P16667939783201301389.a n = (A215465 n : ℚ)

end A215465

/-! ## A215465.P10112945839470227105

`(A059512(2*n)+A056014(2*n+1))/2`
-/

namespace A215465.P10112945839470227105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059512 (2 * n) + A056014 (2 * n + 1) : ℚ) / 2

end

end A215465.P10112945839470227105

namespace A215465

/-- `(A059512(2*n)+A056014(2*n+1))/2` -/
def P10112945839470227105.Spec : Prop :=
  ∀ n, P10112945839470227105.a n = (A215465 n : ℚ)

end A215465

/-!
# A215466: Expansion of x*(1-4*x+x^2) / ( (x^2-7*x+1)*(x^2-3*x+1) ).

The programs for A215466, the canonical program `A215466.P14723051458314884524` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215466 has offset 0).

The definition of A215466 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-4x^2+x^3)/(1-10x+23x^2-10x^3+x^4))` (program `A215466.P14723051458314884524`, by `A215466.P14723051458314884524.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215466.P14723051458314884524

`ogf((x-4x^2+x^3)/(1-10x+23x^2-10x^3+x^4))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215466

/-- `ogf((x-4x^2+x^3)/(1-10x+23x^2-10x^3+x^4))` -/
def P14723051458314884524.Spec : Prop :=
  ∀ n, P14723051458314884524.a n = A215466 n

theorem P14723051458314884524.correct : P14723051458314884524.Spec := by
  intro n
  simp only [A215466]

end A215466

/-! ## A215466.P18177477752085729139

`10*a(n-1)-23*a(n-2)+10*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=38`
-/

namespace A215466.P18177477752085729139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6, 38] fun n a =>
  10 * a (n - 1) - 23 * a (n - 2) + 10 * a (n - 3) - a (n - 4)

end

end A215466.P18177477752085729139

namespace A215466

/-- `10*a(n-1)-23*a(n-2)+10*a(n-3)-a(n-4)` -/
def P18177477752085729139.Spec : Prop :=
  ∀ n, P18177477752085729139.a n = A215466 n

end A215466

/-! ## A215466.P18284422663168699001

`1/4*(A001906(n)+A033888(n))`
-/

namespace A215466.P18284422663168699001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A001906 n + A033888 n : ℚ)

end

end A215466.P18284422663168699001

namespace A215466

/-- `1/4*(A001906(n)+A033888(n))` -/
def P18284422663168699001.Spec : Prop :=
  ∀ n, P18284422663168699001.a n = (A215466 n : ℚ)

end A215466

/-! ## A215466.P2120172841178224960

`3*A004187(n)/4+A001906(n)/4`
-/

namespace A215466.P2120172841178224960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A004187 n : ℚ) / 4 + (A001906 n : ℚ) / 4

end

end A215466.P2120172841178224960

namespace A215466

/-- `3*A004187(n)/4+A001906(n)/4` -/
def P2120172841178224960.Spec : Prop :=
  ∀ n, P2120172841178224960.a n = (A215466 n : ℚ)

end A215466

/-! ## A215466.P14436424255205466923

`A049601(2*n)/2`
-/

namespace A215466.P14436424255205466923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049601 (2 * n) : ℚ) / 2

end

end A215466.P14436424255205466923

namespace A215466

/-- `A049601(2*n)/2` -/
def P14436424255205466923.Spec : Prop :=
  ∀ n, P14436424255205466923.a n = (A215466 n : ℚ)

end A215466

/-! ## A215466.P13251253732757058981

`(A033888(n)+A001906(n))/4`
-/

namespace A215466.P13251253732757058981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033888 n + A001906 n : ℚ) / 4

end

end A215466.P13251253732757058981

namespace A215466

/-- `(A033888(n)+A001906(n))/4` -/
def P13251253732757058981.Spec : Prop :=
  ∀ n, P13251253732757058981.a n = (A215466 n : ℚ)

end A215466

/-! ## A215466.P8270156505008585832

`A293553(2*n)+A293553(4*n)`
-/

namespace A215466.P8270156505008585832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293553 (2 * n) + A293553 (4 * n)

end

end A215466.P8270156505008585832

namespace A215466

/-- `A293553(2*n)+A293553(4*n)` -/
def P8270156505008585832.Spec : Prop :=
  ∀ n, P8270156505008585832.a n = A215466 n

end A215466

/-! ## A215466.P9440815019076719977

`(A001906(n)+A000045(4*n))/4`
-/

namespace A215466.P9440815019076719977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001906 n + A000045 (4 * n) : ℚ) / 4

end

end A215466.P9440815019076719977

namespace A215466

/-- `(A001906(n)+A000045(4*n))/4` -/
def P9440815019076719977.Spec : Prop :=
  ∀ n, P9440815019076719977.a n = (A215466 n : ℚ)

end A215466

/-! ## A215466.P6814331598419492640

`(A049602(2*n)+A000045(2*n))/2`
-/

namespace A215466.P6814331598419492640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049602 (2 * n) + A000045 (2 * n) : ℚ) / 2

end

end A215466.P6814331598419492640

namespace A215466

/-- `(A049602(2*n)+A000045(2*n))/2` -/
def P6814331598419492640.Spec : Prop :=
  ∀ n, P6814331598419492640.a n = (A215466 n : ℚ)

end A215466

/-! ## A215466.P3581803005317022796

`(A094292(2*n)+A000045(2*n))/2`
-/

namespace A215466.P3581803005317022796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094292 (2 * n) + A000045 (2 * n) : ℚ) / 2

end

end A215466.P3581803005317022796

namespace A215466

/-- `(A094292(2*n)+A000045(2*n))/2` -/
def P3581803005317022796.Spec : Prop :=
  ∀ n, P3581803005317022796.a n = (A215466 n : ℚ)

end A215466

/-! ## A215466.P4884613800840126048

`(A001906(2*n)-A049602(2*n))/2`
-/

namespace A215466.P4884613800840126048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001906 (2 * n) - A049602 (2 * n) : ℚ) / 2

end

end A215466.P4884613800840126048

namespace A215466

/-- `(A001906(2*n)-A049602(2*n))/2` -/
def P4884613800840126048.Spec : Prop :=
  ∀ n, P4884613800840126048.a n = (A215466 n : ℚ)

end A215466

/-! ## A215466.P2615689570625033600

`(A001654(2*n)-A191797(2*n))/2`
-/

namespace A215466.P2615689570625033600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001654 (2 * n) - A191797 (2 * n) : ℚ) / 2

end

end A215466.P2615689570625033600

namespace A215466

/-- `(A001654(2*n)-A191797(2*n))/2` -/
def P2615689570625033600.Spec : Prop :=
  ∀ n, P2615689570625033600.a n = (A215466 n : ℚ)

end A215466

/-! ## A215466.P15500184716711197208

`1/4*(A000045(2*n)+A000045(4*n))`
-/

namespace A215466.P15500184716711197208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A000045 (2 * n) + A000045 (4 * n) : ℚ)

end

end A215466.P15500184716711197208

namespace A215466

/-- `1/4*(A000045(2*n)+A000045(4*n))` -/
def P15500184716711197208.Spec : Prop :=
  ∀ n, P15500184716711197208.a n = (A215466 n : ℚ)

end A215466

/-! ## A215466.P2832434331065502194

`A001076(n)+A049681(n)*A094292(n)`
-/

namespace A215466.P2832434331065502194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 n + A049681 n * A094292 n

end

end A215466.P2832434331065502194

namespace A215466

/-- `A001076(n)+A049681(n)*A094292(n)` -/
def P2832434331065502194.Spec : Prop :=
  ∀ n, P2832434331065502194.a n = A215466 n

end A215466

/-! ## A215466.P4213899802163633452

`A293552(2*n)+A293552(4*n+2)-A293552(4*n+1)`
-/

namespace A215466.P4213899802163633452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293552 (2 * n) + (A293552 (4 * n + 2) - A293552 (4 * n + 1))

end

end A215466.P4213899802163633452

namespace A215466

/-- `A293552(2*n)+A293552(4*n+2)-A293552(4*n+1)` -/
def P4213899802163633452.Spec : Prop :=
  ∀ n, P4213899802163633452.a n = A215466 n

end A215466

/-! ## A215466.P16612066307539206287

`(A164267(2*n+1)-A122367(2*n))/2`
-/

namespace A215466.P16612066307539206287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164267 (2 * n + 1) - A122367 (2 * n) : ℚ) / 2

end

end A215466.P16612066307539206287

namespace A215466

/-- `(A164267(2*n+1)-A122367(2*n))/2` -/
def P16612066307539206287.Spec : Prop :=
  ∀ n, P16612066307539206287.a n = (A215466 n : ℚ)

end A215466

/-! ## A215466.P15612258168695329754

`(A051450(2*n+1)-A059512(2*n+1))/2`
-/

namespace A215466.P15612258168695329754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051450 (2 * n + 1) - A059512 (2 * n + 1) : ℚ) / 2

end

end A215466.P15612258168695329754

namespace A215466

/-- `(A051450(2*n+1)-A059512(2*n+1))/2` -/
def P15612258168695329754.Spec : Prop :=
  ∀ n, P15612258168695329754.a n = (A215466 n : ℚ)

end A215466

/-! ## A215466.P9113038680731660244

`(A164267(2*n+1)-A001519(2*n+1))/2`
-/

namespace A215466.P9113038680731660244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164267 (2 * n + 1) - A001519 (2 * n + 1) : ℚ) / 2

end

end A215466.P9113038680731660244

namespace A215466

/-- `(A164267(2*n+1)-A001519(2*n+1))/2` -/
def P9113038680731660244.Spec : Prop :=
  ∀ n, P9113038680731660244.a n = (A215466 n : ℚ)

end A215466

/-!
# A215467: Length of longest palindromic prefix of (n base 2).

The programs for A215467, there is no canonical definition to state claims against.
-/

/-! ## A215467.P15484878724863648263

`A070939(A330717(n))`
-/

namespace A215467.P15484878724863648263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A330717 n).toNat

end

end A215467.P15484878724863648263

/-! ## A215467.P4219607542451801104

`A050430(or(1, A330717(n)))`
-/

namespace A215467.P4219607542451801104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050430 (Int.lor 1 (A330717 n)).toNat

end

end A215467.P4219607542451801104

/-! ## A215467.P6949453720871485195

`A070940(or(1, A330717(n)))`
-/

namespace A215467.P6949453720871485195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (Int.lor 1 (A330717 n)).toNat

end

end A215467.P6949453720871485195

/-! ## A215467.P16956808784130703068

`A070940(A330717(A028310(n)))`
-/

namespace A215467.P16956808784130703068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (A330717 (A028310 n).toNat).toNat

end

end A215467.P16956808784130703068

/-! ## A215467.P5706965991757683508

`A054725(A062383(A330717(n)%A027691(n)))`
-/

namespace A215467.P5706965991757683508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (A062383 (Int.tmod (A330717 n) (A027691 n)).toNat).toNat

end

end A215467.P5706965991757683508

/-! ## A215467.P3927881027125288853

`A070940(A330717(A008574(n)))`
-/

namespace A215467.P3927881027125288853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (A330717 (A008574 n).toNat).toNat

end

end A215467.P3927881027125288853

/-! ## A215467.P17806619978446265791

`A000523(2*A330717(A008574(n)))`
-/

namespace A215467.P17806619978446265791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * A330717 (A008574 n).toNat).toNat

end

end A215467.P17806619978446265791

/-! ## A215467.P16763657942557218360

`A144079(or(1, A330717(n)))`
-/

namespace A215467.P16763657942557218360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144079 (Int.lor 1 (A330717 n)).toNat

end

end A215467.P16763657942557218360

/-!
# A215469: a(n) = A215467(2n+1).

The programs for A215469, there is no canonical definition to state claims against.
-/

/-! ## A215469.P14807740510483878388

`A215467(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A215469.P14807740510483878388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215467 (2 * n + 1)

end

end A215469.P14807740510483878388

/-! ## A215469.P15334161708898419666

`dr(A215467(comp[2*n]))`
-/

namespace A215469.P15334161708898419666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A215467 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A215469.P15334161708898419666

/-! ## A215469.P11764618600450742510

`A070939(A330717(Δ[n²]))`
-/

namespace A215469.P11764618600450742510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A330717 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A215469.P11764618600450742510

/-! ## A215469.P358172110357937201

`A050430(A330717(2*n+1))`
-/

namespace A215469.P358172110357937201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050430 (A330717 (2 * n + 1)).toNat

end

end A215469.P358172110357937201

/-! ## A215469.P4936644631806557107

`A000027(A215467(comp[2*(n-1)]))`
-/

namespace A215469.P4936644631806557107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A215467 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A215469.P4936644631806557107

/-! ## A215469.P842173566202757252

`A029837(A330717(2*n+1)+1)`
-/

namespace A215469.P842173566202757252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A330717 (2 * n + 1) + 1).toNat

end

end A215469.P842173566202757252

/-! ## A215469.P8344920249449515918

`A070939(A330717(2*n+1)-1)`
-/

namespace A215469.P8344920249449515918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A330717 (2 * n + 1) - 1).toNat

end

end A215469.P8344920249449515918

/-! ## A215469.P6647425417355284702

`A000523(2*A330717(2*n+1))`
-/

namespace A215469.P6647425417355284702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * A330717 (2 * n + 1)).toNat

end

end A215469.P6647425417355284702

/-! ## A215469.P1345217873294290332

`A070940(2*A330717(2*n+1))`
-/

namespace A215469.P1345217873294290332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (2 * A330717 (2 * n + 1)).toNat

end

end A215469.P1345217873294290332

/-! ## A215469.P11708086328246058486

`A193159(A193159(A215467(n+1+n)))`
-/

namespace A215469.P11708086328246058486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193159 (A193159 (A215467 (n + 1 + n)).toNat).toNat

end

end A215469.P11708086328246058486

/-!
# A215470: Prime intersections in a square spiral with positive integers: primes p such that there are four primes among eight nearest neighbors of p.

The programs for A215470, there is no canonical definition to state claims against.
-/

/-! ## A215470.P4115859048706707250

`p?[A383596(n+1)]`
-/

namespace A215470.P4115859048706707250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215470.P4115859048706707250

/-! ## A215470.P16940401714500121416

`∩[A003627(n+1), A383596(n+1)]`
-/

namespace A215470.P16940401714500121416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215470.P16940401714500121416

/-! ## A215470.P2888450999526668897

`∩[A042988(n), A383596(n+1)]`
-/

namespace A215470.P2888450999526668897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215470.P2888450999526668897

/-! ## A215470.P17413736823817773371

`filter[A383596(n+1), A010051(#)]`
-/

namespace A215470.P17413736823817773371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A215470.P17413736823817773371

/-! ## A215470.P7974163463998339879

`filter[A383596(n+1), A069513(#)]`
-/

namespace A215470.P7974163463998339879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A215470.P7974163463998339879

/-!
# A215472: Expansion of (psi(x) * phi(-x)^4)^2 in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A215472, there is no canonical definition to state claims against.
-/

/-! ## A215472.P6722728878352270609

`(-1)^n*A209942(n)`
-/

namespace A215472.P6722728878352270609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A209942 n

end

end A215472.P6722728878352270609

/-! ## A215472.P10947471549434299659

`A030212(4*n+1)`
-/

namespace A215472.P10947471549434299659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030212 (4 * n + 1)

end

end A215472.P10947471549434299659

/-! ## A215472.P8400495645989599419

`A209942(n)/A033999(n)`
-/

namespace A215472.P8400495645989599419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209942 n : ℚ) / (A033999 n : ℚ)

end

end A215472.P8400495645989599419

/-! ## A215472.P12223868895334064452

`A209942(n)/A009001(2*n)`
-/

namespace A215472.P12223868895334064452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209942 n : ℚ) / (A009001 (2 * n) : ℚ)

end

end A215472.P12223868895334064452

/-! ## A215472.P16235065493638950930

`A209942(n)/A105812(n+3)`
-/

namespace A215472.P16235065493638950930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209942 n : ℚ) / (A105812 (n + 3) : ℚ)

end

end A215472.P16235065493638950930

/-! ## A215472.P16321261533897744305

`A209942(n)/A010892(A008486(n))`
-/

namespace A215472.P16321261533897744305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209942 n : ℚ) / (A010892 (A008486 n).toNat : ℚ)

end

end A215472.P16321261533897744305

/-! ## A215472.P16292074843155982663

`A209942(n)/A164942(A000096(n))`
-/

namespace A215472.P16292074843155982663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209942 n : ℚ) / (A164942 (A000096 n).toNat : ℚ)

end

end A215472.P16292074843155982663

/-!
# A215474: Triangle read by rows: number of k-ary n-tuples (a_1,..,a_n) such that the string a_1...a_n is preprime.

The programs for A215474, there is no canonical definition to state claims against.
-/

/-! ## A215474.P1836368463620117211

`A143328(A245300(n)+A004736(n+1))`
-/

namespace A215474.P1836368463620117211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143328 (A245300 n + A004736 (n + 1)).toNat

end

end A215474.P1836368463620117211

/-! ## A215474.P4076738647457022543

`A132284(A267849(n))`
-/

namespace A215474.P4076738647457022543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132284 (A267849 n).toNat

end

end A215474.P4076738647457022543

/-! ## A215474.P10540859435394041532

`A388292(A071949(n))`
-/

namespace A215474.P10540859435394041532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388292 (A071949 n).toNat

end

end A215474.P10540859435394041532

/-! ## A215474.P8999640220920214353

`A307032(A370380(n))`
-/

namespace A215474.P8999640220920214353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307032 (A370380 n).toNat

end

end A215474.P8999640220920214353

/-! ## A215474.P18443122143417558097

`A247431(A054631(n+1))`
-/

namespace A215474.P18443122143417558097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247431 (A054631 (n + 1)).toNat

end

end A215474.P18443122143417558097

/-!
# A215475: Number of n-ary n-tuples (a_1,...,a_n) such that the string a_1...a_n is preprime.

The programs for A215475, there is no canonical definition to state claims against.
-/

/-! ## A215475.P5437576372643703570

`A215474(∑[n+1])`
-/

namespace A215475.P5437576372643703570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215474 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215475.P5437576372643703570

/-! ## A215475.P14471021442974161048

`record[A103452(n)*A215474(n+1)]`
-/

namespace A215475.P14471021442974161048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A215474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215475.P14471021442974161048

/-! ## A215475.P15173783578316295914

`record[A215474(n+1)/A132749(n)]`
-/

namespace A215475.P15173783578316295914
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215474 (n + 1) : ℚ) / (A132749 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215475.P15173783578316295914

/-! ## A215475.P13858278050764088259

`record[A215474(n+1)/A335333(n)]`
-/

namespace A215475.P13858278050764088259
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215474 (n + 1) : ℚ) / (A335333 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215475.P13858278050764088259

/-! ## A215475.P5812525715845495314

`record[A215474(n+1)/A074909(n+1)]`
-/

namespace A215475.P5812525715845495314
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215474 (n + 1) : ℚ) / (A074909 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215475.P5812525715845495314

/-! ## A215475.P17442779042102235792

`record[gcd(A074650(n+1), A215474(n+1))]`
-/

namespace A215475.P17442779042102235792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A074650 (n + 1)) (A215474 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215475.P17442779042102235792

/-!
# A215477: Semiprimes with consecutive (ascending) digits.

The programs for A215477, there is no canonical definition to state claims against.
-/

/-! ## A215477.P3810535960213708943

`∩[A059043(n+1), A118697(n+1)]`
-/

namespace A215477.P3810535960213708943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215477.P3810535960213708943

/-! ## A215477.P837384427509403499

`∩[A118697(n+1), A161760(n+1)]`
-/

namespace A215477.P837384427509403499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215477.P837384427509403499

/-! ## A215477.P11131836297678416102

`filter[A161760(n+1), A064911(#)]`
-/

namespace A215477.P11131836297678416102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A215477.P11131836297678416102

/-! ## A215477.P17348259708841800202

`filter[A161760(n+1), A101040(#)]`
-/

namespace A215477.P17348259708841800202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A215477.P17348259708841800202

/-! ## A215477.P9290149525293038131

`filter[A059043(n+2), A064911(#)]`
-/

namespace A215477.P9290149525293038131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059043 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A215477.P9290149525293038131

/-!
# A215478: Semiprimes with digits in descending order that differ exactly by 1.

The programs for A215478, there is no canonical definition to state claims against.
-/

/-! ## A215478.P15239035311913710065

`∩[A118697(n+1), A158699(n)]`
-/

namespace A215478.P15239035311913710065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158699 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215478.P15239035311913710065

/-! ## A215478.P2808324910669011065

`∩[A235108(n+1), A158699(n)]`
-/

namespace A215478.P2808324910669011065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158699 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215478.P2808324910669011065

/-! ## A215478.P9616645370991522329

`∩[A009995(n+1), A118697(n+1)]`
-/

namespace A215478.P9616645370991522329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215478.P9616645370991522329

/-! ## A215478.P13033894736224935222

`∩[A032981(n+1), A235108(n+1)]`
-/

namespace A215478.P13033894736224935222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215478.P13033894736224935222

/-! ## A215478.P4279087796304670823

`∩[A033075(n+1), A235108(n+1)]`
-/

namespace A215478.P4279087796304670823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215478.P4279087796304670823

/-!
# A215480: Characteristic function of numbers n with exactly two distinct prime factors.

The programs for A215480, the canonical program `A215480.P17421984776920031326` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215480 has offset 1).

The definition of A215480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215480.P15172689951336722054

`char[eq[2, ∑{p}[n+1, gcd(n, #)]]]`
-/

namespace A215480.P15172689951336722054
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.gcd n p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A215480.P15172689951336722054

namespace A215480

/-- `char[eq[2, ∑{p}[n+1, gcd(n, #)]]]` -/
def P15172689951336722054.Spec : Prop :=
  ∀ n, (P15172689951336722054.a n : ℤ) = A215480 (n + 1)

end A215480

/-! ## A215480.P17421984776920031326

`val(A105561(n+1), 3)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215480

/-- `val(A105561(n+1), 3)` -/
def P17421984776920031326.Spec : Prop :=
  ∀ n, (P17421984776920031326.a n : ℤ) = A215480 (n + 1)

theorem P17421984776920031326.correct : P17421984776920031326.Spec := by
  intro n
  simp only [A215480, Nat.add_sub_cancel]

end A215480

/-! ## A215480.P3576331242505551929

`A064911(∏{p}[n+1, #])`
-/

namespace A215480.P3576331242505551929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A215480.P3576331242505551929

namespace A215480

/-- `A064911(∏{p}[n+1, #])` -/
def P3576331242505551929.Spec : Prop :=
  ∀ n, P3576331242505551929.a n = A215480 (n + 1)

end A215480

/-! ## A215480.P11373886496433788551

`A280710(∏{p}[n+1, #])`
-/

namespace A215480.P11373886496433788551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A215480.P11373886496433788551

namespace A215480

/-- `A280710(∏{p}[n+1, #])` -/
def P11373886496433788551.Spec : Prop :=
  ∀ n, P11373886496433788551.a n = A215480 (n + 1)

end A215480

/-! ## A215480.P1407654817069388715

`char[A007774(n+1)-1]`
-/

namespace A215480.P1407654817069388715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A215480.P1407654817069388715

namespace A215480

/-- `char[A007774(n+1)-1]` -/
def P1407654817069388715.Spec : Prop :=
  ∀ n, (P1407654817069388715.a n : ℤ) = A215480 (n + 1)

end A215480

/-! ## A215480.P15279815082768137164

`char[eq[1, A079275(n+1)]]`
-/

namespace A215480.P15279815082768137164
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079275 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A215480.P15279815082768137164

namespace A215480

/-- `char[eq[1, A079275(n+1)]]` -/
def P15279815082768137164.Spec : Prop :=
  ∀ n, (P15279815082768137164.a n : ℤ) = A215480 (n + 1)

end A215480

/-! ## A215480.P14703841850980683771

`char[eq[2, A001221(n+1)]]`
-/

namespace A215480.P14703841850980683771
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A215480.P14703841850980683771

namespace A215480

/-- `char[eq[2, A001221(n+1)]]` -/
def P14703841850980683771.Spec : Prop :=
  ∀ n, (P14703841850980683771.a n : ℤ) = A215480 (n + 1)

end A215480

/-! ## A215480.P15667974629964370919

`char[eq[2, A087624(n+1)]]`
-/

namespace A215480.P15667974629964370919
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A215480.P15667974629964370919

namespace A215480

/-- `char[eq[2, A087624(n+1)]]` -/
def P15667974629964370919.Spec : Prop :=
  ∀ n, (P15667974629964370919.a n : ℤ) = A215480 (n + 1)

end A215480

/-! ## A215480.P5866904319326930098

`char[eq[4, A034444(n+1)]]`
-/

namespace A215480.P5866904319326930098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A215480.P5866904319326930098

namespace A215480

/-- `char[eq[4, A034444(n+1)]]` -/
def P5866904319326930098.Spec : Prop :=
  ∀ n, (P5866904319326930098.a n : ℤ) = A215480 (n + 1)

end A215480

/-! ## A215480.P12550492504019978960

`and(2, A007875(n+1))/2`
-/

namespace A215480.P12550492504019978960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A007875 (n + 1)) : ℚ) / 2

end

end A215480.P12550492504019978960

namespace A215480

/-- `and(2, A007875(n+1))/2` -/
def P12550492504019978960.Spec : Prop :=
  ∀ n, P12550492504019978960.a n = (A215480 (n + 1) : ℚ)

end A215480

/-! ## A215480.P6499878996263337378

`val(A229109(n+1), n+3)`
-/

namespace A215480.P6499878996263337378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A229109 (n + 1)).toNat (n + 3)

end

end A215480.P6499878996263337378

namespace A215480

/-- `val(A229109(n+1), n+3)` -/
def P6499878996263337378.Spec : Prop :=
  ∀ n, (P6499878996263337378.a n : ℤ) = A215480 (n + 1)

end A215480

/-! ## A215480.P2541433288448291984

`val(A329717(n+1), n+3)`
-/

namespace A215480.P2541433288448291984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A329717 (n + 1)).toNat (n + 3)

end

end A215480.P2541433288448291984

namespace A215480

/-- `val(A329717(n+1), n+3)` -/
def P2541433288448291984.Spec : Prop :=
  ∀ n, (P2541433288448291984.a n : ℤ) = A215480 (n + 1)

end A215480

/-! ## A215480.P5352104144430835087

`char[eq[2, ∑{p}[n+1, A001222(#)]]]`
-/

namespace A215480.P5352104144430835087
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), A001222 p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A215480.P5352104144430835087

namespace A215480

/-- `char[eq[2, ∑{p}[n+1, A001222(#)]]]` -/
def P5352104144430835087.Spec : Prop :=
  ∀ n, (P5352104144430835087.a n : ℤ) = A215480 (n + 1)

end A215480

/-! ## A215480.P16106107471087998134

`A010051(A007875(n+1))`
-/

namespace A215480.P16106107471087998134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A007875 (n + 1)).toNat

end

end A215480.P16106107471087998134

namespace A215480

/-- `A010051(A007875(n+1))` -/
def P16106107471087998134.Spec : Prop :=
  ∀ n, P16106107471087998134.a n = A215480 (n + 1)

end A215480

/-! ## A215480.P9932649828137402711

`A003982(A034444(n+1))`
-/

namespace A215480.P9932649828137402711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A034444 (n + 1)).toNat

end

end A215480.P9932649828137402711

namespace A215480

/-- `A003982(A034444(n+1))` -/
def P9932649828137402711.Spec : Prop :=
  ∀ n, P9932649828137402711.a n = A215480 (n + 1)

end A215480

/-! ## A215480.P6376275446919565796

`A064911(A007947(n+1))`
-/

namespace A215480.P6376275446919565796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A007947 (n + 1)).toNat

end

end A215480.P6376275446919565796

namespace A215480

/-- `A064911(A007947(n+1))` -/
def P6376275446919565796.Spec : Prop :=
  ∀ n, P6376275446919565796.a n = A215480 (n + 1)

end A215480

/-!
# A215484: a(n) = 21*a(n-2) + 7*a(n-3), with a(0)=a(1)=0, a(2)=9.

The programs for A215484, the canonical program `A215484.P12001122354321972309` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215484 has offset 0).

The definition of A215484 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `21*a(n-2)+7*a(n-3)` (program `A215484.P12001122354321972309`, by `A215484.P12001122354321972309.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215484.P12001122354321972309

`21*a(n-2)+7*a(n-3)` with `a(0)=0, a(1)=0, a(2)=9`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215484

/-- `21*a(n-2)+7*a(n-3)` -/
def P12001122354321972309.Spec : Prop :=
  ∀ n, (P12001122354321972309.a n : ℤ) = A215484 n

theorem P12001122354321972309.correct : P12001122354321972309.Spec := by
  intro n
  simp only [A215484]

end A215484

/-!
# A215485: Periods of square root continued fractions at which A013646 sets a new record.

The programs for A215485, there is no canonical definition to state claims against.
-/

/-! ## A215485.P8540705957604303744

`record[A013646(n)+n]-A215508(n)`
-/

namespace A215485.P8540705957604303744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A215508 n

end

end A215485.P8540705957604303744

/-! ## A215485.P7129002936121074383

`A003285(A215508(n))`
-/

namespace A215485.P7129002936121074383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A215508 n).toNat

end

end A215485.P7129002936121074383

/-! ## A215485.P3539920280030171704

`A003285(record[A013646(n)])`
-/

namespace A215485.P3539920280030171704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215485.P3539920280030171704

/-! ## A215485.P17566036595480956137

`A067280(record[A013646(n)])-1`
-/

namespace A215485.P17566036595480956137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A215485.P17566036595480956137

/-! ## A215485.P7422021313022896868

`A097853(record[A013646(n)])%(2^n)`
-/

namespace A215485.P7422021313022896868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097853 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (2 ^ n : ℤ)

end

end A215485.P7422021313022896868

/-!
# A215486: n - 1 mod phi(n), where phi(n) is Euler's totient function.

The programs for A215486, the canonical program `A215486.P7044214570068286235` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215486 has offset 1).

The definition of A215486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215486.P7044214570068286235

`n%((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215486

/-- `n%((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P7044214570068286235.Spec : Prop :=
  ∀ n, P7044214570068286235.a n = A215486 (n + 1)

theorem P7044214570068286235.correct : P7044214570068286235.Spec := by
  intro n
  simp only [A215486, Nat.add_sub_cancel]

end A215486

/-! ## A215486.P3629459627977981496

`n%Δ[A002088(n)]`
-/

namespace A215486.P3629459627977981496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (f1 (n + 1) - f1 n)

end

end A215486.P3629459627977981496

namespace A215486

/-- `n%Δ[A002088(n)]` -/
def P3629459627977981496.Spec : Prop :=
  ∀ n, P3629459627977981496.a n = A215486 (n + 1)

end A215486

/-! ## A215486.P4363640066963409704

`abs(-n%A000010(n+1))`
-/

namespace A215486.P4363640066963409704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (-(n : ℤ)) (A000010 (n + 1))|

end

end A215486.P4363640066963409704

namespace A215486

/-- `abs(-n%A000010(n+1))` -/
def P4363640066963409704.Spec : Prop :=
  ∀ n, P4363640066963409704.a n = A215486 (n + 1)

end A215486

/-! ## A215486.P18318153862598267728

`(char[1]+n)%A000010(ceil(sqrt(n²+4)))`
-/

namespace A215486.P18318153862598267728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((if ∃ j, f1 j = n then 1 else 0) + n : ℕ) : ℤ) (A000010 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat)

end

end A215486.P18318153862598267728

namespace A215486

/-- `(char[1]+n)%A000010(ceil(sqrt(n²+4)))` -/
def P18318153862598267728.Spec : Prop :=
  ∀ n, P18318153862598267728.a n = A215486 (n + 1)

end A215486

/-! ## A215486.P11863873732421962102

`A028310(n)%Δ[A005728(n)]`
-/

namespace A215486.P11863873732421962102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n) (f1 (n + 1) - f1 n)

end

end A215486.P11863873732421962102

namespace A215486

/-- `A028310(n)%Δ[A005728(n)]` -/
def P11863873732421962102.Spec : Prop :=
  ∀ n, P11863873732421962102.a n = A215486 (n + 1)

end A215486

/-! ## A215486.P6738708940811988869

`A254667(n)%Δ[A005728(n)]`
-/

namespace A215486.P6738708940811988869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254667 n) (f1 (n + 1) - f1 n)

end

end A215486.P6738708940811988869

namespace A215486

/-- `A254667(n)%Δ[A005728(n)]` -/
def P6738708940811988869.Spec : Prop :=
  ∀ n, P6738708940811988869.a n = A215486 (n + 1)

end A215486

/-! ## A215486.P7496598989661746315

`A016035(n+1)%Δ[A005728(n)]`
-/

namespace A215486.P7496598989661746315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016035 (n + 1)) (f1 (n + 1) - f1 n)

end

end A215486.P7496598989661746315

namespace A215486

/-- `A016035(n+1)%Δ[A005728(n)]` -/
def P7496598989661746315.Spec : Prop :=
  ∀ n, P7496598989661746315.a n = A215486 (n + 1)

end A215486

/-! ## A215486.P17009986951171647185

`(A000007(n)+n)%(A039649(n+1)-1)`
-/

namespace A215486.P17009986951171647185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000007 n + (n : ℤ)) (A039649 (n + 1) - 1)

end

end A215486.P17009986951171647185

namespace A215486

/-- `(A000007(n)+n)%(A039649(n+1)-1)` -/
def P17009986951171647185.Spec : Prop :=
  ∀ n, P17009986951171647185.a n = A215486 (n + 1)

end A215486

/-! ## A215486.P15869185179439850449

`A004526(A005408(n)%A140434(n+1))`
-/

namespace A215486.P15869185179439850449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod (A005408 n) (A140434 (n + 1))).toNat

end

end A215486.P15869185179439850449

namespace A215486

/-- `A004526(A005408(n)%A140434(n+1))` -/
def P15869185179439850449.Spec : Prop :=
  ∀ n, P15869185179439850449.a n = A215486 (n + 1)

end A215486

/-! ## A215486.P12249992090761176488

`A004525(A005843(n)%A140434(n+1))`
-/

namespace A215486.P12249992090761176488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.tmod (A005843 n) (A140434 (n + 1))).toNat

end

end A215486.P12249992090761176488

namespace A215486

/-- `A004525(A005843(n)%A140434(n+1))` -/
def P12249992090761176488.Spec : Prop :=
  ∀ n, P12249992090761176488.a n = A215486 (n + 1)

end A215486

/-! ## A215486.P11932652254074318598

`A002264(A008585(n)%A200905(n+1))`
-/

namespace A215486.P11932652254074318598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.tmod (A008585 n) (A200905 (n + 1))).toNat

end

end A215486.P11932652254074318598

namespace A215486

/-- `A002264(A008585(n)%A200905(n+1))` -/
def P11932652254074318598.Spec : Prop :=
  ∀ n, P11932652254074318598.a n = A215486 (n + 1)

end A215486

/-! ## A215486.P5793360488081213342

`A002265(A008574(n)%A002246(n+1))`
-/

namespace A215486.P5793360488081213342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.tmod (A008574 n) (A002246 (n + 1))).toNat

end

end A215486.P5793360488081213342

namespace A215486

/-- `A002265(A008574(n)%A002246(n+1))` -/
def P5793360488081213342.Spec : Prop :=
  ∀ n, P5793360488081213342.a n = A215486 (n + 1)

end A215486

/-! ## A215486.P11130471172440489158

`A004526(A005843(n))%Δ[A005728(n)]`
-/

namespace A215486.P11130471172440489158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004526 (A005843 n).toNat) (f1 (n + 1) - f1 n)

end

end A215486.P11130471172440489158

namespace A215486

/-- `A004526(A005843(n))%Δ[A005728(n)]` -/
def P11130471172440489158.Spec : Prop :=
  ∀ n, P11130471172440489158.a n = A215486 (n + 1)

end A215486

/-! ## A215486.P10080589525359035975

`A110655(4*n)%Δ[A005728(n)]`
-/

namespace A215486.P10080589525359035975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110655 (4 * n)) (f1 (n + 1) - f1 n)

end

end A215486.P10080589525359035975

namespace A215486

/-- `A110655(4*n)%Δ[A005728(n)]` -/
def P10080589525359035975.Spec : Prop :=
  ∀ n, P10080589525359035975.a n = A215486 (n + 1)

end A215486

/-! ## A215486.P828107348845910756

`A233583(n+1)%Δ[A005728(n)]`
-/

namespace A215486.P828107348845910756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (n + 1)) (f1 (n + 1) - f1 n)

end

end A215486.P828107348845910756

namespace A215486

/-- `A233583(n+1)%Δ[A005728(n)]` -/
def P828107348845910756.Spec : Prop :=
  ∀ n, P828107348845910756.a n = A215486 (n + 1)

end A215486

/-! ## A215486.P8458336640466090905

`A110654(A005843(n))%Δ[A225531(n)]`
-/

namespace A215486.P8458336640466090905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110654 (A005843 n).toNat) (f1 (n + 1) - f1 n)

end

end A215486.P8458336640466090905

namespace A215486

/-- `A110654(A005843(n))%Δ[A225531(n)]` -/
def P8458336640466090905.Spec : Prop :=
  ∀ n, P8458336640466090905.a n = A215486 (n + 1)

end A215486

/-! ## A215486.P11870620519103595915

`A007318(A000124(n))%(A109606(n+1)+1)`
-/

namespace A215486.P11870620519103595915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (A000124 n).toNat) (A109606 (n + 1) + 1)

end

end A215486.P11870620519103595915

namespace A215486

/-- `A007318(A000124(n))%(A109606(n+1)+1)` -/
def P11870620519103595915.Spec : Prop :=
  ∀ n, P11870620519103595915.a n = A215486 (n + 1)

end A215486

/-! ## A215486.P3368529232063522239

`(A000027(n+1)-1)%A282634(∑[n]+1)`
-/

namespace A215486.P3368529232063522239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1) - 1) (A282634 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A215486.P3368529232063522239

namespace A215486

/-- `(A000027(n+1)-1)%A282634(∑[n]+1)` -/
def P3368529232063522239.Spec : Prop :=
  ∀ n, P3368529232063522239.a n = A215486 (n + 1)

end A215486

/-!
# A215487: Numbers k such that (7^k - 2^k)/5 is prime.

The programs for A215487, there is no canonical definition to state claims against.
-/

/-! ## A215487.P4850134732417520671

`p?[or(3, Δ[A097597(n+2)])]`
-/

namespace A215487.P4850134732417520671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097597 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215487.P4850134732417520671

/-!
# A215488: a(0)=1, a(n) = a(n-1) + a(2*n AND n), where AND is the bitwise AND operator.

The programs for A215488, the canonical program `A215488.P972422788858619401` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215488 has offset 0).

The definition of A215488 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215488.P972422788858619401

`a(n-1)+a(and(n, 2*n))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215488

/-- `a(n-1)+a(and(n, 2*n))` -/
def P972422788858619401.Spec : Prop :=
  ∀ n, (P972422788858619401.a n : ℤ) = A215488 n

theorem P972422788858619401.correct : P972422788858619401.Spec := by
  intro n
  simp only [A215488]

end A215488

/-! ## A215488.P15906654403571056412

`a(n-1)+a(A213370(n))` with `a(0)=1`
-/

namespace A215488.P15906654403571056412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (A213370 n).toNat

end

end A215488.P15906654403571056412

namespace A215488

/-- `a(n-1)+a(A213370(n))` -/
def P15906654403571056412.Spec : Prop :=
  ∀ n, (P15906654403571056412.a n : ℤ) = A215488 n

end A215488

/-! ## A215488.P10410107732397984928

`a(n-1)+a(2*A048735(n))` with `a(0)=1`
-/

namespace A215488.P10410107732397984928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (2 * A048735 n).toNat

end

end A215488.P10410107732397984928

namespace A215488

/-- `a(n-1)+a(2*A048735(n))` -/
def P10410107732397984928.Spec : Prop :=
  ∀ n, (P10410107732397984928.a n : ℤ) = A215488 n

end A215488

/-! ## A215488.P4970930588003660929

`a(n-1)+a(A048728(n)/2)` with `a(0)=1`
-/

namespace A215488.P4970930588003660929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (SequenceMachineLib.roundAway ((A048728 n : ℚ) / 2)).toNat

end

end A215488.P4970930588003660929

namespace A215488

/-- `a(n-1)+a(A048728(n)/2)` -/
def P4970930588003660929.Spec : Prop :=
  ∀ n, (P4970930588003660929.a n : ℤ) = A215488 n

end A215488

/-! ## A215488.P11736846781183330465

`a(n-1)+a(n-A229763(n))` with `a(0)=1`
-/

namespace A215488.P11736846781183330465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a ((n : ℤ) - A229763 n).toNat

end

end A215488.P11736846781183330465

namespace A215488

/-- `a(n-1)+a(n-A229763(n))` -/
def P11736846781183330465.Spec : Prop :=
  ∀ n, (P11736846781183330465.a n : ℤ) = A215488 n

end A215488

/-! ## A215488.P8297202961786059593

`a(n-1)+a(A025480(A048728(n)))` with `a(0)=1`
-/

namespace A215488.P8297202961786059593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (A025480 (A048728 n).toNat).toNat

end

end A215488.P8297202961786059593

namespace A215488

/-- `a(n-1)+a(A025480(A048728(n)))` -/
def P8297202961786059593.Spec : Prop :=
  ∀ n, (P8297202961786059593.a n : ℤ) = A215488 n

end A215488

/-!
# A215490: Smallest prime k such that (k+p(1)) (k+p(2))...(k+p(n))/(p(n)#) is an integer.

The programs for A215490, there is no canonical definition to state claims against.
-/

/-! ## A215490.P9496812313989889089

`p?[and(A241693(n+9), A241741(n))]`
-/

namespace A215490.P9496812313989889089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A241693 (n + 9)) (A241741 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215490.P9496812313989889089

/-! ## A215490.P11789659281985618004

`or(A079677(n), A104887(A168344(n)))`
-/

namespace A215490.P11789659281985618004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079677 n) (A104887 (A168344 n).toNat)

end

end A215490.P11789659281985618004

/-! ## A215490.P6296131189011906236

`or(A104887(A168344(n)), A193330(n))`
-/

namespace A215490.P6296131189011906236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A104887 (A168344 n).toNat) (A193330 n)

end

end A215490.P6296131189011906236

/-!
# A215491: Smaller members of regular amicable pairs.

The programs for A215491, there is no canonical definition to state claims against.
-/

/-! ## A215491.P9123398290837161647

`A002025(lt[A266972(n+1), A061315(3*n+1)])`
-/

namespace A215491.P9123398290837161647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061315 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002025 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A215491.P9123398290837161647

/-! ## A215491.P15572833352299717857

`A002025(lt[A036263(n+3), A061315(3*n+1)])`
-/

namespace A215491.P15572833352299717857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061315 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002025 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A215491.P15572833352299717857

/-!
# A215492: a(n) = 21*a(n-2) + 7*a(n-3), with a(0)=0, a(1)=3, and a(2)=6.

The programs for A215492, the canonical program `A215492.P1431827167867773271` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215492 has offset 0).

The definition of A215492 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `21*a(n-2)+7*a(n-3)` (program `A215492.P1431827167867773271`, by `A215492.P1431827167867773271.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215492.P1431827167867773271

`21*a(n-2)+7*a(n-3)` with `a(0)=0, a(1)=3, a(2)=6`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215492

/-- `21*a(n-2)+7*a(n-3)` -/
def P1431827167867773271.Spec : Prop :=
  ∀ n, (P1431827167867773271.a n : ℤ) = A215492 n

theorem P1431827167867773271.correct : P1431827167867773271.Spec := by
  intro n
  simp only [A215492]

end A215492

/-! ## A215492.P18275049790629908447

`A036293(3*n)%A008611(A060352(n+1))`
-/

namespace A215492.P18275049790629908447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036293 (3 * n)) (A008611 (A060352 (n + 1)).toNat)

end

end A215492.P18275049790629908447

namespace A215492

/-- `A036293(3*n)%A008611(A060352(n+1))` -/
def P18275049790629908447.Spec : Prop :=
  ∀ n, P18275049790629908447.a n = A215492 n

end A215492

/-!
# A215493: a(n) = 7*a(n-1) - 14*a(n-2) + 7*a(n-3) with a(0)=0, a(1)=1, a(2)=4.

The programs for A215493, the canonical program `A215493.P3913813385355686854` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215493 has offset 0).

The definition of A215493 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-14*a(n-2)+7*a(n-3)` (program `A215493.P3913813385355686854`, by `A215493.P3913813385355686854.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215493.P3913813385355686854

`7*a(n-1)-14*a(n-2)+7*a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215493

/-- `7*a(n-1)-14*a(n-2)+7*a(n-3)` -/
def P3913813385355686854.Spec : Prop :=
  ∀ n, P3913813385355686854.a n = A215493 n

theorem P3913813385355686854.correct : P3913813385355686854.Spec := by
  intro n
  simp only [A215493]

end A215493

/-! ## A215493.P16245360688020974165

`A215008(n)-A217274(log2(A011782(n)))`
-/

namespace A215493.P16245360688020974165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215008 n - A217274 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A215493.P16245360688020974165

namespace A215493

/-- `A215008(n)-A217274(log2(A011782(n)))` -/
def P16245360688020974165.Spec : Prop :=
  ∀ n, P16245360688020974165.a n = A215493 n

end A215493

/-! ## A215493.P9083625608722886862

`A319512(n)-A215143(n)`
-/

namespace A215493.P9083625608722886862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319512 n - A215143 n

end

end A215493.P9083625608722886862

namespace A215493

/-- `A319512(n)-A215143(n)` -/
def P9083625608722886862.Spec : Prop :=
  ∀ n, P9083625608722886862.a n = A215493 n

end A215493

/-! ## A215493.P1995048070302090526

`∑[A122068(n+1)]-A122068(n+1)`
-/

namespace A215493.P1995048070302090526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A122068 (n + 1)

end

end A215493.P1995048070302090526

namespace A215493

/-- `∑[A122068(n+1)]-A122068(n+1)` -/
def P1995048070302090526.Spec : Prop :=
  ∀ n, P1995048070302090526.a n = A215493 n

end A215493

/-! ## A215493.P7473095179376667184

`(A319512(n)+A000007(n))%A215143(n)`
-/

namespace A215493.P7473095179376667184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319512 n + A000007 n) (A215143 n)

end

end A215493.P7473095179376667184

namespace A215493

/-- `(A319512(n)+A000007(n))%A215143(n)` -/
def P7473095179376667184.Spec : Prop :=
  ∀ n, P7473095179376667184.a n = A215493 n

end A215493

/-! ## A215493.P10864591839928953964

`(A319512(n)%A215143(n))%A215007(n)`
-/

namespace A215493.P10864591839928953964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A319512 n) (A215143 n)) (A215007 n)

end

end A215493.P10864591839928953964

namespace A215493

/-- `(A319512(n)%A215143(n))%A215007(n)` -/
def P10864591839928953964.Spec : Prop :=
  ∀ n, P10864591839928953964.a n = A215493 n

end A215493

/-! ## A215493.P15310286867679075405

`Δ[A215008(n)]-(A215143(n)+A215008(n))`
-/

namespace A215493.P15310286867679075405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A215143 n + A215008 n)

end

end A215493.P15310286867679075405

namespace A215493

/-- `Δ[A215008(n)]-(A215143(n)+A215008(n))` -/
def P15310286867679075405.Spec : Prop :=
  ∀ n, P15310286867679075405.a n = A215493 n

end A215493

/-! ## A215493.P7851134071336510965

`A215008(n)-Δ[A215007(n)]%A215007(n)`
-/

namespace A215493.P7851134071336510965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215008 n - Int.tmod (f1 (n + 1) - f1 n) (A215007 n)

end

end A215493.P7851134071336510965

namespace A215493

/-- `A215008(n)-Δ[A215007(n)]%A215007(n)` -/
def P7851134071336510965.Spec : Prop :=
  ∀ n, P7851134071336510965.a n = A215493 n

end A215493

/-! ## A215493.P16838493821186851700

`A215007(n)+A215008(n)-A122068(n+1)`
-/

namespace A215493.P16838493821186851700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215007 n + (A215008 n - A122068 (n + 1))

end

end A215493.P16838493821186851700

namespace A215493

/-- `A215007(n)+A215008(n)-A122068(n+1)` -/
def P16838493821186851700.Spec : Prop :=
  ∀ n, P16838493821186851700.a n = A215493 n

end A215493

/-! ## A215493.P984850914940670665

`A122068(n+1)+A215008(n)-A319512(n)`
-/

namespace A215493.P984850914940670665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122068 (n + 1) + (A215008 n - A319512 n)

end

end A215493.P984850914940670665

namespace A215493

/-- `A122068(n+1)+A215008(n)-A319512(n)` -/
def P984850914940670665.Spec : Prop :=
  ∀ n, P984850914940670665.a n = A215493 n

end A215493

/-!
# A215494: a(n) = 7*a(n-1) - 14*a(n-2) + 7*a(n-3) with a(1)=7, a(2)=21, a(3)=70.

The programs for A215494, the canonical program `A215494.P1120447005150079983` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215494 has offset 1).

The definition of A215494 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-14*a(n-2)+7*a(n-3)` (program `A215494.P1120447005150079983`, by `A215494.P1120447005150079983.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215494.P1120447005150079983

`7*a(n-1)-14*a(n-2)+7*a(n-3)` with `a(0)=7, a(1)=21, a(2)=70`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215494

/-- `7*a(n-1)-14*a(n-2)+7*a(n-3)` -/
def P1120447005150079983.Spec : Prop :=
  ∀ n, P1120447005150079983.a n = A215494 (n + 1)

theorem P1120447005150079983.correct : P1120447005150079983.Spec := by
  intro n
  simp only [A215494, Nat.add_sub_cancel]

end A215494

/-! ## A215494.P7663793600004353689

`abs(A322459(n+1))`
-/

namespace A215494.P7663793600004353689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A322459 (n + 1)|

end

end A215494.P7663793600004353689

namespace A215494

/-- `abs(A322459(n+1))` -/
def P7663793600004353689.Spec : Prop :=
  ∀ n, P7663793600004353689.a n = A215494 (n + 1)

end A215494

/-! ## A215494.P2721763944160543753

`Δ[7*A215493(n)]`
-/

namespace A215494.P2721763944160543753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A215493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215494.P2721763944160543753

namespace A215494

/-- `Δ[7*A215493(n)]` -/
def P2721763944160543753.Spec : Prop :=
  ∀ n, P2721763944160543753.a n = A215494 (n + 1)

end A215494

/-! ## A215494.P8654059904308147471

`7*A122068(n+1)`
-/

namespace A215494.P8654059904308147471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A122068 (n + 1)

end

end A215494.P8654059904308147471

namespace A215494

/-- `7*A122068(n+1)` -/
def P8654059904308147471.Spec : Prop :=
  ∀ n, P8654059904308147471.a n = A215494 (n + 1)

end A215494

/-! ## A215494.P4625928752865609269

`∑[A215493(n+2)]+3`
-/

namespace A215494.P4625928752865609269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215493 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A215494.P4625928752865609269

namespace A215494

/-- `∑[A215493(n+2)]+3` -/
def P4625928752865609269.Spec : Prop :=
  ∀ n, P4625928752865609269.a n = A215494 (n + 1)

end A215494

/-! ## A215494.P17367665266329144489

`Δ[7*(A319512(n)-A215143(n))]`
-/

namespace A215494.P17367665266329144489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A319512 n - A215143 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215494.P17367665266329144489

namespace A215494

/-- `Δ[7*(A319512(n)-A215143(n))]` -/
def P17367665266329144489.Spec : Prop :=
  ∀ n, P17367665266329144489.a n = A215494 (n + 1)

end A215494

/-! ## A215494.P11032801812044359868

`A215007(n+1)+A215143(n)+A122068(n+2)`
-/

namespace A215494.P11032801812044359868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215007 (n + 1) + (A215143 n + A122068 (n + 2))

end

end A215494.P11032801812044359868

namespace A215494

/-- `A215007(n+1)+A215143(n)+A122068(n+2)` -/
def P11032801812044359868.Spec : Prop :=
  ∀ n, P11032801812044359868.a n = A215494 (n + 1)

end A215494

/-! ## A215494.P12525385756560977298

`Δ[A215510(n)]-A094429(n+1)`
-/

namespace A215494.P12525385756560977298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A094429 (n + 1)

end

end A215494.P12525385756560977298

namespace A215494

/-- `Δ[A215510(n)]-A094429(n+1)` -/
def P12525385756560977298.Spec : Prop :=
  ∀ n, P12525385756560977298.a n = A215494 (n + 1)

end A215494

/-! ## A215494.P2480116955061834667

`A215143(n+2)-A094429(n+1)`
-/

namespace A215494.P2480116955061834667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215143 (n + 2) - A094429 (n + 1)

end

end A215494.P2480116955061834667

namespace A215494

/-- `A215143(n+2)-A094429(n+1)` -/
def P2480116955061834667.Spec : Prop :=
  ∀ n, P2480116955061834667.a n = A215494 (n + 1)

end A215494

/-! ## A215494.P9054998213806325633

`A215510(n+1)-(A215510(n)+A094429(n+1))`
-/

namespace A215494.P9054998213806325633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215510 (n + 1) - (A215510 n + A094429 (n + 1))

end

end A215494.P9054998213806325633

namespace A215494

/-- `A215510(n+1)-(A215510(n)+A094429(n+1))` -/
def P9054998213806325633.Spec : Prop :=
  ∀ n, P9054998213806325633.a n = A215494 (n + 1)

end A215494

/-!
# A215495: a(4*n) = a(4*n+2) = a(2*n+1) = 2*n + 1.

The programs for A215495, the canonical program `A215495.P13821582866258601758` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215495 has offset 0).

The definition of A215495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215495.P13821582866258601758

`2*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=3, a(5)=5, a(6)=3, a(7)=7`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215495

/-- `2*a(n-4)-a(n-8)` -/
def P13821582866258601758.Spec : Prop :=
  ∀ n, P13821582866258601758.a n = A215495 n

theorem P13821582866258601758.correct : P13821582866258601758.Spec := by
  intro n
  simp only [A215495]

end A215495

/-! ## A215495.P13215915656954242720

`or(1, gcd(n, ∑[n]))`
-/

namespace A215495.P13215915656954242720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A215495.P13215915656954242720

namespace A215495

/-- `or(1, gcd(n, ∑[n]))` -/
def P13215915656954242720.Spec : Prop :=
  ∀ n, (P13215915656954242720.a n : ℤ) = A215495 n

end A215495

/-! ## A215495.P13711067769977687283

`or(1, lcm(2, n)/2)`
-/

namespace A215495.P13711067769977687283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2))

end

end A215495.P13711067769977687283

namespace A215495

/-- `or(1, lcm(2, n)/2)` -/
def P13711067769977687283.Spec : Prop :=
  ∀ n, P13711067769977687283.a n = A215495 n

end A215495

/-! ## A215495.P7747954181930951958

`or(1, n/gcd(2, n²))`
-/

namespace A215495.P7747954181930951958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 2 (n ^ 2) : ℚ)))

end

end A215495.P7747954181930951958

namespace A215495

/-- `or(1, n/gcd(2, n²))` -/
def P7747954181930951958.Spec : Prop :=
  ∀ n, P7747954181930951958.a n = A215495 n

end A215495

/-! ## A215495.P9381164702748501197

`or(1, n/(2-and(1, n)))`
-/

namespace A215495.P9381164702748501197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((n : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ)))

end

end A215495.P9381164702748501197

namespace A215495

/-- `or(1, n/(2-and(1, n)))` -/
def P9381164702748501197.Spec : Prop :=
  ∀ n, P9381164702748501197.a n = A215495 n

end A215495

/-! ## A215495.P2156598610164807506

`or(1, n/(char[2*n]+1))`
-/

namespace A215495.P2156598610164807506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((n : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ)))

end

end A215495.P2156598610164807506

namespace A215495

/-- `or(1, n/(char[2*n]+1))` -/
def P2156598610164807506.Spec : Prop :=
  ∀ n, P2156598610164807506.a n = A215495 n

end A215495

/-! ## A215495.P4966275033053109189

`2*floor(lcm(6, 3*n)/12)+1`
-/

namespace A215495.P4966275033053109189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(Nat.lcm 6 (3 * n) : ℚ) / 12⌋ + 1

end

end A215495.P4966275033053109189

namespace A215495

/-- `2*floor(lcm(6, 3*n)/12)+1` -/
def P4966275033053109189.Spec : Prop :=
  ∀ n, P4966275033053109189.a n = A215495 n

end A215495

/-! ## A215495.P9708451520802681623

`(n-3)%a(n-2)+3` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A215495.P9708451520802681623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  Int.tmod ((n : ℤ) - 3) (a (n - 2)) + 3

end

end A215495.P9708451520802681623

namespace A215495

/-- `(n-3)%a(n-2)+3` -/
def P9708451520802681623.Spec : Prop :=
  ∀ n, P9708451520802681623.a n = A215495 n

end A215495

/-! ## A215495.P10724538813321481565

`3-(3-n)%a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A215495.P10724538813321481565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  3 - Int.tmod (3 - (n : ℤ)) (a (n - 2))

end

end A215495.P10724538813321481565

namespace A215495

/-- `3-(3-n)%a(n-2)` -/
def P10724538813321481565.Spec : Prop :=
  ∀ n, P10724538813321481565.a n = A215495 n

end A215495

/-! ## A215495.P632467773979294514

`n-a(n-2)*∑[(-1)^n]` with `a(0)=1, a(1)=1`
-/

namespace A215495.P632467773979294514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) - a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215495.P632467773979294514

namespace A215495

/-- `n-a(n-2)*∑[(-1)^n]` -/
def P632467773979294514.Spec : Prop :=
  ∀ n, P632467773979294514.a n = A215495 n

end A215495

/-! ## A215495.P3507648502616427140

`n-and(1, n+1)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A215495.P3507648502616427140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) - (Nat.land 1 (n + 1) : ℤ) * a (n - 2)

end

end A215495.P3507648502616427140

namespace A215495

/-- `n-and(1, n+1)*a(n-2)` -/
def P3507648502616427140.Spec : Prop :=
  ∀ n, P3507648502616427140.a n = A215495 n

end A215495

/-! ## A215495.P7040205566270344309

`n-lcm(and(1, n+1), a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A215495.P7040205566270344309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) - (Int.lcm (Nat.land 1 (n + 1) : ℤ) (a (n - 2)) : ℤ)

end

end A215495.P7040205566270344309

namespace A215495

/-- `n-lcm(and(1, n+1), a(n-2))` -/
def P7040205566270344309.Spec : Prop :=
  ∀ n, P7040205566270344309.a n = A215495 n

end A215495

/-! ## A215495.P8733083952871884875

`n-C(a(n-1), n-1)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A215495.P8733083952871884875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) - (Nat.choose (a (n - 1)).toNat ((n : ℤ) - 1).toNat : ℤ) * a (n - 2)

end

end A215495.P8733083952871884875

namespace A215495

/-- `n-C(a(n-1), n-1)*a(n-2)` -/
def P8733083952871884875.Spec : Prop :=
  ∀ n, P8733083952871884875.a n = A215495 n

end A215495

/-! ## A215495.P4458537036433166851

`n-floor(a(a(n-1)-1)/(n-a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A215495.P4458537036433166851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) - ⌊(a (a (n - 1) - 1).toNat : ℚ) / ((n : ℤ) - a (n - 1) : ℚ)⌋

end

end A215495.P4458537036433166851

namespace A215495

/-- `n-floor(a(a(n-1)-1)/(n-a(n-1)))` -/
def P4458537036433166851.Spec : Prop :=
  ∀ n, P4458537036433166851.a n = A215495 n

end A215495

/-! ## A215495.P13023789605558724540

`A109613(gcd(n, ∑[n]))`
-/

namespace A215495.P13023789605558724540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A215495.P13023789605558724540

namespace A215495

/-- `A109613(gcd(n, ∑[n]))` -/
def P13023789605558724540.Spec : Prop :=
  ∀ n, P13023789605558724540.a n = A215495 n

end A215495

/-! ## A215495.P8501902992074740226

`2*A130722(n)+1`
-/

namespace A215495.P8501902992074740226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130722 n + 1

end

end A215495.P8501902992074740226

namespace A215495

/-- `2*A130722(n)+1` -/
def P8501902992074740226.Spec : Prop :=
  ∀ n, P8501902992074740226.a n = A215495 n

end A215495

/-! ## A215495.P9760686918986679340

`2*A178804(n+1)-1`
-/

namespace A215495.P9760686918986679340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178804 (n + 1) - 1

end

end A215495.P9760686918986679340

namespace A215495

/-- `2*A178804(n+1)-1` -/
def P9760686918986679340.Spec : Prop :=
  ∀ n, P9760686918986679340.a n = A215495 n

end A215495

/-! ## A215495.P15153200642991391218

`A109613(A026741(n))`
-/

namespace A215495.P15153200642991391218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A026741 n).toNat

end

end A215495.P15153200642991391218

namespace A215495

/-- `A109613(A026741(n))` -/
def P15153200642991391218.Spec : Prop :=
  ∀ n, P15153200642991391218.a n = A215495 n

end A215495

/-! ## A215495.P4524195049477613288

`A109613(A029578(n))`
-/

namespace A215495.P4524195049477613288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A029578 n).toNat

end

end A215495.P4524195049477613288

namespace A215495

/-- `A109613(A029578(n))` -/
def P4524195049477613288.Spec : Prop :=
  ∀ n, P4524195049477613288.a n = A215495 n

end A215495

/-! ## A215495.P11825943596132804282

`A029579(A283971(n))`
-/

namespace A215495.P11825943596132804282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A283971 n).toNat

end

end A215495.P11825943596132804282

namespace A215495

/-- `A029579(A283971(n))` -/
def P11825943596132804282.Spec : Prop :=
  ∀ n, P11825943596132804282.a n = A215495 n

end A215495

