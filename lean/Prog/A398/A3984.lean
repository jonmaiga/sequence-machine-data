import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C007
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C034
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A398404: Self-convolution of the number of partitions of [n] with distinct block sizes.

The programs for A398404, there is no canonical definition to state claims against.
-/

/-! ## A398404.P15282111430667682442

`∑{#}[n, A007837(#)*A007837(n-#)]`
-/

namespace A398404.P15282111430667682442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A007837 k * A007837 (n - k)

end

end A398404.P15282111430667682442

/-!
# A398421: Odd numbers of the form p^2*q, where p and q are distinct odd primes.

The programs for A398421, the canonical program `A398421.P3891246051767450638` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398421 has offset 1).

The definition of A398421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2955 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398421.P3891246051767450638

`∩[A053850(n+1), A054753(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A398421

/-- `∩[A053850(n+1), A054753(n+1)]` -/
def P3891246051767450638.Spec : Prop :=
  ∀ n, (P3891246051767450638.a n : ℤ) = A398421 (n + 1)

theorem P3891246051767450638.correct : P3891246051767450638.Spec := by
  intro n
  simp only [A398421, Nat.add_sub_cancel]

end A398421

/-! ## A398421.P5465210911300674236

`∩[2*n+1, A054753(n+1)]`
-/

namespace A398421.P5465210911300674236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398421.P5465210911300674236

namespace A398421

/-- `∩[2*n+1, A054753(n+1)]` -/
def P5465210911300674236.Spec : Prop :=
  ∀ n, (P5465210911300674236.a n : ℤ) = A398421 (n + 1)

end A398421

/-! ## A398421.P3312596115179325844

`filter[A030515(n+1), A358773(#)]`
-/

namespace A398421.P3312596115179325844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A398421.P3312596115179325844

namespace A398421

/-- `filter[A030515(n+1), A358773(#)]` -/
def P3312596115179325844.Spec : Prop :=
  ∀ n, P3312596115179325844.a n = A398421 (n + 1)

end A398421

/-! ## A398421.P4100541189629107029

`filter[A030515(n+1), A369058(#)]`
-/

namespace A398421.P4100541189629107029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A398421.P4100541189629107029

namespace A398421

/-- `filter[A030515(n+1), A369058(#)]` -/
def P4100541189629107029.Spec : Prop :=
  ∀ n, P4100541189629107029.a n = A398421 (n + 1)

end A398421

/-! ## A398421.P5246193204150272407

`filter[A081619(n+1), A369058(#)]`
-/

namespace A398421.P5246193204150272407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A398421.P5246193204150272407

namespace A398421

/-- `filter[A081619(n+1), A369058(#)]` -/
def P5246193204150272407.Spec : Prop :=
  ∀ n, P5246193204150272407.a n = A398421 (n + 1)

end A398421

/-! ## A398421.P12840169721094341488

`filter[A228057(n+1), A353798(#)]`
-/

namespace A398421.P12840169721094341488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A398421.P12840169721094341488

namespace A398421

/-- `filter[A228057(n+1), A353798(#)]` -/
def P12840169721094341488.Spec : Prop :=
  ∀ n, P12840169721094341488.a n = A398421 (n + 1)

end A398421

/-! ## A398421.P9234599844343426168

`filter[A230577(n+1), A353798(#)]`
-/

namespace A398421.P9234599844343426168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A398421.P9234599844343426168

namespace A398421

/-- `filter[A230577(n+1), A353798(#)]` -/
def P9234599844343426168.Spec : Prop :=
  ∀ n, P9234599844343426168.a n = A398421 (n + 1)

end A398421

/-! ## A398421.P16423529141985172175

`filter[A228057(n+1), A359471(#)]`
-/

namespace A398421.P16423529141985172175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A398421.P16423529141985172175

namespace A398421

/-- `filter[A228057(n+1), A359471(#)]` -/
def P16423529141985172175.Spec : Prop :=
  ∀ n, P16423529141985172175.a n = A398421 (n + 1)

end A398421

/-! ## A398421.P723065592186754756

`filter[A228057(n+1), A359474(#)]`
-/

namespace A398421.P723065592186754756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A398421.P723065592186754756

namespace A398421

/-- `filter[A228057(n+1), A359474(#)]` -/
def P723065592186754756.Spec : Prop :=
  ∀ n, P723065592186754756.a n = A398421 (n + 1)

end A398421

/-! ## A398421.P10263489226421919009

`filter[A228057(n+1), A359475(#)]`
-/

namespace A398421.P10263489226421919009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A398421.P10263489226421919009

namespace A398421

/-- `filter[A228057(n+1), A359475(#)]` -/
def P10263489226421919009.Spec : Prop :=
  ∀ n, P10263489226421919009.a n = A398421 (n + 1)

end A398421

/-! ## A398421.P5125443950979396123

`filter[A230577(n+1), A369058(#)]`
-/

namespace A398421.P5125443950979396123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A398421.P5125443950979396123

namespace A398421

/-- `filter[A230577(n+1), A369058(#)]` -/
def P5125443950979396123.Spec : Prop :=
  ∀ n, P5125443950979396123.a n = A398421 (n + 1)

end A398421

/-! ## A398421.P5490595658828908393

`filter[A257410(n+1), A358773(#)]`
-/

namespace A398421.P5490595658828908393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A398421.P5490595658828908393

namespace A398421

/-- `filter[A257410(n+1), A358773(#)]` -/
def P5490595658828908393.Spec : Prop :=
  ∀ n, P5490595658828908393.a n = A398421 (n + 1)

end A398421

/-! ## A398421.P11117477926868314217

`filter[A286228(n+1), A358773(#)]`
-/

namespace A398421.P11117477926868314217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A398421.P11117477926868314217

namespace A398421

/-- `filter[A286228(n+1), A358773(#)]` -/
def P11117477926868314217.Spec : Prop :=
  ∀ n, P11117477926868314217.a n = A398421 (n + 1)

end A398421

/-! ## A398421.P2389261122756384052

`filter[A286228(n+1), A369058(#)]`
-/

namespace A398421.P2389261122756384052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A398421.P2389261122756384052

namespace A398421

/-- `filter[A286228(n+1), A369058(#)]` -/
def P2389261122756384052.Spec : Prop :=
  ∀ n, P2389261122756384052.a n = A398421 (n + 1)

end A398421

/-! ## A398421.P10334332066065668926

`filter[A360769(n+1), A353798(#)]`
-/

namespace A398421.P10334332066065668926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A398421.P10334332066065668926

namespace A398421

/-- `filter[A360769(n+1), A353798(#)]` -/
def P10334332066065668926.Spec : Prop :=
  ∀ n, P10334332066065668926.a n = A398421 (n + 1)

end A398421

/-! ## A398421.P17239306687396798197

`filter[A360769(n+1), A369058(#)]`
-/

namespace A398421.P17239306687396798197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A398421.P17239306687396798197

namespace A398421

/-- `filter[A360769(n+1), A369058(#)]` -/
def P17239306687396798197.Spec : Prop :=
  ∀ n, P17239306687396798197.a n = A398421 (n + 1)

end A398421

/-! ## A398421.P345122538228989446

`filter[A381823(n+1), A353798(#)]`
-/

namespace A398421.P345122538228989446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A398421.P345122538228989446

namespace A398421

/-- `filter[A381823(n+1), A353798(#)]` -/
def P345122538228989446.Spec : Prop :=
  ∀ n, P345122538228989446.a n = A398421 (n + 1)

end A398421

/-! ## A398421.P14926954931950054427

`filter[A381823(n+1), A358753(#)]`
-/

namespace A398421.P14926954931950054427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A398421.P14926954931950054427

namespace A398421

/-- `filter[A381823(n+1), A358753(#)]` -/
def P14926954931950054427.Spec : Prop :=
  ∀ n, P14926954931950054427.a n = A398421 (n + 1)

end A398421

/-! ## A398421.P5520830348223179890

`filter[A381823(n+1), A358773(#)]`
-/

namespace A398421.P5520830348223179890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A398421.P5520830348223179890

namespace A398421

/-- `filter[A381823(n+1), A358773(#)]` -/
def P5520830348223179890.Spec : Prop :=
  ∀ n, P5520830348223179890.a n = A398421 (n + 1)

end A398421

/-! ## A398421.P9013902088404214139

`filter[A391025(n+1), A353798(#)]`
-/

namespace A398421.P9013902088404214139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A398421.P9013902088404214139

namespace A398421

/-- `filter[A391025(n+1), A353798(#)]` -/
def P9013902088404214139.Spec : Prop :=
  ∀ n, P9013902088404214139.a n = A398421 (n + 1)

end A398421

/-!
# A398422: Numbers containing at least one zero and divisible by the product of their nonzero digits.

The programs for A398422, there is no canonical definition to state claims against.
-/

/-! ## A398422.P13052957888979257007

`∩[A055471(n+1), A342855(n+1)]`
-/

namespace A398422.P13052957888979257007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398422.P13052957888979257007

/-! ## A398422.P10112117742198780190

`∩[A055471(n+1), A330562(n+1)]`
-/

namespace A398422.P10112117742198780190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398422.P10112117742198780190

/-! ## A398422.P13444487779447048110

`∩[A011540(n+1), A055471(n+1)]`
-/

namespace A398422.P13444487779447048110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398422.P13444487779447048110

/-! ## A398422.P11691621002336289184

`∩[A055471(n+1), A087140(n+1)]`
-/

namespace A398422.P11691621002336289184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398422.P11691621002336289184

/-! ## A398422.P16921620266180731826

`∩[A055471(n+1), A188643(n+1)]`
-/

namespace A398422.P16921620266180731826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398422.P16921620266180731826

/-! ## A398422.P4405295061004884263

`filter[A055471(n+1), A217096(#)]`
-/

namespace A398422.P4405295061004884263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217096 (f1 j).toNat = 1) n)

end

end A398422.P4405295061004884263

/-!
# A398431: a(n) is the least positive multiple of n that is a factorial base Niven number.

The programs for A398431, there is no canonical definition to state claims against.
-/

/-! ## A398431.P8871669295355784313

`A398496(n+1)*(n+1)`
-/

namespace A398431.P8871669295355784313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398496 (n + 1) * (n + 1 : ℤ)

end

end A398431.P8871669295355784313

/-! ## A398431.P18089638707157121262

`(n+1)*A398496(n+1)`
-/

namespace A398431.P18089638707157121262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A398496 (n + 1)

end

end A398431.P18089638707157121262

/-!
# A398434: a(n) is the maximum cardinality of a Sidon subset of the set of positive divisors of n.

The programs for A398434, there is no canonical definition to state claims against.
-/

/-! ## A398434.P18158021767073990090

`A289849(n+1)-A296210(n+1)`
-/

namespace A398434.P18158021767073990090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289849 (n + 1) - A296210 (n + 1)

end

end A398434.P18158021767073990090

/-!
# A398435: a(n) is the number of collisions among unordered pairwise sums of positive divisors of n.

The programs for A398435, there is no canonical definition to state claims against.
-/

/-! ## A398435.P10236366058458532506

`A184389(n+1)-A260152(n+1)`
-/

namespace A398435.P10236366058458532506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1) - A260152 (n + 1)

end

end A398435.P10236366058458532506

/-! ## A398435.P13607284122626728196

`A000217(A000005(n+1))-A260152(n+1)`
-/

namespace A398435.P13607284122626728196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000005 (n + 1)).toNat - A260152 (n + 1)

end

end A398435.P13607284122626728196

/-! ## A398435.P14075742009071683060

`A327193(A140987(n+1))`
-/

namespace A398435.P14075742009071683060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327193 (A140987 (n + 1)).toNat

end

end A398435.P14075742009071683060

/-! ## A398435.P13989640184816864121

`A147844(A334491(n+1))`
-/

namespace A398435.P13989640184816864121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147844 (A334491 (n + 1)).toNat

end

end A398435.P13989640184816864121

/-!
# A398436: a(n) is the smallest composite number c greater than all previous terms such that the product of the previous terms plus c is prime.

The programs for A398436, there is no canonical definition to state claims against.
-/

/-! ## A398436.P4805599764415576043

`A137167(A344509(n+1))`
-/

namespace A398436.P4805599764415576043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137167 (A344509 (n + 1)).toNat

end

end A398436.P4805599764415576043

/-!
# A398440: Main diagonal of the array A398438.

The programs for A398440, there is no canonical definition to state claims against.
-/

/-! ## A398440.P11125708482546446897

`A398438(∑[4*n])`
-/

namespace A398440.P11125708482546446897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398438 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398440.P11125708482546446897

/-!
# A398442: Numbers k of the form q(k) * rad(k), where rad = A007947 and q(k) is the second smallest distinct prime factor of k.

The programs for A398442, there is no canonical definition to state claims against.
-/

/-! ## A398442.P14523163733784844746

`filter[A398375(n+1), A359471(#)]`
-/

namespace A398442.P14523163733784844746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A398442.P14523163733784844746

/-! ## A398442.P14589111561599094480

`filter[A398375(n+1), A359474(#)]`
-/

namespace A398442.P14589111561599094480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A398442.P14589111561599094480

/-! ## A398442.P353789700613681280

`filter[A398375(n+1), A359475(#)]`
-/

namespace A398442.P353789700613681280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A398442.P353789700613681280

/-! ## A398442.P17124882757539720814

`∩[A072357(n+1), A398375(n+1)]`
-/

namespace A398442.P17124882757539720814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398442.P17124882757539720814

/-! ## A398442.P4137254439158583274

`∩[A060687(n+1), A398375(n+1)]`
-/

namespace A398442.P4137254439158583274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398442.P4137254439158583274

/-! ## A398442.P13657557562115711325

`∩[A048107(n+1), A398375(n+1)]`
-/

namespace A398442.P13657557562115711325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398442.P13657557562115711325

/-!
# A398444: Numbers k of the form lpf(k) * slpf(k) * rad(k), where rad = A007947, lpf is the least prime factor, and slpf the second smallest distinct prime factor of k.

The programs for A398444, there is no canonical definition to state claims against.
-/

/-! ## A398444.P11982846918386522782

`∩[A371601(n+1), A375144(n+1)]`
-/

namespace A398444.P11982846918386522782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398444.P11982846918386522782

/-!
# A398446: Number of permutations of [n] avoiding the pattern 1324 with the maximum element n in position n-2.

The programs for A398446, the canonical program `A398446.P5433720991172560056` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398446 has offset 3).

The definition of A398446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398446.P5433720991172560056

`((n+3)*C(2*(n+3)-6, n)+4^n)/2`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398446

/-- `((n+3)*C(2*(n+3)-6, n)+4^n)/2` -/
def P5433720991172560056.Spec : Prop :=
  ∀ n, P5433720991172560056.a n = (A398446 (n + 3) : ℚ)

end A398446

/-! ## A398446.P5089355488533947752

`A116078(n)+A000302(n)`
-/

namespace A398446.P5089355488533947752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116078 n + A000302 n

end

end A398446.P5089355488533947752

namespace A398446

/-- `A116078(n)+A000302(n)` -/
def P5089355488533947752.Spec : Prop :=
  ∀ n, P5089355488533947752.a n = A398446 (n + 3)

end A398446

/-! ## A398446.P9828870896575089077

`A394529(n)+A051960(n)`
-/

namespace A398446.P9828870896575089077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394529 n + A051960 n

end

end A398446.P9828870896575089077

namespace A398446

/-- `A394529(n)+A051960(n)` -/
def P9828870896575089077.Spec : Prop :=
  ∀ n, P9828870896575089077.a n = A398446 (n + 3)

end A398446

/-! ## A398446.P2354641594121818326

`A395725(A034856(n+2))`
-/

namespace A398446.P2354641594121818326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395725 (A034856 (n + 2)).toNat

end

end A398446.P2354641594121818326

namespace A398446

/-- `A395725(A034856(n+2))` -/
def P2354641594121818326.Spec : Prop :=
  ∀ n, P2354641594121818326.a n = A398446 (n + 3)

end A398446

/-!
# A398451: Records in A398183.

The programs for A398451, there is no canonical definition to state claims against.
-/

/-! ## A398451.P8502242765906706754

`record[A398183(n+3)]`
-/

namespace A398451.P8502242765906706754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398183 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398451.P8502242765906706754

/-! ## A398451.P857205685612648185

`A398183(A398452(n+1))`
-/

namespace A398451.P857205685612648185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398183 (A398452 (n + 1)).toNat

end

end A398451.P857205685612648185

/-!
# A398453: Integers m such that digits in m and m^2 are in nonincreasing order.

The programs for A398453, there is no canonical definition to state claims against.
-/

/-! ## A398453.P5586762602034818150

`∩[A009996(n+1), A028821(n+1)]`
-/

namespace A398453.P5586762602034818150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398453.P5586762602034818150

/-! ## A398453.P12966713569423189349

`∩[A028821(n+1), A267086(n+1)]`
-/

namespace A398453.P12966713569423189349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398453.P12966713569423189349

/-! ## A398453.P5611758378824404492

`∩[A028821(n+1), A334145(n+1)]`
-/

namespace A398453.P5611758378824404492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398453.P5611758378824404492

/-! ## A398453.P11630037658916615926

`∩[A028821(n+1), A072543(n+1)]`
-/

namespace A398453.P11630037658916615926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398453.P11630037658916615926

/-! ## A398453.P7639948180159108014

`∩[A028821(n+1), A124695(n+1)]`
-/

namespace A398453.P7639948180159108014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398453.P7639948180159108014

/-!
# A398454: a(n) = (A383505(n)+1)/n.

The programs for A398454, there is no canonical definition to state claims against.
-/

/-! ## A398454.P1898924978700424771

`(A383505(n+1)+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398454.P1898924978700424771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383505 (n + 1) + 1 : ℚ) / (n + 1 : ℚ)

end

end A398454.P1898924978700424771

/-!
# A398463: Multiplicative with a(p^e) = e^2 * p^e.

The programs for A398463, the canonical program `A398463.P753977206100688951` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398463 has offset 1).

The definition of A398463 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398463.P753977206100688951

`A360969(n+1)*(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A398463

/-- `A360969(n+1)*(n+1)` -/
def P753977206100688951.Spec : Prop :=
  ∀ n, P753977206100688951.a n = A398463 (n + 1)

theorem P753977206100688951.correct : P753977206100688951.Spec := by
  intro n
  simp only [A398463, Nat.add_sub_cancel]

end A398463

/-! ## A398463.P11147471174698546529

`A005361(n+1)²*(n+1)`
-/

namespace A398463.P11147471174698546529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) ^ 2 * (n + 1 : ℤ)

end

end A398463.P11147471174698546529

namespace A398463

/-- `A005361(n+1)²*(n+1)` -/
def P11147471174698546529.Spec : Prop :=
  ∀ n, P11147471174698546529.a n = A398463 (n + 1)

end A398463

/-! ## A398463.P14008100020385538059

`(n+1)*∏{e}[n+1, #]²`
-/

namespace A398463.P14008100020385538059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ 2

end

end A398463.P14008100020385538059

namespace A398463

/-- `(n+1)*∏{e}[n+1, #]²` -/
def P14008100020385538059.Spec : Prop :=
  ∀ n, (P14008100020385538059.a n : ℤ) = A398463 (n + 1)

end A398463

/-! ## A398463.P7449631762592916139

`(n+1)/(1/∏{e}[n+1, #])²`
-/

namespace A398463.P7449631762592916139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (1 / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ)) ^ 2

end

end A398463.P7449631762592916139

namespace A398463

/-- `(n+1)/(1/∏{e}[n+1, #])²` -/
def P7449631762592916139.Spec : Prop :=
  ∀ n, P7449631762592916139.a n = (A398463 (n + 1) : ℚ)

end A398463

/-! ## A398463.P8497220322653124647

`(n+1)/∏{e}[n+1, #^-2]`
-/

namespace A398463.P8497220322653124647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) ^ (-2 : ℤ))

end

end A398463.P8497220322653124647

namespace A398463

/-- `(n+1)/∏{e}[n+1, #^-2]` -/
def P8497220322653124647.Spec : Prop :=
  ∀ n, P8497220322653124647.a n = (A398463 (n + 1) : ℚ)

end A398463

/-! ## A398463.P12627114261100289099

`(n+1)*sqrt(∏{e}[n+1, #^4])`
-/

namespace A398463.P12627114261100289099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 4 : ℕ) : ℝ)

end

end A398463.P12627114261100289099

namespace A398463

/-- `(n+1)*sqrt(∏{e}[n+1, #^4])` -/
def P12627114261100289099.Spec : Prop :=
  ∀ n, P12627114261100289099.a n = (A398463 (n + 1) : ℝ)

end A398463

/-! ## A398463.P5291748659231187064

`(n+1)*∏{p}[n+1, val(n+1, #)]²`
-/

namespace A398463.P5291748659231187064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p) ^ 2

end

end A398463.P5291748659231187064

namespace A398463

/-- `(n+1)*∏{p}[n+1, val(n+1, #)]²` -/
def P5291748659231187064.Spec : Prop :=
  ∀ n, (P5291748659231187064.a n : ℤ) = A398463 (n + 1)

end A398463

/-! ## A398463.P15032640759018796579

`(n+1)*A360969(n+1)`
-/

namespace A398463.P15032640759018796579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A360969 (n + 1)

end

end A398463.P15032640759018796579

namespace A398463

/-- `(n+1)*A360969(n+1)` -/
def P15032640759018796579.Spec : Prop :=
  ∀ n, P15032640759018796579.a n = A398463 (n + 1)

theorem P15032640759018796579.correct : P15032640759018796579.Spec := by
  intro n
  simp only [A398463, Nat.add_sub_cancel, A398463.P15032640759018796579.a, A398463.P753977206100688951.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A398463

/-! ## A398463.P490790936545511107

`(n+1)*A005361(n+1)²`
-/

namespace A398463.P490790936545511107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005361 (n + 1) ^ 2

end

end A398463.P490790936545511107

namespace A398463

/-- `(n+1)*A005361(n+1)²` -/
def P490790936545511107.Spec : Prop :=
  ∀ n, P490790936545511107.a n = A398463 (n + 1)

theorem P490790936545511107.correct : P490790936545511107.Spec := by
  intro n
  simp only [A398463, Nat.add_sub_cancel, A398463.P490790936545511107.a, A398463.P753977206100688951.a, A005361, A005361.P7238185687981551187.a, A360969, A360969.P9537499425783326170.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A398463

/-! ## A398463.P12775654426910347659

`(n+1)*A303915(n+1)²`
-/

namespace A398463.P12775654426910347659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A303915 (n + 1) ^ 2

end

end A398463.P12775654426910347659

namespace A398463

/-- `(n+1)*A303915(n+1)²` -/
def P12775654426910347659.Spec : Prop :=
  ∀ n, P12775654426910347659.a n = A398463 (n + 1)

end A398463

/-! ## A398463.P11758200561936667275

`(n+1)*sqrt(A361132(n+1))`
-/

namespace A398463.P11758200561936667275
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A361132 (n + 1) : ℝ)

end

end A398463.P11758200561936667275

namespace A398463

/-- `(n+1)*sqrt(A361132(n+1))` -/
def P11758200561936667275.Spec : Prop :=
  ∀ n, P11758200561936667275.a n = (A398463 (n + 1) : ℝ)

end A398463

/-! ## A398463.P7118011063177815383

`A000026(n+1)*A203639(n+1)`
-/

namespace A398463.P7118011063177815383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (n + 1) * A203639 (n + 1)

end

end A398463.P7118011063177815383

namespace A398463

/-- `A000026(n+1)*A203639(n+1)` -/
def P7118011063177815383.Spec : Prop :=
  ∀ n, P7118011063177815383.a n = A398463 (n + 1)

end A398463

/-! ## A398463.P10868859450507860963

`A203639(n+1)*A361268(n+1)/A064549(n+1)`
-/

namespace A398463.P10868859450507860963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203639 (n + 1) * A361268 (n + 1) : ℚ) / (A064549 (n + 1) : ℚ)

end

end A398463.P10868859450507860963

namespace A398463

/-- `A203639(n+1)*A361268(n+1)/A064549(n+1)` -/
def P10868859450507860963.Spec : Prop :=
  ∀ n, P10868859450507860963.a n = (A398463 (n + 1) : ℚ)

end A398463

/-! ## A398463.P3662875204672895113

`A361265(n+1)*A361265(n+1)/A361264(n+1)`
-/

namespace A398463.P3662875204672895113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361265 (n + 1) * A361265 (n + 1) : ℚ) / (A361264 (n + 1) : ℚ)

end

end A398463.P3662875204672895113

namespace A398463

/-- `A361265(n+1)*A361265(n+1)/A361264(n+1)` -/
def P3662875204672895113.Spec : Prop :=
  ∀ n, P3662875204672895113.a n = (A398463 (n + 1) : ℚ)

end A398463

/-! ## A398463.P9260510456447265278

`(n+1)*A325837((n+1)²)²`
-/

namespace A398463.P9260510456447265278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A325837 ((n + 1) ^ 2) ^ 2

end

end A398463.P9260510456447265278

namespace A398463

/-- `(n+1)*A325837((n+1)²)²` -/
def P9260510456447265278.Spec : Prop :=
  ∀ n, P9260510456447265278.a n = A398463 (n + 1)

end A398463

/-! ## A398463.P17105818866731671997

`(n+1)*A365333((n+1)²)²`
-/

namespace A398463.P17105818866731671997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A365333 ((n + 1) ^ 2) ^ 2

end

end A398463.P17105818866731671997

namespace A398463

/-- `(n+1)*A365333((n+1)²)²` -/
def P17105818866731671997.Spec : Prop :=
  ∀ n, P17105818866731671997.a n = A398463 (n + 1)

end A398463

/-! ## A398463.P14832470110427969303

`(n+1)*A365550((n+1)²)²`
-/

namespace A398463.P14832470110427969303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A365550 ((n + 1) ^ 2) ^ 2

end

end A398463.P14832470110427969303

namespace A398463

/-- `(n+1)*A365550((n+1)²)²` -/
def P14832470110427969303.Spec : Prop :=
  ∀ n, P14832470110427969303.a n = A398463 (n + 1)

end A398463

/-! ## A398463.P3900869970147494550

`(n+1)*A369307((n+1)²)²`
-/

namespace A398463.P3900869970147494550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A369307 ((n + 1) ^ 2) ^ 2

end

end A398463.P3900869970147494550

namespace A398463

/-- `(n+1)*A369307((n+1)²)²` -/
def P3900869970147494550.Spec : Prop :=
  ∀ n, P3900869970147494550.a n = A398463 (n + 1)

end A398463

/-!
# A398470: Number of increasing 3-term arithmetic progressions in an n^3 cube.

The programs for A398470, the canonical program `A398470.P15258585584443073451` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398470 has offset 1).

The definition of A398470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398470.P15258585584443073451

`A036486(A000982(n+1))-A036486(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A398470

/-- `A036486(A000982(n+1))-A036486(n+1)` -/
def P15258585584443073451.Spec : Prop :=
  ∀ n, P15258585584443073451.a n = A398470 (n + 1)

theorem P15258585584443073451.correct : P15258585584443073451.Spec := by
  intro n
  simp only [A398470, Nat.add_sub_cancel]

end A398470

/-! ## A398470.P11179298549510273825

`A036487(A000982(n+1))-A036487(n+1)`
-/

namespace A398470.P11179298549510273825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036487 (A000982 (n + 1)).toNat - A036487 (n + 1)

end

end A398470.P11179298549510273825

namespace A398470

/-- `A036487(A000982(n+1))-A036487(n+1)` -/
def P11179298549510273825.Spec : Prop :=
  ∀ n, P11179298549510273825.a n = A398470 (n + 1)

end A398470

/-! ## A398470.P11564891081523730839

`A397600(A034856(n+2))`
-/

namespace A398470.P11564891081523730839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397600 (A034856 (n + 2)).toNat

end

end A398470.P11564891081523730839

namespace A398470

/-- `A397600(A034856(n+2))` -/
def P11564891081523730839.Spec : Prop :=
  ∀ n, P11564891081523730839.a n = A398470 (n + 1)

end A398470

/-! ## A398470.P4116211030673387463

`A397600(lt[A106356(n+1), 1])`
-/

namespace A398470.P4116211030673387463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397600 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A398470.P4116211030673387463

namespace A398470

/-- `A397600(lt[A106356(n+1), 1])` -/
def P4116211030673387463.Spec : Prop :=
  ∀ n, P4116211030673387463.a n = A398470 (n + 1)

end A398470

/-!
# A398471: Minimum total search cost of an optimal binary search tree over n keys in sorted order, where key i has access frequency i.

The programs for A398471, the canonical program `A398471.P10817023323234358849` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398471 has offset 1).

The definition of A398471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1507 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398471.P10817023323234358849

`∑[∑[A157893(n+1)]]`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A398471

/-- `∑[∑[A157893(n+1)]]` -/
def P10817023323234358849.Spec : Prop :=
  ∀ n, P10817023323234358849.a n = A398471 (n + 1)

theorem P10817023323234358849.correct : P10817023323234358849.Spec := by
  intro n
  simp only [A398471, Nat.add_sub_cancel]

end A398471

/-!
# A398472: Triangle read by rows: T(n,k) is the number of ternary words of length n with c(1) = k such that all prefixes satisfy c(1) >= c(2), c(1) >= c(3), where c(i) is the number of occurrences of the letter i.

The programs for A398472, there is no canonical definition to state claims against.
-/

/-! ## A398472.P1254196862761262694

`A395140(n)%A001223(A389530(2*n+5))`
-/

namespace A398472.P1254196862761262694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A395140 n) (A001223 (A389530 (2 * n + 5)).toNat)

end

end A398472.P1254196862761262694

/-! ## A398472.P11507404525562098157

`and(A220399(n), A282111(A361540(n)))`
-/

namespace A398472.P11507404525562098157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A220399 n) (A282111 (A361540 n).toNat)

end

end A398472.P11507404525562098157

/-! ## A398472.P933031046536253884

`A174203(A140894(n+2))`
-/

namespace A398472.P933031046536253884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174203 (A140894 (n + 2)).toNat

end

end A398472.P933031046536253884

/-!
# A398473: Maximum dropping time for numbers between 2^n and 2^(n+1)-1 under the Collatz map A014682.

The programs for A398473, there is no canonical definition to state claims against.
-/

/-! ## A398473.P3500930962538369929

`A126241(A398447(n+1))`
-/

namespace A398473.P3500930962538369929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126241 (A398447 (n + 1)).toNat

end

end A398473.P3500930962538369929

/-!
# A398475: Number of right-Euclidean relations on an n-element labeled set having no isolated nonreflexive elements.

The programs for A398475, there is no canonical definition to state claims against.
-/

/-! ## A398475.P3673097040047141747

`A220413(floor(exp(n)²))`
-/

namespace A398475.P3673097040047141747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220413 ⌊Real.exp (n : ℝ) ^ 2⌋.toNat

end

end A398475.P3673097040047141747

/-!
# A398477: Triangle read by rows: T(n, k + 1) = T(n, k) * (n + k) / (n * (k + 1)) for k <= n, starting at T(n, 0) = n^n, (row recurrence).

The programs for A398477, the canonical program `A398477.P18378234332377890742` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398477 has offset 0).

The definition of A398477 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398477.P18378234332377890742

`row(n)^(row(n)-col(n))*(row(n)+col(n))!/((col(n)+1)!*row(n)!)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398477

/-- `row(n)^(row(n)-col(n))*(row(n)+col(n))!/((col(n)+1)!*row(n)!)` -/
def P18378234332377890742.Spec : Prop :=
  ∀ n, P18378234332377890742.a n = (A398477 n : ℚ)

end A398477

/-!
# A398478: a(n) = Sum_{j=0..n} binomial(n + j, j) * n^(n - j) / (j + 1). Row sums of A398477.

The programs for A398478, the canonical program `A398478.P169749878298613149` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398478 has offset 0).

The definition of A398478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398478.P169749878298613149

`∑{#}[n, C(n+#, #)*n^(n-#)/(#+1)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398478

/-- `∑{#}[n, C(n+#, #)*n^(n-#)/(#+1)]` -/
def P169749878298613149.Spec : Prop :=
  ∀ n, P169749878298613149.a n = (A398478 n : ℚ)

end A398478

/-! ## A398478.P5850295454016004459

`A000108(n)+A293574(n)-A000312(n)`
-/

namespace A398478.P5850295454016004459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A293574 n - A000312 n)

end

end A398478.P5850295454016004459

namespace A398478

/-- `A000108(n)+A293574(n)-A000312(n)` -/
def P5850295454016004459.Spec : Prop :=
  ∀ n, P5850295454016004459.a n = A398478 n

end A398478

/-!
# A398479: a(n) = (2*n)^n * binomial(3*n, n) / (n + 1). Central terms of A398477.

The programs for A398479, the canonical program `A398479.P8587661814025841451` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398479 has offset 0).

The definition of A398479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398479.P8587661814025841451

`(2*n)^n*C(3*n, n)/(n+1)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398479

/-- `(2*n)^n*C(3*n, n)/(n+1)` -/
def P8587661814025841451.Spec : Prop :=
  ∀ n, P8587661814025841451.a n = (A398479 n : ℚ)

end A398479

/-! ## A398479.P9428552685730048905

`A398477(∑[4*n])`
-/

namespace A398479.P9428552685730048905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398477 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398479.P9428552685730048905

namespace A398479

/-- `A398477(∑[4*n])` -/
def P9428552685730048905.Spec : Prop :=
  ∀ n, P9428552685730048905.a n = A398479 n

end A398479

/-! ## A398479.P8296524140323944170

`A398373((n+1)²+n²)`
-/

namespace A398479.P8296524140323944170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398373 ((n + 1) ^ 2 + n ^ 2)

end

end A398479.P8296524140323944170

namespace A398479

/-- `A398373((n+1)²+n²)` -/
def P8296524140323944170.Spec : Prop :=
  ∀ n, P8296524140323944170.a n = A398479 n

end A398479

/-!
# A398482: Triangle read by rows: T(n, k) = n^k * (1 + n)^(n - k).

The programs for A398482, the canonical program `A398482.P3169545546200262174` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398482 has offset 0).

The definition of A398482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398482.P3169545546200262174

`row(n)^col(n)*(1+row(n))^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398482

/-- `row(n)^col(n)*(1+row(n))^(row(n)-col(n))` -/
def P3169545546200262174.Spec : Prop :=
  ∀ n, P3169545546200262174.a n = (A398482 n : ℚ)

end A398482

/-! ## A398482.P16507020174940561022

`A079901(n)*A095888(n+1)`
-/

namespace A398482.P16507020174940561022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 n * A095888 (n + 1)

end

end A398482.P16507020174940561022

namespace A398482

/-- `A079901(n)*A095888(n+1)` -/
def P16507020174940561022.Spec : Prop :=
  ∀ n, P16507020174940561022.a n = A398482 n

end A398482

/-! ## A398482.P8078901718060468584

`A055858(A352520(n+1))`
-/

namespace A398482.P8078901718060468584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055858 (A352520 (n + 1)).toNat

end

end A398482.P8078901718060468584

namespace A398482

/-- `A055858(A352520(n+1))` -/
def P8078901718060468584.Spec : Prop :=
  ∀ n, P8078901718060468584.a n = A398482 n

end A398482

/-!
# A398483: Triangle read by rows: T(n, k) = n^k * (n - 1)^(n - k).

The programs for A398483, the canonical program `A398483.P2015006628648364909` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398483 has offset 0).

The definition of A398483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398483.P2015006628648364909

`row(n)^col(n)*(row(n)-1)^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398483

/-- `row(n)^col(n)*(row(n)-1)^(row(n)-col(n))` -/
def P2015006628648364909.Spec : Prop :=
  ∀ n, P2015006628648364909.a n = (A398483 n : ℚ)

end A398483

/-!
# A398484: Triangle read by rows, a generalization of Ramanujan's Q function. T(n, k) = numerator(Q(n, k)), where Q(n, k) = Sum_{i=0..n-k} falling_factorial(n - k, i) / n^i.

The programs for A398484, there is no canonical definition to state claims against.
-/

/-! ## A398484.P15994278972456338646

`A398187(n)*A398485(n)/A364870(n)`
-/

namespace A398484.P15994278972456338646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398187 n * A398485 n : ℚ) / (A364870 n : ℚ)

end

end A398484.P15994278972456338646

/-! ## A398484.P1381129265633342931

`A398192(n)*A398485(n)/A398136(n)`
-/

namespace A398484.P1381129265633342931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398192 n * A398485 n : ℚ) / (A398136 n : ℚ)

end

end A398484.P1381129265633342931

/-!
# A398485: Triangle read by rows: T(n, k) = denominator(A398484(n, k)).

The programs for A398485, there is no canonical definition to state claims against.
-/

/-! ## A398485.P14983330822663309601

`A364870(n)*A398484(n)/A398187(n)`
-/

namespace A398485.P14983330822663309601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364870 n * A398484 n : ℚ) / (A398187 n : ℚ)

end

end A398485.P14983330822663309601

/-! ## A398485.P7669060086227777271

`A398136(n)*A398484(n)/A398192(n)`
-/

namespace A398485.P7669060086227777271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398136 n * A398484 n : ℚ) / (A398192 n : ℚ)

end

end A398485.P7669060086227777271

/-! ## A398485.P11289586416356638796

`A088861(A049429(n+3))`
-/

namespace A398485.P11289586416356638796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088861 (A049429 (n + 3)).toNat

end

end A398485.P11289586416356638796

/-!
# A398486: Numbers k such that cos(k) > cos(k+1) > cos(k+2) > cos(k+3) > cos(k+4).

The programs for A398486, there is no canonical definition to state claims against.
-/

/-! ## A398486.P8177085969048869893

`A123122(A398936(n+1))`
-/

namespace A398486.P8177085969048869893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123122 (A398936 (n + 1)).toNat

end

end A398486.P8177085969048869893

/-!
# A398487: Number of unsatisfiable 3-SAT formulas with 4 variables and n clauses in the multiset clause model.

The programs for A398487, there is no canonical definition to state claims against.
-/

/-! ## A398487.P13426173209648543789

`A396351(A000217(n+3)+4)`
-/

namespace A398487.P13426173209648543789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396351 (A000217 (n + 3) + 4).toNat

end

end A398487.P13426173209648543789

/-!
# A398488: Number of primes between the n-th odd semiprime and the following odd semiprime.

The programs for A398488, the canonical program `A398488.P6063951227161082576` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398488 has offset 1).

The definition of A398488 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046315, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A398488.P6063951227161082576

`A000720(A046315(n+2))-A000720(A046315(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A398488

/-- `A000720(A046315(n+2))-A000720(A046315(n+1))` -/
def P6063951227161082576.Spec : Prop :=
  ∀ n, P6063951227161082576.a n = A398488 (n + 1)

theorem P6063951227161082576.correct : P6063951227161082576.Spec := by
  intro n
  simp only [A398488, Nat.add_sub_cancel]

end A398488

/-! ## A398488.P15188369671716176170

`Δ[A000720(A046315(n+1))]`
-/

namespace A398488.P15188369671716176170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A046315 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A398488.P15188369671716176170

namespace A398488

/-- `Δ[A000720(A046315(n+1))]` -/
def P15188369671716176170.Spec : Prop :=
  ∀ n, P15188369671716176170.a n = A398488 (n + 1)

theorem P15188369671716176170.correct : P15188369671716176170.Spec := by
  intro n
  simp only [A398488, Nat.add_sub_cancel, A398488.P15188369671716176170.f1, A398488.P15188369671716176170.a, A398488.P6063951227161082576.a, SequenceMachineLib.memo_apply]

end A398488

/-!
# A398489: Irregular triangle read by rows: T(n, k) is the number of multisets of k positive integers that occur as the side lengths of a simple polygon inscribed in a circle of radius n, where 3 <= k <= A398490(n).

The programs for A398489, there is no canonical definition to state claims against.
-/

/-! ## A398489.P6469745205841526004

`A370884(A158732(n))`
-/

namespace A398489.P6469745205841526004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370884 (A158732 n).toNat

end

end A398489.P6469745205841526004

/-! ## A398489.P9591780996093631402

`A085604(A016934(n+1))`
-/

namespace A398489.P9591780996093631402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085604 (A016934 (n + 1)).toNat

end

end A398489.P9591780996093631402

/-! ## A398489.P14633751141054452661

`A136177((n+2)^4)`
-/

namespace A398489.P14633751141054452661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136177 ((n + 2) ^ 4)

end

end A398489.P14633751141054452661

/-! ## A398489.P15233788806117600213

`A096271(A110723(n))`
-/

namespace A398489.P15233788806117600213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 (A110723 n).toNat

end

end A398489.P15233788806117600213

/-! ## A398489.P8622401036971499416

`A081396(A221365(n))`
-/

namespace A398489.P8622401036971499416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081396 (A221365 n).toNat

end

end A398489.P8622401036971499416

/-!
# A398490: a(n) is the maximum number of sides of a simple polygon with positive integer side lengths inscribed in a circle of radius n.

The programs for A398490, there is no canonical definition to state claims against.
-/

/-! ## A398490.P16911278326604861927

`A362012(A007947(A062378(A147639(A062378(n+1)))))`
-/

namespace A398490.P16911278326604861927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362012 (A007947 (A062378 (A147639 (A062378 (n + 1)).toNat).toNat).toNat).toNat

end

end A398490.P16911278326604861927

/-!
# A398496: a(n) is the least k > 0 such that k*n is a factorial base Niven number.

The programs for A398496, there is no canonical definition to state claims against.
-/

/-! ## A398496.P8305586420544853127

`A398431(n+1)/(n+1)`
-/

namespace A398496.P8305586420544853127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398431 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A398496.P8305586420544853127

/-!
# A398499: Leading terms (negated) of rows of triangle A398498.

The programs for A398499, there is no canonical definition to state claims against.
-/

/-! ## A398499.P3007350683308925764

`A379068(n)-1`
-/

namespace A398499.P3007350683308925764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379068 n - 1

end

end A398499.P3007350683308925764

/-! ## A398499.P1879906091104659276

`A398501(n)-A379067(n)`
-/

namespace A398499.P1879906091104659276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398501 n - A379067 n

end

end A398499.P1879906091104659276

/-! ## A398499.P13271294484194529478

`A083800(n+1)%A379068(n)`
-/

namespace A398499.P13271294484194529478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A379068 n)

end

end A398499.P13271294484194529478

/-! ## A398499.P5548207350165378518

`A070198(n)%A379068(n)`
-/

namespace A398499.P5548207350165378518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A379068 n)

end

end A398499.P5548207350165378518

/-! ## A398499.P17639771893843404429

`A079782(n+1)%A379068(n)`
-/

namespace A398499.P17639771893843404429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A379068 n)

end

end A398499.P17639771893843404429

/-! ## A398499.P6692155539444254778

`A083685(n+1)%A379068(n)`
-/

namespace A398499.P6692155539444254778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A379068 n)

end

end A398499.P6692155539444254778

/-! ## A398499.P18280923752400868077

`A121934(n+1)%A379068(n)`
-/

namespace A398499.P18280923752400868077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A379068 n)

end

end A398499.P18280923752400868077

/-! ## A398499.P10608705959492865777

`A072828(n+1)%A379068(n)`
-/

namespace A398499.P10608705959492865777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A379068 n)

end

end A398499.P10608705959492865777

