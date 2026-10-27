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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B005.C002
import Seq.B006.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A227200: a(n) = a(n-1) + a(n-2) - 2^(n-1) with a(0)=a(2)=0, a(1)=-a(3)=1, a(4)=-5.

The programs for A227200, the canonical program `A227200.P9264526407839763535` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227200 has offset 0).

The definition of A227200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227200.P9264526407839763535

`A000032(n+1)-2^n`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A227200

/-- `A000032(n+1)-2^n` -/
def P9264526407839763535.Spec : Prop :=
  ∀ n, P9264526407839763535.a n = A227200 n

theorem P9264526407839763535.correct : P9264526407839763535.Spec := by
  intro n
  simp only [A227200]

end A227200

/-! ## A227200.P4322033942830445068

`A000045(n)+A000045(n+2)-2^n`
-/

namespace A227200.P4322033942830445068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + A000045 (n + 2) - (2 ^ n : ℤ)

end

end A227200.P4322033942830445068

namespace A227200

/-- `A000045(n)+A000045(n+2)-2^n` -/
def P4322033942830445068.Spec : Prop :=
  ∀ n, P4322033942830445068.a n = A227200 n

end A227200

/-! ## A227200.P3744817900254591227

`3*a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A227200.P3744817900254591227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  3 * a (n - 1) - a (n - 2) - 2 * a (n - 3)

end

end A227200.P3744817900254591227

namespace A227200

/-- `3*a(n-1)-a(n-2)-2*a(n-3)` -/
def P3744817900254591227.Spec : Prop :=
  ∀ n, P3744817900254591227.a n = A227200 n

end A227200

/-! ## A227200.P1687244614511632147

`ogf((x-3x^2)/(1-3x+x^2+2x^3))`
-/

namespace A227200.P1687244614511632147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -3] [1, -3, 1, 2] n

end

end A227200.P1687244614511632147

namespace A227200

/-- `ogf((x-3x^2)/(1-3x+x^2+2x^3))` -/
def P1687244614511632147.Spec : Prop :=
  ∀ n, P1687244614511632147.a n = A227200 n

end A227200

/-! ## A227200.P8997217107887555242

`a(n-1)+a(n-2)-2^(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A227200.P8997217107887555242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) - (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A227200.P8997217107887555242

namespace A227200

/-- `a(n-1)+a(n-2)-2^(n-2)` -/
def P8997217107887555242.Spec : Prop :=
  ∀ n, P8997217107887555242.a n = (A227200 n : ℚ)

end A227200

/-! ## A227200.P18094013580994102757

`a(n-1)-abs(a(n-2)-2^(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A227200.P18094013580994102757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - |a (n - 2) - (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)|

end

end A227200.P18094013580994102757

namespace A227200

/-- `a(n-1)-abs(a(n-2)-2^(n-2))` -/
def P18094013580994102757.Spec : Prop :=
  ∀ n, P18094013580994102757.a n = (A227200 n : ℚ)

end A227200

/-! ## A227200.P14123744163338231059

`A000204(n+1)-2^n`
-/

namespace A227200.P14123744163338231059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - (2 ^ n : ℤ)

end

end A227200.P14123744163338231059

namespace A227200

/-- `A000204(n+1)-2^n` -/
def P14123744163338231059.Spec : Prop :=
  ∀ n, P14123744163338231059.a n = A227200 n

end A227200

/-! ## A227200.P3055463773189554841

`A329723(n+3)-2^n`
-/

namespace A227200.P3055463773189554841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (n + 3) - (2 ^ n : ℤ)

end

end A227200.P3055463773189554841

namespace A227200

/-- `A329723(n+3)-2^n` -/
def P3055463773189554841.Spec : Prop :=
  ∀ n, P3055463773189554841.a n = A227200 n

end A227200

/-! ## A227200.P3224659319266583120

`2*a(n-1)-Δ[Δ[A000032(n)]]` with `a(0)=0`
-/

namespace A227200.P3224659319266583120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) - (f1 (n + 1) - f1 n)

end

end A227200.P3224659319266583120

namespace A227200

/-- `2*a(n-1)-Δ[Δ[A000032(n)]]` -/
def P3224659319266583120.Spec : Prop :=
  ∀ n, P3224659319266583120.a n = A227200 n

end A227200

/-! ## A227200.P14494808274087832560

`2*a(n-1)-A000032(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A227200.P14494808274087832560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1) - A000032 (n - 2)

end

end A227200.P14494808274087832560

namespace A227200

/-- `2*a(n-1)-A000032(n-2)` -/
def P14494808274087832560.Spec : Prop :=
  ∀ n, P14494808274087832560.a n = A227200 n

end A227200

/-! ## A227200.P14121278688364303426

`A001610(n)-A000225(n)`
-/

namespace A227200.P14121278688364303426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n - A000225 n

end

end A227200.P14121278688364303426

namespace A227200

/-- `A001610(n)-A000225(n)` -/
def P14121278688364303426.Spec : Prop :=
  ∀ n, P14121278688364303426.a n = A227200 n

end A227200

/-! ## A227200.P2682178603705428537

`A000045(n)-A008466(n)`
-/

namespace A227200.P2682178603705428537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A008466 n

end

end A227200.P2682178603705428537

namespace A227200

/-- `A000045(n)-A008466(n)` -/
def P2682178603705428537.Spec : Prop :=
  ∀ n, P2682178603705428537.a n = A227200 n

end A227200

/-! ## A227200.P6933457783154222765

`A000285(n)-A117591(n)`
-/

namespace A227200.P6933457783154222765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n - A117591 n

end

end A227200.P6933457783154222765

namespace A227200

/-- `A000285(n)-A117591(n)` -/
def P6933457783154222765.Spec : Prop :=
  ∀ n, P6933457783154222765.a n = A227200 n

end A227200

/-! ## A227200.P8935373163701573387

`A301653(n)-A141023(n)`
-/

namespace A227200.P8935373163701573387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301653 n - A141023 n

end

end A227200.P8935373163701573387

namespace A227200

/-- `A301653(n)-A141023(n)` -/
def P8935373163701573387.Spec : Prop :=
  ∀ n, P8935373163701573387.a n = A227200 n

end A227200

/-! ## A227200.P6391019724543368120

`A295723(n)-A233411(n)`
-/

namespace A227200.P6391019724543368120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295723 n - A233411 n

end

end A227200.P6391019724543368120

namespace A227200

/-- `A295723(n)-A233411(n)` -/
def P6391019724543368120.Spec : Prop :=
  ∀ n, P6391019724543368120.a n = A227200 n

end A227200

/-! ## A227200.P3445692486986479833

`A001612(n+1)-A000051(n)`
-/

namespace A227200.P3445692486986479833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (n + 1) - A000051 n

end

end A227200.P3445692486986479833

namespace A227200

/-- `A001612(n+1)-A000051(n)` -/
def P3445692486986479833.Spec : Prop :=
  ∀ n, P3445692486986479833.a n = A227200 n

end A227200

/-! ## A227200.P3445768405489225439

`A006355(n+1)-A027934(n)`
-/

namespace A227200.P3445768405489225439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) - A027934 n

end

end A227200.P3445768405489225439

namespace A227200

/-- `A006355(n+1)-A027934(n)` -/
def P3445768405489225439.Spec : Prop :=
  ∀ n, P3445768405489225439.a n = A227200 n

end A227200

/-! ## A227200.P14218859606899063030

`A098600(n+1)-A014551(n)`
-/

namespace A227200.P14218859606899063030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098600 (n + 1) - A014551 n

end

end A227200.P14218859606899063030

namespace A227200

/-- `A098600(n+1)-A014551(n)` -/
def P14218859606899063030.Spec : Prop :=
  ∀ n, P14218859606899063030.a n = A227200 n

end A227200

/-! ## A227200.P6177079726646575299

`A099925(n+1)-A062510(n)`
-/

namespace A227200.P6177079726646575299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099925 (n + 1) - A062510 n

end

end A227200.P6177079726646575299

namespace A227200

/-- `A099925(n+1)-A062510(n)` -/
def P6177079726646575299.Spec : Prop :=
  ∀ n, P6177079726646575299.a n = A227200 n

theorem P6177079726646575299.correct : P6177079726646575299.Spec := by
  intro n
  simp only [A227200, Nat.add_sub_cancel, A227200.P6177079726646575299.a, A227200.P9264526407839763535.a, A000032, A000032.P8352177345629330861.a, A062510, A062510.P5158205566425357391.a, A099925, A099925.P676734222059167749.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A227200

/-! ## A227200.P2836670020199536700

`A295674(n)-A007679(n+1)`
-/

namespace A227200.P2836670020199536700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295674 n - A007679 (n + 1)

end

end A227200.P2836670020199536700

namespace A227200

/-- `A295674(n)-A007679(n+1)` -/
def P2836670020199536700.Spec : Prop :=
  ∀ n, P2836670020199536700.a n = A227200 n

end A227200

/-!
# A227202: Least prime, q, greater than the previous prime, p, which is a primitive root of p; beginning with 2.

The programs for A227202, there is no canonical definition to state claims against.
-/

/-! ## A227202.P2726478296771671807

`A023049(a(n-1))` with `a(0)=2`
-/

namespace A227202.P2726478296771671807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A023049 (a (n - 1)).toNat

end

end A227202.P2726478296771671807

/-! ## A227202.P10557833886420902481

`A382498(a(n-1))` with `a(0)=2`
-/

namespace A227202.P10557833886420902481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A382498 (a (n - 1)).toNat

end

end A227202.P10557833886420902481

/-! ## A227202.P15525319674263055374

`∩[A005728(n), A095415(n+1)]`
-/

namespace A227202.P15525319674263055374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227202.P15525319674263055374

/-! ## A227202.P16656803514186652408

`∩[A049643(n), A095415(n+1)]`
-/

namespace A227202.P16656803514186652408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227202.P16656803514186652408

/-! ## A227202.P18048368931865280403

`∩[A078334(n+1), A095415(n+1)]`
-/

namespace A227202.P18048368931865280403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227202.P18048368931865280403

/-!
# A227203: Prime(n)^2 mod (prime(n) + prime(n+1)).

The programs for A227203, the canonical program `A227203.P9015438127595270850` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227203 has offset 1).

The definition of A227203 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)²%(A000040(n+1)+A000040(n+2))` (program `A227203.P9015438127595270850`, by `A227203.P9015438127595270850.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A227203.P9015438127595270850

`A000040(n+1)²%(A000040(n+1)+A000040(n+2))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A227203

/-- `A000040(n+1)²%(A000040(n+1)+A000040(n+2))` -/
def P9015438127595270850.Spec : Prop :=
  ∀ n, P9015438127595270850.a n = A227203 (n + 1)

theorem P9015438127595270850.correct : P9015438127595270850.Spec := by
  intro n
  simp only [A227203, Nat.add_sub_cancel]

end A227203

/-! ## A227203.P18118523218393650008

`p?[2*n+1]²%A001043(n+1)`
-/

namespace A227203.P18118523218393650008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℤ) (A001043 (n + 1))

end

end A227203.P18118523218393650008

namespace A227203

/-- `p?[2*n+1]²%A001043(n+1)` -/
def P18118523218393650008.Spec : Prop :=
  ∀ n, P18118523218393650008.a n = A227203 (n + 1)

end A227203

/-! ## A227203.P9186893854899679961

`Δ[A061802(n)]-A212769(n+1)`
-/

namespace A227203.P9186893854899679961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A212769 (n + 1)

end

end A227203.P9186893854899679961

namespace A227203

/-- `Δ[A061802(n)]-A212769(n+1)` -/
def P9186893854899679961.Spec : Prop :=
  ∀ n, P9186893854899679961.a n = A227203 (n + 1)

end A227203

/-! ## A227203.P17481407166573481150

`A001248(n+1)%Δ[A061802(n)]`
-/

namespace A227203.P17481407166573481150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001248 (n + 1)) (f1 (n + 1) - f1 n)

end

end A227203.P17481407166573481150

namespace A227203

/-- `A001248(n+1)%Δ[A061802(n)]` -/
def P17481407166573481150.Spec : Prop :=
  ∀ n, P17481407166573481150.a n = A227203 (n + 1)

end A227203

/-! ## A227203.P7019432753342888111

`A001043(n+1)-A212769(n+1)`
-/

namespace A227203.P7019432753342888111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - A212769 (n + 1)

end

end A227203.P7019432753342888111

namespace A227203

/-- `A001043(n+1)-A212769(n+1)` -/
def P7019432753342888111.Spec : Prop :=
  ∀ n, P7019432753342888111.a n = A227203 (n + 1)

end A227203

/-! ## A227203.P3069448016109722244

`A326708(n+1)%A001043(n+1)`
-/

namespace A227203.P3069448016109722244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326708 (n + 1)) (A001043 (n + 1))

end

end A227203.P3069448016109722244

namespace A227203

/-- `A326708(n+1)%A001043(n+1)` -/
def P3069448016109722244.Spec : Prop :=
  ∀ n, P3069448016109722244.a n = A227203 (n + 1)

end A227203

/-! ## A227203.P7045271373475889948

`Δ[A007504(n)]²%A001043(n+1)`
-/

namespace A227203.P7045271373475889948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 2) (A001043 (n + 1))

end

end A227203.P7045271373475889948

namespace A227203

/-- `Δ[A007504(n)]²%A001043(n+1)` -/
def P7045271373475889948.Spec : Prop :=
  ∀ n, P7045271373475889948.a n = A227203 (n + 1)

end A227203

/-! ## A227203.P15191592040536883569

`A000040(n+1)²%Δ[A061802(n)]`
-/

namespace A227203.P15191592040536883569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) ^ 2) (f1 (n + 1) - f1 n)

end

end A227203.P15191592040536883569

namespace A227203

/-- `A000040(n+1)²%Δ[A061802(n)]` -/
def P15191592040536883569.Spec : Prop :=
  ∀ n, P15191592040536883569.a n = A227203 (n + 1)

end A227203

/-! ## A227203.P18266943813594070730

`Δ[A024525(n)]%A001043(n+1)`
-/

namespace A227203.P18266943813594070730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A001043 (n + 1))

end

end A227203.P18266943813594070730

namespace A227203

/-- `Δ[A024525(n)]%A001043(n+1)` -/
def P18266943813594070730.Spec : Prop :=
  ∀ n, P18266943813594070730.a n = A227203 (n + 1)

end A227203

/-! ## A227203.P6049631483647775605

`A001248(n+2)%A001043(n+1)`
-/

namespace A227203.P6049631483647775605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001248 (n + 2)) (A001043 (n + 1))

end

end A227203.P6049631483647775605

namespace A227203

/-- `A001248(n+2)%A001043(n+1)` -/
def P6049631483647775605.Spec : Prop :=
  ∀ n, P6049631483647775605.a n = A227203 (n + 1)

end A227203

/-! ## A227203.P16461616044327308339

`A000040(n+2)²%A001043(n+1)`
-/

namespace A227203.P16461616044327308339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2) ^ 2) (A001043 (n + 1))

end

end A227203.P16461616044327308339

namespace A227203

/-- `A000040(n+2)²%A001043(n+1)` -/
def P16461616044327308339.Spec : Prop :=
  ∀ n, P16461616044327308339.a n = A227203 (n + 1)

end A227203

/-! ## A227203.P5769213248497741839

`A000040(n+1)+A000040(n+2)-A212769(n+1)`
-/

namespace A227203.P5769213248497741839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A000040 (n + 2) - A212769 (n + 1))

end

end A227203.P5769213248497741839

namespace A227203

/-- `A000040(n+1)+A000040(n+2)-A212769(n+1)` -/
def P5769213248497741839.Spec : Prop :=
  ∀ n, P5769213248497741839.a n = A227203 (n + 1)

end A227203

/-! ## A227203.P15493189209293866052

`record[A006530(n+2)²]%Δ[A061802(n)]`
-/

namespace A227203.P15493189209293866052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (f2 (n + 1) - f2 n)

end

end A227203.P15493189209293866052

namespace A227203

/-- `record[A006530(n+2)²]%Δ[A061802(n)]` -/
def P15493189209293866052.Spec : Prop :=
  ∀ n, P15493189209293866052.a n = A227203 (n + 1)

end A227203

/-!
# A227206: Largest number in an integer 6-tuple (a, b, c, d, e, f) satisfying the Markoff(6) equation a^2+b^2+c^2+d^2+e^2+f^2 = 6*a*b*c*d*e*f.

The programs for A227206, there is no canonical definition to state claims against.
-/

/-! ## A227206.P12917011891140725082

`A235130(A168022(n+1))`
-/

namespace A227206.P12917011891140725082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235130 (A168022 (n + 1)).toNat

end

end A227206.P12917011891140725082

/-!
# A227207: E.g.f.: Sum_{n>=0} n^n * x^n / (n! * Product_{k=0..n} (1 - n*k*x)).

The programs for A227207, there is no canonical definition to state claims against.
-/

/-! ## A227207.P16968382691357983800

`A275899(∑[A084940(n)-n])`
-/

namespace A227207.P16968382691357983800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084940 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275899 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A227207.P16968382691357983800

/-!
# A227209: Expansion of 1/((1-x)^2*(1-2*x)*(1-4*x)).

The programs for A227209, the canonical program `A227209.P15604365964152520467` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227209 has offset 0).

The definition of A227209 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-8x+21x^2-22x^3+8x^4))` (program `A227209.P15604365964152520467`, by `A227209.P15604365964152520467.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A227209.P15604365964152520467

`ogf(1/(1-8x+21x^2-22x^3+8x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227209

/-- `ogf(1/(1-8x+21x^2-22x^3+8x^4))` -/
def P15604365964152520467.Spec : Prop :=
  ∀ n, P15604365964152520467.a n = A227209 n

theorem P15604365964152520467.correct : P15604365964152520467.Spec := by
  intro n
  simp only [A227209]

end A227209

/-! ## A227209.P12304503818706144274

`(4^(n+3)-9*2^(n+3)+6*n+26)/18`
-/

namespace A227209.P12304503818706144274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ (n + 3) : ℤ) - (9 * 2 ^ (n + 3) : ℤ) + (6 * n : ℤ) + 26 : ℚ) / 18

end

end A227209.P12304503818706144274

namespace A227209

/-- `(4^(n+3)-9*2^(n+3)+6*n+26)/18` -/
def P12304503818706144274.Spec : Prop :=
  ∀ n, P12304503818706144274.a n = (A227209 n : ℚ)

end A227209

/-! ## A227209.P9137310413049424446

`∑[∑[2*a(n-1)]]+4*a(n-1)` with `a(0)=1`
-/

namespace A227209.P9137310413049424446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4 * a (n - 1)

end

end A227209.P9137310413049424446

namespace A227209

/-- `∑[∑[2*a(n-1)]]+4*a(n-1)` -/
def P9137310413049424446.Spec : Prop :=
  ∀ n, (P9137310413049424446.a n : ℤ) = A227209 n

end A227209

/-! ## A227209.P17948476681493756226

`a(n-1)+∑[∑[4^n]]+a(n-1)` with `a(0)=1`
-/

namespace A227209.P17948476681493756226
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A227209.P17948476681493756226

namespace A227209

/-- `a(n-1)+∑[∑[4^n]]+a(n-1)` -/
def P17948476681493756226.Spec : Prop :=
  ∀ n, (P17948476681493756226.a n : ℤ) = A227209 n

end A227209

/-! ## A227209.P16592819420554014881

`4*(2^n+a(n-1)-1)+1-n` with `a(0)=1`
-/

namespace A227209.P16592819420554014881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * ((2 ^ n : ℤ) + (a (n - 1) - 1)) + 1 - (n : ℤ)

end

end A227209.P16592819420554014881

namespace A227209

/-- `4*(2^n+a(n-1)-1)+1-n` -/
def P16592819420554014881.Spec : Prop :=
  ∀ n, P16592819420554014881.a n = A227209 n

end A227209

/-! ## A227209.P10785720696251545520

`∑[lcm(2, ∑[4^n])]-2^(n+2)+n+3`
-/

namespace A227209.P10785720696251545520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ (n + 2) : ℤ) + (n + 3 : ℤ)

end

end A227209.P10785720696251545520

namespace A227209

/-- `∑[lcm(2, ∑[4^n])]-2^(n+2)+n+3` -/
def P10785720696251545520.Spec : Prop :=
  ∀ n, P10785720696251545520.a n = A227209 n

end A227209

/-! ## A227209.P3705985452439765350

`∑[A171477(n)]`
-/

namespace A227209.P3705985452439765350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171477 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227209.P3705985452439765350

namespace A227209

/-- `∑[A171477(n)]` -/
def P3705985452439765350.Spec : Prop :=
  ∀ n, P3705985452439765350.a n = A227209 n

end A227209

/-! ## A227209.P13449820849091728471

`∑[∑[A171476(n)]]`
-/

namespace A227209.P13449820849091728471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171476 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227209.P13449820849091728471

namespace A227209

/-- `∑[∑[A171476(n)]]` -/
def P13449820849091728471.Spec : Prop :=
  ∀ n, P13449820849091728471.a n = A227209 n

end A227209

/-! ## A227209.P8051843279878341204

`∑[A006095(n+2)]`
-/

namespace A227209.P8051843279878341204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227209.P8051843279878341204

namespace A227209

/-- `∑[A006095(n+2)]` -/
def P8051843279878341204.Spec : Prop :=
  ∀ n, P8051843279878341204.a n = A227209 n

end A227209

/-! ## A227209.P4562775242037293293

`∑[∑[A006516(n+1)]]`
-/

namespace A227209.P4562775242037293293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227209.P4562775242037293293

namespace A227209

/-- `∑[∑[A006516(n+1)]]` -/
def P4562775242037293293.Spec : Prop :=
  ∀ n, P4562775242037293293.a n = A227209 n

end A227209

/-! ## A227209.P16118029903115220104

`∑[∑[A122746(2*n)]]`
-/

namespace A227209.P16118029903115220104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122746 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227209.P16118029903115220104

namespace A227209

/-- `∑[∑[A122746(2*n)]]` -/
def P16118029903115220104.Spec : Prop :=
  ∀ n, P16118029903115220104.a n = A227209 n

end A227209

/-! ## A227209.P7768806229774287240

`∑[∑[A278756(2*n)]]`
-/

namespace A227209.P7768806229774287240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278756 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227209.P7768806229774287240

namespace A227209

/-- `∑[∑[A278756(2*n)]]` -/
def P7768806229774287240.Spec : Prop :=
  ∀ n, P7768806229774287240.a n = A227209 n

end A227209

/-! ## A227209.P1680900939896213391

`∑[∑[A282418(2*n)]]`
-/

namespace A227209.P1680900939896213391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282418 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227209.P1680900939896213391

namespace A227209

/-- `∑[∑[A282418(2*n)]]` -/
def P1680900939896213391.Spec : Prop :=
  ∀ n, P1680900939896213391.a n = A227209 n

end A227209

/-! ## A227209.P16315738027291982089

`∑[∑[A285543(2*n)]]`
-/

namespace A227209.P16315738027291982089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285543 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227209.P16315738027291982089

namespace A227209

/-- `∑[∑[A285543(2*n)]]` -/
def P16315738027291982089.Spec : Prop :=
  ∀ n, P16315738027291982089.a n = A227209 n

end A227209

/-! ## A227209.P1244848325645786646

`∑[∑[A287470(2*n)]]`
-/

namespace A227209.P1244848325645786646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287470 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227209.P1244848325645786646

namespace A227209

/-- `∑[∑[A287470(2*n)]]` -/
def P1244848325645786646.Spec : Prop :=
  ∀ n, P1244848325645786646.a n = A227209 n

end A227209

/-! ## A227209.P11701269277046637036

`∑[∑[A290419(2*n)]]`
-/

namespace A227209.P11701269277046637036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290419 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227209.P11701269277046637036

namespace A227209

/-- `∑[∑[A290419(2*n)]]` -/
def P11701269277046637036.Spec : Prop :=
  ∀ n, P11701269277046637036.a n = A227209 n

end A227209

/-! ## A227209.P13310332374981006677

`∑[∑[A290423(2*n)]]`
-/

namespace A227209.P13310332374981006677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290423 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227209.P13310332374981006677

namespace A227209

/-- `∑[∑[A290423(2*n)]]` -/
def P13310332374981006677.Spec : Prop :=
  ∀ n, P13310332374981006677.a n = A227209 n

end A227209

/-! ## A227209.P3463897998389941142

`∑[∑[A290674(2*n)]]`
-/

namespace A227209.P3463897998389941142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290674 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227209.P3463897998389941142

namespace A227209

/-- `∑[∑[A290674(2*n)]]` -/
def P3463897998389941142.Spec : Prop :=
  ∀ n, P3463897998389941142.a n = A227209 n

end A227209

/-! ## A227209.P1030125262218782780

`∑[∑[A290679(2*n)]]`
-/

namespace A227209.P1030125262218782780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290679 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227209.P1030125262218782780

namespace A227209

/-- `∑[∑[A290679(2*n)]]` -/
def P1030125262218782780.Spec : Prop :=
  ∀ n, P1030125262218782780.a n = A227209 n

end A227209

/-! ## A227209.P4296325846910066204

`∑[A097038(2*(n+1))]`
-/

namespace A227209.P4296325846910066204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097038 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227209.P4296325846910066204

namespace A227209

/-- `∑[A097038(2*(n+1))]` -/
def P4296325846910066204.Spec : Prop :=
  ∀ n, P4296325846910066204.a n = A227209 n

end A227209

/-!
# A227210: Generalized Markoff numbers: largest of 7-tuple of positive numbers a, b, c, d, e, f, g satisfying the Markoff(7) equation a^2+b^2+c^2+d^2+e^2+f^2+g^2 = 2abcdefg.

The programs for A227210, there is no canonical definition to state claims against.
-/

/-! ## A227210.P4384725747792246539

`A179971(3*(n+1))-A325169(A007504(n+2))`
-/

namespace A227210.P4384725747792246539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179971 (3 * (n + 1)) - A325169 (A007504 (n + 2)).toNat

end

end A227210.P4384725747792246539

/-!
# A227213: Expansion of (eta(q^5) * eta(q^10) / (eta(q) * eta(q^2)))^2 in powers of q.

The programs for A227213, there is no canonical definition to state claims against.
-/

/-! ## A227213.P5159796873086290469

`A230995(A136336(n))-4`
-/

namespace A227213.P5159796873086290469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230995 (A136336 n).toNat - 4

end

end A227213.P5159796873086290469

/-! ## A227213.P8627518308084995125

`A337135(6^n)+A035648(n+1)`
-/

namespace A227213.P8627518308084995125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337135 (6 ^ n) + A035648 (n + 1)

end

end A227213.P8627518308084995125

/-!
# A227214: Generalized Markoff numbers: largest of 7-tuple of positive numbers a, b, c, d, e, f, g satisfying the Markoff(7) equation a^2+b^2+c^2+d^2+e^2+f^2+g^2 = 7abcdefg.

The programs for A227214, there is no canonical definition to state claims against.
-/

/-! ## A227214.P8760745961331763920

`A199201(∑[∑[lcm(8, (n+1)²)%3+3]])`
-/

namespace A227214.P8760745961331763920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 8 ((n + 1) ^ 2) % 3 + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199201 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227214.P8760745961331763920

/-!
# A227215: Smallest sum of the three perpendicular integer sides of a rectangular parallelepiped of volume n.

The programs for A227215, there is no canonical definition to state claims against.
-/

/-! ## A227215.P16669851278877627418

`A102095(n+1)+A102097(n+1)+A102096(n+1)`
-/

namespace A227215.P16669851278877627418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102095 (n + 1) + (A102097 (n + 1) + A102096 (n + 1))

end

end A227215.P16669851278877627418

/-! ## A227215.P14171569484549076139

`A102096(A079880(n+1))+A102096(n+1)+A102095(n+1)`
-/

namespace A227215.P14171569484549076139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102096 (A079880 (n + 1)).toNat + (A102096 (n + 1) + A102095 (n + 1))

end

end A227215.P14171569484549076139

/-! ## A227215.P10907611635021167428

`A018851(A102889(n+1)+A075777(n+1))`
-/

namespace A227215.P10907611635021167428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A102889 (n + 1) + A075777 (n + 1)).toNat

end

end A227215.P10907611635021167428

/-! ## A227215.P6839053080017373327

`A033676(A102889(n+1)+A075777(n+1))`
-/

namespace A227215.P6839053080017373327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A102889 (n + 1) + A075777 (n + 1)).toNat

end

end A227215.P6839053080017373327

/-! ## A227215.P2256886602554527970

`A207376(A102889(n+1)+A075777(n+1))`
-/

namespace A227215.P2256886602554527970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207376 (A102889 (n + 1) + A075777 (n + 1)).toNat

end

end A227215.P2256886602554527970

/-!
# A227216: Expansion of f(-q^2, -q^3)^5 / f(-q)^3 in powers of q where f() is a Ramanujan theta function.

The programs for A227216, the canonical program `A227216.P6671624915462471529` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227216 has offset 0).

The definition of A227216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227216.P6671624915462471529

`A119428(2*n)+A119428(2*n)-A119428(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A227216

/-- `A119428(2*n)+A119428(2*n)-A119428(n)` -/
def P6671624915462471529.Spec : Prop :=
  ∀ n, P6671624915462471529.a n = A227216 n

theorem P6671624915462471529.correct : P6671624915462471529.Spec := by
  intro n
  simp only [A227216]

end A227216

/-!
# A227217: Primes p such that p + (product of digits of p) is prime and p - (product of digits of p) is prime.

The programs for A227217, there is no canonical definition to state claims against.
-/

/-! ## A227217.P3411766676867541225

`∪[A056709(n+1), A229176(n+1)]`
-/

namespace A227217.P3411766676867541225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A227217.P3411766676867541225

/-! ## A227217.P12063092641366896901

`∩[A157677(n+1), A229221(n+1)]`
-/

namespace A227217.P12063092641366896901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227217.P12063092641366896901

/-! ## A227217.P17061657533387924376

`p?[∩[A157676(n+1), A229221(n+1)]]`
-/

namespace A227217.P17061657533387924376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229221 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A227217.P17061657533387924376

/-! ## A227217.P661621626881236155

`∩[A157676(n+1), A225319(n+1)]`
-/

namespace A227217.P661621626881236155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227217.P661621626881236155

/-! ## A227217.P9754229396975785889

`∩[A157677(n+1), A225319(n+1)]`
-/

namespace A227217.P9754229396975785889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227217.P9754229396975785889

/-!
# A227221: Volume of Johnson square pyramid placed upright on cube (rounded down) with edge lengths equal to n.

The programs for A227221, the canonical program `A227221.P1304667666704736882` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227221 has offset 1).

The definition of A227221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227221.P1304667666704736882

`floor((sqrt(2)/6+1)*(n+1)^3)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227221

/-- `floor((sqrt(2)/6+1)*(n+1)^3)` -/
def P1304667666704736882.Spec : Prop :=
  ∀ n, P1304667666704736882.a n = A227221 (n + 1)

theorem P1304667666704736882.correct : P1304667666704736882.Spec := by
  intro n
  simp only [A227221, Nat.add_sub_cancel]

end A227221

/-! ## A227221.P5509064898243019962

`A000578(n+1)+A171973(n+1)+A071399(n+1)`
-/

namespace A227221.P5509064898243019962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) + (A171973 (n + 1) + A071399 (n + 1))

end

end A227221.P5509064898243019962

namespace A227221

/-- `A000578(n+1)+A171973(n+1)+A071399(n+1)` -/
def P5509064898243019962.Spec : Prop :=
  ∀ n, P5509064898243019962.a n = A227221 (n + 1)

end A227221

/-! ## A227221.P11745440586889106562

`A229063(n+1)+record[A000578(A195663(n))]`
-/

namespace A227221.P11745440586889106562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A195663 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229063 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227221.P11745440586889106562

namespace A227221

/-- `A229063(n+1)+record[A000578(A195663(n))]` -/
def P11745440586889106562.Spec : Prop :=
  ∀ n, P11745440586889106562.a n = A227221 (n + 1)

end A227221

/-! ## A227221.P6844202454977939887

`A229063(A151909(n)!+n)+(n+1)^3`
-/

namespace A227221.P6844202454977939887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229063 (Nat.factorial (A151909 n).toNat + n) + ((n + 1) ^ 3 : ℤ)

end

end A227221.P6844202454977939887

namespace A227221

/-- `A229063(A151909(n)!+n)+(n+1)^3` -/
def P6844202454977939887.Spec : Prop :=
  ∀ n, P6844202454977939887.a n = A227221 (n + 1)

end A227221

/-! ## A227221.P6222130794837023443

`A229063(n+1)+A000027(∑[A003215(n)])`
-/

namespace A227221.P6222130794837023443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229063 (n + 1) + A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A227221.P6222130794837023443

namespace A227221

/-- `A229063(n+1)+A000027(∑[A003215(n)])` -/
def P6222130794837023443.Spec : Prop :=
  ∀ n, P6222130794837023443.a n = A227221 (n + 1)

end A227221

/-! ## A227221.P15956971022238287222

`A229063(n+1)+A000027(A000578(n+1))`
-/

namespace A227221.P15956971022238287222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229063 (n + 1) + A000027 (A000578 (n + 1)).toNat

end

end A227221.P15956971022238287222

namespace A227221

/-- `A229063(n+1)+A000027(A000578(n+1))` -/
def P15956971022238287222.Spec : Prop :=
  ∀ n, P15956971022238287222.a n = A227221 (n + 1)

end A227221

/-! ## A227221.P3295457547553416390

`A229063(n+1)+A000027(Δ[A000217(n)²])`
-/

namespace A227221.P3295457547553416390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229063 (n + 1) + A000027 (f1 (n + 1) - f1 n).toNat

end

end A227221.P3295457547553416390

namespace A227221

/-- `A229063(n+1)+A000027(Δ[A000217(n)²])` -/
def P3295457547553416390.Spec : Prop :=
  ∀ n, P3295457547553416390.a n = A227221 (n + 1)

end A227221

/-!
# A227222: G.f. satisfies: A(x) = Sum{n>=0} A( n*x/(1-n*x) ) * x^n, with A(0)=1.

The programs for A227222, there is no canonical definition to state claims against.
-/

/-! ## A227222.P10454708466831122474

`A266196(n!)`
-/

namespace A227222.P10454708466831122474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266196 (Nat.factorial n)

end

end A227222.P10454708466831122474

/-! ## A227222.P8787534226790975695

`A266196(∏[ceil(abs(γ-n))])`
-/

namespace A227222.P8787534226790975695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266196 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A227222.P8787534226790975695

/-!
# A227223: Number of set partitions of {1,...,2^n} into sets of size at most n.

The programs for A227223, there is no canonical definition to state claims against.
-/

/-! ## A227223.P7452410692689119221

`A108947(eq[A025581(n), A059268(n)])`
-/

namespace A227223.P7452410692689119221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A227223.P7452410692689119221

/-!
# A227224: Numbers k such that k*(sum of digits of k) is a perfect square.

The programs for A227224, there is no canonical definition to state claims against.
-/

/-! ## A227224.P18020396194388180332

`lt[0, A010052(A057147(n))]`
-/

namespace A227224.P18020396194388180332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A057147 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A227224.P18020396194388180332

/-! ## A227224.P1359569220036975570

`eq[A007953(n), A053186(A160942(n+1))]`
-/

namespace A227224.P1359569220036975570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A160942 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227224.P1359569220036975570

/-! ## A227224.P9803924802663070800

`lt[A007949(3*n+1), A000122(A057147(n))]`
-/

namespace A227224.P9803924802663070800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A057147 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227224.P9803924802663070800

/-! ## A227224.P13775781280099404780

`lt[A000122(3*n+2), A000122(A057147(n))]`
-/

namespace A227224.P13775781280099404780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A057147 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227224.P13775781280099404780

/-! ## A227224.P3899512970526312751

`eq[A062028(n)-n, A053186(A160942(n+1))]`
-/

namespace A227224.P3899512970526312751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A160942 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227224.P3899512970526312751

/-!
# A227225: Numbers k such that (sum of digits of k) + (product of digits of k) is a perfect cube.

The programs for A227225, there is no canonical definition to state claims against.
-/

/-! ## A227225.P10093998458848024574

`lt[0, A010057(A061762(n))]`
-/

namespace A227225.P10093998458848024574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A061762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A227225.P10093998458848024574

/-! ## A227225.P5758070593642280830

`eq[A055401(A061762(n)), A057427(n)]`
-/

namespace A227225.P5758070593642280830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 (A061762 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227225.P5758070593642280830

/-! ## A227225.P15057257787504793579

`eq[A165471(n)², A055401(A061762(n))]`
-/

namespace A227225.P15057257787504793579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 (A061762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227225.P15057257787504793579

/-! ## A227225.P995935562509943430

`eq[A010057(A061762(n)), A057427(n+4)]`
-/

namespace A227225.P995935562509943430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A061762 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227225.P995935562509943430

/-!
# A227226: Expansion of phi(-q^3)^6 / phi(-q)^2 where phi() is a Ramanujan theta function.

The programs for A227226, there is no canonical definition to state claims against.
-/

/-! ## A227226.P1886125274474843507

`abs(A321466(n))`
-/

namespace A227226.P1886125274474843507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321466 n|

end

end A227226.P1886125274474843507

/-! ## A227226.P5595033184862603936

`A033999(n)*A321466(n)`
-/

namespace A227226.P5595033184862603936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A321466 n

end

end A227226.P5595033184862603936

/-! ## A227226.P13409884429154359612

`gcd(A000038(n), A321466(n))`
-/

namespace A227226.P13409884429154359612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A321466 n)

end

end A227226.P13409884429154359612

/-! ## A227226.P7627269958017233923

`lcm(A000034(n), A321466(n))`
-/

namespace A227226.P7627269958017233923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A321466 n)

end

end A227226.P7627269958017233923

/-! ## A227226.P4219933897407630585

`∑{d}[A321466(n), A000010(#)]`
-/

namespace A227226.P4219933897407630585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A227226.P4219933897407630585

/-! ## A227226.P2502969871656023105

`∏{d}[A321466(n), A014963(#)]`
-/

namespace A227226.P2502969871656023105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A227226.P2502969871656023105

/-!
# A227227: Numbers k such that k*sum_of_digits(k) is a perfect cube.

The programs for A227227, there is no canonical definition to state claims against.
-/

/-! ## A227227.P10711538465712153594

`∪[A053058(n+1), A236749(n+1)]`
-/

namespace A227227.P10711538465712153594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A227227.P10711538465712153594

/-! ## A227227.P14933491754486454457

`A153000(n)^A091935(A015128(2*n))`
-/

namespace A227227.P14933491754486454457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153000 n : ℚ) ^ (A091935 (A015128 (2 * n)).toNat : ℤ)

end

end A227227.P14933491754486454457

/-! ## A227227.P10117004627519839804

`A153000(n)^A136627(∑{d}[n+1, 2^(#-1)])`
-/

namespace A227227.P10117004627519839804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153000 n : ℚ) ^ (A136627 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ))).toNat : ℤ)

end

end A227227.P10117004627519839804

/-!
# A227228: Palindromes greater than 10 whose sum of proper divisors is also a palindrome greater than 10.

The programs for A227228, there is no canonical definition to state claims against.
-/

/-! ## A227228.P10922339476572821387

`A227947(n+5)`
-/

namespace A227228.P10922339476572821387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227947 (n + 5)

end

end A227228.P10922339476572821387

/-! ## A227228.P18250987561322071465

`record[A227947(A020705(abs(1-n)))]`
-/

namespace A227228.P18250987561322071465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227947 (A020705 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227228.P18250987561322071465

/-! ## A227228.P2072133600397677501

`∩[A072362(n+1), A084325(n+1)]`
-/

namespace A227228.P2072133600397677501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227228.P2072133600397677501

/-! ## A227228.P12833787342098563187

`∩[A002113(n+1), A072362(n+5)]`
-/

namespace A227228.P12833787342098563187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072362 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227228.P12833787342098563187

/-!
# A227229: Expansion of (psi(q)^3 / psi(q^3))^2 in powers of q where psi() is a Ramanujan theta function.

The programs for A227229, there is no canonical definition to state claims against.
-/

/-! ## A227229.P13198925516949493002

`(A224225(2*n)+A224225(4*n))/2`
-/

namespace A227229.P13198925516949493002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224225 (2 * n) + A224225 (4 * n) : ℚ) / 2

end

end A227229.P13198925516949493002

/-!
# A227231: Numbers k such that antisigma(k) mod k = k - 1.

The programs for A227231, there is no canonical definition to state claims against.
-/

/-! ## A227231.P5438513170138846560

`eq[(n+1)%2, A328768(A328772(n))]`
-/

namespace A227231.P5438513170138846560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328768 (A328772 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227231.P5438513170138846560

/-! ## A227231.P6109158751381810813

`eq[A328848(n), A370482(n)]`
-/

namespace A227231.P6109158751381810813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328848 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227231.P6109158751381810813

/-! ## A227231.P4268753838478450291

`eq[n, A229110(n+1)]+1`
-/

namespace A227231.P4268753838478450291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229110 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A227231.P4268753838478450291

/-! ## A227231.P1975399753444578831

`eq[n, A024816(n+1)%(n+1)]+1`
-/

namespace A227231.P1975399753444578831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024816 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A227231.P1975399753444578831

/-! ## A227231.P5088252063451708894

`record[A229110(A229110(n+1)+1)+1]`
-/

namespace A227231.P5088252063451708894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229110 (A229110 (n + 1) + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227231.P5088252063451708894

/-! ## A227231.P7306580891111845729

`record[gcd(n+1, A039653(n+1)+A000096(n+1))]`
-/

namespace A227231.P7306580891111845729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A039653 (n + 1) + A000096 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227231.P7306580891111845729

/-! ## A227231.P2649737743349327779

`eq[A032741(A032741(n)), A058305(2*n)]`
-/

namespace A227231.P2649737743349327779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227231.P2649737743349327779

/-!
# A227232: The continued fraction of the positive constant r < sqrt(3) such that the partial quotients equal the integer floor of the powers of r.

The programs for A227232, there is no canonical definition to state claims against.
-/

/-! ## A227232.P6563707717274480142

`A046155(A116404(n)+2^n-1)`
-/

namespace A227232.P6563707717274480142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A116404 n + ((2 ^ n : ℤ) - 1)).toNat

end

end A227232.P6563707717274480142

/-! ## A227232.P7939460860457021000

`A046155(A257104(n)+A109975(n))`
-/

namespace A227232.P7939460860457021000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A257104 n + A109975 n).toNat

end

end A227232.P7939460860457021000

/-! ## A227232.P10283348532704739318

`A293137(A138573(n))+A000120(A198201(n))`
-/

namespace A227232.P10283348532704739318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A138573 n).toNat + A000120 (A198201 n).toNat

end

end A227232.P10283348532704739318

/-! ## A227232.P16773343269184963488

`A003056(abs(A077918(n)))`
-/

namespace A227232.P16773343269184963488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 |A077918 n|.toNat

end

end A227232.P16773343269184963488

/-! ## A227232.P1005968468892194963

`A096603(A229194(n+1))`
-/

namespace A227232.P1005968468892194963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096603 (A229194 (n + 1)).toNat

end

end A227232.P1005968468892194963

/-!
# A227233: The continued fraction of the constant r > sqrt(3) such that the partial quotients equal the integer floor of the powers of r.

The programs for A227233, there is no canonical definition to state claims against.
-/

/-! ## A227233.P8654808904623963089

`floor(root(A114648(n+1), 4))`
-/

namespace A227233.P8654808904623963089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A114648 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A227233.P8654808904623963089

/-! ## A227233.P8014757388796138910

`A172471(A270062(n))`
-/

namespace A227233.P8014757388796138910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A270062 n).toNat

end

end A227233.P8014757388796138910

/-! ## A227233.P314277452923808347

`A055086(ceil(sqrt(A025015(n))))`
-/

namespace A227233.P314277452923808347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 ⌈Real.sqrt (A025015 n : ℝ)⌉.toNat

end

end A227233.P314277452923808347

/-! ## A227233.P14688646949692842331

`A046155(A255630(n)+A000726(n))`
-/

namespace A227233.P14688646949692842331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A255630 n + A000726 n).toNat

end

end A227233.P14688646949692842331

/-! ## A227233.P4656369321179147490

`A046155(A255630(n)+A046155(n²))`
-/

namespace A227233.P4656369321179147490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A255630 n + A046155 (n ^ 2)).toNat

end

end A227233.P4656369321179147490

/-!
# A227234: G.f.: Sum_{n>=1} x^n * (1+x)^prime(n).

The programs for A227234, there is no canonical definition to state claims against.
-/

/-! ## A227234.P9662636864908994317

`A080605(A059216(n+1))`
-/

namespace A227234.P9662636864908994317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080605 (A059216 (n + 1)).toNat

end

end A227234.P9662636864908994317

/-! ## A227234.P16999366542721692075

`A183117(n+3)-A315455(A000244(n))`
-/

namespace A227234.P16999366542721692075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183117 (n + 3) - A315455 (A000244 n).toNat

end

end A227234.P16999366542721692075

/-! ## A227234.P8778623655117912122

`A005408(A198304(n)%A018686(n+1))`
-/

namespace A227234.P8778623655117912122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.tmod (A198304 n) (A018686 (n + 1))).toNat

end

end A227234.P8778623655117912122

/-! ## A227234.P4297599938596712307

`A247908(A154992(n)+∑[A247908(n+1)])`
-/

namespace A227234.P4297599938596712307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A154992 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A227234.P4297599938596712307

/-!
# A227235: G.f.: Sum_{n>=1} x^n / (1-x)^prime(n).

The programs for A227235, there is no canonical definition to state claims against.
-/

/-! ## A227235.P56159389766296289

`∑[A321994(n+2)]-char[5]`
-/

namespace A227235.P56159389766296289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321994 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A227235.P56159389766296289

/-! ## A227235.P3467199004586075819

`∑[A055086(A247499(n))]`
-/

namespace A227235.P3467199004586075819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A247499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227235.P3467199004586075819

/-! ## A227235.P7499278287199401750

`∑[∑[A238872(A052849(n))]]`
-/

namespace A227235.P7499278287199401750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238872 (A052849 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227235.P7499278287199401750

/-!
# A227236: G.f.: Sum_{n>=0} x^n * (1+x)^sigma(n).

The programs for A227236, there is no canonical definition to state claims against.
-/

/-! ## A227236.P1121296175671625742

`∑[A329452(Δ[round(2^(n-2))])]`
-/

namespace A227236.P1121296175671625742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329452 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227236.P1121296175671625742

/-! ## A227236.P17278778660514061897

`A194311(A149012(n))`
-/

namespace A227236.P17278778660514061897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194311 (A149012 n).toNat

end

end A227236.P17278778660514061897

/-! ## A227236.P4931383145108545758

`A105223(3*A003449(n+4))`
-/

namespace A227236.P4931383145108545758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (3 * A003449 (n + 4)).toNat

end

end A227236.P4931383145108545758

/-! ## A227236.P15464664737550905579

`A257639(∑[A301464(2^n-n%2)])`
-/

namespace A227236.P15464664737550905579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301464 (2 ^ n - n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A227236.P15464664737550905579

/-! ## A227236.P14665772230408315383

`A003056(A039969(n)+A008984(n))`
-/

namespace A227236.P14665772230408315383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A039969 n + A008984 n).toNat

end

end A227236.P14665772230408315383

/-!
# A227237: G.f.: Sum_{n>=0} x^n / (1-x)^sigma(n).

The programs for A227237, there is no canonical definition to state claims against.
-/

/-! ## A227237.P8696671893621081977

`A226233(A124523(n+1))`
-/

namespace A227237.P8696671893621081977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226233 (A124523 (n + 1)).toNat

end

end A227237.P8696671893621081977

/-! ## A227237.P7870252478700679835

`A001462(A059278(n))`
-/

namespace A227237.P7870252478700679835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A059278 n).toNat

end

end A227237.P7870252478700679835

/-! ## A227237.P8416201076706002483

`A261104(A361775(n))`
-/

namespace A227237.P8416201076706002483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A361775 n).toNat

end

end A227237.P8416201076706002483

/-! ## A227237.P6292506986856921284

`A032539(A047035(n+3))`
-/

namespace A227237.P6292506986856921284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032539 (A047035 (n + 3)).toNat

end

end A227237.P6292506986856921284

/-!
# A227238: Numbers whose base-9 sum of digits is 9.

The programs for A227238, the canonical program `A227238.P3472653641428813910` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227238 has offset 1).

The definition of A227238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 706 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227238.P3472653641428813910

`eq[9, A053830(n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A227238

/-- `eq[9, A053830(n)]` -/
def P3472653641428813910.Spec : Prop :=
  ∀ n, (P3472653641428813910.a n : ℤ) = A227238 (n + 1)

theorem P3472653641428813910.correct : P3472653641428813910.Spec := by
  intro n
  simp only [A227238, Nat.add_sub_cancel]

end A227238

/-! ## A227238.P8877928569909266321

`eq[A008425(n), A053844(n)]`
-/

namespace A227238.P8877928569909266321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008425 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227238.P8877928569909266321

namespace A227238

/-- `eq[A008425(n), A053844(n)]` -/
def P8877928569909266321.Spec : Prop :=
  ∀ n, (P8877928569909266321.a n : ℤ) = A227238 (n + 1)

end A227238

/-! ## A227238.P2529831461092973692

`eq[A022067(n), A053844(n)]`
-/

namespace A227238.P2529831461092973692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022067 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227238.P2529831461092973692

namespace A227238

/-- `eq[A022067(n), A053844(n)]` -/
def P2529831461092973692.Spec : Prop :=
  ∀ n, (P2529831461092973692.a n : ℤ) = A227238 (n + 1)

end A227238

/-! ## A227238.P4649205603124826224

`eq[A022075(n), A053844(n)]`
-/

namespace A227238.P4649205603124826224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022075 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227238.P4649205603124826224

namespace A227238

/-- `eq[A022075(n), A053844(n)]` -/
def P4649205603124826224.Spec : Prop :=
  ∀ n, (P4649205603124826224.a n : ℤ) = A227238 (n + 1)

end A227238

/-! ## A227238.P3779151531918976425

`eq[9, A007953(A007095(n))]`
-/

namespace A227238.P3779151531918976425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227238.P3779151531918976425

namespace A227238

/-- `eq[9, A007953(A007095(n))]` -/
def P3779151531918976425.Spec : Prop :=
  ∀ n, (P3779151531918976425.a n : ℤ) = A227238 (n + 1)

end A227238

/-! ## A227238.P4252595304796318677

`eq[A035363(n)²*A035363(n), A053844(n)]`
-/

namespace A227238.P4252595304796318677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n ^ 2 * A035363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227238.P4252595304796318677

namespace A227238

/-- `eq[A035363(n)²*A035363(n), A053844(n)]` -/
def P4252595304796318677.Spec : Prop :=
  ∀ n, (P4252595304796318677.a n : ℤ) = A227238 (n + 1)

end A227238

/-! ## A227238.P9301290644803807936

`eq[A022074(2*n), A053844(n)]`
-/

namespace A227238.P9301290644803807936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022074 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227238.P9301290644803807936

namespace A227238

/-- `eq[A022074(2*n), A053844(n)]` -/
def P9301290644803807936.Spec : Prop :=
  ∀ n, (P9301290644803807936.a n : ℤ) = A227238 (n + 1)

end A227238

/-! ## A227238.P6599677725401502448

`eq[A028592(n), A053844(n)]`
-/

namespace A227238.P6599677725401502448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227238.P6599677725401502448

namespace A227238

/-- `eq[A028592(n), A053844(n)]` -/
def P6599677725401502448.Spec : Prop :=
  ∀ n, (P6599677725401502448.a n : ℤ) = A227238 (n + 1)

end A227238

/-! ## A227238.P8346401898173002421

`eq[A028712(n), A053844(n)]`
-/

namespace A227238.P8346401898173002421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028712 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227238.P8346401898173002421

namespace A227238

/-- `eq[A028712(n), A053844(n)]` -/
def P8346401898173002421.Spec : Prop :=
  ∀ n, (P8346401898173002421.a n : ℤ) = A227238 (n + 1)

end A227238

/-! ## A227238.P4191630651543752689

`eq[A028700(n), A053844(n)]`
-/

namespace A227238.P4191630651543752689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227238.P4191630651543752689

namespace A227238

/-- `eq[A028700(n), A053844(n)]` -/
def P4191630651543752689.Spec : Prop :=
  ∀ n, (P4191630651543752689.a n : ℤ) = A227238 (n + 1)

end A227238

/-!
# A227240: Numbers k such that sigma(k) divides sigma(2*k) and sigma(2*k + 1).

The programs for A227240, there is no canonical definition to state claims against.
-/

/-! ## A227240.P12872964550272422091

`∑[A275120(∑[2*(a(n-1)+12*n)])]` with `a(0)=7, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A227240.P12872964550272422091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [7, 1, 1, 0] fun n f2 =>
  2 * (f2 (n - 1) + 12 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227240.P12872964550272422091

/-! ## A227240.P10984180215995325634

`∑[A023153(record[A319192(n+1)])]`
-/

namespace A227240.P10984180215995325634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319192 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023153 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227240.P10984180215995325634

/-! ## A227240.P2788362484320161775

`∑[A260723(A052705(n+1)+2)]`
-/

namespace A227240.P2788362484320161775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260723 (A052705 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227240.P2788362484320161775

/-! ## A227240.P4911797069163308036

`record[A066670(n+1)%A194010(n)]`
-/

namespace A227240.P4911797069163308036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066670 (n + 1)) (A194010 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227240.P4911797069163308036

/-! ## A227240.P2713602133600969828

`record[A014963(A247074(2*n+1)²)]`
-/

namespace A227240.P2713602133600969828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A247074 (2 * n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227240.P2713602133600969828

/-!
# A227241: a(n) = sigma(n)*( 2*sigma(n)+1 ).

The programs for A227241, the canonical program `A227241.P17641002002959188226` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227241 has offset 1).

The definition of A227241 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)*(2*A000203(n+1)+1)` (program `A227241.P17641002002959188226`, by `A227241.P17641002002959188226.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A227241.P17641002002959188226

`A000203(n+1)*(2*A000203(n+1)+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A227241

/-- `A000203(n+1)*(2*A000203(n+1)+1)` -/
def P17641002002959188226.Spec : Prop :=
  ∀ n, P17641002002959188226.a n = A227241 (n + 1)

theorem P17641002002959188226.correct : P17641002002959188226.Spec := by
  intro n
  simp only [A227241, Nat.add_sub_cancel]

end A227241

/-! ## A227241.P1522147016068319572

`A014105(A000203(n+1))`
-/

namespace A227241.P1522147016068319572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (A000203 (n + 1)).toNat

end

end A227241.P1522147016068319572

namespace A227241

/-- `A014105(A000203(n+1))` -/
def P1522147016068319572.Spec : Prop :=
  ∀ n, P1522147016068319572.a n = A227241 (n + 1)

end A227241

/-! ## A227241.P890115462626663708

`C(A074400(n+1)+1, 2)`
-/

namespace A227241.P890115462626663708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A074400 (n + 1) + 1).toNat 2

end

end A227241.P890115462626663708

namespace A227241

/-- `C(A074400(n+1)+1, 2)` -/
def P890115462626663708.Spec : Prop :=
  ∀ n, (P890115462626663708.a n : ℤ) = A227241 (n + 1)

end A227241

/-! ## A227241.P10391650865696796315

`(A074400(n+1)+1)*A000203(n+1)`
-/

namespace A227241.P10391650865696796315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) + 1) * A000203 (n + 1)

end

end A227241.P10391650865696796315

namespace A227241

/-- `(A074400(n+1)+1)*A000203(n+1)` -/
def P10391650865696796315.Spec : Prop :=
  ∀ n, P10391650865696796315.a n = A227241 (n + 1)

theorem P10391650865696796315.correct : P10391650865696796315.Spec := by
  intro n
  simp only [A227241, Nat.add_sub_cancel, A227241.P10391650865696796315.a, A227241.P17641002002959188226.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A227241

/-! ## A227241.P5315071058427625755

`A000203(n+1)+2*A072861(n+1)`
-/

namespace A227241.P5315071058427625755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + 2 * A072861 (n + 1)

end

end A227241.P5315071058427625755

namespace A227241

/-- `A000203(n+1)+2*A072861(n+1)` -/
def P5315071058427625755.Spec : Prop :=
  ∀ n, P5315071058427625755.a n = A227241 (n + 1)

theorem P5315071058427625755.correct : P5315071058427625755.Spec := by
  intro n
  simp only [A227241, Nat.add_sub_cancel, A227241.P5315071058427625755.a, A227241.P17641002002959188226.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A072861, A072861.P7379814568350881994.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A227241

/-! ## A227241.P7063514441315536011

`(A074400(n+1)+1)*abs(Δ[A330725(n)])`
-/

namespace A227241.P7063514441315536011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) + 1) * |f1 (n + 1) - f1 n|

end

end A227241.P7063514441315536011

namespace A227241

/-- `(A074400(n+1)+1)*abs(Δ[A330725(n)])` -/
def P7063514441315536011.Spec : Prop :=
  ∀ n, P7063514441315536011.a n = A227241 (n + 1)

end A227241

/-! ## A227241.P5750276973373147019

`(A074400(n+1)+1)*abs(A143348(n+1))`
-/

namespace A227241.P5750276973373147019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) + 1) * |A143348 (n + 1)|

end

end A227241.P5750276973373147019

namespace A227241

/-- `(A074400(n+1)+1)*abs(A143348(n+1))` -/
def P5750276973373147019.Spec : Prop :=
  ∀ n, P5750276973373147019.a n = A227241 (n + 1)

end A227241

/-! ## A227241.P9591677537031584733

`(A074400(n+1)+1)*A319528(n+1)/8`
-/

namespace A227241.P9591677537031584733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) + 1 : ℚ) * ((A319528 (n + 1) : ℚ) / 8)

end

end A227241.P9591677537031584733

namespace A227241

/-- `(A074400(n+1)+1)*A319528(n+1)/8` -/
def P9591677537031584733.Spec : Prop :=
  ∀ n, P9591677537031584733.a n = (A227241 (n + 1) : ℚ)

theorem P9591677537031584733.correct : P9591677537031584733.Spec := by
  intro n
  simp only [A227241, Nat.add_sub_cancel, A227241.P9591677537031584733.a, A227241.P17641002002959188226.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, A319528, A319528.P5610714732727847470.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A227241

/-! ## A227241.P9386236568242282232

`A000217(2*∑{d}[n+1, #])`
-/

namespace A227241.P9386236568242282232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * (∑ d ∈ Nat.divisors (f1 n), d))

end

end A227241.P9386236568242282232

namespace A227241

/-- `A000217(2*∑{d}[n+1, #])` -/
def P9386236568242282232.Spec : Prop :=
  ∀ n, P9386236568242282232.a n = A227241 (n + 1)

theorem P9386236568242282232.correct : P9386236568242282232.Spec := by
  intro n
  simp only [A227241, Nat.add_sub_cancel, A227241.P9386236568242282232.f1, A227241.P9386236568242282232.a, A227241.P17641002002959188226.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A227241

/-! ## A227241.P6193995505709643493

`A000217(A074400(n+1))`
-/

namespace A227241.P6193995505709643493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A074400 (n + 1)).toNat

end

end A227241.P6193995505709643493

namespace A227241

/-- `A000217(A074400(n+1))` -/
def P6193995505709643493.Spec : Prop :=
  ∀ n, P6193995505709643493.a n = A227241 (n + 1)

end A227241

/-! ## A227241.P13330206647086702706

`A000217(2*A000203(n+1))`
-/

namespace A227241.P13330206647086702706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * A000203 (n + 1)).toNat

end

end A227241.P13330206647086702706

namespace A227241

/-- `A000217(2*A000203(n+1))` -/
def P13330206647086702706.Spec : Prop :=
  ∀ n, P13330206647086702706.a n = A227241 (n + 1)

end A227241

/-! ## A227241.P13209152065317220474

`A000217(A146076(2*(n+1)))`
-/

namespace A227241.P13209152065317220474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A146076 (2 * (n + 1))).toNat

end

end A227241.P13209152065317220474

namespace A227241

/-- `A000217(A146076(2*(n+1)))` -/
def P13209152065317220474.Spec : Prop :=
  ∀ n, P13209152065317220474.a n = A227241 (n + 1)

end A227241

/-! ## A227241.P11410489533261417007

`A000217(∑[2*A340793(n+1)])`
-/

namespace A227241.P11410489533261417007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A227241.P11410489533261417007

namespace A227241

/-- `A000217(∑[2*A340793(n+1)])` -/
def P11410489533261417007.Spec : Prop :=
  ∀ n, P11410489533261417007.a n = A227241 (n + 1)

end A227241

/-! ## A227241.P9065033004554079728

`A000217(2*A245092(2*n+1))`
-/

namespace A227241.P9065033004554079728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * A245092 (2 * n + 1)).toNat

end

end A227241.P9065033004554079728

namespace A227241

/-- `A000217(2*A245092(2*n+1))` -/
def P9065033004554079728.Spec : Prop :=
  ∀ n, P9065033004554079728.a n = A227241 (n + 1)

end A227241

/-! ## A227241.P9145453600237809802

`A000217(2*A262610(2*n+1))`
-/

namespace A227241.P9145453600237809802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * A262610 (2 * n + 1)).toNat

end

end A227241.P9145453600237809802

namespace A227241

/-- `A000217(2*A262610(2*n+1))` -/
def P9145453600237809802.Spec : Prop :=
  ∀ n, P9145453600237809802.a n = A227241 (n + 1)

end A227241

/-! ## A227241.P14638961681589495915

`A000217(2*A326065(2*(n+1)))`
-/

namespace A227241.P14638961681589495915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * A326065 (2 * (n + 1))).toNat

end

end A227241.P14638961681589495915

namespace A227241

/-- `A000217(2*A326065(2*(n+1)))` -/
def P14638961681589495915.Spec : Prop :=
  ∀ n, P14638961681589495915.a n = A227241 (n + 1)

end A227241

/-! ## A227241.P17390735069585315253

`A000217(A000203(n+1)+A000203(n+1))`
-/

namespace A227241.P17390735069585315253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000203 (n + 1) + A000203 (n + 1)).toNat

end

end A227241.P17390735069585315253

namespace A227241

/-- `A000217(A000203(n+1)+A000203(n+1))` -/
def P17390735069585315253.Spec : Prop :=
  ∀ n, P17390735069585315253.a n = A227241 (n + 1)

end A227241

/-! ## A227241.P16797110718133937263

`A014105(∑{d}[n+1, #])`
-/

namespace A227241.P16797110718133937263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A227241.P16797110718133937263

namespace A227241

/-- `A014105(∑{d}[n+1, #])` -/
def P16797110718133937263.Spec : Prop :=
  ∀ n, P16797110718133937263.a n = A227241 (n + 1)

theorem P16797110718133937263.correct : P16797110718133937263.Spec := by
  intro n
  simp only [A227241, Nat.add_sub_cancel, A227241.P16797110718133937263.f1, A227241.P16797110718133937263.a, A227241.P17641002002959188226.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A014105, A014105.P182524374866796289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A227241

/-! ## A227241.P2260521816000062214

`A014105(A245092(2*n+1))`
-/

namespace A227241.P2260521816000062214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (A245092 (2 * n + 1)).toNat

end

end A227241.P2260521816000062214

namespace A227241

/-- `A014105(A245092(2*n+1))` -/
def P2260521816000062214.Spec : Prop :=
  ∀ n, P2260521816000062214.a n = A227241 (n + 1)

end A227241

/-! ## A227241.P15589570144829429592

`A182455(A002659(n+1))`
-/

namespace A227241.P15589570144829429592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182455 (A002659 (n + 1)).toNat

end

end A227241.P15589570144829429592

namespace A227241

/-- `A182455(A002659(n+1))` -/
def P15589570144829429592.Spec : Prop :=
  ∀ n, P15589570144829429592.a n = A227241 (n + 1)

end A227241

/-!
# A227242: Decimal expansion of (e^gamma - 1)/e^gamma.

The programs for A227242, there is no canonical definition to state claims against.
-/

/-! ## A227242.P9548042079676266194

`9-A080130(n)`
-/

namespace A227242.P9548042079676266194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A080130 n

end

end A227242.P9548042079676266194

/-!
# A227243: Powerful numbers n such that n/phi(n) >= e^gamma*log log n.

The programs for A227243, there is no canonical definition to state claims against.
-/

/-! ## A227243.P13566207950080133724

`∩[A001694(n+1), A100966(n+1)]`
-/

namespace A227243.P13566207950080133724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227243.P13566207950080133724

/-! ## A227243.P217269006515888150

`∩[A100966(n+1), A353485(n+1)]`
-/

namespace A227243.P217269006515888150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227243.P217269006515888150

/-! ## A227243.P4583020761984256136

`∩[A100966(n+1), A224866(n+1)-1]`
-/

namespace A227243.P4583020761984256136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227243.P4583020761984256136

/-! ## A227243.P5345983158444627924

`∩[A100966(n+1), A076446(n)+a(n-1)]` with `a(0)=1`
-/

namespace A227243.P5345983158444627924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A076446 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227243.P5345983158444627924

/-! ## A227243.P5003545658366188084

`∩[A084371(n+1)*A306458(n+1), A100966(n+1)]`
-/

namespace A227243.P5003545658366188084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084371 (n + 1) * A306458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227243.P5003545658366188084

/-!
# A227245: Numbers k such that 10^k - 1 divides 10^(10^(10^100)) - 10.

The programs for A227245, there is no canonical definition to state claims against.
-/

/-! ## A227245.P9903221876219655479

`eq[ceil(sin(n)²), A067007(n+1)]+1`
-/

namespace A227245.P9903221876219655479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A227245.P9903221876219655479

/-! ## A227245.P7006443817185824870

`∪[A027893(n+1), A111211(n+1)]`
-/

namespace A227245.P7006443817185824870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A227245.P7006443817185824870

/-! ## A227245.P15477361412692038542

`∪[A027895(n+1), A111211(n+1)]`
-/

namespace A227245.P15477361412692038542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A227245.P15477361412692038542

/-! ## A227245.P4912545103345798830

`∪[A027893(n+1), A173394(n+1)]`
-/

namespace A227245.P4912545103345798830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A227245.P4912545103345798830

/-! ## A227245.P4350191117708571703

`∪[A027895(n+1), A173394(n+1)]`
-/

namespace A227245.P4350191117708571703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A227245.P4350191117708571703

/-!
# A227250: Number of binary labeled trees with two-colored vertices that have n leaves and avoid the easiest to avoid 6-pattern set.

The programs for A227250, there is no canonical definition to state claims against.
-/

/-! ## A227250.P10139499768598251906

`A258969(∑{digits}[n, #])`
-/

namespace A227250.P10139499768598251906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258969 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A227250.P10139499768598251906

/-! ## A227250.P14317542176312974172

`A258969(∏{digits}[n, #])`
-/

namespace A227250.P14317542176312974172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258969 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A227250.P14317542176312974172

/-! ## A227250.P15031295040686491039

`A258969(n)+char[7]`
-/

namespace A227250.P15031295040686491039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258969 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A227250.P15031295040686491039

/-!
# A227251: Number of n X n binary arrays indicating whether each 2X2 subblock of a larger binary array has lexicographically nondecreasing rows and columns, for some larger (n+1)X(n+1) binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227251, there is no canonical definition to state claims against.
-/

/-! ## A227251.P15746344640260663513

`A227256(∑[4*n]+1)`
-/

namespace A227251.P15746344640260663513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227256 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A227251.P15746344640260663513

/-! ## A227251.P3256677291077282016

`record[A227256(A330613(n+1))]`
-/

namespace A227251.P3256677291077282016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227256 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227251.P3256677291077282016

/-! ## A227251.P8305462152569462121

`A227256(A001844(n))+char[10]`
-/

namespace A227251.P8305462152569462121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227256 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A227251.P8305462152569462121

/-! ## A227251.P17388299657135970996

`record[A227256(Δ[A079824(n+1)])]`
-/

namespace A227251.P17388299657135970996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227256 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227251.P17388299657135970996

/-!
# A227252: Number of n X 2 binary arrays indicating whether each 2 X 2 subblock of a larger binary array has lexicographically nondecreasing rows and columns, for some larger (n+1) X 3 binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227252, the canonical program `A227252.P15475645311993057881` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227252 has offset 1).

The definition of A227252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227252.P17054392445816682518

`A054977(n)+∑[∑[A046127(n)]]`
-/

namespace A227252.P17054392445816682518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046127 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227252.P17054392445816682518

namespace A227252

/-- `A054977(n)+∑[∑[A046127(n)]]` -/
def P17054392445816682518.Spec : Prop :=
  ∀ n, P17054392445816682518.a n = A227252 (n + 1)

end A227252

/-! ## A227252.P15475645311993057881

`record[A059174(n)+1-2*n]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A227252

/-- `record[A059174(n)+1-2*n]` -/
def P15475645311993057881.Spec : Prop :=
  ∀ n, P15475645311993057881.a n = A227252 (n + 1)

theorem P15475645311993057881.correct : P15475645311993057881.Spec := by
  intro n
  simp only [A227252, Nat.add_sub_cancel]

end A227252

/-! ## A227252.P11425504776707401360

`record[A165747(n)+A059174(n)]`
-/

namespace A227252.P11425504776707401360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165747 n + A059174 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227252.P11425504776707401360

namespace A227252

/-- `record[A165747(n)+A059174(n)]` -/
def P11425504776707401360.Spec : Prop :=
  ∀ n, P11425504776707401360.a n = A227252 (n + 1)

end A227252

/-! ## A227252.P17808296804223960015

`A059174(n+2)-A163985(n+2)`
-/

namespace A227252.P17808296804223960015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059174 (n + 2) - A163985 (n + 2)

end

end A227252.P17808296804223960015

namespace A227252

/-- `A059174(n+2)-A163985(n+2)` -/
def P17808296804223960015.Spec : Prop :=
  ∀ n, P17808296804223960015.a n = A227252 (n + 1)

end A227252

/-! ## A227252.P17349971678227363000

`A059174(n+2)-record[A111701(n+4)]`
-/

namespace A227252.P17349971678227363000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111701 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059174 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227252.P17349971678227363000

namespace A227252

/-- `A059174(n+2)-record[A111701(n+4)]` -/
def P17349971678227363000.Spec : Prop :=
  ∀ n, P17349971678227363000.a n = A227252 (n + 1)

end A227252

/-!
# A227253: Number of nX3 binary arrays indicating whether each 2X2 subblock of a larger binary array has lexicographically nondecreasing rows and columns, for some larger (n+1)X4 binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227253, there is no canonical definition to state claims against.
-/

/-! ## A227253.P621203997431683383

`A227256(∑[n+2]+4)`
-/

namespace A227253.P621203997431683383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227256 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A227253.P621203997431683383

/-! ## A227253.P12193613587331122682

`A227256(A167614(n+1))+char[25]`
-/

namespace A227253.P12193613587331122682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227256 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A227253.P12193613587331122682

/-! ## A227253.P1798533220112732661

`record[A103452(n)*A227256(n+4)]`
-/

namespace A227253.P1798533220112732661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A227256 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227253.P1798533220112732661

/-! ## A227253.P9051391168298723989

`A227256(A000217(n+2)+3)+char[15]`
-/

namespace A227253.P9051391168298723989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227256 (A000217 (n + 2) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A227253.P9051391168298723989

/-! ## A227253.P6844309098553040523

`A178489(2*n+1)*A227256(A167614(n+1))`
-/

namespace A227253.P6844309098553040523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (2 * n + 1) * A227256 (A167614 (n + 1)).toNat

end

end A227253.P6844309098553040523

/-!
# A227254: Number of nX4 binary arrays indicating whether each 2X2 subblock of a larger binary array has lexicographically nondecreasing rows and columns, for some larger (n+1)X5 binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227254, there is no canonical definition to state claims against.
-/

/-! ## A227254.P9661326503761855017

`A227256(∑[n+3]+7)`
-/

namespace A227254.P9661326503761855017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227256 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A227254.P9661326503761855017

/-!
# A227255: Number of n X 5 binary arrays indicating whether each 2 X 2 subblock of a larger binary array has lexicographically nondecreasing rows and columns, for some larger (n+1) X 6 binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227255, there is no canonical definition to state claims against.
-/

/-! ## A227255.P18362748580807154535

`A227256(A374005(n+1))`
-/

namespace A227255.P18362748580807154535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227256 (A374005 (n + 1)).toNat

end

end A227255.P18362748580807154535

/-! ## A227255.P12593100393693934376

`A227256(A077169(n+5))`
-/

namespace A227255.P12593100393693934376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227256 (A077169 (n + 5)).toNat

end

end A227255.P12593100393693934376

/-! ## A227255.P17188109080671537828

`A227256(A155212(n)+13)`
-/

namespace A227255.P17188109080671537828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227256 (A155212 n + 13).toNat

end

end A227255.P17188109080671537828

/-! ## A227255.P14401652480692749999

`A227256(A056000(n)+15)`
-/

namespace A227255.P14401652480692749999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227256 (A056000 n + 15).toNat

end

end A227255.P14401652480692749999

/-! ## A227255.P14108163032125443473

`A227256(eq[7, A066657(n)])`
-/

namespace A227255.P14108163032125443473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227255.P14108163032125443473

/-!
# A227256: T(n,k)=Number of nXk binary arrays indicating whether each 2X2 subblock of a larger binary array has lexicographically nondecreasing rows and columns, for some larger (n+1)X(k+1) binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227256, there is no canonical definition to state claims against.
-/

/-! ## A227256.P10952463478087642657

`A057944(n)+A003173(A132731(n))-A319410(A132731(n))`
-/

namespace A227256.P10952463478087642657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A003173 (A132731 n).toNat - A319410 (A132731 n).toNat

end

end A227256.P10952463478087642657

/-! ## A227256.P3794752149803678639

`A296834(n+1)-A351202(A032020(n))-A319410(A132731(n))`
-/

namespace A227256.P3794752149803678639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (n + 1) - A351202 (A032020 n).toNat - A319410 (A132731 n).toNat

end

end A227256.P3794752149803678639

/-! ## A227256.P485034146627918472

`A296834(n+1)-A000034(A154382(n+1))-A319410(A132731(n))`
-/

namespace A227256.P485034146627918472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (n + 1) - A000034 (A154382 (n + 1)).toNat - A319410 (A132731 n).toNat

end

end A227256.P485034146627918472

/-! ## A227256.P4341062659184328016

`A204553(A223440(n+1))-A007318(A193739(n))-A319410(A132731(n))`
-/

namespace A227256.P4341062659184328016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204553 (A223440 (n + 1)).toNat - A007318 (A193739 n).toNat - A319410 (A132731 n).toNat

end

end A227256.P4341062659184328016

/-!
# A227257: Number of Hamiltonian circuits in a 2n X 2n square lattice of nodes, reduced for symmetry, where the orbits under the symmetry group of the square, D4, have 4 elements.

The programs for A227257, there is no canonical definition to state claims against.
-/

/-! ## A227257.P12827238582625764388

`A237429(n+1)+A237430(n+1)`
-/

namespace A227257.P12827238582625764388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237429 (n + 1) + A237430 (n + 1)

end

end A227257.P12827238582625764388

/-! ## A227257.P9506369604349188751

`A237430(n+1)+A237429(A216556(n))`
-/

namespace A227257.P9506369604349188751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237430 (n + 1) + A237429 (A216556 n).toNat

end

end A227257.P9506369604349188751

/-! ## A227257.P13261513402809563906

`A237430(n+1)+(A238816(n+1)-A238818(n+1))/2`
-/

namespace A227257.P13261513402809563906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237430 (n + 1) : ℚ) + (A238816 (n + 1) - A238818 (n + 1) : ℚ) / 2

end

end A227257.P13261513402809563906

/-! ## A227257.P10377426509530630374

`A237430(n+1)+A237429(A008816(n))`
-/

namespace A227257.P10377426509530630374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237430 (n + 1) + A237429 (A008816 n).toNat

end

end A227257.P10377426509530630374

/-!
# A227258: Number of n X n 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X(n+1) binary array having a sum of two or less, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227258, there is no canonical definition to state claims against.
-/

/-! ## A227258.P3282117092403448021

`A227263(∑[4*n]+1)`
-/

namespace A227258.P3282117092403448021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227263 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A227258.P3282117092403448021

/-! ## A227258.P15849925669637060805

`∑{digits}[n, A227263(A001844(#))]`
-/

namespace A227258.P15849925669637060805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A227263 (A001844 x).toNat).sum

end

end A227258.P15849925669637060805

/-! ## A227258.P11197221011076887698

`record[A003982(n)*A227263(n+1)]`
-/

namespace A227258.P11197221011076887698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A227263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227258.P11197221011076887698

/-!
# A227259: Number of n X 2 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 3 binary array having a sum of two or less, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227259, the canonical program `A227259.P8141620401776050673` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227259 has offset 1).

The definition of A227259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227259.P8141620401776050673

`∑[∑[∑[n+2]]-n]+1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227259

/-- `∑[∑[∑[n+2]]-n]+1` -/
def P8141620401776050673.Spec : Prop :=
  ∀ n, P8141620401776050673.a n = A227259 (n + 1)

theorem P8141620401776050673.correct : P8141620401776050673.Spec := by
  intro n
  simp only [A227259, Nat.add_sub_cancel]

end A227259

/-! ## A227259.P17878128283198197136

`∑[A008778(n)+C(2, C(2, n²))]`
-/

namespace A227259.P17878128283198197136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n + (Nat.choose 2 (Nat.choose 2 (n ^ 2)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227259.P17878128283198197136

namespace A227259

/-- `∑[A008778(n)+C(2, C(2, n²))]` -/
def P17878128283198197136.Spec : Prop :=
  ∀ n, P17878128283198197136.a n = A227259 (n + 1)

end A227259

/-! ## A227259.P8491712241870151985

`∑[A014206(n)+A003600(n)]`
-/

namespace A227259.P8491712241870151985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n + A003600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227259.P8491712241870151985

namespace A227259

/-- `∑[A014206(n)+A003600(n)]` -/
def P8491712241870151985.Spec : Prop :=
  ∀ n, P8491712241870151985.a n = A227259 (n + 1)

end A227259

/-! ## A227259.P5452651346050365696

`∑[A054977(n)+A008778(n)]`
-/

namespace A227259.P5452651346050365696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227259.P5452651346050365696

namespace A227259

/-- `∑[A054977(n)+A008778(n)]` -/
def P5452651346050365696.Spec : Prop :=
  ∀ n, P5452651346050365696.a n = A227259 (n + 1)

end A227259

/-! ## A227259.P18072983428036185567

`∑[A074742(n)+A027379(n)]`
-/

namespace A227259.P18072983428036185567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074742 n + A027379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227259.P18072983428036185567

namespace A227259

/-- `∑[A074742(n)+A027379(n)]` -/
def P18072983428036185567.Spec : Prop :=
  ∀ n, P18072983428036185567.a n = A227259 (n + 1)

end A227259

/-! ## A227259.P15419647751461877931

`∑[A008778(n)+A000038(n)!]`
-/

namespace A227259.P15419647751461877931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n + (Nat.factorial (A000038 n).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227259.P15419647751461877931

namespace A227259

/-- `∑[A008778(n)+A000038(n)!]` -/
def P15419647751461877931.Spec : Prop :=
  ∀ n, P15419647751461877931.a n = A227259 (n + 1)

end A227259

/-! ## A227259.P7378544269565531168

`∑[A057428(n)+A027965(n+2)]`
-/

namespace A227259.P7378544269565531168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A027965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227259.P7378544269565531168

namespace A227259

/-- `∑[A057428(n)+A027965(n+2)]` -/
def P7378544269565531168.Spec : Prop :=
  ∀ n, P7378544269565531168.a n = A227259 (n + 1)

end A227259

/-! ## A227259.P14710886341122259250

`∑[∑[A027379(n)]+A028310(n)+1]`
-/

namespace A227259.P14710886341122259250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (A028310 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227259.P14710886341122259250

namespace A227259

/-- `∑[∑[A027379(n)]+A028310(n)+1]` -/
def P14710886341122259250.Spec : Prop :=
  ∀ n, P14710886341122259250.a n = A227259 (n + 1)

end A227259

/-! ## A227259.P1933709422866373721

`∑[A008778(n)+gcd(2, A000040(n+1))]`
-/

namespace A227259.P1933709422866373721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n + (Int.gcd 2 (A000040 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227259.P1933709422866373721

namespace A227259

/-- `∑[A008778(n)+gcd(2, A000040(n+1))]` -/
def P1933709422866373721.Spec : Prop :=
  ∀ n, P1933709422866373721.a n = A227259 (n + 1)

end A227259

/-! ## A227259.P1784968009014642244

`∑[A008778(n)+A000041(C(2, n+1))]`
-/

namespace A227259.P1784968009014642244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n + A000041 (Nat.choose 2 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227259.P1784968009014642244

namespace A227259

/-- `∑[A008778(n)+A000041(C(2, n+1))]` -/
def P1784968009014642244.Spec : Prop :=
  ∀ n, P1784968009014642244.a n = A227259 (n + 1)

end A227259

/-! ## A227259.P7547032607415788637

`∑[A000124(A000007(n)+n)+C(n+3, 3)]`
-/

namespace A227259.P7547032607415788637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A000007 n + (n : ℤ)).toNat + (Nat.choose (n + 3) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227259.P7547032607415788637

namespace A227259

/-- `∑[A000124(A000007(n)+n)+C(n+3, 3)]` -/
def P7547032607415788637.Spec : Prop :=
  ∀ n, P7547032607415788637.a n = A227259 (n + 1)

end A227259

/-! ## A227259.P3727497663224307530

`∑[A008778(n)+A000034(A001316(n))]`
-/

namespace A227259.P3727497663224307530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n + A000034 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227259.P3727497663224307530

namespace A227259

/-- `∑[A008778(n)+A000034(A001316(n))]` -/
def P3727497663224307530.Spec : Prop :=
  ∀ n, P3727497663224307530.a n = A227259 (n + 1)

end A227259

/-! ## A227259.P3307551091040860006

`Δ[A027928(n+3)+A006007(n)]`
-/

namespace A227259.P3307551091040860006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027928 (n + 3) + A006007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227259.P3307551091040860006

namespace A227259

/-- `Δ[A027928(n+3)+A006007(n)]` -/
def P3307551091040860006.Spec : Prop :=
  ∀ n, P3307551091040860006.a n = A227259 (n + 1)

end A227259

/-! ## A227259.P13064171657402956067

`Δ[A027967(n+3)-A000124(n)]`
-/

namespace A227259.P13064171657402956067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027967 (n + 3) - A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227259.P13064171657402956067

namespace A227259

/-- `Δ[A027967(n+3)-A000124(n)]` -/
def P13064171657402956067.Spec : Prop :=
  ∀ n, P13064171657402956067.a n = A227259 (n + 1)

end A227259

/-! ## A227259.P7568113515623756039

`∑[A008778(n)+A014963(2*A000040(n+1))]`
-/

namespace A227259.P7568113515623756039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n + A014963 (2 * A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227259.P7568113515623756039

namespace A227259

/-- `∑[A008778(n)+A014963(2*A000040(n+1))]` -/
def P7568113515623756039.Spec : Prop :=
  ∀ n, P7568113515623756039.a n = A227259 (n + 1)

end A227259

/-! ## A227259.P13746132923816878178

`∑[A014963(A001749(n+1))+A008778(n)]`
-/

namespace A227259.P13746132923816878178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001749 (n + 1)).toNat + A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227259.P13746132923816878178

namespace A227259

/-- `∑[A014963(A001749(n+1))+A008778(n)]` -/
def P13746132923816878178.Spec : Prop :=
  ∀ n, P13746132923816878178.a n = A227259 (n + 1)

end A227259

/-!
# A227260: Number of nX3 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X4 binary array having a sum of two or less, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227260, there is no canonical definition to state claims against.
-/

/-! ## A227260.P16505581773297943680

`A227263(∑[n+2]+4)`
-/

namespace A227260.P16505581773297943680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227263 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A227260.P16505581773297943680

/-! ## A227260.P9486603186316206251

`lcm((-1)^n, A227263(A167614(n+1)))`
-/

namespace A227260.P9486603186316206251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A227263 (A167614 (n + 1)).toNat)

end

end A227260.P9486603186316206251

/-! ## A227260.P16562964672276889473

`A227263(A167614(n+1))+A025466(n)`
-/

namespace A227260.P16562964672276889473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227263 (A167614 (n + 1)).toNat + A025466 n

end

end A227260.P16562964672276889473

/-! ## A227260.P7927839175672737797

`A227263(A167614(n+1))*A304042(n)`
-/

namespace A227260.P7927839175672737797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227263 (A167614 (n + 1)).toNat * A304042 n

end

end A227260.P7927839175672737797

/-! ## A227260.P8916907942287227594

`A227263(A167614(n+1))%A017597(n)`
-/

namespace A227260.P8916907942287227594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227263 (A167614 (n + 1)).toNat) (A017597 n)

end

end A227260.P8916907942287227594

/-!
# A227261: Number of n X 4 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 5 binary array having a sum of two or less, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227261, there is no canonical definition to state claims against.
-/

/-! ## A227261.P6642990338884723907

`A227263(∑[n+3]+7)`
-/

namespace A227261.P6642990338884723907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227263 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A227261.P6642990338884723907

/-! ## A227261.P5613395257881798019

`A184318(n+1)*A227263(A374004(n+1))`
-/

namespace A227261.P5613395257881798019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (n + 1) * A227263 (A374004 (n + 1)).toNat

end

end A227261.P5613395257881798019

/-! ## A227261.P14467091080033146919

`A227263(A374004(n+1))%A125910(n+1)`
-/

namespace A227261.P14467091080033146919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227263 (A374004 (n + 1)).toNat) (A125910 (n + 1))

end

end A227261.P14467091080033146919

/-!
# A227262: Number of nX5 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X6 binary array having a sum of two or less, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227262, there is no canonical definition to state claims against.
-/

/-! ## A227262.P9409491675737890592

`A227263(A374005(n+1))`
-/

namespace A227262.P9409491675737890592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227263 (A374005 (n + 1)).toNat

end

end A227262.P9409491675737890592

/-! ## A227262.P15164177617969560569

`A227263(A167499(n+3))`
-/

namespace A227262.P15164177617969560569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227263 (A167499 (n + 3)).toNat

end

end A227262.P15164177617969560569

/-! ## A227262.P18114921031968486058

`A227263(A155212(n)+13)`
-/

namespace A227262.P18114921031968486058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227263 (A155212 n + 13).toNat

end

end A227262.P18114921031968486058

/-! ## A227262.P4044597325606131630

`A227263(A056000(n)+15)`
-/

namespace A227262.P4044597325606131630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227263 (A056000 n + 15).toNat

end

end A227262.P4044597325606131630

/-! ## A227262.P10914712448159989240

`A227263(eq[7, A066657(n)])`
-/

namespace A227262.P10914712448159989240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227262.P10914712448159989240

/-!
# A227263: T(n,k)=Number of nXk 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X(k+1) binary array having a sum of two or less, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227263, there is no canonical definition to state claims against.
-/

/-! ## A227263.P1520183009537774842

`A320230(A186753(n)+1)`
-/

namespace A227263.P1520183009537774842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320230 (A186753 n + 1).toNat

end

end A227263.P1520183009537774842

/-! ## A227263.P11057910653526980406

`A342526(A186753(n)+1)`
-/

namespace A227263.P11057910653526980406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342526 (A186753 n + 1).toNat

end

end A227263.P11057910653526980406

/-! ## A227263.P7023814742295883390

`A167976(A135835(n+1)+1)`
-/

namespace A227263.P7023814742295883390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167976 (A135835 (n + 1) + 1).toNat

end

end A227263.P7023814742295883390

/-! ## A227263.P16238241144276002610

`A167976(A177696(n+1)+1)`
-/

namespace A227263.P16238241144276002610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167976 (A177696 (n + 1) + 1).toNat

end

end A227263.P16238241144276002610

/-! ## A227263.P8034937350059449254

`A135835(n+1)-A030203(A241171(n+1))`
-/

namespace A227263.P8034937350059449254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135835 (n + 1) - A030203 (A241171 (n + 1)).toNat

end

end A227263.P8034937350059449254

/-!
# A227264: Number of n X n 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X(n+1) binary array having a sum of three or less, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227264, there is no canonical definition to state claims against.
-/

/-! ## A227264.P14118091922695567919

`A227269(∑[4*n]+1)`
-/

namespace A227264.P14118091922695567919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227269 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A227264.P14118091922695567919

/-! ## A227264.P13913426000655901742

`record[A227269(Δ[A235355(n)])]`
-/

namespace A227264.P13913426000655901742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227269 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227264.P13913426000655901742

/-! ## A227264.P3302005666471939465

`A227269(A001844(n))+char[9]`
-/

namespace A227264.P3302005666471939465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227269 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A227264.P3302005666471939465

/-! ## A227264.P16984878219073735644

`record[A003982(n)*A227269(n+1)]`
-/

namespace A227264.P16984878219073735644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A227269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227264.P16984878219073735644

/-! ## A227264.P13679743673514081863

`record[gcd(A204016(n+1), A227269(n+1))]`
-/

namespace A227264.P13679743673514081863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204016 (n + 1)) (A227269 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227264.P13679743673514081863

/-!
# A227265: Number of n X 2 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 3 binary array having a sum of three or less, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227265, the canonical program `A227265.P6438190362626995416` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227265 has offset 1).

The definition of A227265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227265.P6438190362626995416

`∑[∑[∑[n]]+4]-1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227265

/-- `∑[∑[∑[n]]+4]-1` -/
def P6438190362626995416.Spec : Prop :=
  ∀ n, P6438190362626995416.a n = A227265 (n + 1)

theorem P6438190362626995416.correct : P6438190362626995416.Spec := by
  intro n
  simp only [A227265, Nat.add_sub_cancel]

end A227265

/-! ## A227265.P2750015776024957223

`∑[∑[n²-a(n-1)]]` with `a(0)=3, a(1)=2, a(2)=3`
-/

namespace A227265.P2750015776024957223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 3] fun n f2 =>
  (n ^ 2 : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227265.P2750015776024957223

namespace A227265

/-- `∑[∑[n²-a(n-1)]]` -/
def P2750015776024957223.Spec : Prop :=
  ∀ n, P2750015776024957223.a n = A227265 (n + 1)

end A227265

/-! ## A227265.P2963827923690423523

`floor(n-∑[a(n-1)-∑[n]])` with `a(0)=-3`

`floor` is left out, it is the identity on integers.
-/

namespace A227265.P2963827923690423523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-3] fun n f1 =>
  f1 (n - 1) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227265.P2963827923690423523

namespace A227265

/-- `floor(n-∑[a(n-1)-∑[n]])` -/
def P2963827923690423523.Spec : Prop :=
  ∀ n, P2963827923690423523.a n = A227265 (n + 1)

end A227265

/-! ## A227265.P16276526657789192723

`∑[∑[abs(A201163(n))+1]]`
-/

namespace A227265.P16276526657789192723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A201163 n| + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227265.P16276526657789192723

namespace A227265

/-- `∑[∑[abs(A201163(n))+1]]` -/
def P16276526657789192723.Spec : Prop :=
  ∀ n, P16276526657789192723.a n = A227265 (n + 1)

end A227265

/-! ## A227265.P7710612792002657400

`∑[A057427(n)+∑[∑[n]]+3]`
-/

namespace A227265.P7710612792002657400
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ((∑ j ∈ Finset.range (n + 1), f2 j + 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227265.P7710612792002657400

namespace A227265

/-- `∑[A057427(n)+∑[∑[n]]+3]` -/
def P7710612792002657400.Spec : Prop :=
  ∀ n, P7710612792002657400.a n = A227265 (n + 1)

end A227265

/-! ## A227265.P16015238031904970814

`Δ[A154322(n)+A001105(n)]`
-/

namespace A227265.P16015238031904970814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154322 n + A001105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227265.P16015238031904970814

namespace A227265

/-- `Δ[A154322(n)+A001105(n)]` -/
def P16015238031904970814.Spec : Prop :=
  ∀ n, P16015238031904970814.a n = A227265 (n + 1)

end A227265

/-! ## A227265.P3351585580171518974

`∑[∑[A107985(a(n-1))]]` with `a(0)=3, a(1)=2`
-/

namespace A227265.P3351585580171518974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f2 =>
  A107985 (f2 (n - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227265.P3351585580171518974

namespace A227265

/-- `∑[∑[A107985(a(n-1))]]` -/
def P3351585580171518974.Spec : Prop :=
  ∀ n, P3351585580171518974.a n = A227265 (n + 1)

end A227265

/-!
# A227266: Number of n X 3 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 4 binary array having a sum of three or less, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227266, there is no canonical definition to state claims against.
-/

/-! ## A227266.P17506435072720939430

`A227269(∑[n+2]+4)`
-/

namespace A227266.P17506435072720939430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227269 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A227266.P17506435072720939430

/-! ## A227266.P7614013403338536385

`A227269(A000124(n+2)+2)+char[17]`
-/

namespace A227266.P7614013403338536385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227269 (A000124 (n + 2) + 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A227266.P7614013403338536385

/-! ## A227266.P10786147651832759526

`record[gcd(A227269(n+4), A302670(n+1))]`
-/

namespace A227266.P10786147651832759526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A227269 (n + 4)) (A302670 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227266.P10786147651832759526

/-! ## A227266.P9092971012547426220

`A227269(A167614(n+1))+A011745(n)`
-/

namespace A227266.P9092971012547426220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227269 (A167614 (n + 1)).toNat + A011745 n

end

end A227266.P9092971012547426220

/-! ## A227266.P15927790117218251532

`A227269(A167614(n+1))+A025438(n)`
-/

namespace A227266.P15927790117218251532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227269 (A167614 (n + 1)).toNat + A025438 n

end

end A227266.P15927790117218251532

/-!
# A227267: Number of n X 4 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 5 binary array having a sum of three or less, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227267, there is no canonical definition to state claims against.
-/

/-! ## A227267.P9785656398372555301

`A227269(∑[n+3]+7)`
-/

namespace A227267.P9785656398372555301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227269 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A227267.P9785656398372555301

/-! ## A227267.P1489365881638293026

`or(char[3], A227269(A167614(n+2)+1))`
-/

namespace A227267.P1489365881638293026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A227269 (A167614 (n + 2) + 1).toNat)

end

end A227267.P1489365881638293026

/-! ## A227267.P13114303802271553065

`A227269(A145018(n+4))+A025444(n)`
-/

namespace A227267.P13114303802271553065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227269 (A145018 (n + 4)).toNat + A025444 n

end

end A227267.P13114303802271553065

/-! ## A227267.P10219701377327469976

`A007318(C(n, 2))*A227269(A167614(n+2)+1)`
-/

namespace A227267.P10219701377327469976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A227269 (A167614 (n + 2) + 1).toNat

end

end A227267.P10219701377327469976

/-! ## A227267.P18433831326008986909

`A007318(floor(n/6))*A227269(A167614(n+2)+1)`
-/

namespace A227267.P18433831326008986909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 6⌋.toNat * A227269 (A167614 (n + 2) + 1).toNat

end

end A227267.P18433831326008986909

/-!
# A227268: Number of nX5 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X6 binary array having a sum of three or less, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227268, there is no canonical definition to state claims against.
-/

/-! ## A227268.P11015906762571809259

`A227269(C(n+5, 2)+5)`
-/

namespace A227268.P11015906762571809259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227269 (Nat.choose (n + 5) 2 + 5)

end

end A227268.P11015906762571809259

/-! ## A227268.P15495560782716468540

`A227269(A374005(n+1))`
-/

namespace A227268.P15495560782716468540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227269 (A374005 (n + 1)).toNat

end

end A227268.P15495560782716468540

/-! ## A227268.P13658056837066364408

`A227269(A167499(n+3))`
-/

namespace A227268.P13658056837066364408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227269 (A167499 (n + 3)).toNat

end

end A227268.P13658056837066364408

/-! ## A227268.P10484964515351715002

`A227269(A155212(n)+13)`
-/

namespace A227268.P10484964515351715002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227269 (A155212 n + 13).toNat

end

end A227268.P10484964515351715002

/-! ## A227268.P6131860418150704819

`A227269(A056000(n)+15)`
-/

namespace A227268.P6131860418150704819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227269 (A056000 n + 15).toNat

end

end A227268.P6131860418150704819

/-!
# A227269: T(n,k)=Number of nXk 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X(k+1) binary array having a sum of three or less, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227269, there is no canonical definition to state claims against.
-/

/-! ## A227269.P7232838636290293277

`A329655(n+1)+A003002(A128596(n))`
-/

namespace A227269.P7232838636290293277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329655 (n + 1) + A003002 (A128596 n).toNat

end

end A227269.P7232838636290293277

/-! ## A227269.P14403857420610357232

`A051661(A290632(n+1))`
-/

namespace A227269.P14403857420610357232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051661 (A290632 (n + 1)).toNat

end

end A227269.P14403857420610357232

/-! ## A227269.P9346548867628225942

`A051661(A291543(n+1))`
-/

namespace A227269.P9346548867628225942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051661 (A291543 (n + 1)).toNat

end

end A227269.P9346548867628225942

/-! ## A227269.P15753962220314880008

`A111470(A239849(n+1))`
-/

namespace A227269.P15753962220314880008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111470 (A239849 (n + 1)).toNat

end

end A227269.P15753962220314880008

/-! ## A227269.P374106889099828256

`A168134(A003506(n+1)+1)`
-/

namespace A227269.P374106889099828256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168134 (A003506 (n + 1) + 1).toNat

end

end A227269.P374106889099828256

/-!
# A227270: Numbers m such that Sum_{i= 1..k} 1/d(i) + Product_{i= 1..k} 1/d(i) = 1, where d(i) are the k prime distinct divisors of m.

The programs for A227270, the canonical program `A227270.P54051348116262805` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227270 has offset 1).

The definition of A227270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227270.P54051348116262805

`record[A003557(n+1)*A225821(A225821(n+1))]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A227270

/-- `record[A003557(n+1)*A225821(A225821(n+1))]` -/
def P54051348116262805.Spec : Prop :=
  ∀ n, P54051348116262805.a n = A227270 (n + 1)

theorem P54051348116262805.correct : P54051348116262805.Spec := by
  intro n
  simp only [A227270, Nat.add_sub_cancel]

end A227270

/-! ## A227270.P12195288099800503483

`record[A193267(n+1)/A300330(A225821(n+1))]`
-/

namespace A227270.P12195288099800503483
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193267 (n + 1) : ℚ) / (A300330 (A225821 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227270.P12195288099800503483

namespace A227270

/-- `record[A193267(n+1)/A300330(A225821(n+1))]` -/
def P12195288099800503483.Spec : Prop :=
  ∀ n, P12195288099800503483.a n = (A227270 (n + 1) : ℚ)

end A227270

/-! ## A227270.P1467834693225799029

`∩[A068563(n+1), A229301(n+1)]`
-/

namespace A227270.P1467834693225799029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227270.P1467834693225799029

namespace A227270

/-- `∩[A068563(n+1), A229301(n+1)]` -/
def P1467834693225799029.Spec : Prop :=
  ∀ n, (P1467834693225799029.a n : ℤ) = A227270 (n + 1)

end A227270

/-! ## A227270.P9905416432504588187

`∩[A090778(n+1), A229301(n+1)]`
-/

namespace A227270.P9905416432504588187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227270.P9905416432504588187

namespace A227270

/-- `∩[A090778(n+1), A229301(n+1)]` -/
def P9905416432504588187.Spec : Prop :=
  ∀ n, (P9905416432504588187.a n : ℤ) = A227270 (n + 1)

end A227270

/-! ## A227270.P561835765583395442

`∩[A124240(n+1), A229301(n+1)]`
-/

namespace A227270.P561835765583395442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227270.P561835765583395442

namespace A227270

/-- `∩[A124240(n+1), A229301(n+1)]` -/
def P561835765583395442.Spec : Prop :=
  ∀ n, (P561835765583395442.a n : ℤ) = A227270 (n + 1)

end A227270

/-! ## A227270.P789299224640415404

`∩[A177807(n+1), A229301(n+1)]`
-/

namespace A227270.P789299224640415404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227270.P789299224640415404

namespace A227270

/-- `∩[A177807(n+1), A229301(n+1)]` -/
def P789299224640415404.Spec : Prop :=
  ∀ n, (P789299224640415404.a n : ℤ) = A227270 (n + 1)

end A227270

/-!
# A227273: Expansion of 1/((1-x)*(1-4*x)*(1-10*x)*(1-20*x)*(1-35*x)).

The programs for A227273, there is no canonical definition to state claims against.
-/

/-! ## A227273.P16372608004078229150

`A080250(n)+35*a(n-1)` with `a(0)=1`
-/

namespace A227273.P16372608004078229150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080250 n + 35 * a (n - 1)

end

end A227273.P16372608004078229150

/-! ## A227273.P9795506450493339299

`A080249(A155212(n)+12)`
-/

namespace A227273.P9795506450493339299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080249 (A155212 n + 12).toNat

end

end A227273.P9795506450493339299

/-!
# A227276: Primes p for which p^2 + p - 1 = q*r (q<r) such that q, r, p^2 + q - 1 and p^2 + r - 1 are primes.

The programs for A227276, there is no canonical definition to state claims against.
-/

/-! ## A227276.P1665546122565003596

`A045344(eq[3, A226856(n+1)])`
-/

namespace A227276.P1665546122565003596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227276.P1665546122565003596

/-! ## A227276.P2351581619316702508

`A065091(eq[3, A226856(n+1)])`
-/

namespace A227276.P2351581619316702508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227276.P2351581619316702508

/-! ## A227276.P7227024811381463418

`A000040(eq[3, A226856(n+1)]+1)`
-/

namespace A227276.P7227024811381463418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A227276.P7227024811381463418

/-! ## A227276.P6870384979527739359

`A008578(eq[3, A226856(n+1)]+2)`
-/

namespace A227276.P6870384979527739359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A227276.P6870384979527739359

/-! ## A227276.P16368694723641328489

`A003961(A000040(eq[3, A226856(n+1)]))`
-/

namespace A227276.P16368694723641328489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A227276.P16368694723641328489

/-!
# A227277: G.f.: Sum_{n>=0} x^n * (1+x)^A007814(n), where A007814(n) is the exponent of the highest power of 2 dividing n.

The programs for A227277, there is no canonical definition to state claims against.
-/

/-! ## A227277.P17414002713745288113

`abs(1-A227318(n))+1`
-/

namespace A227277.P17414002713745288113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A227318 n| + 1

end

end A227277.P17414002713745288113

/-! ## A227277.P2892029073440437594

`abs(and(2, A004277(n))-A227318(n))`
-/

namespace A227277.P2892029073440437594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.land 2 (A004277 n) - A227318 n|

end

end A227277.P2892029073440437594

/-! ## A227277.P17636760073776622624

`lcm(1-A227318(n), A020985(n))+1`
-/

namespace A227277.P17636760073776622624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A227318 n) (A020985 n) + 1

end

end A227277.P17636760073776622624

/-! ## A227277.P2999360109819768359

`A227287(A206332(n+1)%A028310(n))`
-/

namespace A227277.P2999360109819768359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227287 (Int.tmod (A206332 (n + 1)) (A028310 n)).toNat

end

end A227277.P2999360109819768359

/-! ## A227277.P10798035814727159618

`and(2, A004277(n))+A227318(n)/(A004442(n)-n)`
-/

namespace A227277.P10798035814727159618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A004277 n) : ℚ) + (A227318 n : ℚ) / (A004442 n - (n : ℤ) : ℚ)

end

end A227277.P10798035814727159618

/-! ## A227277.P503665210120246112

`A227287(A138127(n)%A011782(n))`
-/

namespace A227277.P503665210120246112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227287 (Int.tmod (A138127 n) (A011782 n)).toNat

end

end A227277.P503665210120246112

/-!
# A227278: E.g.f.: T(T(T(x))), where T(x) = -LambertW(-x) is Euler's tree function (A000169).

The programs for A227278, there is no canonical definition to state claims against.
-/

/-! ## A227278.P14297545248187352486

`A274390(∑[n+3]+n+3)`
-/

namespace A227278.P14297545248187352486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274390 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A227278.P14297545248187352486

/-! ## A227278.P16908349255508741852

`record[A274390(abs(A046691(n)))]`
-/

namespace A227278.P16908349255508741852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274390 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227278.P16908349255508741852

/-! ## A227278.P4235362309093271972

`or(A000007(n), A274390(A046691(n+2)))`
-/

namespace A227278.P4235362309093271972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A274390 (A046691 (n + 2)).toNat)

end

end A227278.P4235362309093271972

/-! ## A227278.P11425685774519027827

`A274390(A046691(n+2))+A000007(n+2)`
-/

namespace A227278.P11425685774519027827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274390 (A046691 (n + 2)).toNat + A000007 (n + 2)

end

end A227278.P11425685774519027827

/-! ## A227278.P2128682356241620946

`A274740(A167614(n+2))`
-/

namespace A227278.P2128682356241620946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274740 (A167614 (n + 2)).toNat

end

end A227278.P2128682356241620946

/-!
# A227279: Squares of odd primes and twice squares of odd primes.

The programs for A227279, the canonical program `A227279.P490244624679557073` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227279 has offset 1).

The definition of A227279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227279.P490244624679557073

`∩[A072502(n+1), A359580(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A227279

/-- `∩[A072502(n+1), A359580(n+1)]` -/
def P490244624679557073.Spec : Prop :=
  ∀ n, (P490244624679557073.a n : ℤ) = A227279 (n + 1)

theorem P490244624679557073.correct : P490244624679557073.Spec := by
  intro n
  simp only [A227279, Nat.add_sub_cancel]

end A227279

/-! ## A227279.P3670802829364956138

`∩[A325359(n+1), A359580(n+1)]`
-/

namespace A227279.P3670802829364956138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227279.P3670802829364956138

namespace A227279

/-- `∩[A325359(n+1), A359580(n+1)]` -/
def P3670802829364956138.Spec : Prop :=
  ∀ n, (P3670802829364956138.a n : ℤ) = A227279 (n + 1)

end A227279

/-! ## A227279.P18136872455482556544

`∩[A069562(n+1), A229027(n+1)]`
-/

namespace A227279.P18136872455482556544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227279.P18136872455482556544

namespace A227279

/-- `∩[A069562(n+1), A229027(n+1)]` -/
def P18136872455482556544.Spec : Prop :=
  ∀ n, (P18136872455482556544.a n : ℤ) = A227279 (n + 1)

end A227279

/-! ## A227279.P4339683197589384641

`∩[A072502(n+1), A229027(n+1)]`
-/

namespace A227279.P4339683197589384641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227279.P4339683197589384641

namespace A227279

/-- `∩[A072502(n+1), A229027(n+1)]` -/
def P4339683197589384641.Spec : Prop :=
  ∀ n, (P4339683197589384641.a n : ℤ) = A227279 (n + 1)

end A227279

/-! ## A227279.P8413634473954563214

`∩[A096033(n+1), A229027(n+1)]`
-/

namespace A227279.P8413634473954563214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227279.P8413634473954563214

namespace A227279

/-- `∩[A096033(n+1), A229027(n+1)]` -/
def P8413634473954563214.Spec : Prop :=
  ∀ n, (P8413634473954563214.a n : ℤ) = A227279 (n + 1)

end A227279

/-! ## A227279.P2119191977367574279

`∩[A229027(n+1), A325359(n+1)]`
-/

namespace A227279.P2119191977367574279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227279.P2119191977367574279

namespace A227279

/-- `∩[A229027(n+1), A325359(n+1)]` -/
def P2119191977367574279.Spec : Prop :=
  ∀ n, (P2119191977367574279.a n : ℤ) = A227279 (n + 1)

end A227279

/-! ## A227279.P16484636374793278452

`∩[A229027(n+1), A359580(n+1)]`
-/

namespace A227279.P16484636374793278452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227279.P16484636374793278452

namespace A227279

/-- `∩[A229027(n+1), A359580(n+1)]` -/
def P16484636374793278452.Spec : Prop :=
  ∀ n, (P16484636374793278452.a n : ℤ) = A227279 (n + 1)

end A227279

/-! ## A227279.P2302336254741747671

`∩[A255586(n+1), A359580(n+1)]`
-/

namespace A227279.P2302336254741747671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227279.P2302336254741747671

namespace A227279

/-- `∩[A255586(n+1), A359580(n+1)]` -/
def P2302336254741747671.Spec : Prop :=
  ∀ n, (P2302336254741747671.a n : ℤ) = A227279 (n + 1)

end A227279

/-! ## A227279.P7977443681468327842

`∩[A236386(n+1), A359580(n+1)]`
-/

namespace A227279.P7977443681468327842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227279.P7977443681468327842

namespace A227279

/-- `∩[A236386(n+1), A359580(n+1)]` -/
def P7977443681468327842.Spec : Prop :=
  ∀ n, (P7977443681468327842.a n : ℤ) = A227279 (n + 1)

end A227279

/-! ## A227279.P18123424164949067729

`∩[A072502(n+1), A193305(n+1)]`
-/

namespace A227279.P18123424164949067729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227279.P18123424164949067729

namespace A227279

/-- `∩[A072502(n+1), A193305(n+1)]` -/
def P18123424164949067729.Spec : Prop :=
  ∀ n, (P18123424164949067729.a n : ℤ) = A227279 (n + 1)

end A227279

/-! ## A227279.P5076437484650562765

`∩[A193305(n+1), A359580(n+1)]`
-/

namespace A227279.P5076437484650562765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227279.P5076437484650562765

namespace A227279

/-- `∩[A193305(n+1), A359580(n+1)]` -/
def P5076437484650562765.Spec : Prop :=
  ∀ n, (P5076437484650562765.a n : ℤ) = A227279 (n + 1)

end A227279

/-! ## A227279.P1341521180597439073

`∩[A069562(n+1), A286228(n+1)]`
-/

namespace A227279.P1341521180597439073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227279.P1341521180597439073

namespace A227279

/-- `∩[A069562(n+1), A286228(n+1)]` -/
def P1341521180597439073.Spec : Prop :=
  ∀ n, (P1341521180597439073.a n : ℤ) = A227279 (n + 1)

end A227279

/-! ## A227279.P15775434178070178983

`∩[A072502(n+1), A286228(n+1)]`
-/

namespace A227279.P15775434178070178983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227279.P15775434178070178983

namespace A227279

/-- `∩[A072502(n+1), A286228(n+1)]` -/
def P15775434178070178983.Spec : Prop :=
  ∀ n, (P15775434178070178983.a n : ℤ) = A227279 (n + 1)

end A227279

/-! ## A227279.P8978177286833391416

`∩[A286228(n+1), A325359(n+1)]`
-/

namespace A227279.P8978177286833391416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227279.P8978177286833391416

namespace A227279

/-- `∩[A286228(n+1), A325359(n+1)]` -/
def P8978177286833391416.Spec : Prop :=
  ∀ n, (P8978177286833391416.a n : ℤ) = A227279 (n + 1)

end A227279

/-! ## A227279.P16358624266495416688

`filter[A072502(n+1), A354924(#)]`
-/

namespace A227279.P16358624266495416688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A227279.P16358624266495416688

namespace A227279

/-- `filter[A072502(n+1), A354924(#)]` -/
def P16358624266495416688.Spec : Prop :=
  ∀ n, P16358624266495416688.a n = A227279 (n + 1)

end A227279

/-! ## A227279.P13843366042974095953

`filter[A069562(n+1), A359471(#)]`
-/

namespace A227279.P13843366042974095953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A227279.P13843366042974095953

namespace A227279

/-- `filter[A069562(n+1), A359471(#)]` -/
def P13843366042974095953.Spec : Prop :=
  ∀ n, P13843366042974095953.a n = A227279 (n + 1)

end A227279

/-! ## A227279.P12098098144019276342

`filter[A069562(n+1), A359474(#)]`
-/

namespace A227279.P12098098144019276342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A227279.P12098098144019276342

namespace A227279

/-- `filter[A069562(n+1), A359474(#)]` -/
def P12098098144019276342.Spec : Prop :=
  ∀ n, P12098098144019276342.a n = A227279 (n + 1)

end A227279

/-! ## A227279.P7426386974963466307

`filter[A072502(n+1), A359466(#)]`
-/

namespace A227279.P7426386974963466307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A227279.P7426386974963466307

namespace A227279

/-- `filter[A072502(n+1), A359466(#)]` -/
def P7426386974963466307.Spec : Prop :=
  ∀ n, P7426386974963466307.a n = A227279 (n + 1)

end A227279

/-! ## A227279.P1954935093902020115

`filter[A072502(n+1), A359471(#)]`
-/

namespace A227279.P1954935093902020115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A227279.P1954935093902020115

namespace A227279

/-- `filter[A072502(n+1), A359471(#)]` -/
def P1954935093902020115.Spec : Prop :=
  ∀ n, P1954935093902020115.a n = A227279 (n + 1)

end A227279

/-!
# A227281: First primes of arithmetic progressions of 5 primes each with the common difference 30.

The programs for A227281, there is no canonical definition to state claims against.
-/

/-! ## A227281.P14380143327369756532

`A123084(5*n+1)`
-/

namespace A227281.P14380143327369756532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123084 (5 * n + 1)

end

end A227281.P14380143327369756532

/-! ## A227281.P11862702725235422943

`record[gcd(A091703(n), A123084(n+1))]`
-/

namespace A227281.P11862702725235422943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091703 n) (A123084 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227281.P11862702725235422943

/-! ## A227281.P7481883062476829828

`A123084(A016861(n))+A000007(n+1)`
-/

namespace A227281.P7481883062476829828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123084 (A016861 n).toNat + A000007 (n + 1)

end

end A227281.P7481883062476829828

/-! ## A227281.P2470865569751410418

`A123084(A016861(n))+A000038(n+1)`
-/

namespace A227281.P2470865569751410418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123084 (A016861 n).toNat + A000038 (n + 1)

end

end A227281.P2470865569751410418

/-! ## A227281.P10252253192925248375

`A123084(A016861(n))-A000035(2*n)`
-/

namespace A227281.P10252253192925248375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123084 (A016861 n).toNat - A000035 (2 * n)

end

end A227281.P10252253192925248375

/-! ## A227281.P350560697883060179

`A000034(2*n)*A123084(A016861(n))`
-/

namespace A227281.P350560697883060179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A123084 (A016861 n).toNat

end

end A227281.P350560697883060179

/-! ## A227281.P6841069066133127162

`A123084(A016861(n))%A014417(n+2)`
-/

namespace A227281.P6841069066133127162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123084 (A016861 n).toNat) (A014417 (n + 2))

end

end A227281.P6841069066133127162

/-! ## A227281.P13380517447251489608

`A001511(Δ[n²])*A123084(A016861(n))`
-/

namespace A227281.P13380517447251489608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A123084 (A016861 n).toNat

end

end A227281.P13380517447251489608

/-! ## A227281.P12592237691582086957

`A007318(C(n, 2*n))*A123084(A016861(n))`
-/

namespace A227281.P12592237691582086957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n (2 * n)) * A123084 (A016861 n).toNat

end

end A227281.P12592237691582086957

/-! ## A227281.P13653949437236458744

`lcm(A008683((-1)^n+2), A123084(A016861(n)))`
-/

namespace A227281.P13653949437236458744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 ((-1) ^ n + 2).toNat) (A123084 (A016861 n).toNat)

end

end A227281.P13653949437236458744

/-! ## A227281.P13927978749764535428

`A123084(Δ[A000566(n)])+(n+1)%A006530(n+1)`
-/

namespace A227281.P13927978749764535428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123084 (f1 (n + 1) - f1 n).toNat + Int.tmod (n + 1 : ℤ) (A006530 (n + 1))

end

end A227281.P13927978749764535428

/-! ## A227281.P13339210045499995433

`A123084(A016861(n))/A001222(A065383(n+1))`
-/

namespace A227281.P13339210045499995433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123084 (A016861 n).toNat : ℚ) / (A001222 (A065383 (n + 1)).toNat : ℚ)

end

end A227281.P13339210045499995433

/-!
# A227283: First primes of arithmetic progressions of 8 primes each with the common difference 210.

The programs for A227283, there is no canonical definition to state claims against.
-/

/-! ## A227283.P18407989519341332516

`filter[A227282(n+2), A030308(#)]`
-/

namespace A227283.P18407989519341332516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227282 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030308 (f1 j).toNat = 1) n)

end

end A227283.P18407989519341332516

/-!
# A227287: G.f.: Sum_{n>=0} x^(n - b(n)) * (1+x)^b(n), where b(n) = A007814(n), which is the exponent of the highest power of 2 dividing n.

The programs for A227287, there is no canonical definition to state claims against.
-/

/-! ## A227287.P7371045869078786717

`A227277(∑[∏{p}[2*n, n*val(#², 2)]]-n+1)`
-/

namespace A227287.P7371045869078786717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), n * SequenceMachineLib.valuation (p ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227277 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) + 1).toNat

end

end A227287.P7371045869078786717

/-! ## A227287.P1572143639545716215

`A227277(A010078(n+1)+1)`
-/

namespace A227287.P1572143639545716215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227277 (A010078 (n + 1) + 1).toNat

end

end A227287.P1572143639545716215

/-! ## A227287.P11890992185760779793

`A227277(A062383(2*n)-n)`
-/

namespace A227287.P11890992185760779793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227277 (A062383 (2 * n) - (n : ℤ)).toNat

end

end A227287.P11890992185760779793

/-! ## A227287.P5760733979036768989

`A227277(A004757(n+1)-(2*n+1))`
-/

namespace A227287.P5760733979036768989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227277 (A004757 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A227287.P5760733979036768989

/-! ## A227287.P975736515827155791

`A227277(A003817(3*n)-A023443(n))`
-/

namespace A227287.P975736515827155791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227277 (A003817 (3 * n) - A023443 n).toNat

end

end A227287.P975736515827155791

/-! ## A227287.P16217606782909951243

`A227277(A269160(n))%A178119(A007208(n))`
-/

namespace A227287.P16217606782909951243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227277 (A269160 n).toNat) (A178119 (A007208 n).toNat)

end

end A227287.P16217606782909951243

/-! ## A227287.P15839556848409588284

`A019425(A122438(n))*A227277(A269160(n))`
-/

namespace A227287.P15839556848409588284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A122438 n).toNat * A227277 (A269160 n).toNat

end

end A227287.P15839556848409588284

/-! ## A227287.P11515797881152955601

`A227277(A269160(n))^A019426(A137688(n))`
-/

namespace A227287.P11515797881152955601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227277 (A269160 n).toNat : ℚ) ^ (A019426 (A137688 n).toNat : ℤ)

end

end A227287.P11515797881152955601

/-! ## A227287.P3954376302748892811

`A227277(A269160(n))+A000007(A028373(n+1))`
-/

namespace A227287.P3954376302748892811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227277 (A269160 n).toNat + A000007 (A028373 (n + 1)).toNat

end

end A227287.P3954376302748892811

/-! ## A227287.P13865823292537844875

`A056926(A261538(n+1))*A227277(A269160(n))`
-/

namespace A227287.P13865823292537844875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A261538 (n + 1)).toNat * A227277 (A269160 n).toNat

end

end A227287.P13865823292537844875

/-! ## A227287.P11553481591827243723

`A227277(A269160(n)%A230949(n+1))`
-/

namespace A227287.P11553481591827243723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227277 (Int.tmod (A269160 n) (A230949 (n + 1))).toNat

end

end A227287.P11553481591827243723

/-! ## A227287.P17061777273280637893

`A227277(A269160(n))+A051699(A051670(n+1))`
-/

namespace A227287.P17061777273280637893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227277 (A269160 n).toNat + A051699 (A051670 (n + 1)).toNat

end

end A227287.P17061777273280637893

/-!
# A227288: Greatest common divisor of consecutive terms in A227113.

The programs for A227288, there is no canonical definition to state claims against.
-/

/-! ## A227288.P17502023445595170537

`gcd(A227113(n+1), A227113(n+2))`
-/

namespace A227288.P17502023445595170537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A227113 (n + 1)) (A227113 (n + 2))

end

end A227288.P17502023445595170537

/-! ## A227288.P14885832038441722297

`A228100(2*A078842(n))`
-/

namespace A227288.P14885832038441722297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228100 (2 * A078842 n).toNat

end

end A227288.P14885832038441722297

/-! ## A227288.P5573016477160211747

`A348285(A143311(2*n+3)+A000065(n+1))`
-/

namespace A227288.P5573016477160211747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348285 (A143311 (2 * n + 3) + A000065 (n + 1)).toNat

end

end A227288.P5573016477160211747

/-! ## A227288.P12678094301130679104

`A267108(A034253(n+1)*A122111(3*n+5))`
-/

namespace A227288.P12678094301130679104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267108 (A034253 (n + 1) * A122111 (3 * n + 5)).toNat

end

end A227288.P12678094301130679104

/-!
# A227289: Smallest m such that gcd(A227113(m+1), A227113(m)) = n.

The programs for A227289, there is no canonical definition to state claims against.
-/

/-! ## A227289.P10102717507195630657

`A206771(n)+A003557(A026945(n))`
-/

namespace A227289.P10102717507195630657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206771 n + A003557 (A026945 n).toNat

end

end A227289.P10102717507195630657

/-!
# A227291: Characteristic function of squarefree numbers squared (A062503).

The programs for A227291, the canonical program `A227291.P15541895303528652524` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227291 has offset 1).

The definition of A227291 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A010052, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A227291.P15541895303528652524

`A010052(n+1)*A008966(A000196(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A227291

/-- `A010052(n+1)*A008966(A000196(n+1))` -/
def P15541895303528652524.Spec : Prop :=
  ∀ n, P15541895303528652524.a n = A227291 (n + 1)

theorem P15541895303528652524.correct : P15541895303528652524.Spec := by
  intro n
  simp only [A227291, Nat.add_sub_cancel]

end A227291

/-! ## A227291.P12888797242031394919

`char[∏{p}[n, #²]-1]`
-/

namespace A227291.P12888797242031394919
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p ^ 2 : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A227291.P12888797242031394919

namespace A227291

/-- `char[∏{p}[n, #²]-1]` -/
def P12888797242031394919.Spec : Prop :=
  ∀ n, (P12888797242031394919.a n : ℤ) = A227291 (n + 1)

end A227291

/-! ## A227291.P3070478338809890292

`∏{e}[n+1, (3%#)%3]`
-/

namespace A227291.P3070478338809890292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 3 % Nat.factorization (f1 n) p % 3

end

end A227291.P3070478338809890292

namespace A227291

/-- `∏{e}[n+1, (3%#)%3]` -/
def P3070478338809890292.Spec : Prop :=
  ∀ n, (P3070478338809890292.a n : ℤ) = A227291 (n + 1)

end A227291

/-! ## A227291.P17087821104677902089

`val(∏{p}[n+1, #²]+1, n+2)`
-/

namespace A227291.P17087821104677902089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2 + 1) (n + 2)

end

end A227291.P17087821104677902089

namespace A227291

/-- `val(∏{p}[n+1, #²]+1, n+2)` -/
def P17087821104677902089.Spec : Prop :=
  ∀ n, (P17087821104677902089.a n : ℤ) = A227291 (n + 1)

end A227291

/-! ## A227291.P13593292695826868726

`char[n*(n+2)*char[∏{p}[n, #]-1]]`
-/

namespace A227291.P13593292695826868726
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A227291.P13593292695826868726

namespace A227291

/-- `char[n*(n+2)*char[∏{p}[n, #]-1]]` -/
def P13593292695826868726.Spec : Prop :=
  ∀ n, (P13593292695826868726.a n : ℤ) = A227291 (n + 1)

end A227291

/-! ## A227291.P14398899090196922109

`and(1, ∏{e}[n+1, -val(n+2, #+n)])`
-/

namespace A227291.P14398899090196922109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∏ p ∈ Nat.primeFactors (f1 n), (-(SequenceMachineLib.valuation (n + 2) (Nat.factorization (f1 n) p + n) : ℤ)))

end

end A227291.P14398899090196922109

namespace A227291

/-- `and(1, ∏{e}[n+1, -val(n+2, #+n)])` -/
def P14398899090196922109.Spec : Prop :=
  ∀ n, P14398899090196922109.a n = A227291 (n + 1)

end A227291

/-! ## A227291.P13951479993993275535

`val((∏{e}[n+1, (-C(2, #))^#]+1)², 4)`
-/

namespace A227291.P13951479993993275535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.choose 2 (Nat.factorization (f1 n) p) : ℤ)) ^ Nat.factorization (f1 n) p + 1) ^ 2).toNat 4

end

end A227291.P13951479993993275535

namespace A227291

/-- `val((∏{e}[n+1, (-C(2, #))^#]+1)², 4)` -/
def P13951479993993275535.Spec : Prop :=
  ∀ n, (P13951479993993275535.a n : ℤ) = A227291 (n + 1)

end A227291

/-! ## A227291.P8817749093753884963

`abs(A271102(n+1))`
-/

namespace A227291.P8817749093753884963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A271102 (n + 1)|

end

end A227291.P8817749093753884963

namespace A227291

/-- `abs(A271102(n+1))` -/
def P8817749093753884963.Spec : Prop :=
  ∀ n, P8817749093753884963.a n = A227291 (n + 1)

end A227291

/-! ## A227291.P13950794377139243494

`A007427(n+1)%2`
-/

namespace A227291.P13950794377139243494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007427 (n + 1)) 2

end

end A227291.P13950794377139243494

namespace A227291

/-- `A007427(n+1)%2` -/
def P13950794377139243494.Spec : Prop :=
  ∀ n, P13950794377139243494.a n = A227291 (n + 1)

end A227291

/-! ## A227291.P8178138482887540114

`A174725(n+1)%2`
-/

namespace A227291.P8178138482887540114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174725 (n + 1)) 2

end

end A227291.P8178138482887540114

namespace A227291

/-- `A174725(n+1)%2` -/
def P8178138482887540114.Spec : Prop :=
  ∀ n, P8178138482887540114.a n = A227291 (n + 1)

end A227291

/-! ## A227291.P6282383879819157219

`A252505(n+1)%2`
-/

namespace A227291.P6282383879819157219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252505 (n + 1)) 2

end

end A227291.P6282383879819157219

namespace A227291

/-- `A252505(n+1)%2` -/
def P6282383879819157219.Spec : Prop :=
  ∀ n, P6282383879819157219.a n = A227291 (n + 1)

end A227291

/-! ## A227291.P12394836496900494081

`A300828(n+1)%2`
-/

namespace A227291.P12394836496900494081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300828 (n + 1)) 2

end

end A227291.P12394836496900494081

namespace A227291

/-- `A300828(n+1)%2` -/
def P12394836496900494081.Spec : Prop :=
  ∀ n, P12394836496900494081.a n = A227291 (n + 1)

end A227291

/-! ## A227291.P8639632014233108078

`A325211(n+1)%2`
-/

namespace A227291.P8639632014233108078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325211 (n + 1)) 2

end

end A227291.P8639632014233108078

namespace A227291

/-- `A325211(n+1)%2` -/
def P8639632014233108078.Spec : Prop :=
  ∀ n, P8639632014233108078.a n = A227291 (n + 1)

end A227291

/-! ## A227291.P16373778427157651495

`A327274(n+1)%2`
-/

namespace A227291.P16373778427157651495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327274 (n + 1)) 2

end

end A227291.P16373778427157651495

namespace A227291

/-- `A327274(n+1)%2` -/
def P16373778427157651495.Spec : Prop :=
  ∀ n, P16373778427157651495.a n = A227291 (n + 1)

end A227291

/-! ## A227291.P12977528999846102288

`A354825(n+1)%2`
-/

namespace A227291.P12977528999846102288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354825 (n + 1)) 2

end

end A227291.P12977528999846102288

namespace A227291

/-- `A354825(n+1)%2` -/
def P12977528999846102288.Spec : Prop :=
  ∀ n, P12977528999846102288.a n = A227291 (n + 1)

end A227291

/-! ## A227291.P15892329278860940233

`and(1, A346246(n+1))`
-/

namespace A227291.P15892329278860940233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A346246 (n + 1))

end

end A227291.P15892329278860940233

namespace A227291

/-- `and(1, A346246(n+1))` -/
def P15892329278860940233.Spec : Prop :=
  ∀ n, P15892329278860940233.a n = A227291 (n + 1)

end A227291

/-! ## A227291.P1852447191098691478

`∑{d}[n+1, A363552(#)]`
-/

namespace A227291.P1852447191098691478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A363552 d

end

end A227291.P1852447191098691478

namespace A227291

/-- `∑{d}[n+1, A363552(#)]` -/
def P1852447191098691478.Spec : Prop :=
  ∀ n, P1852447191098691478.a n = A227291 (n + 1)

end A227291

/-! ## A227291.P478213821668369273

`char[A048804(n)²-1]`
-/

namespace A227291.P478213821668369273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048804 n ^ 2 - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A227291.P478213821668369273

namespace A227291

/-- `char[A048804(n)²-1]` -/
def P478213821668369273.Spec : Prop :=
  ∀ n, (P478213821668369273.a n : ℤ) = A227291 (n + 1)

end A227291

/-! ## A227291.P9138884129244243726

`A010052(A058035(n+1))`
-/

namespace A227291.P9138884129244243726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A058035 (n + 1)).toNat

end

end A227291.P9138884129244243726

namespace A227291

/-- `A010052(A058035(n+1))` -/
def P9138884129244243726.Spec : Prop :=
  ∀ n, P9138884129244243726.a n = A227291 (n + 1)

end A227291

/-! ## A227291.P771986639389432168

`A063524(A007427(n+1)²)`
-/

namespace A227291.P771986639389432168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A007427 (n + 1) ^ 2).toNat

end

end A227291.P771986639389432168

namespace A227291

/-- `A063524(A007427(n+1)²)` -/
def P771986639389432168.Spec : Prop :=
  ∀ n, P771986639389432168.a n = A227291 (n + 1)

end A227291

/-!
# A227294: G.f.: ( Sum_{n>=0} 8^n*x^(n^2) )^(1/4).

The programs for A227294, there is no canonical definition to state claims against.
-/

/-! ## A227294.P17764227502319533311

`A233809(Δ[A262031(n+1)])-1`
-/

namespace A227294.P17764227502319533311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233809 (f1 (n + 1) - f1 n).toNat - 1

end

end A227294.P17764227502319533311

/-!
# A227295: G.f.: ( Sum_{n>=0} 8^n*x^(n^2) )^(1/2).

The programs for A227295, there is no canonical definition to state claims against.
-/

/-! ## A227295.P6780657765240234756

`record[A346874(n+1)]*A223027(n)`
-/

namespace A227295.P6780657765240234756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A223027 n

end

end A227295.P6780657765240234756

/-! ## A227295.P15389604171747483579

`A046523(A000244(n))*A223027(n)`
-/

namespace A227295.P15389604171747483579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A000244 n).toNat * A223027 n

end

end A227295.P15389604171747483579

/-! ## A227295.P15755996336404138123

`record[A151669(n)]*A223027(n)`
-/

namespace A227295.P15755996336404138123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A223027 n

end

end A227295.P15755996336404138123

/-! ## A227295.P17893175208202035471

`record[A348647(n)]*A223027(n)`
-/

namespace A227295.P17893175208202035471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348647 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A223027 n

end

end A227295.P17893175208202035471

/-!
# A227296: Number of partitions of n into parts <= phi(n), where phi is Euler's totient function (cf. A000010).

The programs for A227296, there is no canonical definition to state claims against.
-/

/-! ## A227296.P3789749263280699471

`A026820(A225530(n)+C(n, 2))`
-/

namespace A227296.P3789749263280699471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A225530 n + (Nat.choose n 2 : ℤ)).toNat

end

end A227296.P3789749263280699471

/-!
# A227298: The number of squares added in the n-th step of a Pythagoras tree of the 30-60-90 triangle, using the rule larger squares come first.

The programs for A227298, there is no canonical definition to state claims against.
-/

/-! ## A227298.P730603077674618491

`A001462(∑[A001006(n+2)-A000203(n+1)])`
-/

namespace A227298.P730603077674618491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 2) - A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A227298.P730603077674618491

/-! ## A227298.P16455518004260305401

`A001462(∑[A001006(n+2)-A291166(n+1)])`
-/

namespace A227298.P16455518004260305401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 2) - A291166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A227298.P16455518004260305401

/-! ## A227298.P16540620276204328868

`A057142(A047106(n))`
-/

namespace A227298.P16540620276204328868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (A047106 n).toNat

end

end A227298.P16540620276204328868

/-! ## A227298.P4312312474947555258

`A057142(A360151(n))`
-/

namespace A227298.P4312312474947555258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (A360151 n).toNat

end

end A227298.P4312312474947555258

/-! ## A227298.P9757042175924990707

`A057142(A360152(n))`
-/

namespace A227298.P9757042175924990707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (A360152 n).toNat

end

end A227298.P9757042175924990707

/-!
# A227299: Number of vertices for which there is an alien in-magic directed star.

The programs for A227299, there is no canonical definition to state claims against.
-/

/-! ## A227299.P13800080104829243396

`lt[A161680(A321366(n+1))+7, 3*n]+1`
-/

namespace A227299.P13800080104829243396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A321366 (n + 1)).toNat + 7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A227299.P13800080104829243396

/-! ## A227299.P9094786294658347777

`lt[A071099(A130296(2*n+1)), A130296(n+1)]`
-/

namespace A227299.P9094786294658347777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071099 (A130296 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227299.P9094786294658347777

/-! ## A227299.P12394167885137525687

`lt[A261275(2*n)*A261275(n), A097093(n+1)]`
-/

namespace A227299.P12394167885137525687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261275 (2 * n) * A261275 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227299.P12394167885137525687

/-! ## A227299.P7918989901116369181

`lt[A061198(n), A060244(A353836(2*(n+1)))]`
-/

namespace A227299.P7918989901116369181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061198 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060244 (A353836 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227299.P7918989901116369181

