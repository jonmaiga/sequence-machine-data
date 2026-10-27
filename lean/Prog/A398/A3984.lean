import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C018
import Seq.B000.C030
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C002
import Seq.B002.C007
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C001
import Seq.B005.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C013
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

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

/-! ## A398421.P16910110909884079048

`filter[A381823(n+1), A369058(#)]`
-/

namespace A398421.P16910110909884079048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A398421.P16910110909884079048

namespace A398421

/-- `filter[A381823(n+1), A369058(#)]` -/
def P16910110909884079048.Spec : Prop :=
  ∀ n, P16910110909884079048.a n = A398421 (n + 1)

end A398421

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

/-! ## A398442.P11974600160339331689

`filter[A093617(n+1), A357298(#)]`
-/

namespace A398442.P11974600160339331689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A357298 (f1 j).toNat = 1) n)

end

end A398442.P11974600160339331689

/-! ## A398442.P12075491464674420917

`∩[A071365(n+1), A228380(n+1)]`
-/

namespace A398442.P12075491464674420917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398442.P12075491464674420917

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

The programs for A398446, the canonical program `A398446.P5433720991172560056` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398446 has offset 3).

The definition of A398446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398446.P5433720991172560056

`((n+3)*C(2*(n+3)-6, n)+4^n)/2`

The canonical program, it is in `Seq.B000.C040`.
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
# A398470: Number of increasing 3-term arithmetic progressions in an n^3 cube.

The programs for A398470, the canonical program `A398470.P15258585584443073451` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398470 has offset 1).

The definition of A398470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398470.P15258585584443073451

`A036486(A000982(n+1))-A036486(n+1)`

The canonical program, it is in `Seq.B001.C013`.
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
# A398477: Triangle read by rows: T(n, k + 1) = T(n, k) * (n + k) / (n * (k + 1)) for k <= n, starting at T(n, 0) = n^n, (row recurrence).

The programs for A398477, the canonical program `A398477.P18378234332377890742` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398477 has offset 0).

The definition of A398477 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398477.P18378234332377890742

`row(n)^(row(n)-col(n))*(row(n)+col(n))!/((col(n)+1)!*row(n)!)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A398477

/-- `row(n)^(row(n)-col(n))*(row(n)+col(n))!/((col(n)+1)!*row(n)!)` -/
def P18378234332377890742.Spec : Prop :=
  ∀ n, P18378234332377890742.a n = (A398477 n : ℚ)

end A398477

/-!
# A398478: a(n) = Sum_{j=0..n} binomial(n + j, j) * n^(n - j) / (j + 1). Row sums of A398477.

The programs for A398478, there is no canonical definition to state claims against.
-/

/-! ## A398478.P5850295454016004459

`A000108(n)+A293574(n)-A000312(n)`
-/

namespace A398478.P5850295454016004459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A293574 n - A000312 n)

end

end A398478.P5850295454016004459

/-!
# A398479: a(n) = (2*n)^n * binomial(3*n, n) / (n + 1). Central terms of A398477.

The programs for A398479, the canonical program `A398479.P8587661814025841451` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398479 has offset 0).

The definition of A398479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398479.P8587661814025841451

`(2*n)^n*C(3*n, n)/(n+1)`

The canonical program, it is in `Seq.B000.C040`.
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
# A398485: Triangle read by rows: T(n, k) = denominator(A398484(n, k)).

The programs for A398485, there is no canonical definition to state claims against.
-/

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

