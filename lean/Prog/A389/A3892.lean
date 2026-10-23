import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C001
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
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
# A389200: a(n) = A351568(A228058(n)), where A351568(x) is the sum of divisors of the largest unitary divisor of x that is a square, and A228058 gives the numbers satisfying Euler's condition for odd perfect numbers.

The programs for A389200, there is no canonical definition to state claims against.
-/

/-! ## A389200.P13426020045138743291

`A389203(n+1)/A389201(n+1)`
-/

namespace A389200.P13426020045138743291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389203 (n + 1) : ℚ) / (A389201 (n + 1) : ℚ)

end

end A389200.P13426020045138743291

/-! ## A389200.P10254091586681258346

`A000203(A389160(n+1))`
-/

namespace A389200.P10254091586681258346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A389160 (n + 1)).toNat

end

end A389200.P10254091586681258346

/-! ## A389200.P11901237573097351016

`A351568(A228058(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389200.P11901237573097351016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351568 (A228058 (n + 1)).toNat

end

end A389200.P11901237573097351016

/-! ## A389200.P17108584516540021641

`A389203(n+1)/A000203(A389161(n+1))`
-/

namespace A389200.P17108584516540021641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389203 (n + 1) : ℚ) / (A000203 (A389161 (n + 1)).toNat : ℚ)

end

end A389200.P17108584516540021641

/-! ## A389200.P11289443767292164648

`A000203(A228058(n+1)/A389161(n+1))`
-/

namespace A389200.P11289443767292164648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A228058 (n + 1) : ℚ) / (A389161 (n + 1) : ℚ))).toNat

end

end A389200.P11289443767292164648

/-! ## A389200.P12770222287659611745

`A351568(2*A389160(n+1))`
-/

namespace A389200.P12770222287659611745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351568 (2 * A389160 (n + 1)).toNat

end

end A389200.P12770222287659611745

/-! ## A389200.P17154252842588537291

`A000203(A228058(n+1))/A389201(n+1)`
-/

namespace A389200.P17154252842588537291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A228058 (n + 1)).toNat : ℚ) / (A389201 (n + 1) : ℚ)

end

end A389200.P17154252842588537291

/-! ## A389200.P15058217328633734539

`A389203(n+1)/A351569(A228058(n+1))`
-/

namespace A389200.P15058217328633734539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389203 (n + 1) : ℚ) / (A351569 (A228058 (n + 1)).toNat : ℚ)

end

end A389200.P15058217328633734539

/-!
# A389201: a(n) = A351569(A228058(n)), where A351569(x) is the sum of divisors of the largest unitary divisor of x that is an exponentially odd number, and A228058 gives the numbers satisfying Euler's condition for odd perfect numbers.

The programs for A389201, there is no canonical definition to state claims against.
-/

/-! ## A389201.P8515160244063983797

`A000203(A389161(n+1))`
-/

namespace A389201.P8515160244063983797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A389161 (n + 1)).toNat

end

end A389201.P8515160244063983797

/-! ## A389201.P17837301305733341487

`A389203(n+1)/A389200(n+1)`
-/

namespace A389201.P17837301305733341487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389203 (n + 1) : ℚ) / (A389200 (n + 1) : ℚ)

end

end A389201.P17837301305733341487

/-! ## A389201.P265165211214308945

`A351569(A228058(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389201.P265165211214308945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351569 (A228058 (n + 1)).toNat

end

end A389201.P265165211214308945

/-! ## A389201.P16379942358324093573

`A000203(A228058(n+1)/A389160(n+1))`
-/

namespace A389201.P16379942358324093573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A228058 (n + 1) : ℚ) / (A389160 (n + 1) : ℚ))).toNat

end

end A389201.P16379942358324093573

/-! ## A389201.P16316171414476779700

`(A389164(n+1)+A389096(n+1))/A389200(n+1)`
-/

namespace A389201.P16316171414476779700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389164 (n + 1) + A389096 (n + 1) : ℚ) / (A389200 (n + 1) : ℚ)

end

end A389201.P16316171414476779700

/-! ## A389201.P14216558921678672974

`A389203(n+1)/A000203(A389160(n+1))`
-/

namespace A389201.P14216558921678672974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389203 (n + 1) : ℚ) / (A000203 (A389160 (n + 1)).toNat : ℚ)

end

end A389201.P14216558921678672974

/-! ## A389201.P13732349296064676543

`A351569(A389161(2*n+1-n))`
-/

namespace A389201.P13732349296064676543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351569 (A389161 (2 * n + 1 - n)).toNat

end

end A389201.P13732349296064676543

/-! ## A389201.P10707970025782149107

`A000203(A228058(n+1))/A389200(n+1)`
-/

namespace A389201.P10707970025782149107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A228058 (n + 1)).toNat : ℚ) / (A389200 (n + 1) : ℚ)

end

end A389201.P10707970025782149107

/-!
# A389202: Numbers k such that A325973(k) < k < A325974(k), where A325973 and A325974 are arithmetic means of {sum of unitary divisors and sum of squarefree divisors} and of {sum of non-unitary divisors and sum of nonsquarefree divisors}, respectively.

The programs for A389202, the canonical program `A389202.P14170375629011264926` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389202 has offset 1).

The definition of A389202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6834 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389202.P14170375629011264926

`∩[A388986(n+1), A389212(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A389202

/-- `∩[A388986(n+1), A389212(n+1)]` -/
def P14170375629011264926.Spec : Prop :=
  ∀ n, (P14170375629011264926.a n : ℤ) = A389202 (n + 1)

theorem P14170375629011264926.correct : P14170375629011264926.Spec := by
  intro n
  simp only [A389202, Nat.add_sub_cancel]

end A389202

/-! ## A389202.P12361916816940754792

`∩[A388986(n+1), A389214(n+1)]`
-/

namespace A389202.P12361916816940754792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389202.P12361916816940754792

namespace A389202

/-- `∩[A388986(n+1), A389214(n+1)]` -/
def P12361916816940754792.Spec : Prop :=
  ∀ n, (P12361916816940754792.a n : ℤ) = A389202 (n + 1)

end A389202

/-! ## A389202.P17273869104318772835

`∩[A048108(n+1), A326070(n+1)]`
-/

namespace A389202.P17273869104318772835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389202.P17273869104318772835

namespace A389202

/-- `∩[A048108(n+1), A326070(n+1)]` -/
def P17273869104318772835.Spec : Prop :=
  ∀ n, (P17273869104318772835.a n : ℤ) = A389202 (n + 1)

end A389202

/-! ## A389202.P12988926623663579013

`∩[A326070(n+1), A388985(n+1)]`
-/

namespace A389202.P12988926623663579013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389202.P12988926623663579013

namespace A389202

/-- `∩[A326070(n+1), A388985(n+1)]` -/
def P12988926623663579013.Spec : Prop :=
  ∀ n, (P12988926623663579013.a n : ℤ) = A389202 (n + 1)

end A389202

/-! ## A389202.P8063071631138669394

`∩[A326070(n+1), A388986(n+1)]`
-/

namespace A389202.P8063071631138669394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389202.P8063071631138669394

namespace A389202

/-- `∩[A326070(n+1), A388986(n+1)]` -/
def P8063071631138669394.Spec : Prop :=
  ∀ n, (P8063071631138669394.a n : ℤ) = A389202 (n + 1)

end A389202

/-! ## A389202.P4082668806242899363

`∩[A326070(n+1), A389212(n+1)]`
-/

namespace A389202.P4082668806242899363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389202.P4082668806242899363

namespace A389202

/-- `∩[A326070(n+1), A389212(n+1)]` -/
def P4082668806242899363.Spec : Prop :=
  ∀ n, (P4082668806242899363.a n : ℤ) = A389202 (n + 1)

end A389202

/-! ## A389202.P8197449356448958777

`∩[A326070(n+1), A389214(n+1)]`
-/

namespace A389202.P8197449356448958777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389202.P8197449356448958777

namespace A389202

/-- `∩[A326070(n+1), A389214(n+1)]` -/
def P8197449356448958777.Spec : Prop :=
  ∀ n, (P8197449356448958777.a n : ℤ) = A389202 (n + 1)

end A389202

/-!
# A389203: Sum of divisors of the numbers satisfying Euler's condition for odd perfect numbers (A228058).

The programs for A389203, there is no canonical definition to state claims against.
-/

/-! ## A389203.P14635066042206627394

`A228058(n+1)+A325377(n+1)`
-/

namespace A389203.P14635066042206627394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) + A325377 (n + 1)

end

end A389203.P14635066042206627394

/-! ## A389203.P8167941631758437989

`A389200(n+1)*A389201(n+1)`
-/

namespace A389203.P8167941631758437989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389200 (n + 1) * A389201 (n + 1)

end

end A389203.P8167941631758437989

/-! ## A389203.P8742748878568562550

`A000203(A228058(n+1))`
-/

namespace A389203.P8742748878568562550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A228058 (n + 1)).toNat

end

end A389203.P8742748878568562550

/-! ## A389203.P13048890410785922412

`A389164(n+1)+A389096(n+1)`
-/

namespace A389203.P13048890410785922412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389164 (n + 1) + A389096 (n + 1)

end

end A389203.P13048890410785922412

/-! ## A389203.P12741060878918938656

`A000203(A389161(n+1))*A389200(n+1)`
-/

namespace A389203.P12741060878918938656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A389161 (n + 1)).toNat * A389200 (n + 1)

end

end A389203.P12741060878918938656

/-! ## A389203.P11973817434960271450

`A228058(n+1)+A389164(n+1)+A325320(n+1)`
-/

namespace A389203.P11973817434960271450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) + (A389164 (n + 1) + A325320 (n + 1))

end

end A389203.P11973817434960271450

/-! ## A389203.P12177921169669402487

`A325377(n+1)+A325379(n+1)+A325377(n+1)`
-/

namespace A389203.P12177921169669402487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325377 (n + 1) + (A325379 (n + 1) + A325377 (n + 1))

end

end A389203.P12177921169669402487

/-! ## A389203.P13070395187641801971

`A389164(n+1)+A389164(n+1)+A325378(n+1)`
-/

namespace A389203.P13070395187641801971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389164 (n + 1) + (A389164 (n + 1) + A325378 (n + 1))

end

end A389203.P13070395187641801971

/-! ## A389203.P7758895258885109641

`A228058(n+1)+A389206(n+1)-A389208(n+1)`
-/

namespace A389203.P7758895258885109641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) + (A389206 (n + 1) - A389208 (n + 1))

end

end A389203.P7758895258885109641

/-! ## A389203.P8552272088590714146

`A000203(A389160(n+1))*A389201(n+1)`
-/

namespace A389203.P8552272088590714146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A389160 (n + 1)).toNat * A389201 (n + 1)

end

end A389203.P8552272088590714146

/-! ## A389203.P2078131086710596417

`A389096(n+1)+A000203(A389167(n+1))`
-/

namespace A389203.P2078131086710596417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389096 (n + 1) + A000203 (A389167 (n + 1)).toNat

end

end A389203.P2078131086710596417

/-! ## A389203.P239299260602377967

`A351569(A228058(n+1))*A389200(n+1)`
-/

namespace A389203.P239299260602377967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351569 (A228058 (n + 1)).toNat * A389200 (n + 1)

end

end A389203.P239299260602377967

/-! ## A389203.P5318530513546211247

`A389164(n+1)+A162296(A228058(n+1))`
-/

namespace A389203.P5318530513546211247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389164 (n + 1) + A162296 (A228058 (n + 1)).toNat

end

end A389203.P5318530513546211247

/-! ## A389203.P4959882077491664937

`A389096(n+1)+A048250(A228058(n+1))`
-/

namespace A389203.P4959882077491664937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389096 (n + 1) + A048250 (A228058 (n + 1)).toNat

end

end A389203.P4959882077491664937

/-!
# A389204: a(n) = A325973(n) - A325974(n), where A325973 and A325974 are arithmetic means of {sum of unitary divisors and sum of squarefree divisors} and of {sum of non-unitary divisors and sum of nonsquarefree divisors}, respectively.

The programs for A389204, the canonical program `A389204.P15149027481728119098` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389204 has offset 1).

The definition of A389204 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325973, A325974, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389204.P15149027481728119098

`A325973(n+1)-A325974(n+1)`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A389204

/-- `A325973(n+1)-A325974(n+1)` -/
def P15149027481728119098.Spec : Prop :=
  ∀ n, P15149027481728119098.a n = A389204 (n + 1)

theorem P15149027481728119098.correct : P15149027481728119098.Spec := by
  intro n
  simp only [A389204, Nat.add_sub_cancel]

end A389204

/-! ## A389204.P2897751149966805549

`2*A325973(n+1)-A000203(n+1)`
-/

namespace A389204.P2897751149966805549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325973 (n + 1) - A000203 (n + 1)

end

end A389204.P2897751149966805549

namespace A389204

/-- `2*A325973(n+1)-A000203(n+1)` -/
def P2897751149966805549.Spec : Prop :=
  ∀ n, P2897751149966805549.a n = A389204 (n + 1)

end A389204

/-! ## A389204.P430782795539531152

`A000203(n+1)-2*A325974(n+1)`
-/

namespace A389204.P430782795539531152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 2 * A325974 (n + 1)

end

end A389204.P430782795539531152

namespace A389204

/-- `A000203(n+1)-2*A325974(n+1)` -/
def P430782795539531152.Spec : Prop :=
  ∀ n, P430782795539531152.a n = A389204 (n + 1)

end A389204

/-! ## A389204.P16653460917721204761

`A034448(n+1)+A048250(n+1)-A000203(n+1)`
-/

namespace A389204.P16653460917721204761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + A048250 (n + 1) - A000203 (n + 1)

end

end A389204.P16653460917721204761

namespace A389204

/-- `A034448(n+1)+A048250(n+1)-A000203(n+1)` -/
def P16653460917721204761.Spec : Prop :=
  ∀ n, P16653460917721204761.a n = A389204 (n + 1)

end A389204

/-! ## A389204.P13342281639634363773

`A325314(n+1)+A034460(n+1)`
-/

namespace A389204.P13342281639634363773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325314 (n + 1) + A034460 (n + 1)

end

end A389204.P13342281639634363773

namespace A389204

/-- `A325314(n+1)+A034460(n+1)` -/
def P13342281639634363773.Spec : Prop :=
  ∀ n, P13342281639634363773.a n = A389204 (n + 1)

end A389204

/-! ## A389204.P7280131780755257120

`A325313(n+1)+A325814(n+1)`
-/

namespace A389204.P7280131780755257120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325313 (n + 1) + A325814 (n + 1)

end

end A389204.P7280131780755257120

namespace A389204

/-- `A325313(n+1)+A325814(n+1)` -/
def P7280131780755257120.Spec : Prop :=
  ∀ n, P7280131780755257120.a n = A389204 (n + 1)

end A389204

/-! ## A389204.P4134604638791331514

`A325978(n+1)+A325977(n+1)`
-/

namespace A389204.P4134604638791331514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (n + 1) + A325977 (n + 1)

end

end A389204.P4134604638791331514

namespace A389204

/-- `A325978(n+1)+A325977(n+1)` -/
def P4134604638791331514.Spec : Prop :=
  ∀ n, P4134604638791331514.a n = A389204 (n + 1)

end A389204

/-! ## A389204.P15986494554411042016

`A389162(n+1)+A388994(n+1)`
-/

namespace A389204.P15986494554411042016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389162 (n + 1) + A388994 (n + 1)

end

end A389204.P15986494554411042016

namespace A389204

/-- `A389162(n+1)+A388994(n+1)` -/
def P15986494554411042016.Spec : Prop :=
  ∀ n, P15986494554411042016.a n = A389204 (n + 1)

end A389204

/-! ## A389204.P3118287013118295274

`A048250(n+1)-A048146(n+1)`
-/

namespace A389204.P3118287013118295274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A048146 (n + 1)

end

end A389204.P3118287013118295274

namespace A389204

/-- `A048250(n+1)-A048146(n+1)` -/
def P3118287013118295274.Spec : Prop :=
  ∀ n, P3118287013118295274.a n = A389204 (n + 1)

end A389204

/-! ## A389204.P10062197244856910705

`A034448(n+1)-A162296(n+1)`
-/

namespace A389204.P10062197244856910705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - A162296 (n + 1)

end

end A389204.P10062197244856910705

namespace A389204

/-- `A034448(n+1)-A162296(n+1)` -/
def P10062197244856910705.Spec : Prop :=
  ∀ n, P10062197244856910705.a n = A389204 (n + 1)

end A389204

/-! ## A389204.P15300741208261848010

`A034448(A007947(n+1))-A048146(n+1)`
-/

namespace A389204.P15300741208261848010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A007947 (n + 1)).toNat - A048146 (n + 1)

end

end A389204.P15300741208261848010

namespace A389204

/-- `A034448(A007947(n+1))-A048146(n+1)` -/
def P15300741208261848010.Spec : Prop :=
  ∀ n, P15300741208261848010.a n = A389204 (n + 1)

end A389204

/-! ## A389204.P14396482407574937274

`A325977(n+1)+A325977(n+1)+A033879(n+1)`
-/

namespace A389204.P14396482407574937274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325977 (n + 1) + (A325977 (n + 1) + A033879 (n + 1))

end

end A389204.P14396482407574937274

namespace A389204

/-- `A325977(n+1)+A325977(n+1)+A033879(n+1)` -/
def P14396482407574937274.Spec : Prop :=
  ∀ n, P14396482407574937274.a n = A389204 (n + 1)

end A389204

/-! ## A389204.P12310196794835815128

`A348984(n+1)*A348986(n+1)-A325974(n+1)`
-/

namespace A389204.P12310196794835815128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348984 (n + 1) * A348986 (n + 1) - A325974 (n + 1)

end

end A389204.P12310196794835815128

namespace A389204

/-- `A348984(n+1)*A348986(n+1)-A325974(n+1)` -/
def P12310196794835815128.Spec : Prop :=
  ∀ n, P12310196794835815128.a n = A389204 (n + 1)

end A389204

/-!
# A389206: Sum of all other divisors except the squarefree part applied to the numbers satisfying Euler's condition for odd perfect numbers: a(n) = A326126(A228058(n)).

The programs for A389206, there is no canonical definition to state claims against.
-/

/-! ## A389206.P5866913079286385941

`A389207(n+1)+A228058(n+1)`
-/

namespace A389206.P5866913079286385941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389207 (n + 1) + A228058 (n + 1)

end

end A389206.P5866913079286385941

/-! ## A389206.P10859827368397841177

`A325377(n+1)+A389208(n+1)`
-/

namespace A389206.P10859827368397841177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325377 (n + 1) + A389208 (n + 1)

end

end A389206.P10859827368397841177

/-! ## A389206.P8548885196510019746

`A326126(A228058(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389206.P8548885196510019746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326126 (A228058 (n + 1)).toNat

end

end A389206.P8548885196510019746

/-! ## A389206.P18423722678789063174

`A325377(n+1)+A389207(n+1)+A325379(n+1)`
-/

namespace A389206.P18423722678789063174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325377 (n + 1) + (A389207 (n + 1) + A325379 (n + 1))

end

end A389206.P18423722678789063174

/-! ## A389206.P2603486543723812539

`A389203(n+1)+A389208(n+1)-A228058(n+1)`
-/

namespace A389206.P2603486543723812539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389203 (n + 1) + (A389208 (n + 1) - A228058 (n + 1))

end

end A389206.P2603486543723812539

/-! ## A389206.P18207479563558770573

`A389207(n+1)+A389160(n+1)*A389161(n+1)`
-/

namespace A389206.P18207479563558770573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389207 (n + 1) + A389160 (n + 1) * A389161 (n + 1)

end

end A389206.P18207479563558770573

/-! ## A389206.P16765349967515658331

`A389208(n+1)+A001065(A228058(n+1))`
-/

namespace A389206.P16765349967515658331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389208 (n + 1) + A001065 (A228058 (n + 1)).toNat

end

end A389206.P16765349967515658331

/-! ## A389206.P6769795170038238624

`A389203(n+1)-A350389(A228058(n+1))`
-/

namespace A389206.P6769795170038238624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389203 (n + 1) - A350389 (A228058 (n + 1)).toNat

end

end A389206.P6769795170038238624

/-!
# A389207: Sum of all other proper divisors except the squarefree part applied to the numbers satisfying Euler's condition for odd perfect numbers: a(n) = A326127(A228058(n)).

The programs for A389207, there is no canonical definition to state claims against.
-/

/-! ## A389207.P14145534091359718965

`A389206(n+1)-A228058(n+1)`
-/

namespace A389207.P14145534091359718965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389206 (n + 1) - A228058 (n + 1)

end

end A389207.P14145534091359718965

/-! ## A389207.P2703474563588828050

`A389208(n+1)-A325379(n+1)`
-/

namespace A389207.P2703474563588828050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389208 (n + 1) - A325379 (n + 1)

end

end A389207.P2703474563588828050

/-! ## A389207.P2108536276564505706

`A326127(A228058(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389207.P2108536276564505706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326127 (A228058 (n + 1)).toNat

end

end A389207.P2108536276564505706

/-! ## A389207.P4797335977892850385

`A325377(n+1)+A389208(n+1)-A228058(n+1)`
-/

namespace A389207.P4797335977892850385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325377 (n + 1) + (A389208 (n + 1) - A228058 (n + 1))

end

end A389207.P4797335977892850385

/-! ## A389207.P115675806305962060

`A389206(n+1)-(A325379(n+1)+A325377(n+1))`
-/

namespace A389207.P115675806305962060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389206 (n + 1) - (A325379 (n + 1) + A325377 (n + 1))

end

end A389207.P115675806305962060

/-! ## A389207.P7894417308460409481

`A325377(n+1)+A389206(n+1)-A389203(n+1)`
-/

namespace A389207.P7894417308460409481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325377 (n + 1) + (A389206 (n + 1) - A389203 (n + 1))

end

end A389207.P7894417308460409481

/-! ## A389207.P2211528369166379047

`A325823(n+1)+A389206(n+1)-A389198(n+1)`
-/

namespace A389207.P2211528369166379047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325823 (n + 1) + (A389206 (n + 1) - A389198 (n + 1))

end

end A389207.P2211528369166379047

/-! ## A389207.P5251339280011121407

`A326127(A325379(n+1)+A325377(n+1))`
-/

namespace A389207.P5251339280011121407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326127 (A325379 (n + 1) + A325377 (n + 1)).toNat

end

end A389207.P5251339280011121407

/-! ## A389207.P12687734227504320509

`A326127(A389208(n+1)+A389161(n+1))`
-/

namespace A389207.P12687734227504320509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326127 (A389208 (n + 1) + A389161 (n + 1)).toNat

end

end A389207.P12687734227504320509

/-!
# A389208: Numbers satisfying Euler's condition for odd perfect numbers, with the squarefree part subtracted: a(n) = A326128(A228058(n)), where A326128(n) = n - A007913(n).

The programs for A389208, there is no canonical definition to state claims against.
-/

/-! ## A389208.P12890546765460733380

`A325379(n+1)+A389207(n+1)`
-/

namespace A389208.P12890546765460733380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325379 (n + 1) + A389207 (n + 1)

end

end A389208.P12890546765460733380

/-! ## A389208.P17485930747232383035

`A389206(n+1)-A325377(n+1)`
-/

namespace A389208.P17485930747232383035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389206 (n + 1) - A325377 (n + 1)

end

end A389208.P17485930747232383035

/-! ## A389208.P15372870542383524459

`A326128(A228058(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389208.P15372870542383524459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (A228058 (n + 1)).toNat

end

end A389208.P15372870542383524459

/-! ## A389208.P17332103673199070821

`A228058(n+1)+A389206(n+1)-A389203(n+1)`
-/

namespace A389208.P17332103673199070821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) + (A389206 (n + 1) - A389203 (n + 1))

end

end A389208.P17332103673199070821

/-! ## A389208.P16476220126536549795

`A325824(n+1)+A389206(n+1)-A389198(n+1)`
-/

namespace A389208.P16476220126536549795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325824 (n + 1) + (A389206 (n + 1) - A389198 (n + 1))

end

end A389208.P16476220126536549795

/-! ## A389208.P11847317819940842338

`A388991(A228058(n+1))*A389209(n+1)`
-/

namespace A389208.P11847317819940842338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388991 (A228058 (n + 1)).toNat * A389209 (n + 1)

end

end A389208.P11847317819940842338

/-! ## A389208.P16427104856508214827

`A326126(A228058(n+1))-A325377(n+1)`
-/

namespace A389208.P16427104856508214827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326126 (A228058 (n + 1)).toNat - A325377 (n + 1)

end

end A389208.P16427104856508214827

/-! ## A389208.P6363165326673268499

`A326128(A389206(n+1)-A389207(n+1))`
-/

namespace A389208.P6363165326673268499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (A389206 (n + 1) - A389207 (n + 1)).toNat

end

end A389208.P6363165326673268499

/-! ## A389208.P3279988770626427284

`A389206(n+1)-A001065(A228058(n+1))`
-/

namespace A389208.P3279988770626427284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389206 (n + 1) - A001065 (A228058 (n + 1)).toNat

end

end A389208.P3279988770626427284

/-!
# A389209: a(n) = gcd(A389207(n), A389208(n)).

The programs for A389209, there is no canonical definition to state claims against.
-/

/-! ## A389209.P17277562924288913422

`gcd(A389207(n+1), A389208(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389209.P17277562924288913422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A389207 (n + 1)) (A389208 (n + 1))

end

end A389209.P17277562924288913422

/-! ## A389209.P7714799786131077645

`A326129(A228058(n+1))`
-/

namespace A389209.P7714799786131077645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326129 (A228058 (n + 1)).toNat

end

end A389209.P7714799786131077645

/-! ## A389209.P8703415759008779751

`A389208(n+1)/A388991(A228058(n+1))`
-/

namespace A389209.P8703415759008779751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389208 (n + 1) : ℚ) / (A388991 (A228058 (n + 1)).toNat : ℚ)

end

end A389209.P8703415759008779751

/-! ## A389209.P12445641971079073088

`(A389206(n+1)-A325377(n+1))/A388991(A228058(n+1))`
-/

namespace A389209.P12445641971079073088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389206 (n + 1) - A325377 (n + 1) : ℚ) / (A388991 (A228058 (n + 1)).toNat : ℚ)

end

end A389209.P12445641971079073088

/-!
# A389210: Positions of odd terms in A325974, where A325974 is the arithmetic mean of {sum of non-unitary divisors} and {sum of nonsquarefree divisors}.

The programs for A389210, there is no canonical definition to state claims against.
-/

/-! ## A389210.P4322725851923348920

`∩[A036311(n+1), A206716(n+1)]`
-/

namespace A389210.P4322725851923348920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389210.P4322725851923348920

/-! ## A389210.P17664744624053916623

`∩[A036311(n+1), A233999(n+1)]`
-/

namespace A389210.P17664744624053916623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389210.P17664744624053916623

/-! ## A389210.P5268824863459976256

`∩[A036311(n+1), A247979(n+1)]`
-/

namespace A389210.P5268824863459976256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247979 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389210.P5268824863459976256

/-! ## A389210.P16581660341844291275

`∩[A036311(n+1), A316094(n+1)]`
-/

namespace A389210.P16581660341844291275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389210.P16581660341844291275

/-! ## A389210.P12687578779252865095

`∩[A055008(n+1), A382670(n+1)]`
-/

namespace A389210.P12687578779252865095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389210.P12687578779252865095

/-!
# A389211: Numbers k such that A048146(k)+A162296(k) <= 2*k, where A048146 is the sum of non-unitary divisors of n, and A162296 is the sum of divisors of n that have a square factor.

The programs for A389211, there is no canonical definition to state claims against.
-/

/-! ## A389211.P80536392997096170

`lt[A124859(n+1), A338598(2*n+5)]+1`
-/

namespace A389211.P80536392997096170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338598 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A389211.P80536392997096170

/-! ## A389211.P11016572834736845189

`lt[A000001(n), A056239(A353355(n+1))]`
-/

namespace A389211.P11016572834736845189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A353355 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389211.P11016572834736845189

/-! ## A389211.P8879313002554528210

`lt[A348970(n+1), A114650(n+1)]+1`
-/

namespace A389211.P8879313002554528210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114650 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A389211.P8879313002554528210

/-! ## A389211.P490486021028655184

`lt[A003415(n)+1, A168543(n+1)]`
-/

namespace A389211.P490486021028655184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389211.P490486021028655184

/-! ## A389211.P11713290834669825698

`lt[A003415(n), A000196(A014105(n))]`
-/

namespace A389211.P11713290834669825698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A014105 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389211.P11713290834669825698

/-! ## A389211.P14445670746784226947

`lt[ϕ^∑{e}[n, #]!, 2*n]`
-/

namespace A389211.P14445670746784226947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A389211.P14445670746784226947

/-! ## A389211.P16393911032694671781

`lt[A005408(A297420(n)), A250120(n)]`
-/

namespace A389211.P16393911032694671781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A297420 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389211.P16393911032694671781

/-!
# A389212: Numbers k such that A048146(k)+A162296(k) > 2*k, where A048146 is the sum of non-unitary divisors of n, and A162296 is the sum of divisors of n that have a square factor.

The programs for A389212, the canonical program `A389212.P149666161201515317` is in `Seq.B011.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389212 has offset 1).

The definition of A389212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4496 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389212.P7787832756540402829

`∩[A062171(n+1), A389214(n+1)]`
-/

namespace A389212.P7787832756540402829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389212.P7787832756540402829

namespace A389212

/-- `∩[A062171(n+1), A389214(n+1)]` -/
def P7787832756540402829.Spec : Prop :=
  ∀ n, (P7787832756540402829.a n : ℤ) = A389212 (n + 1)

end A389212

/-! ## A389212.P149666161201515317

`lt[A325978(n+1), A347871(n+1)]+1`

The canonical program, it is in `Seq.B011.C001`.
-/

namespace A389212

/-- `lt[A325978(n+1), A347871(n+1)]+1` -/
def P149666161201515317.Spec : Prop :=
  ∀ n, (P149666161201515317.a n : ℤ) = A389212 (n + 1)

theorem P149666161201515317.correct : P149666161201515317.Spec := by
  intro n
  simp only [A389212, Nat.add_sub_cancel]

end A389212

/-! ## A389212.P7811699971487492187

`lt[A325978(n+1), A010815(n)]+1`
-/

namespace A389212.P7811699971487492187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A389212.P7811699971487492187

namespace A389212

/-- `lt[A325978(n+1), A010815(n)]+1` -/
def P7811699971487492187.Spec : Prop :=
  ∀ n, (P7811699971487492187.a n : ℤ) = A389212 (n + 1)

end A389212

/-! ## A389212.P12357822903568305071

`lt[A325978(A233583(n+1)), A000035(n)]`
-/

namespace A389212.P12357822903568305071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389212.P12357822903568305071

namespace A389212

/-- `lt[A325978(A233583(n+1)), A000035(n)]` -/
def P12357822903568305071.Spec : Prop :=
  ∀ n, (P12357822903568305071.a n : ℤ) = A389212 (n + 1)

end A389212

/-! ## A389212.P17723404035572399646

`lt[A325978(A233583(n+1)), A010052(n)]`
-/

namespace A389212.P17723404035572399646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389212.P17723404035572399646

namespace A389212

/-- `lt[A325978(A233583(n+1)), A010052(n)]` -/
def P17723404035572399646.Spec : Prop :=
  ∀ n, (P17723404035572399646.a n : ℤ) = A389212 (n + 1)

end A389212

/-!
# A389213: Numbers k such that A048146(k)+A162296(k) < 2*k, where A048146 is the sum of non-unitary divisors of n, and A162296 is the sum of divisors of n that have a square factor.

The programs for A389213, the canonical program `A389213.P6416796511962036448` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389213 has offset 1).

The definition of A389213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389213.P11766342070875073976

`comp[A389214(n+1)-1]+1`
-/

namespace A389213.P11766342070875073976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389214 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A389213.P11766342070875073976

namespace A389213

/-- `comp[A389214(n+1)-1]+1` -/
def P11766342070875073976.Spec : Prop :=
  ∀ n, (P11766342070875073976.a n : ℤ) = A389213 (n + 1)

end A389213

/-! ## A389213.P6416796511962036448

`lt[A325974(n+1), n+1]+1`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A389213

/-- `lt[A325974(n+1), n+1]+1` -/
def P6416796511962036448.Spec : Prop :=
  ∀ n, (P6416796511962036448.a n : ℤ) = A389213 (n + 1)

theorem P6416796511962036448.correct : P6416796511962036448.Spec := by
  intro n
  simp only [A389213, Nat.add_sub_cancel]

end A389213

/-! ## A389213.P4869837232617244029

`lt[A010060(n), A325978(n+1)]+1`
-/

namespace A389213.P4869837232617244029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A389213.P4869837232617244029

namespace A389213

/-- `lt[A010060(n), A325978(n+1)]+1` -/
def P4869837232617244029.Spec : Prop :=
  ∀ n, (P4869837232617244029.a n : ℤ) = A389213 (n + 1)

end A389213

/-! ## A389213.P13310859013263521943

`lt[A010815(3*n+1), A325978(n+1)]+1`
-/

namespace A389213.P13310859013263521943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A389213.P13310859013263521943

namespace A389213

/-- `lt[A010815(3*n+1), A325978(n+1)]+1` -/
def P13310859013263521943.Spec : Prop :=
  ∀ n, (P13310859013263521943.a n : ℤ) = A389213 (n + 1)

end A389213

/-! ## A389213.P1723130409898394883

`lt[A000127(A140187(n)), A001844(n)]`
-/

namespace A389213.P1723130409898394883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (A140187 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389213.P1723130409898394883

namespace A389213

/-- `lt[A000127(A140187(n)), A001844(n)]` -/
def P1723130409898394883.Spec : Prop :=
  ∀ n, (P1723130409898394883.a n : ℤ) = A389213 (n + 1)

end A389213

/-! ## A389213.P5107091857572565009

`lt[A246146(n), A325978(n+1)]+1`
-/

namespace A389213.P5107091857572565009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246146 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A389213.P5107091857572565009

namespace A389213

/-- `lt[A246146(n), A325978(n+1)]+1` -/
def P5107091857572565009.Spec : Prop :=
  ∀ n, (P5107091857572565009.a n : ℤ) = A389213 (n + 1)

end A389213

/-! ## A389213.P17394471450610890176

`lt[A071270(A323436(n)), A068360(n+1)]`
-/

namespace A389213.P17394471450610890176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071270 (A323436 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068360 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389213.P17394471450610890176

namespace A389213

/-- `lt[A071270(A323436(n)), A068360(n+1)]` -/
def P17394471450610890176.Spec : Prop :=
  ∀ n, (P17394471450610890176.a n : ℤ) = A389213 (n + 1)

end A389213

/-! ## A389213.P1492483267726193744

`lt[A297420(A028310(n)), A335433(n+1)]`
-/

namespace A389213.P1492483267726193744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297420 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335433 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389213.P1492483267726193744

namespace A389213

/-- `lt[A297420(A028310(n)), A335433(n+1)]` -/
def P1492483267726193744.Spec : Prop :=
  ∀ n, (P1492483267726193744.a n : ℤ) = A389213 (n + 1)

end A389213

/-! ## A389213.P16423926166113310830

`lt[A297420(n), A160051(A335433(n+1))]`
-/

namespace A389213.P16423926166113310830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297420 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160051 (A335433 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389213.P16423926166113310830

namespace A389213

/-- `lt[A297420(n), A160051(A335433(n+1))]` -/
def P16423926166113310830.Spec : Prop :=
  ∀ n, (P16423926166113310830.a n : ℤ) = A389213 (n + 1)

end A389213

/-! ## A389213.P15725035362226904062

`lt[A051049(A000001(n)), A384233(n+1)]`
-/

namespace A389213.P15725035362226904062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 (A000001 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389213.P15725035362226904062

namespace A389213

/-- `lt[A051049(A000001(n)), A384233(n+1)]` -/
def P15725035362226904062.Spec : Prop :=
  ∀ n, (P15725035362226904062.a n : ℤ) = A389213 (n + 1)

end A389213

/-!
# A389214: Numbers k such that A048146(k)+A162296(k) >= 2*k, where A048146 is the sum of non-unitary divisors of n, and A162296 is the sum of divisors of n that have a square factor.

The programs for A389214, the canonical program `A389214.P17879366109515903515` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389214 has offset 1).

The definition of A389214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389214.P17879366109515903515

`∪[A177426(n+1), A389212(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A389214

/-- `∪[A177426(n+1), A389212(n+1)]` -/
def P17879366109515903515.Spec : Prop :=
  ∀ n, (P17879366109515903515.a n : ℤ) = A389214 (n + 1)

theorem P17879366109515903515.correct : P17879366109515903515.Spec := by
  intro n
  simp only [A389214, Nat.add_sub_cancel]

end A389214

/-! ## A389214.P8844532198721779084

`∪[A226176(n+1), A389212(n+1)]`
-/

namespace A389214.P8844532198721779084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389214.P8844532198721779084

namespace A389214

/-- `∪[A226176(n+1), A389212(n+1)]` -/
def P8844532198721779084.Spec : Prop :=
  ∀ n, (P8844532198721779084.a n : ℤ) = A389214 (n + 1)

end A389214

/-! ## A389214.P1974537792455606026

`∪[A308494(n+1), A389212(n+1)]`
-/

namespace A389214.P1974537792455606026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389214.P1974537792455606026

namespace A389214

/-- `∪[A308494(n+1), A389212(n+1)]` -/
def P1974537792455606026.Spec : Prop :=
  ∀ n, (P1974537792455606026.a n : ℤ) = A389214 (n + 1)

end A389214

/-! ## A389214.P3591980834314527699

`∪[A363814(n+1), A389212(n+1)]`
-/

namespace A389214.P3591980834314527699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389214.P3591980834314527699

namespace A389214

/-- `∪[A363814(n+1), A389212(n+1)]` -/
def P3591980834314527699.Spec : Prop :=
  ∀ n, (P3591980834314527699.a n : ℤ) = A389214 (n + 1)

end A389214

/-! ## A389214.P3938916276145533305

`∪[A370395(n+1), A389212(n+1)]`
-/

namespace A389214.P3938916276145533305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389214.P3938916276145533305

namespace A389214

/-- `∪[A370395(n+1), A389212(n+1)]` -/
def P3938916276145533305.Spec : Prop :=
  ∀ n, (P3938916276145533305.a n : ℤ) = A389214 (n + 1)

end A389214

/-! ## A389214.P18331652499198541554

`∪[A380543(n+1), A389212(n+1)]`
-/

namespace A389214.P18331652499198541554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389214.P18331652499198541554

namespace A389214

/-- `∪[A380543(n+1), A389212(n+1)]` -/
def P18331652499198541554.Spec : Prop :=
  ∀ n, (P18331652499198541554.a n : ℤ) = A389214 (n + 1)

end A389214

/-! ## A389214.P2378714182195809725

`∪[A389212(n+1), A392728(n+1)]`
-/

namespace A389214.P2378714182195809725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389214.P2378714182195809725

namespace A389214

/-- `∪[A389212(n+1), A392728(n+1)]` -/
def P2378714182195809725.Spec : Prop :=
  ∀ n, (P2378714182195809725.a n : ℤ) = A389214 (n + 1)

end A389214

/-! ## A389214.P17129993183528050083

`∪[A325387(n+1), A389212(n+1)]`
-/

namespace A389214.P17129993183528050083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389214.P17129993183528050083

namespace A389214

/-- `∪[A325387(n+1), A389212(n+1)]` -/
def P17129993183528050083.Spec : Prop :=
  ∀ n, (P17129993183528050083.a n : ℤ) = A389214 (n + 1)

end A389214

/-! ## A389214.P18158782688691224844

`∪[A230354(n+1), A389212(n+1)]`
-/

namespace A389214.P18158782688691224844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389214.P18158782688691224844

namespace A389214

/-- `∪[A230354(n+1), A389212(n+1)]` -/
def P18158782688691224844.Spec : Prop :=
  ∀ n, (P18158782688691224844.a n : ℤ) = A389214 (n + 1)

end A389214

/-!
# A389215: Numbers k such that {sum of unitary divisors of k} plus {sum of squarefree divisors of k} >= 2*k.

The programs for A389215, the canonical program `A389215.P13589853183880962071` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389215 has offset 1).

The definition of A389215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389215.P13589853183880962071

`lt[n, A325973(n+1)]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A389215

/-- `lt[n, A325973(n+1)]+1` -/
def P13589853183880962071.Spec : Prop :=
  ∀ n, (P13589853183880962071.a n : ℤ) = A389215 (n + 1)

theorem P13589853183880962071.correct : P13589853183880962071.Spec := by
  intro n
  simp only [A389215, Nat.add_sub_cancel]

end A389215

/-! ## A389215.P13736291257314396120

`comp[A388986(n+1)-1]+1`
-/

namespace A389215.P13736291257314396120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388986 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A389215.P13736291257314396120

namespace A389215

/-- `comp[A388986(n+1)-1]+1` -/
def P13736291257314396120.Spec : Prop :=
  ∀ n, (P13736291257314396120.a n : ℤ) = A389215 (n + 1)

end A389215

/-!
# A389216: Nonsquarefree numbers k such that {sum of unitary divisors of k} plus {sum of squarefree divisors of k} >= 2*k.

The programs for A389216, the canonical program `A389216.P2522826427568100889` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389216 has offset 1).

The definition of A389216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1976 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389216.P2522826427568100889

`filter[A389215(n+2), A087049(#)]`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A389216

/-- `filter[A389215(n+2), A087049(#)]` -/
def P2522826427568100889.Spec : Prop :=
  ∀ n, P2522826427568100889.a n = A389216 (n + 1)

theorem P2522826427568100889.correct : P2522826427568100889.Spec := by
  intro n
  simp only [A389216, Nat.add_sub_cancel]

end A389216

/-! ## A389216.P15948048646823441490

`∩[A013929(n+1), A389215(n+1)]`
-/

namespace A389216.P15948048646823441490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389216.P15948048646823441490

namespace A389216

/-- `∩[A013929(n+1), A389215(n+1)]` -/
def P15948048646823441490.Spec : Prop :=
  ∀ n, (P15948048646823441490.a n : ℤ) = A389216 (n + 1)

end A389216

/-! ## A389216.P17927950688060792211

`∩[A375142(n+1), A389215(n+1)]`
-/

namespace A389216.P17927950688060792211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389216.P17927950688060792211

namespace A389216

/-- `∩[A375142(n+1), A389215(n+1)]` -/
def P17927950688060792211.Spec : Prop :=
  ∀ n, (P17927950688060792211.a n : ℤ) = A389216 (n + 1)

end A389216

/-! ## A389216.P4049911222929317854

`filter[A389215(n+1), A107078(#)]`
-/

namespace A389216.P4049911222929317854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A389216.P4049911222929317854

namespace A389216

/-- `filter[A389215(n+1), A107078(#)]` -/
def P4049911222929317854.Spec : Prop :=
  ∀ n, P4049911222929317854.a n = A389216 (n + 1)

end A389216

/-! ## A389216.P457524626739209245

`∩[A387113(n+1), A389215(n+1)]`
-/

namespace A389216.P457524626739209245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389216.P457524626739209245

namespace A389216

/-- `∩[A387113(n+1), A389215(n+1)]` -/
def P457524626739209245.Spec : Prop :=
  ∀ n, (P457524626739209245.a n : ℤ) = A389216 (n + 1)

end A389216

/-!
# A389217: a(n) = A325977(A228058(n)).

The programs for A389217, there is no canonical definition to state claims against.
-/

/-! ## A389217.P15453608974080819478

`1/2*(A325823(n+1)-A325319(n+1))`
-/

namespace A389217.P15453608974080819478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A325823 (n + 1) - A325319 (n + 1) : ℚ)

end

end A389217.P15453608974080819478

/-! ## A389217.P10893042898687502032

`A325977(A228058(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389217.P10893042898687502032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325977 (A228058 (n + 1)).toNat

end

end A389217.P10893042898687502032

/-! ## A389217.P4716287194622374357

`A389163(n+1)-A228058(n+1)`
-/

namespace A389217.P4716287194622374357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389163 (n + 1) - A228058 (n + 1)

end

end A389217.P4716287194622374357

/-! ## A389217.P4359908544866165820

`A389218(n+1)-A325379(n+1)`
-/

namespace A389217.P4359908544866165820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389218 (n + 1) - A325379 (n + 1)

end

end A389217.P4359908544866165820

/-! ## A389217.P13871943165017116674

`A389163(n+1)-(A325379(n+1)+A325377(n+1))`
-/

namespace A389217.P13871943165017116674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389163 (n + 1) - (A325379 (n + 1) + A325377 (n + 1))

end

end A389217.P13871943165017116674

/-! ## A389217.P7025868731528110026

`A389163(n+1)-(A389164(n+1)+A325319(n+1))`
-/

namespace A389217.P7025868731528110026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389163 (n + 1) - (A389164 (n + 1) + A325319 (n + 1))

end

end A389217.P7025868731528110026

/-! ## A389217.P15893821558175912252

`A389163(n+1)-∪[A351574(n+1), A386429(n+1)]`
-/

namespace A389217.P15893821558175912252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386429 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389163 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A389217.P15893821558175912252

/-!
# A389218: a(n) = A325978(A228058(n)).

The programs for A389218, there is no canonical definition to state claims against.
-/

/-! ## A389218.P16175982181656246504

`1/2*(A325824(n+1)-A325320(n+1))`
-/

namespace A389218.P16175982181656246504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A325824 (n + 1) - A325320 (n + 1) : ℚ)

end

end A389218.P16175982181656246504

/-! ## A389218.P9222691390432649398

`A325978(A228058(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389218.P9222691390432649398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (A228058 (n + 1)).toNat

end

end A389218.P9222691390432649398

/-! ## A389218.P508909835073249311

`A389217(n+1)+A325379(n+1)`
-/

namespace A389218.P508909835073249311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389217 (n + 1) + A325379 (n + 1)

end

end A389218.P508909835073249311

/-! ## A389218.P3236146213221828074

`A389163(n+1)-A325377(n+1)`
-/

namespace A389218.P3236146213221828074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389163 (n + 1) - A325377 (n + 1)

end

end A389218.P3236146213221828074

/-! ## A389218.P15266259851322654702

`A389163(n+1)-A001065(A228058(n+1))`
-/

namespace A389218.P15266259851322654702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389163 (n + 1) - A001065 (A228058 (n + 1)).toNat

end

end A389218.P15266259851322654702

/-! ## A389218.P1027442994077577946

`A389163(n+1)-A001065(A389164(n+1)+A325319(n+1))`
-/

namespace A389218.P1027442994077577946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389163 (n + 1) - A001065 (A389164 (n + 1) + A325319 (n + 1)).toNat

end

end A389218.P1027442994077577946

/-! ## A389218.P4095645958897494306

`A389163(n+1)-A001065(A389096(n+1)-A325320(n+1))`
-/

namespace A389218.P4095645958897494306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389163 (n + 1) - A001065 (A389096 (n + 1) - A325320 (n + 1)).toNat

end

end A389218.P4095645958897494306

/-! ## A389218.P4638366097506106788

`A389163(n+1)-A001065(A389198(n+1)-A325823(n+1))`
-/

namespace A389218.P4638366097506106788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389163 (n + 1) - A001065 (A389198 (n + 1) - A325823 (n + 1)).toNat

end

end A389218.P4638366097506106788

/-! ## A389218.P7002776561691343255

`A389163(n+1)-A001065(A388997(n+1)*A389167(n+1))`
-/

namespace A389218.P7002776561691343255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389163 (n + 1) - A001065 (A388997 (n + 1) * A389167 (n + 1)).toNat

end

end A389218.P7002776561691343255

/-!
# A389220: Harshad numbers which when divided by sum of their digits, give an integer which is a non-Harshad number.

The programs for A389220, there is no canonical definition to state claims against.
-/

/-! ## A389220.P16947134479616996804

`∩[A254321(n+1), A080897(n)]`
-/

namespace A389220.P16947134479616996804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080897 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389220.P16947134479616996804

/-!
# A389225: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(4*k,n-k).

The programs for A389225, there is no canonical definition to state claims against.
-/

/-! ## A389225.P3187591484009677238

`A368422(2*n-char[1])`
-/

namespace A389225.P3187591484009677238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368422 (2 * n - (if ∃ j, f1 j = n then 1 else 0))

end

end A389225.P3187591484009677238

/-!
# A389226: Powers k^m, m > 1, where k is an Achilles number whose squarefree kernel is a primorial.

The programs for A389226, there is no canonical definition to state claims against.
-/

/-! ## A389226.P14348768149136291882

`∪[A389260(n+1), A389374(n+1)]`
-/

namespace A389226.P14348768149136291882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389226.P14348768149136291882

/-! ## A389226.P67632892779286467

`∩[A304250(n+1), A391376(n+1)]`
-/

namespace A389226.P67632892779286467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389226.P67632892779286467

/-! ## A389226.P3091411351420303282

`∩[A380446(n+1), A391376(n+1)]`
-/

namespace A389226.P3091411351420303282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389226.P3091411351420303282

/-! ## A389226.P15545805350773602609

`∩[A389312(n+1), A391376(n+1)]`
-/

namespace A389226.P15545805350773602609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389226.P15545805350773602609

/-! ## A389226.P14586183976320165150

`∩[A304250(n+1), A383394(n+1)]`
-/

namespace A389226.P14586183976320165150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389226.P14586183976320165150

/-! ## A389226.P2864823928737620096

`∩[A380446(n+1), A383394(n+1)]`
-/

namespace A389226.P2864823928737620096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389226.P2864823928737620096

/-! ## A389226.P17304405771456638741

`∩[A383394(n+1), A389312(n+1)]`
-/

namespace A389226.P17304405771456638741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389226.P17304405771456638741

/-! ## A389226.P14704909447397682478

`∩[A369374(n+1), A383394(n+1)]`
-/

namespace A389226.P14704909447397682478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389226.P14704909447397682478

/-! ## A389226.P3310008963028831362

`∩[A369374(n+1), A391376(n+1)]`
-/

namespace A389226.P3310008963028831362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389226.P3310008963028831362

/-! ## A389226.P1923997555078967799

`∩[A383394(n+1), A387901(n+1)]`
-/

namespace A389226.P1923997555078967799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389226.P1923997555078967799

/-! ## A389226.P15091351530495759399

`∩[A387901(n+1), A391376(n+1)]`
-/

namespace A389226.P15091351530495759399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389226.P15091351530495759399

/-!
# A389227: Numbers in A126706 that are less than the square of their squarefree kernel.

The programs for A389227, the canonical program `A389227.P12429541221648021924` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389227 has offset 1).

The definition of A389227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3711 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389227.P12429541221648021924

`filter[A341646(n+1), A087049(#)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A389227

/-- `filter[A341646(n+1), A087049(#)]` -/
def P12429541221648021924.Spec : Prop :=
  ∀ n, P12429541221648021924.a n = A389227 (n + 1)

theorem P12429541221648021924.correct : P12429541221648021924.Spec := by
  intro n
  simp only [A389227, Nat.add_sub_cancel]

end A389227

/-! ## A389227.P928814710197465669

`filter[A341646(n+1), A355447(#)]`
-/

namespace A389227.P928814710197465669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A389227.P928814710197465669

namespace A389227

/-- `filter[A341646(n+1), A355447(#)]` -/
def P928814710197465669.Spec : Prop :=
  ∀ n, P928814710197465669.a n = A389227 (n + 1)

end A389227

/-! ## A389227.P16760998094019862703

`filter[A341646(n+1), A389905(#)]`
-/

namespace A389227.P16760998094019862703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A389227.P16760998094019862703

namespace A389227

/-- `filter[A341646(n+1), A389905(#)]` -/
def P16760998094019862703.Spec : Prop :=
  ∀ n, P16760998094019862703.a n = A389227 (n + 1)

end A389227

/-! ## A389227.P15141063994558114144

`∩[A013929(n+1), A341646(n+1)]`
-/

namespace A389227.P15141063994558114144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389227.P15141063994558114144

namespace A389227

/-- `∩[A013929(n+1), A341646(n+1)]` -/
def P15141063994558114144.Spec : Prop :=
  ∀ n, (P15141063994558114144.a n : ℤ) = A389227 (n + 1)

end A389227

/-! ## A389227.P14356999744928111549

`∩[A051144(n+1), A341646(n+1)]`
-/

namespace A389227.P14356999744928111549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389227.P14356999744928111549

namespace A389227

/-- `∩[A051144(n+1), A341646(n+1)]` -/
def P14356999744928111549.Spec : Prop :=
  ∀ n, (P14356999744928111549.a n : ℤ) = A389227 (n + 1)

end A389227

/-! ## A389227.P5646385281200272250

`∩[A059404(n+1), A341646(n+1)]`
-/

namespace A389227.P5646385281200272250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389227.P5646385281200272250

namespace A389227

/-- `∩[A059404(n+1), A341646(n+1)]` -/
def P5646385281200272250.Spec : Prop :=
  ∀ n, (P5646385281200272250.a n : ℤ) = A389227 (n + 1)

end A389227

/-! ## A389227.P9879353507494917582

`∩[A080756(n+1), A341646(n+1)]`
-/

namespace A389227.P9879353507494917582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389227.P9879353507494917582

namespace A389227

/-- `∩[A080756(n+1), A341646(n+1)]` -/
def P9879353507494917582.Spec : Prop :=
  ∀ n, (P9879353507494917582.a n : ℤ) = A389227 (n + 1)

end A389227

/-! ## A389227.P12310129385752415717

`∩[A126706(n+1), A341646(n+1)]`
-/

namespace A389227.P12310129385752415717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389227.P12310129385752415717

namespace A389227

/-- `∩[A126706(n+1), A341646(n+1)]` -/
def P12310129385752415717.Spec : Prop :=
  ∀ n, (P12310129385752415717.a n : ℤ) = A389227 (n + 1)

end A389227

/-! ## A389227.P13743016003181383031

`∩[A162966(n+1), A341646(n+1)]`
-/

namespace A389227.P13743016003181383031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389227.P13743016003181383031

namespace A389227

/-- `∩[A162966(n+1), A341646(n+1)]` -/
def P13743016003181383031.Spec : Prop :=
  ∀ n, (P13743016003181383031.a n : ℤ) = A389227 (n + 1)

end A389227

/-! ## A389227.P13169651554753883753

`filter[A390538(n+1), A389905(#)]`
-/

namespace A389227.P13169651554753883753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A389227.P13169651554753883753

namespace A389227

/-- `filter[A390538(n+1), A389905(#)]` -/
def P13169651554753883753.Spec : Prop :=
  ∀ n, P13169651554753883753.a n = A389227 (n + 1)

end A389227

/-! ## A389227.P4615461326347569509

`∩[A051144(n+1), A390538(n+1)]`
-/

namespace A389227.P4615461326347569509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389227.P4615461326347569509

namespace A389227

/-- `∩[A051144(n+1), A390538(n+1)]` -/
def P4615461326347569509.Spec : Prop :=
  ∀ n, (P4615461326347569509.a n : ℤ) = A389227 (n + 1)

end A389227

/-! ## A389227.P17575227130645556518

`∩[A059404(n+1), A390538(n+1)]`
-/

namespace A389227.P17575227130645556518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389227.P17575227130645556518

namespace A389227

/-- `∩[A059404(n+1), A390538(n+1)]` -/
def P17575227130645556518.Spec : Prop :=
  ∀ n, (P17575227130645556518.a n : ℤ) = A389227 (n + 1)

end A389227

/-! ## A389227.P4889771416542720400

`filter[A341646(n+1), A107078(#)]`
-/

namespace A389227.P4889771416542720400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A389227.P4889771416542720400

namespace A389227

/-- `filter[A341646(n+1), A107078(#)]` -/
def P4889771416542720400.Spec : Prop :=
  ∀ n, P4889771416542720400.a n = A389227 (n + 1)

end A389227

/-!
# A389230: Even numbers k whose symmetric representation of sigma, SRS(k), consists of an odd number, >1, of parts and whose center part is the minimum of all parts.

The programs for A389230, there is no canonical definition to state claims against.
-/

/-! ## A389230.P17897080787940096527

`∩[2*n, A279102(n+1)]`
-/

namespace A389230.P17897080787940096527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389230.P17897080787940096527

/-! ## A389230.P11775929741387328743

`filter[A279102(n+1), A059841(#)]`
-/

namespace A389230.P11775929741387328743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A389230.P11775929741387328743

/-! ## A389230.P17074033701749326130

`filter[A279102(n+1), A120325(#)]`
-/

namespace A389230.P17074033701749326130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A389230.P17074033701749326130

/-! ## A389230.P9253310955947817659

`filter[A279102(n+1), A135528(#)]`
-/

namespace A389230.P9253310955947817659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A389230.P9253310955947817659

/-! ## A389230.P15910972939963645676

`filter[A279102(n+1), A260393(#)]`
-/

namespace A389230.P15910972939963645676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260393 (f1 j).toNat = 1) n)

end

end A389230.P15910972939963645676

/-!
# A389231: Number of decimal digits in the n-th Catalan number.

The programs for A389231, there is no canonical definition to state claims against.
-/

/-! ## A389231.P6017664948217992122

`∑{digits}[A000108(n), A036370(#)]`
-/

namespace A389231.P6017664948217992122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A036370 x).sum

end

end A389231.P6017664948217992122

/-! ## A389231.P350913019586816934

`∑{digits}[A000108(n), A136522(#)]`
-/

namespace A389231.P350913019586816934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A136522 x).sum

end

end A389231.P350913019586816934

/-! ## A389231.P15279483047311234775

`∑{digits}[A000108(n), A196879(#)]`
-/

namespace A389231.P15279483047311234775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A196879 x).sum

end

end A389231.P15279483047311234775

/-! ## A389231.P3779992098733766106

`∑{digits}[A000108(n), A219208(#)]`
-/

namespace A389231.P3779992098733766106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A219208 x).sum

end

end A389231.P3779992098733766106

/-! ## A389231.P10744360307486252489

`∑{digits}[A000108(n), A384123(#)]`
-/

namespace A389231.P10744360307486252489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A384123 x).sum

end

end A389231.P10744360307486252489

/-! ## A389231.P16840970508893133692

`∑{digits}[A168491(n), A333733(#)]`
-/

namespace A389231.P16840970508893133692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A333733 x).sum

end

end A389231.P16840970508893133692

/-!
# A389232: Total number of decreasing runs in all heapable permutations of length n.

The programs for A389232, there is no canonical definition to state claims against.
-/

/-! ## A389232.P3983182296517741583

`A389792(n+1)+A336282(n+1)`
-/

namespace A389232.P3983182296517741583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389792 (n + 1) + A336282 (n + 1)

end

end A389232.P3983182296517741583

/-! ## A389232.P7663075678651666188

`A389256(n+1)+A389792(n+1)-A389991(n+1)`
-/

namespace A389232.P7663075678651666188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389256 (n + 1) + (A389792 (n + 1) - A389991 (n + 1))

end

end A389232.P7663075678651666188

/-!
# A389235: Number of repeating Harshad algorithm steps until a non-Harshad number or a power of 10 is reached.

The programs for A389235, there is no canonical definition to state claims against.
-/

/-! ## A389235.P7967786837887952964

`A236338((n+1)/A385105(n+1))`
-/

namespace A389235.P7967786837887952964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236338 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A385105 (n + 1) : ℚ))).toNat

end

end A389235.P7967786837887952964

/-! ## A389235.P16327163768351096121

`A236338((n+1)/A235600(A235600(n+1)))`
-/

namespace A389235.P16327163768351096121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236338 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A235600 (A235600 (n + 1)).toNat : ℚ))).toNat

end

end A389235.P16327163768351096121

/-! ## A389235.P5519023075137840725

`A033264(A195860(n+1)^floor(sqrt(n)+1/2))`
-/

namespace A389235.P5519023075137840725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (SequenceMachineLib.roundAway ((A195860 (n + 1) : ℚ) ^ (⌊Real.sqrt (n : ℝ) + ((1 : ℚ) / 2 : ℝ)⌋ : ℤ))).toNat

end

end A389235.P5519023075137840725

/-!
# A389238: Odd numbers k whose symmetric representation of sigma, SRS(k), consists of an odd number, >1, of parts and whose center part is the minimum of all parts.

The programs for A389238, there is no canonical definition to state claims against.
-/

/-! ## A389238.P1522745564866210770

`∩[A225563(n+1), A304231(n+1)]`
-/

namespace A389238.P1522745564866210770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389238.P1522745564866210770

/-! ## A389238.P17316844527916786933

`∩[A319529(n+1), A325229(n+1)]`
-/

namespace A389238.P17316844527916786933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389238.P17316844527916786933

/-! ## A389238.P15244937780657011122

`∩[A319529(n+1), A358675(n+1)]`
-/

namespace A389238.P15244937780657011122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389238.P15244937780657011122

/-!
# A389239: a(n) = Sum_{k=0..n} binomial(n+3*k,k).

The programs for A389239, there is no canonical definition to state claims against.
-/

/-! ## A389239.P11955582806142188497

`∑[A093848(A216314(n))]`
-/

namespace A389239.P11955582806142188497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093848 (A216314 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389239.P11955582806142188497

/-!
# A389241: Maximum number of distinct consecutive sums of a permutation of [n].

The programs for A389241, there is no canonical definition to state claims against.
-/

/-! ## A389241.P11119236198730160396

`∑[∑[A124762(A017173(n))]]`
-/

namespace A389241.P11119236198730160396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A017173 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389241.P11119236198730160396

/-! ## A389241.P1872703837641512442

`∑[∑[A124762(A016777(3*n))]]`
-/

namespace A389241.P1872703837641512442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A016777 (3 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389241.P1872703837641512442

/-! ## A389241.P353637081576040710

`∑[A072644(A230097(n+1))]`
-/

namespace A389241.P353637081576040710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072644 (A230097 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389241.P353637081576040710

/-! ## A389241.P17012041812983911932

`record[n+1-A249368(n+1)]`
-/

namespace A389241.P17012041812983911932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A249368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389241.P17012041812983911932

/-! ## A389241.P11273643030116491194

`∑[∑[A131963(A033861(n+1))]]`
-/

namespace A389241.P11273643030116491194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131963 (A033861 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389241.P11273643030116491194

/-!
# A389242: Expansion of e.g.f. exp(x^5/120 * cosh(x)).

The programs for A389242, there is no canonical definition to state claims against.
-/

/-! ## A389242.P3056283152286073342

`C(n, A154475(a(n-1)))` with `a(0)=1`
-/

namespace A389242.P3056283152286073342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose n (A154475 (a (n - 1))).toNat

end

end A389242.P3056283152286073342

/-! ## A389242.P3931648141138187565

`C(n, A297569(a(n-1)))` with `a(0)=1`
-/

namespace A389242.P3931648141138187565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose n (A297569 (a (n - 1))).toNat

end

end A389242.P3931648141138187565

/-! ## A389242.P6603026571138045289

`C(n, A378530(a(n-1)+1)-1)` with `a(0)=1`
-/

namespace A389242.P6603026571138045289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose n (A378530 (a (n - 1) + 1) - 1).toNat

end

end A389242.P6603026571138045289

/-! ## A389242.P12080183327534527751

`C(n, A283511(a(n-1)+val(n, 2)+2))` with `a(0)=1`
-/

namespace A389242.P12080183327534527751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose n (A283511 (a (n - 1) + (SequenceMachineLib.valuation n 2 + 2))).toNat

end

end A389242.P12080183327534527751

/-! ## A389242.P7241034933281848677

`C(n, A303589(A088377(n+1)))`
-/

namespace A389242.P7241034933281848677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A303589 (A088377 (n + 1)).toNat).toNat

end

end A389242.P7241034933281848677

/-!
# A389244: Powerful part of n*(n+1): a(n) = A057521(n*(n+1)).

The programs for A389244, the canonical program `A389244.P9929055792756023973` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389244 has offset 1).

The definition of A389244 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389244.P9929055792756023973

`A057521((n+1)*(n+2))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A389244

/-- `A057521((n+1)*(n+2))` -/
def P9929055792756023973.Spec : Prop :=
  ∀ n, P9929055792756023973.a n = A389244 (n + 1)

theorem P9929055792756023973.correct : P9929055792756023973.Spec := by
  intro n
  simp only [A389244, Nat.add_sub_cancel]

end A389244

/-! ## A389244.P15128121166873975809

`lcm(A057521(A000027(n+1)), A057521(n+2))`
-/

namespace A389244.P15128121166873975809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057521 (A000027 (n + 1)).toNat) (A057521 (n + 2))

end

end A389244.P15128121166873975809

namespace A389244

/-- `lcm(A057521(A000027(n+1)), A057521(n+2))` -/
def P15128121166873975809.Spec : Prop :=
  ∀ n, (P15128121166873975809.a n : ℤ) = A389244 (n + 1)

end A389244

/-! ## A389244.P16350765900878300066

`lcm(A057521(n+1), A057521(A145979(n)))`
-/

namespace A389244.P16350765900878300066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057521 (n + 1)) (A057521 (A145979 n).toNat)

end

end A389244.P16350765900878300066

namespace A389244

/-- `lcm(A057521(n+1), A057521(A145979(n)))` -/
def P16350765900878300066.Spec : Prop :=
  ∀ n, (P16350765900878300066.a n : ℤ) = A389244 (n + 1)

end A389244

/-! ## A389244.P960566183581865393

`A110660(2*(n+1))/A055231(A110660(2*(n+1)))`
-/

namespace A389244.P960566183581865393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110660 (2 * (n + 1)) : ℚ) / (A055231 (A110660 (2 * (n + 1))).toNat : ℚ)

end

end A389244.P960566183581865393

namespace A389244

/-- `A110660(2*(n+1))/A055231(A110660(2*(n+1)))` -/
def P960566183581865393.Spec : Prop :=
  ∀ n, P960566183581865393.a n = (A389244 (n + 1) : ℚ)

end A389244

/-! ## A389244.P17611825860047160525

`gcd(A002378(n+1), A057521(A002378(n+1)))`
-/

namespace A389244.P17611825860047160525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002378 (n + 1)) (A057521 (A002378 (n + 1)).toNat)

end

end A389244.P17611825860047160525

namespace A389244

/-- `gcd(A002378(n+1), A057521(A002378(n+1)))` -/
def P17611825860047160525.Spec : Prop :=
  ∀ n, (P17611825860047160525.a n : ℤ) = A389244 (n + 1)

end A389244

/-! ## A389244.P4785535604981658400

`A064549(A003557((n+1)*(n+2)))`
-/

namespace A389244.P4785535604981658400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A003557 ((n + 1) * (n + 2))).toNat

end

end A389244.P4785535604981658400

namespace A389244

/-- `A064549(A003557((n+1)*(n+2)))` -/
def P4785535604981658400.Spec : Prop :=
  ∀ n, P4785535604981658400.a n = A389244 (n + 1)

end A389244

/-!
# A389246: Expansion of (1/x) * Series_Reversion( x / (1 + x^2 / (1 - x)^3) ).

The programs for A389246, there is no canonical definition to state claims against.
-/

/-! ## A389246.P10680892072757431156

`A071841(A232970(n))+A010059(n)`
-/

namespace A389246.P10680892072757431156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071841 (A232970 n).toNat + A010059 n

end

end A389246.P10680892072757431156

/-!
# A389247: Expansion of (1/x) * Series_Reversion( x / (1 + x^2 / (1 - x)^4) ).

The programs for A389247, there is no canonical definition to state claims against.
-/

/-! ## A389247.P13568695722518076328

`A309262(A095939(n))`
-/

namespace A389247.P13568695722518076328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309262 (A095939 n).toNat

end

end A389247.P13568695722518076328

/-! ## A389247.P15704801575190799873

`A309262(A151079(n))`
-/

namespace A389247.P15704801575190799873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309262 (A151079 n).toNat

end

end A389247.P15704801575190799873

/-! ## A389247.P9269008845967073766

`A309262(A151080(n))`
-/

namespace A389247.P9269008845967073766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309262 (A151080 n).toNat

end

end A389247.P9269008845967073766

/-!
# A389252: Expansion of (1/x) * Series_Reversion( x / (1 + x^3 / (1 - x)^5) ).

The programs for A389252, there is no canonical definition to state claims against.
-/

/-! ## A389252.P2404399144364503236

`A130839(n+1)*A344651(A102315(n))`
-/

namespace A389252.P2404399144364503236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130839 (n + 1) * A344651 (A102315 n).toNat

end

end A389252.P2404399144364503236

/-!
# A389253: Expansion of e.g.f. (1/3) * (exp((1 + x)^3 - 1) + 2).

The programs for A389253, there is no canonical definition to state claims against.
-/

/-! ## A389253.P10989476758581419773

`floor((A192989(n)+2)/3)`
-/

namespace A389253.P10989476758581419773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A192989 n + 2 : ℚ) / 3⌋

end

end A389253.P10989476758581419773

/-! ## A389253.P2441836739256321321

`A192989(A028310(n))/3`
-/

namespace A389253.P2441836739256321321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192989 (A028310 n).toNat : ℚ) / 3

end

end A389253.P2441836739256321321

/-!
# A389254: Smallest k for which the number of divisors d of k such that A000005(d*k) = A000005(k + d) is equal to n, or -1 if no such k exists.

The programs for A389254, there is no canonical definition to state claims against.
-/

/-! ## A389254.P1166145949154796580

`A134446(xor(A154833(n+1), A206404(n+1)))`
-/

namespace A389254.P1166145949154796580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134446 (Int.xor (A154833 (n + 1)) (A206404 (n + 1))).toNat

end

end A389254.P1166145949154796580

/-!
# A389255: Triangle read by rows: T(n,k) = number of heapable permutations of length n with exactly k decreasing runs.

The programs for A389255, there is no canonical definition to state claims against.
-/

/-! ## A389255.P8475982979472927105

`A389487(A038722(n+1))`
-/

namespace A389255.P8475982979472927105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389487 (A038722 (n + 1)).toNat

end

end A389255.P8475982979472927105

/-! ## A389255.P10388272949408582810

`val(A007318(A101817(n+5)), xor(n, n+1)+1)`
-/

namespace A389255.P10388272949408582810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007318 (A101817 (n + 5)).toNat).toNat (Nat.xor n (n + 1) + 1)

end

end A389255.P10388272949408582810

/-! ## A389255.P11496033586900395162

`A033461(A000081(n))%A029635(n)`
-/

namespace A389255.P11496033586900395162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033461 (A000081 n).toNat) (A029635 n)

end

end A389255.P11496033586900395162

/-! ## A389255.P14159680153928797870

`A101688(n)*A364366(A173018(n+4))`
-/

namespace A389255.P14159680153928797870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A364366 (A173018 (n + 4)).toNat

end

end A389255.P14159680153928797870

/-! ## A389255.P14016841925034039321

`A347438(A046089(n+1)^A295679(n))`
-/

namespace A389255.P14016841925034039321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 (SequenceMachineLib.roundAway ((A046089 (n + 1) : ℚ) ^ (A295679 n : ℤ))).toNat

end

end A389255.P14016841925034039321

/-!
# A389256: Total number of increasing runs in all heapable permutations of length n.

The programs for A389256, there is no canonical definition to state claims against.
-/

/-! ## A389256.P11293130610950975588

`A389991(n+1)+A336282(n+1)`
-/

namespace A389256.P11293130610950975588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389991 (n + 1) + A336282 (n + 1)

end

end A389256.P11293130610950975588

/-! ## A389256.P8360676832382148013

`A306676(A181306(n))`
-/

namespace A389256.P8360676832382148013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306676 (A181306 n).toNat

end

end A389256.P8360676832382148013

/-!
# A389257: a(n) is the smallest integer k such that ((2^n - 1)^k + 1)/2^n is prime, or -1 if no such k exists.

The programs for A389257, there is no canonical definition to state claims against.
-/

/-! ## A389257.P12645253685839607855

`A296934(C(A327265(n), A350750(3*n+5)))`
-/

namespace A389257.P12645253685839607855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296934 (Nat.choose (A327265 n).toNat (A350750 (3 * n + 5)).toNat)

end

end A389257.P12645253685839607855

/-!
# A389260: Powers k^m, m > 1, where k is an Achilles number that is a product of primorials.

The programs for A389260, there is no canonical definition to state claims against.
-/

/-! ## A389260.P9745419673093820170

`∩[A368681(n+1), A389226(n+1)]`
-/

namespace A389260.P9745419673093820170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389260.P9745419673093820170

/-! ## A389260.P4016423779975399674

`∩[A368682(n+1), A389226(n+1)]`
-/

namespace A389260.P4016423779975399674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389260.P4016423779975399674

/-! ## A389260.P1121412054045605002

`∩[A389226(n+1), A390290(n+1)]`
-/

namespace A389260.P1121412054045605002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389260.P1121412054045605002

/-! ## A389260.P5275379983518349139

`∩[A364930(n+1), A389226(n+1)]`
-/

namespace A389260.P5275379983518349139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389260.P5275379983518349139

/-! ## A389260.P14966067533939934562

`∩[A181800(n+1), A389226(n+1)]`
-/

namespace A389260.P14966067533939934562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389260.P14966067533939934562

/-! ## A389260.P4837032042485698232

`∩[A181800(n+1), A391376(n+1)]`
-/

namespace A389260.P4837032042485698232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389260.P4837032042485698232

/-! ## A389260.P4795883406236342568

`∩[A364930(n+1), A391376(n+1)]`
-/

namespace A389260.P4795883406236342568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389260.P4795883406236342568

/-! ## A389260.P4426223177194166797

`∩[A368681(n+1), A391376(n+1)]`
-/

namespace A389260.P4426223177194166797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389260.P4426223177194166797

/-! ## A389260.P10556029371073096296

`∩[A368682(n+1), A391376(n+1)]`
-/

namespace A389260.P10556029371073096296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389260.P10556029371073096296

/-! ## A389260.P7800920087575984554

`∩[A390290(n+1), A391376(n+1)]`
-/

namespace A389260.P7800920087575984554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389260.P7800920087575984554

/-! ## A389260.P18045075243910866059

`∩[A181800(n+1), A383394(n+1)]`
-/

namespace A389260.P18045075243910866059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389260.P18045075243910866059

/-! ## A389260.P5034137608231077496

`∩[A364930(n+1), A383394(n+1)]`
-/

namespace A389260.P5034137608231077496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389260.P5034137608231077496

/-! ## A389260.P16506122673437285206

`∩[A368681(n+1), A383394(n+1)]`
-/

namespace A389260.P16506122673437285206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389260.P16506122673437285206

/-! ## A389260.P4773199756659596100

`∩[A368682(n+1), A383394(n+1)]`
-/

namespace A389260.P4773199756659596100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389260.P4773199756659596100

/-! ## A389260.P4443912200650864278

`∩[A383394(n+1), A390290(n+1)]`
-/

namespace A389260.P4443912200650864278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389260.P4443912200650864278

/-!
# A389262: Least k such that more than half the permutations of n elements have longest cycle <= k.

The programs for A389262, there is no canonical definition to state claims against.
-/

/-! ## A389262.P13701361176020842011

`2*n+1-A172264(A172278(2*n+1))`
-/

namespace A389262.P13701361176020842011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A172264 (A172278 (2 * n + 1)).toNat

end

end A389262.P13701361176020842011

/-! ## A389262.P8954450961306988257

`2*n+1-A172264(A276383(2*n+1))`
-/

namespace A389262.P8954450961306988257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A172264 (A276383 (2 * n + 1)).toNat

end

end A389262.P8954450961306988257

/-! ## A389262.P14632031377722133312

`A056556(A225566(n+1))`
-/

namespace A389262.P14632031377722133312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A225566 (n + 1)).toNat

end

end A389262.P14632031377722133312

/-! ## A389262.P12132240729345508215

`A306904(A214449(A214449(A118170(2*n))))`
-/

namespace A389262.P12132240729345508215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306904 (A214449 (A214449 (A118170 (2 * n)).toNat).toNat).toNat

end

end A389262.P12132240729345508215

/-! ## A389262.P2406545837398380998

`A105209(A358042(n+1))`
-/

namespace A389262.P2406545837398380998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105209 (A358042 (n + 1)).toNat

end

end A389262.P2406545837398380998

/-!
# A389267: a(1) = 2; thereafter a(n) = a(n-1) + b(a(n-1)), where b(k) is the second greatest distinct prime factor of k, or the greatest if there is only one distinct prime factor.

The programs for A389267, there is no canonical definition to state claims against.
-/

/-! ## A389267.P788422356409123106

`∑[dr(∑{e}[A240894(3*n+2), #]!+1)%5]`
-/

namespace A389267.P788422356409123106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240894 (3 * n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p) + 1 : ℤ) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389267.P788422356409123106

/-! ## A389267.P8545656307370805171

`∑[A036452(∑[A223170(n)]+1)]`
-/

namespace A389267.P8545656307370805171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223170 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389267.P8545656307370805171

/-! ## A389267.P10417211121192107302

`∑[A176170(A103999(n+3)+1)]`
-/

namespace A389267.P10417211121192107302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176170 (A103999 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389267.P10417211121192107302

/-! ## A389267.P2070618869748784217

`∑[A176170(A096448(n+1))]`
-/

namespace A389267.P2070618869748784217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176170 (A096448 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389267.P2070618869748784217

/-! ## A389267.P10722582554101820106

`∑[A156264(A245449(n+1))+1]`
-/

namespace A389267.P10722582554101820106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156264 (A245449 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389267.P10722582554101820106

/-!
# A389269: Number of axis-aligned 2 X 2 squares in the 3D projection of a (3n+1)-dimensional hypercube with side length 2.

The programs for A389269, the canonical program `A389269.P14158565152373130859` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389269 has offset 0).

The definition of A389269 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389269.P14158565152373130859

`14*a(n-1)-56*a(n-2)+64*a(n-3)` with `a(0)=0, a(1)=16, a(2)=240`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A389269

/-- `14*a(n-1)-56*a(n-2)+64*a(n-3)` -/
def P14158565152373130859.Spec : Prop :=
  ∀ n, P14158565152373130859.a n = A389269 n

theorem P14158565152373130859.correct : P14158565152373130859.Spec := by
  intro n
  simp only [A389269]

end A389269

/-! ## A389269.P16456888345987182201

`3*2^(3*n+1)-5*2^(2*n+1)+2^(n+2)`
-/

namespace A389269.P16456888345987182201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ (3 * n + 1) : ℤ) - (5 * 2 ^ (2 * n + 1) : ℤ) + (2 ^ (n + 2) : ℤ)

end

end A389269.P16456888345987182201

namespace A389269

/-- `3*2^(3*n+1)-5*2^(2*n+1)+2^(n+2)` -/
def P16456888345987182201.Spec : Prop :=
  ∀ n, P16456888345987182201.a n = A389269 n

theorem P16456888345987182201.correct : P16456888345987182201.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A389269, Nat.add_sub_cancel, A389269.P16456888345987182201.a, A389269.P14158565152373130859.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A389269, Nat.add_sub_cancel, A389269.P16456888345987182201.a, A389269.P14158565152373130859.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A389269

/-! ## A389269.P9381746797541834136

`A055010(n)*A271061(n)`
-/

namespace A389269.P9381746797541834136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 n * A271061 n

end

end A389269.P9381746797541834136

namespace A389269

/-- `A055010(n)*A271061(n)` -/
def P9381746797541834136.Spec : Prop :=
  ∀ n, P9381746797541834136.a n = A389269 n

end A389269

/-! ## A389269.P3482970515758796721

`A093357(n+1)*A173033(n)`
-/

namespace A389269.P3482970515758796721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093357 (n + 1) * A173033 n

end

end A389269.P3482970515758796721

namespace A389269

/-- `A093357(n+1)*A173033(n)` -/
def P3482970515758796721.Spec : Prop :=
  ∀ n, P3482970515758796721.a n = A389269 n

end A389269

/-! ## A389269.P2360327300728711308

`A028399(n+2)*A093357(n+1)`
-/

namespace A389269.P2360327300728711308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028399 (n + 2) * A093357 (n + 1)

end

end A389269.P2360327300728711308

namespace A389269

/-- `A028399(n+2)*A093357(n+1)` -/
def P2360327300728711308.Spec : Prop :=
  ∀ n, P2360327300728711308.a n = A389269 n

end A389269

/-! ## A389269.P16394937900185074045

`(A096045(n)-A000918(n+1))*A000918(n+1)`
-/

namespace A389269.P16394937900185074045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A096045 n - A000918 (n + 1)) * A000918 (n + 1)

end

end A389269.P16394937900185074045

namespace A389269

/-- `(A096045(n)-A000918(n+1))*A000918(n+1)` -/
def P16394937900185074045.Spec : Prop :=
  ∀ n, P16394937900185074045.a n = A389269 n

end A389269

/-! ## A389269.P3952105264104059141

`A000079(n+1)*A000918(n+1)*A083329(n)`
-/

namespace A389269.P3952105264104059141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A000918 (n + 1) * A083329 n

end

end A389269.P3952105264104059141

namespace A389269

/-- `A000079(n+1)*A000918(n+1)*A083329(n)` -/
def P3952105264104059141.Spec : Prop :=
  ∀ n, P3952105264104059141.a n = A389269 n

end A389269

/-! ## A389269.P17797722669367910852

`(A028399(n+2)+A028399(n+3))*A006516(n)`
-/

namespace A389269.P17797722669367910852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028399 (n + 2) + A028399 (n + 3)) * A006516 n

end

end A389269.P17797722669367910852

namespace A389269

/-- `(A028399(n+2)+A028399(n+3))*A006516(n)` -/
def P17797722669367910852.Spec : Prop :=
  ∀ n, P17797722669367910852.a n = A389269 n

end A389269

/-!
# A389279: Primes p such that phi(p+1) = phi(p+2).

The programs for A389279, there is no canonical definition to state claims against.
-/

/-! ## A389279.P11551442635379905532

`A332972(n+2)-2`
-/

namespace A389279.P11551442635379905532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332972 (n + 2) - 2

end

end A389279.P11551442635379905532

/-! ## A389279.P9659704799723833357

`A023444(A332972(n+2))`
-/

namespace A389279.P9659704799723833357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A332972 (n + 2)).toNat

end

end A389279.P9659704799723833357

/-!
# A389282: Total sum of lengths of the longest decreasing sequences in heapable permutations of length n.

The programs for A389282, there is no canonical definition to state claims against.
-/

/-! ## A389282.P10494816219932767702

`A119464(A091174(n))+A107895(n)`
-/

namespace A389282.P10494816219932767702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119464 (A091174 n).toNat + A107895 n

end

end A389282.P10494816219932767702

/-! ## A389282.P12975312267211902538

`A114186(A148072(n))`
-/

namespace A389282.P12975312267211902538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114186 (A148072 n).toNat

end

end A389282.P12975312267211902538

/-!
# A389284: G.f. A(x) satisfies A(x) = 1 + x/(1-x^2)^2 * A(x)^3.

The programs for A389284, there is no canonical definition to state claims against.
-/

/-! ## A389284.P1272468654021305421

`A248565(A000055(2*n+1))`
-/

namespace A389284.P1272468654021305421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248565 (A000055 (2 * n + 1)).toNat

end

end A389284.P1272468654021305421

/-! ## A389284.P11783127144106619528

`A269003(A027617(n))+A005651(n)`
-/

namespace A389284.P11783127144106619528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269003 (A027617 n).toNat + A005651 n

end

end A389284.P11783127144106619528

/-!
# A389288: Number of nested pairs of Dyck paths of lengths n and n+1.

The programs for A389288, there is no canonical definition to state claims against.
-/

/-! ## A389288.P16237055967180872472

`∑[A109895(n!)]`
-/

namespace A389288.P16237055967180872472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109895 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389288.P16237055967180872472

/-!
# A389291: a(n) = Sum_{k=0..floor(n/4)} binomial(n+k-1,k) * binomial(k,n-4*k).

The programs for A389291, there is no canonical definition to state claims against.
-/

/-! ## A389291.P16405667285586888574

`A371592(A387200(n))`
-/

namespace A389291.P16405667285586888574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371592 (A387200 n).toNat

end

end A389291.P16405667285586888574

/-! ## A389291.P11130185728170996107

`and(A052294(A000110(n)), A320582(2*n))`
-/

namespace A389291.P11130185728170996107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052294 (A000110 n).toNat) (A320582 (2 * n))

end

end A389291.P11130185728170996107

/-! ## A389291.P14754736061718099239

`C(A000120(A094790(n+1)), A349814(n+1))`
-/

namespace A389291.P14754736061718099239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000120 (A094790 (n + 1)).toNat).toNat (A349814 (n + 1)).toNat

end

end A389291.P14754736061718099239

/-!
# A389296: Smallest k for which A386476(k) = n.

The programs for A389296, there is no canonical definition to state claims against.
-/

/-! ## A389296.P9390329244673733132

`A005934(n+1)-A352449(A103839(n+2))`
-/

namespace A389296.P9390329244673733132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005934 (n + 1) - A352449 (A103839 (n + 2)).toNat

end

end A389296.P9390329244673733132

/-! ## A389296.P13478514903325440008

`4*A349059(a(n-1))` with `a(0)=1`
-/

namespace A389296.P13478514903325440008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * A349059 (a (n - 1)).toNat

end

end A389296.P13478514903325440008

/-! ## A389296.P4382395744338160824

`A354139(A229614(n))`
-/

namespace A389296.P4382395744338160824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354139 (A229614 n).toNat

end

end A389296.P4382395744338160824

/-!
# A389297: Exponential deficient numbers that have at least one exponential abundant divisor.

The programs for A389297, there is no canonical definition to state claims against.
-/

/-! ## A389297.P12183891655765858470

`A053814(A389298(n+1))`
-/

namespace A389297.P12183891655765858470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053814 (A389298 (n + 1)).toNat

end

end A389297.P12183891655765858470

/-! ## A389297.P1298664324828258614

`filter[A389298(n+1), A294937(#)]`
-/

namespace A389297.P1298664324828258614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A389297.P1298664324828258614

/-! ## A389297.P15151248700172231386

`filter[A389298(n+1), A381735(#)]`
-/

namespace A389297.P15151248700172231386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381735 (f1 j).toNat = 1) n)

end

end A389297.P15151248700172231386

/-! ## A389297.P11724280835797203722

`A209349(A000217(n))*A389298(n+1)`
-/

namespace A389297.P11724280835797203722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209349 (A000217 n).toNat * A389298 (n + 1)

end

end A389297.P11724280835797203722

/-! ## A389297.P8651284125339476800

`A389298(n+1)%A074284(A074303(n))`
-/

namespace A389297.P8651284125339476800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A389298 (n + 1)) (A074284 (A074303 n).toNat)

end

end A389297.P8651284125339476800

/-!
# A389298: Primitive terms in A389297: powerful numbers that are exponential deficient and having at least one exponential abundant divisor.

The programs for A389298, there is no canonical definition to state claims against.
-/

/-! ## A389298.P11317551402427172793

`∩[A192636(n+1), A389297(n+1)]`
-/

namespace A389298.P11317551402427172793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389298.P11317551402427172793

/-! ## A389298.P6540063184530277951

`∩[A286708(n+1), A389297(n+1)]`
-/

namespace A389298.P6540063184530277951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389298.P6540063184530277951

/-! ## A389298.P12189909716899409616

`∩[A320966(n+1), A389297(n+1)]`
-/

namespace A389298.P12189909716899409616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389298.P12189909716899409616

/-! ## A389298.P6270907198724771539

`∩[A356871(n+1), A389297(n+1)]`
-/

namespace A389298.P6270907198724771539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389298.P6270907198724771539

/-! ## A389298.P10808064219901910225

`∩[A363169(n+1), A389297(n+1)]`
-/

namespace A389298.P10808064219901910225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389298.P10808064219901910225

/-! ## A389298.P1431518043479228223

`∩[A363216(n+1), A389297(n+1)]`
-/

namespace A389298.P1431518043479228223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389298.P1431518043479228223

/-! ## A389298.P17206945290435778368

`∩[A372404(n+1), A389297(n+1)]`
-/

namespace A389298.P17206945290435778368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389298.P17206945290435778368

/-! ## A389298.P2115634643363318316

`∩[A389297(n+1), A389331(n+1)]`
-/

namespace A389298.P2115634643363318316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389298.P2115634643363318316

/-! ## A389298.P17648847608425859279

`∩[A389297(n+1), A390010(n+1)]`
-/

namespace A389298.P17648847608425859279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389298.P17648847608425859279

/-! ## A389298.P8858302995907260430

`∩[A389297(n+1), A390950(n+1)]`
-/

namespace A389298.P8858302995907260430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389298.P8858302995907260430

/-! ## A389298.P18257226656705291725

`∩[A389297(n+1), A395197(n+1)]`
-/

namespace A389298.P18257226656705291725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389298.P18257226656705291725

