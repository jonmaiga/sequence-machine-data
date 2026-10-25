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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B014.C000
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
# A034900: a(n) is square mod a(i), i < n; a(n) prime; a(1) = 2.

The programs for A034900, there is no canonical definition to state claims against.
-/

/-! ## A034900.P3484395296143623923

`p?[∑[A002260(A168625(n)²)]]`
-/

namespace A034900.P3484395296143623923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A168625 n ^ 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034900.P3484395296143623923

/-! ## A034900.P8342370085322748155

`A175944(A081741(2*(n+1))*A192860(n))`
-/

namespace A034900.P8342370085322748155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175944 (A081741 (2 * (n + 1)) * A192860 n).toNat

end

end A034900.P8342370085322748155

/-!
# A034901: a(n) is square mod a(i), i < n; a(n) nonsquare; a(1) = 2.

The programs for A034901, there is no canonical definition to state claims against.
-/

/-! ## A034901.P14829351400520722254

`A107572(A098550(n+1))+A003192(n+1)`
-/

namespace A034901.P14829351400520722254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107572 (A098550 (n + 1)).toNat + A003192 (n + 1)

end

end A034901.P14829351400520722254

/-!
# A034902: a(i) is a square mod a(j), i <> j; a(n) prime; a(1) = 2.

The programs for A034902, there is no canonical definition to state claims against.
-/

/-! ## A034902.P10496948199493839483

`record[p?[A078898(A087475(n))]]`
-/

namespace A034902.P10496948199493839483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A087475 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034902.P10496948199493839483

/-!
# A034903: a(i) is a square mod a(j), i <> j.

The programs for A034903, there is no canonical definition to state claims against.
-/

/-! ## A034903.P12337256723886665079

`A132085(∑[∑[A132081(n+3)²]²])`
-/

namespace A034903.P12337256723886665079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132081 (n + 3) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132085 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034903.P12337256723886665079

/-! ## A034903.P4986215332777790415

`A278535(A002494(n+2))-A002494(n)`
-/

namespace A034903.P4986215332777790415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278535 (A002494 (n + 2)).toNat - A002494 n

end

end A034903.P4986215332777790415

/-!
# A034904: Related to sept-factorial numbers A045754.

The programs for A034904, there is no canonical definition to state claims against.
-/

/-! ## A034904.P10866420797142726849

`7^n*A045754(n+1)/(n+1)!`
-/

namespace A034904.P10866420797142726849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ n : ℤ) * A045754 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A034904.P10866420797142726849

/-! ## A034904.P7983992121274857921

`A132057(∑[n]+1)`
-/

namespace A034904.P7983992121274857921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132057 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A034904.P7983992121274857921

/-! ## A034904.P3189066656035515141

`record[A132057(n+1)]`
-/

namespace A034904.P3189066656035515141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034904.P3189066656035515141

/-! ## A034904.P1806288876177711764

`7*A016993(n)/(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A034904.P1806288876177711764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (7 * A016993 n : ℚ) / (n + 1 : ℚ) * a (n - 1)

end

end A034904.P1806288876177711764

/-! ## A034904.P1377132472350179162

`A034835(n+1)/7`
-/

namespace A034904.P1377132472350179162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034835 (n + 1) : ℚ) / 7

end

end A034904.P1377132472350179162

/-! ## A034904.P5682898568839728852

`Δ[∑[A034835(n)]/7]`
-/

namespace A034904.P5682898568839728852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034835 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034904.P5682898568839728852

/-! ## A034904.P13699772991895914246

`record[ratio[A034835(A193592(n))]]`
-/

namespace A034904.P13699772991895914246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034835 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034904.P13699772991895914246

/-!
# A034905: Numbers whose square contains no loops in its digits (assumes 1, 2, 3, 5, 7 have no loops and 0, 4, 6, 8, 9 do).

The programs for A034905, there is no canonical definition to state claims against.
-/

/-! ## A034905.P14170065331295974857

`sqrt(∩[A001742(n+1), n²])`
-/

namespace A034905.P14170065331295974857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A034905.P14170065331295974857

/-! ## A034905.P9401831245303004516

`eq[0, A064692(n²)]`
-/

namespace A034905.P9401831245303004516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034905.P9401831245303004516

/-! ## A034905.P5964956534681895129

`lt[A064692((n+1)²), 1]+1`
-/

namespace A034905.P5964956534681895129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 ((n + 1) ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A034905.P5964956534681895129

/-! ## A034905.P4788957062855821520

`lt[A064692(A000290(n)), 1]`
-/

namespace A034905.P4788957062855821520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A000290 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A034905.P4788957062855821520

/-! ## A034905.P15941419525516066990

`eq[A064692(A181318(n)), A142150(n)]`
-/

namespace A034905.P15941419525516066990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A181318 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034905.P15941419525516066990

/-!
# A034906: Powers of 2 written backwards and sorted.

The programs for A034906, there is no canonical definition to state claims against.
-/

/-! ## A034906.P10909274694365825715

`eq[A040790(n), A081431(n)]`
-/

namespace A034906.P10909274694365825715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081431 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034906.P10909274694365825715

/-! ## A034906.P13665223103369180445

`eq[A081431(n), A327168(n)]`
-/

namespace A034906.P13665223103369180445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081431 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327168 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034906.P13665223103369180445

/-! ## A034906.P9301200344944901757

`eq[A081431(n), A356162(n)]`
-/

namespace A034906.P9301200344944901757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081431 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034906.P9301200344944901757

/-! ## A034906.P2488447947340560662

`eq[A294334(n)², A081431(n)]`
-/

namespace A034906.P2488447947340560662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294334 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081431 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034906.P2488447947340560662

/-! ## A034906.P4117307596971077917

`eq[A000120(A004086(n)), A040790(n)]`
-/

namespace A034906.P4117307596971077917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034906.P4117307596971077917

/-!
# A034907: a(n) in base 10 is a(n-1) in base a(n-1).

The programs for A034907, there is no canonical definition to state claims against.
-/

/-! ## A034907.P2157110582782165829

`A122618(a(n-1))` with `a(0)=11`
-/

namespace A034907.P2157110582782165829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A122618 (a (n - 1)).toNat

end

end A034907.P2157110582782165829

/-! ## A034907.P17355498484624347514

`A122638(a(n-1))-1` with `a(0)=11`
-/

namespace A034907.P17355498484624347514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A122638 (a (n - 1)).toNat - 1

end

end A034907.P17355498484624347514

/-!
# A034908: One half of octo-factorial numbers.

The programs for A034908, the canonical program `A034908.P16827673894086994239` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034908 has offset 1).

The definition of A034908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034908.P16827673894086994239

`A084948(n+1)/2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034908

/-- `A084948(n+1)/2` -/
def P16827673894086994239.Spec : Prop :=
  ∀ n, P16827673894086994239.a n = (A034908 (n + 1) : ℚ)

end A034908

/-! ## A034908.P10229725378192184505

`∏[a(n-1)+8]` with `a(0)=1, a(1)=10`
-/

namespace A034908.P10229725378192184505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034908.P10229725378192184505

namespace A034908

/-- `∏[a(n-1)+8]` -/
def P10229725378192184505.Spec : Prop :=
  ∀ n, (P10229725378192184505.a n : ℤ) = A034908 (n + 1)

end A034908

/-! ## A034908.P9372702114674568990

`2^n*∏[4*n+1]`
-/

namespace A034908.P9372702114674568990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A034908.P9372702114674568990

namespace A034908

/-- `2^n*∏[4*n+1]` -/
def P9372702114674568990.Spec : Prop :=
  ∀ n, (P9372702114674568990.a n : ℤ) = A034908 (n + 1)

end A034908

/-! ## A034908.P12238614953466608132

`∏[Δ[floor(2/acot(n))²]-2]`
-/

namespace A034908.P12238614953466608132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034908.P12238614953466608132

namespace A034908

/-- `∏[Δ[floor(2/acot(n))²]-2]` -/
def P12238614953466608132.Spec : Prop :=
  ∀ n, P12238614953466608132.a n = A034908 (n + 1)

end A034908

/-! ## A034908.P15666830025419169137

`∏[Δ[record[(n²+n)^(n%2)]]]`
-/

namespace A034908.P15666830025419169137
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n) ^ (n % 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034908.P15666830025419169137

namespace A034908

/-- `∏[Δ[record[(n²+n)^(n%2)]]]` -/
def P15666830025419169137.Spec : Prop :=
  ∀ n, P15666830025419169137.a n = A034908 (n + 1)

end A034908

/-!
# A034909: One third of octo-factorial numbers.

The programs for A034909, there is no canonical definition to state claims against.
-/

/-! ## A034909.P6160470029955198873

`A144756(n+1)/3`
-/

namespace A034909.P6160470029955198873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144756 (n + 1) : ℚ) / 3

end

end A034909.P6160470029955198873

/-! ## A034909.P12399872851026369606

`∏[or(2, a(n-1)+8)]` with `a(0)=1`
-/

namespace A034909.P12399872851026369606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lor 2 (f1 (n - 1) + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034909.P12399872851026369606

/-! ## A034909.P16267300475273442378

`(8*n+3)*a(n-1)` with `a(0)=1`
-/

namespace A034909.P16267300475273442378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (8 * n + 3) * a (n - 1)

end

end A034909.P16267300475273442378

/-! ## A034909.P673942056840516764

`a(n-1)*Δ[(2*n)²-n]` with `a(0)=1`
-/

namespace A034909.P673942056840516764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (f1 (n + 1) - f1 n)

end

end A034909.P673942056840516764

/-! ## A034909.P5251487125534403383

`∏[Δ[abs(A185950(n))]]`
-/

namespace A034909.P5251487125534403383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185950 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034909.P5251487125534403383

/-!
# A034910: One quarter of octo-factorial numbers.

The programs for A034910, the canonical program `A034910.P3501950281684188411` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034910 has offset 1).

The definition of A034910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034910.P3501950281684188411

`a(n-1)*(8*(n+1)-4)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034910

/-- `a(n-1)*(8*(n+1)-4)` -/
def P3501950281684188411.Spec : Prop :=
  ∀ n, P3501950281684188411.a n = A034910 (n + 1)

theorem P3501950281684188411.correct : P3501950281684188411.Spec := by
  intro n
  simp only [A034910, Nat.add_sub_cancel]

end A034910

/-! ## A034910.P7704417641856075509

`(2*(n+1))!/(n+1)!*2^(n-1)`
-/

namespace A034910.P7704417641856075509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * (n + 1)) : ℚ) / (Nat.factorial (n + 1) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A034910.P7704417641856075509

namespace A034910

/-- `(2*(n+1))!/(n+1)!*2^(n-1)` -/
def P7704417641856075509.Spec : Prop :=
  ∀ n, P7704417641856075509.a n = (A034910 (n + 1) : ℚ)

end A034910

/-! ## A034910.P10693776342320674285

`∏[8*n+4]/4`
-/

namespace A034910.P10693776342320674285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4

end

end A034910.P10693776342320674285

namespace A034910

/-- `∏[8*n+4]/4` -/
def P10693776342320674285.Spec : Prop :=
  ∀ n, P10693776342320674285.a n = (A034910 (n + 1) : ℚ)

end A034910

/-! ## A034910.P15031111889073523916

`lcm(4^n, ∏[Δ[n²]])`
-/

namespace A034910.P15031111889073523916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (4 ^ n : ℤ) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A034910.P15031111889073523916

namespace A034910

/-- `lcm(4^n, ∏[Δ[n²]])` -/
def P15031111889073523916.Spec : Prop :=
  ∀ n, (P15031111889073523916.a n : ℤ) = A034910 (n + 1)

end A034910

/-! ## A034910.P7115761085210634184

`∏[a(n-1)+8]` with `a(0)=1, a(1)=12`
-/

namespace A034910.P7115761085210634184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034910.P7115761085210634184

namespace A034910

/-- `∏[a(n-1)+8]` -/
def P7115761085210634184.Spec : Prop :=
  ∀ n, (P7115761085210634184.a n : ℤ) = A034910 (n + 1)

end A034910

/-!
# A034911: One fifth of octo-factorial numbers.

The programs for A034911, the canonical program `A034911.P11404448713557325757` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034911 has offset 1).

The definition of A034911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034911.P11404448713557325757

`(8*(n+1)-3)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034911

/-- `(8*(n+1)-3)*a(n-1)` -/
def P11404448713557325757.Spec : Prop :=
  ∀ n, P11404448713557325757.a n = A034911 (n + 1)

theorem P11404448713557325757.correct : P11404448713557325757.Spec := by
  intro n
  simp only [A034911, Nat.add_sub_cancel]

end A034911

/-! ## A034911.P17098863631638463293

`A147625(n+2)/5`
-/

namespace A034911.P17098863631638463293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147625 (n + 2) : ℚ) / 5

end

end A034911.P17098863631638463293

namespace A034911

/-- `A147625(n+2)/5` -/
def P17098863631638463293.Spec : Prop :=
  ∀ n, P17098863631638463293.a n = (A034911 (n + 1) : ℚ)

end A034911

/-! ## A034911.P12048864014707070124

`∏[8*n+5]/5`
-/

namespace A034911.P12048864014707070124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5

end

end A034911.P12048864014707070124

namespace A034911

/-- `∏[8*n+5]/5` -/
def P12048864014707070124.Spec : Prop :=
  ∀ n, P12048864014707070124.a n = (A034911 (n + 1) : ℚ)

end A034911

/-! ## A034911.P15316006798836557424

`∏[a(n-1)+8]` with `a(0)=1, a(1)=13`
-/

namespace A034911.P15316006798836557424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 13] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034911.P15316006798836557424

namespace A034911

/-- `∏[a(n-1)+8]` -/
def P15316006798836557424.Spec : Prop :=
  ∀ n, (P15316006798836557424.a n : ℤ) = A034911 (n + 1)

end A034911

/-! ## A034911.P10162143610974073683

`∏[record[xor(5, 4*n+5)]+1]`
-/

namespace A034911.P10162143610974073683
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (4 * n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034911.P10162143610974073683

namespace A034911

/-- `∏[record[xor(5, 4*n+5)]+1]` -/
def P10162143610974073683.Spec : Prop :=
  ∀ n, (P10162143610974073683.a n : ℤ) = A034911 (n + 1)

end A034911

/-!
# A034912: One sixth of octo-factorial numbers.

The programs for A034912, the canonical program `A034912.P1253622757102941374` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034912 has offset 1).

The definition of A034912 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034912.P1253622757102941374

`2*(4*(n+1)-1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034912

/-- `2*(4*(n+1)-1)*a(n-1)` -/
def P1253622757102941374.Spec : Prop :=
  ∀ n, P1253622757102941374.a n = A034912 (n + 1)

theorem P1253622757102941374.correct : P1253622757102941374.Spec := by
  intro n
  simp only [A034912, Nat.add_sub_cancel]

end A034912

/-! ## A034912.P9816024379126843396

`A147626(n+2)/6`
-/

namespace A034912.P9816024379126843396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147626 (n + 2) : ℚ) / 6

end

end A034912.P9816024379126843396

namespace A034912

/-- `A147626(n+2)/6` -/
def P9816024379126843396.Spec : Prop :=
  ∀ n, P9816024379126843396.a n = (A034912 (n + 1) : ℚ)

end A034912

/-! ## A034912.P16244488758368369705

`∏[8*n+6]/6`
-/

namespace A034912.P16244488758368369705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6

end

end A034912.P16244488758368369705

namespace A034912

/-- `∏[8*n+6]/6` -/
def P16244488758368369705.Spec : Prop :=
  ∀ n, P16244488758368369705.a n = (A034912 (n + 1) : ℚ)

end A034912

/-! ## A034912.P8143748129459067809

`∏[a(n-1)+8]` with `a(0)=1, a(1)=14`
-/

namespace A034912.P8143748129459067809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034912.P8143748129459067809

namespace A034912

/-- `∏[a(n-1)+8]` -/
def P8143748129459067809.Spec : Prop :=
  ∀ n, (P8143748129459067809.a n : ℤ) = A034912 (n + 1)

end A034912

/-! ## A034912.P885185611793690255

`a(n-1)*Δ[2*n*Δ[n²]]` with `a(0)=1`
-/

namespace A034912.P885185611793690255
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (f1 (n + 1) - f1 n)

end

end A034912.P885185611793690255

namespace A034912

/-- `a(n-1)*Δ[2*n*Δ[n²]]` -/
def P885185611793690255.Spec : Prop :=
  ∀ n, P885185611793690255.a n = A034912 (n + 1)

end A034912

/-!
# A034913: Odd primes p such that q = (k*p+1)/(p-k) is prime for some p/2 < k < p.

The programs for A034913, there is no canonical definition to state claims against.
-/

/-! ## A034913.P7965172678503642313

`record[p?[A243714(A155212(n))]]`
-/

namespace A034913.P7965172678503642313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243714 (A155212 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034913.P7965172678503642313

/-!
# A034914: Odd primes p such that q=(k*p+1)/(p-k) is prime for some k.

The programs for A034914, there is no canonical definition to state claims against.
-/

/-! ## A034914.P8463928678540180983

`p?[A105356(∑[A261095(n)])]`
-/

namespace A034914.P8463928678540180983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261095 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105356 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034914.P8463928678540180983

/-! ## A034914.P7852806670378717307

`p?[or(A152847(2*n+1), A193528(2*n+1))]`
-/

namespace A034914.P7852806670378717307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A152847 (2 * n + 1)) (A193528 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034914.P7852806670378717307

/-! ## A034914.P8397085195818206894

`record[p?[A117924(A278818(n))]]`
-/

namespace A034914.P8397085195818206894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117924 (A278818 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034914.P8397085195818206894

/-! ## A034914.P16375643693152325843

`A000040(∑[A007658(3*n+2)%3])`
-/

namespace A034914.P16375643693152325843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007658 (3 * n + 2)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034914.P16375643693152325843

/-! ## A034914.P5579147666209032180

`record[A006530(A295299(n+1)-A093511(n+1))]`
-/

namespace A034914.P5579147666209032180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A295299 (n + 1) - A093511 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034914.P5579147666209032180

/-!
# A034915: Primes of the form p^k - p + 1 for prime p.

The programs for A034915, there is no canonical definition to state claims against.
-/

/-! ## A034915.P12815985174264072644

`p?[A246068(n+1)+1]`
-/

namespace A034915.P12815985174264072644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246068 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034915.P12815985174264072644

/-! ## A034915.P4320627316743300662

`p?[A308394(n+1)+1]`
-/

namespace A034915.P4320627316743300662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308394 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034915.P4320627316743300662

/-! ## A034915.P15066794371081707684

`p?[or(1, A246068(2-A024000(n)))]`
-/

namespace A034915.P15066794371081707684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A246068 (2 - A024000 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034915.P15066794371081707684

/-! ## A034915.P14467668751416953095

`record[A006530(A246068(n+2)+1)]`
-/

namespace A034915.P14467668751416953095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A246068 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034915.P14467668751416953095

/-! ## A034915.P3491035387025585

`record[A006530(A308394(n+2)+1)]`
-/

namespace A034915.P3491035387025585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A308394 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034915.P3491035387025585

/-!
# A034917: Minimal determinant (negated) of n X n persymmetric matrix with entries {-1,0,+1}.

The programs for A034917, there is no canonical definition to state claims against.
-/

/-! ## A034917.P4779836742123592850

`A215724(n+1)-A008436(n+2)*A106404(n+1)`
-/

namespace A034917.P4779836742123592850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215724 (n + 1) - A008436 (n + 2) * A106404 (n + 1)

end

end A034917.P4779836742123592850

/-! ## A034917.P10368930044294142689

`A000079(n)*A002244(A323475(n))`
-/

namespace A034917.P10368930044294142689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A002244 (A323475 n).toNat

end

end A034917.P10368930044294142689

/-! ## A034917.P16602975341841858551

`A364932(A360153(n))`
-/

namespace A034917.P16602975341841858551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364932 (A360153 n).toNat

end

end A034917.P16602975341841858551

/-! ## A034917.P17655396239396674829

`A348249(abs(A119000(n+1)))`
-/

namespace A034917.P17655396239396674829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348249 |A119000 (n + 1)|.toNat

end

end A034917.P17655396239396674829

/-!
# A034918: Maximal determinant of n X n persymmetric matrix with entries {-1,0,+1}.

The programs for A034918, there is no canonical definition to state claims against.
-/

/-! ## A034918.P14278132809091850045

`A247074(A045623(n)*A293473(n))`
-/

namespace A034918.P14278132809091850045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247074 (A045623 n * A293473 n).toNat

end

end A034918.P14278132809091850045

/-! ## A034918.P6218954227356411109

`A293484(A045623(n)*A293473(n))`
-/

namespace A034918.P6218954227356411109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293484 (A045623 n * A293473 n).toNat

end

end A034918.P6218954227356411109

/-! ## A034918.P8043823029962081443

`A049099(3^n+C(2^n, 2)+4^n)`
-/

namespace A034918.P8043823029962081443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049099 (3 ^ n + (Nat.choose (2 ^ n) 2 + 4 ^ n))

end

end A034918.P8043823029962081443

/-!
# A034919: Minimal consecutive determinant (negated) of n X n persymmetric matrix with entries {-1,0,+1}.

The programs for A034919, there is no canonical definition to state claims against.
-/

/-! ## A034919.P4139544493565800011

`A056943(xor(A057944(n), A117480(n+1)))`
-/

namespace A034919.P4139544493565800011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056943 (Int.xor (A057944 n) (A117480 (n + 1))).toNat

end

end A034919.P4139544493565800011

/-! ## A034919.P1307666951215784688

`A359209(A273873(n+1))+A275884(n+1)`
-/

namespace A034919.P1307666951215784688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359209 (A273873 (n + 1)).toNat + A275884 (n + 1)

end

end A034919.P1307666951215784688

/-! ## A034919.P6506553324640539178

`A208965(n+2)-A350847(A001924(n+1))`
-/

namespace A034919.P6506553324640539178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208965 (n + 2) - A350847 (A001924 (n + 1)).toNat

end

end A034919.P6506553324640539178

/-!
# A034920: Maximal consecutive determinant of n X n persymmetric matrix with entries {-1,0,+1}.

The programs for A034920, there is no canonical definition to state claims against.
-/

/-! ## A034920.P5648986120195163585

`A227181(A052571(n))+A026788(n)`
-/

namespace A034920.P5648986120195163585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227181 (A052571 n).toNat + A026788 n

end

end A034920.P5648986120195163585

/-!
# A034921: Number of different determinants of n X n persymmetric matrices with entries {-1,0,+1}.

The programs for A034921, there is no canonical definition to state claims against.
-/

/-! ## A034921.P12329664021911342936

`A000267(A193237(n)+2)`
-/

namespace A034921.P12329664021911342936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A193237 n + 2).toNat

end

end A034921.P12329664021911342936

/-! ## A034921.P5702466029797507098

`A023193(A240296(n+1))+2`
-/

namespace A034921.P5702466029797507098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A240296 (n + 1)).toNat + 2

end

end A034921.P5702466029797507098

/-!
# A034924: Numbers k such that 47^k-46 is prime.

The programs for A034924, there is no canonical definition to state claims against.
-/

/-! ## A034924.P6563788809806977710

`record[A210610(3*n+1)+ceil(acot(n))]`
-/

namespace A034924.P6563788809806977710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210610 (3 * n + 1) + ⌈SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034924.P6563788809806977710

/-!
# A034925: Numbers k such that 89^k-88 is prime.

The programs for A034925, there is no canonical definition to state claims against.
-/

/-! ## A034925.P17385788885678690566

`A319998(A208497(n+1))+A208523(n+1)`
-/

namespace A034925.P17385788885678690566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319998 (A208497 (n + 1)).toNat + A208523 (n + 1)

end

end A034925.P17385788885678690566

/-!
# A034928: Triangle of ballot numbers.

The programs for A034928, there is no canonical definition to state claims against.
-/

/-! ## A034928.P9634621594991704149

`A247364(abs(1-A061579(n)))`
-/

namespace A034928.P9634621594991704149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247364 |1 - A061579 n|.toNat

end

end A034928.P9634621594991704149

/-! ## A034928.P17219913011047627116

`A247364(A061579(n)+A057428(n))`
-/

namespace A034928.P17219913011047627116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247364 (A061579 n + A057428 n).toNat

end

end A034928.P17219913011047627116

/-! ## A034928.P1452292750488898522

`A247364(A061579(n)-A057427(n))`
-/

namespace A034928.P1452292750488898522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247364 (A061579 n - A057427 n).toNat

end

end A034928.P1452292750488898522

/-! ## A034928.P3700080223606167706

`A247364(A061579(n)-A057428(n)²)`
-/

namespace A034928.P3700080223606167706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247364 (A061579 n - A057428 n ^ 2).toNat

end

end A034928.P3700080223606167706

/-! ## A034928.P5057098411862007548

`A247364((1-A061579(n))*A057428(n))`
-/

namespace A034928.P5057098411862007548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247364 ((1 - A061579 n) * A057428 n).toNat

end

end A034928.P5057098411862007548

/-! ## A034928.P5149741465685183440

`A247364(A061579(n+1))`
-/

namespace A034928.P5149741465685183440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247364 (A061579 (n + 1)).toNat

end

end A034928.P5149741465685183440

/-! ## A034928.P3925757033331232031

`A247364(A038722(n+2)-1)`
-/

namespace A034928.P3925757033331232031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247364 (A038722 (n + 2) - 1).toNat

end

end A034928.P3925757033331232031

/-!
# A034929: A triangle of Motzkin ballot numbers, read by rows.

The programs for A034929, there is no canonical definition to state claims against.
-/

/-! ## A034929.P11211254301463991399

`A091836(A061579(n))`
-/

namespace A034929.P11211254301463991399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091836 (A061579 n).toNat

end

end A034929.P11211254301463991399

/-! ## A034929.P18097695619989943662

`A091836(A114327(n)+n)`
-/

namespace A034929.P18097695619989943662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091836 (A114327 n + (n : ℤ)).toNat

end

end A034929.P18097695619989943662

/-! ## A034929.P16404138790165546527

`A091836(A038722(n+1)-1)`
-/

namespace A034929.P16404138790165546527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091836 (A038722 (n + 1) - 1).toNat

end

end A034929.P16404138790165546527

/-! ## A034929.P6659894295717428400

`A091836(A002024(n+1)²-(n+1))`
-/

namespace A034929.P6659894295717428400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091836 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A034929.P6659894295717428400

/-! ## A034929.P7788559328511984036

`A091836(A057944(n)+A025581(n))`
-/

namespace A034929.P7788559328511984036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091836 (A057944 n + A025581 n).toNat

end

end A034929.P7788559328511984036

/-! ## A034929.P3833157621689783991

`A091836(A002378(n)%A080036(n))`
-/

namespace A034929.P3833157621689783991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091836 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A034929.P3833157621689783991

/-! ## A034929.P6650064490040111542

`A091836(A233583(A038722(n+1)))`
-/

namespace A034929.P6650064490040111542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091836 (A233583 (A038722 (n + 1)).toNat).toNat

end

end A034929.P6650064490040111542

/-!
# A034930: Triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 8.

The programs for A034930, the canonical program `A034930.P18405547121774328167` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034930 has offset 0).

The definition of A034930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034930.P18405547121774328167

`A007318(n)%8`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A034930

/-- `A007318(n)%8` -/
def P18405547121774328167.Spec : Prop :=
  ∀ n, P18405547121774328167.a n = A034930 n

theorem P18405547121774328167.correct : P18405547121774328167.Spec := by
  intro n
  simp only [A034930]

end A034930

/-! ## A034930.P2113276565105077617

`A034932(n)%8`
-/

namespace A034930.P2113276565105077617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034932 n) 8

end

end A034930.P2113276565105077617

namespace A034930

/-- `A034932(n)%8` -/
def P2113276565105077617.Spec : Prop :=
  ∀ n, P2113276565105077617.a n = A034930 n

end A034930

/-! ## A034930.P17250011694786268063

`A093644(n)%8`
-/

namespace A034930.P17250011694786268063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093644 n) 8

end

end A034930.P17250011694786268063

namespace A034930

/-- `A093644(n)%8` -/
def P17250011694786268063.Spec : Prop :=
  ∀ n, P17250011694786268063.a n = A034930 n

end A034930

/-! ## A034930.P5430814739424706097

`A143683(n)%8`
-/

namespace A034930.P5430814739424706097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143683 n) 8

end

end A034930.P5430814739424706097

namespace A034930

/-- `A143683(n)%8` -/
def P5430814739424706097.Spec : Prop :=
  ∀ n, P5430814739424706097.a n = A034930 n

end A034930

/-! ## A034930.P14388626962483620657

`and(7, A007318(2*n-n))`
-/

namespace A034930.P14388626962483620657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A007318 (2 * n - n))

end

end A034930.P14388626962483620657

namespace A034930

/-- `and(7, A007318(2*n-n))` -/
def P14388626962483620657.Spec : Prop :=
  ∀ n, P14388626962483620657.a n = A034930 n

end A034930

/-! ## A034930.P9727367852150757701

`A010877(A034932(n))`
-/

namespace A034930.P9727367852150757701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A034932 n).toNat

end

end A034930.P9727367852150757701

namespace A034930

/-- `A010877(A034932(n))` -/
def P9727367852150757701.Spec : Prop :=
  ∀ n, P9727367852150757701.a n = A034930 n

end A034930

/-! ## A034930.P8014586620774093185

`and(A001533(n), A034932(n))`
-/

namespace A034930.P8014586620774093185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001533 n) (A034932 n)

end

end A034930.P8014586620774093185

namespace A034930

/-- `and(A001533(n), A034932(n))` -/
def P8014586620774093185.Spec : Prop :=
  ∀ n, P8014586620774093185.a n = A034930 n

end A034930

/-! ## A034930.P9089415232033061094

`and(A034932(n), A348643(n))`
-/

namespace A034930.P9089415232033061094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034932 n) (A348643 n)

end

end A034930.P9089415232033061094

namespace A034930

/-- `and(A034932(n), A348643(n))` -/
def P9089415232033061094.Spec : Prop :=
  ∀ n, P9089415232033061094.a n = A034930 n

end A034930

/-! ## A034930.P4219768575779376139

`and(A034932(n), A044242(n+1))`
-/

namespace A034930.P4219768575779376139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034932 n) (A044242 (n + 1))

end

end A034930.P4219768575779376139

namespace A034930

/-- `and(A034932(n), A044242(n+1))` -/
def P4219768575779376139.Spec : Prop :=
  ∀ n, P4219768575779376139.a n = A034930 n

end A034930

/-! ## A034930.P11043591633324099686

`and(A034932(n), A112515(n+1))`
-/

namespace A034930.P11043591633324099686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034932 n) (A112515 (n + 1))

end

end A034930.P11043591633324099686

namespace A034930

/-- `and(A034932(n), A112515(n+1))` -/
def P11043591633324099686.Spec : Prop :=
  ∀ n, P11043591633324099686.a n = A034930 n

end A034930

/-! ## A034930.P9147762502260851178

`and(A034932(n), A141194(n+1))`
-/

namespace A034930.P9147762502260851178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034932 n) (A141194 (n + 1))

end

end A034930.P9147762502260851178

namespace A034930

/-- `and(A034932(n), A141194(n+1))` -/
def P9147762502260851178.Spec : Prop :=
  ∀ n, P9147762502260851178.a n = A034930 n

end A034930

/-! ## A034930.P8001006999818445988

`and(A034932(n), A142037(n+1))`
-/

namespace A034930.P8001006999818445988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034932 n) (A142037 (n + 1))

end

end A034930.P8001006999818445988

namespace A034930

/-- `and(A034932(n), A142037(n+1))` -/
def P8001006999818445988.Spec : Prop :=
  ∀ n, P8001006999818445988.a n = A034930 n

end A034930

/-! ## A034930.P3928645582348519696

`and(A034932(n), A142044(n+1))`
-/

namespace A034930.P3928645582348519696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034932 n) (A142044 (n + 1))

end

end A034930.P3928645582348519696

namespace A034930

/-- `and(A034932(n), A142044(n+1))` -/
def P3928645582348519696.Spec : Prop :=
  ∀ n, P3928645582348519696.a n = A034930 n

end A034930

/-! ## A034930.P3535424353045075437

`and(A034932(n), A142400(n+1))`
-/

namespace A034930.P3535424353045075437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034932 n) (A142400 (n + 1))

end

end A034930.P3535424353045075437

namespace A034930

/-- `and(A034932(n), A142400(n+1))` -/
def P3535424353045075437.Spec : Prop :=
  ∀ n, P3535424353045075437.a n = A034930 n

end A034930

/-! ## A034930.P10155223515881733771

`and(A034932(n), A142405(n+1))`
-/

namespace A034930.P10155223515881733771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034932 n) (A142405 (n + 1))

end

end A034930.P10155223515881733771

namespace A034930

/-- `and(A034932(n), A142405(n+1))` -/
def P10155223515881733771.Spec : Prop :=
  ∀ n, P10155223515881733771.a n = A034930 n

end A034930

/-! ## A034930.P12102462165693015787

`and(A034932(n), A142928(n+1))`
-/

namespace A034930.P12102462165693015787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034932 n) (A142928 (n + 1))

end

end A034930.P12102462165693015787

namespace A034930

/-- `and(A034932(n), A142928(n+1))` -/
def P12102462165693015787.Spec : Prop :=
  ∀ n, P12102462165693015787.a n = A034930 n

end A034930

/-! ## A034930.P2791072398494907645

`and(A034932(n), A142935(n+1))`
-/

namespace A034930.P2791072398494907645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034932 n) (A142935 (n + 1))

end

end A034930.P2791072398494907645

namespace A034930

/-- `and(A034932(n), A142935(n+1))` -/
def P2791072398494907645.Spec : Prop :=
  ∀ n, P2791072398494907645.a n = A034930 n

end A034930

/-! ## A034930.P14981880039223957867

`and(A034932(n), A142942(n+1))`
-/

namespace A034930.P14981880039223957867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034932 n) (A142942 (n + 1))

end

end A034930.P14981880039223957867

namespace A034930

/-- `and(A034932(n), A142942(n+1))` -/
def P14981880039223957867.Spec : Prop :=
  ∀ n, P14981880039223957867.a n = A034930 n

end A034930

/-! ## A034930.P18225501662196298334

`and(A034932(n), A142950(n+1))`
-/

namespace A034930.P18225501662196298334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034932 n) (A142950 (n + 1))

end

end A034930.P18225501662196298334

namespace A034930

/-- `and(A034932(n), A142950(n+1))` -/
def P18225501662196298334.Spec : Prop :=
  ∀ n, P18225501662196298334.a n = A034930 n

end A034930

/-! ## A034930.P13492484593472461720

`and(A034932(n), A182346(n+1))`
-/

namespace A034930.P13492484593472461720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034932 n) (A182346 (n + 1))

end

end A034930.P13492484593472461720

namespace A034930

/-- `and(A034932(n), A182346(n+1))` -/
def P13492484593472461720.Spec : Prop :=
  ∀ n, P13492484593472461720.a n = A034930 n

end A034930

/-!
# A034931: Triangle read by rows: Pascal's triangle (A007318) mod 4.

The programs for A034931, the canonical program `A034931.P3419430771985175931` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034931 has offset 0).

The definition of A034931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034931.P3419430771985175931

`A007318(n)%4`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A034931

/-- `A007318(n)%4` -/
def P3419430771985175931.Spec : Prop :=
  ∀ n, P3419430771985175931.a n = A034931 n

theorem P3419430771985175931.correct : P3419430771985175931.Spec := by
  intro n
  simp only [A034931]

end A034931

/-! ## A034931.P3900247727214588417

`A034930(n)%4`
-/

namespace A034931.P3900247727214588417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034930 n) 4

end

end A034931.P3900247727214588417

namespace A034931

/-- `A034930(n)%4` -/
def P3900247727214588417.Spec : Prop :=
  ∀ n, P3900247727214588417.a n = A034931 n

end A034931

/-! ## A034931.P7006503870010173405

`A034932(n)%4`
-/

namespace A034931.P7006503870010173405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034932 n) 4

end

end A034931.P7006503870010173405

namespace A034931

/-- `A034932(n)%4` -/
def P7006503870010173405.Spec : Prop :=
  ∀ n, P7006503870010173405.a n = A034931 n

end A034931

/-! ## A034931.P18010491462015803489

`A081579(n)%4`
-/

namespace A034931.P18010491462015803489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081579 n) 4

end

end A034931.P18010491462015803489

namespace A034931

/-- `A081579(n)%4` -/
def P18010491462015803489.Spec : Prop :=
  ∀ n, P18010491462015803489.a n = A034931 n

end A034931

/-! ## A034931.P4145941242797949936

`A086645(n)%4`
-/

namespace A034931.P4145941242797949936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086645 n) 4

end

end A034931.P4145941242797949936

namespace A034931

/-- `A086645(n)%4` -/
def P4145941242797949936.Spec : Prop :=
  ∀ n, P4145941242797949936.a n = A034931 n

end A034931

/-! ## A034931.P17752878980297484343

`A093562(n)%4`
-/

namespace A034931.P17752878980297484343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093562 n) 4

end

end A034931.P17752878980297484343

namespace A034931

/-- `A093562(n)%4` -/
def P17752878980297484343.Spec : Prop :=
  ∀ n, P17752878980297484343.a n = A034931 n

end A034931

/-! ## A034931.P14974722414885648790

`A093644(n)%4`
-/

namespace A034931.P14974722414885648790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093644 n) 4

end

end A034931.P14974722414885648790

namespace A034931

/-- `A093644(n)%4` -/
def P14974722414885648790.Spec : Prop :=
  ∀ n, P14974722414885648790.a n = A034931 n

end A034931

/-! ## A034931.P12358402666297191256

`A095145(n)%4`
-/

namespace A034931.P12358402666297191256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095145 n) 4

end

end A034931.P12358402666297191256

namespace A034931

/-- `A095145(n)%4` -/
def P12358402666297191256.Spec : Prop :=
  ∀ n, P12358402666297191256.a n = A034931 n

end A034931

/-! ## A034931.P18342182282575314065

`A096940(n)%4`
-/

namespace A034931.P18342182282575314065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096940 n) 4

end

end A034931.P18342182282575314065

namespace A034931

/-- `A096940(n)%4` -/
def P18342182282575314065.Spec : Prop :=
  ∀ n, P18342182282575314065.a n = A034931 n

end A034931

/-! ## A034931.P18360313217588701818

`and(3, A007318(2*n-n))`
-/

namespace A034931.P18360313217588701818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A007318 (2 * n - n))

end

end A034931.P18360313217588701818

namespace A034931

/-- `and(3, A007318(2*n-n))` -/
def P18360313217588701818.Spec : Prop :=
  ∀ n, P18360313217588701818.a n = A034931 n

end A034931

/-! ## A034931.P3163760902404311151

`A010873(A034932(n))`
-/

namespace A034931.P3163760902404311151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A034932 n).toNat

end

end A034931.P3163760902404311151

namespace A034931

/-- `A010873(A034932(n))` -/
def P3163760902404311151.Spec : Prop :=
  ∀ n, P3163760902404311151.a n = A034931 n

end A034931

/-! ## A034931.P5580536759894296505

`A010873(A095145(n))`
-/

namespace A034931.P5580536759894296505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A095145 n).toNat

end

end A034931.P5580536759894296505

namespace A034931

/-- `A010873(A095145(n))` -/
def P5580536759894296505.Spec : Prop :=
  ∀ n, P5580536759894296505.a n = A034931 n

end A034931

/-! ## A034931.P2142367927856979792

`and(A001538(n), A034930(n))`
-/

namespace A034931.P2142367927856979792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001538 n) (A034930 n)

end

end A034931.P2142367927856979792

namespace A034931

/-- `and(A001538(n), A034930(n))` -/
def P2142367927856979792.Spec : Prop :=
  ∀ n, P2142367927856979792.a n = A034931 n

end A034931

/-! ## A034931.P16164493335021902543

`and(A001539(n), A034930(n))`
-/

namespace A034931.P16164493335021902543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001539 n) (A034930 n)

end

end A034931.P16164493335021902543

namespace A034931

/-- `and(A001539(n), A034930(n))` -/
def P16164493335021902543.Spec : Prop :=
  ∀ n, P16164493335021902543.a n = A034931 n

end A034931

/-! ## A034931.P7316247346271357414

`and(A001539(n), A034932(n))`
-/

namespace A034931.P7316247346271357414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001539 n) (A034932 n)

end

end A034931.P7316247346271357414

namespace A034931

/-- `and(A001539(n), A034932(n))` -/
def P7316247346271357414.Spec : Prop :=
  ∀ n, P7316247346271357414.a n = A034931 n

end A034931

/-! ## A034931.P10623734359860429567

`and(A002148(n), A034930(n))`
-/

namespace A034931.P10623734359860429567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002148 n) (A034930 n)

end

end A034931.P10623734359860429567

namespace A034931

/-- `and(A002148(n), A034930(n))` -/
def P10623734359860429567.Spec : Prop :=
  ∀ n, P10623734359860429567.a n = A034931 n

end A034931

/-! ## A034931.P14203372170176479119

`and(A004769(n), A034930(n))`
-/

namespace A034931.P14203372170176479119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004769 n) (A034930 n)

end

end A034931.P14203372170176479119

namespace A034931

/-- `and(A004769(n), A034930(n))` -/
def P14203372170176479119.Spec : Prop :=
  ∀ n, P14203372170176479119.a n = A034931 n

end A034931

/-! ## A034931.P16680522500352011146

`and(A017101(n), A034930(n))`
-/

namespace A034931.P16680522500352011146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017101 n) (A034930 n)

end

end A034931.P16680522500352011146

namespace A034931

/-- `and(A017101(n), A034930(n))` -/
def P16680522500352011146.Spec : Prop :=
  ∀ n, P16680522500352011146.a n = A034931 n

end A034931

/-! ## A034931.P18298144722950055168

`and(A017103(n), A034930(n))`
-/

namespace A034931.P18298144722950055168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017103 n) (A034930 n)

end

end A034931.P18298144722950055168

namespace A034931

/-- `and(A017103(n), A034930(n))` -/
def P18298144722950055168.Spec : Prop :=
  ∀ n, P18298144722950055168.a n = A034931 n

end A034931

/-! ## A034931.P9560903058205233131

`and(A017105(n), A034930(n))`
-/

namespace A034931.P9560903058205233131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017105 n) (A034930 n)

end

end A034931.P9560903058205233131

namespace A034931

/-- `and(A017105(n), A034930(n))` -/
def P9560903058205233131.Spec : Prop :=
  ∀ n, P9560903058205233131.a n = A034931 n

end A034931

/-!
# A034932: Triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 16.

The programs for A034932, the canonical program `A034932.P1496221729046170045` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034932 has offset 0).

The definition of A034932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034932.P2738277713277368609

`A007318(n)%16`
-/

namespace A034932.P2738277713277368609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 16

end

end A034932.P2738277713277368609

namespace A034932

/-- `A007318(n)%16` -/
def P2738277713277368609.Spec : Prop :=
  ∀ n, P2738277713277368609.a n = A034932 n

end A034932

/-! ## A034932.P11227551490157459118

`abs(A117440(n)%16)`
-/

namespace A034932.P11227551490157459118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A117440 n) 16|

end

end A034932.P11227551490157459118

namespace A034932

/-- `abs(A117440(n)%16)` -/
def P11227551490157459118.Spec : Prop :=
  ∀ n, P11227551490157459118.a n = A034932 n

end A034932

/-! ## A034932.P15629804043322459293

`abs(A130595(n)%16)`
-/

namespace A034932.P15629804043322459293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A130595 n) 16|

end

end A034932.P15629804043322459293

namespace A034932

/-- `abs(A130595(n)%16)` -/
def P15629804043322459293.Spec : Prop :=
  ∀ n, P15629804043322459293.a n = A034932 n

end A034932

/-! ## A034932.P14620520135350858588

`sqrt(A008459(n))%16`
-/

namespace A034932.P14620520135350858588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))) 16

end

end A034932.P14620520135350858588

namespace A034932

/-- `sqrt(A008459(n))%16` -/
def P14620520135350858588.Spec : Prop :=
  ∀ n, P14620520135350858588.a n = A034932 n

end A034932

/-! ## A034932.P10796395207829201022

`Δ[A102363(n)]%16`
-/

namespace A034932.P10796395207829201022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 16

end

end A034932.P10796395207829201022

namespace A034932

/-- `Δ[A102363(n)]%16` -/
def P10796395207829201022.Spec : Prop :=
  ∀ n, P10796395207829201022.a n = A034932 n

end A034932

/-! ## A034932.P1190611654512575316

`and(15, A007318(xor(1, xor(1, n))))`
-/

namespace A034932.P1190611654512575316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A007318 (Nat.xor 1 (Nat.xor 1 n)))

end

end A034932.P1190611654512575316

namespace A034932

/-- `and(15, A007318(xor(1, xor(1, n))))` -/
def P1190611654512575316.Spec : Prop :=
  ∀ n, P1190611654512575316.a n = A034932 n

end A034932

/-! ## A034932.P2201880722346999664

`and(15, A007318(2*n-n))`
-/

namespace A034932.P2201880722346999664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A007318 (2 * n - n))

end

end A034932.P2201880722346999664

namespace A034932

/-- `and(15, A007318(2*n-n))` -/
def P2201880722346999664.Spec : Prop :=
  ∀ n, P2201880722346999664.a n = A034932 n

end A034932

/-! ## A034932.P8254620503388362490

`gcd(A124927(n), A124928(n))%16`
-/

namespace A034932.P8254620503388362490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124927 n) (A124928 n) % 16

end

end A034932.P8254620503388362490

namespace A034932

/-- `gcd(A124927(n), A124928(n))%16` -/
def P8254620503388362490.Spec : Prop :=
  ∀ n, (P8254620503388362490.a n : ℤ) = A034932 n

end A034932

/-! ## A034932.P1496221729046170045

`C(A003056(n), A025581(n))%16`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A034932

/-- `C(A003056(n), A025581(n))%16` -/
def P1496221729046170045.Spec : Prop :=
  ∀ n, (P1496221729046170045.a n : ℤ) = A034932 n

theorem P1496221729046170045.correct : P1496221729046170045.Spec := by
  intro n
  simp only [A034932]

end A034932

/-! ## A034932.P2182056914229373518

`C(A002024(n+1)-1, A002262(n))%16`
-/

namespace A034932.P2182056914229373518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002024 (n + 1) - 1).toNat (A002262 n).toNat % 16

end

end A034932.P2182056914229373518

namespace A034932

/-- `C(A002024(n+1)-1, A002262(n))%16` -/
def P2182056914229373518.Spec : Prop :=
  ∀ n, (P2182056914229373518.a n : ℤ) = A034932 n

end A034932

/-! ## A034932.P16790063187009334746

`C(A003056(n), A004736(n+1)-1)%16`
-/

namespace A034932.P16790063187009334746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A004736 (n + 1) - 1).toNat % 16

end

end A034932.P16790063187009334746

namespace A034932

/-- `C(A003056(n), A004736(n+1)-1)%16` -/
def P16790063187009334746.Spec : Prop :=
  ∀ n, (P16790063187009334746.a n : ℤ) = A034932 n

end A034932

/-! ## A034932.P16971188003706863120

`(A176348(n)/A176346(n))%16`
-/

namespace A034932.P16971188003706863120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A176348 n : ℚ) / (A176346 n : ℚ))) 16

end

end A034932.P16971188003706863120

namespace A034932

/-- `(A176348(n)/A176346(n))%16` -/
def P16971188003706863120.Spec : Prop :=
  ∀ n, P16971188003706863120.a n = A034932 n

end A034932

/-! ## A034932.P13960440750398550468

`A167884(n+1)%A040056(n)`
-/

namespace A034932.P13960440750398550468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167884 (n + 1)) (A040056 n)

end

end A034932.P13960440750398550468

namespace A034932

/-- `A167884(n+1)%A040056(n)` -/
def P13960440750398550468.Spec : Prop :=
  ∀ n, P13960440750398550468.a n = A034932 n

end A034932

/-! ## A034932.P6207149115402126177

`A022181(n)%A040056(n)`
-/

namespace A034932.P6207149115402126177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022181 n) (A040056 n)

end

end A034932.P6207149115402126177

namespace A034932

/-- `A022181(n)%A040056(n)` -/
def P6207149115402126177.Spec : Prop :=
  ∀ n, P6207149115402126177.a n = A034932 n

end A034932

/-! ## A034932.P13610124203229658374

`A130909(A007318(n))`
-/

namespace A034932.P13610124203229658374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130909 (A007318 n).toNat

end

end A034932.P13610124203229658374

namespace A034932

/-- `A130909(A007318(n))` -/
def P13610124203229658374.Spec : Prop :=
  ∀ n, P13610124203229658374.a n = A034932 n

end A034932

/-!
# A034933: Expansion of theta_3(q)^2 * theta_3(q^3) in powers of q.

The programs for A034933, there is no canonical definition to state claims against.
-/

/-! ## A034933.P1205943343599572552

`abs(A224821(n))`
-/

namespace A034933.P1205943343599572552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A224821 n|

end

end A034933.P1205943343599572552

/-! ## A034933.P7238312312752417312

`A033999(n)*A224821(n)`
-/

namespace A034933.P7238312312752417312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A224821 n

end

end A034933.P7238312312752417312

/-! ## A034933.P16032226240721049439

`gcd(A000038(n), A224821(n))`
-/

namespace A034933.P16032226240721049439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A224821 n)

end

end A034933.P16032226240721049439

/-! ## A034933.P4869145870674927966

`lcm(A000034(n), A224821(n))`
-/

namespace A034933.P4869145870674927966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A224821 n)

end

end A034933.P4869145870674927966

/-! ## A034933.P11269895508035994950

`A246927(3*n)`
-/

namespace A034933.P11269895508035994950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246927 (3 * n)

end

end A034933.P11269895508035994950

/-! ## A034933.P14141135156318775270

`A246928(3*n)`
-/

namespace A034933.P14141135156318775270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246928 (3 * n)

end

end A034933.P14141135156318775270

/-! ## A034933.P16337158516984598119

`abs(A224822(3*n))`
-/

namespace A034933.P16337158516984598119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A224822 (3 * n)|

end

end A034933.P16337158516984598119

/-! ## A034933.P5552423088985214740

`A224821(n)/A057079(3*n)`
-/

namespace A034933.P5552423088985214740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224821 n : ℚ) / (A057079 (3 * n) : ℚ)

end

end A034933.P5552423088985214740

/-! ## A034933.P17424270006491672712

`sqrt(A224821(n)*A224822(3*n))`
-/

namespace A034933.P17424270006491672712
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A224821 n * A224822 (3 * n) : ℝ)

end

end A034933.P17424270006491672712

/-! ## A034933.P285498623264379312

`lcm(A176895(val(n+1, 2)), A224822(3*n))`
-/

namespace A034933.P285498623264379312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A176895 (SequenceMachineLib.valuation (n + 1) 2)) (A224822 (3 * n))

end

end A034933.P285498623264379312

/-! ## A034933.P7826238204879077361

`A057079(A008585(n))*A224821(n)`
-/

namespace A034933.P7826238204879077361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (A008585 n).toNat * A224821 n

end

end A034933.P7826238204879077361

/-! ## A034933.P10591496208426932767

`A100051(A008585(n)+1)*A224821(n)`
-/

namespace A034933.P10591496208426932767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (A008585 n + 1).toNat * A224821 n

end

end A034933.P10591496208426932767

/-! ## A034933.P17740214500637310512

`A033721(9*n)`
-/

namespace A034933.P17740214500637310512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033721 (9 * n)

end

end A034933.P17740214500637310512

/-! ## A034933.P3991092831860091700

`A028702(6*6*n)`
-/

namespace A034933.P3991092831860091700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028702 (6 * (6 * n))

end

end A034933.P3991092831860091700

/-! ## A034933.P14637023133578696118

`A100051(n²+1)*A224821(n)`
-/

namespace A034933.P14637023133578696118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (n ^ 2 + 1) * A224821 n

end

end A034933.P14637023133578696118

/-!
# A034934: Numbers k such that (3*k + 1)/2 is prime.

The programs for A034934, the canonical program `A034934.P8564178328694877679` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034934 has offset 1).

The definition of A034934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034934.P620776534342176969

`A175505(A003627(n+1))`
-/

namespace A034934.P620776534342176969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175505 (A003627 (n + 1)).toNat

end

end A034934.P620776534342176969

namespace A034934

/-- `A175505(A003627(n+1))` -/
def P620776534342176969.Spec : Prop :=
  ∀ n, P620776534342176969.a n = A034934 (n + 1)

end A034934

/-! ## A034934.P8564178328694877679

`floor(2/3*p?[3*n-1])`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034934

/-- `floor(2/3*p?[3*n-1])` -/
def P8564178328694877679.Spec : Prop :=
  ∀ n, P8564178328694877679.a n = A034934 (n + 1)

theorem P8564178328694877679.correct : P8564178328694877679.Spec := by
  intro n
  simp only [A034934, Nat.add_sub_cancel]

end A034934

/-! ## A034934.P2088201098946017432

`round(2/3*p?[3*n-1])`
-/

namespace A034934.P2088201098946017432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) / 3 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ))

end

end A034934.P2088201098946017432

namespace A034934

/-- `round(2/3*p?[3*n-1])` -/
def P2088201098946017432.Spec : Prop :=
  ∀ n, P2088201098946017432.a n = A034934 (n + 1)

end A034934

/-! ## A034934.P10204449381746206251

`(2*p?[3*n-1]-1)/3`
-/

namespace A034934.P10204449381746206251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 3

end

end A034934.P10204449381746206251

namespace A034934

/-- `(2*p?[3*n-1]-1)/3` -/
def P10204449381746206251.Spec : Prop :=
  ∀ n, P10204449381746206251.a n = (A034934 (n + 1) : ℚ)

end A034934

/-! ## A034934.P8329260293822065688

`floor(A112774(n+1)/3)`
-/

namespace A034934.P8329260293822065688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112774 (n + 1) : ℚ) / 3⌋

end

end A034934.P8329260293822065688

namespace A034934

/-- `floor(A112774(n+1)/3)` -/
def P8329260293822065688.Spec : Prop :=
  ∀ n, P8329260293822065688.a n = A034934 (n + 1)

theorem P8329260293822065688.correct : P8329260293822065688.Spec := by
  intro n
  simp only [A034934, Nat.add_sub_cancel, A034934.P8329260293822065688.a, A034934.P8564178328694877679.f1, A034934.P8564178328694877679.a, A112774, A112774.P17976456391943950983.a, A003627, A003627.P15428665616045919031.f1, A003627.P15428665616045919031.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034934

/-! ## A034934.P12602971008264416845

`2*A024893(n+1)+1`
-/

namespace A034934.P12602971008264416845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024893 (n + 1) + 1

end

end A034934.P12602971008264416845

namespace A034934

/-- `2*A024893(n+1)+1` -/
def P12602971008264416845.Spec : Prop :=
  ∀ n, P12602971008264416845.a n = A034934 (n + 1)

end A034934

/-! ## A034934.P9970382415901810942

`2*A087370(n+1)-1`
-/

namespace A034934.P9970382415901810942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087370 (n + 1) - 1

end

end A034934.P9970382415901810942

namespace A034934

/-- `2*A087370(n+1)-1` -/
def P9970382415901810942.Spec : Prop :=
  ∀ n, P9970382415901810942.a n = A034934 (n + 1)

end A034934

/-! ## A034934.P14895589682099759172

`2*A088879(n+1)+3`
-/

namespace A034934.P14895589682099759172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088879 (n + 1) + 3

end

end A034934.P14895589682099759172

namespace A034934

/-- `2*A088879(n+1)+3` -/
def P14895589682099759172.Spec : Prop :=
  ∀ n, P14895589682099759172.a n = A034934 (n + 1)

end A034934

/-! ## A034934.P9866617839051807201

`2*A228121(n+1)-3`
-/

namespace A034934.P9866617839051807201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A228121 (n + 1) - 3

end

end A034934.P9866617839051807201

namespace A034934

/-- `2*A228121(n+1)-3` -/
def P9866617839051807201.Spec : Prop :=
  ∀ n, P9866617839051807201.a n = A034934 (n + 1)

end A034934

/-! ## A034934.P10158664774153355867

`A087370(n+1)+A024893(n+1)`
-/

namespace A034934.P10158664774153355867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1) + A024893 (n + 1)

end

end A034934.P10158664774153355867

namespace A034934

/-- `A087370(n+1)+A024893(n+1)` -/
def P10158664774153355867.Spec : Prop :=
  ∀ n, P10158664774153355867.a n = A034934 (n + 1)

end A034934

/-! ## A034934.P3325738681395650898

`A228121(n+1)+A088879(n+1)`
-/

namespace A034934.P3325738681395650898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1) + A088879 (n + 1)

end

end A034934.P3325738681395650898

namespace A034934

/-- `A228121(n+1)+A088879(n+1)` -/
def P3325738681395650898.Spec : Prop :=
  ∀ n, P3325738681395650898.a n = A034934 (n + 1)

end A034934

/-! ## A034934.P6731291718920757056

`A003627(n+1)-A087370(n+1)`
-/

namespace A034934.P6731291718920757056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1) - A087370 (n + 1)

end

end A034934.P6731291718920757056

namespace A034934

/-- `A003627(n+1)-A087370(n+1)` -/
def P6731291718920757056.Spec : Prop :=
  ∀ n, P6731291718920757056.a n = A034934 (n + 1)

end A034934

/-! ## A034934.P83006004805249292

`A003627(n+1)-(A024893(n+1)+1)`
-/

namespace A034934.P83006004805249292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1) - (A024893 (n + 1) + 1)

end

end A034934.P83006004805249292

namespace A034934

/-- `A003627(n+1)-(A024893(n+1)+1)` -/
def P83006004805249292.Spec : Prop :=
  ∀ n, P83006004805249292.a n = A034934 (n + 1)

end A034934

/-! ## A034934.P15109071619539048674

`A003627(n+1)+1-A228121(n+1)`
-/

namespace A034934.P15109071619539048674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1) + (1 - A228121 (n + 1))

end

end A034934.P15109071619539048674

namespace A034934

/-- `A003627(n+1)+1-A228121(n+1)` -/
def P15109071619539048674.Spec : Prop :=
  ∀ n, P15109071619539048674.a n = A034934 (n + 1)

end A034934

/-! ## A034934.P14782549533514739939

`A323703(A091177(n+1))`
-/

namespace A034934.P14782549533514739939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323703 (A091177 (n + 1)).toNat

end

end A034934.P14782549533514739939

namespace A034934

/-- `A323703(A091177(n+1))` -/
def P14782549533514739939.Spec : Prop :=
  ∀ n, P14782549533514739939.a n = A034934 (n + 1)

end A034934

/-! ## A034934.P10381943949604649660

`A000040(A091177(n+1))-A087370(n+1)`
-/

namespace A034934.P10381943949604649660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091177 (n + 1)).toNat - A087370 (n + 1)

end

end A034934.P10381943949604649660

namespace A034934

/-- `A000040(A091177(n+1))-A087370(n+1)` -/
def P10381943949604649660.Spec : Prop :=
  ∀ n, P10381943949604649660.a n = A034934 (n + 1)

end A034934

/-! ## A034934.P16446639270104796243

`record[A000010(3*n+2)-n]`
-/

namespace A034934.P16446639270104796243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 * n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034934.P16446639270104796243

namespace A034934

/-- `record[A000010(3*n+2)-n]` -/
def P16446639270104796243.Spec : Prop :=
  ∀ n, P16446639270104796243.a n = A034934 (n + 1)

end A034934

/-! ## A034934.P8347057556612424440

`record[A006530(3*n+2)-(n+1)]`
-/

namespace A034934.P8347057556612424440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * n + 2) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034934.P8347057556612424440

namespace A034934

/-- `record[A006530(3*n+2)-(n+1)]` -/
def P8347057556612424440.Spec : Prop :=
  ∀ n, P8347057556612424440.a n = A034934 (n + 1)

end A034934

/-! ## A034934.P12729506621417521433

`record[A020639(3*n+2)-(n+1)]`
-/

namespace A034934.P12729506621417521433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * n + 2) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034934.P12729506621417521433

namespace A034934

/-- `record[A020639(3*n+2)-(n+1)]` -/
def P12729506621417521433.Spec : Prop :=
  ∀ n, P12729506621417521433.a n = A034934 (n + 1)

end A034934

/-! ## A034934.P4438247550275689718

`2*eq[2, A000005(3*n+2)]+1`
-/

namespace A034934.P4438247550275689718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A034934.P4438247550275689718

namespace A034934

/-- `2*eq[2, A000005(3*n+2)]+1` -/
def P4438247550275689718.Spec : Prop :=
  ∀ n, (P4438247550275689718.a n : ℤ) = A034934 (n + 1)

end A034934

/-!
# A034935: Successive approximations to 5-adic integer sqrt(-1).

The programs for A034935, the canonical program `A034935.P1943282245876720282` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034935 has offset 0).

The definition of A034935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034935.P1943282245876720282

`record[A048898(abs(1-abs(1-n)))]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034935

/-- `record[A048898(abs(1-abs(1-n)))]` -/
def P1943282245876720282.Spec : Prop :=
  ∀ n, P1943282245876720282.a n = A034935 n

theorem P1943282245876720282.correct : P1943282245876720282.Spec := by
  intro n
  simp only [A034935]

end A034935

/-! ## A034935.P7162232254822600458

`A048898(lt[0, A210850(n)])`
-/

namespace A034935.P7162232254822600458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A034935.P7162232254822600458

namespace A034935

/-- `A048898(lt[0, A210850(n)])` -/
def P7162232254822600458.Spec : Prop :=
  ∀ n, P7162232254822600458.a n = A034935 n

end A034935

/-! ## A034935.P11790577955788590934

`A048898(lt[A210851(n), 4])`
-/

namespace A034935.P11790577955788590934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210851 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048898 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A034935.P11790577955788590934

namespace A034935

/-- `A048898(lt[A210851(n), 4])` -/
def P11790577955788590934.Spec : Prop :=
  ∀ n, P11790577955788590934.a n = A034935 n

end A034935

/-! ## A034935.P8357628138391386583

`record[A048898(A004526(n))-A096268(n)]`
-/

namespace A034935.P8357628138391386583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048898 (A004526 n).toNat - A096268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034935.P8357628138391386583

namespace A034935

/-- `record[A048898(A004526(n))-A096268(n)]` -/
def P8357628138391386583.Spec : Prop :=
  ∀ n, P8357628138391386583.a n = A034935 n

end A034935

/-! ## A034935.P9393603963403560489

`A048898(lt[0, Δ[A048898(n)]])`
-/

namespace A034935.P9393603963403560489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A034935.P9393603963403560489

namespace A034935

/-- `A048898(lt[0, Δ[A048898(n)]])` -/
def P9393603963403560489.Spec : Prop :=
  ∀ n, P9393603963403560489.a n = A034935 n

end A034935

/-! ## A034935.P15097151371273361872

`record[A048898(n)%A048898(n+1)]`
-/

namespace A034935.P15097151371273361872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048898 n) (A048898 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034935.P15097151371273361872

namespace A034935

/-- `record[A048898(n)%A048898(n+1)]` -/
def P15097151371273361872.Spec : Prop :=
  ∀ n, P15097151371273361872.a n = A034935 n

end A034935

/-!
# A034936: Numbers k such that 3*k + 4 is prime.

The programs for A034936, the canonical program `A034936.P1115765045630556781` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034936 has offset 1).

The definition of A034936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034936.P17673071093840303941

`(p?[3*n+1]-4)/3`
-/

namespace A034936.P17673071093840303941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 4 : ℚ) / 3

end

end A034936.P17673071093840303941

namespace A034936

/-- `(p?[3*n+1]-4)/3` -/
def P17673071093840303941.Spec : Prop :=
  ∀ n, P17673071093840303941.a n = (A034936 (n + 1) : ℚ)

end A034936

/-! ## A034936.P2573110700588270830

`A089953(n+1)+1`
-/

namespace A034936.P2573110700588270830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089953 (n + 1) + 1

end

end A034936.P2573110700588270830

namespace A034936

/-- `A089953(n+1)+1` -/
def P2573110700588270830.Spec : Prop :=
  ∀ n, P2573110700588270830.a n = A034936 (n + 1)

theorem P2573110700588270830.correct : P2573110700588270830.Spec := by
  intro n
  simp only [A034936, Nat.add_sub_cancel, A034936.P2573110700588270830.a, A034936.P1115765045630556781.a, A089953, A089953.P3265903741196432824.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A016777, A016777.P9931792138852554157.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034936

/-! ## A034936.P17650639882295030432

`A024892(n+1)-1`
-/

namespace A034936.P17650639882295030432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1) - 1

end

end A034936.P17650639882295030432

namespace A034936

/-- `A024892(n+1)-1` -/
def P17650639882295030432.Spec : Prop :=
  ∀ n, P17650639882295030432.a n = A034936 (n + 1)

theorem P17650639882295030432.correct : P17650639882295030432.Spec := by
  intro n
  simp only [A034936, Nat.add_sub_cancel, A034936.P17650639882295030432.a, A034936.P1115765045630556781.a, A024892, A024892.P16415756405401507162.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A016777, A016777.P9931792138852554157.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034936

/-! ## A034936.P7306870644123271243

`A153183(n+1)-2`
-/

namespace A034936.P7306870644123271243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153183 (n + 1) - 2

end

end A034936.P7306870644123271243

namespace A034936

/-- `A153183(n+1)-2` -/
def P7306870644123271243.Spec : Prop :=
  ∀ n, P7306870644123271243.a n = A034936 (n + 1)

theorem P7306870644123271243.correct : P7306870644123271243.Spec := by
  intro n
  simp only [A034936, Nat.add_sub_cancel, A034936.P7306870644123271243.a, A034936.P1115765045630556781.a, A153183, A153183.P10933182994355425075.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A024892, A024892.P16415756405401507162.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A016777, A016777.P9931792138852554157.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034936

/-! ## A034936.P73349946101870048

`A107303(n+1)-3`
-/

namespace A034936.P73349946101870048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107303 (n + 1) - 3

end

end A034936.P73349946101870048

namespace A034936

/-- `A107303(n+1)-3` -/
def P73349946101870048.Spec : Prop :=
  ∀ n, P73349946101870048.a n = A034936 (n + 1)

theorem P73349946101870048.correct : P73349946101870048.Spec := by
  intro n
  simp only [A034936, Nat.add_sub_cancel, A034936.P73349946101870048.a, A034936.P1115765045630556781.a, A107303, A107303.P6905371674303678170.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A016777, A016777.P9931792138852554157.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034936

/-! ## A034936.P1115765045630556781

`2*A153218(n+1)+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A034936

/-- `2*A153218(n+1)+1` -/
def P1115765045630556781.Spec : Prop :=
  ∀ n, P1115765045630556781.a n = A034936 (n + 1)

theorem P1115765045630556781.correct : P1115765045630556781.Spec := by
  intro n
  simp only [A034936, Nat.add_sub_cancel]

end A034936

/-! ## A034936.P13660111014690920362

`2*A024899(n+1)-1`
-/

namespace A034936.P13660111014690920362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024899 (n + 1) - 1

end

end A034936.P13660111014690920362

namespace A034936

/-- `2*A024899(n+1)-1` -/
def P13660111014690920362.Spec : Prop :=
  ∀ n, P13660111014690920362.a n = A034936 (n + 1)

end A034936

/-! ## A034936.P3350936266963940000

`(A002476(n+1)-4)/3`
-/

namespace A034936.P3350936266963940000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002476 (n + 1) - 4 : ℚ) / 3

end

end A034936.P3350936266963940000

namespace A034936

/-- `(A002476(n+1)-4)/3` -/
def P3350936266963940000.Spec : Prop :=
  ∀ n, P3350936266963940000.a n = (A034936 (n + 1) : ℚ)

end A034936

/-! ## A034936.P9919219028463582171

`A153218(n+1)+A024899(n+1)`
-/

namespace A034936.P9919219028463582171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1) + A024899 (n + 1)

end

end A034936.P9919219028463582171

namespace A034936

/-- `A153218(n+1)+A024899(n+1)` -/
def P9919219028463582171.Spec : Prop :=
  ∀ n, P9919219028463582171.a n = A034936 (n + 1)

end A034936

/-! ## A034936.P17147393839276381011

`A173177(n+1)-A024899(n+1)`
-/

namespace A034936.P17147393839276381011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173177 (n + 1) - A024899 (n + 1)

end

end A034936.P17147393839276381011

namespace A034936

/-- `A173177(n+1)-A024899(n+1)` -/
def P17147393839276381011.Spec : Prop :=
  ∀ n, P17147393839276381011.a n = A034936 (n + 1)

end A034936

/-! ## A034936.P10843649048526028163

`A002476(n+1)%A153183(n+1)`
-/

namespace A034936.P10843649048526028163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002476 (n + 1)) (A153183 (n + 1))

end

end A034936.P10843649048526028163

namespace A034936

/-- `A002476(n+1)%A153183(n+1)` -/
def P10843649048526028163.Spec : Prop :=
  ∀ n, P10843649048526028163.a n = A034936 (n + 1)

end A034936

/-! ## A034936.P14284194970851880627

`A022760(n+1)+A139394(n+1)-1`
-/

namespace A034936.P14284194970851880627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022760 (n + 1) + (A139394 (n + 1) - 1)

end

end A034936.P14284194970851880627

namespace A034936

/-- `A022760(n+1)+A139394(n+1)-1` -/
def P14284194970851880627.Spec : Prop :=
  ∀ n, P14284194970851880627.a n = A034936 (n + 1)

end A034936

/-! ## A034936.P14167283555081586175

`eq[1, A245838(n+1)]`
-/

namespace A034936.P14167283555081586175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034936.P14167283555081586175

namespace A034936

/-- `eq[1, A245838(n+1)]` -/
def P14167283555081586175.Spec : Prop :=
  ∀ n, (P14167283555081586175.a n : ℤ) = A034936 (n + 1)

end A034936

/-! ## A034936.P1566671548305772591

`A181709(A138972(n+1))-2`
-/

namespace A034936.P1566671548305772591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181709 (A138972 (n + 1)).toNat - 2

end

end A034936.P1566671548305772591

namespace A034936

/-- `A181709(A138972(n+1))-2` -/
def P1566671548305772591.Spec : Prop :=
  ∀ n, P1566671548305772591.a n = A034936 (n + 1)

end A034936

/-! ## A034936.P4161283286891689842

`A144769(A091178(n+1))-1`
-/

namespace A034936.P4161283286891689842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144769 (A091178 (n + 1)).toNat - 1

end

end A034936.P4161283286891689842

namespace A034936

/-- `A144769(A091178(n+1))-1` -/
def P4161283286891689842.Spec : Prop :=
  ∀ n, P4161283286891689842.a n = A034936 (n + 1)

end A034936

/-! ## A034936.P741556551627605746

`A144769(A171820(n+2))-1`
-/

namespace A034936.P741556551627605746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144769 (A171820 (n + 2)).toNat - 1

end

end A034936.P741556551627605746

namespace A034936

/-- `A144769(A171820(n+2))-1` -/
def P741556551627605746.Spec : Prop :=
  ∀ n, P741556551627605746.a n = A034936 (n + 1)

end A034936

/-! ## A034936.P6768470917715810064

`eq[1, A156706(n+1)]`
-/

namespace A034936.P6768470917715810064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034936.P6768470917715810064

namespace A034936

/-- `eq[1, A156706(n+1)]` -/
def P6768470917715810064.Spec : Prop :=
  ∀ n, (P6768470917715810064.a n : ℤ) = A034936 (n + 1)

end A034936

/-! ## A034936.P11471973341462004007

`eq[1, A001222(3*n+4)]`
-/

namespace A034936.P11471973341462004007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034936.P11471973341462004007

namespace A034936

/-- `eq[1, A001222(3*n+4)]` -/
def P11471973341462004007.Spec : Prop :=
  ∀ n, (P11471973341462004007.a n : ℤ) = A034936 (n + 1)

end A034936

/-! ## A034936.P14051834860442507187

`eq[2, A000005(3*n+4)]`
-/

namespace A034936.P14051834860442507187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034936.P14051834860442507187

namespace A034936

/-- `eq[2, A000005(3*n+4)]` -/
def P14051834860442507187.Spec : Prop :=
  ∀ n, (P14051834860442507187.a n : ℤ) = A034936 (n + 1)

end A034936

/-! ## A034936.P4182843347263906939

`lt[A001222(3*(n+1)+1), 2]`
-/

namespace A034936.P4182843347263906939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * (n + 1) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A034936.P4182843347263906939

namespace A034936

/-- `lt[A001222(3*(n+1)+1), 2]` -/
def P4182843347263906939.Spec : Prop :=
  ∀ n, (P4182843347263906939.a n : ℤ) = A034936 (n + 1)

end A034936

/-!
# A034937: Primes p of the form 6k-1 such that 2*p + 3 is prime.

The programs for A034937, there is no canonical definition to state claims against.
-/

/-! ## A034937.P14972945947474728916

`(A034938(n+1)-3)/2`
-/

namespace A034937.P14972945947474728916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034938 (n + 1) - 3 : ℚ) / 2

end

end A034937.P14972945947474728916

/-! ## A034937.P1846462797267971696

`∩[A007528(n+1), A023204(n+1)]`
-/

namespace A034937.P1846462797267971696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034937.P1846462797267971696

/-! ## A034937.P11719914349477610483

`∩[A023204(n+1), A045410(n+1)]`
-/

namespace A034937.P11719914349477610483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034937.P11719914349477610483

/-! ## A034937.P10291231830375004710

`∩[A023204(n+1), A056955(n+1)]`
-/

namespace A034937.P10291231830375004710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034937.P10291231830375004710

/-! ## A034937.P4153779949419973036

`p?[A173177(n+2)]`
-/

namespace A034937.P4153779949419973036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173177 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034937.P4153779949419973036

/-! ## A034937.P12752588236859907691

`p?[A014682(A034936(n+2))]`
-/

namespace A034937.P12752588236859907691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A034936 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034937.P12752588236859907691

/-! ## A034937.P1108390158765931190

`∩[A007528(n+1), A173177(n+1)]`
-/

namespace A034937.P1108390158765931190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034937.P1108390158765931190

/-! ## A034937.P2234590060132361053

`∩[A045393(n+1), A173177(n+1)]`
-/

namespace A034937.P2234590060132361053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034937.P2234590060132361053

/-! ## A034937.P10447731874278348987

`∩[A045402(n+1), A173177(n+1)]`
-/

namespace A034937.P10447731874278348987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034937.P10447731874278348987

/-! ## A034937.P11398558063260579367

`∩[A045410(n+1), A173177(n+1)]`
-/

namespace A034937.P11398558063260579367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034937.P11398558063260579367

/-! ## A034937.P13906980209575827099

`∩[A084197(n+1), A173177(n+1)]`
-/

namespace A034937.P13906980209575827099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034937.P13906980209575827099

/-! ## A034937.P10944009960428615373

`∩[A164319(n+1), A173177(n+1)]`
-/

namespace A034937.P10944009960428615373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034937.P10944009960428615373

/-! ## A034937.P10771704858102855919

`∩[A173177(n+1), A307390(n+1)]`
-/

namespace A034937.P10771704858102855919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034937.P10771704858102855919

/-! ## A034937.P11179357294813421299

`∩[A173177(n+1), A383300(n+1)]`
-/

namespace A034937.P11179357294813421299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034937.P11179357294813421299

/-! ## A034937.P6431333065453812999

`p?[A034936(n+2)+A024899(n+2)]`
-/

namespace A034937.P6431333065453812999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 2) + A024899 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034937.P6431333065453812999

/-! ## A034937.P15202894891082653204

`∩[A173177(n+1), A245072(n+1)]`
-/

namespace A034937.P15202894891082653204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034937.P15202894891082653204

/-! ## A034937.P3686110663212785466

`∩[A023204(n+1), A259548(n+1)]`
-/

namespace A034937.P3686110663212785466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034937.P3686110663212785466

/-! ## A034937.P15862332738679086600

`∩[A096264(n+1), A173177(n+1)]`
-/

namespace A034937.P15862332738679086600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034937.P15862332738679086600

/-! ## A034937.P7160668609066710786

`∩[A106119(n+1), A173177(n+1)]`
-/

namespace A034937.P7160668609066710786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034937.P7160668609066710786

/-! ## A034937.P2817364105042523802

`∩[A006005(n+1), A173177(n+1)]`
-/

namespace A034937.P2817364105042523802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034937.P2817364105042523802

/-!
# A034938: Primes p such that (p-3)/2 is a prime of the form 6k-1.

The programs for A034938, there is no canonical definition to state claims against.
-/

/-! ## A034938.P12312083969476716841

`2*A034937(n+1)+3`
-/

namespace A034938.P12312083969476716841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034937 (n + 1) + 3

end

end A034938.P12312083969476716841

/-! ## A034938.P12595763258015924

`3*A038536(n+1)+4`
-/

namespace A034938.P12595763258015924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A038536 (n + 1) + 4

end

end A034938.P12595763258015924

/-! ## A034938.P5479942001171327605

`∩[A068228(n+1), A089531(n+1)]`
-/

namespace A034938.P5479942001171327605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034938.P5479942001171327605

/-! ## A034938.P11214384932985129678

`p?[2*(p?[3*n+5]+1)+1]`
-/

namespace A034938.P11214384932985129678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A034938.P11214384932985129678

/-! ## A034938.P12326457819452324090

`p?[A112774(n+2)+3]`
-/

namespace A034938.P12326457819452324090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112774 (n + 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034938.P12326457819452324090

/-! ## A034938.P713043776599451213

`p?[2*A007528(n+1)+3]`
-/

namespace A034938.P713043776599451213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007528 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034938.P713043776599451213

/-! ## A034938.P10653099720193040597

`p?[2*A045410(n+2)+3]`
-/

namespace A034938.P10653099720193040597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045410 (n + 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034938.P10653099720193040597

/-! ## A034938.P13056654778724787510

`∩[A089531(n+1), A351537(n+1)]`
-/

namespace A034938.P13056654778724787510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034938.P13056654778724787510

/-! ## A034938.P2815092264202184621

`∩[A089531(n+1), A354467(n+1)]`
-/

namespace A034938.P2815092264202184621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034938.P2815092264202184621

/-! ## A034938.P1798845203984209860

`∩[A038874(n+1), A089531(n+1)]`
-/

namespace A034938.P1798845203984209860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034938.P1798845203984209860

/-! ## A034938.P17118343358542659081

`∩[A089531(n+1), A097933(n+1)]`
-/

namespace A034938.P17118343358542659081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034938.P17118343358542659081

/-! ## A034938.P17137161811093353277

`∩[A089531(n+1), A296933(n+1)]`
-/

namespace A034938.P17137161811093353277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034938.P17137161811093353277

/-! ## A034938.P9169858396156153150

`∩[A089531(n+1), A391369(n+1)]`
-/

namespace A034938.P9169858396156153150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034938.P9169858396156153150

/-! ## A034938.P10848221207638765080

`∩[A089531(n+1), A365313(n+1)]`
-/

namespace A034938.P10848221207638765080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034938.P10848221207638765080

/-! ## A034938.P11753579775275672924

`∩[A038874(n+1), A129069(n+1)]`
-/

namespace A034938.P11753579775275672924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034938.P11753579775275672924

/-! ## A034938.P17898302816826102853

`∩[A068228(n+1), A129069(n+1)]`
-/

namespace A034938.P17898302816826102853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034938.P17898302816826102853

/-! ## A034938.P11547539799780192094

`∩[A097933(n+1), A129069(n+1)]`
-/

namespace A034938.P11547539799780192094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034938.P11547539799780192094

/-! ## A034938.P13311211828423132889

`∩[A129069(n+1), A296933(n+1)]`
-/

namespace A034938.P13311211828423132889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034938.P13311211828423132889

/-! ## A034938.P5296349919197313282

`∩[A089531(n+1), A353198(n+1)]`
-/

namespace A034938.P5296349919197313282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034938.P5296349919197313282

/-! ## A034938.P8119026315706890904

`∩[A089531(n+1), A155560(n+1)]`
-/

namespace A034938.P8119026315706890904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034938.P8119026315706890904

/-!
# A034939: a(n) is smallest number such that a(n)^2 + 1 is divisible by 5^n.

The programs for A034939, the canonical program `A034939.P731908720823549946` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034939 has offset 0).

The definition of A034939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034939.P731908720823549946

`abs(A048899(n)-A268922(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A034939

/-- `abs(A048899(n)-A268922(n))` -/
def P731908720823549946.Spec : Prop :=
  ∀ n, P731908720823549946.a n = A034939 n

theorem P731908720823549946.correct : P731908720823549946.Spec := by
  intro n
  simp only [A034939]

end A034939

/-! ## A034939.P4759300784471753220

`abs(A048898(n)-A269590(n))`
-/

namespace A034939.P4759300784471753220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048898 n - A269590 n|

end

end A034939.P4759300784471753220

namespace A034939

/-- `abs(A048898(n)-A269590(n))` -/
def P4759300784471753220.Spec : Prop :=
  ∀ n, P4759300784471753220.a n = A034939 n

end A034939

/-! ## A034939.P18310240348670591293

`lcm(A048898(n)-A269590(n), A000038(n)!)`
-/

namespace A034939.P18310240348670591293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048898 n - A269590 n) (Nat.factorial (A000038 n).toNat : ℤ)

end

end A034939.P18310240348670591293

namespace A034939

/-- `lcm(A048898(n)-A269590(n), A000038(n)!)` -/
def P18310240348670591293.Spec : Prop :=
  ∀ n, (P18310240348670591293.a n : ℤ) = A034939 n

end A034939

/-! ## A034939.P12809506481079395065

`gcd(A048898(n)-A269590(n), A000038(n+1))`
-/

namespace A034939.P12809506481079395065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048898 n - A269590 n) (A000038 (n + 1))

end

end A034939.P12809506481079395065

namespace A034939

/-- `gcd(A048898(n)-A269590(n), A000038(n+1))` -/
def P12809506481079395065.Spec : Prop :=
  ∀ n, (P12809506481079395065.a n : ℤ) = A034939 n

end A034939

/-!
# A034940: Number of rooted labeled triangular cacti with 2n+1 nodes (n triangles).

The programs for A034940, the canonical program `A034940.P17825735528050624306` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034940 has offset 0).

The definition of A034940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034940.P17825735528050624306

`(2*n+1)^n*(2*n)!/(2^n*n!)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034940

/-- `(2*n+1)^n*(2*n)!/(2^n*n!)` -/
def P17825735528050624306.Spec : Prop :=
  ∀ n, P17825735528050624306.a n = (A034940 n : ℚ)

end A034940

/-! ## A034940.P10903365557116610824

`(2*n+1)^(n-1)*∏[Δ[n²]]`
-/

namespace A034940.P10903365557116610824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A034940.P10903365557116610824

namespace A034940

/-- `(2*n+1)^(n-1)*∏[Δ[n²]]` -/
def P10903365557116610824.Spec : Prop :=
  ∀ n, P10903365557116610824.a n = (A034940 n : ℚ)

end A034940

/-! ## A034940.P12556197723131631963

`or(1, (2*n+1)^(n-1)*∏[2*n+1])`
-/

namespace A034940.P12556197723131631963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)))

end

end A034940.P12556197723131631963

namespace A034940

/-- `or(1, (2*n+1)^(n-1)*∏[2*n+1])` -/
def P12556197723131631963.Spec : Prop :=
  ∀ n, P12556197723131631963.a n = A034940 n

end A034940

/-! ## A034940.P389964645410416675

`lcm(2*n+1, (2*n+1)^(n-1)*∏[2*n+1])`
-/

namespace A034940.P389964645410416675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)))

end

end A034940.P389964645410416675

namespace A034940

/-- `lcm(2*n+1, (2*n+1)^(n-1)*∏[2*n+1])` -/
def P389964645410416675.Spec : Prop :=
  ∀ n, (P389964645410416675.a n : ℤ) = A034940 n

end A034940

/-! ## A034940.P1113021951182140498

`A001147(n+1)/(2*n+1)^((1-n)%(n+1))`
-/

namespace A034940.P1113021951182140498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001147 (n + 1) : ℚ) / (2 * n + 1 : ℚ) ^ (Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ) : ℤ)

end

end A034940.P1113021951182140498

namespace A034940

/-- `A001147(n+1)/(2*n+1)^((1-n)%(n+1))` -/
def P1113021951182140498.Spec : Prop :=
  ∀ n, P1113021951182140498.a n = (A034940 n : ℚ)

end A034940

/-!
# A034941: Number of labeled triangular cacti with 2n+1 nodes (n triangles).

The programs for A034941, the canonical program `A034941.P11163364113472100620` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034941 has offset 0).

The definition of A034941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034941.P11163364113472100620

`A034940(n)/(2*n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034941

/-- `A034940(n)/(2*n+1)` -/
def P11163364113472100620.Spec : Prop :=
  ∀ n, P11163364113472100620.a n = (A034941 n : ℚ)

end A034941

/-! ## A034941.P2315943294422858743

`(2*n+1)^(n-1)*(2*n)!/(2^n*n!)`
-/

namespace A034941.P2315943294422858743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.factorial (2 * n) : ℚ) / (2 ^ n * Nat.factorial n : ℚ)

end

end A034941.P2315943294422858743

namespace A034941

/-- `(2*n+1)^(n-1)*(2*n)!/(2^n*n!)` -/
def P2315943294422858743.Spec : Prop :=
  ∀ n, P2315943294422858743.a n = (A034941 n : ℚ)

end A034941

/-! ## A034941.P9112607056781501747

`(2*n+1)^(n-2)*∏[Δ[n²]]`
-/

namespace A034941.P9112607056781501747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A034941.P9112607056781501747

namespace A034941

/-- `(2*n+1)^(n-2)*∏[Δ[n²]]` -/
def P9112607056781501747.Spec : Prop :=
  ∀ n, P9112607056781501747.a n = (A034941 n : ℚ)

end A034941

/-! ## A034941.P8175023854795171254

`or(1, (2*n+1)^(n-2)*∏[2*n+1])`
-/

namespace A034941.P8175023854795171254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)))

end

end A034941.P8175023854795171254

namespace A034941

/-- `or(1, (2*n+1)^(n-2)*∏[2*n+1])` -/
def P8175023854795171254.Spec : Prop :=
  ∀ n, P8175023854795171254.a n = A034941 n

end A034941

/-! ## A034941.P4747106475886356477

`lcm(2*n+1, (2*n+1)^(n-1)*∏[2*n+1])/(2*n+1)`
-/

namespace A034941.P4747106475886356477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (2 * n + 1 : ℤ) (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))) : ℚ) / (2 * n + 1 : ℚ)

end

end A034941.P4747106475886356477

namespace A034941

/-- `lcm(2*n+1, (2*n+1)^(n-1)*∏[2*n+1])/(2*n+1)` -/
def P4747106475886356477.Spec : Prop :=
  ∀ n, P4747106475886356477.a n = (A034941 n : ℚ)

end A034941

/-!
# A034942: Binomial transform of A002054.

The programs for A034942, the canonical program `A034942.P16640665796906915742` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034942 has offset 0).

The definition of A034942 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034942.P4676913205329315123

`Δ[n/2*A045868(n)]`
-/

namespace A034942.P4676913205329315123
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A045868 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034942.P4676913205329315123

namespace A034942

/-- `Δ[n/2*A045868(n)]` -/
def P4676913205329315123.Spec : Prop :=
  ∀ n, P4676913205329315123.a n = (A034942 n : ℚ)

end A034942

/-! ## A034942.P547106511860559767

`Δ[n/2*Δ[A002212(n)]]`
-/

namespace A034942.P547106511860559767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034942.P547106511860559767

namespace A034942

/-- `Δ[n/2*Δ[A002212(n)]]` -/
def P547106511860559767.Spec : Prop :=
  ∀ n, P547106511860559767.a n = (A034942 n : ℚ)

end A034942

/-! ## A034942.P16640665796906915742

`A026388(n+2)-A129160(n+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A034942

/-- `A026388(n+2)-A129160(n+2)` -/
def P16640665796906915742.Spec : Prop :=
  ∀ n, P16640665796906915742.a n = A034942 n

theorem P16640665796906915742.correct : P16640665796906915742.Spec := by
  intro n
  simp only [A034942]

end A034942

/-! ## A034942.P15206057395801800150

`Δ[A026378(n+1)-∑[A045868(n)]]`
-/

namespace A034942.P15206057395801800150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026378 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034942.P15206057395801800150

namespace A034942

/-- `Δ[A026378(n+1)-∑[A045868(n)]]` -/
def P15206057395801800150.Spec : Prop :=
  ∀ n, P15206057395801800150.a n = A034942 n

end A034942

/-! ## A034942.P4681694470366125756

`Δ[A128734(n+1)+Δ[A128726(n+1)]]`
-/

namespace A034942.P4681694470366125756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128726 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128734 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034942.P4681694470366125756

namespace A034942

/-- `Δ[A128734(n+1)+Δ[A128726(n+1)]]` -/
def P4681694470366125756.Spec : Prop :=
  ∀ n, P4681694470366125756.a n = A034942 n

end A034942

/-! ## A034942.P10006001379665400008

`Δ[A026378(n+2)%A026378(n+1)]`
-/

namespace A034942.P10006001379665400008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026378 (n + 2)) (A026378 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034942.P10006001379665400008

namespace A034942

/-- `Δ[A026378(n+2)%A026378(n+1)]` -/
def P10006001379665400008.Spec : Prop :=
  ∀ n, P10006001379665400008.a n = A034942 n

end A034942

/-! ## A034942.P10562956497768175685

`Δ[record[A126791(n)-A091965(n)]]`
-/

namespace A034942.P10562956497768175685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126791 n - A091965 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034942.P10562956497768175685

namespace A034942

/-- `Δ[record[A126791(n)-A091965(n)]]` -/
def P10562956497768175685.Spec : Prop :=
  ∀ n, P10562956497768175685.a n = A034942 n

end A034942

/-! ## A034942.P3018502630160009526

`Δ[A126791(A000124(n))%A026378(n+1)]`
-/

namespace A034942.P3018502630160009526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126791 (A000124 n).toNat) (A026378 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034942.P3018502630160009526

namespace A034942

/-- `Δ[A126791(A000124(n))%A026378(n+1)]` -/
def P3018502630160009526.Spec : Prop :=
  ∀ n, P3018502630160009526.a n = A034942 n

end A034942

/-!
# A034943: Binomial transform of Padovan sequence A000931.

The programs for A034943, the canonical program `A034943.P7979161656748620110` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034943 has offset 0).

The definition of A034943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034943.P7979161656748620110

`3*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034943

/-- `3*a(n-1)-2*a(n-2)+a(n-3)` -/
def P7979161656748620110.Spec : Prop :=
  ∀ n, P7979161656748620110.a n = A034943 n

theorem P7979161656748620110.correct : P7979161656748620110.Spec := by
  intro n
  simp only [A034943]

end A034943

/-! ## A034943.P11623531557239602872

`ogf((1-2x)/(1-3x+2x^2-x^3))`
-/

namespace A034943.P11623531557239602872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -3, 2, -1] n

end

end A034943.P11623531557239602872

namespace A034943

/-- `ogf((1-2x)/(1-3x+2x^2-x^3))` -/
def P11623531557239602872.Spec : Prop :=
  ∀ n, P11623531557239602872.a n = A034943 n

end A034943

/-! ## A034943.P15267205980767702436

`A000931(3*n)`
-/

namespace A034943.P15267205980767702436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (3 * n)

end

end A034943.P15267205980767702436

namespace A034943

/-- `A000931(3*n)` -/
def P15267205980767702436.Spec : Prop :=
  ∀ n, P15267205980767702436.a n = A034943 n

end A034943

/-! ## A034943.P12497721784411836224

`∑[A078027(3*n)]`
-/

namespace A034943.P12497721784411836224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034943.P12497721784411836224

namespace A034943

/-- `∑[A078027(3*n)]` -/
def P12497721784411836224.Spec : Prop :=
  ∀ n, P12497721784411836224.a n = A034943 n

end A034943

/-! ## A034943.P17288428537226774164

`A078027(3*n+2)`
-/

namespace A034943.P17288428537226774164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (3 * n + 2)

end

end A034943.P17288428537226774164

namespace A034943

/-- `A078027(3*n+2)` -/
def P17288428537226774164.Spec : Prop :=
  ∀ n, P17288428537226774164.a n = A034943 n

end A034943

/-! ## A034943.P15675444148832107143

`A133034(3*n+4)`
-/

namespace A034943.P15675444148832107143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (3 * n + 4)

end

end A034943.P15675444148832107143

namespace A034943

/-- `A133034(3*n+4)` -/
def P15675444148832107143.Spec : Prop :=
  ∀ n, P15675444148832107143.a n = A034943 n

end A034943

/-! ## A034943.P55364652995283756

`A181984(A289207(n))`
-/

namespace A034943.P55364652995283756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 (A289207 n).toNat

end

end A034943.P55364652995283756

namespace A034943

/-- `A181984(A289207(n))` -/
def P55364652995283756.Spec : Prop :=
  ∀ n, P55364652995283756.a n = A034943 n

end A034943

/-! ## A034943.P12315808221472651586

`A181984(A004275(n)-n)`
-/

namespace A034943.P12315808221472651586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 (A004275 n - (n : ℤ)).toNat

end

end A034943.P12315808221472651586

namespace A034943

/-- `A181984(A004275(n)-n)` -/
def P12315808221472651586.Spec : Prop :=
  ∀ n, P12315808221472651586.a n = A034943 n

end A034943

/-! ## A034943.P17228398916261836039

`∑[A000931(A004275(n)+n)]`
-/

namespace A034943.P17228398916261836039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A004275 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034943.P17228398916261836039

namespace A034943

/-- `∑[A000931(A004275(n)+n)]` -/
def P17228398916261836039.Spec : Prop :=
  ∀ n, P17228398916261836039.a n = A034943 n

end A034943

/-! ## A034943.P3372366220370787433

`A182097(A004278(n+1)-1+n)`
-/

namespace A034943.P3372366220370787433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A004278 (n + 1) - 1 + (n : ℤ)).toNat

end

end A034943.P3372366220370787433

namespace A034943

/-- `A182097(A004278(n+1)-1+n)` -/
def P3372366220370787433.Spec : Prop :=
  ∀ n, P3372366220370787433.a n = A034943 n

end A034943

/-! ## A034943.P3620535962807242747

`A182097(A111284(n+1)-(n+1))`
-/

namespace A034943.P3620535962807242747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A111284 (n + 1) - (n + 1 : ℤ)).toNat

end

end A034943.P3620535962807242747

namespace A034943

/-- `A182097(A111284(n+1)-(n+1))` -/
def P3620535962807242747.Spec : Prop :=
  ∀ n, P3620535962807242747.a n = A034943 n

end A034943

/-! ## A034943.P9148293592057369762

`A291289(3*n)/2`
-/

namespace A034943.P9148293592057369762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291289 (3 * n) : ℚ) / 2

end

end A034943.P9148293592057369762

namespace A034943

/-- `A291289(3*n)/2` -/
def P9148293592057369762.Spec : Prop :=
  ∀ n, P9148293592057369762.a n = (A034943 n : ℚ)

end A034943

/-! ## A034943.P14638551535875134799

`abs(∑[A109248(3*n)])`
-/

namespace A034943.P14638551535875134799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109248 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A034943.P14638551535875134799

namespace A034943

/-- `abs(∑[A109248(3*n)])` -/
def P14638551535875134799.Spec : Prop :=
  ∀ n, P14638551535875134799.a n = A034943 n

end A034943

/-! ## A034943.P18281101006595833947

`A135364(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A034943.P18281101006595833947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A135364 (n - 1) - a (n - 1)

end

end A034943.P18281101006595833947

namespace A034943

/-- `A135364(n-1)-a(n-1)` -/
def P18281101006595833947.Spec : Prop :=
  ∀ n, P18281101006595833947.a n = A034943 n

end A034943

/-! ## A034943.P15350783782014796780

`A052921(n+1)-A097550(n)`
-/

namespace A034943.P15350783782014796780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 (n + 1) - A097550 n

end

end A034943.P15350783782014796780

namespace A034943

/-- `A052921(n+1)-A097550(n)` -/
def P15350783782014796780.Spec : Prop :=
  ∀ n, P15350783782014796780.a n = A034943 n

end A034943

/-! ## A034943.P15382441929563926235

`∑[A159328(n)-A159347(n+2)]`
-/

namespace A034943.P15382441929563926235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159328 n - A159347 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034943.P15382441929563926235

namespace A034943

/-- `∑[A159328(n)-A159347(n+2)]` -/
def P15382441929563926235.Spec : Prop :=
  ∀ n, P15382441929563926235.a n = A034943 n

end A034943

/-! ## A034943.P11613506060440876515

`2*A052921(n)-∑[A052921(n)]`
-/

namespace A034943.P11613506060440876515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052921 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034943.P11613506060440876515

namespace A034943

/-- `2*A052921(n)-∑[A052921(n)]` -/
def P11613506060440876515.Spec : Prop :=
  ∀ n, P11613506060440876515.a n = A034943 n

end A034943

/-! ## A034943.P5682658986925308917

`2*A052921(n)-A095263(n+1)`
-/

namespace A034943.P5682658986925308917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052921 n - A095263 (n + 1)

end

end A034943.P5682658986925308917

namespace A034943

/-- `2*A052921(n)-A095263(n+1)` -/
def P5682658986925308917.Spec : Prop :=
  ∀ n, P5682658986925308917.a n = A034943 n

end A034943

/-! ## A034943.P13820379674040870981

`Δ[Δ[A052954(3*n)]-A052954(3*n)]`
-/

namespace A034943.P13820379674040870981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A052954 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034943.P13820379674040870981

namespace A034943

/-- `Δ[Δ[A052954(3*n)]-A052954(3*n)]` -/
def P13820379674040870981.Spec : Prop :=
  ∀ n, P13820379674040870981.a n = A034943 n

end A034943

/-! ## A034943.P9213705121571283933

`A095263(n+1)+A052921(n)-A137531(n)`
-/

namespace A034943.P9213705121571283933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095263 (n + 1) + (A052921 n - A137531 n)

end

end A034943.P9213705121571283933

namespace A034943

/-- `A095263(n+1)+A052921(n)-A137531(n)` -/
def P9213705121571283933.Spec : Prop :=
  ∀ n, P9213705121571283933.a n = A034943 n

end A034943

/-!
# A034944: Successive approximations to 13-adic integer sqrt(-1).

The programs for A034944, there is no canonical definition to state claims against.
-/

/-! ## A034944.P791492073914702031

`record[A286840(A002262(n))]`
-/

namespace A034944.P791492073914702031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286840 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034944.P791492073914702031

/-! ## A034944.P3620965102264374075

`record[A286840(A056926(n))]`
-/

namespace A034944.P3620965102264374075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286840 (A056926 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034944.P3620965102264374075

/-! ## A034944.P16176861648645289623

`record[A286840(A077462(n))]`
-/

namespace A034944.P16176861648645289623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286840 (A077462 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034944.P16176861648645289623

/-! ## A034944.P15460173833191926629

`record[A286840(A092942(n))]`
-/

namespace A034944.P15460173833191926629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286840 (A092942 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034944.P15460173833191926629

/-! ## A034944.P15144282934405840995

`record[A286840(A142150(n))]`
-/

namespace A034944.P15144282934405840995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286840 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034944.P15144282934405840995

/-!
# A034945: Successive approximations to 7-adic integer sqrt(2).

The programs for A034945, there is no canonical definition to state claims against.
-/

/-! ## A034945.P2783909654999235827

`record[A290557(floor((xor(1, n)+1)/4))]`
-/

namespace A034945.P2783909654999235827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290557 ⌊(Nat.xor 1 n + 1 : ℚ) / 4⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034945.P2783909654999235827

/-! ## A034945.P2690750272516310727

`record[A290557(A002262(n))]`
-/

namespace A034945.P2690750272516310727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290557 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034945.P2690750272516310727

/-! ## A034945.P16460408532901847625

`record[A290557(A003987(n))]`
-/

namespace A034945.P16460408532901847625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290557 (A003987 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034945.P16460408532901847625

/-! ## A034945.P18022428232153019956

`record[A290557(A025581(n))]`
-/

namespace A034945.P18022428232153019956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290557 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034945.P18022428232153019956

/-! ## A034945.P9248873064210381387

`record[A290557(A079071(n))]`
-/

namespace A034945.P9248873064210381387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290557 (A079071 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034945.P9248873064210381387

/-! ## A034945.P120723078202820390

`record[A290557(A126760(n))]`
-/

namespace A034945.P120723078202820390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290557 (A126760 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034945.P120723078202820390

/-! ## A034945.P3311273192001879516

`record[A290557(A276090(n))]`
-/

namespace A034945.P3311273192001879516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290557 (A276090 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034945.P3311273192001879516

/-! ## A034945.P7170429678112384498

`record[A290557(A309892(n))]`
-/

namespace A034945.P7170429678112384498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290557 (A309892 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034945.P7170429678112384498

/-! ## A034945.P13300623769780188278

`record[A290557(log2(A059268(n)))]`
-/

namespace A034945.P13300623769780188278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290557 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034945.P13300623769780188278

/-! ## A034945.P4485071497078479010

`record[A290557(A008611(n+1))]`
-/

namespace A034945.P4485071497078479010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290557 (A008611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034945.P4485071497078479010

/-! ## A034945.P16782598742403613692

`record[A290557(A057979(n+1))]`
-/

namespace A034945.P16782598742403613692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290557 (A057979 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034945.P16782598742403613692

/-!
# A034947: Jacobi (or Kronecker) symbol (-1/n).

The programs for A034947, the canonical program `A034947.P12901732433088194458` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034947 has offset 1).

The definition of A034947 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099545, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A034947.P12901732433088194458

`2-A099545(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A034947

/-- `2-A099545(n+1)` -/
def P12901732433088194458.Spec : Prop :=
  ∀ n, P12901732433088194458.a n = A034947 (n + 1)

theorem P12901732433088194458.correct : P12901732433088194458.Spec := by
  intro n
  simp only [A034947, Nat.add_sub_cancel]

end A034947

/-! ## A034947.P3543411418272452238

`2*A014577(n)-1`
-/

namespace A034947.P3543411418272452238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014577 n - 1

end

end A034947.P3543411418272452238

namespace A034947

/-- `2*A014577(n)-1` -/
def P3543411418272452238.Spec : Prop :=
  ∀ n, P3543411418272452238.a n = A034947 (n + 1)

end A034947

/-! ## A034947.P9090697021565583578

`(-1)^A065339(n+1)`
-/

namespace A034947.P9090697021565583578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A065339 (n + 1) : ℤ)

end

end A034947.P9090697021565583578

namespace A034947

/-- `(-1)^A065339(n+1)` -/
def P9090697021565583578.Spec : Prop :=
  ∀ n, P9090697021565583578.a n = (A034947 (n + 1) : ℚ)

end A034947

/-! ## A034947.P6832279706498862991

`Δ[xor(n, 2*n)]%2`
-/

namespace A034947.P6832279706498862991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2

end

end A034947.P6832279706498862991

namespace A034947

/-- `Δ[xor(n, 2*n)]%2` -/
def P6832279706498862991.Spec : Prop :=
  ∀ n, P6832279706498862991.a n = A034947 (n + 1)

end A034947

/-! ## A034947.P2331081230360468803

`Δ[and(n, -(2*n+1))]%2`
-/

namespace A034947.P2331081230360468803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(2 * n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A034947.P2331081230360468803

namespace A034947

/-- `Δ[and(n, -(2*n+1))]%2` -/
def P2331081230360468803.Spec : Prop :=
  ∀ n, P2331081230360468803.a n = A034947 (n + 1)

end A034947

/-! ## A034947.P3016254384315292016

`or(1, -char[or(n, n-1)+n])`
-/

namespace A034947.P3016254384315292016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A034947.P3016254384315292016

namespace A034947

/-- `or(1, -char[or(n, n-1)+n])` -/
def P3016254384315292016.Spec : Prop :=
  ∀ n, P3016254384315292016.a n = A034947 (n + 1)

end A034947

/-! ## A034947.P12954343110469812437

`2*char[and(n, n+1)+n]-1`
-/

namespace A034947.P12954343110469812437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ) - 1

end

end A034947.P12954343110469812437

namespace A034947

/-- `2*char[and(n, n+1)+n]-1` -/
def P12954343110469812437.Spec : Prop :=
  ∀ n, P12954343110469812437.a n = A034947 (n + 1)

end A034947

/-! ## A034947.P17682588508672159234

`1-2*char[or(n, n-1)+n]`
-/

namespace A034947.P17682588508672159234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ)

end

end A034947.P17682588508672159234

namespace A034947

/-- `1-2*char[or(n, n-1)+n]` -/
def P17682588508672159234.Spec : Prop :=
  ∀ n, P17682588508672159234.a n = A034947 (n + 1)

end A034947

/-! ## A034947.P3154006859757567351

`3-2*ceil(ratio[acot(xor(n, 2*n))])`
-/

namespace A034947.P3154006859757567351
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Nat.xor n (2 * n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * ⌈f1 (n + 1) / f1 n⌉

end

end A034947.P3154006859757567351

namespace A034947

/-- `3-2*ceil(ratio[acot(xor(n, 2*n))])` -/
def P3154006859757567351.Spec : Prop :=
  ∀ n, P3154006859757567351.a n = A034947 (n + 1)

end A034947

/-! ## A034947.P14885578319547087255

`Δ[abs(a(n-1-and(n, 2*n))+1)]` with `a(0)=0`
-/

namespace A034947.P14885578319547087255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A034947.P14885578319547087255

namespace A034947

/-- `Δ[abs(a(n-1-and(n, 2*n))+1)]` -/
def P14885578319547087255.Spec : Prop :=
  ∀ n, P14885578319547087255.a n = A034947 (n + 1)

end A034947

/-! ## A034947.P13474282943966492181

`(-1)^(((n+1)/2^val(n+1, 2)-1)/2)`
-/

namespace A034947.P13474282943966492181
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-1 : ℝ) ^ (((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) - 1) / 2 : ℝ)

end

end A034947.P13474282943966492181

namespace A034947

/-- `(-1)^(((n+1)/2^val(n+1, 2)-1)/2)` -/
def P13474282943966492181.Spec : Prop :=
  ∀ n, P13474282943966492181.a n = (A034947 (n + 1) : ℝ)

end A034947

/-! ## A034947.P1411732066567522054

`Δ[A005811(n)]`
-/

namespace A034947.P1411732066567522054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034947.P1411732066567522054

namespace A034947

/-- `Δ[A005811(n)]` -/
def P1411732066567522054.Spec : Prop :=
  ∀ n, P1411732066567522054.a n = A034947 (n + 1)

end A034947

/-! ## A034947.P5003675439211131841

`Δ[A088748(n)]`
-/

namespace A034947.P5003675439211131841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034947.P5003675439211131841

namespace A034947

/-- `Δ[A088748(n)]` -/
def P5003675439211131841.Spec : Prop :=
  ∀ n, P5003675439211131841.a n = A034947 (n + 1)

end A034947

/-! ## A034947.P2181162907254882848

`A112347(n+1)`
-/

namespace A034947.P2181162907254882848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 (n + 1)

end

end A034947.P2181162907254882848

namespace A034947

/-- `A112347(n+1)` -/
def P2181162907254882848.Spec : Prop :=
  ∀ n, P2181162907254882848.a n = A034947 (n + 1)

end A034947

/-! ## A034947.P1279417961945047989

`(-1)^A025480(n)`
-/

namespace A034947.P1279417961945047989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A025480 n : ℤ)

end

end A034947.P1279417961945047989

namespace A034947

/-- `(-1)^A025480(n)` -/
def P1279417961945047989.Spec : Prop :=
  ∀ n, P1279417961945047989.a n = (A034947 (n + 1) : ℚ)

end A034947

/-! ## A034947.P8857984640004236101

`1-2*A014707(n)`
-/

namespace A034947.P8857984640004236101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A014707 n

end

end A034947.P8857984640004236101

namespace A034947

/-- `1-2*A014707(n)` -/
def P8857984640004236101.Spec : Prop :=
  ∀ n, P8857984640004236101.a n = A034947 (n + 1)

end A034947

/-! ## A034947.P9330788502852341144

`2*A014710(n)-3`
-/

namespace A034947.P9330788502852341144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014710 n - 3

end

end A034947.P9330788502852341144

namespace A034947

/-- `2*A014710(n)-3` -/
def P9330788502852341144.Spec : Prop :=
  ∀ n, P9330788502852341144.a n = A034947 (n + 1)

end A034947

/-! ## A034947.P3703408344823668610

`3-2*A014709(n)`
-/

namespace A034947.P3703408344823668610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A014709 n

end

end A034947.P3703408344823668610

namespace A034947

/-- `3-2*A014709(n)` -/
def P3703408344823668610.Spec : Prop :=
  ∀ n, P3703408344823668610.a n = A034947 (n + 1)

end A034947

/-! ## A034947.P490983941796232910

`A379015(n+1)%2`
-/

namespace A034947.P490983941796232910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379015 (n + 1)) 2

end

end A034947.P490983941796232910

namespace A034947

/-- `A379015(n+1)%2` -/
def P490983941796232910.Spec : Prop :=
  ∀ n, P490983941796232910.a n = A034947 (n + 1)

end A034947

/-! ## A034947.P17152978009008920394

`or(1, A317335(n+1))`
-/

namespace A034947.P17152978009008920394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A317335 (n + 1))

end

end A034947.P17152978009008920394

namespace A034947

/-- `or(1, A317335(n+1))` -/
def P17152978009008920394.Spec : Prop :=
  ∀ n, P17152978009008920394.a n = A034947 (n + 1)

end A034947

/-!
# A034950: Expansion of eta(8z)*eta(16z)*theta_3(2z).

The programs for A034950, there is no canonical definition to state claims against.
-/

/-! ## A034950.P15547723348357511328

`A072069(n+1)-A072068(n+1)/2`
-/

namespace A034950.P15547723348357511328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072069 (n + 1) : ℚ) - (A072068 (n + 1) : ℚ) / 2

end

end A034950.P15547723348357511328

/-! ## A034950.P15219172778896810692

`A072069(n+1)+A001057(A072068(n+1))`
-/

namespace A034950.P15219172778896810692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072069 (n + 1) + A001057 (A072068 (n + 1)).toNat

end

end A034950.P15219172778896810692

/-! ## A034950.P4459611311843666816

`A248394(Δ[n²])`
-/

namespace A034950.P4459611311843666816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248394 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A034950.P4459611311843666816

/-! ## A034950.P13661608129476088780

`A080963(Δ[n²])/2`
-/

namespace A034950.P13661608129476088780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080963 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A034950.P13661608129476088780

/-! ## A034950.P6568195165229131003

`A248394(2*n+1)+A248394(2*n)`
-/

namespace A034950.P6568195165229131003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248394 (2 * n + 1) + A248394 (2 * n)

end

end A034950.P6568195165229131003

/-! ## A034950.P4807962271562413278

`A080918(2*n+1)-A080917(2*n+1)/2`
-/

namespace A034950.P4807962271562413278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080918 (2 * n + 1) : ℚ) - (A080917 (2 * n + 1) : ℚ) / 2

end

end A034950.P4807962271562413278

/-! ## A034950.P348443524776080840

`(1-Δ[A064459(n)])*A248394(A005408(n))`
-/

namespace A034950.P348443524776080840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (f1 (n + 1) - f1 n)) * A248394 (A005408 n).toNat

end

end A034950.P348443524776080840

/-! ## A034950.P14292163857025185339

`A007318(A000217(n))*A248394(A005408(n))`
-/

namespace A034950.P14292163857025185339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A248394 (A005408 n).toNat

end

end A034950.P14292163857025185339

/-!
# A034952: Expansion of eta(16z)^4*eta(4z)^2.

The programs for A034952, there is no canonical definition to state claims against.
-/

/-! ## A034952.P14016916186488095700

`-(A228834(2*n+1)/4)`
-/

namespace A034952.P14016916186488095700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A228834 (2 * n + 1) : ℚ) / 4)

end

end A034952.P14016916186488095700

/-! ## A034952.P9374477017671265286

`A228834(2*n+1)/(n-A020705(n))`
-/

namespace A034952.P9374477017671265286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228834 (2 * n + 1) : ℚ) / ((n : ℤ) - A020705 n : ℚ)

end

end A034952.P9374477017671265286

/-! ## A034952.P15008690115679671180

`A228834(2*n+1)/(A055999(n)-(A052905(n)+3))`
-/

namespace A034952.P15008690115679671180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228834 (2 * n + 1) : ℚ) / (A055999 n - (A052905 n + 3) : ℚ)

end

end A034952.P15008690115679671180

/-! ## A034952.P17363208694868112654

`A193138(3*(n+1))-A228834(comp[xor(15, 2*n)]+1)/4`
-/

namespace A034952.P17363208694868112654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 15 (2 * n)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193138 (3 * (n + 1)) : ℚ) - (A228834 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℚ) / 4

end

end A034952.P17363208694868112654

/-! ## A034952.P4343026364934889314

`A228834(2*n+1)/A228834(A285068(4*n+3))`
-/

namespace A034952.P4343026364934889314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228834 (2 * n + 1) : ℚ) / (A228834 (A285068 (4 * n + 3)).toNat : ℚ)

end

end A034952.P4343026364934889314

/-!
# A034953: Triangular numbers (A000217) with prime indices.

The programs for A034953, the canonical program `A034953.P12568728140146877898` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034953 has offset 1).

The definition of A034953 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034953.P12568728140146877898

`A000217(A000040(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034953

/-- `A000217(A000040(n+1))` -/
def P12568728140146877898.Spec : Prop :=
  ∀ n, P12568728140146877898.a n = A034953 (n + 1)

theorem P12568728140146877898.correct : P12568728140146877898.Spec := by
  intro n
  simp only [A034953, Nat.add_sub_cancel]

end A034953

/-! ## A034953.P4967095141294561246

`∑[A138383(n)]`
-/

namespace A034953.P4967095141294561246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034953.P4967095141294561246

namespace A034953

/-- `∑[A138383(n)]` -/
def P4967095141294561246.Spec : Prop :=
  ∀ n, P4967095141294561246.a n = A034953 (n + 1)

end A034953

/-! ## A034953.P15486511518369229979

`A036690(n+1)/2`
-/

namespace A034953.P15486511518369229979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036690 (n + 1) : ℚ) / 2

end

end A034953.P15486511518369229979

namespace A034953

/-- `A036690(n+1)/2` -/
def P15486511518369229979.Spec : Prop :=
  ∀ n, P15486511518369229979.a n = (A034953 (n + 1) : ℚ)

theorem P15486511518369229979.correct : P15486511518369229979.Spec := by
  intro n
  simp only [A034953, Nat.add_sub_cancel, A034953.P15486511518369229979.a, A034953.P12568728140146877898.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A036690, A036690.P4894927351784660474.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A034953

/-! ## A034953.P9266564118600588312

`A367573(n+1)/4`
-/

namespace A034953.P9266564118600588312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367573 (n + 1) : ℚ) / 4

end

end A034953.P9266564118600588312

namespace A034953

/-- `A367573(n+1)/4` -/
def P9266564118600588312.Spec : Prop :=
  ∀ n, P9266564118600588312.a n = (A034953 (n + 1) : ℚ)

end A034953

/-! ## A034953.P8186807959532888480

`C(A008864(n+1), 2)`
-/

namespace A034953.P8186807959532888480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008864 (n + 1)).toNat 2

end

end A034953.P8186807959532888480

namespace A034953

/-- `C(A008864(n+1), 2)` -/
def P8186807959532888480.Spec : Prop :=
  ∀ n, (P8186807959532888480.a n : ℤ) = A034953 (n + 1)

end A034953

/-! ## A034953.P2903309188735884307

`C(A028815(n+1), 2)`
-/

namespace A034953.P2903309188735884307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028815 (n + 1)).toNat 2

end

end A034953.P2903309188735884307

namespace A034953

/-- `C(A028815(n+1), 2)` -/
def P2903309188735884307.Spec : Prop :=
  ∀ n, (P2903309188735884307.a n : ℤ) = A034953 (n + 1)

end A034953

/-! ## A034953.P7587291292005313451

`C(sqrt(A110833(n+1)), 2)`
-/

namespace A034953.P7587291292005313451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A110833 (n + 1) : ℝ))).toNat 2

end

end A034953.P7587291292005313451

namespace A034953

/-- `C(sqrt(A110833(n+1)), 2)` -/
def P7587291292005313451.Spec : Prop :=
  ∀ n, (P7587291292005313451.a n : ℤ) = A034953 (n + 1)

end A034953

/-! ## A034953.P5131896151370831029

`floor(A060800(n+1)/2)`
-/

namespace A034953.P5131896151370831029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060800 (n + 1) : ℚ) / 2⌋

end

end A034953.P5131896151370831029

namespace A034953

/-- `floor(A060800(n+1)/2)` -/
def P5131896151370831029.Spec : Prop :=
  ∀ n, P5131896151370831029.a n = A034953 (n + 1)

end A034953

/-! ## A034953.P9760638105223804856

`ceil(A319597(n+1)/2)`
-/

namespace A034953.P9760638105223804856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A319597 (n + 1) : ℚ) / 2⌉

end

end A034953.P9760638105223804856

namespace A034953

/-- `ceil(A319597(n+1)/2)` -/
def P9760638105223804856.Spec : Prop :=
  ∀ n, P9760638105223804856.a n = A034953 (n + 1)

end A034953

/-! ## A034953.P2644490699639498801

`C(∑[A125266(n+1)], 2)`
-/

namespace A034953.P2644490699639498801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A034953.P2644490699639498801

namespace A034953

/-- `C(∑[A125266(n+1)], 2)` -/
def P2644490699639498801.Spec : Prop :=
  ∀ n, (P2644490699639498801.a n : ℤ) = A034953 (n + 1)

end A034953

/-! ## A034953.P5241917951635926744

`C(Δ[A007504(n)]+1, 2)`
-/

namespace A034953.P5241917951635926744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n + 1).toNat 2

end

end A034953.P5241917951635926744

namespace A034953

/-- `C(Δ[A007504(n)]+1, 2)` -/
def P5241917951635926744.Spec : Prop :=
  ∀ n, (P5241917951635926744.a n : ℤ) = A034953 (n + 1)

end A034953

/-! ## A034953.P2381319262064704545

`A161624(n+1)+∑[n]`
-/

namespace A034953.P2381319262064704545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161624 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A034953.P2381319262064704545

namespace A034953

/-- `A161624(n+1)+∑[n]` -/
def P2381319262064704545.Spec : Prop :=
  ∀ n, P2381319262064704545.a n = A034953 (n + 1)

end A034953

/-! ## A034953.P13493030117785293763

`C(A006093(n+1)+2, 2)`
-/

namespace A034953.P13493030117785293763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006093 (n + 1) + 2).toNat 2

end

end A034953.P13493030117785293763

namespace A034953

/-- `C(A006093(n+1)+2, 2)` -/
def P13493030117785293763.Spec : Prop :=
  ∀ n, (P13493030117785293763.a n : ℤ) = A034953 (n + 1)

end A034953

/-! ## A034953.P4520538975994099585

`C(A052147(n+1)-1, 2)`
-/

namespace A034953.P4520538975994099585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A052147 (n + 1) - 1).toNat 2

end

end A034953.P4520538975994099585

namespace A034953

/-- `C(A052147(n+1)-1, 2)` -/
def P4520538975994099585.Spec : Prop :=
  ∀ n, (P4520538975994099585.a n : ℤ) = A034953 (n + 1)

end A034953

/-! ## A034953.P4126327533999210725

`C(A113935(n+1)-2, 2)`
-/

namespace A034953.P4126327533999210725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A113935 (n + 1) - 2).toNat 2

end

end A034953.P4126327533999210725

namespace A034953

/-- `C(A113935(n+1)-2, 2)` -/
def P4126327533999210725.Spec : Prop :=
  ∀ n, (P4126327533999210725.a n : ℤ) = A034953 (n + 1)

end A034953

/-! ## A034953.P11509933916332176320

`C(A089241(n+1)/2, 2)`
-/

namespace A034953.P11509933916332176320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A089241 (n + 1) : ℚ) / 2)).toNat 2

end

end A034953.P11509933916332176320

namespace A034953

/-- `C(A089241(n+1)/2, 2)` -/
def P11509933916332176320.Spec : Prop :=
  ∀ n, (P11509933916332176320.a n : ℤ) = A034953 (n + 1)

end A034953

/-! ## A034953.P7909926372898954566

`C(A014688(n+1)-n, 2)`
-/

namespace A034953.P7909926372898954566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014688 (n + 1) - (n : ℤ)).toNat 2

end

end A034953.P7909926372898954566

namespace A034953

/-- `C(A014688(n+1)-n, 2)` -/
def P7909926372898954566.Spec : Prop :=
  ∀ n, (P7909926372898954566.a n : ℤ) = A034953 (n + 1)

end A034953

/-! ## A034953.P8105983016744154579

`A161626(n+1)+A014105(n)`
-/

namespace A034953.P8105983016744154579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161626 (n + 1) + A014105 n

end

end A034953.P8105983016744154579

namespace A034953

/-- `A161626(n+1)+A014105(n)` -/
def P8105983016744154579.Spec : Prop :=
  ∀ n, P8105983016744154579.a n = A034953 (n + 1)

theorem P8105983016744154579.correct : P8105983016744154579.Spec := by
  intro n
  simp only [A034953, Nat.add_sub_cancel, A034953.P8105983016744154579.a, A034953.P12568728140146877898.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A014105, A014105.P182524374866796289.a, A161626, A161626.P12773892105089373629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A034953

/-! ## A034953.P13219003727726238618

`A008837(n+1)+A000040(n+1)`
-/

namespace A034953.P13219003727726238618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) + A000040 (n + 1)

end

end A034953.P13219003727726238618

namespace A034953

/-- `A008837(n+1)+A000040(n+1)` -/
def P13219003727726238618.Spec : Prop :=
  ∀ n, P13219003727726238618.a n = A034953 (n + 1)

end A034953

/-! ## A034953.P6011789454027517023

`A072205(n+1)+A006093(n+1)`
-/

namespace A034953.P6011789454027517023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072205 (n + 1) + A006093 (n + 1)

end

end A034953.P6011789454027517023

namespace A034953

/-- `A072205(n+1)+A006093(n+1)` -/
def P6011789454027517023.Spec : Prop :=
  ∀ n, P6011789454027517023.a n = A034953 (n + 1)

end A034953

/-!
# A034954: Odd triangular numbers with prime indices.

The programs for A034954, the canonical program `A034954.P1217636327636540373` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034954 has offset 1).

The definition of A034954 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002313, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A034954.P1217636327636540373

`A000217(A002313(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034954

/-- `A000217(A002313(n+1))` -/
def P1217636327636540373.Spec : Prop :=
  ∀ n, P1217636327636540373.a n = A034954 (n + 1)

theorem P1217636327636540373.correct : P1217636327636540373.Spec := by
  intro n
  simp only [A034954, Nat.add_sub_cancel]

end A034954

/-! ## A034954.P5961652156155883513

`C(p?[2*n-(1-gcd(2, n))]+1, 2)`
-/

namespace A034954.P5961652156155883513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (1 - (Nat.gcd 2 n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat 2

end

end A034954.P5961652156155883513

namespace A034954

/-- `C(p?[2*n-(1-gcd(2, n))]+1, 2)` -/
def P5961652156155883513.Spec : Prop :=
  ∀ n, (P5961652156155883513.a n : ℤ) = A034954 (n + 1)

end A034954

/-! ## A034954.P12201153208878038746

`C(A108546(2*n+1)+1, 2)`
-/

namespace A034954.P12201153208878038746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A108546 (2 * n + 1) + 1).toNat 2

end

end A034954.P12201153208878038746

namespace A034954

/-- `C(A108546(2*n+1)+1, 2)` -/
def P12201153208878038746.Spec : Prop :=
  ∀ n, (P12201153208878038746.a n : ℤ) = A034954 (n + 1)

end A034954

/-! ## A034954.P7937513083156189616

`C(p?[A034026(n+1)]+1, 2)`
-/

namespace A034954.P7937513083156189616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034026 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat 2

end

end A034954.P7937513083156189616

namespace A034954

/-- `C(p?[A034026(n+1)]+1, 2)` -/
def P7937513083156189616.Spec : Prop :=
  ∀ n, (P7937513083156189616.a n : ℤ) = A034954 (n + 1)

end A034954

/-! ## A034954.P2912810184903541156

`A000217(p?[or(1, n)+n])`
-/

namespace A034954.P2912810184903541156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A034954.P2912810184903541156

namespace A034954

/-- `A000217(p?[or(1, n)+n])` -/
def P2912810184903541156.Spec : Prop :=
  ∀ n, P2912810184903541156.a n = A034954 (n + 1)

end A034954

/-! ## A034954.P1607054156583150881

`A000217(p?[and(n, n+1)+n+1])`
-/

namespace A034954.P1607054156583150881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A034954.P1607054156583150881

namespace A034954

/-- `A000217(p?[and(n, n+1)+n+1])` -/
def P1607054156583150881.Spec : Prop :=
  ∀ n, P1607054156583150881.a n = A034954 (n + 1)

end A034954

/-! ## A034954.P12692977147670748304

`A000217(∏{p}[p?[a(n-1)+4], #])` with `a(0)=2, a(1)=1`
-/

namespace A034954.P12692977147670748304
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A034954.P12692977147670748304

namespace A034954

/-- `A000217(∏{p}[p?[a(n-1)+4], #])` -/
def P12692977147670748304.Spec : Prop :=
  ∀ n, P12692977147670748304.a n = A034954 (n + 1)

end A034954

/-! ## A034954.P16537816899767374685

`A000217(p?[A003814(n+1)])`
-/

namespace A034954.P16537816899767374685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A034954.P16537816899767374685

namespace A034954

/-- `A000217(p?[A003814(n+1)])` -/
def P16537816899767374685.Spec : Prop :=
  ∀ n, P16537816899767374685.a n = A034954 (n + 1)

end A034954

/-! ## A034954.P17088644687891891422

`A000217(A108546(2*n+1))`
-/

namespace A034954.P17088644687891891422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A108546 (2 * n + 1)).toNat

end

end A034954.P17088644687891891422

namespace A034954

/-- `A000217(A108546(2*n+1))` -/
def P17088644687891891422.Spec : Prop :=
  ∀ n, P17088644687891891422.a n = A034954 (n + 1)

end A034954

/-! ## A034954.P17517577869749132159

`A000217(p?[A008486(n)+1+n])`
-/

namespace A034954.P17517577869749132159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A034954.P17517577869749132159

namespace A034954

/-- `A000217(p?[A008486(n)+1+n])` -/
def P17517577869749132159.Spec : Prop :=
  ∀ n, P17517577869749132159.a n = A034954 (n + 1)

end A034954

/-! ## A034954.P14530343284496975107

`A000217(p?[A121262(n+1)+n])`
-/

namespace A034954.P14530343284496975107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A034954.P14530343284496975107

namespace A034954

/-- `A000217(p?[A121262(n+1)+n])` -/
def P14530343284496975107.Spec : Prop :=
  ∀ n, P14530343284496975107.a n = A034954 (n + 1)

end A034954

/-! ## A034954.P18399723228687126876

`A000217(p?[n*A000217(n)%2])`
-/

namespace A034954.P18399723228687126876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A000217 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A034954.P18399723228687126876

namespace A034954

/-- `A000217(p?[n*A000217(n)%2])` -/
def P18399723228687126876.Spec : Prop :=
  ∀ n, P18399723228687126876.a n = A034954 (n + 1)

end A034954

/-! ## A034954.P9305377104923970267

`A000217(p?[n*and(1, A000217(n))])`
-/

namespace A034954.P9305377104923970267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A000217 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A034954.P9305377104923970267

namespace A034954

/-- `A000217(p?[n*and(1, A000217(n))])` -/
def P9305377104923970267.Spec : Prop :=
  ∀ n, P9305377104923970267.a n = A034954 (n + 1)

end A034954

/-! ## A034954.P13200429407179681211

`A000217(A332819(A332819(A002144(n+1))))`
-/

namespace A034954.P13200429407179681211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A332819 (A332819 (A002144 (n + 1)).toNat).toNat).toNat

end

end A034954.P13200429407179681211

namespace A034954

/-- `A000217(A332819(A332819(A002144(n+1))))` -/
def P13200429407179681211.Spec : Prop :=
  ∀ n, P13200429407179681211.a n = A034954 (n + 1)

end A034954

/-! ## A034954.P1220973763713995296

`C(p?[A059029(n)+2]+1, 2)`
-/

namespace A034954.P1220973763713995296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat 2

end

end A034954.P1220973763713995296

namespace A034954

/-- `C(p?[A059029(n)+2]+1, 2)` -/
def P1220973763713995296.Spec : Prop :=
  ∀ n, (P1220973763713995296.a n : ℤ) = A034954 (n + 1)

end A034954

/-! ## A034954.P7187521909089542295

`A000217(p?[A014601(n)+2])`
-/

namespace A034954.P7187521909089542295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A034954.P7187521909089542295

namespace A034954

/-- `A000217(p?[A014601(n)+2])` -/
def P7187521909089542295.Spec : Prop :=
  ∀ n, P7187521909089542295.a n = A034954 (n + 1)

end A034954

/-! ## A034954.P9516006798725904625

`A000217(p?[A004280(2*(n+1))])`
-/

namespace A034954.P9516006798725904625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A034954.P9516006798725904625

namespace A034954

/-- `A000217(p?[A004280(2*(n+1))])` -/
def P9516006798725904625.Spec : Prop :=
  ∀ n, P9516006798725904625.a n = A034954 (n + 1)

end A034954

/-! ## A034954.P3472940193572207026

`∩[A014493(n+1), A034953(n+1)]`
-/

namespace A034954.P3472940193572207026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034954.P3472940193572207026

namespace A034954

/-- `∩[A014493(n+1), A034953(n+1)]` -/
def P3472940193572207026.Spec : Prop :=
  ∀ n, (P3472940193572207026.a n : ℤ) = A034954 (n + 1)

end A034954

/-! ## A034954.P3760693842691695950

`A001971(A294091(n+1))`
-/

namespace A034954.P3760693842691695950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A294091 (n + 1)).toNat

end

end A034954.P3760693842691695950

namespace A034954

/-- `A001971(A294091(n+1))` -/
def P3760693842691695950.Spec : Prop :=
  ∀ n, P3760693842691695950.a n = A034954 (n + 1)

end A034954

/-! ## A034954.P6899346609451407559

`A160791(2*A108546(2*n+1))`
-/

namespace A034954.P6899346609451407559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160791 (2 * A108546 (2 * n + 1)).toNat

end

end A034954.P6899346609451407559

namespace A034954

/-- `A160791(2*A108546(2*n+1))` -/
def P6899346609451407559.Spec : Prop :=
  ∀ n, P6899346609451407559.a n = A034954 (n + 1)

end A034954

/-!
# A034955: Even triangular numbers with prime indices.

The programs for A034955, the canonical program `A034955.P13886978221229841421` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034955 has offset 1).

The definition of A034955 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A034955.P13886978221229841421

`A000217(A002145(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034955

/-- `A000217(A002145(n+1))` -/
def P13886978221229841421.Spec : Prop :=
  ∀ n, P13886978221229841421.a n = A034955 (n + 1)

theorem P13886978221229841421.correct : P13886978221229841421.Spec := by
  intro n
  simp only [A034955, Nat.add_sub_cancel]

end A034955

/-! ## A034955.P9073509830857934731

`C(p?[4*n-1]+1, 2)`
-/

namespace A034955.P9073509830857934731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat 2

end

end A034955.P9073509830857934731

namespace A034955

/-- `C(p?[4*n-1]+1, 2)` -/
def P9073509830857934731.Spec : Prop :=
  ∀ n, (P9073509830857934731.a n : ℤ) = A034955 (n + 1)

end A034955

/-! ## A034955.P10847942375928799735

`C(A090658(n+1), 2)`
-/

namespace A034955.P10847942375928799735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A090658 (n + 1)).toNat 2

end

end A034955.P10847942375928799735

namespace A034955

/-- `C(A090658(n+1), 2)` -/
def P10847942375928799735.Spec : Prop :=
  ∀ n, (P10847942375928799735.a n : ℤ) = A034955 (n + 1)

end A034955

/-! ## A034955.P2149065585157823511

`(A104635(n+1)+1)*A002145(n+1)`
-/

namespace A034955.P2149065585157823511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A104635 (n + 1) + 1) * A002145 (n + 1)

end

end A034955.P2149065585157823511

namespace A034955

/-- `(A104635(n+1)+1)*A002145(n+1)` -/
def P2149065585157823511.Spec : Prop :=
  ∀ n, P2149065585157823511.a n = A034955 (n + 1)

end A034955

/-! ## A034955.P11247419608912197168

`(A090670(n+1)-1)*A002145(n+1)`
-/

namespace A034955.P11247419608912197168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090670 (n + 1) - 1) * A002145 (n + 1)

end

end A034955.P11247419608912197168

namespace A034955

/-- `(A090670(n+1)-1)*A002145(n+1)` -/
def P11247419608912197168.Spec : Prop :=
  ∀ n, P11247419608912197168.a n = A034955 (n + 1)

end A034955

/-! ## A034955.P17596770682917675661

`2*A002145(n+1)*A005099(n+1)`
-/

namespace A034955.P17596770682917675661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002145 (n + 1) * A005099 (n + 1))

end

end A034955.P17596770682917675661

namespace A034955

/-- `2*A002145(n+1)*A005099(n+1)` -/
def P17596770682917675661.Spec : Prop :=
  ∀ n, P17596770682917675661.a n = A034955 (n + 1)

end A034955

/-! ## A034955.P11937862183781553980

`(A087691(n+1)+sqrt(A087691(n+1)))/2`
-/

namespace A034955.P11937862183781553980
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A087691 (n + 1) : ℝ) + Real.sqrt (A087691 (n + 1) : ℝ)) / 2

end

end A034955.P11937862183781553980

namespace A034955

/-- `(A087691(n+1)+sqrt(A087691(n+1)))/2` -/
def P11937862183781553980.Spec : Prop :=
  ∀ n, P11937862183781553980.a n = (A034955 (n + 1) : ℝ)

end A034955

/-! ## A034955.P11370679175404049379

`(A156287(n+1)+A095278(n+1))*A002145(n+1)`
-/

namespace A034955.P11370679175404049379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A156287 (n + 1) + A095278 (n + 1)) * A002145 (n + 1)

end

end A034955.P11370679175404049379

namespace A034955

/-- `(A156287(n+1)+A095278(n+1))*A002145(n+1)` -/
def P11370679175404049379.Spec : Prop :=
  ∀ n, P11370679175404049379.a n = A034955 (n + 1)

end A034955

/-! ## A034955.P11472048459524842973

`C(A045326(n+2)+1, 2)`
-/

namespace A034955.P11472048459524842973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A045326 (n + 2) + 1).toNat 2

end

end A034955.P11472048459524842973

namespace A034955

/-- `C(A045326(n+2)+1, 2)` -/
def P11472048459524842973.Spec : Prop :=
  ∀ n, (P11472048459524842973.a n : ℤ) = A034955 (n + 1)

end A034955

/-! ## A034955.P6905833527131167561

`A144519(A138971(n+1))`
-/

namespace A034955.P6905833527131167561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144519 (A138971 (n + 1)).toNat

end

end A034955.P6905833527131167561

namespace A034955

/-- `A144519(A138971(n+1))` -/
def P6905833527131167561.Spec : Prop :=
  ∀ n, P6905833527131167561.a n = A034955 (n + 1)

end A034955

/-! ## A034955.P9770593585371233063

`A034953(A080148(n+1))`
-/

namespace A034955.P9770593585371233063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (A080148 (n + 1)).toNat

end

end A034955.P9770593585371233063

namespace A034955

/-- `A034953(A080148(n+1))` -/
def P9770593585371233063.Spec : Prop :=
  ∀ n, P9770593585371233063.a n = A034955 (n + 1)

end A034955

/-! ## A034955.P6765165342389605750

`A002145(n+1)+A282036(n+1)+A282035(n+1)`
-/

namespace A034955.P6765165342389605750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) + (A282036 (n + 1) + A282035 (n + 1))

end

end A034955.P6765165342389605750

namespace A034955

/-- `A002145(n+1)+A282036(n+1)+A282035(n+1)` -/
def P6765165342389605750.Spec : Prop :=
  ∀ n, P6765165342389605750.a n = A034955 (n + 1)

end A034955

/-! ## A034955.P9180100330330656303

`A014635(A005099(n+1))`
-/

namespace A034955.P9180100330330656303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014635 (A005099 (n + 1)).toNat

end

end A034955.P9180100330330656303

namespace A034955

/-- `A014635(A005099(n+1))` -/
def P9180100330330656303.Spec : Prop :=
  ∀ n, P9180100330330656303.a n = A034955 (n + 1)

end A034955

/-! ## A034955.P18040441498309834906

`∩[A034953(n+1), A014635(n)]`
-/

namespace A034955.P18040441498309834906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014635 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034955.P18040441498309834906

namespace A034955

/-- `∩[A034953(n+1), A014635(n)]` -/
def P18040441498309834906.Spec : Prop :=
  ∀ n, (P18040441498309834906.a n : ℤ) = A034955 (n + 1)

end A034955

/-! ## A034955.P10414663708916522705

`∩[A144519(n+1), A014635(n)]`
-/

namespace A034955.P10414663708916522705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014635 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034955.P10414663708916522705

namespace A034955

/-- `∩[A144519(n+1), A014635(n)]` -/
def P10414663708916522705.Spec : Prop :=
  ∀ n, (P10414663708916522705.a n : ℤ) = A034955 (n + 1)

end A034955

/-! ## A034955.P7776409642746267525

`∩[A147846(n+1), A014635(n)]`
-/

namespace A034955.P7776409642746267525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014635 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034955.P7776409642746267525

namespace A034955

/-- `∩[A147846(n+1), A014635(n)]` -/
def P7776409642746267525.Spec : Prop :=
  ∀ n, (P7776409642746267525.a n : ℤ) = A034955 (n + 1)

end A034955

/-! ## A034955.P8736751780116145592

`A000217(p?[4*n-1])`
-/

namespace A034955.P8736751780116145592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A034955.P8736751780116145592

namespace A034955

/-- `A000217(p?[4*n-1])` -/
def P8736751780116145592.Spec : Prop :=
  ∀ n, P8736751780116145592.a n = A034955 (n + 1)

theorem P8736751780116145592.correct : P8736751780116145592.Spec := by
  intro n
  simp only [A034955, Nat.add_sub_cancel, A034955.P8736751780116145592.f1, A034955.P8736751780116145592.a, A034955.P13886978221229841421.a, A000217, A000217.P10269402890581615239.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A034955

/-! ## A034955.P17809668578485707596

`A000217(A045326(n+2))`
-/

namespace A034955.P17809668578485707596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A045326 (n + 2)).toNat

end

end A034955.P17809668578485707596

namespace A034955

/-- `A000217(A045326(n+2))` -/
def P17809668578485707596.Spec : Prop :=
  ∀ n, P17809668578485707596.a n = A034955 (n + 1)

end A034955

/-! ## A034955.P16082375323589804925

`A000217(A281664(n+2)+1)`
-/

namespace A034955.P16082375323589804925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A281664 (n + 2) + 1).toNat

end

end A034955.P16082375323589804925

namespace A034955

/-- `A000217(A281664(n+2)+1)` -/
def P16082375323589804925.Spec : Prop :=
  ∀ n, P16082375323589804925.a n = A034955 (n + 1)

end A034955

/-! ## A034955.P4727736316578347445

`A000217(A108546(2*(n+1)))`
-/

namespace A034955.P4727736316578347445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A108546 (2 * (n + 1))).toNat

end

end A034955.P4727736316578347445

namespace A034955

/-- `A000217(A108546(2*(n+1)))` -/
def P4727736316578347445.Spec : Prop :=
  ∀ n, P4727736316578347445.a n = A034955 (n + 1)

end A034955

/-!
# A034956: Divide natural numbers in groups with prime(n) elements and add together.

The programs for A034956, the canonical program `A034956.P16124176413780656926` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034956 has offset 1).

The definition of A034956 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034960, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A034956.P5069862605719470422

`A034957(n+1)+A000040(n+1)`
-/

namespace A034956.P5069862605719470422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034957 (n + 1) + A000040 (n + 1)

end

end A034956.P5069862605719470422

namespace A034956

/-- `A034957(n+1)+A000040(n+1)` -/
def P5069862605719470422.Spec : Prop :=
  ∀ n, P5069862605719470422.a n = A034956 (n + 1)

end A034956

/-! ## A034956.P16124176413780656926

`(A034960(n+1)+A000040(n+1))/2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A034956

/-- `(A034960(n+1)+A000040(n+1))/2` -/
def P16124176413780656926.Spec : Prop :=
  ∀ n, P16124176413780656926.a n = (A034956 (n + 1) : ℚ)

end A034956

/-! ## A034956.P15369989722488205663

`(A007504(n+1)-A007504(n))*(A007504(n+1)+A007504(n)+1)/2`
-/

namespace A034956.P15369989722488205663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A007504 (n + 1) - A007504 n) * (A007504 (n + 1) + A007504 n + 1) : ℚ) / 2

end

end A034956.P15369989722488205663

namespace A034956

/-- `(A007504(n+1)-A007504(n))*(A007504(n+1)+A007504(n)+1)/2` -/
def P15369989722488205663.Spec : Prop :=
  ∀ n, P15369989722488205663.a n = (A034956 (n + 1) : ℚ)

end A034956

/-! ## A034956.P17627149220556239754

`A000217(A007504(n+1))-A000217(A007504(n))`
-/

namespace A034956.P17627149220556239754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A007504 (n + 1)).toNat - A000217 (A007504 n).toNat

end

end A034956.P17627149220556239754

namespace A034956

/-- `A000217(A007504(n+1))-A000217(A007504(n))` -/
def P17627149220556239754.Spec : Prop :=
  ∀ n, P17627149220556239754.a n = A034956 (n + 1)

end A034956

/-! ## A034956.P1821799340742885287

`Δ[C(A007504(n)+1, 2)]`
-/

namespace A034956.P1821799340742885287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007504 n + 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A034956.P1821799340742885287

namespace A034956

/-- `Δ[C(A007504(n)+1, 2)]` -/
def P1821799340742885287.Spec : Prop :=
  ∀ n, P1821799340742885287.a n = A034956 (n + 1)

end A034956

/-! ## A034956.P6878865656242591669

`A034957(n+1)+Δ[A007504(n)]`
-/

namespace A034956.P6878865656242591669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034957 (n + 1) + (f1 (n + 1) - f1 n)

end

end A034956.P6878865656242591669

namespace A034956

/-- `A034957(n+1)+Δ[A007504(n)]` -/
def P6878865656242591669.Spec : Prop :=
  ∀ n, P6878865656242591669.a n = A034956 (n + 1)

end A034956

/-! ## A034956.P13821855245253461791

`A339194(n+1)+A034953(n+1)`
-/

namespace A034956.P13821855245253461791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339194 (n + 1) + A034953 (n + 1)

end

end A034956.P13821855245253461791

namespace A034956

/-- `A339194(n+1)+A034953(n+1)` -/
def P13821855245253461791.Spec : Prop :=
  ∀ n, P13821855245253461791.a n = A034956 (n + 1)

end A034956

/-! ## A034956.P7006367726626442080

`A034960(n+1)-A034957(n+1)`
-/

namespace A034956.P7006367726626442080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034960 (n + 1) - A034957 (n + 1)

end

end A034956.P7006367726626442080

namespace A034956

/-- `A034960(n+1)-A034957(n+1)` -/
def P7006367726626442080.Spec : Prop :=
  ∀ n, P7006367726626442080.a n = A034956 (n + 1)

end A034956

/-! ## A034956.P17379398845542546856

`A143215(n+1)-A008837(n+1)`
-/

namespace A034956.P17379398845542546856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143215 (n + 1) - A008837 (n + 1)

end

end A034956.P17379398845542546856

namespace A034956

/-- `A143215(n+1)-A008837(n+1)` -/
def P17379398845542546856.Spec : Prop :=
  ∀ n, P17379398845542546856.a n = A034956 (n + 1)

end A034956

/-! ## A034956.P15406403340267590880

`A000040(n+1)+A034959(n+1)/2`
-/

namespace A034956.P15406403340267590880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) + (A034959 (n + 1) : ℚ) / 2

end

end A034956.P15406403340267590880

namespace A034956

/-- `A000040(n+1)+A034959(n+1)/2` -/
def P15406403340267590880.Spec : Prop :=
  ∀ n, P15406403340267590880.a n = (A034956 (n + 1) : ℚ)

end A034956

/-! ## A034956.P9689256666762123825

`A034960(n+1)-A034959(n+1)/2`
-/

namespace A034956.P9689256666762123825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034960 (n + 1) : ℚ) - (A034959 (n + 1) : ℚ) / 2

end

end A034956.P9689256666762123825

namespace A034956

/-- `A034960(n+1)-A034959(n+1)/2` -/
def P9689256666762123825.Spec : Prop :=
  ∀ n, P9689256666762123825.a n = (A034956 (n + 1) : ℚ)

end A034956

/-! ## A034956.P4545873859639262759

`(A061802(n)+1)*A000040(n+1)/2`
-/

namespace A034956.P4545873859639262759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A061802 n + 1) * A000040 (n + 1) : ℚ) / 2

end

end A034956.P4545873859639262759

namespace A034956

/-- `(A061802(n)+1)*A000040(n+1)/2` -/
def P4545873859639262759.Spec : Prop :=
  ∀ n, P4545873859639262759.a n = (A034956 (n + 1) : ℚ)

end A034956

/-! ## A034956.P11302846990645328041

`A007504(n+1)+A034957(n+1)-A007504(n)`
-/

namespace A034956.P11302846990645328041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + (A034957 (n + 1) - A007504 n)

end

end A034956.P11302846990645328041

namespace A034956

/-- `A007504(n+1)+A034957(n+1)-A007504(n)` -/
def P11302846990645328041.Spec : Prop :=
  ∀ n, P11302846990645328041.a n = A034956 (n + 1)

end A034956

/-! ## A034956.P16099534050729655188

`A034953(n+1)+A000040(n+1)*A007504(n)`
-/

namespace A034956.P16099534050729655188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) + A000040 (n + 1) * A007504 n

end

end A034956.P16099534050729655188

namespace A034956

/-- `A034953(n+1)+A000040(n+1)*A007504(n)` -/
def P16099534050729655188.Spec : Prop :=
  ∀ n, P16099534050729655188.a n = A034956 (n + 1)

end A034956

/-! ## A034956.P1547661859191818591

`Δ[C(A014284(n+1), 2)]`
-/

namespace A034956.P1547661859191818591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014284 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A034956.P1547661859191818591

namespace A034956

/-- `Δ[C(A014284(n+1), 2)]` -/
def P1547661859191818591.Spec : Prop :=
  ∀ n, P1547661859191818591.a n = A034956 (n + 1)

end A034956

/-! ## A034956.P15964943306128866706

`Δ[C(∑[A008578(n+1)], 2)]`
-/

namespace A034956.P15964943306128866706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A034956.P15964943306128866706

namespace A034956

/-- `Δ[C(∑[A008578(n+1)], 2)]` -/
def P15964943306128866706.Spec : Prop :=
  ∀ n, P15964943306128866706.a n = A034956 (n + 1)

end A034956

/-! ## A034956.P1197108496476146456

`Δ[C(∑[A028815(n)-1], 2)]`
-/

namespace A034956.P1197108496476146456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A034956.P1197108496476146456

namespace A034956

/-- `Δ[C(∑[A028815(n)-1], 2)]` -/
def P1197108496476146456.Spec : Prop :=
  ∀ n, P1197108496476146456.a n = A034956 (n + 1)

end A034956

/-! ## A034956.P2657015451571301783

`Δ[A014284(n+1)/2*A007504(n)]`
-/

namespace A034956.P2657015451571301783
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014284 (n + 1) : ℚ) / 2 * (A007504 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034956.P2657015451571301783

namespace A034956

/-- `Δ[A014284(n+1)/2*A007504(n)]` -/
def P2657015451571301783.Spec : Prop :=
  ∀ n, P2657015451571301783.a n = (A034956 (n + 1) : ℚ)

end A034956

/-! ## A034956.P17872882426683598952

`A082749(n+1)+A007468(n+1)`
-/

namespace A034956.P17872882426683598952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082749 (n + 1) + A007468 (n + 1)

end

end A034956.P17872882426683598952

namespace A034956

/-- `A082749(n+1)+A007468(n+1)` -/
def P17872882426683598952.Spec : Prop :=
  ∀ n, P17872882426683598952.a n = A034956 (n + 1)

end A034956

/-! ## A034956.P7488110168174625441

`A034957(n+1)+A320228(n+1)/A034958(n+1)`
-/

namespace A034956.P7488110168174625441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034957 (n + 1) : ℚ) + (A320228 (n + 1) : ℚ) / (A034958 (n + 1) : ℚ)

end

end A034956.P7488110168174625441

namespace A034956

/-- `A034957(n+1)+A320228(n+1)/A034958(n+1)` -/
def P7488110168174625441.Spec : Prop :=
  ∀ n, P7488110168174625441.a n = (A034956 (n + 1) : ℚ)

end A034956

/-!
# A034957: Divide natural numbers in groups with prime(n) elements and add together.

The programs for A034957, the canonical program `A034957.P9145438828403421056` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034957 has offset 1).

The definition of A034957 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034956, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A034957.P17540343110973508288

`A034959(n+1)/2`
-/

namespace A034957.P17540343110973508288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034959 (n + 1) : ℚ) / 2

end

end A034957.P17540343110973508288

namespace A034957

/-- `A034959(n+1)/2` -/
def P17540343110973508288.Spec : Prop :=
  ∀ n, P17540343110973508288.a n = (A034957 (n + 1) : ℚ)

theorem P17540343110973508288.correct : P17540343110973508288.Spec := by
  intro n
  simp only [A034957, Nat.add_sub_cancel, A034957.P17540343110973508288.a, A034957.P9145438828403421056.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034956, A034956.P16124176413780656926.a, A034959, A034959.P6743851652437007301.a, A034960, A034960.P12268259456304225378.a, A061802, A061802.P6001650494483680040.f1, A061802.P6001650494483680040.a, A011974, A011974.P2665693327137284562.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034957

/-! ## A034957.P9145438828403421056

`A034956(n+1)-A000040(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A034957

/-- `A034956(n+1)-A000040(n+1)` -/
def P9145438828403421056.Spec : Prop :=
  ∀ n, P9145438828403421056.a n = A034957 (n + 1)

theorem P9145438828403421056.correct : P9145438828403421056.Spec := by
  intro n
  simp only [A034957, Nat.add_sub_cancel]

end A034957

/-! ## A034957.P4051204768100523771

`(A007504(n+1)-A007504(n))*(A007504(n+1)+A007504(n)-1)/2`
-/

namespace A034957.P4051204768100523771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A007504 (n + 1) - A007504 n) * (A007504 (n + 1) + A007504 n - 1) : ℚ) / 2

end

end A034957.P4051204768100523771

namespace A034957

/-- `(A007504(n+1)-A007504(n))*(A007504(n+1)+A007504(n)-1)/2` -/
def P4051204768100523771.Spec : Prop :=
  ∀ n, P4051204768100523771.a n = (A034957 (n + 1) : ℚ)

end A034957

/-! ## A034957.P14416054908162535062

`Δ[C(A007504(n), 2)]`
-/

namespace A034957.P14416054908162535062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007504 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A034957.P14416054908162535062

namespace A034957

/-- `Δ[C(A007504(n), 2)]` -/
def P14416054908162535062.Spec : Prop :=
  ∀ n, P14416054908162535062.a n = A034957 (n + 1)

end A034957

/-! ## A034957.P14704738801968369146

`A034956(n+1)-Δ[A007504(n)]`
-/

namespace A034957.P14704738801968369146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034956 (n + 1) - (f1 (n + 1) - f1 n)

end

end A034957.P14704738801968369146

namespace A034957

/-- `A034956(n+1)-Δ[A007504(n)]` -/
def P14704738801968369146.Spec : Prop :=
  ∀ n, P14704738801968369146.a n = A034957 (n + 1)

end A034957

/-! ## A034957.P172714371711851675

`A339194(n+1)+A008837(n+1)`
-/

namespace A034957.P172714371711851675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339194 (n + 1) + A008837 (n + 1)

end

end A034957.P172714371711851675

namespace A034957

/-- `A339194(n+1)+A008837(n+1)` -/
def P172714371711851675.Spec : Prop :=
  ∀ n, P172714371711851675.a n = A034957 (n + 1)

end A034957

/-! ## A034957.P2831825321926142189

`A034960(n+1)-A034956(n+1)`
-/

namespace A034957.P2831825321926142189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034960 (n + 1) - A034956 (n + 1)

end

end A034957.P2831825321926142189

namespace A034957

/-- `A034960(n+1)-A034956(n+1)` -/
def P2831825321926142189.Spec : Prop :=
  ∀ n, P2831825321926142189.a n = A034957 (n + 1)

end A034957

/-! ## A034957.P4889310624655496225

`A143215(n+1)-A034953(n+1)`
-/

namespace A034957.P4889310624655496225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143215 (n + 1) - A034953 (n + 1)

end

end A034957.P4889310624655496225

namespace A034957

/-- `A143215(n+1)-A034953(n+1)` -/
def P4889310624655496225.Spec : Prop :=
  ∀ n, P4889310624655496225.a n = A034957 (n + 1)

end A034957

/-! ## A034957.P11620668572739244647

`(A034960(n+1)-A000040(n+1))/2`
-/

namespace A034957.P11620668572739244647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034960 (n + 1) - A000040 (n + 1) : ℚ) / 2

end

end A034957.P11620668572739244647

namespace A034957

/-- `(A034960(n+1)-A000040(n+1))/2` -/
def P11620668572739244647.Spec : Prop :=
  ∀ n, P11620668572739244647.a n = (A034957 (n + 1) : ℚ)

end A034957

/-! ## A034957.P5437769071946695958

`A034956(n+1)+A007504(n)-A007504(n+1)`
-/

namespace A034957.P5437769071946695958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034956 (n + 1) + (A007504 n - A007504 (n + 1))

end

end A034957.P5437769071946695958

namespace A034957

/-- `A034956(n+1)+A007504(n)-A007504(n+1)` -/
def P5437769071946695958.Spec : Prop :=
  ∀ n, P5437769071946695958.a n = A034957 (n + 1)

end A034957

/-! ## A034957.P5097614804282430235

`A000040(n+1)*A007504(n+1)-A034953(n+1)`
-/

namespace A034957.P5097614804282430235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A007504 (n + 1) - A034953 (n + 1)

end

end A034957.P5097614804282430235

namespace A034957

/-- `A000040(n+1)*A007504(n+1)-A034953(n+1)` -/
def P5097614804282430235.Spec : Prop :=
  ∀ n, P5097614804282430235.a n = A034957 (n + 1)

end A034957

/-! ## A034957.P16728970539839150556

`Δ[C(A014284(n+1)-1, 2)]`
-/

namespace A034957.P16728970539839150556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014284 (n + 1) - 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A034957.P16728970539839150556

namespace A034957

/-- `Δ[C(A014284(n+1)-1, 2)]` -/
def P16728970539839150556.Spec : Prop :=
  ∀ n, P16728970539839150556.a n = A034957 (n + 1)

end A034957

/-! ## A034957.P285025379539489531

`Δ[C(∑[A008578(n+1)]-1, 2)]`
-/

namespace A034957.P285025379539489531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j - 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A034957.P285025379539489531

namespace A034957

/-- `Δ[C(∑[A008578(n+1)]-1, 2)]` -/
def P285025379539489531.Spec : Prop :=
  ∀ n, P285025379539489531.a n = A034957 (n + 1)

end A034957

/-! ## A034957.P15912397089481654774

`A034956(n+1)-A008578(n+2)`
-/

namespace A034957.P15912397089481654774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034956 (n + 1) - A008578 (n + 2)

end

end A034957.P15912397089481654774

namespace A034957

/-- `A034956(n+1)-A008578(n+2)` -/
def P15912397089481654774.Spec : Prop :=
  ∀ n, P15912397089481654774.a n = A034957 (n + 1)

end A034957

/-! ## A034957.P668970574682887054

`A034956(n+1)-Δ[A014284(n+1)]`
-/

namespace A034957.P668970574682887054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034956 (n + 1) - (f1 (n + 1) - f1 n)

end

end A034957.P668970574682887054

namespace A034957

/-- `A034956(n+1)-Δ[A014284(n+1)]` -/
def P668970574682887054.Spec : Prop :=
  ∀ n, P668970574682887054.a n = A034957 (n + 1)

end A034957

/-! ## A034957.P14105742854379252159

`A034956(n+1)-Δ[A036439(n+1)]`
-/

namespace A034957.P14105742854379252159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034956 (n + 1) - (f1 (n + 1) - f1 n)

end

end A034957.P14105742854379252159

namespace A034957

/-- `A034956(n+1)-Δ[A036439(n+1)]` -/
def P14105742854379252159.Spec : Prop :=
  ∀ n, P14105742854379252159.a n = A034957 (n + 1)

end A034957

/-! ## A034957.P9160387751563294318

`A014284(n+1)+A034956(n+1)-A014284(n+2)`
-/

namespace A034957.P9160387751563294318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 1) + (A034956 (n + 1) - A014284 (n + 2))

end

end A034957.P9160387751563294318

namespace A034957

/-- `A014284(n+1)+A034956(n+1)-A014284(n+2)` -/
def P9160387751563294318.Spec : Prop :=
  ∀ n, P9160387751563294318.a n = A034957 (n + 1)

end A034957

/-! ## A034957.P18129299811181256975

`A007468(n+1)+A082749(n+1)-A000040(n+1)`
-/

namespace A034957.P18129299811181256975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007468 (n + 1) + (A082749 (n + 1) - A000040 (n + 1))

end

end A034957.P18129299811181256975

namespace A034957

/-- `A007468(n+1)+A082749(n+1)-A000040(n+1)` -/
def P18129299811181256975.Spec : Prop :=
  ∀ n, P18129299811181256975.a n = A034957 (n + 1)

end A034957

/-! ## A034957.P16591737968769783722

`A034956(n+1)-A320228(n+1)/A034958(n+1)`
-/

namespace A034957.P16591737968769783722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034956 (n + 1) : ℚ) - (A320228 (n + 1) : ℚ) / (A034958 (n + 1) : ℚ)

end

end A034957.P16591737968769783722

namespace A034957

/-- `A034956(n+1)-A320228(n+1)/A034958(n+1)` -/
def P16591737968769783722.Spec : Prop :=
  ∀ n, P16591737968769783722.a n = (A034957 (n + 1) : ℚ)

end A034957

/-! ## A034957.P18376996702113148118

`A034956(n+1)-A344891(A343809(n+1))`
-/

namespace A034957.P18376996702113148118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034956 (n + 1) - A344891 (A343809 (n + 1)).toNat

end

end A034957.P18376996702113148118

namespace A034957

/-- `A034956(n+1)-A344891(A343809(n+1))` -/
def P18376996702113148118.Spec : Prop :=
  ∀ n, P18376996702113148118.a n = A034957 (n + 1)

end A034957

/-!
# A034958: Divide primes into groups with prime(n) elements and add together.

The programs for A034958, the canonical program `A034958.P4957141392143406726` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034958 has offset 1).

The definition of A034958 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A034958.P4957141392143406726

`A007504(A007504(n+1))-A007504(A007504(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A034958

/-- `A007504(A007504(n+1))-A007504(A007504(n))` -/
def P4957141392143406726.Spec : Prop :=
  ∀ n, P4957141392143406726.a n = A034958 (n + 1)

theorem P4957141392143406726.correct : P4957141392143406726.Spec := by
  intro n
  simp only [A034958, Nat.add_sub_cancel]

end A034958

/-! ## A034958.P11776288113132084811

`A320228(n+1)/A000040(n+1)`
-/

namespace A034958.P11776288113132084811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320228 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A034958.P11776288113132084811

namespace A034958

/-- `A320228(n+1)/A000040(n+1)` -/
def P11776288113132084811.Spec : Prop :=
  ∀ n, P11776288113132084811.a n = (A034958 (n + 1) : ℚ)

end A034958

/-! ## A034958.P10035283297151949726

`A320228(n+1)/A008578(n+2)`
-/

namespace A034958.P10035283297151949726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320228 (n + 1) : ℚ) / (A008578 (n + 2) : ℚ)

end

end A034958.P10035283297151949726

namespace A034958

/-- `A320228(n+1)/A008578(n+2)` -/
def P10035283297151949726.Spec : Prop :=
  ∀ n, P10035283297151949726.a n = (A034958 (n + 1) : ℚ)

end A034958

/-! ## A034958.P11157209754493560007

`A320228(n+1)/(A034956(n+1)-A034957(n+1))`
-/

namespace A034958.P11157209754493560007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320228 (n + 1) : ℚ) / (A034956 (n + 1) - A034957 (n + 1) : ℚ)

end

end A034958.P11157209754493560007

namespace A034958

/-- `A320228(n+1)/(A034956(n+1)-A034957(n+1))` -/
def P11157209754493560007.Spec : Prop :=
  ∀ n, P11157209754493560007.a n = (A034958 (n + 1) : ℚ)

end A034958

/-! ## A034958.P7583757468526813795

`A320228(n+1)/(A034960(n+1)-A034959(n+1))`
-/

namespace A034958.P7583757468526813795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320228 (n + 1) : ℚ) / (A034960 (n + 1) - A034959 (n + 1) : ℚ)

end

end A034958.P7583757468526813795

namespace A034958

/-- `A320228(n+1)/(A034960(n+1)-A034959(n+1))` -/
def P7583757468526813795.Spec : Prop :=
  ∀ n, P7583757468526813795.a n = (A034958 (n + 1) : ℚ)

end A034958

/-! ## A034958.P4420622191139143757

`A084411(A000040(n+1))`
-/

namespace A034958.P4420622191139143757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084411 (A000040 (n + 1)).toNat

end

end A034958.P4420622191139143757

namespace A034958

/-- `A084411(A000040(n+1))` -/
def P4420622191139143757.Spec : Prop :=
  ∀ n, P4420622191139143757.a n = A034958 (n + 1)

end A034958

/-! ## A034958.P849775117260791679

`A084411(A008578(n+2))`
-/

namespace A034958.P849775117260791679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084411 (A008578 (n + 2)).toNat

end

end A034958.P849775117260791679

namespace A034958

/-- `A084411(A008578(n+2))` -/
def P849775117260791679.Spec : Prop :=
  ∀ n, P849775117260791679.a n = A034958 (n + 1)

end A034958

/-! ## A034958.P7448396643213816099

`A084411(A182986(n+2))`
-/

namespace A034958.P7448396643213816099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084411 (A182986 (n + 2)).toNat

end

end A034958.P7448396643213816099

namespace A034958

/-- `A084411(A182986(n+2))` -/
def P7448396643213816099.Spec : Prop :=
  ∀ n, P7448396643213816099.a n = A034958 (n + 1)

end A034958

/-! ## A034958.P13709422586118496761

`A320228(n+1)/p?[A060000(n+1)]`
-/

namespace A034958.P13709422586118496761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320228 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A034958.P13709422586118496761

namespace A034958

/-- `A320228(n+1)/p?[A060000(n+1)]` -/
def P13709422586118496761.Spec : Prop :=
  ∀ n, P13709422586118496761.a n = (A034958 (n + 1) : ℚ)

end A034958

/-! ## A034958.P9555534186311829558

`A320228(n+1)/p?[A080541(n+1)]`
-/

namespace A034958.P9555534186311829558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080541 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320228 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A034958.P9555534186311829558

namespace A034958

/-- `A320228(n+1)/p?[A080541(n+1)]` -/
def P9555534186311829558.Spec : Prop :=
  ∀ n, P9555534186311829558.a n = (A034958 (n + 1) : ℚ)

end A034958

/-! ## A034958.P11572779735324729314

`A320228(n+1)/p?[A199332(n+1)]`
-/

namespace A034958.P11572779735324729314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199332 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320228 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A034958.P11572779735324729314

namespace A034958

/-- `A320228(n+1)/p?[A199332(n+1)]` -/
def P11572779735324729314.Spec : Prop :=
  ∀ n, P11572779735324729314.a n = (A034958 (n + 1) : ℚ)

end A034958

/-! ## A034958.P251690877466969689

`Δ[A007504(A007504(n))]`
-/

namespace A034958.P251690877466969689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A007504 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034958.P251690877466969689

namespace A034958

/-- `Δ[A007504(A007504(n))]` -/
def P251690877466969689.Spec : Prop :=
  ∀ n, P251690877466969689.a n = A034958 (n + 1)

theorem P251690877466969689.correct : P251690877466969689.Spec := by
  intro n
  simp only [A034958, Nat.add_sub_cancel, A034958.P251690877466969689.f1, A034958.P251690877466969689.a, A034958.P4957141392143406726.a, SequenceMachineLib.memo_apply]

end A034958

/-!
# A034959: Divide even numbers into groups with prime(n) elements and add together.

The programs for A034959, the canonical program `A034959.P6743851652437007301` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034959 has offset 1).

The definition of A034959 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034957, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A034959.P6743851652437007301

`2*A034957(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A034959

/-- `2*A034957(n+1)` -/
def P6743851652437007301.Spec : Prop :=
  ∀ n, P6743851652437007301.a n = A034959 (n + 1)

theorem P6743851652437007301.correct : P6743851652437007301.Spec := by
  intro n
  simp only [A034959, Nat.add_sub_cancel]

end A034959

/-! ## A034959.P4025149469372863659

`A034960(n+1)-A000040(n+1)`
-/

namespace A034959.P4025149469372863659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034960 (n + 1) - A000040 (n + 1)

end

end A034959.P4025149469372863659

namespace A034959

/-- `A034960(n+1)-A000040(n+1)` -/
def P4025149469372863659.Spec : Prop :=
  ∀ n, P4025149469372863659.a n = A034959 (n + 1)

end A034959

/-! ## A034959.P10888000442347345706

`(A007504(n+1)-A007504(n))*(A007504(n+1)+A007504(n)-1)`
-/

namespace A034959.P10888000442347345706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) - A007504 n) * (A007504 (n + 1) + A007504 n - 1)

end

end A034959.P10888000442347345706

namespace A034959

/-- `(A007504(n+1)-A007504(n))*(A007504(n+1)+A007504(n)-1)` -/
def P10888000442347345706.Spec : Prop :=
  ∀ n, P10888000442347345706.a n = A034959 (n + 1)

end A034959

/-! ## A034959.P15373864272793169806

`Δ[2*C(A007504(n), 2)]`
-/

namespace A034959.P15373864272793169806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A007504 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A034959.P15373864272793169806

namespace A034959

/-- `Δ[2*C(A007504(n), 2)]` -/
def P15373864272793169806.Spec : Prop :=
  ∀ n, P15373864272793169806.a n = A034959 (n + 1)

end A034959

/-! ## A034959.P5987980363613609284

`A034960(n+1)-Δ[A007504(n)]`
-/

namespace A034959.P5987980363613609284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034960 (n + 1) - (f1 (n + 1) - f1 n)

end

end A034959.P5987980363613609284

namespace A034959

/-- `A034960(n+1)-Δ[A007504(n)]` -/
def P5987980363613609284.Spec : Prop :=
  ∀ n, P5987980363613609284.a n = A034959 (n + 1)

end A034959

/-! ## A034959.P1671797449508568343

`(A061802(n)-1)*A000040(n+1)`
-/

namespace A034959.P1671797449508568343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061802 n - 1) * A000040 (n + 1)

end

end A034959.P1671797449508568343

namespace A034959

/-- `(A061802(n)-1)*A000040(n+1)` -/
def P1671797449508568343.Spec : Prop :=
  ∀ n, P1671797449508568343.a n = A034959 (n + 1)

end A034959

/-! ## A034959.P6666709529726945464

`Δ[A007504(n)²]-A000040(n+1)`
-/

namespace A034959.P6666709529726945464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000040 (n + 1)

end

end A034959.P6666709529726945464

namespace A034959

/-- `Δ[A007504(n)²]-A000040(n+1)` -/
def P6666709529726945464.Spec : Prop :=
  ∀ n, P6666709529726945464.a n = A034959 (n + 1)

end A034959

/-! ## A034959.P13673460891590610477

`2*(A034956(n+1)-Δ[A007504(n)])`
-/

namespace A034959.P13673460891590610477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A034956 (n + 1) - (f1 (n + 1) - f1 n))

end

end A034959.P13673460891590610477

namespace A034959

/-- `2*(A034956(n+1)-Δ[A007504(n)])` -/
def P13673460891590610477.Spec : Prop :=
  ∀ n, P13673460891590610477.a n = A034959 (n + 1)

end A034959

/-! ## A034959.P3924817596070603331

`2*(A339194(n+1)+A008837(n+1))`
-/

namespace A034959.P3924817596070603331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A339194 (n + 1) + A008837 (n + 1))

end

end A034959.P3924817596070603331

namespace A034959

/-- `2*(A339194(n+1)+A008837(n+1))` -/
def P3924817596070603331.Spec : Prop :=
  ∀ n, P3924817596070603331.a n = A034959 (n + 1)

end A034959

/-! ## A034959.P13021646503185116409

`2*(A034956(n+1)-A000040(n+1))`
-/

namespace A034959.P13021646503185116409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A034956 (n + 1) - A000040 (n + 1))

end

end A034959.P13021646503185116409

namespace A034959

/-- `2*(A034956(n+1)-A000040(n+1))` -/
def P13021646503185116409.Spec : Prop :=
  ∀ n, P13021646503185116409.a n = A034959 (n + 1)

end A034959

/-! ## A034959.P8532160573221878816

`2*(A034960(n+1)-A034956(n+1))`
-/

namespace A034959.P8532160573221878816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A034960 (n + 1) - A034956 (n + 1))

end

end A034959.P8532160573221878816

namespace A034959

/-- `2*(A034960(n+1)-A034956(n+1))` -/
def P8532160573221878816.Spec : Prop :=
  ∀ n, P8532160573221878816.a n = A034959 (n + 1)

end A034959

/-! ## A034959.P4400173718093631658

`2*(A143215(n+1)-A034953(n+1))`
-/

namespace A034959.P4400173718093631658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A143215 (n + 1) - A034953 (n + 1))

end

end A034959.P4400173718093631658

namespace A034959

/-- `2*(A143215(n+1)-A034953(n+1))` -/
def P4400173718093631658.Spec : Prop :=
  ∀ n, P4400173718093631658.a n = A034959 (n + 1)

end A034959

/-! ## A034959.P8386654186044155180

`(∑[A011974(n+1)]-1)*A000040(n+1)`
-/

namespace A034959.P8386654186044155180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - 1) * A000040 (n + 1)

end

end A034959.P8386654186044155180

namespace A034959

/-- `(∑[A011974(n+1)]-1)*A000040(n+1)` -/
def P8386654186044155180.Spec : Prop :=
  ∀ n, P8386654186044155180.a n = A034959 (n + 1)

end A034959

/-! ## A034959.P8779155718379058783

`A034960(n+1)+A007504(n)-A007504(n+1)`
-/

namespace A034959.P8779155718379058783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034960 (n + 1) + (A007504 n - A007504 (n + 1))

end

end A034959.P8779155718379058783

namespace A034959

/-- `A034960(n+1)+A007504(n)-A007504(n+1)` -/
def P8779155718379058783.Spec : Prop :=
  ∀ n, P8779155718379058783.a n = A034959 (n + 1)

end A034959

/-! ## A034959.P4629006030747836524

`(A237589(n+1)+A007504(n))*A000040(n+1)`
-/

namespace A034959.P4629006030747836524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A237589 (n + 1) + A007504 n) * A000040 (n + 1)

end

end A034959.P4629006030747836524

namespace A034959

/-- `(A237589(n+1)+A007504(n))*A000040(n+1)` -/
def P4629006030747836524.Spec : Prop :=
  ∀ n, P4629006030747836524.a n = A034959 (n + 1)

end A034959

/-! ## A034959.P11954790975462641895

`A034960(n+1)-A034960(n+1)/A061802(n)`
-/

namespace A034959.P11954790975462641895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034960 (n + 1) : ℚ) - (A034960 (n + 1) : ℚ) / (A061802 n : ℚ)

end

end A034959.P11954790975462641895

namespace A034959

/-- `A034960(n+1)-A034960(n+1)/A061802(n)` -/
def P11954790975462641895.Spec : Prop :=
  ∀ n, P11954790975462641895.a n = (A034959 (n + 1) : ℚ)

end A034959

/-! ## A034959.P18266188072625953354

`A034956(n+1)+A034957(n+1)-A000040(n+1)`
-/

namespace A034959.P18266188072625953354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034956 (n + 1) + (A034957 (n + 1) - A000040 (n + 1))

end

end A034959.P18266188072625953354

namespace A034959

/-- `A034956(n+1)+A034957(n+1)-A000040(n+1)` -/
def P18266188072625953354.Spec : Prop :=
  ∀ n, P18266188072625953354.a n = A034959 (n + 1)

theorem P18266188072625953354.correct : P18266188072625953354.Spec := by
  intro n
  simp only [A034959, Nat.add_sub_cancel, A034959.P18266188072625953354.a, A034959.P6743851652437007301.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034956, A034956.P16124176413780656926.a, A034957, A034957.P9145438828403421056.a, A034960, A034960.P12268259456304225378.a, A061802, A061802.P6001650494483680040.f1, A061802.P6001650494483680040.a, A011974, A011974.P2665693327137284562.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034959

/-! ## A034959.P8203759345013387481

`A034957(n+1)+A034960(n+1)-A034956(n+1)`
-/

namespace A034959.P8203759345013387481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034957 (n + 1) + (A034960 (n + 1) - A034956 (n + 1))

end

end A034959.P8203759345013387481

namespace A034959

/-- `A034957(n+1)+A034960(n+1)-A034956(n+1)` -/
def P8203759345013387481.Spec : Prop :=
  ∀ n, P8203759345013387481.a n = A034959 (n + 1)

end A034959

/-! ## A034959.P1659771693268851286

`2*(A000040(n+1)*A007504(n+1)-A034953(n+1))`
-/

namespace A034959.P1659771693268851286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000040 (n + 1) * A007504 (n + 1) - A034953 (n + 1))

end

end A034959.P1659771693268851286

namespace A034959

/-- `2*(A000040(n+1)*A007504(n+1)-A034953(n+1))` -/
def P1659771693268851286.Spec : Prop :=
  ∀ n, P1659771693268851286.a n = A034959 (n + 1)

end A034959

/-! ## A034959.P15744732702852980569

`Δ[A007504(n)²-A014284(n+1)]`
-/

namespace A034959.P15744732702852980569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n ^ 2 - A014284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034959.P15744732702852980569

namespace A034959

/-- `Δ[A007504(n)²-A014284(n+1)]` -/
def P15744732702852980569.Spec : Prop :=
  ∀ n, P15744732702852980569.a n = A034959 (n + 1)

end A034959

/-!
# A034960: Divide odd numbers into groups with prime(n) elements and add together.

The programs for A034960, the canonical program `A034960.P12268259456304225378` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034960 has offset 1).

The definition of A034960 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061802, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A034960.P12268259456304225378

`A061802(n)*A000040(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A034960

/-- `A061802(n)*A000040(n+1)` -/
def P12268259456304225378.Spec : Prop :=
  ∀ n, P12268259456304225378.a n = A034960 (n + 1)

theorem P12268259456304225378.correct : P12268259456304225378.Spec := by
  intro n
  simp only [A034960, Nat.add_sub_cancel]

end A034960

/-! ## A034960.P11999065688285939637

`A034959(n+1)+A000040(n+1)`
-/

namespace A034960.P11999065688285939637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034959 (n + 1) + A000040 (n + 1)

end

end A034960.P11999065688285939637

namespace A034960

/-- `A034959(n+1)+A000040(n+1)` -/
def P11999065688285939637.Spec : Prop :=
  ∀ n, P11999065688285939637.a n = A034960 (n + 1)

end A034960

/-! ## A034960.P12450097567426608614

`A007504(n+1)²-A007504(n)²`
-/

namespace A034960.P12450097567426608614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) ^ 2 - A007504 n ^ 2

end

end A034960.P12450097567426608614

namespace A034960

/-- `A007504(n+1)²-A007504(n)²` -/
def P12450097567426608614.Spec : Prop :=
  ∀ n, P12450097567426608614.a n = A034960 (n + 1)

end A034960

/-! ## A034960.P13337663059069979045

`2*A034957(n+1)+A000040(n+1)`
-/

namespace A034960.P13337663059069979045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034957 (n + 1) + A000040 (n + 1)

end

end A034960.P13337663059069979045

namespace A034960

/-- `2*A034957(n+1)+A000040(n+1)` -/
def P13337663059069979045.Spec : Prop :=
  ∀ n, P13337663059069979045.a n = A034960 (n + 1)

end A034960

/-! ## A034960.P7037513903636510458

`2*A034956(n+1)-A000040(n+1)`
-/

namespace A034960.P7037513903636510458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034956 (n + 1) - A000040 (n + 1)

end

end A034960.P7037513903636510458

namespace A034960

/-- `2*A034956(n+1)-A000040(n+1)` -/
def P7037513903636510458.Spec : Prop :=
  ∀ n, P7037513903636510458.a n = A034960 (n + 1)

end A034960

/-! ## A034960.P6248715578357647862

`Δ[A007504(n)²]`
-/

namespace A034960.P6248715578357647862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034960.P6248715578357647862

namespace A034960

/-- `Δ[A007504(n)²]` -/
def P6248715578357647862.Spec : Prop :=
  ∀ n, P6248715578357647862.a n = A034960 (n + 1)

end A034960

/-! ## A034960.P5101799531458975875

`Δ[A007504(n)]*A061802(n)`
-/

namespace A034960.P5101799531458975875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A061802 n

end

end A034960.P5101799531458975875

namespace A034960

/-- `Δ[A007504(n)]*A061802(n)` -/
def P5101799531458975875.Spec : Prop :=
  ∀ n, P5101799531458975875.a n = A034960 (n + 1)

end A034960

/-! ## A034960.P14179278666955014326

`abs(Δ[A022837(n)]*A061802(n))`
-/

namespace A034960.P14179278666955014326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A061802 n|

end

end A034960.P14179278666955014326

namespace A034960

/-- `abs(Δ[A022837(n)]*A061802(n))` -/
def P14179278666955014326.Spec : Prop :=
  ∀ n, P14179278666955014326.a n = A034960 (n + 1)

end A034960

/-! ## A034960.P17665082998738991740

`abs(A273960(n+1))*A061802(n)`
-/

namespace A034960.P17665082998738991740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A273960 (n + 1)| * A061802 n

end

end A034960.P17665082998738991740

namespace A034960

/-- `abs(A273960(n+1))*A061802(n)` -/
def P17665082998738991740.Spec : Prop :=
  ∀ n, P17665082998738991740.a n = A034960 (n + 1)

end A034960

/-! ## A034960.P11529280882719222624

`A034959(n+1)+Δ[A007504(n)]`
-/

namespace A034960.P11529280882719222624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034959 (n + 1) + (f1 (n + 1) - f1 n)

end

end A034960.P11529280882719222624

namespace A034960

/-- `A034959(n+1)+Δ[A007504(n)]` -/
def P11529280882719222624.Spec : Prop :=
  ∀ n, P11529280882719222624.a n = A034960 (n + 1)

end A034960

/-! ## A034960.P10388091871114962500

`A034957(n+1)+A034956(n+1)`
-/

namespace A034960.P10388091871114962500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034957 (n + 1) + A034956 (n + 1)

end

end A034960.P10388091871114962500

namespace A034960

/-- `A034957(n+1)+A034956(n+1)` -/
def P10388091871114962500.Spec : Prop :=
  ∀ n, P10388091871114962500.a n = A034960 (n + 1)

end A034960

/-! ## A034960.P16707912128399815591

`A339194(n+1)+A143215(n+1)`
-/

namespace A034960.P16707912128399815591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339194 (n + 1) + A143215 (n + 1)

end

end A034960.P16707912128399815591

namespace A034960

/-- `A339194(n+1)+A143215(n+1)` -/
def P16707912128399815591.Spec : Prop :=
  ∀ n, P16707912128399815591.a n = A034960 (n + 1)

theorem P16707912128399815591.correct : P16707912128399815591.Spec := by
  intro n
  simp only [A034960, Nat.add_sub_cancel, A034960.P16707912128399815591.a, A034960.P12268259456304225378.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A061802, A061802.P6001650494483680040.f1, A061802.P6001650494483680040.a, A143215, A143215.P1994719759372848110.a, A339194, A339194.P3840768483066506201.a, A007504, A007504.P16529107901788736493.f1, A007504.P16529107901788736493.a, A011974, A011974.P2665693327137284562.a, A001043, A001043.P18269783162673735460.a, A182986, A182986.P2625431067462217415.a, A054541, A054541.P347795157194570387.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034960

/-! ## A034960.P16718140250264182639

`(A040976(n+1)+2)*A061802(n)`
-/

namespace A034960.P16718140250264182639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) * A061802 n

end

end A034960.P16718140250264182639

namespace A034960

/-- `(A040976(n+1)+2)*A061802(n)` -/
def P16718140250264182639.Spec : Prop :=
  ∀ n, P16718140250264182639.a n = A034960 (n + 1)

theorem P16718140250264182639.correct : P16718140250264182639.Spec := by
  intro n
  simp only [A034960, Nat.add_sub_cancel, A034960.P16718140250264182639.a, A034960.P12268259456304225378.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, A061802, A061802.P6001650494483680040.f1, A061802.P6001650494483680040.a, A011974, A011974.P2665693327137284562.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034960

/-! ## A034960.P1547613096251330802

`A000040(n+1)*∑[A011974(n+1)]`
-/

namespace A034960.P1547613096251330802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034960.P1547613096251330802

namespace A034960

/-- `A000040(n+1)*∑[A011974(n+1)]` -/
def P1547613096251330802.Spec : Prop :=
  ∀ n, P1547613096251330802.a n = A034960 (n + 1)

theorem P1547613096251330802.correct : P1547613096251330802.Spec := by
  intro n
  simp only [A034960, Nat.add_sub_cancel, A034960.P1547613096251330802.f1, A034960.P1547613096251330802.a, A034960.P12268259456304225378.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A011974, A011974.P2665693327137284562.a, A061802, A061802.P6001650494483680040.f1, A061802.P6001650494483680040.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034960

/-! ## A034960.P1816209968409945339

`Δ[A007504(n)]+2*A034957(n+1)`
-/

namespace A034960.P1816209968409945339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A034957 (n + 1)

end

end A034960.P1816209968409945339

namespace A034960

/-- `Δ[A007504(n)]+2*A034957(n+1)` -/
def P1816209968409945339.Spec : Prop :=
  ∀ n, P1816209968409945339.a n = A034960 (n + 1)

end A034960

/-! ## A034960.P17809011963027320357

`2*A034956(n+1)-Δ[A007504(n)]`
-/

namespace A034960.P17809011963027320357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034956 (n + 1) - (f1 (n + 1) - f1 n)

end

end A034960.P17809011963027320357

namespace A034960

/-- `2*A034956(n+1)-Δ[A007504(n)]` -/
def P17809011963027320357.Spec : Prop :=
  ∀ n, P17809011963027320357.a n = A034960 (n + 1)

end A034960

/-! ## A034960.P5727414806806205584

`A001248(n+1)+2*A339194(n+1)`
-/

namespace A034960.P5727414806806205584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + 2 * A339194 (n + 1)

end

end A034960.P5727414806806205584

namespace A034960

/-- `A001248(n+1)+2*A339194(n+1)` -/
def P5727414806806205584.Spec : Prop :=
  ∀ n, P5727414806806205584.a n = A034960 (n + 1)

end A034960

/-! ## A034960.P2411362729986736950

`A034956(n+1)+A034959(n+1)/2`
-/

namespace A034960.P2411362729986736950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034956 (n + 1) : ℚ) + (A034959 (n + 1) : ℚ) / 2

end

end A034960.P2411362729986736950

namespace A034960

/-- `A034956(n+1)+A034959(n+1)/2` -/
def P2411362729986736950.Spec : Prop :=
  ∀ n, P2411362729986736950.a n = (A034960 (n + 1) : ℚ)

end A034960

/-! ## A034960.P12637023327596441633

`2*A143215(n+1)-A001248(n+1)`
-/

namespace A034960.P12637023327596441633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143215 (n + 1) - A001248 (n + 1)

end

end A034960.P12637023327596441633

namespace A034960

/-- `2*A143215(n+1)-A001248(n+1)` -/
def P12637023327596441633.Spec : Prop :=
  ∀ n, P12637023327596441633.a n = A034960 (n + 1)

end A034960

/-!
# A034961: Sums of three consecutive primes.

The programs for A034961, the canonical program `A034961.P9480249767911558173` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034961 has offset 1).

The definition of A034961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034961.P9480249767911558173

`A001043(n+1)+A000040(n+3)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034961

/-- `A001043(n+1)+A000040(n+3)` -/
def P9480249767911558173.Spec : Prop :=
  ∀ n, P9480249767911558173.a n = A034961 (n + 1)

theorem P9480249767911558173.correct : P9480249767911558173.Spec := by
  intro n
  simp only [A034961, Nat.add_sub_cancel]

end A034961

/-! ## A034961.P1913081868883100080

`A031165(n)+a(n-1)` with `a(0)=10`
-/

namespace A034961.P1913081868883100080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A031165 n + a (n - 1)

end

end A034961.P1913081868883100080

namespace A034961

/-- `A031165(n)+a(n-1)` -/
def P1913081868883100080.Spec : Prop :=
  ∀ n, P1913081868883100080.a n = A034961 (n + 1)

end A034961

/-! ## A034961.P3402973162051554427

`A007504(n+3)-A007504(n)`
-/

namespace A034961.P3402973162051554427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 3) - A007504 n

end

end A034961.P3402973162051554427

namespace A034961

/-- `A007504(n+3)-A007504(n)` -/
def P3402973162051554427.Spec : Prop :=
  ∀ n, P3402973162051554427.a n = A034961 (n + 1)

end A034961

/-! ## A034961.P6106646596070687061

`A215848(n+1)+Δ[A061802(n)]`
-/

namespace A034961.P6106646596070687061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) + (f1 (n + 1) - f1 n)

end

end A034961.P6106646596070687061

namespace A034961

/-- `A215848(n+1)+Δ[A061802(n)]` -/
def P6106646596070687061.Spec : Prop :=
  ∀ n, P6106646596070687061.a n = A034961 (n + 1)

end A034961

/-! ## A034961.P3791309749049516557

`A215848(n+1)+A001043(n+1)`
-/

namespace A034961.P3791309749049516557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) + A001043 (n + 1)

end

end A034961.P3791309749049516557

namespace A034961

/-- `A215848(n+1)+A001043(n+1)` -/
def P3791309749049516557.Spec : Prop :=
  ∀ n, P3791309749049516557.a n = A034961 (n + 1)

theorem P3791309749049516557.correct : P3791309749049516557.Spec := by
  intro n
  simp only [A034961, Nat.add_sub_cancel, A034961.P3791309749049516557.a, A034961.P9480249767911558173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A215848, A215848.P17068717743202425727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034961

/-! ## A034961.P7176621189780682699

`A181428(n+1)+A100484(n+1)`
-/

namespace A034961.P7176621189780682699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181428 (n + 1) + A100484 (n + 1)

end

end A034961.P7176621189780682699

namespace A034961

/-- `A181428(n+1)+A100484(n+1)` -/
def P7176621189780682699.Spec : Prop :=
  ∀ n, P7176621189780682699.a n = A034961 (n + 1)

theorem P7176621189780682699.correct : P7176621189780682699.Spec := by
  intro n
  simp only [A034961, Nat.add_sub_cancel, A034961.P7176621189780682699.a, A034961.P9480249767911558173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A100484, A100484.P9678625670825099636.a, A181428, A181428.P2003735190548304675.a, A031131, A031131.P2453725465626413076.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034961

/-! ## A034961.P15316014140240162124

`A096277(n+1)-A065091(n+1)`
-/

namespace A034961.P15316014140240162124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096277 (n + 1) - A065091 (n + 1)

end

end A034961.P15316014140240162124

namespace A034961

/-- `A096277(n+1)-A065091(n+1)` -/
def P15316014140240162124.Spec : Prop :=
  ∀ n, P15316014140240162124.a n = A034961 (n + 1)

theorem P15316014140240162124.correct : P15316014140240162124.Spec := by
  intro n
  simp only [A034961, Nat.add_sub_cancel, A034961.P15316014140240162124.a, A034961.P9480249767911558173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A065091, A065091.P6971844946592549357.a, A096277, A096277.P17564688573804244660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034961

/-! ## A034961.P9311330676151312565

`A126199(n+1)-A111071(n+1)`
-/

namespace A034961.P9311330676151312565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126199 (n + 1) - A111071 (n + 1)

end

end A034961.P9311330676151312565

namespace A034961

/-- `A126199(n+1)-A111071(n+1)` -/
def P9311330676151312565.Spec : Prop :=
  ∀ n, P9311330676151312565.a n = A034961 (n + 1)

theorem P9311330676151312565.correct : P9311330676151312565.Spec := by
  intro n
  simp only [A034961, Nat.add_sub_cancel, A034961.P9311330676151312565.a, A034961.P9480249767911558173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A111071, A111071.P17768111592594357772.a, A126199, A126199.P3423459806366818693.a, A006094, A006094.P10257567645245129766.a, A180617, A180617.P4406684303062301047.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034961

/-! ## A034961.P514514228081317633

`A292926(n+1)-A037165(n+1)`
-/

namespace A034961.P514514228081317633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292926 (n + 1) - A037165 (n + 1)

end

end A034961.P514514228081317633

namespace A034961

/-- `A292926(n+1)-A037165(n+1)` -/
def P514514228081317633.Spec : Prop :=
  ∀ n, P514514228081317633.a n = A034961 (n + 1)

theorem P514514228081317633.correct : P514514228081317633.Spec := by
  intro n
  simp only [A034961, Nat.add_sub_cancel, A034961.P514514228081317633.a, A034961.P9480249767911558173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A037165, A037165.P11474511069064839000.a, A292926, A292926.P9248577169796954627.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034961

/-! ## A034961.P2385307567083325705

`A364411(n+1)+A001223(n+2)`
-/

namespace A034961.P2385307567083325705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (n + 1) + A001223 (n + 2)

end

end A034961.P2385307567083325705

namespace A034961

/-- `A364411(n+1)+A001223(n+2)` -/
def P2385307567083325705.Spec : Prop :=
  ∀ n, P2385307567083325705.a n = A034961 (n + 1)

end A034961

/-! ## A034961.P15850734536661019868

`Δ[A007504(n)]+2*A024675(n+1)`
-/

namespace A034961.P15850734536661019868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A024675 (n + 1)

end

end A034961.P15850734536661019868

namespace A034961

/-- `Δ[A007504(n)]+2*A024675(n+1)` -/
def P15850734536661019868.Spec : Prop :=
  ∀ n, P15850734536661019868.a n = A034961 (n + 1)

end A034961

/-! ## A034961.P17643864061716933999

`A000040(n+1)+2*A024675(n+1)`
-/

namespace A034961.P17643864061716933999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A024675 (n + 1)

end

end A034961.P17643864061716933999

namespace A034961

/-- `A000040(n+1)+2*A024675(n+1)` -/
def P17643864061716933999.Spec : Prop :=
  ∀ n, P17643864061716933999.a n = A034961 (n + 1)

end A034961

/-! ## A034961.P5509724687050419829

`A093667(n+1)+2*A065091(n+1)`
-/

namespace A034961.P5509724687050419829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 1) + 2 * A065091 (n + 1)

end

end A034961.P5509724687050419829

namespace A034961

/-- `A093667(n+1)+2*A065091(n+1)` -/
def P5509724687050419829.Spec : Prop :=
  ∀ n, P5509724687050419829.a n = A034961 (n + 1)

theorem P5509724687050419829.correct : P5509724687050419829.Spec := by
  intro n
  simp only [A034961, Nat.add_sub_cancel, A034961.P5509724687050419829.a, A034961.P9480249767911558173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A065091, A065091.P6971844946592549357.a, A093667, A093667.P7930936676327328865.a, A001223, A001223.P5083310856331133973.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034961

/-! ## A034961.P15114514947302492084

`A181428(n+1)+2*A000040(n+1)`
-/

namespace A034961.P15114514947302492084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181428 (n + 1) + 2 * A000040 (n + 1)

end

end A034961.P15114514947302492084

namespace A034961

/-- `A181428(n+1)+2*A000040(n+1)` -/
def P15114514947302492084.Spec : Prop :=
  ∀ n, P15114514947302492084.a n = A034961 (n + 1)

theorem P15114514947302492084.correct : P15114514947302492084.Spec := by
  intro n
  simp only [A034961, Nat.add_sub_cancel, A034961.P15114514947302492084.a, A034961.P9480249767911558173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A181428, A181428.P2003735190548304675.a, A031131, A031131.P2453725465626413076.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034961

/-! ## A034961.P17610238311958594668

`A096379(n+1)+2*A215848(n+1)`
-/

namespace A034961.P17610238311958594668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (n + 1) + 2 * A215848 (n + 1)

end

end A034961.P17610238311958594668

namespace A034961

/-- `A096379(n+1)+2*A215848(n+1)` -/
def P17610238311958594668.Spec : Prop :=
  ∀ n, P17610238311958594668.a n = A034961 (n + 1)

theorem P17610238311958594668.correct : P17610238311958594668.Spec := by
  intro n
  simp only [A034961, Nat.add_sub_cancel, A034961.P17610238311958594668.a, A034961.P9480249767911558173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A096379, A096379.P11420595779051591420.a, A215848, A215848.P17068717743202425727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034961

/-! ## A034961.P817860372121349782

`2*A001043(n+1)-A096379(n+1)`
-/

namespace A034961.P817860372121349782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001043 (n + 1) - A096379 (n + 1)

end

end A034961.P817860372121349782

namespace A034961

/-- `2*A001043(n+1)-A096379(n+1)` -/
def P817860372121349782.Spec : Prop :=
  ∀ n, P817860372121349782.a n = A034961 (n + 1)

theorem P817860372121349782.correct : P817860372121349782.Spec := by
  intro n
  simp only [A034961, Nat.add_sub_cancel, A034961.P817860372121349782.a, A034961.P9480249767911558173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A096379, A096379.P11420595779051591420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034961

/-! ## A034961.P11221086733936860529

`A001043(n+1)+A028334(n+2)+A024675(n+1)`
-/

namespace A034961.P11221086733936860529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A028334 (n + 2) + A024675 (n + 1))

end

end A034961.P11221086733936860529

namespace A034961

/-- `A001043(n+1)+A028334(n+2)+A024675(n+1)` -/
def P11221086733936860529.Spec : Prop :=
  ∀ n, P11221086733936860529.a n = A034961 (n + 1)

end A034961

/-! ## A034961.P16114167864675034361

`A100484(n+1)+A191472(n+1)+A062234(n+2)`
-/

namespace A034961.P16114167864675034361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + (A191472 (n + 1) + A062234 (n + 2))

end

end A034961.P16114167864675034361

namespace A034961

/-- `A100484(n+1)+A191472(n+1)+A062234(n+2)` -/
def P16114167864675034361.Spec : Prop :=
  ∀ n, P16114167864675034361.a n = A034961 (n + 1)

theorem P16114167864675034361.correct : P16114167864675034361.Spec := by
  intro n
  simp only [A034961, Nat.add_sub_cancel, A034961.P16114167864675034361.a, A034961.P9480249767911558173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A062234, A062234.P8592873382335253705.a, A100484, A100484.P9678625670825099636.a, A191472, A191472.P13543047471222290453.a, A096379, A096379.P11420595779051591420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034961

/-! ## A034961.P4123296086964537754

`A001223(n+2)+A001748(n+2)-A001223(n+1)`
-/

namespace A034961.P4123296086964537754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2) + (A001748 (n + 2) - A001223 (n + 1))

end

end A034961.P4123296086964537754

namespace A034961

/-- `A001223(n+2)+A001748(n+2)-A001223(n+1)` -/
def P4123296086964537754.Spec : Prop :=
  ∀ n, P4123296086964537754.a n = A034961 (n + 1)

theorem P4123296086964537754.correct : P4123296086964537754.Spec := by
  intro n
  simp only [A034961, Nat.add_sub_cancel, A034961.P4123296086964537754.a, A034961.P9480249767911558173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A001223, A001223.P5083310856331133973.a, A001748, A001748.P16019639290970068825.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034961

/-! ## A034961.P12573806883287429496

`A065091(n+2)+A001043(n+1)`
-/

namespace A034961.P12573806883287429496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) + A001043 (n + 1)

end

end A034961.P12573806883287429496

namespace A034961

/-- `A065091(n+2)+A001043(n+1)` -/
def P12573806883287429496.Spec : Prop :=
  ∀ n, P12573806883287429496.a n = A034961 (n + 1)

theorem P12573806883287429496.correct : P12573806883287429496.Spec := by
  intro n
  simp only [A034961, Nat.add_sub_cancel, A034961.P12573806883287429496.a, A034961.P9480249767911558173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034961

/-!
# A034962: Primes that are the sum of three consecutive primes.

The programs for A034962, the canonical program `A034962.P16335635607556510049` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034962 has offset 1).

The definition of A034962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034962.P16335635607556510049

`p?[A007504(n+3)-A007504(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A034962

/-- `p?[A007504(n+3)-A007504(n)]` -/
def P16335635607556510049.Spec : Prop :=
  ∀ n, P16335635607556510049.a n = A034962 (n + 1)

theorem P16335635607556510049.correct : P16335635607556510049.Spec := by
  intro n
  simp only [A034962, Nat.add_sub_cancel]

end A034962

/-! ## A034962.P4449861791722510222

`p?[A034963(n+1)-A000040(n+1)]`
-/

namespace A034962.P4449861791722510222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034962.P4449861791722510222

namespace A034962

/-- `p?[A034963(n+1)-A000040(n+1)]` -/
def P4449861791722510222.Spec : Prop :=
  ∀ n, P4449861791722510222.a n = A034962 (n + 1)

end A034962

/-! ## A034962.P7731914424554738496

`p?[A034964(n+1)-A001043(n+1)]`
-/

namespace A034962.P7731914424554738496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1) - A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034962.P7731914424554738496

namespace A034962

/-- `p?[A034964(n+1)-A001043(n+1)]` -/
def P7731914424554738496.Spec : Prop :=
  ∀ n, P7731914424554738496.a n = A034962 (n + 1)

end A034962

/-! ## A034962.P9022847196581344133

`p?[A034963(n+1)-(A040976(n+1)+2)]`
-/

namespace A034962.P9022847196581344133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 1) - (A040976 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034962.P9022847196581344133

namespace A034962

/-- `p?[A034963(n+1)-(A040976(n+1)+2)]` -/
def P9022847196581344133.Spec : Prop :=
  ∀ n, P9022847196581344133.a n = A034962 (n + 1)

end A034962

/-! ## A034962.P7525549019940147396

`p?[A034961(n+1)]`
-/

namespace A034962.P7525549019940147396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034962.P7525549019940147396

namespace A034962

/-- `p?[A034961(n+1)]` -/
def P7525549019940147396.Spec : Prop :=
  ∀ n, P7525549019940147396.a n = A034962 (n + 1)

end A034962

/-! ## A034962.P1941100317889520734

`A034961(A072225(n+1))`
-/

namespace A034962.P1941100317889520734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (A072225 (n + 1)).toNat

end

end A034962.P1941100317889520734

namespace A034962

/-- `A034961(A072225(n+1))` -/
def P1941100317889520734.Spec : Prop :=
  ∀ n, P1941100317889520734.a n = A034962 (n + 1)

end A034962

/-! ## A034962.P369203935062087858

`∩[A034961(n+1), A065867(n+1)]`
-/

namespace A034962.P369203935062087858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034962.P369203935062087858

namespace A034962

/-- `∩[A034961(n+1), A065867(n+1)]` -/
def P369203935062087858.Spec : Prop :=
  ∀ n, (P369203935062087858.a n : ℤ) = A034962 (n + 1)

end A034962

/-! ## A034962.P16289030187999635839

`∩[A034961(n+1), A067377(n+1)]`
-/

namespace A034962.P16289030187999635839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034962.P16289030187999635839

namespace A034962

/-- `∩[A034961(n+1), A067377(n+1)]` -/
def P16289030187999635839.Spec : Prop :=
  ∀ n, (P16289030187999635839.a n : ℤ) = A034962 (n + 1)

end A034962

/-! ## A034962.P4534443154211030718

`∩[A034961(n+1), A071199(n+1)]`
-/

namespace A034962.P4534443154211030718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034962.P4534443154211030718

namespace A034962

/-- `∩[A034961(n+1), A071199(n+1)]` -/
def P4534443154211030718.Spec : Prop :=
  ∀ n, (P4534443154211030718.a n : ℤ) = A034962 (n + 1)

end A034962

/-! ## A034962.P436206324463383514

`p?[A004139(n+1)+A001043(n+1)]`
-/

namespace A034962.P436206324463383514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1) + A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034962.P436206324463383514

namespace A034962

/-- `p?[A004139(n+1)+A001043(n+1)]` -/
def P436206324463383514.Spec : Prop :=
  ∀ n, P436206324463383514.a n = A034962 (n + 1)

end A034962

/-! ## A034962.P5491895557454770527

`p?[A008578(n+1)+A001043(n+1)]`
-/

namespace A034962.P5491895557454770527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034962.P5491895557454770527

namespace A034962

/-- `p?[A008578(n+1)+A001043(n+1)]` -/
def P5491895557454770527.Spec : Prop :=
  ∀ n, P5491895557454770527.a n = A034962 (n + 1)

end A034962

/-! ## A034962.P13614194872603191643

`p?[A001043(n+2)+A000040(n+1)]`
-/

namespace A034962.P13614194872603191643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 2) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034962.P13614194872603191643

namespace A034962

/-- `p?[A001043(n+2)+A000040(n+1)]` -/
def P13614194872603191643.Spec : Prop :=
  ∀ n, P13614194872603191643.a n = A034962 (n + 1)

end A034962

/-! ## A034962.P13075739444040871371

`p?[A036439(n+4)-A036439(n+1)]`
-/

namespace A034962.P13075739444040871371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 4) - A036439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034962.P13075739444040871371

namespace A034962

/-- `p?[A036439(n+4)-A036439(n+1)]` -/
def P13075739444040871371.Spec : Prop :=
  ∀ n, P13075739444040871371.a n = A034962 (n + 1)

end A034962

/-! ## A034962.P7184367509507306678

`p?[A000040(n+1)+2*A024675(n+1)]`
-/

namespace A034962.P7184367509507306678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A024675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034962.P7184367509507306678

namespace A034962

/-- `p?[A000040(n+1)+2*A024675(n+1)]` -/
def P7184367509507306678.Spec : Prop :=
  ∀ n, P7184367509507306678.a n = A034962 (n + 1)

end A034962

/-! ## A034962.P8646799734791440272

`p?[2*A001043(n+1)-A096379(n+1)]`
-/

namespace A034962.P8646799734791440272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001043 (n + 1) - A096379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034962.P8646799734791440272

namespace A034962

/-- `p?[2*A001043(n+1)-A096379(n+1)]` -/
def P8646799734791440272.Spec : Prop :=
  ∀ n, P8646799734791440272.a n = A034962 (n + 1)

end A034962

/-! ## A034962.P4647043750446776462

`A152470(n+1)+A001043(A072225(n+1))`
-/

namespace A034962.P4647043750446776462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152470 (n + 1) + A001043 (A072225 (n + 1)).toNat

end

end A034962.P4647043750446776462

namespace A034962

/-- `A152470(n+1)+A001043(A072225(n+1))` -/
def P4647043750446776462.Spec : Prop :=
  ∀ n, P4647043750446776462.a n = A034962 (n + 1)

end A034962

/-! ## A034962.P11109888999264836731

`A073681(n+1)+A001043(A072225(n+1)+1)`
-/

namespace A034962.P11109888999264836731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073681 (n + 1) + A001043 (A072225 (n + 1) + 1).toNat

end

end A034962.P11109888999264836731

namespace A034962

/-- `A073681(n+1)+A001043(A072225(n+1)+1)` -/
def P11109888999264836731.Spec : Prop :=
  ∀ n, P11109888999264836731.a n = A034962 (n + 1)

end A034962

/-! ## A034962.P8984616366464673546

`A152470(n+1)+A011974(A072225(n+1)+1)`
-/

namespace A034962.P8984616366464673546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152470 (n + 1) + A011974 (A072225 (n + 1) + 1).toNat

end

end A034962.P8984616366464673546

namespace A034962

/-- `A152470(n+1)+A011974(A072225(n+1)+1)` -/
def P8984616366464673546.Spec : Prop :=
  ∀ n, P8984616366464673546.a n = A034962 (n + 1)

end A034962

/-! ## A034962.P7709581995120986089

`A073681(n+1)+A011974(A072225(n+1)+2)`
-/

namespace A034962.P7709581995120986089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073681 (n + 1) + A011974 (A072225 (n + 1) + 2).toNat

end

end A034962.P7709581995120986089

namespace A034962

/-- `A073681(n+1)+A011974(A072225(n+1)+2)` -/
def P7709581995120986089.Spec : Prop :=
  ∀ n, P7709581995120986089.a n = A034962 (n + 1)

end A034962

/-! ## A034962.P13758511131621886409

`p?[A000040(n+1)+A000040(n+2)+A000040(n+3)]`
-/

namespace A034962.P13758511131621886409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A000040 (n + 2) + A000040 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034962.P13758511131621886409

namespace A034962

/-- `p?[A000040(n+1)+A000040(n+2)+A000040(n+3)]` -/
def P13758511131621886409.Spec : Prop :=
  ∀ n, P13758511131621886409.a n = A034962 (n + 1)

end A034962

/-!
# A034963: Sums of four consecutive primes.

The programs for A034963, the canonical program `A034963.P11708242366348853171` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034963 has offset 1).

The definition of A034963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034963.P15267889426420292595

`A007504(n+4)-A007504(n)`
-/

namespace A034963.P15267889426420292595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 4) - A007504 n

end

end A034963.P15267889426420292595

namespace A034963

/-- `A007504(n+4)-A007504(n)` -/
def P15267889426420292595.Spec : Prop :=
  ∀ n, P15267889426420292595.a n = A034963 (n + 1)

end A034963

/-! ## A034963.P11708242366348853171

`A034961(n+2)+A000040(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A034963

/-- `A034961(n+2)+A000040(n+1)` -/
def P11708242366348853171.Spec : Prop :=
  ∀ n, P11708242366348853171.a n = A034963 (n + 1)

theorem P11708242366348853171.correct : P11708242366348853171.Spec := by
  intro n
  simp only [A034963, Nat.add_sub_cancel]

end A034963

/-! ## A034963.P7049678608708415724

`A034961(n+1)+A004139(n+2)`
-/

namespace A034963.P7049678608708415724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + A004139 (n + 2)

end

end A034963.P7049678608708415724

namespace A034963

/-- `A034961(n+1)+A004139(n+2)` -/
def P7049678608708415724.Spec : Prop :=
  ∀ n, P7049678608708415724.a n = A034963 (n + 1)

end A034963

/-! ## A034963.P10900811205996261996

`A096277(n+1)+A031131(n+2)`
-/

namespace A034963.P10900811205996261996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096277 (n + 1) + A031131 (n + 2)

end

end A034963.P10900811205996261996

namespace A034963

/-- `A096277(n+1)+A031131(n+2)` -/
def P10900811205996261996.Spec : Prop :=
  ∀ n, P10900811205996261996.a n = A034963 (n + 1)

theorem P10900811205996261996.correct : P10900811205996261996.Spec := by
  intro n
  simp only [A034963, Nat.add_sub_cancel, A034963.P10900811205996261996.a, A034963.P11708242366348853171.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031131, A031131.P2453725465626413076.a, A034961, A034961.P9480249767911558173.a, A096277, A096277.P17564688573804244660.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034963

/-! ## A034963.P6118246195924535644

`A034961(n+2)+A008578(n+2)`
-/

namespace A034963.P6118246195924535644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 2) + A008578 (n + 2)

end

end A034963.P6118246195924535644

namespace A034963

/-- `A034961(n+2)+A008578(n+2)` -/
def P6118246195924535644.Spec : Prop :=
  ∀ n, P6118246195924535644.a n = A034963 (n + 1)

end A034963

/-! ## A034963.P7668612017577877048

`A011974(n+2)+2*A024675(n+2)`
-/

namespace A034963.P7668612017577877048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 2) + 2 * A024675 (n + 2)

end

end A034963.P7668612017577877048

namespace A034963

/-- `A011974(n+2)+2*A024675(n+2)` -/
def P7668612017577877048.Spec : Prop :=
  ∀ n, P7668612017577877048.a n = A034963 (n + 1)

end A034963

/-! ## A034963.P17370277824017020019

`A004087(n+1)+A068396(n+1)+A034961(n+2)`
-/

namespace A034963.P17370277824017020019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1) + (A068396 (n + 1) + A034961 (n + 2))

end

end A034963.P17370277824017020019

namespace A034963

/-- `A004087(n+1)+A068396(n+1)+A034961(n+2)` -/
def P17370277824017020019.Spec : Prop :=
  ∀ n, P17370277824017020019.a n = A034963 (n + 1)

end A034963

/-! ## A034963.P14114266594537740453

`A001043(n+2)+A031131(n+2)+A001043(n+1)`
-/

namespace A034963.P14114266594537740453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 2) + (A031131 (n + 2) + A001043 (n + 1))

end

end A034963.P14114266594537740453

namespace A034963

/-- `A001043(n+2)+A031131(n+2)+A001043(n+1)` -/
def P14114266594537740453.Spec : Prop :=
  ∀ n, P14114266594537740453.a n = A034963 (n + 1)

theorem P14114266594537740453.correct : P14114266594537740453.Spec := by
  intro n
  simp only [A034963, Nat.add_sub_cancel, A034963.P14114266594537740453.a, A034963.P11708242366348853171.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A031131, A031131.P2453725465626413076.a, A034961, A034961.P9480249767911558173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034963

/-! ## A034963.P12428914751978372891

`A024675(n+2)+A024675(n+2)+A001043(n+1)`
-/

namespace A034963.P12428914751978372891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 2) + (A024675 (n + 2) + A001043 (n + 1))

end

end A034963.P12428914751978372891

namespace A034963

/-- `A024675(n+2)+A024675(n+2)+A001043(n+1)` -/
def P12428914751978372891.Spec : Prop :=
  ∀ n, P12428914751978372891.a n = A034963 (n + 1)

end A034963

/-! ## A034963.P17811572039903009304

`A364411(n+1)+A305748(n+2)+A024675(n+2)`
-/

namespace A034963.P17811572039903009304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (n + 1) + (A305748 (n + 2) + A024675 (n + 2))

end

end A034963.P17811572039903009304

namespace A034963

/-- `A364411(n+1)+A305748(n+2)+A024675(n+2)` -/
def P17811572039903009304.Spec : Prop :=
  ∀ n, P17811572039903009304.a n = A034963 (n + 1)

end A034963

/-! ## A034963.P6139057132304156497

`A096277(n+2)-(A001223(n+1)+A001223(n+2))`
-/

namespace A034963.P6139057132304156497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096277 (n + 2) - (A001223 (n + 1) + A001223 (n + 2))

end

end A034963.P6139057132304156497

namespace A034963

/-- `A096277(n+2)-(A001223(n+1)+A001223(n+2))` -/
def P6139057132304156497.Spec : Prop :=
  ∀ n, P6139057132304156497.a n = A034963 (n + 1)

theorem P6139057132304156497.correct : P6139057132304156497.Spec := by
  intro n
  simp only [A034963, Nat.add_sub_cancel, A034963.P6139057132304156497.a, A034963.P11708242366348853171.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5083310856331133973.a, A034961, A034961.P9480249767911558173.a, A096277, A096277.P17564688573804244660.a, A001043, A001043.P18269783162673735460.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034963

/-! ## A034963.P17968295848387117582

`A127333(n+1)+A034961(n+2)-A034964(n+2)`
-/

namespace A034963.P17968295848387117582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 1) + (A034961 (n + 2) - A034964 (n + 2))

end

end A034963.P17968295848387117582

namespace A034963

/-- `A127333(n+1)+A034961(n+2)-A034964(n+2)` -/
def P17968295848387117582.Spec : Prop :=
  ∀ n, P17968295848387117582.a n = A034963 (n + 1)

theorem P17968295848387117582.correct : P17968295848387117582.Spec := by
  intro n
  simp only [A034963, Nat.add_sub_cancel, A034963.P17968295848387117582.a, A034963.P11708242366348853171.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034961, A034961.P9480249767911558173.a, A034964, A034964.P11682848730202211862.a, A127333, A127333.P6306977747944234696.a, A001043, A001043.P18269783162673735460.a, A131019, A131019.P15986658586892712231.f1, A131019.P15986658586892712231.a, A031166, A031166.P2833534787462873208.a, A031131, A031131.P2453725465626413076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034963

/-! ## A034963.P12810984545499269281

`A092949(n+1)+A096277(n+2)-A092949(n+2)`
-/

namespace A034963.P12810984545499269281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1) + (A096277 (n + 2) - A092949 (n + 2))

end

end A034963.P12810984545499269281

namespace A034963

/-- `A092949(n+1)+A096277(n+2)-A092949(n+2)` -/
def P12810984545499269281.Spec : Prop :=
  ∀ n, P12810984545499269281.a n = A034963 (n + 1)

theorem P12810984545499269281.correct : P12810984545499269281.Spec := by
  intro n
  simp only [A034963, Nat.add_sub_cancel, A034963.P12810984545499269281.a, A034963.P11708242366348853171.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034961, A034961.P9480249767911558173.a, A092949, A092949.P1382492647621219255.a, A096277, A096277.P17564688573804244660.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034963

/-! ## A034963.P17224605020235948219

`A127334(n+1)+A034961(n+2)-A127333(n+2)`
-/

namespace A034963.P17224605020235948219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1) + (A034961 (n + 2) - A127333 (n + 2))

end

end A034963.P17224605020235948219

namespace A034963

/-- `A127334(n+1)+A034961(n+2)-A127333(n+2)` -/
def P17224605020235948219.Spec : Prop :=
  ∀ n, P17224605020235948219.a n = A034963 (n + 1)

theorem P17224605020235948219.correct : P17224605020235948219.Spec := by
  intro n
  simp only [A034963, Nat.add_sub_cancel, A034963.P17224605020235948219.a, A034963.P11708242366348853171.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034961, A034961.P9480249767911558173.a, A127333, A127333.P6306977747944234696.a, A127334, A127334.P6228238072744643247.a, A001043, A001043.P18269783162673735460.a, A034964, A034964.P11682848730202211862.a, A131019, A131019.P15986658586892712231.f1, A131019.P15986658586892712231.a, A031166, A031166.P2833534787462873208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034963

/-! ## A034963.P15817793997682548865

`A127335(n+1)+A034961(n+2)-A127334(n+2)`
-/

namespace A034963.P15817793997682548865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127335 (n + 1) + (A034961 (n + 2) - A127334 (n + 2))

end

end A034963.P15817793997682548865

namespace A034963

/-- `A127335(n+1)+A034961(n+2)-A127334(n+2)` -/
def P15817793997682548865.Spec : Prop :=
  ∀ n, P15817793997682548865.a n = A034963 (n + 1)

theorem P15817793997682548865.correct : P15817793997682548865.Spec := by
  intro n
  simp only [A034963, Nat.add_sub_cancel, A034963.P15817793997682548865.a, A034963.P11708242366348853171.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034961, A034961.P9480249767911558173.a, A127334, A127334.P6228238072744643247.a, A127335, A127335.P9630767717206448625.a, A001043, A001043.P18269783162673735460.a, A127333, A127333.P6306977747944234696.a, A034964, A034964.P11682848730202211862.a, A131019, A131019.P15986658586892712231.f1, A131019.P15986658586892712231.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034963

/-! ## A034963.P4351535640442262386

`A127336(n+1)+A034961(n+2)-A127335(n+2)`
-/

namespace A034963.P4351535640442262386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 1) + (A034961 (n + 2) - A127335 (n + 2))

end

end A034963.P4351535640442262386

namespace A034963

/-- `A127336(n+1)+A034961(n+2)-A127335(n+2)` -/
def P4351535640442262386.Spec : Prop :=
  ∀ n, P4351535640442262386.a n = A034963 (n + 1)

end A034963

/-! ## A034963.P9383944504181202290

`A127338(n+1)+A034961(n+2)-A127337(n+2)`
-/

namespace A034963.P9383944504181202290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 1) + (A034961 (n + 2) - A127337 (n + 2))

end

end A034963.P9383944504181202290

namespace A034963

/-- `A127338(n+1)+A034961(n+2)-A127337(n+2)` -/
def P9383944504181202290.Spec : Prop :=
  ∀ n, P9383944504181202290.a n = A034963 (n + 1)

theorem P9383944504181202290.correct : P9383944504181202290.Spec := by
  intro n
  simp only [A034963, Nat.add_sub_cancel, A034963.P9383944504181202290.a, A034963.P11708242366348853171.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034961, A034961.P9480249767911558173.a, A127337, A127337.P16134071994512097218.a, A127338, A127338.P4331655473129175239.a, A001043, A001043.P18269783162673735460.a, A127336, A127336.P17802364800562295121.a, A127335, A127335.P9630767717206448625.a, A127334, A127334.P6228238072744643247.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034963

/-! ## A034963.P15500334653147547302

`A034961(n+2)+A133019(n+1)/A004087(n+1)`
-/

namespace A034963.P15500334653147547302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034961 (n + 2) : ℚ) + (A133019 (n + 1) : ℚ) / (A004087 (n + 1) : ℚ)

end

end A034963.P15500334653147547302

namespace A034963

/-- `A034961(n+2)+A133019(n+1)/A004087(n+1)` -/
def P15500334653147547302.Spec : Prop :=
  ∀ n, P15500334653147547302.a n = (A034963 (n + 1) : ℚ)

end A034963

/-! ## A034963.P15176086639558101930

`A001043(n+1)+A001043(n+3)`
-/

namespace A034963.P15176086639558101930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + A001043 (n + 3)

end

end A034963.P15176086639558101930

namespace A034963

/-- `A001043(n+1)+A001043(n+3)` -/
def P15176086639558101930.Spec : Prop :=
  ∀ n, P15176086639558101930.a n = A034963 (n + 1)

theorem P15176086639558101930.correct : P15176086639558101930.Spec := by
  intro n
  simp only [A034963, Nat.add_sub_cancel, A034963.P15176086639558101930.a, A034963.P11708242366348853171.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A034961, A034961.P9480249767911558173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034963

/-! ## A034963.P2330802342070172264

`A048448(n+2)+A048448(n+3)`
-/

namespace A034963.P2330802342070172264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 (n + 2) + A048448 (n + 3)

end

end A034963.P2330802342070172264

namespace A034963

/-- `A048448(n+2)+A048448(n+3)` -/
def P2330802342070172264.Spec : Prop :=
  ∀ n, P2330802342070172264.a n = A034963 (n + 1)

end A034963

/-!
# A034964: Sums of five consecutive primes.

The programs for A034964, the canonical program `A034964.P11682848730202211862` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034964 has offset 1).

The definition of A034964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034964.P10296699572533963383

`A007504(n+5)-A007504(n)`
-/

namespace A034964.P10296699572533963383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 5) - A007504 n

end

end A034964.P10296699572533963383

namespace A034964

/-- `A007504(n+5)-A007504(n)` -/
def P10296699572533963383.Spec : Prop :=
  ∀ n, P10296699572533963383.a n = A034964 (n + 1)

end A034964

/-! ## A034964.P11682848730202211862

`A000040(n+1)+2*A131019(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A034964

/-- `A000040(n+1)+2*A131019(n+1)` -/
def P11682848730202211862.Spec : Prop :=
  ∀ n, P11682848730202211862.a n = A034964 (n + 1)

theorem P11682848730202211862.correct : P11682848730202211862.Spec := by
  intro n
  simp only [A034964, Nat.add_sub_cancel]

end A034964

/-! ## A034964.P1306709720004635255

`A034963(n+2)+A000040(n+1)`
-/

namespace A034964.P1306709720004635255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 2) + A000040 (n + 1)

end

end A034964.P1306709720004635255

namespace A034964

/-- `A034963(n+2)+A000040(n+1)` -/
def P1306709720004635255.Spec : Prop :=
  ∀ n, P1306709720004635255.a n = A034964 (n + 1)

end A034964

/-! ## A034964.P14550633972831284006

`A034963(n+2)+A034961(n+1)-A001043(n+2)`
-/

namespace A034964.P14550633972831284006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 2) + (A034961 (n + 1) - A001043 (n + 2))

end

end A034964.P14550633972831284006

namespace A034964

/-- `A034963(n+2)+A034961(n+1)-A001043(n+2)` -/
def P14550633972831284006.Spec : Prop :=
  ∀ n, P14550633972831284006.a n = A034964 (n + 1)

end A034964

/-! ## A034964.P2833088109328094494

`A034963(n+1)+A034963(n+2)-A034961(n+2)`
-/

namespace A034964.P2833088109328094494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 1) + (A034963 (n + 2) - A034961 (n + 2))

end

end A034964.P2833088109328094494

namespace A034964

/-- `A034963(n+1)+A034963(n+2)-A034961(n+2)` -/
def P2833088109328094494.Spec : Prop :=
  ∀ n, P2833088109328094494.a n = A034964 (n + 1)

end A034964

/-! ## A034964.P10541352361485158579

`A127334(n+1)+A034963(n+2)-A127333(n+2)`
-/

namespace A034964.P10541352361485158579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1) + (A034963 (n + 2) - A127333 (n + 2))

end

end A034964.P10541352361485158579

namespace A034964

/-- `A127334(n+1)+A034963(n+2)-A127333(n+2)` -/
def P10541352361485158579.Spec : Prop :=
  ∀ n, P10541352361485158579.a n = A034964 (n + 1)

end A034964

/-! ## A034964.P13396923269586302201

`A127335(n+1)+A034963(n+2)-A127334(n+2)`
-/

namespace A034964.P13396923269586302201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127335 (n + 1) + (A034963 (n + 2) - A127334 (n + 2))

end

end A034964.P13396923269586302201

namespace A034964

/-- `A127335(n+1)+A034963(n+2)-A127334(n+2)` -/
def P13396923269586302201.Spec : Prop :=
  ∀ n, P13396923269586302201.a n = A034964 (n + 1)

end A034964

/-! ## A034964.P585834464707577412

`A127336(n+1)+A034963(n+2)-A127335(n+2)`
-/

namespace A034964.P585834464707577412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 1) + (A034963 (n + 2) - A127335 (n + 2))

end

end A034964.P585834464707577412

namespace A034964

/-- `A127336(n+1)+A034963(n+2)-A127335(n+2)` -/
def P585834464707577412.Spec : Prop :=
  ∀ n, P585834464707577412.a n = A034964 (n + 1)

end A034964

/-! ## A034964.P9606777717257791662

`A127337(n+1)+A034963(n+2)-A127336(n+2)`
-/

namespace A034964.P9606777717257791662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127337 (n + 1) + (A034963 (n + 2) - A127336 (n + 2))

end

end A034964.P9606777717257791662

namespace A034964

/-- `A127337(n+1)+A034963(n+2)-A127336(n+2)` -/
def P9606777717257791662.Spec : Prop :=
  ∀ n, P9606777717257791662.a n = A034964 (n + 1)

end A034964

/-! ## A034964.P14053827855269512417

`A034963(n+2)+A046301(n+1)/A006094(n+2)`
-/

namespace A034964.P14053827855269512417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034963 (n + 2) : ℚ) + (A046301 (n + 1) : ℚ) / (A006094 (n + 2) : ℚ)

end

end A034964.P14053827855269512417

namespace A034964

/-- `A034963(n+2)+A046301(n+1)/A006094(n+2)` -/
def P14053827855269512417.Spec : Prop :=
  ∀ n, P14053827855269512417.a n = (A034964 (n + 1) : ℚ)

end A034964

/-! ## A034964.P4727091694460236340

`A034961(n+3)+A001043(n+1)`
-/

namespace A034964.P4727091694460236340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 3) + A001043 (n + 1)

end

end A034964.P4727091694460236340

namespace A034964

/-- `A034961(n+3)+A001043(n+1)` -/
def P4727091694460236340.Spec : Prop :=
  ∀ n, P4727091694460236340.a n = A034964 (n + 1)

end A034964

/-! ## A034964.P8371395794359489339

`A034961(n+3)+A011974(n+2)`
-/

namespace A034964.P8371395794359489339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 3) + A011974 (n + 2)

end

end A034964.P8371395794359489339

namespace A034964

/-- `A034961(n+3)+A011974(n+2)` -/
def P8371395794359489339.Spec : Prop :=
  ∀ n, P8371395794359489339.a n = A034964 (n + 1)

end A034964

/-! ## A034964.P8606659823148151836

`A164653(n+3)+A034961(n+3)`
-/

namespace A034964.P8606659823148151836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 3) + A034961 (n + 3)

end

end A034964.P8606659823148151836

namespace A034964

/-- `A164653(n+3)+A034961(n+3)` -/
def P8606659823148151836.Spec : Prop :=
  ∀ n, P8606659823148151836.a n = A034964 (n + 1)

end A034964

/-! ## A034964.P2988634781037092229

`A034963(n+2)+record[A006530(n+2)]`
-/

namespace A034964.P2988634781037092229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034964.P2988634781037092229

namespace A034964

/-- `A034963(n+2)+record[A006530(n+2)]` -/
def P2988634781037092229.Spec : Prop :=
  ∀ n, P2988634781037092229.a n = A034964 (n + 1)

end A034964

/-!
# A034965: Primes that are sum of five consecutive primes.

The programs for A034965, the canonical program `A034965.P10618063056112596285` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034965 has offset 1).

The definition of A034965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2030 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034965.P4613924556217261691

`p?[A007504(n+5)-A007504(n)]`
-/

namespace A034965.P4613924556217261691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 5) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034965.P4613924556217261691

namespace A034965

/-- `p?[A007504(n+5)-A007504(n)]` -/
def P4613924556217261691.Spec : Prop :=
  ∀ n, P4613924556217261691.a n = A034965 (n + 1)

end A034965

/-! ## A034965.P10618063056112596285

`p?[A034964(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A034965

/-- `p?[A034964(n+1)]` -/
def P10618063056112596285.Spec : Prop :=
  ∀ n, P10618063056112596285.a n = A034965 (n + 1)

theorem P10618063056112596285.correct : P10618063056112596285.Spec := by
  intro n
  simp only [A034965, Nat.add_sub_cancel]

end A034965

/-! ## A034965.P16532239627278784939

`A034964(A288041(n+1))`
-/

namespace A034965.P16532239627278784939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (A288041 (n + 1)).toNat

end

end A034965.P16532239627278784939

namespace A034965

/-- `A034964(A288041(n+1))` -/
def P16532239627278784939.Spec : Prop :=
  ∀ n, P16532239627278784939.a n = A034965 (n + 1)

end A034965

/-! ## A034965.P8147113565499169178

`∩[A034964(n+1), A067377(n+1)]`
-/

namespace A034965.P8147113565499169178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034965.P8147113565499169178

namespace A034965

/-- `∩[A034964(n+1), A067377(n+1)]` -/
def P8147113565499169178.Spec : Prop :=
  ∀ n, (P8147113565499169178.a n : ℤ) = A034965 (n + 1)

end A034965

/-! ## A034965.P1007078608834159924

`p?[A034963(n+2)+A000040(n+1)]`
-/

namespace A034965.P1007078608834159924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 2) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034965.P1007078608834159924

namespace A034965

/-- `p?[A034963(n+2)+A000040(n+1)]` -/
def P1007078608834159924.Spec : Prop :=
  ∀ n, P1007078608834159924.a n = A034965 (n + 1)

end A034965

/-! ## A034965.P13705649942716596174

`p?[A127333(n+1)-A000040(n+1)]`
-/

namespace A034965.P13705649942716596174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034965.P13705649942716596174

namespace A034965

/-- `p?[A127333(n+1)-A000040(n+1)]` -/
def P13705649942716596174.Spec : Prop :=
  ∀ n, P13705649942716596174.a n = A034965 (n + 1)

end A034965

/-! ## A034965.P11646681864679972433

`p?[A127334(n+1)-A001043(n+1)]`
-/

namespace A034965.P11646681864679972433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1) - A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034965.P11646681864679972433

namespace A034965

/-- `p?[A127334(n+1)-A001043(n+1)]` -/
def P11646681864679972433.Spec : Prop :=
  ∀ n, P11646681864679972433.a n = A034965 (n + 1)

end A034965

/-! ## A034965.P14190146523339959218

`p?[A034961(n+3)+A001043(n+1)]`
-/

namespace A034965.P14190146523339959218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 3) + A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034965.P14190146523339959218

namespace A034965

/-- `p?[A034961(n+3)+A001043(n+1)]` -/
def P14190146523339959218.Spec : Prop :=
  ∀ n, P14190146523339959218.a n = A034965 (n + 1)

end A034965

/-! ## A034965.P11660918318453575745

`∩[A034964(n+1), A065867(n+1)]`
-/

namespace A034965.P11660918318453575745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034965.P11660918318453575745

namespace A034965

/-- `∩[A034964(n+1), A065867(n+1)]` -/
def P11660918318453575745.Spec : Prop :=
  ∀ n, (P11660918318453575745.a n : ℤ) = A034965 (n + 1)

end A034965

/-! ## A034965.P12539914721957803734

`∩[A034964(n+1), A380468(n+1)]`
-/

namespace A034965.P12539914721957803734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034965.P12539914721957803734

namespace A034965

/-- `∩[A034964(n+1), A380468(n+1)]` -/
def P12539914721957803734.Spec : Prop :=
  ∀ n, (P12539914721957803734.a n : ℤ) = A034965 (n + 1)

end A034965

/-! ## A034965.P9765058144936108000

`∩[A034964(n+1), A054723(n+1)]`
-/

namespace A034965.P9765058144936108000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034965.P9765058144936108000

namespace A034965

/-- `∩[A034964(n+1), A054723(n+1)]` -/
def P9765058144936108000.Spec : Prop :=
  ∀ n, (P9765058144936108000.a n : ℤ) = A034965 (n + 1)

end A034965

/-! ## A034965.P4117677184098893762

`∩[A034964(n+1), A071621(n+1)]`
-/

namespace A034965.P4117677184098893762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034965.P4117677184098893762

namespace A034965

/-- `∩[A034964(n+1), A071621(n+1)]` -/
def P4117677184098893762.Spec : Prop :=
  ∀ n, (P4117677184098893762.a n : ℤ) = A034965 (n + 1)

end A034965

/-! ## A034965.P10871668242683908881

`∩[A034964(n+1), A078138(n+1)]`
-/

namespace A034965.P10871668242683908881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034965.P10871668242683908881

namespace A034965

/-- `∩[A034964(n+1), A078138(n+1)]` -/
def P10871668242683908881.Spec : Prop :=
  ∀ n, (P10871668242683908881.a n : ℤ) = A034965 (n + 1)

end A034965

/-! ## A034965.P16983763983942486324

`∩[A034964(n+1), A122259(n+1)]`
-/

namespace A034965.P16983763983942486324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034965.P16983763983942486324

namespace A034965

/-- `∩[A034964(n+1), A122259(n+1)]` -/
def P16983763983942486324.Spec : Prop :=
  ∀ n, (P16983763983942486324.a n : ℤ) = A034965 (n + 1)

end A034965

/-! ## A034965.P4512202983774755628

`∩[A034964(n+1), A261123(n+1)]`
-/

namespace A034965.P4512202983774755628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034965.P4512202983774755628

namespace A034965

/-- `∩[A034964(n+1), A261123(n+1)]` -/
def P4512202983774755628.Spec : Prop :=
  ∀ n, (P4512202983774755628.a n : ℤ) = A034965 (n + 1)

end A034965

/-! ## A034965.P816450739405896858

`∩[A000040(n+1), A034964(n+1)]`
-/

namespace A034965.P816450739405896858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034965.P816450739405896858

namespace A034965

/-- `∩[A000040(n+1), A034964(n+1)]` -/
def P816450739405896858.Spec : Prop :=
  ∀ n, (P816450739405896858.a n : ℤ) = A034965 (n + 1)

end A034965

/-! ## A034965.P12568291077824811908

`∩[A004139(n+1), A034964(n+1)]`
-/

namespace A034965.P12568291077824811908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034965.P12568291077824811908

namespace A034965

/-- `∩[A004139(n+1), A034964(n+1)]` -/
def P12568291077824811908.Spec : Prop :=
  ∀ n, (P12568291077824811908.a n : ℤ) = A034965 (n + 1)

end A034965

/-! ## A034965.P8894209897846744497

`∩[A006005(n+1), A034964(n+1)]`
-/

namespace A034965.P8894209897846744497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034965.P8894209897846744497

namespace A034965

/-- `∩[A006005(n+1), A034964(n+1)]` -/
def P8894209897846744497.Spec : Prop :=
  ∀ n, (P8894209897846744497.a n : ℤ) = A034965 (n + 1)

end A034965

/-! ## A034965.P13430955898692396892

`∩[A008578(n+1), A034964(n+1)]`
-/

namespace A034965.P13430955898692396892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034965.P13430955898692396892

namespace A034965

/-- `∩[A008578(n+1), A034964(n+1)]` -/
def P13430955898692396892.Spec : Prop :=
  ∀ n, (P13430955898692396892.a n : ℤ) = A034965 (n + 1)

end A034965

/-! ## A034965.P15344135851031877566

`∩[A033946(n+1), A034964(n+1)]`
-/

namespace A034965.P15344135851031877566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034965.P15344135851031877566

namespace A034965

/-- `∩[A033946(n+1), A034964(n+1)]` -/
def P15344135851031877566.Spec : Prop :=
  ∀ n, (P15344135851031877566.a n : ℤ) = A034965 (n + 1)

end A034965

/-!
# A034967: Sum of digits of numbers between 0 and (10^n)-1.

The programs for A034967, the canonical program `A034967.P6083688236937074284` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034967 has offset 0).

The definition of A034967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034967.P8400612135531795984

`45*n*10^(n-1)`
-/

namespace A034967.P8400612135531795984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (45 * n : ℚ) * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A034967.P8400612135531795984

namespace A034967

/-- `45*n*10^(n-1)` -/
def P8400612135531795984.Spec : Prop :=
  ∀ n, P8400612135531795984.a n = (A034967 n : ℚ)

theorem P8400612135531795984.correct : P8400612135531795984.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A034967, Nat.add_sub_cancel, A034967.P8400612135531795984.a, A034967.P6083688236937074284.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A034967, Nat.add_sub_cancel, A034967.P8400612135531795984.a, A034967.P6083688236937074284.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A034967

/-! ## A034967.P6083688236937074284

`20*a(n-1)-100*a(n-2)` with `a(0)=0, a(1)=45`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034967

/-- `20*a(n-1)-100*a(n-2)` -/
def P6083688236937074284.Spec : Prop :=
  ∀ n, P6083688236937074284.a n = A034967 n

theorem P6083688236937074284.correct : P6083688236937074284.Spec := by
  intro n
  simp only [A034967]

end A034967

/-! ## A034967.P4285472006753849037

`45*A094797(n)-45`
-/

namespace A034967.P4285472006753849037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  45 * A094797 n - 45

end

end A034967.P4285472006753849037

namespace A034967

/-- `45*A094797(n)-45` -/
def P4285472006753849037.Spec : Prop :=
  ∀ n, P4285472006753849037.a n = A034967 n

end A034967

/-! ## A034967.P9547125713210196197

`n*A052268(n+1)/2`
-/

namespace A034967.P9547125713210196197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A052268 (n + 1) : ℚ) / 2

end

end A034967.P9547125713210196197

namespace A034967

/-- `n*A052268(n+1)/2` -/
def P9547125713210196197.Spec : Prop :=
  ∀ n, P9547125713210196197.a n = (A034967 n : ℚ)

theorem P9547125713210196197.correct : P9547125713210196197.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A034967, Nat.add_sub_cancel, A034967.P9547125713210196197.a, A034967.P6083688236937074284.a, A052268, A052268.P1431609730251872514.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A034967, Nat.add_sub_cancel, A034967.P9547125713210196197.a, A034967.P6083688236937074284.a, A052268, A052268.P1431609730251872514.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A034967

/-! ## A034967.P14162865473677654173

`n*A063945(n+1)/2`
-/

namespace A034967.P14162865473677654173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A063945 (n + 1) : ℚ) / 2

end

end A034967.P14162865473677654173

namespace A034967

/-- `n*A063945(n+1)/2` -/
def P14162865473677654173.Spec : Prop :=
  ∀ n, P14162865473677654173.a n = (A034967 n : ℚ)

end A034967

/-!
# A034968: Minimal number of factorials that add to n.

The programs for A034968, the canonical program `A034968.P11463317321541393924` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034968 has offset 0).

The definition of A034968 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099563, A257687, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A034968.P1761781716628428685

`A060130(n)+a(A257684(n))` with `a(0)=0, a(1)=1`
-/

namespace A034968.P1761781716628428685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A060130 n + a (A257684 n).toNat

end

end A034968.P1761781716628428685

namespace A034968

/-- `A060130(n)+a(A257684(n))` -/
def P1761781716628428685.Spec : Prop :=
  ∀ n, P1761781716628428685.a n = A034968 n

end A034968

/-! ## A034968.P11463317321541393924

`A099563(n)+a(A257687(n))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A034968

/-- `A099563(n)+a(A257687(n))` -/
def P11463317321541393924.Spec : Prop :=
  ∀ n, P11463317321541393924.a n = A034968 n

theorem P11463317321541393924.correct : P11463317321541393924.Spec := by
  intro n
  simp only [A034968]

end A034968

/-! ## A034968.P7338028690261176108

`A276146(A225901(n))`
-/

namespace A034968.P7338028690261176108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276146 (A225901 n).toNat

end

end A034968.P7338028690261176108

namespace A034968

/-- `A276146(A225901(n))` -/
def P7338028690261176108.Spec : Prop :=
  ∀ n, P7338028690261176108.a n = A034968 n

end A034968

/-! ## A034968.P827596032110550867

`A001222(A276076(n))`
-/

namespace A034968.P827596032110550867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A276076 n).toNat

end

end A034968.P827596032110550867

namespace A034968

/-- `A001222(A276076(n))` -/
def P827596032110550867.Spec : Prop :=
  ∀ n, P827596032110550867.a n = A034968 n

end A034968

/-! ## A034968.P7199169431761322241

`Δ[A368342(n)]`
-/

namespace A034968.P7199169431761322241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368342 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034968.P7199169431761322241

namespace A034968

/-- `Δ[A368342(n)]` -/
def P7199169431761322241.Spec : Prop :=
  ∀ n, P7199169431761322241.a n = A034968 n

end A034968

/-! ## A034968.P15615066518021018623

`n-A219651(n)`
-/

namespace A034968.P15615066518021018623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219651 n

end

end A034968.P15615066518021018623

namespace A034968

/-- `n-A219651(n)` -/
def P15615066518021018623.Spec : Prop :=
  ∀ n, P15615066518021018623.a n = A034968 n

theorem P15615066518021018623.correct : P15615066518021018623.Spec := by
  intro n
  simp only [A034968, Nat.add_sub_cancel, A034968.P15615066518021018623.a, A034968.P11463317321541393924.a, A099563, A099563.P5019841788924108469.f2, A099563.P5019841788924108469.f1, A099563.P5019841788924108469.f4, A099563.P5019841788924108469.f3, A099563.P5019841788924108469.a, A219651, A219651.P5835350949150730882.a, A257687, A257687.P7012285749589745258.a, A084558, A084558.P8374569854218058976.a, A090529, A090529.P4680555822996673914.f1, A090529.P4680555822996673914.a, A316341, A316341.P9571797849802737273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034968

/-! ## A034968.P12715614479546210240

`∑{digits}[A007623(n), #]`
-/

namespace A034968.P12715614479546210240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A034968.P12715614479546210240

namespace A034968

/-- `∑{digits}[A007623(n), #]` -/
def P12715614479546210240.Spec : Prop :=
  ∀ n, (P12715614479546210240.a n : ℤ) = A034968 n

end A034968

/-! ## A034968.P1943426798019967716

`a(A212598(n))+1` with `a(0)=0`
-/

namespace A034968.P1943426798019967716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A212598 n).toNat + 1

end

end A034968.P1943426798019967716

namespace A034968

/-- `a(A212598(n))+1` -/
def P1943426798019967716.Spec : Prop :=
  ∀ n, (P1943426798019967716.a n : ℤ) = A034968 n

end A034968

/-! ## A034968.P10558640802081842581

`n-A219650(floor(n/2))`
-/

namespace A034968.P10558640802081842581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219650 ⌊(n : ℚ) / 2⌋.toNat

end

end A034968.P10558640802081842581

namespace A034968

/-- `n-A219650(floor(n/2))` -/
def P10558640802081842581.Spec : Prop :=
  ∀ n, P10558640802081842581.a n = A034968 n

end A034968

/-! ## A034968.P14824570596719657467

`A139365(A220655(n+1))`
-/

namespace A034968.P14824570596719657467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139365 (A220655 (n + 1)).toNat

end

end A034968.P14824570596719657467

namespace A034968

/-- `A139365(A220655(n+1))` -/
def P14824570596719657467.Spec : Prop :=
  ∀ n, P14824570596719657467.a n = A034968 n

end A034968

/-! ## A034968.P1193656510578983762

`A368342(n+1)-A368342(n)`
-/

namespace A034968.P1193656510578983762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368342 (n + 1) - A368342 n

end

end A034968.P1193656510578983762

namespace A034968

/-- `A368342(n+1)-A368342(n)` -/
def P1193656510578983762.Spec : Prop :=
  ∀ n, P1193656510578983762.a n = A034968 n

end A034968

/-! ## A034968.P10792165098628786808

`A276150(A351576(n))`
-/

namespace A034968.P10792165098628786808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (A351576 n).toNat

end

end A034968.P10792165098628786808

namespace A034968

/-- `A276150(A351576(n))` -/
def P10792165098628786808.Spec : Prop :=
  ∀ n, P10792165098628786808.a n = A034968 n

end A034968

/-! ## A034968.P6274659093746478261

`A056239(A275735(n))`
-/

namespace A034968.P6274659093746478261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A275735 n).toNat

end

end A034968.P6274659093746478261

namespace A034968

/-- `A056239(A275735(n))` -/
def P6274659093746478261.Spec : Prop :=
  ∀ n, P6274659093746478261.a n = A034968 n

end A034968

/-! ## A034968.P2390247489968998503

`∑{e}[A278236(n), #]`
-/

namespace A034968.P2390247489968998503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A034968.P2390247489968998503

namespace A034968

/-- `∑{e}[A278236(n), #]` -/
def P2390247489968998503.Spec : Prop :=
  ∀ n, (P2390247489968998503.a n : ℤ) = A034968 n

end A034968

/-! ## A034968.P5900690245916159697

`A000120(A277012(n))`
-/

namespace A034968.P5900690245916159697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A277012 n).toNat

end

end A034968.P5900690245916159697

namespace A034968

/-- `A000120(A277012(n))` -/
def P5900690245916159697.Spec : Prop :=
  ∀ n, P5900690245916159697.a n = A034968 n

end A034968

/-! ## A034968.P10599644675264543947

`A001222(A278236(n))`
-/

namespace A034968.P10599644675264543947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278236 n).toNat

end

end A034968.P10599644675264543947

namespace A034968

/-- `A001222(A278236(n))` -/
def P10599644675264543947.Spec : Prop :=
  ∀ n, P10599644675264543947.a n = A034968 n

end A034968

/-! ## A034968.P17251774216775841562

`A276150(A277021(A277012(A277021(A277022(n)))))`
-/

namespace A034968.P17251774216775841562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (A277021 (A277012 (A277021 (A277022 n).toNat).toNat).toNat).toNat

end

end A034968.P17251774216775841562

namespace A034968

/-- `A276150(A277021(A277012(A277021(A277022(n)))))` -/
def P17251774216775841562.Spec : Prop :=
  ∀ n, P17251774216775841562.a n = A034968 n

end A034968

/-! ## A034968.P12546195247803843294

`A231714(A131179(n))`
-/

namespace A034968.P12546195247803843294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231714 (A131179 n).toNat

end

end A034968.P12546195247803843294

namespace A034968

/-- `A231714(A131179(n))` -/
def P12546195247803843294.Spec : Prop :=
  ∀ n, P12546195247803843294.a n = A034968 n

end A034968

/-! ## A034968.P7597669670428429616

`A230419(∑[n])`
-/

namespace A034968.P7597669670428429616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230419 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034968.P7597669670428429616

namespace A034968

/-- `A230419(∑[n])` -/
def P7597669670428429616.Spec : Prop :=
  ∀ n, P7597669670428429616.a n = A034968 n

end A034968

/-! ## A034968.P2933328737439836752

`A231713(∑[n])`
-/

namespace A034968.P2933328737439836752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231713 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034968.P2933328737439836752

namespace A034968

/-- `A231713(∑[n])` -/
def P2933328737439836752.Spec : Prop :=
  ∀ n, P2933328737439836752.a n = A034968 n

end A034968

/-!
# A034969: a(1) = a(2) = 1, a(n) is largest prime factor of concatenation of a(n - 2) and a(n - 1).

The programs for A034969, there is no canonical definition to state claims against.
-/

/-! ## A034969.P1489085448600750609

`A332733(A027213(n))`
-/

namespace A034969.P1489085448600750609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332733 (A027213 n).toNat

end

end A034969.P1489085448600750609

/-!
# A034970: a(n) is the greatest prime factor of a(n-2)*a(n-1)-1.

The programs for A034970, there is no canonical definition to state claims against.
-/

/-! ## A034970.P17806858004013461731

`A002034(a(n-1)*a(n-2)-1)` with `a(0)=2, a(1)=3`
-/

namespace A034970.P17806858004013461731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A002034 (a (n - 1) * a (n - 2) - 1).toNat

end

end A034970.P17806858004013461731

/-! ## A034970.P12914021535459034005

`A006530(a(n-1)*a(n-2)-1)` with `a(0)=2, a(1)=3`
-/

namespace A034970.P12914021535459034005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A006530 (a (n - 1) * a (n - 2) - 1).toNat

end

end A034970.P12914021535459034005

/-! ## A034970.P9600564830093864473

`A002034(lcm(a(n-1), a(n-2))-1)` with `a(0)=2, a(1)=3`
-/

namespace A034970.P9600564830093864473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A002034 (Int.lcm (a (n - 1)) (a (n - 2)) - 1)

end

end A034970.P9600564830093864473

/-! ## A034970.P8589381284114033613

`A002034(a(n-1)/a(n-2)^(-1)-1)` with `a(0)=2, a(1)=3`
-/

namespace A034970.P8589381284114033613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A002034 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) ^ (-1 : ℤ) - 1)).toNat

end

end A034970.P8589381284114033613

/-!
# A034971: a(n) = floor(E_(n+1)/E_(n)) where E_n is n-th Euler number (see A028296 and A000364).

The programs for A034971, there is no canonical definition to state claims against.
-/

/-! ## A034971.P85562624948378296

`floor(ratio[record[A346838(n)]])`
-/

namespace A034971.P85562624948378296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346838 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A034971.P85562624948378296

/-! ## A034971.P14199187628436316615

`floor(ratio[A000364(n+1)])`
-/

namespace A034971.P14199187628436316615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A034971.P14199187628436316615

/-! ## A034971.P18161276545663621344

`floor(ratio[abs(A028296(n+1))])`
-/

namespace A034971.P18161276545663621344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A028296 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A034971.P18161276545663621344

/-! ## A034971.P6967116626218807356

`floor(ratio[A210111(A253145(n))])`
-/

namespace A034971.P6967116626218807356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210111 (A253145 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A034971.P6967116626218807356

/-! ## A034971.P17870259249445528390

`floor(ratio[A000111(A004277(n+1))])`
-/

namespace A034971.P17870259249445528390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (A004277 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A034971.P17870259249445528390

/-!
# A034972: a(n) = floor(T_(n+1)/T_(n)) where T_n is n-th tangential or "Zag" number (see A000182).

The programs for A034972, there is no canonical definition to state claims against.
-/

/-! ## A034972.P6821780651843631032

`floor(2*ratio[A002105(n+1)])`
-/

namespace A034972.P6821780651843631032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))⌋

end

end A034972.P6821780651843631032

/-! ## A034972.P6015990076257103307

`floor(ratio[record[A009006(n)]])`
-/

namespace A034972.P6015990076257103307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009006 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A034972.P6015990076257103307

/-! ## A034972.P13224653666691008119

`floor(ratio[A000182(n+1)])`
-/

namespace A034972.P13224653666691008119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A034972.P13224653666691008119

/-! ## A034972.P7244355761399330187

`floor(ratio[A012509(n+1)])`
-/

namespace A034972.P7244355761399330187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A034972.P7244355761399330187

/-! ## A034972.P917890546821783251

`floor(ratio[A000111(2*n+1)])`
-/

namespace A034972.P917890546821783251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A034972.P917890546821783251

/-!
# A034973: Number of distinct prime factors in central binomial coefficients C(n, floor(n/2)), the terms of A001405.

The programs for A034973, the canonical program `A034973.P13506425649681590282` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034973 has offset 1).

The definition of A034973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034973.P13506425649681590282

`A056175(n+1)+A056173(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A034973

/-- `A056175(n+1)+A056173(n+1)` -/
def P13506425649681590282.Spec : Prop :=
  ∀ n, P13506425649681590282.a n = A034973 (n + 1)

theorem P13506425649681590282.correct : P13506425649681590282.Spec := by
  intro n
  simp only [A034973, Nat.add_sub_cancel]

end A034973

/-! ## A034973.P13524049622791384423

`A000720(n+1)-A036541(n+1)`
-/

namespace A034973.P13524049622791384423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A036541 (n + 1)

end

end A034973.P13524049622791384423

namespace A034973

/-- `A000720(n+1)-A036541(n+1)` -/
def P13524049622791384423.Spec : Prop :=
  ∀ n, P13524049622791384423.a n = A034973 (n + 1)

theorem P13524049622791384423.correct : P13524049622791384423.Spec := by
  intro n
  simp only [A034973, Nat.add_sub_cancel, A034973.P13524049622791384423.a, A034973.P13506425649681590282.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036541, A036541.P333989908532824306.a, A056173, A056173.P15098762460861555107.a, A056175, A056175.P9200230780470454519.a, A001221, A001221.P10258181745752134128.a, A001405, A001405.P5205018418992951678.a, A056057, A056057.P2194597549001614042.a, A056169, A056169.P17430176249366647977.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A008833, A008833.P18388074464065390543.a, A055231, A055231.P8962300905713718501.a, A059841, A059841.P2666504972441551157.a, A007913, A007913.P11359412940648999332.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A071773, A071773.P10459083202328690793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A034973

/-! ## A034973.P18314021731351183035

`log2(A039593(n+1))`
-/

namespace A034973.P18314021731351183035
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A039593 (n + 1) : ℝ)

end

end A034973.P18314021731351183035

namespace A034973

/-- `log2(A039593(n+1))` -/
def P18314021731351183035.Spec : Prop :=
  ∀ n, P18314021731351183035.a n = (A034973 (n + 1) : ℝ)

end A034973

/-! ## A034973.P13682399389603818133

`val(A039593(n+2)-Δ[A039593(n+1)], 2)`
-/

namespace A034973.P13682399389603818133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039593 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A039593 (n + 2) - (f1 (n + 1) - f1 n)).toNat 2

end

end A034973.P13682399389603818133

namespace A034973

/-- `val(A039593(n+2)-Δ[A039593(n+1)], 2)` -/
def P13682399389603818133.Spec : Prop :=
  ∀ n, (P13682399389603818133.a n : ℤ) = A034973 (n + 1)

end A034973

/-! ## A034973.P5192134846296311864

`val(lcm(A039593(n+1), A135764(n+1)), 2)`
-/

namespace A034973.P5192134846296311864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.lcm (A039593 (n + 1)) (A135764 (n + 1))) 2

end

end A034973.P5192134846296311864

namespace A034973

/-- `val(lcm(A039593(n+1), A135764(n+1)), 2)` -/
def P5192134846296311864.Spec : Prop :=
  ∀ n, (P5192134846296311864.a n : ℤ) = A034973 (n + 1)

end A034973

/-! ## A034973.P14652216919256410959

`A048571(A074148(n+1))`
-/

namespace A034973.P14652216919256410959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048571 (A074148 (n + 1)).toNat

end

end A034973.P14652216919256410959

namespace A034973

/-- `A048571(A074148(n+1))` -/
def P14652216919256410959.Spec : Prop :=
  ∀ n, P14652216919256410959.a n = A034973 (n + 1)

end A034973

/-! ## A034973.P6571201916670841146

`A048571(A194274(n+1))`
-/

namespace A034973.P6571201916670841146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048571 (A194274 (n + 1)).toNat

end

end A034973.P6571201916670841146

namespace A034973

/-- `A048571(A194274(n+1))` -/
def P6571201916670841146.Spec : Prop :=
  ∀ n, P6571201916670841146.a n = A034973 (n + 1)

end A034973

/-! ## A034973.P5683908328363414427

`A048571(A080476(n+2))`
-/

namespace A034973.P5683908328363414427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048571 (A080476 (n + 2)).toNat

end

end A034973.P5683908328363414427

namespace A034973

/-- `A048571(A080476(n+2))` -/
def P5683908328363414427.Spec : Prop :=
  ∀ n, P5683908328363414427.a n = A034973 (n + 1)

end A034973

/-! ## A034973.P4323724854880497452

`A000005(2*A039593(n+1))-2`
-/

namespace A034973.P4323724854880497452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A039593 (n + 1)).toNat - 2

end

end A034973.P4323724854880497452

namespace A034973

/-- `A000005(2*A039593(n+1))-2` -/
def P4323724854880497452.Spec : Prop :=
  ∀ n, P4323724854880497452.a n = A034973 (n + 1)

end A034973

/-! ## A034973.P11855536228722085658

`A000120(A039593(n+1)-1)`
-/

namespace A034973.P11855536228722085658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A039593 (n + 1) - 1).toNat

end

end A034973.P11855536228722085658

namespace A034973

/-- `A000120(A039593(n+1)-1)` -/
def P11855536228722085658.Spec : Prop :=
  ∀ n, P11855536228722085658.a n = A034973 (n + 1)

end A034973

/-!
# A034974: Number of divisors of binomial(n, floor(n/2)), the terms of A001405.

The programs for A034974, the canonical program `A034974.P7253154564856362011` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034974 has offset 1).

The definition of A034974 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034974.P7253154564856362011

`A000005(A001405(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034974

/-- `A000005(A001405(n+1))` -/
def P7253154564856362011.Spec : Prop :=
  ∀ n, P7253154564856362011.a n = A034974 (n + 1)

theorem P7253154564856362011.correct : P7253154564856362011.Spec := by
  intro n
  simp only [A034974, Nat.add_sub_cancel]

end A034974

/-! ## A034974.P14763853420661923801

`A048243(n+1)+A039593(n+1)`
-/

namespace A034974.P14763853420661923801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048243 (n + 1) + A039593 (n + 1)

end

end A034974.P14763853420661923801

namespace A034974

/-- `A048243(n+1)+A039593(n+1)` -/
def P14763853420661923801.Spec : Prop :=
  ∀ n, P14763853420661923801.a n = A034974 (n + 1)

theorem P14763853420661923801.correct : P14763853420661923801.Spec := by
  intro n
  simp only [A034974, Nat.add_sub_cancel, A034974.P14763853420661923801.a, A034974.P7253154564856362011.a, A000005, A000005.P16091521709108585461.a, A001405, A001405.P5205018418992951678.a, A039593, A039593.P642452871237294568.a, A048243, A048243.P9528040760750464915.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A034973, A034973.P13506425649681590282.a, A056173, A056173.P15098762460861555107.a, A056175, A056175.P9200230780470454519.a, A001221, A001221.P10258181745752134128.a, A056057, A056057.P2194597549001614042.a, A056169, A056169.P17430176249366647977.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A034974

/-! ## A034974.P9106053479961996792

`A048243(n+1)+A000079(A034973(n+1))`
-/

namespace A034974.P9106053479961996792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048243 (n + 1) + A000079 (A034973 (n + 1)).toNat

end

end A034974.P9106053479961996792

namespace A034974

/-- `A048243(n+1)+A000079(A034973(n+1))` -/
def P9106053479961996792.Spec : Prop :=
  ∀ n, P9106053479961996792.a n = A034974 (n + 1)

end A034974

/-! ## A034974.P2415778918316004806

`A048244(n+1)+2*A048243(n+1)`
-/

namespace A034974.P2415778918316004806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048244 (n + 1) + 2 * A048243 (n + 1)

end

end A034974.P2415778918316004806

namespace A034974

/-- `A048244(n+1)+2*A048243(n+1)` -/
def P2415778918316004806.Spec : Prop :=
  ∀ n, P2415778918316004806.a n = A034974 (n + 1)

end A034974

/-! ## A034974.P5987890529835731169

`2*A039593(n+1)-A048244(n+1)`
-/

namespace A034974.P5987890529835731169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039593 (n + 1) - A048244 (n + 1)

end

end A034974.P5987890529835731169

namespace A034974

/-- `2*A039593(n+1)-A048244(n+1)` -/
def P5987890529835731169.Spec : Prop :=
  ∀ n, P5987890529835731169.a n = A034974 (n + 1)

end A034974

/-! ## A034974.P8924002855721466369

`A000079(A034973(n+1)+1)-A048244(n+1)`
-/

namespace A034974.P8924002855721466369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A034973 (n + 1) + 1).toNat - A048244 (n + 1)

end

end A034974.P8924002855721466369

namespace A034974

/-- `A000079(A034973(n+1)+1)-A048244(n+1)` -/
def P8924002855721466369.Spec : Prop :=
  ∀ n, P8924002855721466369.a n = A034974 (n + 1)

end A034974

/-! ## A034974.P6651553744476805221

`A048275(n+1)-A020740(n+1)`
-/

namespace A034974.P6651553744476805221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048275 (n + 1) - A020740 (n + 1)

end

end A034974.P6651553744476805221

namespace A034974

/-- `A048275(n+1)-A020740(n+1)` -/
def P6651553744476805221.Spec : Prop :=
  ∀ n, P6651553744476805221.a n = A034974 (n + 1)

end A034974

/-! ## A034974.P16052582134334189191

`A048570(∑[or(1, n+1)])`
-/

namespace A034974.P16052582134334189191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034974.P16052582134334189191

namespace A034974

/-- `A048570(∑[or(1, n+1)])` -/
def P16052582134334189191.Spec : Prop :=
  ∀ n, P16052582134334189191.a n = A034974 (n + 1)

end A034974

/-! ## A034974.P7644005082844662352

`A048570(∑[and(1, n)+n+1])`
-/

namespace A034974.P7644005082844662352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034974.P7644005082844662352

namespace A034974

/-- `A048570(∑[and(1, n)+n+1])` -/
def P7644005082844662352.Spec : Prop :=
  ∀ n, P7644005082844662352.a n = A034974 (n + 1)

end A034974

/-! ## A034974.P11216861069609021050

`A048570(∑[A098181(n)])`
-/

namespace A034974.P11216861069609021050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034974.P11216861069609021050

namespace A034974

/-- `A048570(∑[A098181(n)])` -/
def P11216861069609021050.Spec : Prop :=
  ∀ n, P11216861069609021050.a n = A034974 (n + 1)

end A034974

/-! ## A034974.P7597916287684659698

`A048570(A074148(n+1))`
-/

namespace A034974.P7597916287684659698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (A074148 (n + 1)).toNat

end

end A034974.P7597916287684659698

namespace A034974

/-- `A048570(A074148(n+1))` -/
def P7597916287684659698.Spec : Prop :=
  ∀ n, P7597916287684659698.a n = A034974 (n + 1)

end A034974

/-! ## A034974.P13614375700840534371

`A048570(A116940(n)+1)`
-/

namespace A034974.P13614375700840534371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (A116940 n + 1).toNat

end

end A034974.P13614375700840534371

namespace A034974

/-- `A048570(A116940(n)+1)` -/
def P13614375700840534371.Spec : Prop :=
  ∀ n, P13614375700840534371.a n = A034974 (n + 1)

end A034974

/-! ## A034974.P6234872815159304614

`A048570(A194274(n+1))`
-/

namespace A034974.P6234872815159304614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (A194274 (n + 1)).toNat

end

end A034974.P6234872815159304614

namespace A034974

/-- `A048570(A194274(n+1))` -/
def P6234872815159304614.Spec : Prop :=
  ∀ n, P6234872815159304614.a n = A034974 (n + 1)

end A034974

/-! ## A034974.P6453254899865533043

`A048570(A007590(n+2))`
-/

namespace A034974.P6453254899865533043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (A007590 (n + 2)).toNat

end

end A034974.P6453254899865533043

namespace A034974

/-- `A048570(A007590(n+2))` -/
def P6453254899865533043.Spec : Prop :=
  ∀ n, P6453254899865533043.a n = A034974 (n + 1)

end A034974

/-! ## A034974.P13993196447974060733

`A048570(A080476(n+2))`
-/

namespace A034974.P13993196447974060733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (A080476 (n + 2)).toNat

end

end A034974.P13993196447974060733

namespace A034974

/-- `A048570(A080476(n+2))` -/
def P13993196447974060733.Spec : Prop :=
  ∀ n, P13993196447974060733.a n = A034974 (n + 1)

end A034974

/-! ## A034974.P15243213723042048804

`A048570(A001972(Δ[n²]))`
-/

namespace A034974.P15243213723042048804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (A001972 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A034974.P15243213723042048804

namespace A034974

/-- `A048570(A001972(Δ[n²]))` -/
def P15243213723042048804.Spec : Prop :=
  ∀ n, P15243213723042048804.a n = A034974 (n + 1)

end A034974

/-! ## A034974.P18093070832813711951

`A048570(∑[2*A008619(n)])`
-/

namespace A034974.P18093070832813711951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034974.P18093070832813711951

namespace A034974

/-- `A048570(∑[2*A008619(n)])` -/
def P18093070832813711951.Spec : Prop :=
  ∀ n, P18093070832813711951.a n = A034974 (n + 1)

end A034974

/-! ## A034974.P338553859074914806

`A048570(∑[A000034(n)+n])`
-/

namespace A034974.P338553859074914806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034974.P338553859074914806

namespace A034974

/-- `A048570(∑[A000034(n)+n])` -/
def P338553859074914806.Spec : Prop :=
  ∀ n, P338553859074914806.a n = A034974 (n + 1)

end A034974

/-! ## A034974.P14632102144091504830

`A048570(A080827(n+2)-1)`
-/

namespace A034974.P14632102144091504830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (A080827 (n + 2) - 1).toNat

end

end A034974.P14632102144091504830

namespace A034974

/-- `A048570(A080827(n+2)-1)` -/
def P14632102144091504830.Spec : Prop :=
  ∀ n, P14632102144091504830.a n = A034974 (n + 1)

end A034974

/-! ## A034974.P8372791797904737570

`A048570(∑[A083219(2*(n+1))])`
-/

namespace A034974.P8372791797904737570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083219 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034974.P8372791797904737570

namespace A034974

/-- `A048570(∑[A083219(2*(n+1))])` -/
def P8372791797904737570.Spec : Prop :=
  ∀ n, P8372791797904737570.a n = A034974 (n + 1)

end A034974

/-!
# A034975: One seventh of octo-factorial numbers.

The programs for A034975, there is no canonical definition to state claims against.
-/

/-! ## A034975.P13958086075621831044

`A049210(n+1)/7`
-/

namespace A034975.P13958086075621831044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049210 (n + 1) : ℚ) / 7

end

end A034975.P13958086075621831044

/-! ## A034975.P11636952852611570367

`∏[record[xor(7, n)]]/7`
-/

namespace A034975.P11636952852611570367
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 7

end

end A034975.P11636952852611570367

/-! ## A034975.P5533181365982375266

`∏[8*n+7]/7`
-/

namespace A034975.P5533181365982375266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 7

end

end A034975.P5533181365982375266

/-! ## A034975.P2403706816724277247

`∏[a(n-1)+8]` with `a(0)=1, a(1)=15`
-/

namespace A034975.P2403706816724277247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034975.P2403706816724277247

/-! ## A034975.P18376141610980127850

`a(n-1)*record[xor(7, n)]` with `a(0)=1`
-/

namespace A034975.P18376141610980127850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034975.P18376141610980127850

/-!
# A034976: One eighth of octo-factorial numbers.

The programs for A034976, the canonical program `A034976.P15426485438409877223` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034976 has offset 1).

The definition of A034976 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034976.P15426485438409877223

`8^n*(n+1)!`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034976

/-- `8^n*(n+1)!` -/
def P15426485438409877223.Spec : Prop :=
  ∀ n, (P15426485438409877223.a n : ℤ) = A034976 (n + 1)

theorem P15426485438409877223.correct : P15426485438409877223.Spec := by
  intro n
  simp only [A034976, Nat.add_sub_cancel]

end A034976

/-! ## A034976.P9776315267168012623

`∏[8*(n+1)]/8`
-/

namespace A034976.P9776315267168012623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 8

end

end A034976.P9776315267168012623

namespace A034976

/-- `∏[8*(n+1)]/8` -/
def P9776315267168012623.Spec : Prop :=
  ∀ n, P9776315267168012623.a n = (A034976 (n + 1) : ℚ)

end A034976

/-! ## A034976.P1724280136495332942

`∏[a(n-1)+8]` with `a(0)=1, a(1)=16`
-/

namespace A034976.P1724280136495332942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034976.P1724280136495332942

namespace A034976

/-- `∏[a(n-1)+8]` -/
def P1724280136495332942.Spec : Prop :=
  ∀ n, (P1724280136495332942.a n : ℤ) = A034976 (n + 1)

end A034976

/-! ## A034976.P4492108751059566158

`8*(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A034976.P4492108751059566158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  8 * ((n + 1) * a (n - 1))

end

end A034976.P4492108751059566158

namespace A034976

/-- `8*(n+1)*a(n-1)` -/
def P4492108751059566158.Spec : Prop :=
  ∀ n, (P4492108751059566158.a n : ℤ) = A034976 (n + 1)

end A034976

/-! ## A034976.P6620642201995121097

`a(n-1)*Δ[Δ[n²]²]` with `a(0)=1`
-/

namespace A034976.P6620642201995121097
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (f1 (n + 1) - f1 n)

end

end A034976.P6620642201995121097

namespace A034976

/-- `a(n-1)*Δ[Δ[n²]²]` -/
def P6620642201995121097.Spec : Prop :=
  ∀ n, P6620642201995121097.a n = A034976 (n + 1)

end A034976

/-!
# A034977: Expansion of 1/(1-64*x)^(1/8), related to octo-factorial numbers A045755.

The programs for A034977, there is no canonical definition to state claims against.
-/

/-! ## A034977.P11453573930438897287

`8^n*A045755(n)/n!`
-/

namespace A034977.P11453573930438897287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ n : ℤ) * A045755 n : ℚ) / (Nat.factorial n : ℚ)

end

end A034977.P11453573930438897287

/-! ## A034977.P1680395110080415083

`A248332(∑[n])`
-/

namespace A034977.P1680395110080415083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248332 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034977.P1680395110080415083

/-! ## A034977.P12755232918565888019

`4^n*A224881(n)`
-/

namespace A034977.P12755232918565888019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A224881 n

end

end A034977.P12755232918565888019

/-! ## A034977.P9662331535774586592

`A224881(n)*A266176(2*n)`
-/

namespace A034977.P9662331535774586592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224881 n * A266176 (2 * n)

end

end A034977.P9662331535774586592

/-! ## A034977.P6587359231524447900

`A000079(n)*A224881(n)*A000079(n)`
-/

namespace A034977.P6587359231524447900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A224881 n * A000079 n

end

end A034977.P6587359231524447900

/-!
# A034978: a(n)^2 is smallest square starting with a string of n 1's.

The programs for A034978, there is no canonical definition to state claims against.
-/

/-! ## A034978.P9021126453232225502

`sqrt(A034979(n+1))`
-/

namespace A034978.P9021126453232225502
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A034979 (n + 1) : ℝ)

end

end A034978.P9021126453232225502

/-! ## A034978.P16948972844705649797

`A034979(n+1)^(A066247((n+1)²)/2)`
-/

namespace A034978.P16948972844705649797
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034979 (n + 1) : ℝ) ^ ((A066247 ((n + 1) ^ 2) : ℚ) / 2 : ℝ)

end

end A034978.P16948972844705649797

/-! ## A034978.P11547917823326254170

`root(A034979(n+1), A001316(A001316(n)))`
-/

namespace A034978.P11547917823326254170
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034979 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A034978.P11547917823326254170

/-! ## A034978.P14724315993873156429

`root(A034979(n+1), 2%A036509(n+1))`
-/

namespace A034978.P14724315993873156429
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034979 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A036509 (n + 1)) : ℝ))

end

end A034978.P14724315993873156429

/-!
# A034979: Smallest square starting with a string of n 1's.

The programs for A034979, there is no canonical definition to state claims against.
-/

/-! ## A034979.P17347526877156070288

`A034978(n+1)²`
-/

namespace A034979.P17347526877156070288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034978 (n + 1) ^ 2

end

end A034979.P17347526877156070288

/-! ## A034979.P10693418410417294644

`A034978(n+1)^A001316(A001316(n))`
-/

namespace A034979.P10693418410417294644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034978 (n + 1) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A034979.P10693418410417294644

/-! ## A034979.P6579495052222592903

`A034978(n+1)^A000005(A034962(n+1))`
-/

namespace A034979.P6579495052222592903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034978 (n + 1) : ℚ) ^ (A000005 (A034962 (n + 1)).toNat : ℤ)

end

end A034979.P6579495052222592903

/-! ## A034979.P3572854561833839919

`A034978(n+1)^A000005(A034965(n+1))`
-/

namespace A034979.P3572854561833839919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034978 (n + 1) : ℚ) ^ (A000005 (A034965 (n + 1)).toNat : ℤ)

end

end A034979.P3572854561833839919

/-!
# A034980: a(n)^2 is smallest positive square starting with a string of n 2's.

The programs for A034980, there is no canonical definition to state claims against.
-/

/-! ## A034980.P10002441789224841618

`A018851(∏{p}[∑[floor(10^n/5)], #])`
-/

namespace A034980.P10002441789224841618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 5⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A034980.P10002441789224841618

/-!
# A034981: Smallest square starting with a string of n 2's.

The programs for A034981, there is no canonical definition to state claims against.
-/

/-! ## A034981.P6574775213739298361

`A034980(n+1)²`
-/

namespace A034981.P6574775213739298361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034980 (n + 1) ^ 2

end

end A034981.P6574775213739298361

/-! ## A034981.P3040277653997364194

`∏[ratio[A034980(n)]²]`
-/

namespace A034981.P3040277653997364194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034980 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℚ) / (f2 n : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034981.P3040277653997364194

/-! ## A034981.P1149363099795347530

`A034980(n+1)^A006530(A140513(n))`
-/

namespace A034981.P1149363099795347530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034980 (n + 1) : ℚ) ^ (A006530 (A140513 n).toNat : ℤ)

end

end A034981.P1149363099795347530

/-! ## A034981.P4735946998703919621

`A034980(n+1)^A323741(A000003(n+1))`
-/

namespace A034981.P4735946998703919621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034980 (n + 1) : ℚ) ^ (A323741 (A000003 (n + 1)).toNat : ℤ)

end

end A034981.P4735946998703919621

/-! ## A034981.P15686249077296272065

`A034980(n+1)^A323741(A323767(n))`
-/

namespace A034981.P15686249077296272065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034980 (n + 1) : ℚ) ^ (A323741 (A323767 n).toNat : ℤ)

end

end A034981.P15686249077296272065

/-!
# A034982: a(n)^2 is smallest square starting with a string of n 3's.

The programs for A034982, there is no canonical definition to state claims against.
-/

/-! ## A034982.P7813056390162476951

`sqrt(A034983(n+1))`
-/

namespace A034982.P7813056390162476951
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A034983 (n + 1) : ℝ)

end

end A034982.P7813056390162476951

/-! ## A034982.P16870172772074152074

`root(A034983(n+1), ratio[A000079(n)])`
-/

namespace A034982.P16870172772074152074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034983 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A034982.P16870172772074152074

/-! ## A034982.P16165849736850571543

`root(A034983(n+1), 2%A002145(n+1))`
-/

namespace A034982.P16165849736850571543
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034983 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A002145 (n + 1)) : ℝ))

end

end A034982.P16165849736850571543

/-! ## A034982.P2775556385812894883

`root(A034983(n+1), A001316(A001316(n)))`
-/

namespace A034982.P2775556385812894883
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034983 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A034982.P2775556385812894883

/-!
# A034983: Smallest square starting with a string of n 3's.

The programs for A034983, there is no canonical definition to state claims against.
-/

/-! ## A034983.P4613644959184203140

`A034982(n+1)²`
-/

namespace A034983.P4613644959184203140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034982 (n + 1) ^ 2

end

end A034983.P4613644959184203140

/-! ## A034983.P1481209835500816062

`A034982(n+1)^A000005(A151800(n))`
-/

namespace A034983.P1481209835500816062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034982 (n + 1) : ℚ) ^ (A000005 (A151800 n).toNat : ℤ)

end

end A034983.P1481209835500816062

/-! ## A034983.P2459701327308039426

`A034982(n+1)^A020639(Δ[A017330(n)])`
-/

namespace A034983.P2459701327308039426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017330 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034982 (n + 1) : ℚ) ^ (A020639 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A034983.P2459701327308039426

/-! ## A034983.P135650066735420764

`A034982(n+1)^A000005(A031928(n+1))`
-/

namespace A034983.P135650066735420764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034982 (n + 1) : ℚ) ^ (A000005 (A031928 (n + 1)).toNat : ℤ)

end

end A034983.P135650066735420764

/-! ## A034983.P9041221203181082808

`A034982(n+1)^A000005(A034962(n+1))`
-/

namespace A034983.P9041221203181082808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034982 (n + 1) : ℚ) ^ (A000005 (A034962 (n + 1)).toNat : ℤ)

end

end A034983.P9041221203181082808

/-! ## A034983.P16245150312704759960

`A034982(n+1)^A000005(A034965(n+1))`
-/

namespace A034983.P16245150312704759960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034982 (n + 1) : ℚ) ^ (A000005 (A034965 (n + 1)).toNat : ℤ)

end

end A034983.P16245150312704759960

/-!
# A034984: a(n)^2 is smallest square starting with a string of n 4's.

The programs for A034984, there is no canonical definition to state claims against.
-/

/-! ## A034984.P2619326221728976315

`sqrt(A034985(n+1))`
-/

namespace A034984.P2619326221728976315
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A034985 (n + 1) : ℝ)

end

end A034984.P2619326221728976315

/-! ## A034984.P823794465872018345

`root(A034985(n+1), A001316(A001316(n)))`
-/

namespace A034984.P823794465872018345
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034985 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A034984.P823794465872018345

/-! ## A034984.P18112308742681949776

`root(A034985(n+1), A266722(A266722(n)))`
-/

namespace A034984.P18112308742681949776
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034985 (n + 1) : ℝ) ^ (1 / (A266722 (A266722 n).toNat : ℝ))

end

end A034984.P18112308742681949776

/-! ## A034984.P11361341942693954097

`root(A034985(n+1), A306240(A306240(n)))`
-/

namespace A034984.P11361341942693954097
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034985 (n + 1) : ℝ) ^ (1 / (A306240 (A306240 n).toNat : ℝ))

end

end A034984.P11361341942693954097

/-!
# A034985: Smallest square starting with a string of n 4's.

The programs for A034985, there is no canonical definition to state claims against.
-/

/-! ## A034985.P8763067276278019106

`A034984(n+1)²`
-/

namespace A034985.P8763067276278019106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034984 (n + 1) ^ 2

end

end A034985.P8763067276278019106

/-! ## A034985.P10273940364714701903

`A034984(n+1)^A000005(A031937(n))`
-/

namespace A034985.P10273940364714701903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034984 (n + 1) : ℚ) ^ (A000005 (A031937 n).toNat : ℤ)

end

end A034985.P10273940364714701903

/-! ## A034985.P1402808249957825653

`A034984(n+1)^A000005(A034962(n+1))`
-/

namespace A034985.P1402808249957825653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034984 (n + 1) : ℚ) ^ (A000005 (A034962 (n + 1)).toNat : ℤ)

end

end A034985.P1402808249957825653

/-! ## A034985.P3017368199617866585

`A034984(n+1)^A000005(A034965(n+1))`
-/

namespace A034985.P3017368199617866585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034984 (n + 1) : ℚ) ^ (A000005 (A034965 (n + 1)).toNat : ℤ)

end

end A034985.P3017368199617866585

/-! ## A034985.P9862675725860618200

`A034984(n+1)^A020639(A043569(n+1))`
-/

namespace A034985.P9862675725860618200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034984 (n + 1) : ℚ) ^ (A020639 (A043569 (n + 1)).toNat : ℤ)

end

end A034985.P9862675725860618200

/-!
# A034986: a(n)^2 is smallest square number starting with a string of n 5's.

The programs for A034986, there is no canonical definition to state claims against.
-/

/-! ## A034986.P11581886103878988918

`sqrt(A034987(n+1))`
-/

namespace A034986.P11581886103878988918
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A034987 (n + 1) : ℝ)

end

end A034986.P11581886103878988918

/-! ## A034986.P3506645928855073382

`root(A034987(n+1), ratio[A000079(n)])`
-/

namespace A034986.P3506645928855073382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034987 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A034986.P3506645928855073382

/-! ## A034986.P12927723423588927772

`root(A034987(n+1), 2%A055983(n))`
-/

namespace A034986.P12927723423588927772
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034987 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A055983 n) : ℝ))

end

end A034986.P12927723423588927772

/-! ## A034986.P4910085314838470263

`root(A034987(n+1), A001316(A001316(n)))`
-/

namespace A034986.P4910085314838470263
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034987 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A034986.P4910085314838470263

/-! ## A034986.P12404953983290080259

`root(A034987(n+1), gcd(2, A048345(n+1)))`
-/

namespace A034986.P12404953983290080259
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034987 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A048345 (n + 1)) : ℝ))

end

end A034986.P12404953983290080259

/-!
# A034987: Smallest square starting with a string of n 5's.

The programs for A034987, there is no canonical definition to state claims against.
-/

/-! ## A034987.P12166084250507083096

`A034986(n+1)²`
-/

namespace A034987.P12166084250507083096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034986 (n + 1) ^ 2

end

end A034987.P12166084250507083096

/-! ## A034987.P3865493860171694243

`A034986(n+1)^A020639(2*∑{d}[n+1, #])`
-/

namespace A034987.P3865493860171694243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034986 (n + 1) : ℚ) ^ (A020639 (2 * (∑ d ∈ Nat.divisors (f1 n), d)) : ℤ)

end

end A034987.P3865493860171694243

/-! ## A034987.P10782386138417471314

`A034986(A000027(n+1))*A034986(n+1)`
-/

namespace A034987.P10782386138417471314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034986 (A000027 (n + 1)).toNat * A034986 (n + 1)

end

end A034987.P10782386138417471314

/-! ## A034987.P15277841886210643043

`A034986(n+1)^A000005(A002144(n+1))`
-/

namespace A034987.P15277841886210643043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034986 (n + 1) : ℚ) ^ (A000005 (A002144 (n + 1)).toNat : ℤ)

end

end A034987.P15277841886210643043

/-! ## A034987.P16728565518978923116

`A034986(n+1)^A000005(A034962(n+1))`
-/

namespace A034987.P16728565518978923116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034986 (n + 1) : ℚ) ^ (A000005 (A034962 (n + 1)).toNat : ℤ)

end

end A034987.P16728565518978923116

/-! ## A034987.P10157955362076513817

`A034986(n+1)^A000005(A034965(n+1))`
-/

namespace A034987.P10157955362076513817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034986 (n + 1) : ℚ) ^ (A000005 (A034965 (n + 1)).toNat : ℤ)

end

end A034987.P10157955362076513817

/-! ## A034987.P11736220969792377266

`A034986(n+1)^A001222(A046388(n+1))`
-/

namespace A034987.P11736220969792377266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034986 (n + 1) : ℚ) ^ (A001222 (A046388 (n + 1)).toNat : ℤ)

end

end A034987.P11736220969792377266

/-! ## A034987.P4988980777028142573

`A034986(n+1)^A000005(A107257(n+1))`
-/

namespace A034987.P4988980777028142573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034986 (n + 1) : ℚ) ^ (A000005 (A107257 (n + 1)).toNat : ℤ)

end

end A034987.P4988980777028142573

/-!
# A034988: a(n) is root of smallest square starting with a string of n 'digit_6's.

The programs for A034988, there is no canonical definition to state claims against.
-/

/-! ## A034988.P16180279079539710591

`sqrt(A034989(n+1))`
-/

namespace A034988.P16180279079539710591
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A034989 (n + 1) : ℝ)

end

end A034988.P16180279079539710591

/-! ## A034988.P13666192444648810593

`root(A034989(n+1), ratio[A000079(n)])`
-/

namespace A034988.P13666192444648810593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034989 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A034988.P13666192444648810593

/-! ## A034988.P6373144301398064078

`root(A034989(n+1), A001316(A001316(n)))`
-/

namespace A034988.P6373144301398064078
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034989 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A034988.P6373144301398064078

/-!
# A034989: Smallest squares starting with a string of n 6's.

The programs for A034989, there is no canonical definition to state claims against.
-/

/-! ## A034989.P9802757078965009021

`A034988(n+1)²`
-/

namespace A034989.P9802757078965009021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034988 (n + 1) ^ 2

end

end A034989.P9802757078965009021

/-! ## A034989.P8426042979903429500

`A034988(n+1)^(2%A272946(n))`
-/

namespace A034989.P8426042979903429500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034988 (n + 1) : ℚ) ^ (Int.tmod 2 (A272946 n) : ℤ)

end

end A034989.P8426042979903429500

/-! ## A034989.P8611634839354004058

`A034988(n+1)^(A020725(n+1)-n)`
-/

namespace A034989.P8611634839354004058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034988 (n + 1) : ℚ) ^ (A020725 (n + 1) - (n : ℤ) : ℤ)

end

end A034989.P8611634839354004058

/-! ## A034989.P422121320795529183

`A034988(n+1)^A222153(A000124(n))`
-/

namespace A034989.P422121320795529183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034988 (n + 1) : ℚ) ^ (A222153 (A000124 n).toNat : ℤ)

end

end A034989.P422121320795529183

/-! ## A034989.P4710208391463850807

`A034988(n+1)^A000005(A006567(n+1))`
-/

namespace A034989.P4710208391463850807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034988 (n + 1) : ℚ) ^ (A000005 (A006567 (n + 1)).toNat : ℤ)

end

end A034989.P4710208391463850807

/-! ## A034989.P11677843831812032042

`A034988(n+1)^A000005(A109574(n+1))`
-/

namespace A034989.P11677843831812032042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034988 (n + 1) : ℚ) ^ (A000005 (A109574 (n + 1)).toNat : ℤ)

end

end A034989.P11677843831812032042

/-! ## A034989.P5819668820232207553

`A034988(n+1)^A000005(A109580(n+1))`
-/

namespace A034989.P5819668820232207553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034988 (n + 1) : ℚ) ^ (A000005 (A109580 (n + 1)).toNat : ℤ)

end

end A034989.P5819668820232207553

/-! ## A034989.P11102220649150370743

`A034988(n+1)^A020639(A109592(n+1))`
-/

namespace A034989.P11102220649150370743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034988 (n + 1) : ℚ) ^ (A020639 (A109592 (n + 1)).toNat : ℤ)

end

end A034989.P11102220649150370743

/-! ## A034989.P14379235316088425650

`A034988(n+1)^A000005(A007917(n+2))`
-/

namespace A034989.P14379235316088425650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034988 (n + 1) : ℚ) ^ (A000005 (A007917 (n + 2)).toNat : ℤ)

end

end A034989.P14379235316088425650

/-!
# A034990: a(n)^2 is smallest square starting with a string of n 7's.

The programs for A034990, there is no canonical definition to state claims against.
-/

/-! ## A034990.P4584423833749825015

`sqrt(A034991(n+1))`
-/

namespace A034990.P4584423833749825015
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A034991 (n + 1) : ℝ)

end

end A034990.P4584423833749825015

/-! ## A034990.P16540368374781510185

`root(A034991(n+1), gcd(2, A022093(n)))`
-/

namespace A034990.P16540368374781510185
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034991 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A022093 n) : ℝ))

end

end A034990.P16540368374781510185

/-! ## A034990.P2681428325282232505

`A034991(n+1)^(A119022(C(n, 64))/2)`
-/

namespace A034990.P2681428325282232505
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034991 (n + 1) : ℝ) ^ ((A119022 (Nat.choose n 64) : ℚ) / 2 : ℝ)

end

end A034990.P2681428325282232505

/-! ## A034990.P8749930701077107750

`root(A034991(n+1), A001316(A001316(n)))`
-/

namespace A034990.P8749930701077107750
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034991 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A034990.P8749930701077107750

/-! ## A034990.P14927844364658392977

`root(A034991(n+1), 2%A036514(n+1))`
-/

namespace A034990.P14927844364658392977
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034991 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A036514 (n + 1)) : ℝ))

end

end A034990.P14927844364658392977

/-!
# A034991: Smallest square starting with a string of n 7's.

The programs for A034991, there is no canonical definition to state claims against.
-/

/-! ## A034991.P9392877319380527412

`A034990(n+1)²`
-/

namespace A034991.P9392877319380527412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034990 (n + 1) ^ 2

end

end A034991.P9392877319380527412

/-! ## A034991.P8312392207641310386

`A034990(n+1)^A000005(A027701(n+1))`
-/

namespace A034991.P8312392207641310386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034990 (n + 1) : ℚ) ^ (A000005 (A027701 (n + 1)).toNat : ℤ)

end

end A034991.P8312392207641310386

/-! ## A034991.P16981891205931717922

`A034990(n+1)^A000005(A144256(n+1))`
-/

namespace A034991.P16981891205931717922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034990 (n + 1) : ℚ) ^ (A000005 (A144256 (n + 1)).toNat : ℤ)

end

end A034991.P16981891205931717922

/-! ## A034991.P604741653163927418

`A034990(n+1)^A020639(A158955(n+1))`
-/

namespace A034991.P604741653163927418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034990 (n + 1) : ℚ) ^ (A020639 (A158955 (n + 1)).toNat : ℤ)

end

end A034991.P604741653163927418

/-! ## A034991.P4500104404461728000

`A034990(n+1)^A020639(A335140(n+1))`
-/

namespace A034991.P4500104404461728000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034990 (n + 1) : ℚ) ^ (A020639 (A335140 (n + 1)).toNat : ℤ)

end

end A034991.P4500104404461728000

/-!
# A034992: a(n)^2 is smallest square number starting with a string of n 8's.

The programs for A034992, there is no canonical definition to state claims against.
-/

/-! ## A034992.P3468632165397112148

`sqrt(A034993(n+1))`
-/

namespace A034992.P3468632165397112148
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A034993 (n + 1) : ℝ)

end

end A034992.P3468632165397112148

/-! ## A034992.P1216681379015888151

`root(A034993(n+1), A001316(A001316(n)))`
-/

namespace A034992.P1216681379015888151
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034993 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A034992.P1216681379015888151

/-! ## A034992.P13766376013616975493

`root(A034993(n+1), 2%A036509(n+1))`
-/

namespace A034992.P13766376013616975493
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034993 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A036509 (n + 1)) : ℝ))

end

end A034992.P13766376013616975493

/-!
# A034993: Smallest square starting with a string of n 8's.

The programs for A034993, there is no canonical definition to state claims against.
-/

/-! ## A034993.P5840548607761188821

`A034992(n+1)²`
-/

namespace A034993.P5840548607761188821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034992 (n + 1) ^ 2

end

end A034993.P5840548607761188821

/-! ## A034993.P15860688826348117817

`A034992(n+1)^A000005(A208238(n))`
-/

namespace A034993.P15860688826348117817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034992 (n + 1) : ℚ) ^ (A000005 (A208238 n).toNat : ℤ)

end

end A034993.P15860688826348117817

/-! ## A034993.P8086016787197577389

`A034992(n+1)^A000040(A151933(n)!)`
-/

namespace A034993.P8086016787197577389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034992 (n + 1) : ℚ) ^ (A000040 (Nat.factorial (A151933 n).toNat) : ℤ)

end

end A034993.P8086016787197577389

/-! ## A034993.P1970600294420113806

`A034992(n+1)^A000005(A049588(n+1))`
-/

namespace A034993.P1970600294420113806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034992 (n + 1) : ℚ) ^ (A000005 (A049588 (n + 1)).toNat : ℤ)

end

end A034993.P1970600294420113806

/-! ## A034993.P237761384212367344

`A034992(n+1)^A001222(A075277(n+1))`
-/

namespace A034993.P237761384212367344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034992 (n + 1) : ℚ) ^ (A001222 (A075277 (n + 1)).toNat : ℤ)

end

end A034993.P237761384212367344

/-! ## A034993.P12881387279124267250

`A034992(n+1)^A000005(A077800(n+1))`
-/

namespace A034993.P12881387279124267250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034992 (n + 1) : ℚ) ^ (A000005 (A077800 (n + 1)).toNat : ℤ)

end

end A034993.P12881387279124267250

/-! ## A034993.P14150724545180025814

`A034992(n+1)^A000005(A107813(n+1))`
-/

namespace A034993.P14150724545180025814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034992 (n + 1) : ℚ) ^ (A000005 (A107813 (n + 1)).toNat : ℤ)

end

end A034993.P14150724545180025814

/-! ## A034993.P16120626546067980129

`A034992(n+1)^A000005(A301916(n+1))`
-/

namespace A034993.P16120626546067980129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034992 (n + 1) : ℚ) ^ (A000005 (A301916 (n + 1)).toNat : ℤ)

end

end A034993.P16120626546067980129

/-!
# A034994: Square root of smallest square starting with a string of n 9's.

The programs for A034994, there is no canonical definition to state claims against.
-/

/-! ## A034994.P3772140287590368769

`sqrt(A034995(n+1))`
-/

namespace A034994.P3772140287590368769
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A034995 (n + 1) : ℝ)

end

end A034994.P3772140287590368769

/-! ## A034994.P12067048415465891280

`root(A034995(n+1), gcd(2, A016825(n)))`
-/

namespace A034994.P12067048415465891280
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034995 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A016825 n) : ℝ))

end

end A034994.P12067048415465891280

/-! ## A034994.P4475614160180489181

`root(A034995(n+1), A001316(A001316(n)))`
-/

namespace A034994.P4475614160180489181
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034995 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A034994.P4475614160180489181

/-! ## A034994.P11241887778244829655

`A034995(n+1)^(A269246(n)!/2)`
-/

namespace A034994.P11241887778244829655
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034995 (n + 1) : ℝ) ^ ((Nat.factorial (A269246 n).toNat : ℚ) / 2 : ℝ)

end

end A034994.P11241887778244829655

/-! ## A034994.P4531539387053195240

`A034995(n+1)^(A062513(n+1)/2)`
-/

namespace A034994.P4531539387053195240
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034995 (n + 1) : ℝ) ^ ((A062513 (n + 1) : ℚ) / 2 : ℝ)

end

end A034994.P4531539387053195240

/-!
# A034995: Smallest square starting with a string of n 9's.

The programs for A034995, there is no canonical definition to state claims against.
-/

/-! ## A034995.P14484873539361482360

`A034994(n+1)²`
-/

namespace A034995.P14484873539361482360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034994 (n + 1) ^ 2

end

end A034995.P14484873539361482360

/-! ## A034995.P1385081625362057641

`A034994(n+1)^A000034(p?[or(3, n)+1+n])`
-/

namespace A034995.P1385081625362057641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n + 1 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034994 (n + 1) : ℚ) ^ (A000034 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℤ)

end

end A034995.P1385081625362057641

/-! ## A034995.P3945147561461028539

`A034994(n+1)^A000034(3*(n+1)/and(n+1, -(n+1)))`
-/

namespace A034995.P3945147561461028539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034994 (n + 1) : ℚ) ^ (A000034 (SequenceMachineLib.roundAway (3 * ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)))).toNat : ℤ)

end

end A034995.P3945147561461028539

/-! ## A034995.P1614105072313505967

`A034994(n+1)^A020639(A016825(n))`
-/

namespace A034995.P1614105072313505967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034994 (n + 1) : ℚ) ^ (A020639 (A016825 n).toNat : ℤ)

end

end A034995.P1614105072313505967

/-! ## A034995.P14810665301827088434

`A034994(n+1)^A000040(A062513(n+1))`
-/

namespace A034995.P14810665301827088434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034994 (n + 1) : ℚ) ^ (A000040 (A062513 (n + 1)).toNat : ℤ)

end

end A034995.P14810665301827088434

/-!
# A034996: Related to octo-factorial numbers A045755.

The programs for A034996, there is no canonical definition to state claims against.
-/

/-! ## A034996.P14128952907241513892

`8^n*A045755(n+1)/(n+1)!`
-/

namespace A034996.P14128952907241513892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ n : ℤ) * A045755 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A034996.P14128952907241513892

/-! ## A034996.P15609292401739974357

`A000079(n)²/2*A224881(n+1)`
-/

namespace A034996.P15609292401739974357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 : ℚ) / 2 * (A224881 (n + 1) : ℚ)

end

end A034996.P15609292401739974357

/-! ## A034996.P5156972213140879599

`A000079(2*n)/2*A224881(n+1)`
-/

namespace A034996.P5156972213140879599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * n) : ℚ) / 2 * (A224881 (n + 1) : ℚ)

end

end A034996.P5156972213140879599

/-! ## A034996.P639343711456680240

`A266176(2*n)/2*A224881(n+1)`
-/

namespace A034996.P639343711456680240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266176 (2 * n) : ℚ) / 2 * (A224881 (n + 1) : ℚ)

end

end A034996.P639343711456680240

/-! ## A034996.P17089407156874026046

`A034977(n+1)/8`
-/

namespace A034996.P17089407156874026046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034977 (n + 1) : ℚ) / 8

end

end A034996.P17089407156874026046

/-! ## A034996.P13442636336398528463

`Δ[∑[A034977(n)]/8]`
-/

namespace A034996.P13442636336398528463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034977 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034996.P13442636336398528463

/-! ## A034996.P17406714340606131769

`record[ratio[A034977(A051340(n))]]`
-/

namespace A034996.P17406714340606131769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034977 (A051340 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034996.P17406714340606131769

/-! ## A034996.P17871360603037537940

`record[ratio[A034977(A193592(n))]]`
-/

namespace A034996.P17871360603037537940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034977 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034996.P17871360603037537940

/-!
# A034997: Number of generalized retarded functions in quantum field theory.

The programs for A034997, there is no canonical definition to state claims against.
-/

/-! ## A034997.P7632946181269409919

`2*A045990(n+1)`
-/

namespace A034997.P7632946181269409919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045990 (n + 1)

end

end A034997.P7632946181269409919

/-! ## A034997.P13089557564649615309

`A045990(lt[∑{e}[n+1, #], 3]+1)+A045990(n+1)`
-/

namespace A034997.P13089557564649615309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045990 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1) + A045990 (n + 1)

end

end A034997.P13089557564649615309

/-! ## A034997.P84053087062737261

`A045990(n+1)+A045990(A005496(n))`
-/

namespace A034997.P84053087062737261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045990 (n + 1) + A045990 (A005496 n).toNat

end

end A034997.P84053087062737261

/-!
# A034998: Expansion of Product (1+q^(2k-1))^(-8)*(1+q^(4k))^(-8), k=1..inf.

The programs for A034998, there is no canonical definition to state claims against.
-/

/-! ## A034998.P11121783857718683103

`xor(A001222(A140307(n)), A140289(n+2))`
-/

namespace A034998.P11121783857718683103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A140307 n).toNat) (A140289 (n + 2))

end

end A034998.P11121783857718683103

/-!
# A034999: Number of ways to cut a 2 X n rectangle into rectangles with integer sides.

The programs for A034999, the canonical program `A034999.P17711535715265857596` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034999 has offset 0).

The definition of A034999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034999.P17711535715265857596

`6*a(n-1)-7*a(n-2)` with `a(0)=1, a(1)=2, a(2)=8`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034999

/-- `6*a(n-1)-7*a(n-2)` -/
def P17711535715265857596.Spec : Prop :=
  ∀ n, P17711535715265857596.a n = A034999 n

theorem P17711535715265857596.correct : P17711535715265857596.Spec := by
  intro n
  simp only [A034999]

end A034999

/-! ## A034999.P2727596031723609155

`ogf((1-4x+3x^2)/(1-6x+7x^2))`
-/

namespace A034999.P2727596031723609155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 3] [1, -6, 7] n

end

end A034999.P2727596031723609155

namespace A034999

/-- `ogf((1-4x+3x^2)/(1-6x+7x^2))` -/
def P2727596031723609155.Spec : Prop :=
  ∀ n, P2727596031723609155.a n = A034999 n

end A034999

/-! ## A034999.P16188884165163623997

`A086351(A028310(n)-1)*A174296(2*n)`
-/

namespace A034999.P16188884165163623997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086351 (A028310 n - 1).toNat * A174296 (2 * n)

end

end A034999.P16188884165163623997

namespace A034999

/-- `A086351(A028310(n)-1)*A174296(2*n)` -/
def P16188884165163623997.Spec : Prop :=
  ∀ n, P16188884165163623997.a n = A034999 n

end A034999

/-! ## A034999.P12994958586436328282

`A020639(A001223(n+1))*A086351(A028310(n)-1)`
-/

namespace A034999.P12994958586436328282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001223 (n + 1)).toNat * A086351 (A028310 n - 1).toNat

end

end A034999.P12994958586436328282

namespace A034999

/-- `A020639(A001223(n+1))*A086351(A028310(n)-1)` -/
def P12994958586436328282.Spec : Prop :=
  ∀ n, P12994958586436328282.a n = A034999 n

end A034999

/-! ## A034999.P4940734606720267728

`A020639(A006093(n+1))*A086351(A028310(n)-1)`
-/

namespace A034999.P4940734606720267728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006093 (n + 1)).toNat * A086351 (A028310 n - 1).toNat

end

end A034999.P4940734606720267728

namespace A034999

/-- `A020639(A006093(n+1))*A086351(A028310(n)-1)` -/
def P4940734606720267728.Spec : Prop :=
  ∀ n, P4940734606720267728.a n = A034999 n

end A034999

/-! ## A034999.P1489479650787908592

`A037445(A006005(n+1))*A086351(A028310(n)-1)`
-/

namespace A034999.P1489479650787908592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A006005 (n + 1)).toNat * A086351 (A028310 n - 1).toNat

end

end A034999.P1489479650787908592

namespace A034999

/-- `A037445(A006005(n+1))*A086351(A028310(n)-1)` -/
def P1489479650787908592.Spec : Prop :=
  ∀ n, P1489479650787908592.a n = A034999 n

end A034999

/-! ## A034999.P1840191967940919227

`A061142(A020639(n+1))*A086351(A028310(n)-1)`
-/

namespace A034999.P1840191967940919227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A020639 (n + 1)).toNat * A086351 (A028310 n - 1).toNat

end

end A034999.P1840191967940919227

namespace A034999

/-- `A061142(A020639(n+1))*A086351(A028310(n)-1)` -/
def P1840191967940919227.Spec : Prop :=
  ∀ n, P1840191967940919227.a n = A034999 n

end A034999

/-! ## A034999.P14956338381773017953

`A164299(n)%A164305(A004273(n)-n)`
-/

namespace A034999.P14956338381773017953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164299 n) (A164305 (A004273 n - (n : ℤ)).toNat)

end

end A034999.P14956338381773017953

namespace A034999

/-- `A164299(n)%A164305(A004273(n)-n)` -/
def P14956338381773017953.Spec : Prop :=
  ∀ n, P14956338381773017953.a n = A034999 n

end A034999

