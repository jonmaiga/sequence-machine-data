import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C025
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.Opaque.C000
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

/-!
# A386100: Primes having only {1, 2, 6, 8} as digits.

The programs for A386100, there is no canonical definition to state claims against.
-/

/-! ## A386100.P14891042606507446995

`∩[A000040(n+1), A222241(A028846(n+1))]`
-/

namespace A386100.P14891042606507446995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 (A028846 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386100.P14891042606507446995

/-!
# A386101: Primes having only {1, 2, 6, 9} as digits.

The programs for A386101, there is no canonical definition to state claims against.
-/

/-! ## A386101.P8021515774930758946

`∩[A152312(n+1), A175414(n+1)]`
-/

namespace A386101.P8021515774930758946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386101.P8021515774930758946

/-! ## A386101.P4951025274353671181

`∩[A175414(n+1), A386342(n+1)]`
-/

namespace A386101.P4951025274353671181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386101.P4951025274353671181

/-!
# A386102: Primes having only {1, 2, 7, 8} as digits.

The programs for A386102, there is no canonical definition to state claims against.
-/

/-! ## A386102.P6595061610928575534

`A326534(A240009(3*n+4)+A061917(3*(n+1)))`
-/

namespace A386102.P6595061610928575534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326534 (A240009 (3 * n + 4) + A061917 (3 * (n + 1))).toNat

end

end A386102.P6595061610928575534

/-!
# A386103: Primes having only {1, 2, 7, 9} as digits.

The programs for A386103, there is no canonical definition to state claims against.
-/

/-! ## A386103.P3558104969888852468

`∩[A073416(n+1), A226993(n+1)]`
-/

namespace A386103.P3558104969888852468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386103.P3558104969888852468

/-! ## A386103.P9666132821296218595

`∩[A073416(n+1), A386350(n+1)]`
-/

namespace A386103.P9666132821296218595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386103.P9666132821296218595

/-!
# A386104: Primes having only {1, 2, 8, 9} as digits.

The programs for A386104, there is no canonical definition to state claims against.
-/

/-! ## A386104.P8835457976848258706

`A106317(A236760(n+1))`
-/

namespace A386104.P8835457976848258706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106317 (A236760 (n + 1)).toNat

end

end A386104.P8835457976848258706

/-! ## A386104.P9357675471124999139

`∩[A152312(n+1), A260317(n+1)]`
-/

namespace A386104.P9357675471124999139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386104.P9357675471124999139

/-!
# A386105: Primes having only {1, 3, 4, 5} as digits.

The programs for A386105, the canonical program `A386105.P11382381309896313627` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386105 has offset 1).

The definition of A386105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386105.P14252768639676354433

`∩[A036958(n+1), A386320(n+1)]`
-/

namespace A386105.P14252768639676354433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386105.P14252768639676354433

namespace A386105

/-- `∩[A036958(n+1), A386320(n+1)]` -/
def P14252768639676354433.Spec : Prop :=
  ∀ n, (P14252768639676354433.a n : ℤ) = A386105 (n + 1)

end A386105

/-! ## A386105.P13113562676280389296

`∩[A133783(n+1), A386337(n+1)]`
-/

namespace A386105.P13113562676280389296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386105.P13113562676280389296

namespace A386105

/-- `∩[A133783(n+1), A386337(n+1)]` -/
def P13113562676280389296.Spec : Prop :=
  ∀ n, (P13113562676280389296.a n : ℤ) = A386105 (n + 1)

end A386105

/-! ## A386105.P11382381309896313627

`∩[A038604(n+1), A084545(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A386105

/-- `∩[A038604(n+1), A084545(n+1)]` -/
def P11382381309896313627.Spec : Prop :=
  ∀ n, (P11382381309896313627.a n : ℤ) = A386105 (n + 1)

theorem P11382381309896313627.correct : P11382381309896313627.Spec := by
  intro n
  simp only [A386105, Nat.add_sub_cancel]

end A386105

/-! ## A386105.P17293876009456727457

`∩[A084545(n+1), A329760(n+1)]`
-/

namespace A386105.P17293876009456727457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386105.P17293876009456727457

namespace A386105

/-- `∩[A084545(n+1), A329760(n+1)]` -/
def P17293876009456727457.Spec : Prop :=
  ∀ n, (P17293876009456727457.a n : ℤ) = A386105 (n + 1)

end A386105

/-! ## A386105.P14200328260292866348

`∩[A084545(n+1), A386320(n+1)]`
-/

namespace A386105.P14200328260292866348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386105.P14200328260292866348

namespace A386105

/-- `∩[A084545(n+1), A386320(n+1)]` -/
def P14200328260292866348.Spec : Prop :=
  ∀ n, (P14200328260292866348.a n : ℤ) = A386105 (n + 1)

end A386105

/-! ## A386105.P15134857794152461246

`∩[A084545(n+1), A386337(n+1)]`
-/

namespace A386105.P15134857794152461246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386105.P15134857794152461246

namespace A386105

/-- `∩[A084545(n+1), A386337(n+1)]` -/
def P15134857794152461246.Spec : Prop :=
  ∀ n, (P15134857794152461246.a n : ℤ) = A386105 (n + 1)

end A386105

/-! ## A386105.P18379953656090992840

`∩[A084545(n+1), A386338(n+1)]`
-/

namespace A386105.P18379953656090992840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386105.P18379953656090992840

namespace A386105

/-- `∩[A084545(n+1), A386338(n+1)]` -/
def P18379953656090992840.Spec : Prop :=
  ∀ n, (P18379953656090992840.a n : ℤ) = A386105 (n + 1)

end A386105

/-! ## A386105.P17526113578613930187

`∩[A084545(n+1), A386339(n+1)]`
-/

namespace A386105.P17526113578613930187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386105.P17526113578613930187

namespace A386105

/-- `∩[A084545(n+1), A386339(n+1)]` -/
def P17526113578613930187.Spec : Prop :=
  ∀ n, (P17526113578613930187.a n : ℤ) = A386105 (n + 1)

end A386105

/-! ## A386105.P13310808405168503049

`∩[A386320(n+1), A007092(n)]`
-/

namespace A386105.P13310808405168503049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386105.P13310808405168503049

namespace A386105

/-- `∩[A386320(n+1), A007092(n)]` -/
def P13310808405168503049.Spec : Prop :=
  ∀ n, (P13310808405168503049.a n : ℤ) = A386105 (n + 1)

end A386105

/-! ## A386105.P1906102906451324905

`∩[A001729(n+1), A329760(n+1)]`
-/

namespace A386105.P1906102906451324905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386105.P1906102906451324905

namespace A386105

/-- `∩[A001729(n+1), A329760(n+1)]` -/
def P1906102906451324905.Spec : Prop :=
  ∀ n, (P1906102906451324905.a n : ℤ) = A386105 (n + 1)

end A386105

/-! ## A386105.P14186576871872930094

`∩[A057436(n+1), A386337(n+1)]`
-/

namespace A386105.P14186576871872930094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386105.P14186576871872930094

namespace A386105

/-- `∩[A057436(n+1), A386337(n+1)]` -/
def P14186576871872930094.Spec : Prop :=
  ∀ n, (P14186576871872930094.a n : ℤ) = A386105 (n + 1)

end A386105

/-!
# A386106: Primes having only {1, 3, 4, 6} as digits.

The programs for A386106, the canonical program `A386106.P12351287759321940334` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386106 has offset 1).

The definition of A386106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386106.P4636336807227356289

`∩[A133783(n+1), A361822(n+1)]`
-/

namespace A386106.P4636336807227356289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386106.P4636336807227356289

namespace A386106

/-- `∩[A133783(n+1), A361822(n+1)]` -/
def P4636336807227356289.Spec : Prop :=
  ∀ n, (P4636336807227356289.a n : ℤ) = A386106 (n + 1)

end A386106

/-! ## A386106.P12351287759321940334

`∩[A057436(n+1), A361822(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A386106

/-- `∩[A057436(n+1), A361822(n+1)]` -/
def P12351287759321940334.Spec : Prop :=
  ∀ n, (P12351287759321940334.a n : ℤ) = A386106 (n + 1)

theorem P12351287759321940334.correct : P12351287759321940334.Spec := by
  intro n
  simp only [A386106, Nat.add_sub_cancel]

end A386106

/-! ## A386106.P7240989710122600518

`∩[A072667(n+1), A370842(n+1)]`
-/

namespace A386106.P7240989710122600518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386106.P7240989710122600518

namespace A386106

/-- `∩[A072667(n+1), A370842(n+1)]` -/
def P7240989710122600518.Spec : Prop :=
  ∀ n, (P7240989710122600518.a n : ℤ) = A386106 (n + 1)

end A386106

/-!
# A386107: Primes having only {1, 3, 4, 7} as digits.

The programs for A386107, the canonical program `A386107.P9360061858123555193` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386107 has offset 1).

The definition of A386107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 290 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386107.P9360061858123555193

`∩[A001729(n+1), A361822(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A386107

/-- `∩[A001729(n+1), A361822(n+1)]` -/
def P9360061858123555193.Spec : Prop :=
  ∀ n, (P9360061858123555193.a n : ℤ) = A386107 (n + 1)

theorem P9360061858123555193.correct : P9360061858123555193.Spec := by
  intro n
  simp only [A386107, Nat.add_sub_cancel]

end A386107

/-! ## A386107.P10094758214119317071

`∩[A175139(n+1), A386356(n+1)]`
-/

namespace A386107.P10094758214119317071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386107.P10094758214119317071

namespace A386107

/-- `∩[A175139(n+1), A386356(n+1)]` -/
def P10094758214119317071.Spec : Prop :=
  ∀ n, (P10094758214119317071.a n : ℤ) = A386107 (n + 1)

end A386107

/-! ## A386107.P6183789509922162453

`∩[A154866(n+1), A225859(n+1)]`
-/

namespace A386107.P6183789509922162453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386107.P6183789509922162453

namespace A386107

/-- `∩[A154866(n+1), A225859(n+1)]` -/
def P6183789509922162453.Spec : Prop :=
  ∀ n, (P6183789509922162453.a n : ℤ) = A386107 (n + 1)

end A386107

/-! ## A386107.P16198320842136498242

`eq[A317086(A313408(n)), A321452(n)]`
-/

namespace A386107.P16198320842136498242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317086 (A313408 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386107.P16198320842136498242

namespace A386107

/-- `eq[A317086(A313408(n)), A321452(n)]` -/
def P16198320842136498242.Spec : Prop :=
  ∀ n, (P16198320842136498242.a n : ℤ) = A386107 (n + 1)

end A386107

/-!
# A386110: Primes having only {1, 3, 5, 6} as digits.

The programs for A386110, there is no canonical definition to state claims against.
-/

/-! ## A386110.P2589020149778409512

`∩[A133783(n+1), A386336(n+1)]`
-/

namespace A386110.P2589020149778409512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386110.P2589020149778409512

/-! ## A386110.P2836541221367495013

`∩[A062101(n+1), A329760(n+1)]`
-/

namespace A386110.P2836541221367495013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386110.P2836541221367495013

/-! ## A386110.P9536445769248007600

`∩[A057436(n+1), A386336(n+1)]`
-/

namespace A386110.P9536445769248007600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386110.P9536445769248007600

/-!
# A386111: Primes having only {1, 3, 5, 7} as digits.

The programs for A386111, the canonical program `A386111.P9785451128808228405` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386111 has offset 1).

The definition of A386111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2029 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386111.P637094098961882440

`∩[A030096(n+1), A190223(n+1)]`
-/

namespace A386111.P637094098961882440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386111.P637094098961882440

namespace A386111

/-- `∩[A030096(n+1), A190223(n+1)]` -/
def P637094098961882440.Spec : Prop :=
  ∀ n, (P637094098961882440.a n : ℤ) = A386111 (n + 1)

end A386111

/-! ## A386111.P9785451128808228405

`∩[A030096(n+1), A190222(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A386111

/-- `∩[A030096(n+1), A190222(n+1)]` -/
def P9785451128808228405.Spec : Prop :=
  ∀ n, (P9785451128808228405.a n : ℤ) = A386111 (n + 1)

theorem P9785451128808228405.correct : P9785451128808228405.Spec := by
  intro n
  simp only [A386111, Nat.add_sub_cancel]

end A386111

/-! ## A386111.P2766068229437820408

`∩[A030096(n+1), A160337(n+1)]`
-/

namespace A386111.P2766068229437820408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386111.P2766068229437820408

namespace A386111

/-- `∩[A030096(n+1), A160337(n+1)]` -/
def P2766068229437820408.Spec : Prop :=
  ∀ n, (P2766068229437820408.a n : ℤ) = A386111 (n + 1)

end A386111

/-! ## A386111.P9163806358634535168

`∩[A155055(n+1), A190222(n+1)]`
-/

namespace A386111.P9163806358634535168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386111.P9163806358634535168

namespace A386111

/-- `∩[A155055(n+1), A190222(n+1)]` -/
def P9163806358634535168.Spec : Prop :=
  ∀ n, (P9163806358634535168.a n : ℤ) = A386111 (n + 1)

end A386111

/-! ## A386111.P4298064281476753919

`∩[A155055(n+1), A190223(n+1)]`
-/

namespace A386111.P4298064281476753919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386111.P4298064281476753919

namespace A386111

/-- `∩[A155055(n+1), A190223(n+1)]` -/
def P4298064281476753919.Spec : Prop :=
  ∀ n, (P4298064281476753919.a n : ℤ) = A386111 (n + 1)

end A386111

/-! ## A386111.P2731556154885690908

`∩[A030096(n+1), A038617(n+1)]`
-/

namespace A386111.P2731556154885690908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386111.P2731556154885690908

namespace A386111

/-- `∩[A030096(n+1), A038617(n+1)]` -/
def P2731556154885690908.Spec : Prop :=
  ∀ n, (P2731556154885690908.a n : ℤ) = A386111 (n + 1)

end A386111

/-! ## A386111.P8410629871388238205

`∩[A038617(n+1), A066640(n+1)]`
-/

namespace A386111.P8410629871388238205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386111.P8410629871388238205

namespace A386111

/-- `∩[A038617(n+1), A066640(n+1)]` -/
def P8410629871388238205.Spec : Prop :=
  ∀ n, (P8410629871388238205.a n : ℤ) = A386111 (n + 1)

end A386111

/-! ## A386111.P15369075072037690487

`∩[A038604(n+1), A190222(n+1)]`
-/

namespace A386111.P15369075072037690487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386111.P15369075072037690487

namespace A386111

/-- `∩[A038604(n+1), A190222(n+1)]` -/
def P15369075072037690487.Spec : Prop :=
  ∀ n, (P15369075072037690487.a n : ℤ) = A386111 (n + 1)

end A386111

/-! ## A386111.P12781706641873416361

`∩[A038604(n+1), A190223(n+1)]`
-/

namespace A386111.P12781706641873416361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386111.P12781706641873416361

namespace A386111

/-- `∩[A038604(n+1), A190223(n+1)]` -/
def P12781706641873416361.Spec : Prop :=
  ∀ n, (P12781706641873416361.a n : ℤ) = A386111 (n + 1)

end A386111

/-! ## A386111.P318455338552391170

`∩[A038617(n+1), A062086(n+1)]`
-/

namespace A386111.P318455338552391170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386111.P318455338552391170

namespace A386111

/-- `∩[A038617(n+1), A062086(n+1)]` -/
def P318455338552391170.Spec : Prop :=
  ∀ n, (P318455338552391170.a n : ℤ) = A386111 (n + 1)

end A386111

/-! ## A386111.P7741764676685194683

`∩[A014261(n+1), A038617(n+1)]`
-/

namespace A386111.P7741764676685194683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386111.P7741764676685194683

namespace A386111

/-- `∩[A014261(n+1), A038617(n+1)]` -/
def P7741764676685194683.Spec : Prop :=
  ∀ n, (P7741764676685194683.a n : ℤ) = A386111 (n + 1)

end A386111

/-! ## A386111.P4825220867171890154

`∩[A014261(n+1), A386339(n+1)]`
-/

namespace A386111.P4825220867171890154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386111.P4825220867171890154

namespace A386111

/-- `∩[A014261(n+1), A386339(n+1)]` -/
def P4825220867171890154.Spec : Prop :=
  ∀ n, (P4825220867171890154.a n : ℤ) = A386111 (n + 1)

end A386111

/-! ## A386111.P15984553710158559149

`∩[A030096(n+1), A386339(n+1)]`
-/

namespace A386111.P15984553710158559149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386111.P15984553710158559149

namespace A386111

/-- `∩[A030096(n+1), A386339(n+1)]` -/
def P15984553710158559149.Spec : Prop :=
  ∀ n, (P15984553710158559149.a n : ℤ) = A386111 (n + 1)

end A386111

/-! ## A386111.P15958063947082115247

`∩[A062086(n+1), A386339(n+1)]`
-/

namespace A386111.P15958063947082115247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386111.P15958063947082115247

namespace A386111

/-- `∩[A062086(n+1), A386339(n+1)]` -/
def P15958063947082115247.Spec : Prop :=
  ∀ n, (P15958063947082115247.a n : ℤ) = A386111 (n + 1)

end A386111

/-! ## A386111.P15962790241590358774

`∩[A066640(n+1), A386339(n+1)]`
-/

namespace A386111.P15962790241590358774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386111.P15962790241590358774

namespace A386111

/-- `∩[A066640(n+1), A386339(n+1)]` -/
def P15962790241590358774.Spec : Prop :=
  ∀ n, (P15962790241590358774.a n : ℤ) = A386111 (n + 1)

end A386111

/-! ## A386111.P2223670353117222555

`∩[A190222(n+1), A386336(n+1)]`
-/

namespace A386111.P2223670353117222555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386111.P2223670353117222555

namespace A386111

/-- `∩[A190222(n+1), A386336(n+1)]` -/
def P2223670353117222555.Spec : Prop :=
  ∀ n, (P2223670353117222555.a n : ℤ) = A386111 (n + 1)

end A386111

/-! ## A386111.P2335678610111135388

`∩[A190222(n+1), A386337(n+1)]`
-/

namespace A386111.P2335678610111135388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386111.P2335678610111135388

namespace A386111

/-- `∩[A190222(n+1), A386337(n+1)]` -/
def P2335678610111135388.Spec : Prop :=
  ∀ n, (P2335678610111135388.a n : ℤ) = A386111 (n + 1)

end A386111

/-! ## A386111.P13361812850306918502

`∩[A190222(n+1), A386339(n+1)]`
-/

namespace A386111.P13361812850306918502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386111.P13361812850306918502

namespace A386111

/-- `∩[A190222(n+1), A386339(n+1)]` -/
def P13361812850306918502.Spec : Prop :=
  ∀ n, (P13361812850306918502.a n : ℤ) = A386111 (n + 1)

end A386111

/-! ## A386111.P15837626703634963704

`∩[A190223(n+1), A386336(n+1)]`
-/

namespace A386111.P15837626703634963704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386111.P15837626703634963704

namespace A386111

/-- `∩[A190223(n+1), A386336(n+1)]` -/
def P15837626703634963704.Spec : Prop :=
  ∀ n, (P15837626703634963704.a n : ℤ) = A386111 (n + 1)

end A386111

/-! ## A386111.P2443912513811295588

`∩[A190222(n+1), A386338(n+1)]`
-/

namespace A386111.P2443912513811295588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386111.P2443912513811295588

namespace A386111

/-- `∩[A190222(n+1), A386338(n+1)]` -/
def P2443912513811295588.Spec : Prop :=
  ∀ n, (P2443912513811295588.a n : ℤ) = A386111 (n + 1)

end A386111

/-!
# A386112: Primes having only {1, 3, 5, 8} as digits.

The programs for A386112, there is no canonical definition to state claims against.
-/

/-! ## A386112.P14592087521739086843

`∩[A154866(n+1), A321702(n+1)]`
-/

namespace A386112.P14592087521739086843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386112.P14592087521739086843

/-! ## A386112.P6953587999391546873

`∩[A155026(n+1), A321702(n+1)]`
-/

namespace A386112.P6953587999391546873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386112.P6953587999391546873

/-! ## A386112.P4054789263455074903

`∩[A321702(n+1), A386320(n+1)]`
-/

namespace A386112.P4054789263455074903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386112.P4054789263455074903

/-! ## A386112.P16313453969465479090

`filter[A178317(n+1), A245837(#)]`
-/

namespace A386112.P16313453969465479090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245837 (f1 j).toNat = 1) n)

end

end A386112.P16313453969465479090

/-!
# A386113: Primes having only {1, 3, 5, 9} as digits.

The programs for A386113, the canonical program `A386113.P5229020975382995121` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386113 has offset 1).

The definition of A386113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 881 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386113.P5229020975382995121

`∩[A030096(n+1), A329760(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A386113

/-- `∩[A030096(n+1), A329760(n+1)]` -/
def P5229020975382995121.Spec : Prop :=
  ∀ n, (P5229020975382995121.a n : ℤ) = A386113 (n + 1)

theorem P5229020975382995121.correct : P5229020975382995121.Spec := by
  intro n
  simp only [A386113, Nat.add_sub_cancel]

end A386113

/-! ## A386113.P13934438374612024329

`∩[A066640(n+1), A329760(n+1)]`
-/

namespace A386113.P13934438374612024329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386113.P13934438374612024329

namespace A386113

/-- `∩[A066640(n+1), A329760(n+1)]` -/
def P13934438374612024329.Spec : Prop :=
  ∀ n, (P13934438374612024329.a n : ℤ) = A386113 (n + 1)

end A386113

/-! ## A386113.P9994471697399613856

`∩[A062086(n+1), A329760(n+1)]`
-/

namespace A386113.P9994471697399613856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386113.P9994471697399613856

namespace A386113

/-- `∩[A062086(n+1), A329760(n+1)]` -/
def P9994471697399613856.Spec : Prop :=
  ∀ n, (P9994471697399613856.a n : ℤ) = A386113 (n + 1)

end A386113

/-! ## A386113.P11213481053746239937

`∩[A030096(n+1), A038615(n+1)]`
-/

namespace A386113.P11213481053746239937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386113.P11213481053746239937

namespace A386113

/-- `∩[A030096(n+1), A038615(n+1)]` -/
def P11213481053746239937.Spec : Prop :=
  ∀ n, (P11213481053746239937.a n : ℤ) = A386113 (n + 1)

end A386113

/-! ## A386113.P3746088197698901528

`∩[A038615(n+1), A062086(n+1)]`
-/

namespace A386113.P3746088197698901528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386113.P3746088197698901528

namespace A386113

/-- `∩[A038615(n+1), A062086(n+1)]` -/
def P3746088197698901528.Spec : Prop :=
  ∀ n, (P3746088197698901528.a n : ℤ) = A386113 (n + 1)

end A386113

/-! ## A386113.P4061955383983897962

`∩[A038615(n+1), A066640(n+1)]`
-/

namespace A386113.P4061955383983897962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386113.P4061955383983897962

namespace A386113

/-- `∩[A038615(n+1), A066640(n+1)]` -/
def P4061955383983897962.Spec : Prop :=
  ∀ n, (P4061955383983897962.a n : ℤ) = A386113 (n + 1)

end A386113

/-! ## A386113.P8296278900864706606

`∩[A014261(n+1), A038615(n+1)]`
-/

namespace A386113.P8296278900864706606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386113.P8296278900864706606

namespace A386113

/-- `∩[A014261(n+1), A038615(n+1)]` -/
def P8296278900864706606.Spec : Prop :=
  ∀ n, (P8296278900864706606.a n : ℤ) = A386113 (n + 1)

end A386113

/-! ## A386113.P18018848862284941415

`∩[A014261(n+1), A329760(n+1)]`
-/

namespace A386113.P18018848862284941415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386113.P18018848862284941415

namespace A386113

/-- `∩[A014261(n+1), A329760(n+1)]` -/
def P18018848862284941415.Spec : Prop :=
  ∀ n, (P18018848862284941415.a n : ℤ) = A386113 (n + 1)

end A386113

/-! ## A386113.P12264981354598288669

`∩[A014261(n+1), A386325(n+1)]`
-/

namespace A386113.P12264981354598288669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386113.P12264981354598288669

namespace A386113

/-- `∩[A014261(n+1), A386325(n+1)]` -/
def P12264981354598288669.Spec : Prop :=
  ∀ n, (P12264981354598288669.a n : ℤ) = A386113 (n + 1)

end A386113

/-! ## A386113.P6469993878748095386

`∩[A014261(n+1), A386347(n+1)]`
-/

namespace A386113.P6469993878748095386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386113.P6469993878748095386

namespace A386113

/-- `∩[A014261(n+1), A386347(n+1)]` -/
def P6469993878748095386.Spec : Prop :=
  ∀ n, (P6469993878748095386.a n : ℤ) = A386113 (n + 1)

end A386113

/-! ## A386113.P3893241653858065319

`∩[A014261(n+1), A386354(n+1)]`
-/

namespace A386113.P3893241653858065319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386113.P3893241653858065319

namespace A386113

/-- `∩[A014261(n+1), A386354(n+1)]` -/
def P3893241653858065319.Spec : Prop :=
  ∀ n, (P3893241653858065319.a n : ℤ) = A386113 (n + 1)

end A386113

/-! ## A386113.P12958999333308754496

`∩[A014261(n+1), A386357(n+1)]`
-/

namespace A386113.P12958999333308754496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386113.P12958999333308754496

namespace A386113

/-- `∩[A014261(n+1), A386357(n+1)]` -/
def P12958999333308754496.Spec : Prop :=
  ∀ n, (P12958999333308754496.a n : ℤ) = A386113 (n + 1)

end A386113

/-! ## A386113.P868090450704920446

`∩[A030096(n+1), A386325(n+1)]`
-/

namespace A386113.P868090450704920446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386113.P868090450704920446

namespace A386113

/-- `∩[A030096(n+1), A386325(n+1)]` -/
def P868090450704920446.Spec : Prop :=
  ∀ n, (P868090450704920446.a n : ℤ) = A386113 (n + 1)

end A386113

/-! ## A386113.P17515311156991395435

`∩[A030096(n+1), A386347(n+1)]`
-/

namespace A386113.P17515311156991395435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386113.P17515311156991395435

namespace A386113

/-- `∩[A030096(n+1), A386347(n+1)]` -/
def P17515311156991395435.Spec : Prop :=
  ∀ n, (P17515311156991395435.a n : ℤ) = A386113 (n + 1)

end A386113

/-! ## A386113.P1050902550839928701

`∩[A030096(n+1), A386354(n+1)]`
-/

namespace A386113.P1050902550839928701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386113.P1050902550839928701

namespace A386113

/-- `∩[A030096(n+1), A386354(n+1)]` -/
def P1050902550839928701.Spec : Prop :=
  ∀ n, (P1050902550839928701.a n : ℤ) = A386113 (n + 1)

end A386113

/-! ## A386113.P3982636369110401999

`∩[A030096(n+1), A386357(n+1)]`
-/

namespace A386113.P3982636369110401999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386113.P3982636369110401999

namespace A386113

/-- `∩[A030096(n+1), A386357(n+1)]` -/
def P3982636369110401999.Spec : Prop :=
  ∀ n, (P3982636369110401999.a n : ℤ) = A386113 (n + 1)

end A386113

/-! ## A386113.P16529779887958164861

`∩[A062086(n+1), A386325(n+1)]`
-/

namespace A386113.P16529779887958164861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386113.P16529779887958164861

namespace A386113

/-- `∩[A062086(n+1), A386325(n+1)]` -/
def P16529779887958164861.Spec : Prop :=
  ∀ n, (P16529779887958164861.a n : ℤ) = A386113 (n + 1)

end A386113

/-! ## A386113.P4765778498416393931

`∩[A062086(n+1), A386347(n+1)]`
-/

namespace A386113.P4765778498416393931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386113.P4765778498416393931

namespace A386113

/-- `∩[A062086(n+1), A386347(n+1)]` -/
def P4765778498416393931.Spec : Prop :=
  ∀ n, (P4765778498416393931.a n : ℤ) = A386113 (n + 1)

end A386113

/-! ## A386113.P1806175561930698177

`∩[A062086(n+1), A386354(n+1)]`
-/

namespace A386113.P1806175561930698177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386113.P1806175561930698177

namespace A386113

/-- `∩[A062086(n+1), A386354(n+1)]` -/
def P1806175561930698177.Spec : Prop :=
  ∀ n, (P1806175561930698177.a n : ℤ) = A386113 (n + 1)

end A386113

/-! ## A386113.P14478801920306534323

`∩[A062086(n+1), A386357(n+1)]`
-/

namespace A386113.P14478801920306534323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386113.P14478801920306534323

namespace A386113

/-- `∩[A062086(n+1), A386357(n+1)]` -/
def P14478801920306534323.Spec : Prop :=
  ∀ n, (P14478801920306534323.a n : ℤ) = A386113 (n + 1)

end A386113

/-!
# A386114: Primes having only {1, 3, 6, 7} as digits.

The programs for A386114, there is no canonical definition to state claims against.
-/

/-! ## A386114.P14917284309841982931

`∩[A062101(n+1), A361822(n+1)]`
-/

namespace A386114.P14917284309841982931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386114.P14917284309841982931

/-! ## A386114.P8131616014254897180

`∩[A175139(n+1), A386349(n+1)]`
-/

namespace A386114.P8131616014254897180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386114.P8131616014254897180

/-!
# A386115: Primes having only {1, 3, 6, 8} as digits.

The programs for A386115, there is no canonical definition to state claims against.
-/

/-! ## A386115.P6170460256874777860

`∩[A137386(n+1), A386327(n+1)]`
-/

namespace A386115.P6170460256874777860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386115.P6170460256874777860

/-! ## A386115.P10534874604365647421

`∩[A137386(n+1), A181525(n+1)]`
-/

namespace A386115.P10534874604365647421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386115.P10534874604365647421

/-!
# A386116: Primes having only {1, 3, 6, 9} as digits.

The programs for A386116, there is no canonical definition to state claims against.
-/

/-! ## A386116.P17626220894541360824

`∩[A137386(n+1), A386326(n+1)]`
-/

namespace A386116.P17626220894541360824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386116.P17626220894541360824

/-!
# A386118: Primes having only {1, 3, 8, 9} as digits.

The programs for A386118, there is no canonical definition to state claims against.
-/

/-! ## A386118.P12450698326837975677

`∩[A137386(n+1), A386324(n+1)]`
-/

namespace A386118.P12450698326837975677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386118.P12450698326837975677

/-!
# A386119: Primes having only {1, 4, 5, 6} as digits.

The programs for A386119, there is no canonical definition to state claims against.
-/

/-! ## A386119.P15564075331896893049

`∩[A133783(n+1), A386335(n+1)]`
-/

namespace A386119.P15564075331896893049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386119.P15564075331896893049

/-! ## A386119.P11847460477168966949

`∩[A057436(n+1), A386335(n+1)]`
-/

namespace A386119.P11847460477168966949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386119.P11847460477168966949

/-! ## A386119.P7081298361661261384

`∩[A062726(n+1), A133783(n+1)]`
-/

namespace A386119.P7081298361661261384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386119.P7081298361661261384

/-! ## A386119.P8452219708729501891

`∩[A062726(n+1), A386327(n+1)]`
-/

namespace A386119.P8452219708729501891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386119.P8452219708729501891

/-! ## A386119.P2634163512672815989

`∩[A062726(n+1), A155833(n+1)]`
-/

namespace A386119.P2634163512672815989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386119.P2634163512672815989

/-!
# A386120: Primes having only {1, 4, 5, 7} as digits.

The programs for A386120, the canonical program `A386120.P12265816021471172297` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386120 has offset 1).

The definition of A386120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386120.P11718530303574450384

`∩[A038604(n+1), A247052(n+1)]`
-/

namespace A386120.P11718530303574450384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386120.P11718530303574450384

namespace A386120

/-- `∩[A038604(n+1), A247052(n+1)]` -/
def P11718530303574450384.Spec : Prop :=
  ∀ n, (P11718530303574450384.a n : ℤ) = A386120 (n + 1)

end A386120

/-! ## A386120.P12265816021471172297

`∩[A247052(n+1), A386335(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A386120

/-- `∩[A247052(n+1), A386335(n+1)]` -/
def P12265816021471172297.Spec : Prop :=
  ∀ n, (P12265816021471172297.a n : ℤ) = A386120 (n + 1)

theorem P12265816021471172297.correct : P12265816021471172297.Spec := by
  intro n
  simp only [A386120, Nat.add_sub_cancel]

end A386120

/-! ## A386120.P13782389426396471157

`∩[A247052(n+1), A386339(n+1)]`
-/

namespace A386120.P13782389426396471157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386120.P13782389426396471157

namespace A386120

/-- `∩[A247052(n+1), A386339(n+1)]` -/
def P13782389426396471157.Spec : Prop :=
  ∀ n, (P13782389426396471157.a n : ℤ) = A386120 (n + 1)

end A386120

/-! ## A386120.P8435116873416525283

`∩[A038604(n+1), A082741(n+1)]`
-/

namespace A386120.P8435116873416525283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386120.P8435116873416525283

namespace A386120

/-- `∩[A038604(n+1), A082741(n+1)]` -/
def P8435116873416525283.Spec : Prop :=
  ∀ n, (P8435116873416525283.a n : ℤ) = A386120 (n + 1)

end A386120

/-! ## A386120.P6398690550139700951

`∩[A082741(n+1), A386320(n+1)]`
-/

namespace A386120.P6398690550139700951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386120.P6398690550139700951

namespace A386120

/-- `∩[A082741(n+1), A386320(n+1)]` -/
def P6398690550139700951.Spec : Prop :=
  ∀ n, (P6398690550139700951.a n : ℤ) = A386120 (n + 1)

end A386120

/-! ## A386120.P4051190810066654580

`∩[A082741(n+1), A386335(n+1)]`
-/

namespace A386120.P4051190810066654580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386120.P4051190810066654580

namespace A386120

/-- `∩[A082741(n+1), A386335(n+1)]` -/
def P4051190810066654580.Spec : Prop :=
  ∀ n, (P4051190810066654580.a n : ℤ) = A386120 (n + 1)

end A386120

/-! ## A386120.P1853393240305358679

`∩[A082741(n+1), A386337(n+1)]`
-/

namespace A386120.P1853393240305358679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386120.P1853393240305358679

namespace A386120

/-- `∩[A082741(n+1), A386337(n+1)]` -/
def P1853393240305358679.Spec : Prop :=
  ∀ n, (P1853393240305358679.a n : ℤ) = A386120 (n + 1)

end A386120

/-! ## A386120.P5324895598197155215

`∩[A082741(n+1), A386338(n+1)]`
-/

namespace A386120.P5324895598197155215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386120.P5324895598197155215

namespace A386120

/-- `∩[A082741(n+1), A386338(n+1)]` -/
def P5324895598197155215.Spec : Prop :=
  ∀ n, (P5324895598197155215.a n : ℤ) = A386120 (n + 1)

end A386120

/-! ## A386120.P16560858134002425944

`∩[A082741(n+1), A386339(n+1)]`
-/

namespace A386120.P16560858134002425944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386120.P16560858134002425944

namespace A386120

/-- `∩[A082741(n+1), A386339(n+1)]` -/
def P16560858134002425944.Spec : Prop :=
  ∀ n, (P16560858134002425944.a n : ℤ) = A386120 (n + 1)

end A386120

/-! ## A386120.P13603321848640819503

`∩[A247052(n+1), A386320(n+1)]`
-/

namespace A386120.P13603321848640819503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386120.P13603321848640819503

namespace A386120

/-- `∩[A247052(n+1), A386320(n+1)]` -/
def P13603321848640819503.Spec : Prop :=
  ∀ n, (P13603321848640819503.a n : ℤ) = A386120 (n + 1)

end A386120

/-! ## A386120.P11139542554859109219

`∩[A247052(n+1), A386337(n+1)]`
-/

namespace A386120.P11139542554859109219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386120.P11139542554859109219

namespace A386120

/-- `∩[A247052(n+1), A386337(n+1)]` -/
def P11139542554859109219.Spec : Prop :=
  ∀ n, (P11139542554859109219.a n : ℤ) = A386120 (n + 1)

end A386120

/-! ## A386120.P2970691326019671752

`∩[A247052(n+1), A386338(n+1)]`
-/

namespace A386120.P2970691326019671752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386120.P2970691326019671752

namespace A386120

/-- `∩[A247052(n+1), A386338(n+1)]` -/
def P2970691326019671752.Spec : Prop :=
  ∀ n, (P2970691326019671752.a n : ℤ) = A386120 (n + 1)

end A386120

/-! ## A386120.P10078033424291100401

`∩[A001729(n+1), A386335(n+1)]`
-/

namespace A386120.P10078033424291100401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386120.P10078033424291100401

namespace A386120

/-- `∩[A001729(n+1), A386335(n+1)]` -/
def P10078033424291100401.Spec : Prop :=
  ∀ n, (P10078033424291100401.a n : ℤ) = A386120 (n + 1)

end A386120

/-!
# A386121: Primes having only {1, 4, 5, 8} as digits.

The programs for A386121, there is no canonical definition to state claims against.
-/

/-! ## A386121.P1430394008191626644

`A141639(A057238(n+1))`
-/

namespace A386121.P1430394008191626644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141639 (A057238 (n + 1)).toNat

end

end A386121.P1430394008191626644

/-!
# A386122: Primes having only {1, 4, 5, 9} as digits.

The programs for A386122, there is no canonical definition to state claims against.
-/

/-! ## A386122.P14189305474049679095

`A219533(A051013(n+1))`
-/

namespace A386122.P14189305474049679095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219533 (A051013 (n + 1)).toNat

end

end A386122.P14189305474049679095

/-! ## A386122.P10027595929956814573

`eq[A328903(n), A390299(n+1)]`
-/

namespace A386122.P10027595929956814573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328903 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390299 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386122.P10027595929956814573

/-!
# A386124: Primes having only {1, 4, 6, 8} as digits.

The programs for A386124, there is no canonical definition to state claims against.
-/

/-! ## A386124.P5527813928400401613

`∩[A038617(n+1), A152313(n+1)]`
-/

namespace A386124.P5527813928400401613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386124.P5527813928400401613

/-! ## A386124.P17959014272111375326

`∩[A152313(n+1), A386344(n+1)]`
-/

namespace A386124.P17959014272111375326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386124.P17959014272111375326

/-! ## A386124.P10166549357689223862

`∩[A038617(n+1), A202268(n+1)]`
-/

namespace A386124.P10166549357689223862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386124.P10166549357689223862

/-! ## A386124.P14960468731057425421

`∩[A152313(n+1), A386358(n+1)]`
-/

namespace A386124.P14960468731057425421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386124.P14960468731057425421

/-! ## A386124.P2786903712822472000

`∩[A202268(n+1), A386344(n+1)]`
-/

namespace A386124.P2786903712822472000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386124.P2786903712822472000

/-! ## A386124.P908966400913980800

`∩[A202268(n+1), A386358(n+1)]`
-/

namespace A386124.P908966400913980800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386124.P908966400913980800

/-! ## A386124.P32303287778615192

`∩[A152313(n+1), A386339(n+1)]`
-/

namespace A386124.P32303287778615192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386124.P32303287778615192

/-! ## A386124.P2666561595390076054

`∩[A202268(n+1), A386339(n+1)]`
-/

namespace A386124.P2666561595390076054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386124.P2666561595390076054

/-! ## A386124.P11282787155411779729

`∩[A034844(n+1), A386327(n+1)]`
-/

namespace A386124.P11282787155411779729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386124.P11282787155411779729

/-! ## A386124.P14935117263749692000

`∩[A152313(n+1), A386327(n+1)]`
-/

namespace A386124.P14935117263749692000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386124.P14935117263749692000

/-! ## A386124.P7718220262747928437

`∩[A152313(n+1), A386353(n+1)]`
-/

namespace A386124.P7718220262747928437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386124.P7718220262747928437

/-! ## A386124.P9990182673499977306

`∩[A202268(n+1), A386327(n+1)]`
-/

namespace A386124.P9990182673499977306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386124.P9990182673499977306

/-! ## A386124.P8798173953845257240

`∩[A202268(n+1), A386353(n+1)]`
-/

namespace A386124.P8798173953845257240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386124.P8798173953845257240

/-! ## A386124.P1769937931459445464

`∩[A098945(n+1), A152313(n+1)]`
-/

namespace A386124.P1769937931459445464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386124.P1769937931459445464

/-! ## A386124.P4570733438467281289

`∩[A098945(n+1), A386320(n+1)]`
-/

namespace A386124.P4570733438467281289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386124.P4570733438467281289

/-!
# A386125: Primes having only {1, 4, 6, 9} as digits.

The programs for A386125, the canonical program `A386125.P13342514555091089234` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386125 has offset 1).

The definition of A386125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 573 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386125.P13342514555091089234

`∩[A038616(n+1), A152313(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A386125

/-- `∩[A038616(n+1), A152313(n+1)]` -/
def P13342514555091089234.Spec : Prop :=
  ∀ n, (P13342514555091089234.a n : ℤ) = A386125 (n + 1)

theorem P13342514555091089234.correct : P13342514555091089234.Spec := by
  intro n
  simp only [A386125, Nat.add_sub_cancel]

end A386125

/-! ## A386125.P13432541418475690052

`∩[A038616(n+1), A202268(n+1)]`
-/

namespace A386125.P13432541418475690052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386125.P13432541418475690052

namespace A386125

/-- `∩[A038616(n+1), A202268(n+1)]` -/
def P13432541418475690052.Spec : Prop :=
  ∀ n, (P13432541418475690052.a n : ℤ) = A386125 (n + 1)

end A386125

/-! ## A386125.P18364965414769765798

`∩[A152313(n+1), A386343(n+1)]`
-/

namespace A386125.P18364965414769765798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386125.P18364965414769765798

namespace A386125

/-- `∩[A152313(n+1), A386343(n+1)]` -/
def P18364965414769765798.Spec : Prop :=
  ∀ n, (P18364965414769765798.a n : ℤ) = A386125 (n + 1)

end A386125

/-! ## A386125.P16167468768632882123

`∩[A202268(n+1), A386343(n+1)]`
-/

namespace A386125.P16167468768632882123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386125.P16167468768632882123

namespace A386125

/-- `∩[A202268(n+1), A386343(n+1)]` -/
def P16167468768632882123.Spec : Prop :=
  ∀ n, (P16167468768632882123.a n : ℤ) = A386125 (n + 1)

end A386125

/-! ## A386125.P10342554471944925809

`∩[A034844(n+1), A386326(n+1)]`
-/

namespace A386125.P10342554471944925809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386125.P10342554471944925809

namespace A386125

/-- `∩[A034844(n+1), A386326(n+1)]` -/
def P10342554471944925809.Spec : Prop :=
  ∀ n, (P10342554471944925809.a n : ℤ) = A386125 (n + 1)

end A386125

/-! ## A386125.P11801050372313138264

`∩[A152313(n+1), A386326(n+1)]`
-/

namespace A386125.P11801050372313138264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386125.P11801050372313138264

namespace A386125

/-- `∩[A152313(n+1), A386326(n+1)]` -/
def P11801050372313138264.Spec : Prop :=
  ∀ n, (P11801050372313138264.a n : ℤ) = A386125 (n + 1)

end A386125

/-! ## A386125.P4205433628694252482

`∩[A152313(n+1), A386338(n+1)]`
-/

namespace A386125.P4205433628694252482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386125.P4205433628694252482

namespace A386125

/-- `∩[A152313(n+1), A386338(n+1)]` -/
def P4205433628694252482.Spec : Prop :=
  ∀ n, (P4205433628694252482.a n : ℤ) = A386125 (n + 1)

end A386125

/-! ## A386125.P2254415038793136676

`∩[A152313(n+1), A386352(n+1)]`
-/

namespace A386125.P2254415038793136676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386125.P2254415038793136676

namespace A386125

/-- `∩[A152313(n+1), A386352(n+1)]` -/
def P2254415038793136676.Spec : Prop :=
  ∀ n, (P2254415038793136676.a n : ℤ) = A386125 (n + 1)

end A386125

/-! ## A386125.P7969581789151203017

`∩[A152313(n+1), A386357(n+1)]`
-/

namespace A386125.P7969581789151203017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386125.P7969581789151203017

namespace A386125

/-- `∩[A152313(n+1), A386357(n+1)]` -/
def P7969581789151203017.Spec : Prop :=
  ∀ n, (P7969581789151203017.a n : ℤ) = A386125 (n + 1)

end A386125

/-! ## A386125.P3288729989631364497

`∩[A202268(n+1), A386326(n+1)]`
-/

namespace A386125.P3288729989631364497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386125.P3288729989631364497

namespace A386125

/-- `∩[A202268(n+1), A386326(n+1)]` -/
def P3288729989631364497.Spec : Prop :=
  ∀ n, (P3288729989631364497.a n : ℤ) = A386125 (n + 1)

end A386125

/-! ## A386125.P3236214055219634403

`∩[A202268(n+1), A386338(n+1)]`
-/

namespace A386125.P3236214055219634403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386125.P3236214055219634403

namespace A386125

/-- `∩[A202268(n+1), A386338(n+1)]` -/
def P3236214055219634403.Spec : Prop :=
  ∀ n, (P3236214055219634403.a n : ℤ) = A386125 (n + 1)

end A386125

/-! ## A386125.P15467749188632969899

`∩[A202268(n+1), A386352(n+1)]`
-/

namespace A386125.P15467749188632969899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386125.P15467749188632969899

namespace A386125

/-- `∩[A202268(n+1), A386352(n+1)]` -/
def P15467749188632969899.Spec : Prop :=
  ∀ n, (P15467749188632969899.a n : ℤ) = A386125 (n + 1)

end A386125

/-! ## A386125.P16341015315230501680

`∩[A202268(n+1), A386357(n+1)]`
-/

namespace A386125.P16341015315230501680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386125.P16341015315230501680

namespace A386125

/-- `∩[A202268(n+1), A386357(n+1)]` -/
def P16341015315230501680.Spec : Prop :=
  ∀ n, (P16341015315230501680.a n : ℤ) = A386125 (n + 1)

end A386125

/-! ## A386125.P14054896046232108219

`∩[A084984(n+1), A386326(n+1)]`
-/

namespace A386125.P14054896046232108219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386125.P14054896046232108219

namespace A386125

/-- `∩[A084984(n+1), A386326(n+1)]` -/
def P14054896046232108219.Spec : Prop :=
  ∀ n, (P14054896046232108219.a n : ℤ) = A386125 (n + 1)

end A386125

/-!
# A386126: Primes having only {1, 4, 7, 8} as digits.

The programs for A386126, there is no canonical definition to state claims against.
-/

/-! ## A386126.P1933225215111536659

`A079651(n+1)%A171923(A014612(n+1))`
-/

namespace A386126.P1933225215111536659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079651 (n + 1)) (A171923 (A014612 (n + 1)).toNat)

end

end A386126.P1933225215111536659

/-!
# A386127: Primes having only {1, 4, 7, 9} as digits.

The programs for A386127, there is no canonical definition to state claims against.
-/

/-! ## A386127.P15922150219028860090

`∩[A125293(n+1), A192589(n+1)]`
-/

namespace A386127.P15922150219028860090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386127.P15922150219028860090

/-! ## A386127.P12190744859053192186

`∩[A330095(n+1), A386343(n+1)]`
-/

namespace A386127.P12190744859053192186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386127.P12190744859053192186

/-!
# A386128: Primes having only {1, 4, 8, 9} as digits.

The programs for A386128, there is no canonical definition to state claims against.
-/

/-! ## A386128.P10726278299052102550

`∩[A034844(n+1), A077675(n+1)]`
-/

namespace A386128.P10726278299052102550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386128.P10726278299052102550

/-! ## A386128.P12886312698435800154

`∩[A077675(n+1), A152313(n+1)]`
-/

namespace A386128.P12886312698435800154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386128.P12886312698435800154

/-! ## A386128.P15548432918974708028

`∩[A038611(n+1), A077675(n+1)]`
-/

namespace A386128.P15548432918974708028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386128.P15548432918974708028

/-! ## A386128.P13660301850866250863

`∩[A077675(n+1), A152312(n+1)]`
-/

namespace A386128.P13660301850866250863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386128.P13660301850866250863

/-! ## A386128.P11575655782068880107

`∩[A077675(n+1), A342961(n+1)]`
-/

namespace A386128.P11575655782068880107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386128.P11575655782068880107

/-! ## A386128.P7744162393401929398

`p?[A077675(n+1)]`
-/

namespace A386128.P7744162393401929398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A386128.P7744162393401929398

/-! ## A386128.P4311298559239014515

`∩[A038604(n+1), A077675(n+1)]`
-/

namespace A386128.P4311298559239014515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386128.P4311298559239014515

/-! ## A386128.P1913661407287506364

`∩[A077675(n+1), A329760(n+1)]`
-/

namespace A386128.P1913661407287506364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386128.P1913661407287506364

/-! ## A386128.P14526966663472201609

`∩[A077675(n+1), A386335(n+1)]`
-/

namespace A386128.P14526966663472201609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386128.P14526966663472201609

/-! ## A386128.P8687182734615223754

`∩[A077675(n+1), A386342(n+1)]`
-/

namespace A386128.P8687182734615223754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386128.P8687182734615223754

/-! ## A386128.P5831345122988367983

`∩[A038615(n+1), A077675(n+1)]`
-/

namespace A386128.P5831345122988367983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386128.P5831345122988367983

/-! ## A386128.P9737340490457690647

`∩[A077675(n+1), A380906(n+1)]`
-/

namespace A386128.P9737340490457690647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386128.P9737340490457690647

/-! ## A386128.P16707771447528657299

`∩[A077675(n+1), A386341(n+1)]`
-/

namespace A386128.P16707771447528657299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386128.P16707771447528657299

/-! ## A386128.P1190878546205106827

`∩[A152313(n+1), A386341(n+1)]`
-/

namespace A386128.P1190878546205106827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386128.P1190878546205106827

/-! ## A386128.P41169306521287952

`∩[A202268(n+1), A386341(n+1)]`
-/

namespace A386128.P41169306521287952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386128.P41169306521287952

/-! ## A386128.P2962476188929020095

`∩[A077675(n+1), A386321(n+1)]`
-/

namespace A386128.P2962476188929020095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386128.P2962476188929020095

/-! ## A386128.P15870142697659420275

`∩[A038872(n+1), A077675(n+1)]`
-/

namespace A386128.P15870142697659420275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386128.P15870142697659420275

/-! ## A386128.P4007401590208820318

`∩[A045468(n+1), A077675(n+1)]`
-/

namespace A386128.P4007401590208820318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386128.P4007401590208820318

/-! ## A386128.P10752466495009467691

`∩[A064739(n+1), A077675(n+1)]`
-/

namespace A386128.P10752466495009467691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386128.P10752466495009467691

/-! ## A386128.P10825482036104735768

`∩[A076518(n+1), A077675(n+1)]`
-/

namespace A386128.P10825482036104735768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386128.P10825482036104735768

/-!
# A386129: Primes having only {1, 5, 6, 7} as digits.

The programs for A386129, there is no canonical definition to state claims against.
-/

/-! ## A386129.P6048379367876441317

`∩[A062101(n+1), A386335(n+1)]`
-/

namespace A386129.P6048379367876441317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386129.P6048379367876441317

/-!
# A386130: Primes having only {1, 5, 6, 8} as digits.

The programs for A386130, there is no canonical definition to state claims against.
-/

/-! ## A386130.P1112288607200822814

`A136061(n+1)%A088829(A084131(n))`
-/

namespace A386130.P1112288607200822814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136061 (n + 1)) (A088829 (A084131 n).toNat)

end

end A386130.P1112288607200822814

/-!
# A386132: Primes having only {1, 5, 7, 8} as digits.

The programs for A386132, there is no canonical definition to state claims against.
-/

/-! ## A386132.P4854582858138173974

`A260828(n+1)%A336780(A034838(2*n+3))`
-/

namespace A386132.P4854582858138173974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260828 (n + 1)) (A336780 (A034838 (2 * n + 3)).toNat)

end

end A386132.P4854582858138173974

/-!
# A386133: Primes having only {1, 5, 7, 9} as digits.

The programs for A386133, the canonical program `A386133.P16322278265495054683` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386133 has offset 1).

The definition of A386133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 539 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386133.P3063295740364616857

`∩[A030096(n+1), A038611(n+1)]`
-/

namespace A386133.P3063295740364616857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386133.P3063295740364616857

namespace A386133

/-- `∩[A030096(n+1), A038611(n+1)]` -/
def P3063295740364616857.Spec : Prop :=
  ∀ n, (P3063295740364616857.a n : ℤ) = A386133 (n + 1)

end A386133

/-! ## A386133.P18117761339657344233

`∩[A038611(n+1), A066640(n+1)]`
-/

namespace A386133.P18117761339657344233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386133.P18117761339657344233

namespace A386133

/-- `∩[A038611(n+1), A066640(n+1)]` -/
def P18117761339657344233.Spec : Prop :=
  ∀ n, (P18117761339657344233.a n : ℤ) = A386133 (n + 1)

end A386133

/-! ## A386133.P16322278265495054683

`∩[A030096(n+1), A386335(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A386133

/-- `∩[A030096(n+1), A386335(n+1)]` -/
def P16322278265495054683.Spec : Prop :=
  ∀ n, (P16322278265495054683.a n : ℤ) = A386133 (n + 1)

theorem P16322278265495054683.correct : P16322278265495054683.Spec := by
  intro n
  simp only [A386133, Nat.add_sub_cancel]

end A386133

/-! ## A386133.P18414746589436326947

`∩[A066640(n+1), A386335(n+1)]`
-/

namespace A386133.P18414746589436326947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386133.P18414746589436326947

namespace A386133

/-- `∩[A066640(n+1), A386335(n+1)]` -/
def P18414746589436326947.Spec : Prop :=
  ∀ n, (P18414746589436326947.a n : ℤ) = A386133 (n + 1)

end A386133

/-! ## A386133.P4974541906686501754

`∩[A030096(n+1), A386340(n+1)]`
-/

namespace A386133.P4974541906686501754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386133.P4974541906686501754

namespace A386133

/-- `∩[A030096(n+1), A386340(n+1)]` -/
def P4974541906686501754.Spec : Prop :=
  ∀ n, (P4974541906686501754.a n : ℤ) = A386133 (n + 1)

end A386133

/-! ## A386133.P5069304882102460577

`∩[A066640(n+1), A386340(n+1)]`
-/

namespace A386133.P5069304882102460577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386133.P5069304882102460577

namespace A386133

/-- `∩[A066640(n+1), A386340(n+1)]` -/
def P5069304882102460577.Spec : Prop :=
  ∀ n, (P5069304882102460577.a n : ℤ) = A386133 (n + 1)

end A386133

/-! ## A386133.P16433627837229298780

`∩[A038611(n+1), A062086(n+1)]`
-/

namespace A386133.P16433627837229298780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386133.P16433627837229298780

namespace A386133

/-- `∩[A038611(n+1), A062086(n+1)]` -/
def P16433627837229298780.Spec : Prop :=
  ∀ n, (P16433627837229298780.a n : ℤ) = A386133 (n + 1)

end A386133

/-! ## A386133.P10238172605587525793

`∩[A062086(n+1), A386335(n+1)]`
-/

namespace A386133.P10238172605587525793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386133.P10238172605587525793

namespace A386133

/-- `∩[A062086(n+1), A386335(n+1)]` -/
def P10238172605587525793.Spec : Prop :=
  ∀ n, (P10238172605587525793.a n : ℤ) = A386133 (n + 1)

end A386133

/-! ## A386133.P1633892879595676590

`∩[A062086(n+1), A386340(n+1)]`
-/

namespace A386133.P1633892879595676590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386133.P1633892879595676590

namespace A386133

/-- `∩[A062086(n+1), A386340(n+1)]` -/
def P1633892879595676590.Spec : Prop :=
  ∀ n, (P1633892879595676590.a n : ℤ) = A386133 (n + 1)

end A386133

/-! ## A386133.P11029953226268896260

`∩[A014261(n+1), A038611(n+1)]`
-/

namespace A386133.P11029953226268896260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386133.P11029953226268896260

namespace A386133

/-- `∩[A014261(n+1), A038611(n+1)]` -/
def P11029953226268896260.Spec : Prop :=
  ∀ n, (P11029953226268896260.a n : ℤ) = A386133 (n + 1)

end A386133

/-! ## A386133.P1200623565296386974

`∩[A014261(n+1), A386321(n+1)]`
-/

namespace A386133.P1200623565296386974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386133.P1200623565296386974

namespace A386133

/-- `∩[A014261(n+1), A386321(n+1)]` -/
def P1200623565296386974.Spec : Prop :=
  ∀ n, (P1200623565296386974.a n : ℤ) = A386133 (n + 1)

end A386133

/-! ## A386133.P4986838994253973326

`∩[A014261(n+1), A386335(n+1)]`
-/

namespace A386133.P4986838994253973326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386133.P4986838994253973326

namespace A386133

/-- `∩[A014261(n+1), A386335(n+1)]` -/
def P4986838994253973326.Spec : Prop :=
  ∀ n, (P4986838994253973326.a n : ℤ) = A386133 (n + 1)

end A386133

/-! ## A386133.P7177063793473992899

`∩[A014261(n+1), A386340(n+1)]`
-/

namespace A386133.P7177063793473992899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386133.P7177063793473992899

namespace A386133

/-- `∩[A014261(n+1), A386340(n+1)]` -/
def P7177063793473992899.Spec : Prop :=
  ∀ n, (P7177063793473992899.a n : ℤ) = A386133 (n + 1)

end A386133

/-! ## A386133.P11312610354918222724

`∩[A014261(n+1), A386341(n+1)]`
-/

namespace A386133.P11312610354918222724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386133.P11312610354918222724

namespace A386133

/-- `∩[A014261(n+1), A386341(n+1)]` -/
def P11312610354918222724.Spec : Prop :=
  ∀ n, (P11312610354918222724.a n : ℤ) = A386133 (n + 1)

end A386133

/-! ## A386133.P2198408280983065194

`∩[A014261(n+1), A386343(n+1)]`
-/

namespace A386133.P2198408280983065194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386133.P2198408280983065194

namespace A386133

/-- `∩[A014261(n+1), A386343(n+1)]` -/
def P2198408280983065194.Spec : Prop :=
  ∀ n, (P2198408280983065194.a n : ℤ) = A386133 (n + 1)

end A386133

/-! ## A386133.P5160768049265575573

`∩[A030096(n+1), A386321(n+1)]`
-/

namespace A386133.P5160768049265575573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386133.P5160768049265575573

namespace A386133

/-- `∩[A030096(n+1), A386321(n+1)]` -/
def P5160768049265575573.Spec : Prop :=
  ∀ n, (P5160768049265575573.a n : ℤ) = A386133 (n + 1)

end A386133

/-! ## A386133.P14373298825012295809

`∩[A030096(n+1), A386341(n+1)]`
-/

namespace A386133.P14373298825012295809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386133.P14373298825012295809

namespace A386133

/-- `∩[A030096(n+1), A386341(n+1)]` -/
def P14373298825012295809.Spec : Prop :=
  ∀ n, (P14373298825012295809.a n : ℤ) = A386133 (n + 1)

end A386133

/-! ## A386133.P9140103208845345739

`∩[A030096(n+1), A386343(n+1)]`
-/

namespace A386133.P9140103208845345739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386133.P9140103208845345739

namespace A386133

/-- `∩[A030096(n+1), A386343(n+1)]` -/
def P9140103208845345739.Spec : Prop :=
  ∀ n, (P9140103208845345739.a n : ℤ) = A386133 (n + 1)

end A386133

/-! ## A386133.P512357778640349035

`∩[A062086(n+1), A386321(n+1)]`
-/

namespace A386133.P512357778640349035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386133.P512357778640349035

namespace A386133

/-- `∩[A062086(n+1), A386321(n+1)]` -/
def P512357778640349035.Spec : Prop :=
  ∀ n, (P512357778640349035.a n : ℤ) = A386133 (n + 1)

end A386133

/-! ## A386133.P14674079313106753327

`∩[A062086(n+1), A386341(n+1)]`
-/

namespace A386133.P14674079313106753327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386133.P14674079313106753327

namespace A386133

/-- `∩[A062086(n+1), A386341(n+1)]` -/
def P14674079313106753327.Spec : Prop :=
  ∀ n, (P14674079313106753327.a n : ℤ) = A386133 (n + 1)

end A386133

/-!
# A386134: Primes having only {1, 5, 8, 9} as digits.

The programs for A386134, there is no canonical definition to state claims against.
-/

/-! ## A386134.P3802200689535009167

`A259430(A362230(n+2))`
-/

namespace A386134.P3802200689535009167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259430 (A362230 (n + 2)).toNat

end

end A386134.P3802200689535009167

/-! ## A386134.P5538764763554786402

`A325395(A255401(n+1)+A073169(n+1))`
-/

namespace A386134.P5538764763554786402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325395 (A255401 (n + 1) + A073169 (n + 1)).toNat

end

end A386134.P5538764763554786402

/-!
# A386136: Primes having only {1, 6, 7, 9} as digits.

The programs for A386136, there is no canonical definition to state claims against.
-/

/-! ## A386136.P10376602883973389952

`∩[A073416(n+1), A361822(n+1)]`
-/

namespace A386136.P10376602883973389952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386136.P10376602883973389952

/-!
# A386137: Primes having only {1, 6, 8, 9} as digits.

The programs for A386137, the canonical program `A386137.P14303488587727508822` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386137 has offset 1).

The definition of A386137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2695 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386137.P14303488587727508822

`∩[A057770(n+1), A152313(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A386137

/-- `∩[A057770(n+1), A152313(n+1)]` -/
def P14303488587727508822.Spec : Prop :=
  ∀ n, (P14303488587727508822.a n : ℤ) = A386137 (n + 1)

theorem P14303488587727508822.correct : P14303488587727508822.Spec := by
  intro n
  simp only [A386137, Nat.add_sub_cancel]

end A386137

/-! ## A386137.P8324835314335598483

`∩[A045574(n+1), A152313(n+1)]`
-/

namespace A386137.P8324835314335598483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386137.P8324835314335598483

namespace A386137

/-- `∩[A045574(n+1), A152313(n+1)]` -/
def P8324835314335598483.Spec : Prop :=
  ∀ n, (P8324835314335598483.a n : ℤ) = A386137 (n + 1)

end A386137

/-! ## A386137.P10674075567043578694

`∩[A152313(n+1), A054047(n)]`
-/

namespace A386137.P10674075567043578694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386137.P10674075567043578694

namespace A386137

/-- `∩[A152313(n+1), A054047(n)]` -/
def P10674075567043578694.Spec : Prop :=
  ∀ n, (P10674075567043578694.a n : ℤ) = A386137 (n + 1)

end A386137

/-! ## A386137.P3002706170204563595

`∩[A386320(n+1), A054047(n)]`
-/

namespace A386137.P3002706170204563595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386137.P3002706170204563595

namespace A386137

/-- `∩[A386320(n+1), A054047(n)]` -/
def P3002706170204563595.Spec : Prop :=
  ∀ n, (P3002706170204563595.a n : ℤ) = A386137 (n + 1)

end A386137

/-! ## A386137.P5923870655130656940

`∩[A386321(n+1), A054047(n)]`
-/

namespace A386137.P5923870655130656940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386137.P5923870655130656940

namespace A386137

/-- `∩[A386321(n+1), A054047(n)]` -/
def P5923870655130656940.Spec : Prop :=
  ∀ n, (P5923870655130656940.a n : ℤ) = A386137 (n + 1)

end A386137

/-! ## A386137.P5085974617942795650

`∩[A386322(n+1), A054047(n)]`
-/

namespace A386137.P5085974617942795650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386137.P5085974617942795650

namespace A386137

/-- `∩[A386322(n+1), A054047(n)]` -/
def P5085974617942795650.Spec : Prop :=
  ∀ n, (P5085974617942795650.a n : ℤ) = A386137 (n + 1)

end A386137

/-! ## A386137.P8113617976009699462

`∩[A386323(n+1), A054047(n)]`
-/

namespace A386137.P8113617976009699462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386137.P8113617976009699462

namespace A386137

/-- `∩[A386323(n+1), A054047(n)]` -/
def P8113617976009699462.Spec : Prop :=
  ∀ n, (P8113617976009699462.a n : ℤ) = A386137 (n + 1)

end A386137

/-! ## A386137.P11748291519847833499

`∩[A386325(n+1), A054047(n)]`
-/

namespace A386137.P11748291519847833499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386137.P11748291519847833499

namespace A386137

/-- `∩[A386325(n+1), A054047(n)]` -/
def P11748291519847833499.Spec : Prop :=
  ∀ n, (P11748291519847833499.a n : ℤ) = A386137 (n + 1)

end A386137

/-! ## A386137.P14908861118040572684

`∩[A057770(n+1), A202268(n+1)]`
-/

namespace A386137.P14908861118040572684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386137.P14908861118040572684

namespace A386137

/-- `∩[A057770(n+1), A202268(n+1)]` -/
def P14908861118040572684.Spec : Prop :=
  ∀ n, (P14908861118040572684.a n : ℤ) = A386137 (n + 1)

end A386137

/-! ## A386137.P6492560901796566976

`∩[A034844(n+1), A386322(n+1)]`
-/

namespace A386137.P6492560901796566976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386137.P6492560901796566976

namespace A386137

/-- `∩[A034844(n+1), A386322(n+1)]` -/
def P6492560901796566976.Spec : Prop :=
  ∀ n, (P6492560901796566976.a n : ℤ) = A386137 (n + 1)

end A386137

/-! ## A386137.P1668712330632353974

`∩[A045574(n+1), A386320(n+1)]`
-/

namespace A386137.P1668712330632353974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386137.P1668712330632353974

namespace A386137

/-- `∩[A045574(n+1), A386320(n+1)]` -/
def P1668712330632353974.Spec : Prop :=
  ∀ n, (P1668712330632353974.a n : ℤ) = A386137 (n + 1)

end A386137

/-! ## A386137.P13899322972332545898

`∩[A045574(n+1), A386321(n+1)]`
-/

namespace A386137.P13899322972332545898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386137.P13899322972332545898

namespace A386137

/-- `∩[A045574(n+1), A386321(n+1)]` -/
def P13899322972332545898.Spec : Prop :=
  ∀ n, (P13899322972332545898.a n : ℤ) = A386137 (n + 1)

end A386137

/-! ## A386137.P2143585750157031853

`∩[A045574(n+1), A386322(n+1)]`
-/

namespace A386137.P2143585750157031853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386137.P2143585750157031853

namespace A386137

/-- `∩[A045574(n+1), A386322(n+1)]` -/
def P2143585750157031853.Spec : Prop :=
  ∀ n, (P2143585750157031853.a n : ℤ) = A386137 (n + 1)

end A386137

/-! ## A386137.P13970961084382823598

`∩[A045574(n+1), A386323(n+1)]`
-/

namespace A386137.P13970961084382823598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386137.P13970961084382823598

namespace A386137

/-- `∩[A045574(n+1), A386323(n+1)]` -/
def P13970961084382823598.Spec : Prop :=
  ∀ n, (P13970961084382823598.a n : ℤ) = A386137 (n + 1)

end A386137

/-! ## A386137.P9030935340860301987

`∩[A045574(n+1), A386325(n+1)]`
-/

namespace A386137.P9030935340860301987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386137.P9030935340860301987

namespace A386137

/-- `∩[A045574(n+1), A386325(n+1)]` -/
def P9030935340860301987.Spec : Prop :=
  ∀ n, (P9030935340860301987.a n : ℤ) = A386137 (n + 1)

end A386137

/-! ## A386137.P3883007931530833329

`∩[A057770(n+1), A386320(n+1)]`
-/

namespace A386137.P3883007931530833329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386137.P3883007931530833329

namespace A386137

/-- `∩[A057770(n+1), A386320(n+1)]` -/
def P3883007931530833329.Spec : Prop :=
  ∀ n, (P3883007931530833329.a n : ℤ) = A386137 (n + 1)

end A386137

/-! ## A386137.P15674663843769635732

`∩[A057770(n+1), A386321(n+1)]`
-/

namespace A386137.P15674663843769635732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386137.P15674663843769635732

namespace A386137

/-- `∩[A057770(n+1), A386321(n+1)]` -/
def P15674663843769635732.Spec : Prop :=
  ∀ n, (P15674663843769635732.a n : ℤ) = A386137 (n + 1)

end A386137

/-! ## A386137.P9647132934715797203

`∩[A057770(n+1), A386322(n+1)]`
-/

namespace A386137.P9647132934715797203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386137.P9647132934715797203

namespace A386137

/-- `∩[A057770(n+1), A386322(n+1)]` -/
def P9647132934715797203.Spec : Prop :=
  ∀ n, (P9647132934715797203.a n : ℤ) = A386137 (n + 1)

end A386137

/-! ## A386137.P6364132357980346679

`∩[A057770(n+1), A386323(n+1)]`
-/

namespace A386137.P6364132357980346679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386137.P6364132357980346679

namespace A386137

/-- `∩[A057770(n+1), A386323(n+1)]` -/
def P6364132357980346679.Spec : Prop :=
  ∀ n, (P6364132357980346679.a n : ℤ) = A386137 (n + 1)

end A386137

/-! ## A386137.P4402587669283102240

`∩[A057770(n+1), A386325(n+1)]`
-/

namespace A386137.P4402587669283102240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386137.P4402587669283102240

namespace A386137

/-- `∩[A057770(n+1), A386325(n+1)]` -/
def P4402587669283102240.Spec : Prop :=
  ∀ n, (P4402587669283102240.a n : ℤ) = A386137 (n + 1)

end A386137

/-!
# A386139: Primes having only {2, 3, 4, 5} as digits.

The programs for A386139, there is no canonical definition to state claims against.
-/

/-! ## A386139.P9809183438635263330

`∩[A036958(n+1), A106116(n+1)]`
-/

namespace A386139.P9809183438635263330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386139.P9809183438635263330

/-! ## A386139.P220547598324620049

`∩[A133783(n+1), A386332(n+1)]`
-/

namespace A386139.P220547598324620049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386139.P220547598324620049

/-! ## A386139.P14746769329790071258

`∩[A038603(n+1), A084545(n+1)]`
-/

namespace A386139.P14746769329790071258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386139.P14746769329790071258

/-! ## A386139.P18130158307665424496

`∩[A084545(n+1), A106116(n+1)]`
-/

namespace A386139.P18130158307665424496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386139.P18130158307665424496

/-! ## A386139.P13684991309982716011

`∩[A084545(n+1), A154761(n+1)]`
-/

namespace A386139.P13684991309982716011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386139.P13684991309982716011

/-! ## A386139.P7925584203680214168

`∩[A084545(n+1), A386332(n+1)]`
-/

namespace A386139.P7925584203680214168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386139.P7925584203680214168

/-! ## A386139.P6206717229120960963

`∩[A084545(n+1), A386333(n+1)]`
-/

namespace A386139.P6206717229120960963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386139.P6206717229120960963

/-! ## A386139.P16002445059749596080

`∩[A084545(n+1), A386334(n+1)]`
-/

namespace A386139.P16002445059749596080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386139.P16002445059749596080

/-! ## A386139.P13031945275629438446

`∩[A106116(n+1), A007092(n)]`
-/

namespace A386139.P13031945275629438446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386139.P13031945275629438446

/-! ## A386139.P12151731154935446031

`∩[A001729(n+1), A386333(n+1)]`
-/

namespace A386139.P12151731154935446031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386139.P12151731154935446031

/-!
# A386140: Primes having only {2, 3, 4, 6} as digits.

The programs for A386140, there is no canonical definition to state claims against.
-/

/-! ## A386140.P9689189312507692950

`∩[A133783(n+1), A386331(n+1)]`
-/

namespace A386140.P9689189312507692950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386140.P9689189312507692950

/-! ## A386140.P4689268678840034060

`∩[A057436(n+1), A386331(n+1)]`
-/

namespace A386140.P4689268678840034060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386140.P4689268678840034060

/-!
# A386141: Primes having only {2, 3, 4, 7} as digits.

The programs for A386141, there is no canonical definition to state claims against.
-/

/-! ## A386141.P8668270412117862827

`∩[A001729(n+1), A386331(n+1)]`
-/

namespace A386141.P8668270412117862827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386141.P8668270412117862827

/-!
# A386144: Primes having only {2, 3, 5, 6} as digits.

The programs for A386144, there is no canonical definition to state claims against.
-/

/-! ## A386144.P13705466908185553515

`∩[A034470(n+1), A133783(n+1)]`
-/

namespace A386144.P13705466908185553515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386144.P13705466908185553515

/-! ## A386144.P12366162126943289708

`∩[A034470(n+1), A077674(n+1)]`
-/

namespace A386144.P12366162126943289708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386144.P12366162126943289708

/-! ## A386144.P11313817379736147848

`∩[A036960(n+1), A077674(n+1)]`
-/

namespace A386144.P11313817379736147848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386144.P11313817379736147848

/-! ## A386144.P2123516627437451047

`∩[A077674(n+1), A133783(n+1)]`
-/

namespace A386144.P2123516627437451047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386144.P2123516627437451047

/-! ## A386144.P15367339499492005494

`∩[A077674(n+1), A386333(n+1)]`
-/

namespace A386144.P15367339499492005494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386144.P15367339499492005494

/-! ## A386144.P8955101799920612406

`∩[A077674(n+1), A386358(n+1)]`
-/

namespace A386144.P8955101799920612406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386144.P8955101799920612406

/-! ## A386144.P9074519697748803955

`∩[A133783(n+1), A386330(n+1)]`
-/

namespace A386144.P9074519697748803955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386144.P9074519697748803955

/-! ## A386144.P16383416910828883751

`∩[A038615(n+1), A077674(n+1)]`
-/

namespace A386144.P16383416910828883751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386144.P16383416910828883751

/-! ## A386144.P7948900280802312267

`∩[A077674(n+1), A386347(n+1)]`
-/

namespace A386144.P7948900280802312267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386144.P7948900280802312267

/-! ## A386144.P17998958378550161651

`∩[A077674(n+1), A386357(n+1)]`
-/

namespace A386144.P17998958378550161651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386144.P17998958378550161651

/-! ## A386144.P7141318801281788905

`∩[A077674(n+1), A386325(n+1)]`
-/

namespace A386144.P7141318801281788905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386144.P7141318801281788905

/-!
# A386145: Primes having only {2, 3, 5, 8} as digits.

The programs for A386145, there is no canonical definition to state claims against.
-/

/-! ## A386145.P572994229404862678

`∩[A008539(n+1), A074491(n+1)]`
-/

namespace A386145.P572994229404862678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386145.P572994229404862678

/-! ## A386145.P6290218097815994537

`∩[A034470(n+1), A255430(n+1)]`
-/

namespace A386145.P6290218097815994537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386145.P6290218097815994537

/-! ## A386145.P16980037904647724393

`∩[A038615(n+1), A255430(n+1)]`
-/

namespace A386145.P16980037904647724393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386145.P16980037904647724393

/-! ## A386145.P14248168700772043067

`∩[A255430(n+1), A386325(n+1)]`
-/

namespace A386145.P14248168700772043067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386145.P14248168700772043067

/-!
# A386147: Primes having only {2, 3, 6, 7} as digits.

The programs for A386147, there is no canonical definition to state claims against.
-/

/-! ## A386147.P17452604755892920241

`∩[A077674(n+1), A386331(n+1)]`
-/

namespace A386147.P17452604755892920241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386147.P17452604755892920241

/-! ## A386147.P10168896336300207900

`∩[A077674(n+1), A386353(n+1)]`
-/

namespace A386147.P10168896336300207900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386147.P10168896336300207900

/-! ## A386147.P2769666839598689528

`∩[A077674(n+1), A386345(n+1)]`
-/

namespace A386147.P2769666839598689528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386147.P2769666839598689528

/-! ## A386147.P8252435630517033711

`∩[A077674(n+1), A386323(n+1)]`
-/

namespace A386147.P8252435630517033711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386147.P8252435630517033711

/-! ## A386147.P15903838259990021503

`∩[A077674(n+1), A386352(n+1)]`
-/

namespace A386147.P15903838259990021503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386147.P15903838259990021503

/-! ## A386147.P5067935615572369349

`∩[A038613(n+1), A077674(n+1)]`
-/

namespace A386147.P5067935615572369349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386147.P5067935615572369349

/-! ## A386147.P3072921256318705867

`∩[A062101(n+1), A386331(n+1)]`
-/

namespace A386147.P3072921256318705867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386147.P3072921256318705867

/-!
# A386150: Primes having only {2, 3, 7, 8} as digits.

The programs for A386150, there is no canonical definition to state claims against.
-/

/-! ## A386150.P15248031420190954989

`∩[A074491(n+1), A386350(n+1)]`
-/

namespace A386150.P15248031420190954989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386150.P15248031420190954989

/-! ## A386150.P15197554130099309381

`∩[A059307(n+1), A386350(n+1)]`
-/

namespace A386150.P15197554130099309381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386150.P15197554130099309381

/-!
# A386153: Primes having only {2, 4, 5, 7} as digits.

The programs for A386153, there is no canonical definition to state claims against.
-/

/-! ## A386153.P10620972750547348578

`∩[A106116(n+1), A247052(n+1)]`
-/

namespace A386153.P10620972750547348578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386153.P10620972750547348578

/-! ## A386153.P11531572324499831239

`∩[A038603(n+1), A247052(n+1)]`
-/

namespace A386153.P11531572324499831239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386153.P11531572324499831239

/-! ## A386153.P14343049149304776404

`∩[A247052(n+1), A386329(n+1)]`
-/

namespace A386153.P14343049149304776404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386153.P14343049149304776404

/-! ## A386153.P16566998715800975557

`∩[A154761(n+1), A247052(n+1)]`
-/

namespace A386153.P16566998715800975557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386153.P16566998715800975557

/-! ## A386153.P7549497531239193484

`∩[A247052(n+1), A386332(n+1)]`
-/

namespace A386153.P7549497531239193484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386153.P7549497531239193484

/-! ## A386153.P18408692788000781589

`∩[A247052(n+1), A386334(n+1)]`
-/

namespace A386153.P18408692788000781589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386153.P18408692788000781589

/-! ## A386153.P15589537538103586059

`∩[A132080(n+1), A247052(n+1)]`
-/

namespace A386153.P15589537538103586059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386153.P15589537538103586059

/-! ## A386153.P14187204540537076493

`∩[A247052(n+1), A307636(n+1)]`
-/

namespace A386153.P14187204540537076493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386153.P14187204540537076493

/-! ## A386153.P17320493942908651911

`∩[A038603(n+1), A082741(n+1)]`
-/

namespace A386153.P17320493942908651911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386153.P17320493942908651911

/-! ## A386153.P8059366426612604928

`∩[A082741(n+1), A106116(n+1)]`
-/

namespace A386153.P8059366426612604928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386153.P8059366426612604928

/-! ## A386153.P10974678272922725703

`∩[A082741(n+1), A154761(n+1)]`
-/

namespace A386153.P10974678272922725703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386153.P10974678272922725703

/-! ## A386153.P1125883601016248384

`∩[A082741(n+1), A386329(n+1)]`
-/

namespace A386153.P1125883601016248384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386153.P1125883601016248384

/-! ## A386153.P6327424897714301507

`∩[A082741(n+1), A386332(n+1)]`
-/

namespace A386153.P6327424897714301507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386153.P6327424897714301507

/-! ## A386153.P489778918799196655

`∩[A082741(n+1), A386334(n+1)]`
-/

namespace A386153.P489778918799196655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386153.P489778918799196655

/-!
# A386155: Primes having only {2, 4, 6, 7} as digits.

The programs for A386155, there is no canonical definition to state claims against.
-/

/-! ## A386155.P6127387240811426892

`A291280(A135365(n))`
-/

namespace A386155.P6127387240811426892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291280 (A135365 n).toNat

end

end A386155.P6127387240811426892

/-!
# A386156: Primes having only {2, 4, 6, 9} as digits.

The programs for A386156, there is no canonical definition to state claims against.
-/

/-! ## A386156.P3726204023381968340

`∩[A276138(n+1), A386326(n+1)]`
-/

namespace A386156.P3726204023381968340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386156.P3726204023381968340

/-! ## A386156.P4145477894177347452

`∩[A175711(n+1), A276138(n+1)]`
-/

namespace A386156.P4145477894177347452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386156.P4145477894177347452

/-!
# A386158: Primes having only {2, 4, 7, 9} as digits.

The programs for A386158, there is no canonical definition to state claims against.
-/

/-! ## A386158.P12970145635812192175

`∩[A062102(n+1), A386352(n+1)]`
-/

namespace A386158.P12970145635812192175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386158.P12970145635812192175

/-! ## A386158.P7845838732612205093

`∩[A102806(n+1), A386329(n+1)]`
-/

namespace A386158.P7845838732612205093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386158.P7845838732612205093

/-!
# A386159: Primes having only {2, 4, 8, 9} as digits.

The programs for A386159, there is no canonical definition to state claims against.
-/

/-! ## A386159.P9331473455254413154

`∩[A276138(n+1), A386324(n+1)]`
-/

namespace A386159.P9331473455254413154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386159.P9331473455254413154

/-!
# A386160: Primes having only {2, 5, 6, 7} as digits.

The programs for A386160, there is no canonical definition to state claims against.
-/

/-! ## A386160.P3848619947843954640

`∩[A038611(n+1), A077674(n+1)]`
-/

namespace A386160.P3848619947843954640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386160.P3848619947843954640

/-! ## A386160.P13335006609860207920

`∩[A077674(n+1), A386329(n+1)]`
-/

namespace A386160.P13335006609860207920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386160.P13335006609860207920

/-! ## A386160.P11076121114252191683

`∩[A077674(n+1), A386344(n+1)]`
-/

namespace A386160.P11076121114252191683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386160.P11076121114252191683

/-! ## A386160.P5983208418926105474

`∩[A077674(n+1), A386340(n+1)]`
-/

namespace A386160.P5983208418926105474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386160.P5983208418926105474

/-! ## A386160.P8461628081695051335

`∩[A077674(n+1), A386321(n+1)]`
-/

namespace A386160.P8461628081695051335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386160.P8461628081695051335

/-! ## A386160.P10237327069134842022

`∩[A077674(n+1), A386343(n+1)]`
-/

namespace A386160.P10237327069134842022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386160.P10237327069134842022

/-! ## A386160.P3144763174884364361

`∩[A062101(n+1), A386329(n+1)]`
-/

namespace A386160.P3144763174884364361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386160.P3144763174884364361

/-!
# A386164: Primes having only {2, 5, 8, 9} as digits.

The programs for A386164, there is no canonical definition to state claims against.
-/

/-! ## A386164.P9436498064659689977

`A034470(A083964(n+1))`
-/

namespace A386164.P9436498064659689977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034470 (A083964 (n + 1)).toNat

end

end A386164.P9436498064659689977

/-!
# A386167: Primes having only {2, 6, 8, 9} as digits.

The programs for A386167, there is no canonical definition to state claims against.
-/

/-! ## A386167.P5749112391630579697

`∩[A276138(n+1), A386322(n+1)]`
-/

namespace A386167.P5749112391630579697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386167.P5749112391630579697

/-!
# A386169: Primes having only {3, 4, 5, 6} as digits.

The programs for A386169, there is no canonical definition to state claims against.
-/

/-! ## A386169.P8195687148391633255

`∩[A036960(n+1), A106115(n+1)]`
-/

namespace A386169.P8195687148391633255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386169.P8195687148391633255

/-! ## A386169.P12313046098063035625

`∩[A036960(n+1), A155034(n+1)]`
-/

namespace A386169.P12313046098063035625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386169.P12313046098063035625

/-! ## A386169.P13653508589392334408

`∩[A106115(n+1), A133783(n+1)]`
-/

namespace A386169.P13653508589392334408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386169.P13653508589392334408

/-! ## A386169.P4963839945934959093

`∩[A133783(n+1), A155034(n+1)]`
-/

namespace A386169.P4963839945934959093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386169.P4963839945934959093

/-! ## A386169.P7963041063569771075

`∩[A133783(n+1), A386328(n+1)]`
-/

namespace A386169.P7963041063569771075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386169.P7963041063569771075

/-! ## A386169.P9302896475115505915

`∩[A057436(n+1), A106115(n+1)]`
-/

namespace A386169.P9302896475115505915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386169.P9302896475115505915

/-! ## A386169.P10416754987999867152

`∩[A057436(n+1), A155034(n+1)]`
-/

namespace A386169.P10416754987999867152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386169.P10416754987999867152

/-! ## A386169.P10449526011697992656

`∩[A057436(n+1), A386328(n+1)]`
-/

namespace A386169.P10449526011697992656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386169.P10449526011697992656

/-!
# A386170: Primes having only {3, 4, 5, 7} as digits.

The programs for A386170, there is no canonical definition to state claims against.
-/

/-! ## A386170.P18262301779943898974

`∩[A001729(n+1), A106115(n+1)]`
-/

namespace A386170.P18262301779943898974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386170.P18262301779943898974

/-! ## A386170.P8390768112486962014

`∩[A001729(n+1), A386328(n+1)]`
-/

namespace A386170.P8390768112486962014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386170.P8390768112486962014

/-!
# A386174: Primes having only {3, 4, 6, 8} as digits.

The programs for A386174, there is no canonical definition to state claims against.
-/

/-! ## A386174.P9865360499325034461

`∩[A098946(n+1), A106103(n+1)]`
-/

namespace A386174.P9865360499325034461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386174.P9865360499325034461

/-! ## A386174.P12905352861601706608

`∩[A098946(n+1), A106115(n+1)]`
-/

namespace A386174.P12905352861601706608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386174.P12905352861601706608

/-! ## A386174.P16873009174473259636

`∩[A098946(n+1), A155026(n+1)]`
-/

namespace A386174.P16873009174473259636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386174.P16873009174473259636

/-! ## A386174.P1834652449332912070

`∩[A098946(n+1), A155034(n+1)]`
-/

namespace A386174.P1834652449332912070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386174.P1834652449332912070

/-! ## A386174.P2644376817864999750

`∩[A098946(n+1), A386320(n+1)]`
-/

namespace A386174.P2644376817864999750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386174.P2644376817864999750

/-!
# A386178: Primes having only {3, 5, 6, 7} as digits.

The programs for A386178, there is no canonical definition to state claims against.
-/

/-! ## A386178.P18318279536946691468

`∩[A038604(n+1), A077674(n+1)]`
-/

namespace A386178.P18318279536946691468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386178.P18318279536946691468

/-! ## A386178.P16367386034958530340

`∩[A077674(n+1), A106115(n+1)]`
-/

namespace A386178.P16367386034958530340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386178.P16367386034958530340

/-! ## A386178.P4303184427720122797

`∩[A077674(n+1), A386328(n+1)]`
-/

namespace A386178.P4303184427720122797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386178.P4303184427720122797

/-! ## A386178.P4683302409953870693

`∩[A077674(n+1), A386336(n+1)]`
-/

namespace A386178.P4683302409953870693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386178.P4683302409953870693

/-! ## A386178.P12190187191746891881

`∩[A077674(n+1), A386339(n+1)]`
-/

namespace A386178.P12190187191746891881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386178.P12190187191746891881

/-! ## A386178.P13464413882372019320

`∩[A077674(n+1), A386338(n+1)]`
-/

namespace A386178.P13464413882372019320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386178.P13464413882372019320

/-! ## A386178.P15501734190058787311

`∩[A077674(n+1), A386320(n+1)]`
-/

namespace A386178.P15501734190058787311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386178.P15501734190058787311

/-! ## A386178.P2715340712375161475

`∩[A062101(n+1), A106115(n+1)]`
-/

namespace A386178.P2715340712375161475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386178.P2715340712375161475

/-! ## A386178.P12008695955953752107

`∩[A062101(n+1), A386328(n+1)]`
-/

namespace A386178.P12008695955953752107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386178.P12008695955953752107

/-!
# A386179: Primes having only {3, 5, 6, 8} as digits.

The programs for A386179, there is no canonical definition to state claims against.
-/

/-! ## A386179.P12301965151471076343

`∩[A106115(n+1), A287876(n+1)]`
-/

namespace A386179.P12301965151471076343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386179.P12301965151471076343

/-! ## A386179.P13485659571017947426

`∩[A155034(n+1), A287876(n+1)]`
-/

namespace A386179.P13485659571017947426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386179.P13485659571017947426

/-!
# A386181: Primes having only {3, 5, 7, 8} as digits.

The programs for A386181, there is no canonical definition to state claims against.
-/

/-! ## A386181.P7977934850258674914

`∩[A074491(n+1), A386337(n+1)]`
-/

namespace A386181.P7977934850258674914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386181.P7977934850258674914

/-! ## A386181.P6957398314597710062

`∩[A059307(n+1), A386337(n+1)]`
-/

namespace A386181.P6957398314597710062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386181.P6957398314597710062

/-! ## A386181.P18117041201006763251

`∩[A074491(n+1), A168501(n+1)]`
-/

namespace A386181.P18117041201006763251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386181.P18117041201006763251

/-!
# A386182: Primes having only {3, 5, 7, 9} as digits.

The programs for A386182, there is no canonical definition to state claims against.
-/

/-! ## A386182.P7182965003166863301

`∩[A030096(n+1), A106116(n+1)]`
-/

namespace A386182.P7182965003166863301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386182.P7182965003166863301

/-! ## A386182.P14862573094647181396

`∩[A066640(n+1), A106116(n+1)]`
-/

namespace A386182.P14862573094647181396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386182.P14862573094647181396

/-! ## A386182.P9353747998796596761

`∩[A030096(n+1), A155034(n+1)]`
-/

namespace A386182.P9353747998796596761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386182.P9353747998796596761

/-! ## A386182.P7691916209531762929

`∩[A066640(n+1), A155034(n+1)]`
-/

namespace A386182.P7691916209531762929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386182.P7691916209531762929

/-! ## A386182.P11256280976824850573

`∩[A030096(n+1), A038603(n+1)]`
-/

namespace A386182.P11256280976824850573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386182.P11256280976824850573

/-! ## A386182.P14675570038248768594

`∩[A038603(n+1), A066640(n+1)]`
-/

namespace A386182.P14675570038248768594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386182.P14675570038248768594

/-! ## A386182.P15943684346144611690

`∩[A106116(n+1), A155055(n+1)]`
-/

namespace A386182.P15943684346144611690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386182.P15943684346144611690

/-! ## A386182.P8714562152401329043

`∩[A155034(n+1), A155055(n+1)]`
-/

namespace A386182.P8714562152401329043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386182.P8714562152401329043

/-! ## A386182.P11416056644396078805

`∩[A030096(n+1), A106115(n+1)]`
-/

namespace A386182.P11416056644396078805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386182.P11416056644396078805

/-! ## A386182.P3848140928847960179

`∩[A066640(n+1), A106115(n+1)]`
-/

namespace A386182.P3848140928847960179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386182.P3848140928847960179

/-! ## A386182.P10259454885511679108

`∩[A106115(n+1), A155055(n+1)]`
-/

namespace A386182.P10259454885511679108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386182.P10259454885511679108

/-! ## A386182.P18082489624777166819

`∩[A030096(n+1), A386328(n+1)]`
-/

namespace A386182.P18082489624777166819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386182.P18082489624777166819

/-! ## A386182.P14315948687860707056

`∩[A066640(n+1), A386328(n+1)]`
-/

namespace A386182.P14315948687860707056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386182.P14315948687860707056

/-! ## A386182.P9047169077154525608

`∩[A030096(n+1), A386330(n+1)]`
-/

namespace A386182.P9047169077154525608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386182.P9047169077154525608

/-! ## A386182.P10207253774709494201

`∩[A066640(n+1), A386330(n+1)]`
-/

namespace A386182.P10207253774709494201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386182.P10207253774709494201

/-! ## A386182.P820536825140010556

`∩[A038603(n+1), A062086(n+1)]`
-/

namespace A386182.P820536825140010556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386182.P820536825140010556

/-! ## A386182.P5072053071883245334

`∩[A062086(n+1), A106115(n+1)]`
-/

namespace A386182.P5072053071883245334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386182.P5072053071883245334

/-! ## A386182.P14778555277726005169

`∩[A062086(n+1), A106116(n+1)]`
-/

namespace A386182.P14778555277726005169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386182.P14778555277726005169

/-! ## A386182.P9674536072685386324

`∩[A062086(n+1), A155034(n+1)]`
-/

namespace A386182.P9674536072685386324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386182.P9674536072685386324

/-! ## A386182.P2510004414911280436

`∩[A062086(n+1), A386328(n+1)]`
-/

namespace A386182.P2510004414911280436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386182.P2510004414911280436

/-!
# A386186: Primes having only {3, 6, 8, 9} as digits.

The programs for A386186, there is no canonical definition to state claims against.
-/

/-! ## A386186.P11765178389931083862

`∩[A079652(n+1), A106116(n+1)]`
-/

namespace A386186.P11765178389931083862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386186.P11765178389931083862

/-! ## A386186.P1290065383392193592

`∩[A079652(n+1), A106115(n+1)]`
-/

namespace A386186.P1290065383392193592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386186.P1290065383392193592

/-! ## A386186.P16073602991955050478

`∩[A072960(n+1), A106115(n+1)]`
-/

namespace A386186.P16073602991955050478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386186.P16073602991955050478

/-! ## A386186.P15533849459519387184

`∩[A072960(n+1), A106116(n+1)]`
-/

namespace A386186.P15533849459519387184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386186.P15533849459519387184

/-! ## A386186.P3973197012916259292

`∩[A072960(n+1), A386320(n+1)]`
-/

namespace A386186.P3973197012916259292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386186.P3973197012916259292

/-! ## A386186.P13763208555080890381

`∩[A079652(n+1), A386320(n+1)]`
-/

namespace A386186.P13763208555080890381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386186.P13763208555080890381

/-! ## A386186.P5573859737588082329

`∩[A072960(n+1), A386325(n+1)]`
-/

namespace A386186.P5573859737588082329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386186.P5573859737588082329

/-! ## A386186.P13072342443787414797

`∩[A079652(n+1), A386325(n+1)]`
-/

namespace A386186.P13072342443787414797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386186.P13072342443787414797

/-! ## A386186.P9391878173883809236

`∩[A038618(n+1), A072960(n+1)]`
-/

namespace A386186.P9391878173883809236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386186.P9391878173883809236

/-! ## A386186.P14454432936250810601

`∩[A038618(n+1), A079652(n+1)]`
-/

namespace A386186.P14454432936250810601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386186.P14454432936250810601

/-! ## A386186.P13175664036435901201

`∩[A079652(n+1), A195943(n+1)]`
-/

namespace A386186.P13175664036435901201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386186.P13175664036435901201

/-! ## A386186.P3708160089855717632

`∩[A072960(n+1), A386322(n+1)]`
-/

namespace A386186.P3708160089855717632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386186.P3708160089855717632

/-! ## A386186.P16844040200509568628

`∩[A072960(n+1), A386323(n+1)]`
-/

namespace A386186.P16844040200509568628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386186.P16844040200509568628

/-! ## A386186.P15781823623460445946

`∩[A079652(n+1), A386322(n+1)]`
-/

namespace A386186.P15781823623460445946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386186.P15781823623460445946

/-! ## A386186.P13315624495900451400

`∩[A079652(n+1), A386323(n+1)]`
-/

namespace A386186.P13315624495900451400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386186.P13315624495900451400

/-!
# A386188: Primes having only {4, 5, 6, 7} as digits.

The programs for A386188, there is no canonical definition to state claims against.
-/

/-! ## A386188.P18200417338902035618

`∩[A106114(n+1), A155777(n+1)]`
-/

namespace A386188.P18200417338902035618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386188.P18200417338902035618

/-! ## A386188.P15934967484024531365

`∩[A036962(n+1), A106114(n+1)]`
-/

namespace A386188.P15934967484024531365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386188.P15934967484024531365

/-! ## A386188.P11638660749218123898

`∩[A106114(n+1), A214677(n+1)]`
-/

namespace A386188.P11638660749218123898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386188.P11638660749218123898

/-!
# A386189: Primes having only {4, 5, 6, 9} as digits.

The programs for A386189, there is no canonical definition to state claims against.
-/

/-! ## A386189.P15719092369732375804

`∩[A106114(n+1), A386357(n+1)]`
-/

namespace A386189.P15719092369732375804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386189.P15719092369732375804

/-!
# A386190: Primes having only {4, 5, 7, 8} as digits.

The programs for A386190, there is no canonical definition to state claims against.
-/

/-! ## A386190.P3387840872199311574

`∩[A106114(n+1), A386356(n+1)]`
-/

namespace A386190.P3387840872199311574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386190.P3387840872199311574

/-! ## A386190.P7128533273606179470

`∩[A106114(n+1), A307913(n+1)]`
-/

namespace A386190.P7128533273606179470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386190.P7128533273606179470

/-! ## A386190.P1287741410066087138

`∩[A106115(n+1), A307913(n+1)]`
-/

namespace A386190.P1287741410066087138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386190.P1287741410066087138

/-!
# A386191: Primes having only {4, 5, 7, 9} as digits.

The programs for A386191, there is no canonical definition to state claims against.
-/

/-! ## A386191.P5722145946448319288

`∩[A106114(n+1), A386355(n+1)]`
-/

namespace A386191.P5722145946448319288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386191.P5722145946448319288

/-! ## A386191.P6861034311742748858

`p?[A302940(n+3)]`
-/

namespace A386191.P6861034311742748858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302940 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A386191.P6861034311742748858

/-! ## A386191.P6234849339944403046

`filter[A302940(n+3), A010051(#)]`
-/

namespace A386191.P6234849339944403046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302940 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A386191.P6234849339944403046

/-! ## A386191.P7491543849067322219

`∩[A106114(n+1), A302940(n+1)]`
-/

namespace A386191.P7491543849067322219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386191.P7491543849067322219

/-! ## A386191.P7702061300621756062

`∩[A106120(n+1), A302940(n+1)]`
-/

namespace A386191.P7702061300621756062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386191.P7702061300621756062

/-! ## A386191.P648943135714016867

`∩[A106121(n+1), A302940(n+1)]`
-/

namespace A386191.P648943135714016867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386191.P648943135714016867

/-! ## A386191.P3946820655852107125

`∩[A108719(n+1), A302940(n+1)]`
-/

namespace A386191.P3946820655852107125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386191.P3946820655852107125

/-! ## A386191.P17337984511657835430

`∩[A124598(n+1), A302940(n+1)]`
-/

namespace A386191.P17337984511657835430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386191.P17337984511657835430

/-! ## A386191.P15180505069650258570

`∩[A140475(n+1), A302940(n+1)]`
-/

namespace A386191.P15180505069650258570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386191.P15180505069650258570

/-! ## A386191.P11004457907903200831

`∩[A171577(n+1), A302940(n+1)]`
-/

namespace A386191.P11004457907903200831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386191.P11004457907903200831

/-! ## A386191.P5988231004999889255

`∩[A215848(n+1), A302940(n+1)]`
-/

namespace A386191.P5988231004999889255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386191.P5988231004999889255

/-! ## A386191.P2038321846880456493

`∩[A302940(n+1), A386335(n+1)]`
-/

namespace A386191.P2038321846880456493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386191.P2038321846880456493

/-! ## A386191.P14877805052489242162

`filter[A302940(n+3), A174897(#)]`
-/

namespace A386191.P14877805052489242162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302940 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A386191.P14877805052489242162

/-! ## A386191.P1153260560601916116

`filter[A302940(n+3), A323152(#)]`
-/

namespace A386191.P1153260560601916116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302940 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A386191.P1153260560601916116

/-! ## A386191.P13715909457269759032

`filter[A302940(n+3), A323153(#)]`
-/

namespace A386191.P13715909457269759032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302940 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A386191.P13715909457269759032

/-! ## A386191.P1187769198953828124

`filter[A302940(n+3), A353817(#)]`
-/

namespace A386191.P1187769198953828124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302940 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A386191.P1187769198953828124

/-!
# A386192: Primes having only {4, 5, 8, 9} as digits.

The programs for A386192, there is no canonical definition to state claims against.
-/

/-! ## A386192.P4857180213922846554

`∩[A106114(n+1), A386354(n+1)]`
-/

namespace A386192.P4857180213922846554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386192.P4857180213922846554

/-!
# A386193: Primes having only {4, 6, 7, 8} as digits.

The programs for A386193, there is no canonical definition to state claims against.
-/

/-! ## A386193.P3884521888013890725

`∩[A098948(n+1), A106114(n+1)]`
-/

namespace A386193.P3884521888013890725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386193.P3884521888013890725

/-! ## A386193.P6406579936665769245

`∩[A098948(n+1), A106115(n+1)]`
-/

namespace A386193.P6406579936665769245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386193.P6406579936665769245

/-! ## A386193.P6149508694248303912

`∩[A098948(n+1), A386320(n+1)]`
-/

namespace A386193.P6149508694248303912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386193.P6149508694248303912

/-! ## A386193.P10691789078698081500

`∩[A106114(n+1), A386353(n+1)]`
-/

namespace A386193.P10691789078698081500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386193.P10691789078698081500

/-!
# A386194: Primes having only {4, 6, 7, 9} as digits.

The programs for A386194, there is no canonical definition to state claims against.
-/

/-! ## A386194.P11109245221159642037

`∩[A106114(n+1), A386352(n+1)]`
-/

namespace A386194.P11109245221159642037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386194.P11109245221159642037

/-!
# A386195: Primes having only {4, 7, 8, 9} as digits.

The programs for A386195, there is no canonical definition to state claims against.
-/

/-! ## A386195.P5447452204988444931

`∩[A106114(n+1), A386350(n+1)]`
-/

namespace A386195.P5447452204988444931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386195.P5447452204988444931

/-! ## A386195.P14512805136943035106

`p?[A211186(n+3)]`
-/

namespace A386195.P14512805136943035106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211186 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A386195.P14512805136943035106

/-! ## A386195.P4852034997231287770

`filter[A211186(n+1), A171387(#)]`
-/

namespace A386195.P4852034997231287770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A386195.P4852034997231287770

/-! ## A386195.P1880738957861883926

`filter[A211186(n+1), A257531(#)]`
-/

namespace A386195.P1880738957861883926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A386195.P1880738957861883926

/-! ## A386195.P1031880990993785388

`filter[A211186(n+2), A080545(#)]`
-/

namespace A386195.P1031880990993785388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211186 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A386195.P1031880990993785388

/-!
# A386196: Primes having only {5, 6, 7, 8} as digits.

The programs for A386196, there is no canonical definition to state claims against.
-/

/-! ## A386196.P8776405743623249365

`∩[A038617(n+1), A106112(n+1)]`
-/

namespace A386196.P8776405743623249365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386196.P8776405743623249365

/-! ## A386196.P16773879105465980398

`∩[A106112(n+1), A154761(n+1)]`
-/

namespace A386196.P16773879105465980398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386196.P16773879105465980398

/-! ## A386196.P13913294654520315805

`∩[A106112(n+1), A386344(n+1)]`
-/

namespace A386196.P13913294654520315805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386196.P13913294654520315805

/-! ## A386196.P2444925865631175889

`∩[A106112(n+1), A386327(n+1)]`
-/

namespace A386196.P2444925865631175889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386196.P2444925865631175889

/-! ## A386196.P7868140979945462574

`∩[A106112(n+1), A386339(n+1)]`
-/

namespace A386196.P7868140979945462574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386196.P7868140979945462574

/-! ## A386196.P12171149151500044851

`∩[A106112(n+1), A386349(n+1)]`
-/

namespace A386196.P12171149151500044851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386196.P12171149151500044851

/-! ## A386196.P6333347991637631000

`∩[A106114(n+1), A386349(n+1)]`
-/

namespace A386196.P6333347991637631000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386196.P6333347991637631000

/-!
# A386197: Primes having only {5, 6, 7, 9} as digits.

The programs for A386197, there is no canonical definition to state claims against.
-/

/-! ## A386197.P6565826066824484099

`∩[A038616(n+1), A106112(n+1)]`
-/

namespace A386197.P6565826066824484099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386197.P6565826066824484099

/-! ## A386197.P7488890286787809349

`∩[A106112(n+1), A386326(n+1)]`
-/

namespace A386197.P7488890286787809349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386197.P7488890286787809349

/-! ## A386197.P7586981766945708485

`∩[A106112(n+1), A386334(n+1)]`
-/

namespace A386197.P7586981766945708485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386197.P7586981766945708485

/-! ## A386197.P13328234129029913445

`∩[A106112(n+1), A386338(n+1)]`
-/

namespace A386197.P13328234129029913445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386197.P13328234129029913445

/-! ## A386197.P3579873490320306632

`∩[A106112(n+1), A386343(n+1)]`
-/

namespace A386197.P3579873490320306632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386197.P3579873490320306632

/-! ## A386197.P2697128872723456375

`∩[A106112(n+1), A386348(n+1)]`
-/

namespace A386197.P2697128872723456375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386197.P2697128872723456375

/-! ## A386197.P2949402423861301205

`∩[A106114(n+1), A386348(n+1)]`
-/

namespace A386197.P2949402423861301205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386197.P2949402423861301205

/-!
# A386198: Primes having only {5, 6, 8, 9} as digits.

The programs for A386198, there is no canonical definition to state claims against.
-/

/-! ## A386198.P15438126209775803265

`∩[A034470(n+1), A106112(n+1)]`
-/

namespace A386198.P15438126209775803265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386198.P15438126209775803265

/-! ## A386198.P10377102242318938656

`∩[A034470(n+1), A106114(n+1)]`
-/

namespace A386198.P10377102242318938656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386198.P10377102242318938656

/-! ## A386198.P8944820697558866114

`∩[A106112(n+1), A329760(n+1)]`
-/

namespace A386198.P8944820697558866114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386198.P8944820697558866114

/-! ## A386198.P11316867091536909272

`∩[A106112(n+1), A386333(n+1)]`
-/

namespace A386198.P11316867091536909272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386198.P11316867091536909272

/-! ## A386198.P2991179965421647270

`∩[A106112(n+1), A386342(n+1)]`
-/

namespace A386198.P2991179965421647270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386198.P2991179965421647270

/-! ## A386198.P5634249368008695269

`∩[A038615(n+1), A106112(n+1)]`
-/

namespace A386198.P5634249368008695269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386198.P5634249368008695269

/-! ## A386198.P13766573133391965643

`∩[A106112(n+1), A386325(n+1)]`
-/

namespace A386198.P13766573133391965643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386198.P13766573133391965643

/-! ## A386198.P17006218083681581779

`∩[A106112(n+1), A386347(n+1)]`
-/

namespace A386198.P17006218083681581779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386198.P17006218083681581779

/-! ## A386198.P15997313429510222568

`∩[A106114(n+1), A386347(n+1)]`
-/

namespace A386198.P15997313429510222568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386198.P15997313429510222568

/-! ## A386198.P13750549611879496615

`∩[A045573(n+1), A106112(n+1)]`
-/

namespace A386198.P13750549611879496615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386198.P13750549611879496615

/-!
# A386199: Primes having only {5, 7, 8, 9} as digits.

The programs for A386199, there is no canonical definition to state claims against.
-/

/-! ## A386199.P18004990099691013576

`∩[A038614(n+1), A106112(n+1)]`
-/

namespace A386199.P18004990099691013576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386199.P18004990099691013576

/-! ## A386199.P15863893500019713598

`∩[A106112(n+1), A386324(n+1)]`
-/

namespace A386199.P15863893500019713598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386199.P15863893500019713598

/-! ## A386199.P9706554320368758401

`∩[A106112(n+1), A386332(n+1)]`
-/

namespace A386199.P9706554320368758401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386199.P9706554320368758401

/-! ## A386199.P8420844403934022621

`∩[A106112(n+1), A386337(n+1)]`
-/

namespace A386199.P8420844403934022621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386199.P8420844403934022621

/-! ## A386199.P5772746770525284830

`∩[A106112(n+1), A386341(n+1)]`
-/

namespace A386199.P5772746770525284830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386199.P5772746770525284830

/-! ## A386199.P620440817795188906

`∩[A106112(n+1), A386346(n+1)]`
-/

namespace A386199.P620440817795188906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386199.P620440817795188906

/-! ## A386199.P17973185525441914730

`∩[A106114(n+1), A386346(n+1)]`
-/

namespace A386199.P17973185525441914730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386199.P17973185525441914730

/-! ## A386199.P706512698497996358

`∩[A106112(n+1), A168501(n+1)]`
-/

namespace A386199.P706512698497996358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386199.P706512698497996358

/-! ## A386199.P3755677088686760805

`∩[A106114(n+1), A168501(n+1)]`
-/

namespace A386199.P3755677088686760805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386199.P3755677088686760805

