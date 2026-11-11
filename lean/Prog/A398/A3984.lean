import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A398402: Smallest prime that is the sum of n distinct elements from the union of primes and cubes.

The programs for A398402, there is no canonical definition to state claims against.
-/

/-! ## A398402.P311627818635065511

`or(A274710(A399803(n+1)), A399803(n+1))`
-/

namespace A398402.P311627818635065511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A274710 (A399803 (n + 1)).toNat) (A399803 (n + 1))

end

end A398402.P311627818635065511

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
# A398405: Number of maximal chains in the subgroup lattice of S_n.

The programs for A398405, there is no canonical definition to state claims against.
-/

/-! ## A398405.P7594118176948306494

`A013919(A125273(n)²)`
-/

namespace A398405.P7594118176948306494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013919 (A125273 n ^ 2).toNat

end

end A398405.P7594118176948306494

/-!
# A398415: Numbers k such that A396781(k) = A397879(k).

The programs for A398415, there is no canonical definition to state claims against.
-/

/-! ## A398415.P14562513695943977462

`eq[A031435(n+1), A395152(n+2)]+2`
-/

namespace A398415.P14562513695943977462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395152 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A398415.P14562513695943977462

/-!
# A398421: Odd numbers of the form p^2*q, where p and q are distinct odd primes.

The programs for A398421, the canonical program `A398421.P3891246051767450638` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398421 has offset 1).

The definition of A398421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2955 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398421.P3891246051767450638

`∩[A053850(n+1), A054753(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
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

/-! ## A398421.P11964575639498475449

`filter[A030515(1+n), A358773(#)]`
-/

namespace A398421.P11964575639498475449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A398421.P11964575639498475449

namespace A398421

/-- `filter[A030515(1+n), A358773(#)]` -/
def P11964575639498475449.Spec : Prop :=
  ∀ n, P11964575639498475449.a n = A398421 (n + 1)

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

/-! ## A398422.P8498160539897640494

`∩[A055471(1+n), A342855(n+1)]`
-/

namespace A398422.P8498160539897640494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398422.P8498160539897640494

/-! ## A398422.P17015632143614831249

`∩[A055471(1+n), A330562(n+1)]`
-/

namespace A398422.P17015632143614831249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398422.P17015632143614831249

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
# A398425: Number of regular (rotationally asymmetric) orbits of chord diagrams on 2n vertices under the action of the cyclic group C_(2n).

The programs for A398425, there is no canonical definition to state claims against.
-/

/-! ## A398425.P7259392474262835574

`A091372((A000108(n)+1)²)`
-/

namespace A398425.P7259392474262835574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091372 ((A000108 n + 1) ^ 2).toNat

end

end A398425.P7259392474262835574

/-! ## A398425.P45018688066866205

`A053392(A000217(a(n-1)+n²))` with `a(0)=0`
-/

namespace A398425.P45018688066866205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A053392 (A000217 (a (n - 1) + (n ^ 2 : ℤ)).toNat).toNat

end

end A398425.P45018688066866205

/-!
# A398428: Number of P-partitions of n where P is the labeled poset defined by a covers b if f(a) > f(b) where f(i) = floor(sqrt(2*i) + 1/2).

The programs for A398428, there is no canonical definition to state claims against.
-/

/-! ## A398428.P11466887266798888379

`A371170(A000032(n))-A263142(n)`
-/

namespace A398428.P11466887266798888379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371170 (A000032 n).toNat - A263142 n

end

end A398428.P11466887266798888379

/-! ## A398428.P18145897853667618139

`A003056(A085829(n+1))-A007053(n)`
-/

namespace A398428.P18145897853667618139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A085829 (n + 1)).toNat - A007053 n

end

end A398428.P18145897853667618139

/-! ## A398428.P17810388941830404517

`A382864(n)+A338236(A001519(n+2))`
-/

namespace A398428.P17810388941830404517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382864 n + A338236 (A001519 (n + 2)).toNat

end

end A398428.P17810388941830404517

/-! ## A398428.P18201547427276985494

`A261081(n+3)-A111894(A250120(2*(n+1)))`
-/

namespace A398428.P18201547427276985494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261081 (n + 3) - A111894 (A250120 (2 * (n + 1))).toNat

end

end A398428.P18201547427276985494

/-! ## A398428.P14546866976375748379

`A000196(A000045(2*n+3))-A189572(n+4)`
-/

namespace A398428.P14546866976375748379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000045 (2 * n + 3)).toNat - A189572 (n + 4)

end

end A398428.P14546866976375748379

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

/-! ## A398431.P9062570807737079391

`(1+n)*A398496(n+1)`
-/

namespace A398431.P9062570807737079391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A398496 (n + 1)

end

end A398431.P9062570807737079391

/-! ## A398431.P5918544827236540695

`(n+1)*A174713(A061395(n+1)*A326129(n+1))`
-/

namespace A398431.P5918544827236540695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A174713 (A061395 (n + 1) * A326129 (n + 1)).toNat

end

end A398431.P5918544827236540695

/-! ## A398431.P13406114026688095125

`(n+1)*A353850(A243056(n+1)%A331686(n+1))`
-/

namespace A398431.P13406114026688095125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A353850 (Int.tmod (A243056 (n + 1)) (A331686 (n + 1))).toNat

end

end A398431.P13406114026688095125

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

/-! ## A398434.P13634759616586646568

`A399469(n+1)+A374093(A035626(n+1))`
-/

namespace A398434.P13634759616586646568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399469 (n + 1) + A374093 (A035626 (n + 1)).toNat

end

end A398434.P13634759616586646568

/-! ## A398434.P10978615708417197739

`A397433(A348717(n+1)%A340604(2*n+5))`
-/

namespace A398434.P10978615708417197739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397433 (Int.tmod (A348717 (n + 1)) (A340604 (2 * n + 5))).toNat

end

end A398434.P10978615708417197739

/-! ## A398434.P8406247751233021937

`A374093(A035626(n+1))+A083399(A328023(n+1))`
-/

namespace A398434.P8406247751233021937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374093 (A035626 (n + 1)).toNat + A083399 (A328023 (n + 1)).toNat

end

end A398434.P8406247751233021937

/-! ## A398434.P1289010951995475038

`A083399(A328023(n+1))-A088663(A398435(n+1))`
-/

namespace A398434.P1289010951995475038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (A328023 (n + 1)).toNat - A088663 (A398435 (n + 1)).toNat

end

end A398434.P1289010951995475038

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

/-! ## A398435.P15008335428866442215

`A005811(A174903(n+1)^A033677(n+1))`
-/

namespace A398435.P15008335428866442215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.roundAway ((A174903 (n + 1) : ℚ) ^ (A033677 (n + 1) : ℤ))).toNat

end

end A398435.P15008335428866442215

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

/-! ## A398440.P8511082660305220000

`A398438(C(n+n+1, 2)+n)`
-/

namespace A398440.P8511082660305220000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398438 (Nat.choose (n + n + 1) 2 + n)

end

end A398440.P8511082660305220000

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

/-! ## A398442.P7473763180708318726

`filter[A398375(1+n), A359471(#)]`
-/

namespace A398442.P7473763180708318726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398375 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A398442.P7473763180708318726

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

/-! ## A398442.P16170547369468287909

`filter[A398375(1+n), A359475(#)]`
-/

namespace A398442.P16170547369468287909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398375 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A398442.P16170547369468287909

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
# A398443: Numbers k of the form lpf(k)^4 * rad(k), where rad = A007947, and lpf is the least prime factor.

The programs for A398443, the canonical program `A398443.P13878999578892579835` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398443 has offset 1).

The definition of A398443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 505 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398443.P13878999578892579835

`∩[A195088(n+1), A400433(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A398443

/-- `∩[A195088(n+1), A400433(n+1)]` -/
def P13878999578892579835.Spec : Prop :=
  ∀ n, (P13878999578892579835.a n : ℤ) = A398443 (n + 1)

theorem P13878999578892579835.correct : P13878999578892579835.Spec := by
  intro n
  simp only [A398443, Nat.add_sub_cancel]

end A398443

/-! ## A398443.P9785835578623579732

`∩[A362841(n+1), A400433(n+1)]`
-/

namespace A398443.P9785835578623579732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398443.P9785835578623579732

namespace A398443

/-- `∩[A362841(n+1), A400433(n+1)]` -/
def P9785835578623579732.Spec : Prop :=
  ∀ n, (P9785835578623579732.a n : ℤ) = A398443 (n + 1)

end A398443

/-! ## A398443.P14200946176974800058

`∩[A386808(n+1), A400433(n+1)]`
-/

namespace A398443.P14200946176974800058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398443.P14200946176974800058

namespace A398443

/-- `∩[A386808(n+1), A400433(n+1)]` -/
def P14200946176974800058.Spec : Prop :=
  ∀ n, (P14200946176974800058.a n : ℤ) = A398443 (n + 1)

end A398443

/-! ## A398443.P11834955975725992295

`A386808(lt[A000931(n), A077268(n+1)])`
-/

namespace A398443.P11834955975725992295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386808 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A398443.P11834955975725992295

namespace A398443

/-- `A386808(lt[A000931(n), A077268(n+1)])` -/
def P11834955975725992295.Spec : Prop :=
  ∀ n, P11834955975725992295.a n = A398443 (n + 1)

end A398443

/-! ## A398443.P2158000258576992918

`A386808(A000961(n+1))%A122812(A007373(n+1))`
-/

namespace A398443.P2158000258576992918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A386808 (A000961 (n + 1)).toNat) (A122812 (A007373 (n + 1)).toNat)

end

end A398443.P2158000258576992918

namespace A398443

/-- `A386808(A000961(n+1))%A122812(A007373(n+1))` -/
def P2158000258576992918.Spec : Prop :=
  ∀ n, P2158000258576992918.a n = A398443 (n + 1)

end A398443

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

/-! ## A398444.P6159058832496948819

`A375144(A051037(n+1)-(A065238(3*n)+1)%2)`
-/

namespace A398444.P6159058832496948819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375144 (A051037 (n + 1) - Int.tmod (A065238 (3 * n) + 1) 2).toNat

end

end A398444.P6159058832496948819

/-!
# A398446: Number of permutations of [n] avoiding the pattern 1324 with the maximum element n in position n-2.

The programs for A398446, the canonical program `A398446.P5433720991172560056` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398446 has offset 3).

The definition of A398446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398446.P5433720991172560056

`((n+3)*C(2*(n+3)-6, n)+4^n)/2`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398446

/-- `((n+3)*C(2*(n+3)-6, n)+4^n)/2` -/
def P5433720991172560056.Spec : Prop :=
  ∀ n, P5433720991172560056.a n = (A398446 (n + 3) : ℚ)

end A398446

/-! ## A398446.P9485256340405762102

`A395725(C(n+3, 2)+n+1)`
-/

namespace A398446.P9485256340405762102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395725 (Nat.choose (n + 3) 2 + (n + 1))

end

end A398446.P9485256340405762102

namespace A398446

/-- `A395725(C(n+3, 2)+n+1)` -/
def P9485256340405762102.Spec : Prop :=
  ∀ n, P9485256340405762102.a n = A398446 (n + 3)

end A398446

/-! ## A398446.P4511010798624253588

`A116078(n)+4^n`
-/

namespace A398446.P4511010798624253588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116078 n + (4 ^ n : ℤ)

end

end A398446.P4511010798624253588

namespace A398446

/-- `A116078(n)+4^n` -/
def P4511010798624253588.Spec : Prop :=
  ∀ n, P4511010798624253588.a n = A398446 (n + 3)

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

/-! ## A398446.P5022335345760160325

`4^n+A139262(n)+A000984(n)`
-/

namespace A398446.P5022335345760160325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) + (A139262 n + A000984 n)

end

end A398446.P5022335345760160325

namespace A398446

/-- `4^n+A139262(n)+A000984(n)` -/
def P5022335345760160325.Spec : Prop :=
  ∀ n, P5022335345760160325.a n = A398446 (n + 3)

end A398446

/-! ## A398446.P17388843366989347243

`A050168(A005408(n))+A110609(n)-A139262(n)`
-/

namespace A398446.P17388843366989347243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 (A005408 n).toNat + (A110609 n - A139262 n)

end

end A398446.P17388843366989347243

namespace A398446

/-- `A050168(A005408(n))+A110609(n)-A139262(n)` -/
def P17388843366989347243.Spec : Prop :=
  ∀ n, P17388843366989347243.a n = A398446 (n + 3)

end A398446

/-!
# A398447: Least odd integer between 2^n and 2^(n+1)-1 with maximum dropping time under the Collatz map A014682.

The programs for A398447, there is no canonical definition to state claims against.
-/

/-! ## A398447.P4341004667893113838

`or(A080173(A344614(n)), A288170(n))`
-/

namespace A398447.P4341004667893113838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080173 (A344614 n).toNat) (A288170 n)

end

end A398447.P4341004667893113838

/-! ## A398447.P5190489636582786257

`A205394(A000225(n+1)*A160746(n+1))`
-/

namespace A398447.P5190489636582786257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205394 (A000225 (n + 1) * A160746 (n + 1)).toNat

end

end A398447.P5190489636582786257

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

/-! ## A398451.P6278235233699134682

`A398183(A398452(1+n))`
-/

namespace A398451.P6278235233699134682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398183 (A398452 (1 + n)).toNat

end

end A398451.P6278235233699134682

/-! ## A398451.P13845625946850381462

`A007310(A003037(n+1))%A242810(n+1)`
-/

namespace A398451.P13845625946850381462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007310 (A003037 (n + 1)).toNat) (A242810 (n + 1))

end

end A398451.P13845625946850381462

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

The programs for A398463, the canonical program `A398463.P753977206100688951` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398463 has offset 1).

The definition of A398463 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398463.P753977206100688951

`A360969(n+1)*(n+1)`

The canonical program, it is in `Seq.B006.C002`.
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

/-! ## A398463.P11085626929049325459

`(1+n)*∏{e}[1+n, #]²`
-/

namespace A398463.P11085626929049325459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + n) * (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ 2

end

end A398463.P11085626929049325459

namespace A398463

/-- `(1+n)*∏{e}[1+n, #]²` -/
def P11085626929049325459.Spec : Prop :=
  ∀ n, (P11085626929049325459.a n : ℤ) = A398463 (n + 1)

end A398463

/-! ## A398463.P6879114583965358870

`∏{e}[1+n, #]^2*(n+1)`
-/

namespace A398463.P6879114583965358870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ 2 * (n + 1)

end

end A398463.P6879114583965358870

namespace A398463

/-- `∏{e}[1+n, #]^2*(n+1)` -/
def P6879114583965358870.Spec : Prop :=
  ∀ n, (P6879114583965358870.a n : ℤ) = A398463 (n + 1)

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
  simp only [A398463, Nat.add_sub_cancel, A398463.P490790936545511107.a, A398463.P753977206100688951.a, A005361, A005361.P7238185687981551187.a, A360969, A360969.P9537499425783326170.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

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
# A398465: Number of reducible flow graphs on n labeled nodes with entry node 1: digraphs in which every node is reachable from node 1 and every cycle has a unique entry node (Hecht-Ullman reducibility).

The programs for A398465, there is no canonical definition to state claims against.
-/

/-! ## A398465.P14268143652565311158

`2^n*A394955(n+1)`
-/

namespace A398465.P14268143652565311158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A394955 (n + 1)

end

end A398465.P14268143652565311158

/-!
# A398469: Lexicographically earliest sequence such that, for any k, the indices at which k occurs form a geometric progression of length 3 or greater, which continues as long as the next index remains an integer and isn't already claimed by a previously established progression.

The programs for A398469, there is no canonical definition to state claims against.
-/

/-! ## A398469.P17939246941429416486

`A003602(n+1)-A051344(A289651(2*n+1))`
-/

namespace A398469.P17939246941429416486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) - A051344 (A289651 (2 * n + 1)).toNat

end

end A398469.P17939246941429416486

/-! ## A398469.P10070152656993091253

`A336460(n+1)-A373976(A161618(3*(n+1)))`
-/

namespace A398469.P10070152656993091253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336460 (n + 1) - A373976 (A161618 (3 * (n + 1))).toNat

end

end A398469.P10070152656993091253

/-! ## A398469.P7863262201654955818

`A336936(n+1)-A373976(A161618(3*(n+1)))`
-/

namespace A398469.P7863262201654955818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336936 (n + 1) - A373976 (A161618 (3 * (n + 1))).toNat

end

end A398469.P7863262201654955818

/-! ## A398469.P15986859187154673827

`A291766(A025480(n))-A373976(A161618(3*(n+1)))`
-/

namespace A398469.P15986859187154673827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291766 (A025480 n).toNat - A373976 (A161618 (3 * (n + 1))).toNat

end

end A398469.P15986859187154673827

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

/-! ## A398470.P11958765552636197057

`A397600(∑[n+3]+1)`
-/

namespace A398470.P11958765552636197057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397600 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A398470.P11958765552636197057

namespace A398470

/-- `A397600(∑[n+3]+1)` -/
def P11958765552636197057.Spec : Prop :=
  ∀ n, P11958765552636197057.a n = A398470 (n + 1)

end A398470

/-!
# A398471: Minimum total search cost of an optimal binary search tree over n keys in sorted order, where key i has access frequency i.

The programs for A398471, the canonical program `A398471.P17801441405953118035` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398471 has offset 1).

The definition of A398471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1507 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398471.P17801441405953118035

`∑[∑[A157893(1+n)]]`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A398471

/-- `∑[∑[A157893(1+n)]]` -/
def P17801441405953118035.Spec : Prop :=
  ∀ n, P17801441405953118035.a n = A398471 (n + 1)

theorem P17801441405953118035.correct : P17801441405953118035.Spec := by
  intro n
  simp only [A398471, Nat.add_sub_cancel]

end A398471

/-! ## A398471.P1692072752279235839

`∑[∑[val(A082662(n+1), 2)+1]]`
-/

namespace A398471.P1692072752279235839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A082662 (n + 1)).toNat 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398471.P1692072752279235839

namespace A398471

/-- `∑[∑[val(A082662(n+1), 2)+1]]` -/
def P1692072752279235839.Spec : Prop :=
  ∀ n, (P1692072752279235839.a n : ℤ) = A398471 (n + 1)

end A398471

/-! ## A398471.P11390970262056083002

`∑[∑[A001511(A082662(1+n))]]`
-/

namespace A398471.P11390970262056083002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A082662 (1 + n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398471.P11390970262056083002

namespace A398471

/-- `∑[∑[A001511(A082662(1+n))]]` -/
def P11390970262056083002.Spec : Prop :=
  ∀ n, P11390970262056083002.a n = A398471 (n + 1)

end A398471

/-! ## A398471.P3371962607506749814

`∑[∑[A374706(A116882(n+2))]]`
-/

namespace A398471.P3371962607506749814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374706 (A116882 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398471.P3371962607506749814

namespace A398471

/-- `∑[∑[A374706(A116882(n+2))]]` -/
def P3371962607506749814.Spec : Prop :=
  ∀ n, P3371962607506749814.a n = A398471 (n + 1)

end A398471

/-! ## A398471.P5843632038894360465

`∑[∑[A124736(A001359(n+1))]]`
-/

namespace A398471.P5843632038894360465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124736 (A001359 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398471.P5843632038894360465

namespace A398471

/-- `∑[∑[A124736(A001359(n+1))]]` -/
def P5843632038894360465.Spec : Prop :=
  ∀ n, P5843632038894360465.a n = A398471 (n + 1)

end A398471

/-!
# A398472: Triangle read by rows: T(n,k) is the number of ternary words of length n with c(1) = k such that all prefixes satisfy c(1) >= c(2), c(1) >= c(3), where c(i) is the number of occurrences of the letter i.

The programs for A398472, there is no canonical definition to state claims against.
-/

/-! ## A398472.P8765154076644134299

`C(A395140(n), A346199(A383385(n+1)))`
-/

namespace A398472.P8765154076644134299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A395140 n).toNat (A346199 (A383385 (n + 1)).toNat).toNat

end

end A398472.P8765154076644134299

/-! ## A398472.P514130421397817346

`C(A395140(n), A346199(A383386(n+1)))`
-/

namespace A398472.P514130421397817346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A395140 n).toNat (A346199 (A383386 (n + 1)).toNat).toNat

end

end A398472.P514130421397817346

/-! ## A398472.P1254196862761262694

`A395140(n)%A001223(A389530(2*n+5))`
-/

namespace A398472.P1254196862761262694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A395140 n) (A001223 (A389530 (2 * n + 5)).toNat)

end

end A398472.P1254196862761262694

/-! ## A398472.P954339350052066945

`C(A397362(n), A288972(A135880(n)))`
-/

namespace A398472.P954339350052066945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A397362 n).toNat (A288972 (A135880 n).toNat).toNat

end

end A398472.P954339350052066945

/-! ## A398472.P14827527943729491091

`C(A395140(n), A215086(A387336(n)))`
-/

namespace A398472.P14827527943729491091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A395140 n).toNat (A215086 (A387336 n).toNat).toNat

end

end A398472.P14827527943729491091

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

/-! ## A398475.P3985655009513821700

`A379342(ceil(2^(n-1)*n!))-A000392(n)`
-/

namespace A398475.P3985655009513821700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379342 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.factorial n : ℚ)⌉.toNat - A000392 n

end

end A398475.P3985655009513821700

/-! ## A398475.P11554944364756252006

`A379342(round(2^(n-1)*n!))-A000392(n)`
-/

namespace A398475.P11554944364756252006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379342 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.factorial n : ℚ))).toNat - A000392 n

end

end A398475.P11554944364756252006

/-!
# A398477: Triangle read by rows: T(n, k + 1) = T(n, k) * (n + k) / (n * (k + 1)) for k <= n, starting at T(n, 0) = n^n, (row recurrence).

The programs for A398477, the canonical program `A398477.P18378234332377890742` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398477 has offset 0).

The definition of A398477 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398477.P18378234332377890742

`row(n)^(row(n)-col(n))*(row(n)+col(n))!/((col(n)+1)!*row(n)!)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398477

/-- `row(n)^(row(n)-col(n))*(row(n)+col(n))!/((col(n)+1)!*row(n)!)` -/
def P18378234332377890742.Spec : Prop :=
  ∀ n, P18378234332377890742.a n = (A398477 n : ℚ)

end A398477

/-!
# A398478: a(n) = Sum_{j=0..n} binomial(n + j, j) * n^(n - j) / (j + 1). Row sums of A398477.

The programs for A398478, the canonical program `A398478.P169749878298613149` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398478 has offset 0).

The definition of A398478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398478.P169749878298613149

`∑{#}[n, C(n+#, #)*n^(n-#)/(#+1)]`

The canonical program, it is in `Seq.B000.C051`.
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

The programs for A398479, the canonical program `A398479.P8587661814025841451` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398479 has offset 0).

The definition of A398479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398479.P8587661814025841451

`(2*n)^n*C(3*n, n)/(n+1)`

The canonical program, it is in `Seq.B000.C051`.
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

The programs for A398482, the canonical program `A398482.P3169545546200262174` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398482 has offset 0).

The definition of A398482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398482.P3169545546200262174

`row(n)^col(n)*(1+row(n))^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398482

/-- `row(n)^col(n)*(1+row(n))^(row(n)-col(n))` -/
def P3169545546200262174.Spec : Prop :=
  ∀ n, P3169545546200262174.a n = (A398482 n : ℚ)

end A398482

/-! ## A398482.P12900352616557000911

`A055858(Δ[col(n)]+n)`
-/

namespace A398482.P12900352616557000911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055858 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat

end

end A398482.P12900352616557000911

namespace A398482

/-- `A055858(Δ[col(n)]+n)` -/
def P12900352616557000911.Spec : Prop :=
  ∀ n, P12900352616557000911.a n = A398482 n

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

/-! ## A398482.P16391273697997158593

`A061356(n+2)*A066099(A265073(2*n+1))`
-/

namespace A398482.P16391273697997158593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061356 (n + 2) * A066099 (A265073 (2 * n + 1)).toNat

end

end A398482.P16391273697997158593

namespace A398482

/-- `A061356(n+2)*A066099(A265073(2*n+1))` -/
def P16391273697997158593.Spec : Prop :=
  ∀ n, P16391273697997158593.a n = A398482 n

end A398482

/-!
# A398483: Triangle read by rows: T(n, k) = n^k * (n - 1)^(n - k).

The programs for A398483, the canonical program `A398483.P2015006628648364909` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398483 has offset 0).

The definition of A398483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398483.P2015006628648364909

`row(n)^col(n)*(row(n)-1)^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C051`.
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

/-! ## A398485.P193858165634938053

`A192176(A104557(n)*A175740(n))`
-/

namespace A398485.P193858165634938053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192176 (A104557 n * A175740 n).toNat

end

end A398485.P193858165634938053

/-!
# A398486: Numbers k such that cos(k) > cos(k+1) > cos(k+2) > cos(k+3) > cos(k+4).

The programs for A398486, the canonical program `A398486.P15435245625190870226` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398486 has offset 1).

The definition of A398486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398486.P9884213229273284408

`A123122(A398936(1+n))`
-/

namespace A398486.P9884213229273284408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123122 (A398936 (1 + n)).toNat

end

end A398486.P9884213229273284408

namespace A398486

/-- `A123122(A398936(1+n))` -/
def P9884213229273284408.Spec : Prop :=
  ∀ n, P9884213229273284408.a n = A398486 (n + 1)

end A398486

/-! ## A398486.P15435245625190870226

`∩[A023445(A026311(n+1)), A026311(n+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A398486

/-- `∩[A023445(A026311(n+1)), A026311(n+1)]` -/
def P15435245625190870226.Spec : Prop :=
  ∀ n, (P15435245625190870226.a n : ℤ) = A398486 (n + 1)

theorem P15435245625190870226.correct : P15435245625190870226.Spec := by
  intro n
  simp only [A398486, Nat.add_sub_cancel]

end A398486

/-! ## A398486.P13840981051868058664

`A398936(n+1)+A000533(A287022(n))`
-/

namespace A398486.P13840981051868058664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398936 (n + 1) + A000533 (A287022 n).toNat

end

end A398486.P13840981051868058664

namespace A398486

/-- `A398936(n+1)+A000533(A287022(n))` -/
def P13840981051868058664.Spec : Prop :=
  ∀ n, P13840981051868058664.a n = A398486 (n + 1)

end A398486

/-!
# A398487: Number of unsatisfiable 3-SAT formulas with 4 variables and n clauses in the multiset clause model.

The programs for A398487, there is no canonical definition to state claims against.
-/

/-! ## A398487.P1411061067164737500

`A396351(C(n+5, 2)-n)`
-/

namespace A398487.P1411061067164737500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396351 (Nat.choose (n + 5) 2 - n)

end

end A398487.P1411061067164737500

/-! ## A398487.P6964811343609856829

`A396351(A141214(n)+7)`
-/

namespace A398487.P6964811343609856829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396351 (A141214 n + 7).toNat

end

end A398487.P6964811343609856829

/-! ## A398487.P1451366663848387846

`A396351(A055999(n)+10)`
-/

namespace A398487.P1451366663848387846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396351 (A055999 n + 10).toNat

end

end A398487.P1451366663848387846

/-!
# A398488: Number of primes between the n-th odd semiprime and the following odd semiprime.

The programs for A398488, the canonical program `A398488.P6063951227161082576` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398488 has offset 1).

The definition of A398488 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046315, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A398488.P6063951227161082576

`A000720(A046315(n+2))-A000720(A046315(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A398488

/-- `A000720(A046315(n+2))-A000720(A046315(n+1))` -/
def P6063951227161082576.Spec : Prop :=
  ∀ n, P6063951227161082576.a n = A398488 (n + 1)

theorem P6063951227161082576.correct : P6063951227161082576.Spec := by
  intro n
  simp only [A398488, Nat.add_sub_cancel]

end A398488

/-! ## A398488.P13122772672250439760

`Δ[A000720(A046315(1+n))]`
-/

namespace A398488.P13122772672250439760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A046315 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A398488.P13122772672250439760

namespace A398488

/-- `Δ[A000720(A046315(1+n))]` -/
def P13122772672250439760.Spec : Prop :=
  ∀ n, P13122772672250439760.a n = A398488 (n + 1)

theorem P13122772672250439760.correct : P13122772672250439760.Spec := by
  intro n
  simp only [A398488, Nat.add_sub_cancel, A398488.P13122772672250439760.f1, A398488.P13122772672250439760.a, A398488.P6063951227161082576.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A398488

/-! ## A398488.P3544236458014704826

`Δ[A000720(A282844(n+1)-A100484(n+1))]`
-/

namespace A398488.P3544236458014704826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A282844 (n + 1) - A100484 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A398488.P3544236458014704826

namespace A398488

/-- `Δ[A000720(A282844(n+1)-A100484(n+1))]` -/
def P3544236458014704826.Spec : Prop :=
  ∀ n, P3544236458014704826.a n = A398488 (n + 1)

theorem P3544236458014704826.correct : P3544236458014704826.Spec := by
  intro n
  simp only [A398488, Nat.add_sub_cancel, A398488.P3544236458014704826.f1, A398488.P3544236458014704826.a, A398488.P6063951227161082576.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A046315, A046315.P4459434404324554998.a, A100484, A100484.P9678625670825099636.a, A282844, A282844.P8395875720531729438.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A289182, A289182.P3375707365268307220.f1, A289182.P3375707365268307220.f2, A289182.P3375707365268307220.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A398488

/-! ## A398488.P11408750296052730815

`Δ[A000720(A282844(n+1)-A001747(n+2))]`
-/

namespace A398488.P11408750296052730815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A282844 (n + 1) - A001747 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A398488.P11408750296052730815

namespace A398488

/-- `Δ[A000720(A282844(n+1)-A001747(n+2))]` -/
def P11408750296052730815.Spec : Prop :=
  ∀ n, P11408750296052730815.a n = A398488 (n + 1)

end A398488

/-! ## A398488.P335945434276448405

`Δ[A000720(eq[1, A353480(n+1)]+1)]`
-/

namespace A398488.P335945434276448405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A398488.P335945434276448405

namespace A398488

/-- `Δ[A000720(eq[1, A353480(n+1)]+1)]` -/
def P335945434276448405.Spec : Prop :=
  ∀ n, P335945434276448405.a n = A398488 (n + 1)

end A398488

/-! ## A398488.P4707334615910202662

`Δ[A230980(A046315(n+1))]`
-/

namespace A398488.P4707334615910202662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A046315 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A398488.P4707334615910202662

namespace A398488

/-- `Δ[A230980(A046315(n+1))]` -/
def P4707334615910202662.Spec : Prop :=
  ∀ n, P4707334615910202662.a n = A398488 (n + 1)

end A398488

/-! ## A398488.P230084109278058532

`Δ[A036234(A046315(1+n)+1)]`
-/

namespace A398488.P230084109278058532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A046315 (1 + n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A398488.P230084109278058532

namespace A398488

/-- `Δ[A036234(A046315(1+n)+1)]` -/
def P230084109278058532.Spec : Prop :=
  ∀ n, P230084109278058532.a n = A398488 (n + 1)

end A398488

/-!
# A398489: Irregular triangle read by rows: T(n, k) is the number of multisets of k positive integers that occur as the side lengths of a simple polygon inscribed in a circle of radius n, where 3 <= k <= A398490(n).

The programs for A398489, there is no canonical definition to state claims against.
-/

/-! ## A398489.P3254464753346966181

`floor(A001877(A001359(n+4)*(n+1)-2)/2)`
-/

namespace A398489.P3254464753346966181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001877 (A001359 (n + 4) * (n + 1 : ℤ) - 2).toNat : ℚ) / 2⌋

end

end A398489.P3254464753346966181

/-! ## A398489.P3756163244098660770

`A193238(A174898(3*n+1)*A178099(n+1))`
-/

namespace A398489.P3756163244098660770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A174898 (3 * n + 1) * A178099 (n + 1)).toNat

end

end A398489.P3756163244098660770

/-! ## A398489.P15140310727387898770

`A051635(A374819(n))%A060775(n+5)`
-/

namespace A398489.P15140310727387898770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051635 (A374819 n).toNat) (A060775 (n + 5))

end

end A398489.P15140310727387898770

/-! ## A398489.P17122402988338748593

`A241916(A178099(n+1))%A376305(n+5)`
-/

namespace A398489.P17122402988338748593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241916 (A178099 (n + 1)).toNat) (A376305 (n + 5))

end

end A398489.P17122402988338748593

/-! ## A398489.P18300455545389703354

`val(∑[A327918(n+1)], 2)`
-/

namespace A398489.P18300455545389703354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327918 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A398489.P18300455545389703354

/-!
# A398490: a(n) is the maximum number of sides of a simple polygon with positive integer side lengths inscribed in a circle of radius n.

The programs for A398490, there is no canonical definition to state claims against.
-/

/-! ## A398490.P2813075705210623467

`A372587(gcd(A284432(n+1), A372604(n+1)))`
-/

namespace A398490.P2813075705210623467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372587 (Int.gcd (A284432 (n + 1)) (A372604 (n + 1)))

end

end A398490.P2813075705210623467

/-! ## A398490.P11184980094290245152

`A002808(A365487(n+1)+1)%A295507(n+1)`
-/

namespace A398490.P11184980094290245152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (A365487 (n + 1) + 1).toNat) (A295507 (n + 1))

end

end A398490.P11184980094290245152

/-! ## A398490.P4543557518351929152

`A006881(gcd(A304327(n+1), A320893(n+1)))`
-/

namespace A398490.P4543557518351929152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (Int.gcd (A304327 (n + 1)) (A320893 (n + 1)))

end

end A398490.P4543557518351929152

/-! ## A398490.P14159161736737144665

`2*A258642(∏{e}[n+1, #!])`
-/

namespace A398490.P14159161736737144665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A258642 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p))

end

end A398490.P14159161736737144665

/-! ## A398490.P8333810747755721759

`A002247(A072911(n+1)^2)`
-/

namespace A398490.P8333810747755721759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002247 (A072911 (n + 1) ^ 2).toNat

end

end A398490.P8333810747755721759

/-!
# A398492: Run length transform of A398297.

The programs for A398492, there is no canonical definition to state claims against.
-/

/-! ## A398492.P12989874689816639358

`runs[A398297(n+1)]`
-/

namespace A398492.P12989874689816639358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398297 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A398492.P12989874689816639358

/-!
# A398493: Number of increasing 3-term arithmetic progressions in an n^5 hypercube.

The programs for A398493, there is no canonical definition to state claims against.
-/

/-! ## A398493.P6055477390438775400

`A397600(A034856(n+4)-2)`
-/

namespace A398493.P6055477390438775400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397600 (A034856 (n + 4) - 2).toNat

end

end A398493.P6055477390438775400

/-!
# A398495: Numbers k such that 2*PrimePi(k) = Sum_{d|k} PrimePi(d), where PrimePi = A000720.

The programs for A398495, there is no canonical definition to state claims against.
-/

/-! ## A398495.P4494126593402833777

`A278060(A323269(n+1))+n`
-/

namespace A398495.P4494126593402833777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278060 (A323269 (n + 1)).toNat + (n : ℤ)

end

end A398495.P4494126593402833777

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

/-! ## A398496.P5307695946944969795

`A174713(A061395(n+1)*A326129(n+1))`
-/

namespace A398496.P5307695946944969795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174713 (A061395 (n + 1) * A326129 (n + 1)).toNat

end

end A398496.P5307695946944969795

/-! ## A398496.P16074522993158222403

`A353850(A243056(n+1)%A331686(n+1))`
-/

namespace A398496.P16074522993158222403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353850 (Int.tmod (A243056 (n + 1)) (A331686 (n + 1))).toNat

end

end A398496.P16074522993158222403

/-!
# A398497: Irregular triangle read by rows: T(n,k) is the number of rooted binary leaf-labeled simplex time-consistent galled trees with n leaves and exactly k galls, 0 <= k <= floor((n-1)/2).

The programs for A398497, there is no canonical definition to state claims against.
-/

/-! ## A398497.P2779202741868692746

`A006882(A327506(n)^(n%2)+n)`
-/

namespace A398497.P2779202741868692746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A327506 n ^ (n % 2) + (n : ℤ)).toNat

end

end A398497.P2779202741868692746

/-! ## A398497.P14263474547230842696

`A118975(A302242(n+3)+A085489(n))`
-/

namespace A398497.P14263474547230842696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118975 (A302242 (n + 3) + A085489 n).toNat

end

end A398497.P14263474547230842696

/-! ## A398497.P11203890672342128133

`A006882(n+1)-A154721(A001700(n+1))`
-/

namespace A398497.P11203890672342128133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 1) - A154721 (A001700 (n + 1)).toNat

end

end A398497.P11203890672342128133

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

/-! ## A398499.P11239562502349639070

`fp[A379060(n+1)]`
-/

namespace A398499.P11239562502349639070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379060 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A398499.P11239562502349639070

/-! ## A398499.P9758486754440858981

`fp[A379060(n)]-1`
-/

namespace A398499.P9758486754440858981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 : ℤ) - 1

end

end A398499.P9758486754440858981

/-! ## A398499.P1879906091104659276

`A398501(n)-A379067(n)`
-/

namespace A398499.P1879906091104659276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398501 n - A379067 n

end

end A398499.P1879906091104659276

/-! ## A398499.P18266617731712251286

`A398501(n)-(A398500(n)+1)`
-/

namespace A398499.P18266617731712251286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398501 n - (A398500 n + 1)

end

end A398499.P18266617731712251286

/-! ## A398499.P5768919615945406019

`A398503(n)-(A398505(n)+1)`
-/

namespace A398499.P5768919615945406019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398503 n - (A398505 n + 1)

end

end A398499.P5768919615945406019

/-! ## A398499.P6450841771022023417

`1-A398506(n)+n-A379067(n)`
-/

namespace A398499.P6450841771022023417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A398506 n + (n : ℤ) - A379067 n

end

end A398499.P6450841771022023417

/-! ## A398499.P15630798189783522326

`A398501(n)-A110514(2*A398500(n))`
-/

namespace A398499.P15630798189783522326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398501 n - A110514 (2 * A398500 n).toNat

end

end A398499.P15630798189783522326

/-! ## A398499.P10397766404070513550

`A398501(n)-(A398502(n)-A398504(n))`
-/

namespace A398499.P10397766404070513550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398501 n - (A398502 n - A398504 n)

end

end A398499.P10397766404070513550

/-! ## A398499.P5922660468098316785

`1+n-(A398504(n)+A398505(n))-A379067(n)`
-/

namespace A398499.P5922660468098316785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) - (A398504 n + A398505 n) - A379067 n

end

end A398499.P5922660468098316785

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

