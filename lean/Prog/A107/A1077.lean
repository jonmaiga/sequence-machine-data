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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B006.C000
import Seq.B006.C001
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
# A107702: Triangle related to guillotine partitions of a k-dimensional box by n hyperplanes.

The programs for A107702, there is no canonical definition to state claims against.
-/

/-! ## A107702.P6439395788512991714

`A103209(A056943(n)+1)`
-/

namespace A107702.P6439395788512991714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103209 (A056943 n + 1).toNat

end

end A107702.P6439395788512991714

/-! ## A107702.P3135145286937619872

`A103209(∑[char[∑[n]]]²-n-∑[char[∑[n+1]]])`
-/

namespace A107702.P3135145286937619872
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103209 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)).toNat

end

end A107702.P3135145286937619872

/-! ## A107702.P11602705204002162223

`A174480(n+1)-A163351(A102480(n))²`
-/

namespace A107702.P11602705204002162223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174480 (n + 1) - A163351 (A102480 n).toNat ^ 2

end

end A107702.P11602705204002162223

/-! ## A107702.P16086675023512648719

`A239086(A174480(n+1))`
-/

namespace A107702.P16086675023512648719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239086 (A174480 (n + 1)).toNat

end

end A107702.P16086675023512648719

/-! ## A107702.P17695169985929432289

`A113006(A111670(n+1))-char[13]`
-/

namespace A107702.P17695169985929432289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113006 (A111670 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A107702.P17695169985929432289

/-!
# A107703: Sums of antidiagonals of number array A103209.

The programs for A107703, there is no canonical definition to state claims against.
-/

/-! ## A107703.P18440360277703801217

`A302478(∑[∑[A020074(n)]])`
-/

namespace A107703.P18440360277703801217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020074 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A107703.P18440360277703801217

/-! ## A107703.P15046115761181435466

`A325404(A301254(n))`
-/

namespace A107703.P15046115761181435466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325404 (A301254 n).toNat

end

end A107703.P15046115761181435466

/-!
# A107704: Diagonal sums of A103209, viewed as number triangle.

The programs for A107704, there is no canonical definition to state claims against.
-/

/-! ## A107704.P1059227040123243441

`A109497(A054091(n)-n)`
-/

namespace A107704.P1059227040123243441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A054091 n - (n : ℤ)).toNat

end

end A107704.P1059227040123243441

/-! ## A107704.P16015429451407506805

`A109497(record[A054090(n)]-n)`
-/

namespace A107704.P16015429451407506805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A107704.P16015429451407506805

/-! ## A107704.P3418631177128410373

`A109497(A054090(∑[n+1]+1)-n)`
-/

namespace A107704.P3418631177128410373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A054090 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - (n : ℤ)).toNat

end

end A107704.P3418631177128410373

/-! ## A107704.P15298287372191814829

`A008616(A313777(n)+A006604(n))`
-/

namespace A107704.P15298287372191814829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A313777 n + A006604 n).toNat

end

end A107704.P15298287372191814829

/-!
# A107705: a(n) is the least number of prime factors in any nondeficient number that has the n-th prime as its least prime factor.

The programs for A107705, there is no canonical definition to state claims against.
-/

/-! ## A107705.P16938440246260206058

`A108227(n+1)-A000007(n)`
-/

namespace A107705.P16938440246260206058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108227 (n + 1) - A000007 n

end

end A107705.P16938440246260206058

/-! ## A107705.P6336394454428446782

`A108227(n+1)-A000010(n+2)%2`
-/

namespace A107705.P6336394454428446782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108227 (n + 1) - Int.tmod (A000010 (n + 2)) 2

end

end A107705.P6336394454428446782

/-! ## A107705.P14915269142148825450

`A108227(n+1)-A219642(floor(1/(n+1)))`
-/

namespace A107705.P14915269142148825450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108227 (n + 1) - A219642 ⌊1 / (n + 1 : ℚ)⌋.toNat

end

end A107705.P14915269142148825450

/-! ## A107705.P9682295650099754339

`A108227(n/A003520(and(1, a(n-1)))+1)` with `a(0)=2`
-/

namespace A107705.P9682295650099754339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A108227 (SequenceMachineLib.roundAway ((n : ℚ) / (A003520 (Int.land 1 (a (n - 1))).toNat : ℚ) + 1)).toNat

end

end A107705.P9682295650099754339

/-! ## A107705.P3063993119100702393

`A108227(n+1)-A058343(A048793(n))`
-/

namespace A107705.P3063993119100702393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108227 (n + 1) - A058343 (A048793 n).toNat

end

end A107705.P3063993119100702393

/-! ## A107705.P15930206687719895483

`A007684(n+1)+A108227(n+1)-A007707(n+1)`
-/

namespace A107705.P15930206687719895483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007684 (n + 1) + (A108227 (n + 1) - A007707 (n + 1))

end

end A107705.P15930206687719895483

/-!
# A107706: Quadratic recurrence a(n)=2a(n-1)^2+a(n-2), a(0)=a(1)=1.

The programs for A107706, the canonical program `A107706.P1702843633234235094` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107706 has offset 0).

The definition of A107706 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)²+a(n-2)` (program `A107706.P1702843633234235094`, by `A107706.P1702843633234235094.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107706.P1702843633234235094

`2*a(n-1)²+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107706

/-- `2*a(n-1)²+a(n-2)` -/
def P1702843633234235094.Spec : Prop :=
  ∀ n, (P1702843633234235094.a n : ℤ) = A107706 n

theorem P1702843633234235094.correct : P1702843633234235094.Spec := by
  intro n
  simp only [A107706]

end A107706

/-! ## A107706.P14071671018542575715

`a(n-2)+lcm(2, a(n-1)²)` with `a(0)=1, a(1)=1`
-/

namespace A107706.P14071671018542575715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Nat.lcm 2 (a (n - 1) ^ 2)

end

end A107706.P14071671018542575715

namespace A107706

/-- `a(n-2)+lcm(2, a(n-1)²)` -/
def P14071671018542575715.Spec : Prop :=
  ∀ n, (P14071671018542575715.a n : ℤ) = A107706 n

end A107706

/-! ## A107706.P15282267915542177279

`a(n-2)+2/a(n-1)²^(-1)` with `a(0)=1, a(1)=1`
-/

namespace A107706.P15282267915542177279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + 2 / (a (n - 1) ^ 2) ^ (-1 : ℤ)

end

end A107706.P15282267915542177279

namespace A107706

/-- `a(n-2)+2/a(n-1)²^(-1)` -/
def P15282267915542177279.Spec : Prop :=
  ∀ n, P15282267915542177279.a n = (A107706 n : ℚ)

end A107706

/-! ## A107706.P13102811982384697821

`a(n-2)+2*a(n-1)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A107706.P13102811982384697821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + 2 * (a (n - 1) * a (n - 1))

end

end A107706.P13102811982384697821

namespace A107706

/-- `a(n-2)+2*a(n-1)*a(n-1)` -/
def P13102811982384697821.Spec : Prop :=
  ∀ n, (P13102811982384697821.a n : ℤ) = A107706 n

end A107706

/-! ## A107706.P17474556573877166978

`a(n-1)²+a(n-2)+a(n-1)²` with `a(0)=1, a(1)=1`
-/

namespace A107706.P17474556573877166978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) ^ 2 + (a (n - 2) + a (n - 1) ^ 2)

end

end A107706.P17474556573877166978

namespace A107706

/-- `a(n-1)²+a(n-2)+a(n-1)²` -/
def P17474556573877166978.Spec : Prop :=
  ∀ n, (P17474556573877166978.a n : ℤ) = A107706 n

theorem P17474556573877166978.correct : P17474556573877166978.Spec := by
  intro n
  simp only [A107706, Nat.add_sub_cancel, A107706.P17474556573877166978.a, A107706.P1702843633234235094.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A107706

/-!
# A107707: 3-almost primes whose prime factors sum to a prime.

The programs for A107707, the canonical program `A107707.P18425276606147206704` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107707 has offset 1).

The definition of A107707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3742 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107707.P18425276606147206704

`∩[A046363(n+1), A110187(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A107707

/-- `∩[A046363(n+1), A110187(n+1)]` -/
def P18425276606147206704.Spec : Prop :=
  ∀ n, (P18425276606147206704.a n : ℤ) = A107707 (n + 1)

theorem P18425276606147206704.correct : P18425276606147206704.Spec := by
  intro n
  simp only [A107707, Nat.add_sub_cancel]

end A107707

/-! ## A107707.P17852129471051777227

`∩[A100118(n+1), A110187(n+1)]`
-/

namespace A107707.P17852129471051777227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107707.P17852129471051777227

namespace A107707

/-- `∩[A100118(n+1), A110187(n+1)]` -/
def P17852129471051777227.Spec : Prop :=
  ∀ n, (P17852129471051777227.a n : ℤ) = A107707 (n + 1)

end A107707

/-! ## A107707.P872813325634530541

`∩[A046363(n+1), A217856(n+1)]`
-/

namespace A107707.P872813325634530541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107707.P872813325634530541

namespace A107707

/-- `∩[A046363(n+1), A217856(n+1)]` -/
def P872813325634530541.Spec : Prop :=
  ∀ n, (P872813325634530541.a n : ℤ) = A107707 (n + 1)

end A107707

/-! ## A107707.P3325902390301969282

`∩[A100118(n+1), A217856(n+1)]`
-/

namespace A107707.P3325902390301969282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107707.P3325902390301969282

namespace A107707

/-- `∩[A100118(n+1), A217856(n+1)]` -/
def P3325902390301969282.Spec : Prop :=
  ∀ n, (P3325902390301969282.a n : ℤ) = A107707 (n + 1)

end A107707

/-! ## A107707.P11375935892566985551

`∩[A014612(n+1), A046363(n+1)]`
-/

namespace A107707.P11375935892566985551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107707.P11375935892566985551

namespace A107707

/-- `∩[A014612(n+1), A046363(n+1)]` -/
def P11375935892566985551.Spec : Prop :=
  ∀ n, (P11375935892566985551.a n : ℤ) = A107707 (n + 1)

end A107707

/-! ## A107707.P13318172811584110535

`∩[A014612(n+1), A100118(n+1)]`
-/

namespace A107707.P13318172811584110535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107707.P13318172811584110535

namespace A107707

/-- `∩[A014612(n+1), A100118(n+1)]` -/
def P13318172811584110535.Spec : Prop :=
  ∀ n, (P13318172811584110535.a n : ℤ) = A107707 (n + 1)

end A107707

/-! ## A107707.P6358413883790664361

`∩[A046363(n+1), A298207(n+1)]`
-/

namespace A107707.P6358413883790664361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107707.P6358413883790664361

namespace A107707

/-- `∩[A046363(n+1), A298207(n+1)]` -/
def P6358413883790664361.Spec : Prop :=
  ∀ n, (P6358413883790664361.a n : ℤ) = A107707 (n + 1)

end A107707

/-! ## A107707.P9596349011711680684

`filter[A046363(n+1), A101605(#)]`
-/

namespace A107707.P9596349011711680684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A107707.P9596349011711680684

namespace A107707

/-- `filter[A046363(n+1), A101605(#)]` -/
def P9596349011711680684.Spec : Prop :=
  ∀ n, P9596349011711680684.a n = A107707 (n + 1)

end A107707

/-!
# A107708: Number of paths from (0,0) to (3n,0) that stay in the first quadrant (x,y >= 0) and where each step is (3,0), (2,1), (1,2), or (1,-1).

The programs for A107708, there is no canonical definition to state claims against.
-/

/-! ## A107708.P2228460330534887557

`∏{e}[(2*n)!, C(2, #)+#]*A224704(n+1)`
-/

namespace A107708.P2228460330534887557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.choose 2 (Nat.factorization (f1 n) p) + Nat.factorization (f1 n) p) : ℕ) : ℤ) * A224704 (n + 1)

end

end A107708.P2228460330534887557

/-!
# A107710: Numbers of the form (6^i)*(13^j), with i, j >= 0.

The programs for A107710, there is no canonical definition to state claims against.
-/

/-! ## A107710.P731013925319659747

`A332213(A108698(n+1))`
-/

namespace A107710.P731013925319659747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (A108698 (n + 1)).toNat

end

end A107710.P731013925319659747

/-! ## A107710.P8744462898880223759

`A332808(abs(1-A108698(n+1))+1)`
-/

namespace A107710.P8744462898880223759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (|1 - A108698 (n + 1)| + 1).toNat

end

end A107710.P8744462898880223759

/-! ## A107710.P6242314209523622883

`A332808(A015090(n)*A108698(n+1))`
-/

namespace A107710.P6242314209523622883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A015090 n * A108698 (n + 1)).toNat

end

end A107710.P6242314209523622883

/-! ## A107710.P12906750421426336234

`A332808(A108698(n+1)^A178334(n))`
-/

namespace A107710.P12906750421426336234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (SequenceMachineLib.roundAway ((A108698 (n + 1) : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A107710.P12906750421426336234

/-!
# A107711: Triangle read by rows: T(0,0)=1, T(n,m) = binomial(n,m) * gcd(n,m)/n.

The programs for A107711, the canonical program `A107711.P18303887428430519513` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107711 has offset 0).

The definition of A107711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107711.P6504069084356914999

`gcd(A007318(n), A029600(n))`
-/

namespace A107711.P6504069084356914999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007318 n) (A029600 n)

end

end A107711.P6504069084356914999

namespace A107711

/-- `gcd(A007318(n), A029600(n))` -/
def P6504069084356914999.Spec : Prop :=
  ∀ n, (P6504069084356914999.a n : ℤ) = A107711 n

end A107711

/-! ## A107711.P16794721160810120321

`gcd(A029618(n), A029653(n))`
-/

namespace A107711.P16794721160810120321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029618 n) (A029653 n)

end

end A107711.P16794721160810120321

namespace A107711

/-- `gcd(A029618(n), A029653(n))` -/
def P16794721160810120321.Spec : Prop :=
  ∀ n, (P16794721160810120321.a n : ℤ) = A107711 n

end A107711

/-! ## A107711.P3920502199550194167

`gcd(A008482(n), A097805(n))`
-/

namespace A107711.P3920502199550194167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A097805 n)

end

end A107711.P3920502199550194167

namespace A107711

/-- `gcd(A008482(n), A097805(n))` -/
def P3920502199550194167.Spec : Prop :=
  ∀ n, (P3920502199550194167.a n : ℤ) = A107711 n

end A107711

/-! ## A107711.P898750971108609891

`gcd(A029635(n), A091917(n))`
-/

namespace A107711.P898750971108609891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029635 n) (A091917 n)

end

end A107711.P898750971108609891

namespace A107711

/-- `gcd(A029635(n), A091917(n))` -/
def P898750971108609891.Spec : Prop :=
  ∀ n, (P898750971108609891.a n : ℤ) = A107711 n

end A107711

/-! ## A107711.P7179904513162887859

`gcd(A037012(n), A110555(n))`
-/

namespace A107711.P7179904513162887859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A110555 n)

end

end A107711.P7179904513162887859

namespace A107711

/-- `gcd(A037012(n), A110555(n))` -/
def P7179904513162887859.Spec : Prop :=
  ∀ n, (P7179904513162887859.a n : ℤ) = A107711 n

end A107711

/-! ## A107711.P3323261977414100433

`gcd(A093560(n), A093561(n))`
-/

namespace A107711.P3323261977414100433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093560 n) (A093561 n)

end

end A107711.P3323261977414100433

namespace A107711

/-- `gcd(A093560(n), A093561(n))` -/
def P3323261977414100433.Spec : Prop :=
  ∀ n, (P3323261977414100433.a n : ℤ) = A107711 n

end A107711

/-! ## A107711.P16074136622537728914

`gcd(A093562(n), A093563(n))`
-/

namespace A107711.P16074136622537728914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093562 n) (A093563 n)

end

end A107711.P16074136622537728914

namespace A107711

/-- `gcd(A093562(n), A093563(n))` -/
def P16074136622537728914.Spec : Prop :=
  ∀ n, (P16074136622537728914.a n : ℤ) = A107711 n

end A107711

/-! ## A107711.P7784648900960323626

`gcd(A093564(n), A093565(n))`
-/

namespace A107711.P7784648900960323626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093564 n) (A093565 n)

end

end A107711.P7784648900960323626

namespace A107711

/-- `gcd(A093564(n), A093565(n))` -/
def P7784648900960323626.Spec : Prop :=
  ∀ n, (P7784648900960323626.a n : ℤ) = A107711 n

end A107711

/-! ## A107711.P14994722924740416207

`gcd(A093644(n), A093645(n))`
-/

namespace A107711.P14994722924740416207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093644 n) (A093645 n)

end

end A107711.P14994722924740416207

namespace A107711

/-- `gcd(A093644(n), A093645(n))` -/
def P14994722924740416207.Spec : Prop :=
  ∀ n, (P14994722924740416207.a n : ℤ) = A107711 n

end A107711

/-! ## A107711.P906558129282196727

`gcd(A095660(n), A095666(n))`
-/

namespace A107711.P906558129282196727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A095660 n) (A095666 n)

end

end A107711.P906558129282196727

namespace A107711

/-- `gcd(A095660(n), A095666(n))` -/
def P906558129282196727.Spec : Prop :=
  ∀ n, (P906558129282196727.a n : ℤ) = A107711 n

end A107711

/-! ## A107711.P14907269610059340008

`gcd(A096940(n), A096956(n))`
-/

namespace A107711.P14907269610059340008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096940 n) (A096956 n)

end

end A107711.P14907269610059340008

namespace A107711

/-- `gcd(A096940(n), A096956(n))` -/
def P14907269610059340008.Spec : Prop :=
  ∀ n, (P14907269610059340008.a n : ℤ) = A107711 n

end A107711

/-! ## A107711.P17805025902517409933

`gcd(A080232(n), A135225(n))`
-/

namespace A107711.P17805025902517409933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080232 n) (A135225 n)

end

end A107711.P17805025902517409933

namespace A107711

/-- `gcd(A080232(n), A135225(n))` -/
def P17805025902517409933.Spec : Prop :=
  ∀ n, (P17805025902517409933.a n : ℤ) = A107711 n

end A107711

/-! ## A107711.P9393668492886516065

`gcd(A091918(n), A135226(n))`
-/

namespace A107711.P9393668492886516065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091918 n) (A135226 n)

end

end A107711.P9393668492886516065

namespace A107711

/-- `gcd(A091918(n), A135226(n))` -/
def P9393668492886516065.Spec : Prop :=
  ∀ n, (P9393668492886516065.a n : ℤ) = A107711 n

end A107711

/-! ## A107711.P11397387794246499314

`gcd(A108086(n), A127952(n))`
-/

namespace A107711.P11397387794246499314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108086 n) (A127952 n)

end

end A107711.P11397387794246499314

namespace A107711

/-- `gcd(A108086(n), A127952(n))` -/
def P11397387794246499314.Spec : Prop :=
  ∀ n, (P11397387794246499314.a n : ℤ) = A107711 n

end A107711

/-! ## A107711.P10575210691261161253

`gcd(A055137(n), A193787(n))`
-/

namespace A107711.P10575210691261161253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055137 n) (A193787 n)

end

end A107711.P10575210691261161253

namespace A107711

/-- `gcd(A055137(n), A193787(n))` -/
def P10575210691261161253.Spec : Prop :=
  ∀ n, (P10575210691261161253.a n : ℤ) = A107711 n

end A107711

/-! ## A107711.P16283652249182392473

`gcd(A124845(n), A132309(n))`
-/

namespace A107711.P16283652249182392473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124845 n) (A132309 n)

end

end A107711.P16283652249182392473

namespace A107711

/-- `gcd(A124845(n), A132309(n))` -/
def P16283652249182392473.Spec : Prop :=
  ∀ n, (P16283652249182392473.a n : ℤ) = A107711 n

end A107711

/-! ## A107711.P9040267537315025814

`gcd(A111049(n), A177767(n))`
-/

namespace A107711.P9040267537315025814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111049 n) (A177767 n)

end

end A107711.P9040267537315025814

namespace A107711

/-- `gcd(A111049(n), A177767(n))` -/
def P9040267537315025814.Spec : Prop :=
  ∀ n, (P9040267537315025814.a n : ℤ) = A107711 n

end A107711

/-! ## A107711.P1021487494675598112

`gcd(A132749(n), A208891(n))`
-/

namespace A107711.P1021487494675598112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132749 n) (A208891 n)

end

end A107711.P1021487494675598112

namespace A107711

/-- `gcd(A132749(n), A208891(n))` -/
def P1021487494675598112.Spec : Prop :=
  ∀ n, (P1021487494675598112.a n : ℤ) = A107711 n

end A107711

/-! ## A107711.P18303887428430519513

`gcd(A014473(n)+1, A097805(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A107711

/-- `gcd(A014473(n)+1, A097805(n+1))` -/
def P18303887428430519513.Spec : Prop :=
  ∀ n, (P18303887428430519513.a n : ℤ) = A107711 n

theorem P18303887428430519513.correct : P18303887428430519513.Spec := by
  intro n
  simp only [A107711]

end A107711

/-! ## A107711.P8537776868874351336

`gcd(Δ[A193554(n)], A193554(n))`
-/

namespace A107711.P8537776868874351336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193554 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A193554 n)

end

end A107711.P8537776868874351336

namespace A107711

/-- `gcd(Δ[A193554(n)], A193554(n))` -/
def P8537776868874351336.Spec : Prop :=
  ∀ n, (P8537776868874351336.a n : ℤ) = A107711 n

end A107711

/-!
# A107712: a(n) = Product_{k=1..n} prime(k+n).

The programs for A107712, there is no canonical definition to state claims against.
-/

/-! ## A107712.P5983927901716464543

`A107964(n)+A002110(n)`
-/

namespace A107712.P5983927901716464543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107964 n + A002110 n

end

end A107712.P5983927901716464543

/-! ## A107712.P6387847393302614436

`A093433(n)-A002110(n)`
-/

namespace A107712.P6387847393302614436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093433 n - A002110 n

end

end A107712.P6387847393302614436

/-! ## A107712.P16957384497395926337

`A060381(n+1)/A000040(2*n+1)`
-/

namespace A107712.P16957384497395926337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060381 (n + 1) : ℚ) / (A000040 (2 * n + 1) : ℚ)

end

end A107712.P16957384497395926337

/-! ## A107712.P18186392186720577343

`A096334(∑[4*n])`
-/

namespace A107712.P18186392186720577343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107712.P18186392186720577343

/-! ## A107712.P12704238025981354905

`A099788(n)/A002110(n)`
-/

namespace A107712.P12704238025981354905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099788 n : ℚ) / (A002110 n : ℚ)

end

end A107712.P12704238025981354905

/-!
# A107713: Convolution of 2^n*n! and n!.

The programs for A107713, there is no canonical definition to state claims against.
-/

/-! ## A107713.P14666506802044337775

`A082288(A120590(n+1))`
-/

namespace A107713.P14666506802044337775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082288 (A120590 (n + 1)).toNat

end

end A107713.P14666506802044337775

/-!
# A107715: Primes having only {0,1,2,3} as digits.

The programs for A107715, there is no canonical definition to state claims against.
-/

/-! ## A107715.P14808825319904354423

`∪[A036953(n+1), A106099(n+1)]`
-/

namespace A107715.P14808825319904354423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107715.P14808825319904354423

/-! ## A107715.P15878001962517635847

`∩[A036956(n+1), A160337(n+1)]`
-/

namespace A107715.P15878001962517635847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107715.P15878001962517635847

/-! ## A107715.P9096948997385489499

`A007090(A036955(n+1)-1)+1`
-/

namespace A107715.P9096948997385489499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A036955 (n + 1) - 1).toNat + 1

end

end A107715.P9096948997385489499

/-! ## A107715.P4092361595873278192

`A007090(A036955(n+1))`
-/

namespace A107715.P4092361595873278192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A036955 (n + 1)).toNat

end

end A107715.P4092361595873278192

/-! ## A107715.P17222284445744082581

`∩[A036956(n+1), A007090(n)]`
-/

namespace A107715.P17222284445744082581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107715.P17222284445744082581

/-! ## A107715.P15685890337040099017

`∩[A036958(n+1), A007090(n)]`
-/

namespace A107715.P15685890337040099017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107715.P15685890337040099017

/-! ## A107715.P10106708756820374004

`∩[A036960(n+1), A007090(n)]`
-/

namespace A107715.P10106708756820374004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107715.P10106708756820374004

/-! ## A107715.P16225533918228617933

`∩[A007090(n), A038617(n+1)]`
-/

namespace A107715.P16225533918228617933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107715.P16225533918228617933

/-! ## A107715.P11780217688875558875

`∩[A007090(n), A038616(n+1)]`
-/

namespace A107715.P11780217688875558875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107715.P11780217688875558875

/-! ## A107715.P6201824763159382951

`p?[A007090(n)]`
-/

namespace A107715.P6201824763159382951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107715.P6201824763159382951

/-! ## A107715.P1339423786208887446

`∩[A036962(n+1), A007090(n)]`
-/

namespace A107715.P1339423786208887446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107715.P1339423786208887446

/-! ## A107715.P10140435915763707654

`∩[A007090(n), A038615(n+1)]`
-/

namespace A107715.P10140435915763707654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107715.P10140435915763707654

/-! ## A107715.P16125963631761588200

`∩[A244392(n+1), A007090(n)]`
-/

namespace A107715.P16125963631761588200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107715.P16125963631761588200

/-! ## A107715.P18037655084252636656

`∩[A386347(n+1), A007090(n)]`
-/

namespace A107715.P18037655084252636656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107715.P18037655084252636656

/-! ## A107715.P5658322142362045416

`∩[A386349(n+1), A007090(n)]`
-/

namespace A107715.P5658322142362045416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107715.P5658322142362045416

/-! ## A107715.P17487926355315092801

`∩[A386351(n+1), A007090(n)]`
-/

namespace A107715.P17487926355315092801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107715.P17487926355315092801

/-! ## A107715.P4244469770819552166

`∩[A386353(n+1), A007090(n)]`
-/

namespace A107715.P4244469770819552166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107715.P4244469770819552166

/-! ## A107715.P15888791885972717517

`∩[A386354(n+1), A007090(n)]`
-/

namespace A107715.P15888791885972717517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107715.P15888791885972717517

/-! ## A107715.P14340976925963938384

`∩[A386356(n+1), A007090(n)]`
-/

namespace A107715.P14340976925963938384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107715.P14340976925963938384

/-!
# A107716: Inverse INVERT transform of triple factorial numbers (3*n-2)!!! (A007559).

The programs for A107716, there is no canonical definition to state claims against.
-/

/-! ## A107716.P3803886827013446504

`2*A107721(n)-A107720(n)`
-/

namespace A107716.P3803886827013446504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107721 n - A107720 n

end

end A107716.P3803886827013446504

/-! ## A107716.P9620126354327310105

`A107717(∑[n])`
-/

namespace A107716.P9620126354327310105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107717 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107716.P9620126354327310105

/-! ## A107716.P17702458346062430142

`record[A107717(n)]`
-/

namespace A107716.P17702458346062430142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107716.P17702458346062430142

/-! ## A107716.P16375315438923580695

`record[abs(A107727(n))]`
-/

namespace A107716.P16375315438923580695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A107727 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107716.P16375315438923580695

/-! ## A107716.P3859943741445070613

`abs(A107727(∑[n+1]))`
-/

namespace A107716.P3859943741445070613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A107727 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A107716.P3859943741445070613

/-!
# A107717: Triangular matrix T, read by rows, that satisfies: SHIFT_LEFT(column 0 of T^((3*p-1)/3)) = (3*p-1)*(column p of T), or [T^((3*p-1)/3)](m,0) = (3*p-1)*T(p+m,p) for all m>=1 and p>=0.

The programs for A107717, there is no canonical definition to state claims against.
-/

/-! ## A107717.P12621852039245860429

`A076839(A113122(n+2))*A285165(n+3)`
-/

namespace A107717.P12621852039245860429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076839 (A113122 (n + 2)).toNat * A285165 (n + 3)

end

end A107717.P12621852039245860429

/-! ## A107717.P16757098261368430422

`A008486(A128029(n+1)%A128041(n+3))`
-/

namespace A107717.P16757098261368430422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (Int.tmod (A128029 (n + 1)) (A128041 (n + 3))).toNat

end

end A107717.P16757098261368430422

/-!
# A107718: Column 1 of triangle A107717.

The programs for A107718, there is no canonical definition to state claims against.
-/

/-! ## A107718.P14597906278430810012

`A107723(n+1)/2`
-/

namespace A107718.P14597906278430810012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107723 (n + 1) : ℚ) / 2

end

end A107718.P14597906278430810012

/-! ## A107718.P5800531385866649165

`Δ[∑[A107723(n)]/2]`
-/

namespace A107718.P5800531385866649165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107723 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107718.P5800531385866649165

/-! ## A107718.P2741321012110853465

`floor(A107723(comp[19*n])/2)`
-/

namespace A107718.P2741321012110853465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A107723 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2⌋

end

end A107718.P2741321012110853465

/-! ## A107718.P1210518694137069437

`record[A107723(A328399(n))/2]`
-/

namespace A107718.P1210518694137069437
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107723 (A328399 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107718.P1210518694137069437

/-!
# A107720: Column 0 of triangle A107719.

The programs for A107720, there is no canonical definition to state claims against.
-/

/-! ## A107720.P12041934778905746177

`2*A107721(n)-A107716(n)`
-/

namespace A107720.P12041934778905746177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107721 n - A107716 n

end

end A107720.P12041934778905746177

/-! ## A107720.P14288186773662336352

`A107719(∑[n])`
-/

namespace A107720.P14288186773662336352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107719 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107720.P14288186773662336352

/-! ## A107720.P4004819991601306463

`or(1, A107719(C(n+1, 2)))`
-/

namespace A107720.P4004819991601306463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A107719 (Nat.choose (n + 1) 2))

end

end A107720.P4004819991601306463

/-! ## A107720.P10814621555244479798

`or(1, A107719((n²+n)/2))`
-/

namespace A107720.P10814621555244479798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A107719 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat)

end

end A107720.P10814621555244479798

/-! ## A107720.P11600276426813243580

`and(-1, A107719(A000217(n)))`
-/

namespace A107720.P11600276426813243580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A107719 (A000217 n).toNat)

end

end A107720.P11600276426813243580

/-!
# A107721: Column 1 of triangle A107719.

The programs for A107721, there is no canonical definition to state claims against.
-/

/-! ## A107721.P1657562711506056225

`(A107720(n)+A107716(n))/2`
-/

namespace A107721.P1657562711506056225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107720 n + A107716 n : ℚ) / 2

end

end A107721.P1657562711506056225

/-! ## A107721.P13522777475649895873

`record[A107719(comp[∑[n]])]`
-/

namespace A107721.P13522777475649895873
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107719 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107721.P13522777475649895873

/-! ## A107721.P15325681540785661803

`A107719(∑[n+1]+1)`
-/

namespace A107721.P15325681540785661803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107719 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A107721.P15325681540785661803

/-! ## A107721.P14056617048371411172

`record[A051168(n)*A107719(n)]`
-/

namespace A107721.P14056617048371411172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 n * A107719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107721.P14056617048371411172

/-! ## A107721.P11061963948274175914

`record[A107719(n)*A373949(n)]`
-/

namespace A107721.P11061963948274175914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107719 n * A373949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107721.P11061963948274175914

/-!
# A107722: Matrix square of triangle A107721, read by rows.

The programs for A107722, there is no canonical definition to state claims against.
-/

/-! ## A107722.P12468755969314796831

`A261300(A136470(n))`
-/

namespace A107722.P12468755969314796831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (A136470 n).toNat

end

end A107722.P12468755969314796831

/-! ## A107722.P8555842375460977432

`A318921(A213578(2*n+1))+1`
-/

namespace A107722.P8555842375460977432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (A213578 (2 * n + 1)).toNat + 1

end

end A107722.P8555842375460977432

/-! ## A107722.P15567881865401577840

`A010766(A001692(n))*A329431(n)`
-/

namespace A107722.P15567881865401577840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A001692 n).toNat * A329431 n

end

end A107722.P15567881865401577840

/-!
# A107723: Column 0 of triangle A107722.

The programs for A107723, there is no canonical definition to state claims against.
-/

/-! ## A107723.P17754536055460945999

`record[A036453(n+1)*A107718(A002262(n))]`
-/

namespace A107723.P17754536055460945999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A107718 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107723.P17754536055460945999

/-! ## A107723.P16958653556604660869

`A107722(∑[n])`
-/

namespace A107723.P16958653556604660869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107722 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107723.P16958653556604660869

/-! ## A107723.P13385883881795832970

`record[A107722(n)]`
-/

namespace A107723.P13385883881795832970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107723.P13385883881795832970

/-! ## A107723.P14266620641330969461

`A107722(A000217(n))+char[10]`
-/

namespace A107723.P14266620641330969461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107722 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A107723.P14266620641330969461

/-!
# A107725: Column 0 of A107724, which is the matrix logarithm of triangle A107719.

The programs for A107725, there is no canonical definition to state claims against.
-/

/-! ## A107725.P8507417692903100568

`A107724(∑[n])`
-/

namespace A107725.P8507417692903100568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107724 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107725.P8507417692903100568

/-! ## A107725.P5599979961557067005

`record[A107724(n)]`
-/

namespace A107725.P5599979961557067005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107725.P5599979961557067005

/-! ## A107725.P11683403147314878673

`A107724(A000217(n))+char[11]`
-/

namespace A107725.P11683403147314878673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107724 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A107725.P11683403147314878673

/-! ## A107725.P11512106879256724912

`A107724(C(n+1, 2))/A107711(n)`
-/

namespace A107725.P11512106879256724912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107724 (Nat.choose (n + 1) 2) : ℚ) / (A107711 n : ℚ)

end

end A107725.P11512106879256724912

/-! ## A107725.P14670120456122074140

`A107724(n-Δ[-C(n, 3)])/A107711(n)`
-/

namespace A107725.P14670120456122074140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose n 3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107724 ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat : ℚ) / (A107711 n : ℚ)

end

end A107725.P14670120456122074140

/-!
# A107729: Triangle T(n,k), 0 <= k <= n, read by rows, defined by T(0,0) = 1; T(0,k) = 0 if k < 0 or if k > 0; T(n,k) = k*T(n-1,k-1) + (k+2)*T(n-1,k+1).

The programs for A107729, the canonical program `A107729.P13185808974232012644` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107729 has offset 0).

The definition of A107729 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)*T(n-1,k-1)+(col(n)+2)*T(n-1,k+1)` (program `A107729.P13185808974232012644`, by `A107729.P13185808974232012644.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107729.P13185808974232012644

`col(n)*T(n-1,k-1)+(col(n)+2)*T(n-1,k+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107729

/-- `col(n)*T(n-1,k-1)+(col(n)+2)*T(n-1,k+1)` -/
def P13185808974232012644.Spec : Prop :=
  ∀ n, (P13185808974232012644.a n : ℤ) = A107729 n

theorem P13185808974232012644.correct : P13185808974232012644.Spec := by
  intro n
  simp only [A107729]

end A107729

/-! ## A107729.P5221071422484072690

`A155100(comp[∑[n]])`
-/

namespace A107729.P5221071422484072690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155100 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A107729.P5221071422484072690

namespace A107729

/-- `A155100(comp[∑[n]])` -/
def P5221071422484072690.Spec : Prop :=
  ∀ n, P5221071422484072690.a n = A107729 n

end A107729

/-! ## A107729.P13293064410402628835

`A059419(n+1)*A136579(n)`
-/

namespace A107729.P13293064410402628835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059419 (n + 1) * A136579 n

end

end A107729.P13293064410402628835

namespace A107729

/-- `A059419(n+1)*A136579(n)` -/
def P13293064410402628835.Spec : Prop :=
  ∀ n, P13293064410402628835.a n = A107729 n

end A107729

/-! ## A107729.P7913769983191504306

`A059419(n+1)*A233543(n)`
-/

namespace A107729.P7913769983191504306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059419 (n + 1) * A233543 n

end

end A107729.P7913769983191504306

namespace A107729

/-- `A059419(n+1)*A233543(n)` -/
def P7913769983191504306.Spec : Prop :=
  ∀ n, P7913769983191504306.a n = A107729 n

end A107729

/-! ## A107729.P17849257325187948285

`or(char[2], A155100(A014132(n+1)))`
-/

namespace A107729.P17849257325187948285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A155100 (A014132 (n + 1)).toNat)

end

end A107729.P17849257325187948285

namespace A107729

/-- `or(char[2], A155100(A014132(n+1)))` -/
def P17849257325187948285.Spec : Prop :=
  ∀ n, P17849257325187948285.a n = A107729 n

end A107729

/-! ## A107729.P5318770948288583625

`A185896(n)/A134199(n)`
-/

namespace A107729.P5318770948288583625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185896 n : ℚ) / (A134199 n : ℚ)

end

end A107729.P5318770948288583625

namespace A107729

/-- `A185896(n)/A134199(n)` -/
def P5318770948288583625.Spec : Prop :=
  ∀ n, P5318770948288583625.a n = (A107729 n : ℚ)

end A107729

/-! ## A107729.P15776841403568649942

`A185896(n)/A002260(n+1)`
-/

namespace A107729.P15776841403568649942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185896 n : ℚ) / (A002260 (n + 1) : ℚ)

end

end A107729.P15776841403568649942

namespace A107729

/-- `A185896(n)/A002260(n+1)` -/
def P15776841403568649942.Spec : Prop :=
  ∀ n, P15776841403568649942.a n = (A107729 n : ℚ)

end A107729

/-! ## A107729.P13625568242370178876

`A185896(n)/(A002262(n)+1)`
-/

namespace A107729.P13625568242370178876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185896 n : ℚ) / (A002262 n + 1 : ℚ)

end

end A107729.P13625568242370178876

namespace A107729

/-- `A185896(n)/(A002262(n)+1)` -/
def P13625568242370178876.Spec : Prop :=
  ∀ n, P13625568242370178876.a n = (A107729 n : ℚ)

end A107729

/-! ## A107729.P10333809421244047972

`A185896(n)/A128221(n+1)`
-/

namespace A107729.P10333809421244047972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185896 n : ℚ) / (A128221 (n + 1) : ℚ)

end

end A107729.P10333809421244047972

namespace A107729

/-- `A185896(n)/A128221(n+1)` -/
def P10333809421244047972.Spec : Prop :=
  ∀ n, P10333809421244047972.a n = (A107729 n : ℚ)

end A107729

/-! ## A107729.P2037704036919174334

`A185896(n)/A134226(n+1)`
-/

namespace A107729.P2037704036919174334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185896 n : ℚ) / (A134226 (n + 1) : ℚ)

end

end A107729.P2037704036919174334

namespace A107729

/-- `A185896(n)/A134226(n+1)` -/
def P2037704036919174334.Spec : Prop :=
  ∀ n, P2037704036919174334.a n = (A107729 n : ℚ)

end A107729

/-! ## A107729.P16435181611147566869

`A185896(n)/A140756(n+1)`
-/

namespace A107729.P16435181611147566869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185896 n : ℚ) / (A140756 (n + 1) : ℚ)

end

end A107729.P16435181611147566869

namespace A107729

/-- `A185896(n)/A140756(n+1)` -/
def P16435181611147566869.Spec : Prop :=
  ∀ n, P16435181611147566869.a n = (A107729 n : ℚ)

end A107729

/-! ## A107729.P1530741086508529300

`A185896(n)/A211161(n+1)`
-/

namespace A107729.P1530741086508529300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185896 n : ℚ) / (A211161 (n + 1) : ℚ)

end

end A107729.P1530741086508529300

namespace A107729

/-- `A185896(n)/A211161(n+1)` -/
def P1530741086508529300.Spec : Prop :=
  ∀ n, P1530741086508529300.a n = (A107729 n : ℚ)

end A107729

/-! ## A107729.P1430937982262757106

`A185896(n)/A057555(2*n+1)`
-/

namespace A107729.P1430937982262757106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185896 n : ℚ) / (A057555 (2 * n + 1) : ℚ)

end

end A107729.P1430937982262757106

namespace A107729

/-- `A185896(n)/A057555(2*n+1)` -/
def P1430937982262757106.Spec : Prop :=
  ∀ n, P1430937982262757106.a n = (A107729 n : ℚ)

end A107729

/-!
# A107730: Numbers n such that prime(n+1) has the same last digit as prime(n).

The programs for A107730, the canonical program `A107730.P12269102477692489208` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107730 has offset 1).

The definition of A107730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7505 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107730.P12269102477692489208

`lt[A001223(n+1)%5, 1]+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A107730

/-- `lt[A001223(n+1)%5, 1]+1` -/
def P12269102477692489208.Spec : Prop :=
  ∀ n, (P12269102477692489208.a n : ℤ) = A107730 (n + 1)

theorem P12269102477692489208.correct : P12269102477692489208.Spec := by
  intro n
  simp only [A107730, Nat.add_sub_cancel]

end A107730

/-! ## A107730.P12627635721165853518

`lt[1, A040327(A054541(n+1))]`
-/

namespace A107730.P12627635721165853518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040327 (A054541 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A107730.P12627635721165853518

namespace A107730

/-- `lt[1, A040327(A054541(n+1))]` -/
def P12627635721165853518.Spec : Prop :=
  ∀ n, (P12627635721165853518.a n : ℤ) = A107730 (n + 1)

end A107730

/-! ## A107730.P7236514838787564949

`lt[A179636(A054541(n+1)+1), 2]`
-/

namespace A107730.P7236514838787564949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179636 (A054541 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A107730.P7236514838787564949

namespace A107730

/-- `lt[A179636(A054541(n+1)+1), 2]` -/
def P7236514838787564949.Spec : Prop :=
  ∀ n, (P7236514838787564949.a n : ℤ) = A107730 (n + 1)

end A107730

/-! ## A107730.P9398916396989633521

`eq[A007652(n+2), A007652(n+1)]+1`
-/

namespace A107730.P9398916396989633521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A107730.P9398916396989633521

namespace A107730

/-- `eq[A007652(n+2), A007652(n+1)]+1` -/
def P9398916396989633521.Spec : Prop :=
  ∀ n, (P9398916396989633521.a n : ℤ) = A107730 (n + 1)

end A107730

/-! ## A107730.P7128470781658755617

`eq[5, A006530(A008578(n+2)-A008578(n+1))]`
-/

namespace A107730.P7128470781658755617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008578 (n + 2) - A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107730.P7128470781658755617

namespace A107730

/-- `eq[5, A006530(A008578(n+2)-A008578(n+1))]` -/
def P7128470781658755617.Spec : Prop :=
  ∀ n, (P7128470781658755617.a n : ℤ) = A107730 (n + 1)

end A107730

/-! ## A107730.P10886007747167168263

`A000720(A290450(n+1))`
-/

namespace A107730.P10886007747167168263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A290450 (n + 1)).toNat

end

end A107730.P10886007747167168263

namespace A107730

/-- `A000720(A290450(n+1))` -/
def P10886007747167168263.Spec : Prop :=
  ∀ n, P10886007747167168263.a n = A107730 (n + 1)

end A107730

/-! ## A107730.P5436585772460498105

`A061395(2*A290450(n+1))`
-/

namespace A107730.P5436585772460498105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A290450 (n + 1)).toNat

end

end A107730.P5436585772460498105

namespace A107730

/-- `A061395(2*A290450(n+1))` -/
def P5436585772460498105.Spec : Prop :=
  ∀ n, P5436585772460498105.a n = A107730 (n + 1)

end A107730

/-! ## A107730.P8689022077621342192

`∑{d}[A290450(n+1), A056239(#)]`
-/

namespace A107730.P8689022077621342192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A107730.P8689022077621342192

namespace A107730

/-- `∑{d}[A290450(n+1), A056239(#)]` -/
def P8689022077621342192.Spec : Prop :=
  ∀ n, P8689022077621342192.a n = A107730 (n + 1)

end A107730

/-! ## A107730.P16589397209729924892

`A001222(A045370(n+1))*A049084(A290450(n+1))`
-/

namespace A107730.P16589397209729924892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A045370 (n + 1)).toNat * A049084 (A290450 (n + 1)).toNat

end

end A107730.P16589397209729924892

namespace A107730

/-- `A001222(A045370(n+1))*A049084(A290450(n+1))` -/
def P16589397209729924892.Spec : Prop :=
  ∀ n, P16589397209729924892.a n = A107730 (n + 1)

end A107730

/-! ## A107730.P16424212554236938552

`A065770(2*A290450(n+1))`
-/

namespace A107730.P16424212554236938552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (2 * A290450 (n + 1)).toNat

end

end A107730.P16424212554236938552

namespace A107730

/-- `A065770(2*A290450(n+1))` -/
def P16424212554236938552.Spec : Prop :=
  ∀ n, P16424212554236938552.a n = A107730 (n + 1)

end A107730

/-!
# A107731: Row 7 of the array in A107735.

The programs for A107731, the canonical program `A107731.P10817241790806089964` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107731 has offset 0).

The definition of A107731 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107731.P10817241790806089964

`1+(n²+n)*(n²+n+1)*10/3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107731

/-- `1+(n²+n)*(n²+n+1)*10/3` -/
def P10817241790806089964.Spec : Prop :=
  ∀ n, P10817241790806089964.a n = (A107731 n : ℚ)

end A107731

/-! ## A107731.P14265707626839668580

`round(2/3*A022521(n))`
-/

namespace A107731.P14265707626839668580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) / 3 * (A022521 n : ℚ))

end

end A107731.P14265707626839668580

namespace A107731

/-- `round(2/3*A022521(n))` -/
def P14265707626839668580.Spec : Prop :=
  ∀ n, P14265707626839668580.a n = A107731 n

end A107731

/-! ## A107731.P13872317105986093525

`(5*A001844(n)²+1)/6`
-/

namespace A107731.P13872317105986093525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A001844 n ^ 2 + 1 : ℚ) / 6

end

end A107731.P13872317105986093525

namespace A107731

/-- `(5*A001844(n)²+1)/6` -/
def P13872317105986093525.Spec : Prop :=
  ∀ n, P13872317105986093525.a n = (A107731 n : ℚ)

end A107731

/-! ## A107731.P12183237179119087548

`Δ[A005900(n²)/A028310(n)]`
-/

namespace A107731.P12183237179119087548
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005900 (n ^ 2) : ℚ) / (A028310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107731.P12183237179119087548

namespace A107731

/-- `Δ[A005900(n²)/A028310(n)]` -/
def P12183237179119087548.Spec : Prop :=
  ∀ n, P12183237179119087548.a n = (A107731 n : ℚ)

end A107731

/-! ## A107731.P16769104013444289204

`A005901(n²+(n+1)²)/12`
-/

namespace A107731.P16769104013444289204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005901 (n ^ 2 + (n + 1) ^ 2) : ℚ) / 12

end

end A107731.P16769104013444289204

namespace A107731

/-- `A005901(n²+(n+1)²)/12` -/
def P16769104013444289204.Spec : Prop :=
  ∀ n, P16769104013444289204.a n = (A107731 n : ℚ)

end A107731

/-! ## A107731.P8128825971192228189

`A004068(A001844(n))/A001844(n)`
-/

namespace A107731.P8128825971192228189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004068 (A001844 n).toNat : ℚ) / (A001844 n : ℚ)

end

end A107731.P8128825971192228189

namespace A107731

/-- `A004068(A001844(n))/A001844(n)` -/
def P8128825971192228189.Spec : Prop :=
  ∀ n, P8128825971192228189.a n = (A107731 n : ℚ)

end A107731

/-! ## A107731.P14570991210540016011

`A211440(A003215(n))/3`
-/

namespace A107731.P14570991210540016011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211440 (A003215 n).toNat : ℚ) / 3

end

end A107731.P14570991210540016011

namespace A107731

/-- `A211440(A003215(n))/3` -/
def P14570991210540016011.Spec : Prop :=
  ∀ n, P14570991210540016011.a n = (A107731 n : ℚ)

end A107731

/-!
# A107732: Column 1 of the array in A107735.

The programs for A107732, the canonical program `A107732.P5209817235863461926` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107732 has offset 3).

The definition of A107732 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107732.P5209817235863461926

`7*a(n-2)-14*a(n-4)+8*a(n-6)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=4, a(4)=21, a(5)=8`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107732

/-- `7*a(n-2)-14*a(n-4)+8*a(n-6)` -/
def P5209817235863461926.Spec : Prop :=
  ∀ n, P5209817235863461926.a n = A107732 (n + 3)

theorem P5209817235863461926.correct : P5209817235863461926.Spec := by
  intro n
  simp only [A107732, Nat.add_sub_cancel]

end A107732

/-! ## A107732.P4382695491844137084

`(3*(1+(-1)^(n+3))*2^((n+3)/2)-(1-(-1)^(n+3))*(2-2^(n+3)))/12`
-/

namespace A107732.P4382695491844137084
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 * (1 + (-1) ^ (n + 3)) : ℝ) * (2 : ℝ) ^ ((n + 3 : ℚ) / 2 : ℝ) - ((1 - (-1) ^ (n + 3)) * (2 - (2 ^ (n + 3) : ℤ)) : ℝ)) / 12

end

end A107732.P4382695491844137084

namespace A107732

/-- `(3*(1+(-1)^(n+3))*2^((n+3)/2)-(1-(-1)^(n+3))*(2-2^(n+3)))/12` -/
def P4382695491844137084.Spec : Prop :=
  ∀ n, P4382695491844137084.a n = (A107732 (n + 3) : ℝ)

end A107732

/-! ## A107732.P10510758677129028485

`A135318(n*gcd(2, n)+2)`
-/

namespace A107732.P10510758677129028485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (n * Nat.gcd 2 n + 2)

end

end A107732.P10510758677129028485

namespace A107732

/-- `A135318(n*gcd(2, n)+2)` -/
def P10510758677129028485.Spec : Prop :=
  ∀ n, P10510758677129028485.a n = A107732 (n + 3)

end A107732

/-! ## A107732.P14679036134573584170

`A135318((n+1)^((n+1)%2)+n+1)`
-/

namespace A107732.P14679036134573584170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 ((n + 1) ^ ((n + 1) % 2) + (n + 1))

end

end A107732.P14679036134573584170

namespace A107732

/-- `A135318((n+1)^((n+1)%2)+n+1)` -/
def P14679036134573584170.Spec : Prop :=
  ∀ n, P14679036134573584170.a n = A107732 (n + 3)

end A107732

/-! ## A107732.P17720481670034446699

`xor(a(n-2)+a(n-2), A279872(n))` with `a(0)=1, a(1)=2`
-/

namespace A107732.P17720481670034446699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor (a (n - 2) + a (n - 2)) (A279872 n)

end

end A107732.P17720481670034446699

namespace A107732

/-- `xor(a(n-2)+a(n-2), A279872(n))` -/
def P17720481670034446699.Spec : Prop :=
  ∀ n, P17720481670034446699.a n = A107732 (n + 3)

end A107732

/-! ## A107732.P1238518723620847971

`A160967(A006368(n)+1)`
-/

namespace A107732.P1238518723620847971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160967 (A006368 n + 1).toNat

end

end A107732.P1238518723620847971

namespace A107732

/-- `A160967(A006368(n)+1)` -/
def P1238518723620847971.Spec : Prop :=
  ∀ n, P1238518723620847971.a n = A107732 (n + 3)

end A107732

/-! ## A107732.P419087115864202140

`A112387(A059029(n+1))`
-/

namespace A107732.P419087115864202140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112387 (A059029 (n + 1)).toNat

end

end A107732.P419087115864202140

namespace A107732

/-- `A112387(A059029(n+1))` -/
def P419087115864202140.Spec : Prop :=
  ∀ n, P419087115864202140.a n = A107732 (n + 3)

end A107732

/-! ## A107732.P5880319104289575731

`A135318(A043547(n+2))`
-/

namespace A107732.P5880319104289575731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (A043547 (n + 2)).toNat

end

end A107732.P5880319104289575731

namespace A107732

/-- `A135318(A043547(n+2))` -/
def P5880319104289575731.Spec : Prop :=
  ∀ n, P5880319104289575731.a n = A107732 (n + 3)

end A107732

/-! ## A107732.P3171071197493082412

`A016116(n)/a(n-1)*A000975(n+1)` with `a(0)=1`
-/

namespace A107732.P3171071197493082412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A016116 n : ℚ) / a (n - 1) * (A000975 (n + 1) : ℚ)

end

end A107732.P3171071197493082412

namespace A107732

/-- `A016116(n)/a(n-1)*A000975(n+1)` -/
def P3171071197493082412.Spec : Prop :=
  ∀ n, P3171071197493082412.a n = (A107732 (n + 3) : ℚ)

end A107732

/-!
# A107733: Column 2 of the array in A107735.

The programs for A107733, there is no canonical definition to state claims against.
-/

/-! ## A107733.P2642592781069223267

`A107735(A167499(n+1))`
-/

namespace A107733.P2642592781069223267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107735 (A167499 (n + 1)).toNat

end

end A107733.P2642592781069223267

/-! ## A107733.P2189379695943352995

`A107735(A027379(n)+8)`
-/

namespace A107733.P2189379695943352995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107735 (A027379 n + 8).toNat

end

end A107733.P2189379695943352995

/-! ## A107733.P1749089558958452839

`A107735(A055998(n)+8)`
-/

namespace A107733.P1749089558958452839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107735 (A055998 n + 8).toNat

end

end A107733.P1749089558958452839

/-! ## A107733.P1936819510895703539

`A107735(A046691(n)+9)`
-/

namespace A107733.P1936819510895703539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107735 (A046691 n + 9).toNat

end

end A107733.P1936819510895703539

/-! ## A107733.P13571055345941443705

`A107735(A167487(n)+n)`
-/

namespace A107733.P13571055345941443705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107735 (A167487 n + (n : ℤ)).toNat

end

end A107733.P13571055345941443705

/-!
# A107734: Column 3 of the array in A107735.

The programs for A107734, there is no canonical definition to state claims against.
-/

/-! ## A107734.P17186284995380870000

`A107735(A166136(n+2))`
-/

namespace A107734.P17186284995380870000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107735 (A166136 (n + 2)).toNat

end

end A107734.P17186284995380870000

/-! ## A107734.P7030481619928418452

`A107735(A141214(n)+9)`
-/

namespace A107734.P7030481619928418452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107735 (A141214 n + 9).toNat

end

end A107734.P7030481619928418452

/-! ## A107734.P13405842894547612667

`A107735(A052905(n)+11)`
-/

namespace A107734.P13405842894547612667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107735 (A052905 n + 11).toNat

end

end A107734.P13405842894547612667

/-! ## A107734.P1155560031226969872

`A107735(A000124(n+3)+5)`
-/

namespace A107734.P1155560031226969872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107735 (A000124 (n + 3) + 5).toNat

end

end A107734.P1155560031226969872

/-!
# A107735: Array read by antidiagonals: A(n,k) = Verlinde numbers for quasiparabolic bundles (n >= 3, k >= 0).

The programs for A107735, there is no canonical definition to state claims against.
-/

/-! ## A107735.P15014226299560630803

`A084589(A105556(n))%A328097(2*(n+2))`
-/

namespace A107735.P15014226299560630803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084589 (A105556 n).toNat) (A328097 (2 * (n + 2)))

end

end A107735.P15014226299560630803

/-! ## A107735.P1400286740785933361

`A036741(A125860(n))%14`
-/

namespace A107735.P1400286740785933361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036741 (A125860 n).toNat) 14

end

end A107735.P1400286740785933361

/-! ## A107735.P1699445676128007833

`A048197(A125800(n))%14`
-/

namespace A107735.P1699445676128007833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048197 (A125800 n).toNat) 14

end

end A107735.P1699445676128007833

/-! ## A107735.P8105548209581084016

`A094802(A142589(n))%19`
-/

namespace A107735.P8105548209581084016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094802 (A142589 n).toNat) 19

end

end A107735.P8105548209581084016

/-! ## A107735.P10327404281344675434

`A292050(A117396(n))%19`
-/

namespace A107735.P10327404281344675434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292050 (A117396 n).toNat) 19

end

end A107735.P10327404281344675434

/-!
# A107736: 

The programs for A107736, there is no canonical definition to state claims against.
-/

/-! ## A107736.P13210661417108736077

`A029546(xor(3, 4*n+2))`
-/

namespace A107736.P13210661417108736077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029546 (Nat.xor 3 (4 * n + 2))

end

end A107736.P13210661417108736077

/-! ## A107736.P3710585095514310927

`A029546(3*n+n+1)`
-/

namespace A107736.P3710585095514310927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029546 (3 * n + (n + 1))

end

end A107736.P3710585095514310927

/-! ## A107736.P2590805000348735198

`A305539(∑[A178798(n)+3]+n)`
-/

namespace A107736.P2590805000348735198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305539 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A107736.P2590805000348735198

/-! ## A107736.P12154866816653645015

`A305539(∑[A034521(n+1)+3]+n)`
-/

namespace A107736.P12154866816653645015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034521 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305539 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A107736.P12154866816653645015

/-! ## A107736.P11950678139658083718

`A029547(2*n)*A046176(2*n+2)`
-/

namespace A107736.P11950678139658083718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029547 (2 * n) * A046176 (2 * n + 2)

end

end A107736.P11950678139658083718

/-!
# A107737: Numbers n such that, in prime decomposition of n, sum of all prime factors and their orders is prime.

The programs for A107737, the canonical program `A107737.P10847822241434354246` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107737 has offset 1).

The definition of A107737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107737.P10847822241434354246

`eq[1, ∑{e}[A008474(n+1), #]]+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A107737

/-- `eq[1, ∑{e}[A008474(n+1), #]]+1` -/
def P10847822241434354246.Spec : Prop :=
  ∀ n, (P10847822241434354246.a n : ℤ) = A107737 (n + 1)

theorem P10847822241434354246.correct : P10847822241434354246.Spec := by
  intro n
  simp only [A107737, Nat.add_sub_cancel]

end A107737

/-! ## A107737.P18300170983206180606

`eq[1, A018783(A008474(n+1))]+1`
-/

namespace A107737.P18300170983206180606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A008474 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107737.P18300170983206180606

namespace A107737

/-- `eq[1, A018783(A008474(n+1))]+1` -/
def P18300170983206180606.Spec : Prop :=
  ∀ n, (P18300170983206180606.a n : ℤ) = A107737 (n + 1)

end A107737

/-! ## A107737.P10288784834993235079

`lt[A284255(A323840(n)), A318463(2*(n+1))]`
-/

namespace A107737.P10288784834993235079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284255 (A323840 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318463 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A107737.P10288784834993235079

namespace A107737

/-- `lt[A284255(A323840(n)), A318463(2*(n+1))]` -/
def P10288784834993235079.Spec : Prop :=
  ∀ n, (P10288784834993235079.a n : ℤ) = A107737 (n + 1)

end A107737

/-! ## A107737.P11783356457351136278

`eq[Δ[A334070(n+1)], A341825(n+1)]`
-/

namespace A107737.P11783356457351136278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334070 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341825 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A107737.P11783356457351136278

namespace A107737

/-- `eq[Δ[A334070(n+1)], A341825(n+1)]` -/
def P11783356457351136278.Spec : Prop :=
  ∀ n, (P11783356457351136278.a n : ℤ) = A107737 (n + 1)

end A107737

/-!
# A107738: Primes as a sum of prime factors and their orders in prime decomposition of some n.

The programs for A107738, the canonical program `A107738.P12431679121897474931` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107738 has offset 1).

The definition of A107738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107738.P12431679121897474931

`p?[A008472(n+1)+A001222(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A107738

/-- `p?[A008472(n+1)+A001222(n+1)]` -/
def P12431679121897474931.Spec : Prop :=
  ∀ n, P12431679121897474931.a n = A107738 (n + 1)

theorem P12431679121897474931.correct : P12431679121897474931.Spec := by
  intro n
  simp only [A107738, Nat.add_sub_cancel]

end A107738

/-! ## A107738.P4572108520838945734

`p?[∑{e}[n+1, #]+∑{p}[n+1, #]]`
-/

namespace A107738.P4572108520838945734
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + ∑ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A107738.P4572108520838945734

namespace A107738

/-- `p?[∑{e}[n+1, #]+∑{p}[n+1, #]]` -/
def P4572108520838945734.Spec : Prop :=
  ∀ n, (P4572108520838945734.a n : ℤ) = A107738 (n + 1)

end A107738

/-! ## A107738.P15280289936849068487

`p?[A008474(n+1)]`
-/

namespace A107738.P15280289936849068487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107738.P15280289936849068487

namespace A107738

/-- `p?[A008474(n+1)]` -/
def P15280289936849068487.Spec : Prop :=
  ∀ n, P15280289936849068487.a n = A107738 (n + 1)

end A107738

/-! ## A107738.P1202866264034383020

`p?[A159076(n+1)-2]`
-/

namespace A107738.P1202866264034383020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159076 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107738.P1202866264034383020

namespace A107738

/-- `p?[A159076(n+1)-2]` -/
def P1202866264034383020.Spec : Prop :=
  ∀ n, P1202866264034383020.a n = A107738 (n + 1)

end A107738

/-! ## A107738.P7829709385299920806

`or(1, p?[A008474(n-log2(1/2))])`
-/

namespace A107738.P7829709385299920806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A107738.P7829709385299920806

namespace A107738

/-- `or(1, p?[A008474(n-log2(1/2))])` -/
def P7829709385299920806.Spec : Prop :=
  ∀ n, P7829709385299920806.a n = A107738 (n + 1)

end A107738

/-! ## A107738.P8573083255130519809

`filter[A008474(n+2), A010051(#)]`
-/

namespace A107738.P8573083255130519809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A107738.P8573083255130519809

namespace A107738

/-- `filter[A008474(n+2), A010051(#)]` -/
def P8573083255130519809.Spec : Prop :=
  ∀ n, P8573083255130519809.a n = A107738 (n + 1)

end A107738

/-! ## A107738.P4620793003664660918

`filter[A008474(n+2), A080339(#)]`
-/

namespace A107738.P4620793003664660918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A107738.P4620793003664660918

namespace A107738

/-- `filter[A008474(n+2), A080339(#)]` -/
def P4620793003664660918.Spec : Prop :=
  ∀ n, P4620793003664660918.a n = A107738 (n + 1)

end A107738

/-! ## A107738.P11399857368436721838

`filter[A008474(n+2), A080545(#)]`
-/

namespace A107738.P11399857368436721838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A107738.P11399857368436721838

namespace A107738

/-- `filter[A008474(n+2), A080545(#)]` -/
def P11399857368436721838.Spec : Prop :=
  ∀ n, P11399857368436721838.a n = A107738 (n + 1)

end A107738

/-! ## A107738.P865123430202126145

`A006530(2*p?[A008474(n-log2(1/2))])`
-/

namespace A107738.P865123430202126145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107738.P865123430202126145

namespace A107738

/-- `A006530(2*p?[A008474(n-log2(1/2))])` -/
def P865123430202126145.Spec : Prop :=
  ∀ n, P865123430202126145.a n = A107738 (n + 1)

end A107738

/-! ## A107738.P1853846417323222168

`A008474(A107737(n+1))`
-/

namespace A107738.P1853846417323222168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (A107737 (n + 1)).toNat

end

end A107738.P1853846417323222168

namespace A107738

/-- `A008474(A107737(n+1))` -/
def P1853846417323222168.Spec : Prop :=
  ∀ n, P1853846417323222168.a n = A107738 (n + 1)

end A107738

/-!
# A107740: Number of numbers m such that prime(n) = m + (digit sum of m).

The programs for A107740, there is no canonical definition to state claims against.
-/

/-! ## A107740.P2056005899981351875

`A230093(A000040(n+1))`
-/

namespace A107740.P2056005899981351875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (A000040 (n + 1)).toNat

end

end A107740.P2056005899981351875

/-! ## A107740.P15555870284474714565

`A230093(Δ[A007504(n)])`
-/

namespace A107740.P15555870284474714565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (f1 (n + 1) - f1 n).toNat

end

end A107740.P15555870284474714565

/-! ## A107740.P2819407606690238756

`A230093(A063884(n+1))`
-/

namespace A107740.P2819407606690238756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (A063884 (n + 1)).toNat

end

end A107740.P2819407606690238756

/-! ## A107740.P15823515270111256883

`A230093(A063904(n+1))`
-/

namespace A107740.P15823515270111256883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (A063904 (n + 1)).toNat

end

end A107740.P15823515270111256883

/-! ## A107740.P17941951523897623739

`A230093(A161847(n+1))`
-/

namespace A107740.P17941951523897623739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (A161847 (n + 1)).toNat

end

end A107740.P17941951523897623739

/-! ## A107740.P668827326626412906

`A230093(A171577(n+1))`
-/

namespace A107740.P668827326626412906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (A171577 (n + 1)).toNat

end

end A107740.P668827326626412906

/-! ## A107740.P15955161308246512192

`A230093(A008578(n+2))`
-/

namespace A107740.P15955161308246512192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (A008578 (n + 2)).toNat

end

end A107740.P15955161308246512192

/-! ## A107740.P156139501881531284

`A230093(eq[1, A003415(n)])`
-/

namespace A107740.P156139501881531284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107740.P156139501881531284

/-! ## A107740.P16803186257300965625

`A230093(eq[2, A073855(n)])`
-/

namespace A107740.P16803186257300965625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107740.P16803186257300965625

/-! ## A107740.P7868383713057983649

`A230093(record[A006530(n+2)])`
-/

namespace A107740.P7868383713057983649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A107740.P7868383713057983649

/-! ## A107740.P5380777466362075118

`A230093(record[A014963(n+2)])`
-/

namespace A107740.P5380777466362075118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A107740.P5380777466362075118

/-! ## A107740.P15834275044108030595

`A230093(record[A020639(n+2)])`
-/

namespace A107740.P15834275044108030595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A107740.P15834275044108030595

/-! ## A107740.P3187010584632996697

`A230093(A008864(n+1)-1)`
-/

namespace A107740.P3187010584632996697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (A008864 (n + 1) - 1).toNat

end

end A107740.P3187010584632996697

/-! ## A107740.P12333094286294300096

`A230093(record[A055672(n+2)-1])`
-/

namespace A107740.P12333094286294300096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A107740.P12333094286294300096

/-!
# A107742: G.f.: Product_{j>=1} Product_{i>=1} (1 + x^(i*j)).

The programs for A107742, there is no canonical definition to state claims against.
-/

/-! ## A107742.P2706919236584722118

`A321877(∑[n]+n)`
-/

namespace A107742.P2706919236584722118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A107742.P2706919236584722118

/-! ## A107742.P12976113558691939884

`A321877(A000096(n))%A003500(n)`
-/

namespace A107742.P12976113558691939884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321877 (A000096 n).toNat) (A003500 n)

end

end A107742.P12976113558691939884

/-! ## A107742.P10614328731053640913

`or(A000007(n), A321877(A000096(n)))`
-/

namespace A107742.P10614328731053640913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A321877 (A000096 n).toNat)

end

end A107742.P10614328731053640913

/-! ## A107742.P3189258528485931187

`abs(A000038(n)-A321877(A000096(n)))`
-/

namespace A107742.P3189258528485931187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000038 n - A321877 (A000096 n).toNat|

end

end A107742.P3189258528485931187

/-! ## A107742.P7491907635462931626

`A321877(A000096(n))+A000007(n+1)`
-/

namespace A107742.P7491907635462931626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (A000096 n).toNat + A000007 (n + 1)

end

end A107742.P7491907635462931626

/-! ## A107742.P12005005951389313124

`A321877(A000096(n))+and(2, A001222(4*n+1)²)`
-/

namespace A107742.P12005005951389313124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (A000096 n).toNat + Int.land 2 (A001222 (4 * n + 1) ^ 2)

end

end A107742.P12005005951389313124

/-! ## A107742.P17404639416308900807

`A321877(A000096(n))^A001221(A001316(n))`
-/

namespace A107742.P17404639416308900807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321877 (A000096 n).toNat : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A107742.P17404639416308900807

/-!
# A107743: Numbers m such that m+(digit sum of m) is a composite number.

The programs for A107743, the canonical program `A107743.P1532081049074715641` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107743 has offset 1).

The definition of A107743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107743.P1532081049074715641

`comp[A047791(n+1)-1]+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A107743

/-- `comp[A047791(n+1)-1]+1` -/
def P1532081049074715641.Spec : Prop :=
  ∀ n, (P1532081049074715641.a n : ℤ) = A107743 (n + 1)

theorem P1532081049074715641.correct : P1532081049074715641.Spec := by
  intro n
  simp only [A107743, Nat.add_sub_cancel]

end A107743

/-! ## A107743.P1760498854836597291

`lt[1, ∑{e}[A062028(n), #]]`
-/

namespace A107743.P1760498854836597291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A107743.P1760498854836597291

namespace A107743

/-- `lt[1, ∑{e}[A062028(n), #]]` -/
def P1760498854836597291.Spec : Prop :=
  ∀ n, (P1760498854836597291.a n : ℤ) = A107743 (n + 1)

end A107743

/-! ## A107743.P2781429426582376040

`lt[1, A074206(∑{digits}[n, #]+n)]`
-/

namespace A107743.P2781429426582376040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A107743.P2781429426582376040

namespace A107743

/-- `lt[1, A074206(∑{digits}[n, #]+n)]` -/
def P2781429426582376040.Spec : Prop :=
  ∀ n, (P2781429426582376040.a n : ℤ) = A107743 (n + 1)

end A107743

/-! ## A107743.P4423277745677042580

`lt[1, A074206(A230099(n)+A062329(n))]`
-/

namespace A107743.P4423277745677042580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A230099 n + A062329 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A107743.P4423277745677042580

namespace A107743

/-- `lt[1, A074206(A230099(n)+A062329(n))]` -/
def P4423277745677042580.Spec : Prop :=
  ∀ n, (P4423277745677042580.a n : ℤ) = A107743 (n + 1)

end A107743

/-! ## A107743.P12549224536731936980

`lt[1, A003415(∑{digits}[n, #]+n)]`
-/

namespace A107743.P12549224536731936980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A107743.P12549224536731936980

namespace A107743

/-- `lt[1, A003415(∑{digits}[n, #]+n)]` -/
def P12549224536731936980.Spec : Prop :=
  ∀ n, (P12549224536731936980.a n : ℤ) = A107743 (n + 1)

end A107743

/-! ## A107743.P9973957686028736202

`lt[A055671(A062028(n)), n]`
-/

namespace A107743.P9973957686028736202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A062028 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A107743.P9973957686028736202

namespace A107743

/-- `lt[A055671(A062028(n)), n]` -/
def P9973957686028736202.Spec : Prop :=
  ∀ n, (P9973957686028736202.a n : ℤ) = A107743 (n + 1)

end A107743

/-! ## A107743.P1063654454851452332

`lt[1, A032741(A007953(n)+n)]`
-/

namespace A107743.P1063654454851452332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A007953 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A107743.P1063654454851452332

namespace A107743

/-- `lt[1, A032741(A007953(n)+n)]` -/
def P1063654454851452332.Spec : Prop :=
  ∀ n, (P1063654454851452332.a n : ℤ) = A107743 (n + 1)

end A107743

/-! ## A107743.P15972540658509208181

`lt[A055671(A007953(n)+n), n]`
-/

namespace A107743.P15972540658509208181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A007953 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A107743.P15972540658509208181

namespace A107743

/-- `lt[A055671(A007953(n)+n), n]` -/
def P15972540658509208181.Spec : Prop :=
  ∀ n, (P15972540658509208181.a n : ℤ) = A107743 (n + 1)

end A107743

/-! ## A107743.P12051807338988826552

`lt[A055672(A007953(n)+n), n]`
-/

namespace A107743.P12051807338988826552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A007953 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A107743.P12051807338988826552

namespace A107743

/-- `lt[A055672(A007953(n)+n), n]` -/
def P12051807338988826552.Spec : Prop :=
  ∀ n, (P12051807338988826552.a n : ℤ) = A107743 (n + 1)

end A107743

/-! ## A107743.P12351498069365275326

`eq[A000007(n), A055671(A062028(n))]`
-/

namespace A107743.P12351498069365275326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A062028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107743.P12351498069365275326

namespace A107743

/-- `eq[A000007(n), A055671(A062028(n))]` -/
def P12351498069365275326.Spec : Prop :=
  ∀ n, (P12351498069365275326.a n : ℤ) = A107743 (n + 1)

end A107743

/-! ## A107743.P6036046869482221368

`eq[A000038(n), A055671(A062028(n))]`
-/

namespace A107743.P6036046869482221368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A062028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107743.P6036046869482221368

namespace A107743

/-- `eq[A000038(n), A055671(A062028(n))]` -/
def P6036046869482221368.Spec : Prop :=
  ∀ n, (P6036046869482221368.a n : ℤ) = A107743 (n + 1)

end A107743

/-! ## A107743.P16829033114194955706

`lt[1, A277692(A062028(n)+1)]`
-/

namespace A107743.P16829033114194955706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (A062028 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A107743.P16829033114194955706

namespace A107743

/-- `lt[1, A277692(A062028(n)+1)]` -/
def P16829033114194955706.Spec : Prop :=
  ∀ n, (P16829033114194955706.a n : ℤ) = A107743 (n + 1)

end A107743

/-! ## A107743.P12640262751370448018

`eq[0, A010051(A233583(A160939(n+1)))]`
-/

namespace A107743.P12640262751370448018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A233583 (A160939 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107743.P12640262751370448018

namespace A107743

/-- `eq[0, A010051(A233583(A160939(n+1)))]` -/
def P12640262751370448018.Spec : Prop :=
  ∀ n, (P12640262751370448018.a n : ℤ) = A107743 (n + 1)

end A107743

/-!
# A107744: Smallest prime factor of 6*n+1.

The programs for A107744, there is no canonical definition to state claims against.
-/

/-! ## A107744.P7990587743770135809

`A020639(A016921(n+1))`
-/

namespace A107744.P7990587743770135809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016921 (n + 1)).toNat

end

end A107744.P7990587743770135809

/-! ## A107744.P12651476446559431285

`A020639(6*n+7)`
-/

namespace A107744.P12651476446559431285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (6 * n + 7)

end

end A107744.P12651476446559431285

/-! ## A107744.P3520774375620365918

`p?[gcd(n%6, A020639(n+1))]`
-/

namespace A107744.P3520774375620365918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 6 : ℕ) : ℤ) (A020639 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A107744.P3520774375620365918

/-! ## A107744.P9441674332908381178

`p?[C(A020639(n+1+n), a(n-1))]` with `a(0)=60`
-/

namespace A107744.P9441674332908381178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [60] fun n f1 =>
  Nat.choose (A020639 (n + 1 + n)).toNat (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A107744.P9441674332908381178

/-! ## A107744.P11415846481445077278

`p?[A020639(A016933(n)-1)]`
-/

namespace A107744.P11415846481445077278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016933 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107744.P11415846481445077278

/-! ## A107744.P8792960525613817091

`p?[A020639(A016921(n))]`
-/

namespace A107744.P8792960525613817091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016921 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107744.P8792960525613817091

/-! ## A107744.P18401628371733041629

`A306289(2*(n+1))`
-/

namespace A107744.P18401628371733041629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306289 (2 * (n + 1))

end

end A107744.P18401628371733041629

/-! ## A107744.P9530910777058786730

`A090368(3*n+4)`
-/

namespace A107744.P9530910777058786730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (3 * n + 4)

end

end A107744.P9530910777058786730

/-! ## A107744.P15347150992499430039

`A126800(6*n+7)`
-/

namespace A107744.P15347150992499430039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126800 (6 * n + 7)

end

end A107744.P15347150992499430039

/-! ## A107744.P14505403751526079896

`A078788(A016933(n+1))`
-/

namespace A107744.P14505403751526079896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078788 (A016933 (n + 1)).toNat

end

end A107744.P14505403751526079896

/-! ## A107744.P1405450692445038813

`filter[A090369(3*n+1), A000035(#)]`
-/

namespace A107744.P1405450692445038813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A107744.P1405450692445038813

/-! ## A107744.P13008319795938367895

`filter[A090369(3*n+1), A014306(#)]`
-/

namespace A107744.P13008319795938367895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A107744.P13008319795938367895

/-! ## A107744.P6095222342269465926

`filter[A090369(3*n+1), A098725(#)]`
-/

namespace A107744.P6095222342269465926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A107744.P6095222342269465926

/-! ## A107744.P1004982247292400204

`filter[A096015(3*n+1), A123110(#)]`
-/

namespace A107744.P1004982247292400204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096015 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123110 (f1 j).toNat = 1) n)

end

end A107744.P1004982247292400204

/-! ## A107744.P16635224246789792399

`filter[A090369(3*n+1), A165560(#)]`
-/

namespace A107744.P16635224246789792399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165560 (f1 j).toNat = 1) n)

end

end A107744.P16635224246789792399

/-! ## A107744.P15139735712847166253

`filter[A090369(3*n+1), A166486(#)]`
-/

namespace A107744.P15139735712847166253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A107744.P15139735712847166253

/-! ## A107744.P11795539772152423742

`filter[A096015(3*n+1), A171387(#)]`
-/

namespace A107744.P11795539772152423742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096015 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A107744.P11795539772152423742

/-!
# A107745: Smallest prime factor of 6*n-1.

The programs for A107745, there is no canonical definition to state claims against.
-/

/-! ## A107745.P11451158386072546478

`A020639(6*(n+1)-1)`
-/

namespace A107745.P11451158386072546478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (6 * (n + 1) - 1)

end

end A107745.P11451158386072546478

/-! ## A107745.P8897550173973327972

`A306289(Δ[n²])`
-/

namespace A107745.P8897550173973327972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306289 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A107745.P8897550173973327972

/-! ## A107745.P15589347425281555088

`A057237(2*(n+1))*A306289(2*n+1)`
-/

namespace A107745.P15589347425281555088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (2 * (n + 1)) * A306289 (2 * n + 1)

end

end A107745.P15589347425281555088

/-! ## A107745.P4705730013431049972

`A090368(3*(n+1))`
-/

namespace A107745.P4705730013431049972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (3 * (n + 1))

end

end A107745.P4705730013431049972

/-!
# A107746: Numbers k such that the least prime factor of 6*k+1 > the least prime factor of 6*k-1, A107744(k) > A107745(k).

The programs for A107746, there is no canonical definition to state claims against.
-/

/-! ## A107746.P17261023804191923121

`comp[A107747(n+1)-1]+1`
-/

namespace A107746.P17261023804191923121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107747 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A107746.P17261023804191923121

/-! ## A107746.P802322747582536440

`comp[∪[A107747(n+1), A187852(n+1)]]`
-/

namespace A107746.P802322747582536440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107747 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187852 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A107746.P802322747582536440

/-! ## A107746.P14574590492817036402

`lt[A306289(2*n+1), A306289(2*(n+1))]+1`
-/

namespace A107746.P14574590492817036402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306289 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306289 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A107746.P14574590492817036402

/-! ## A107746.P3483348060336854950

`record[floor(A289441(A243937(n+1)+1)/2)]`
-/

namespace A107746.P3483348060336854950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A289441 (A243937 (n + 1) + 1).toNat : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107746.P3483348060336854950

/-! ## A107746.P16756144732818440018

`lt[n*char[A107747(n+1)], A001222(n²+1)]`
-/

namespace A107746.P16756144732818440018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107747 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A107746.P16756144732818440018

/-! ## A107746.P15547685957336950595

`eq[char[A107747(n+1)], A151933(n)]`
-/

namespace A107746.P15547685957336950595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107747 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A107746.P15547685957336950595

/-!
# A107747: Numbers k such that the least prime factor of 6*k+1 < the least prime factor of 6*k-1, A107744(k) < A107745(k).

The programs for A107747, there is no canonical definition to state claims against.
-/

/-! ## A107747.P17629601191529351931

`A020725(lt[A020639(6*n+7), A020639(6*n+5)])`
-/

namespace A107747.P17629601191529351931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (6 * n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (6 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A107747.P17629601191529351931

/-! ## A107747.P13382043664456967809

`lt[A306289(2*(n+1)), A306289(2*n+1)]+1`
-/

namespace A107747.P13382043664456967809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306289 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306289 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A107747.P13382043664456967809

/-! ## A107747.P16258191381791836535

`A020725(lt[A306289(2*(n+1)), A306289(2*n+1)])`
-/

namespace A107747.P16258191381791836535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306289 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306289 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A107747.P16258191381791836535

/-! ## A107747.P11219686166686953946

`A020725(lt[A090368(3*n+4), A090368(3*(n+1))])`
-/

namespace A107747.P11219686166686953946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A107747.P11219686166686953946

/-! ## A107747.P52873404148116832

`A020725(lt[A245689(6*n+7), A102457(6*(n+1))])`
-/

namespace A107747.P52873404148116832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245689 (6 * n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (6 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A107747.P52873404148116832

/-!
# A107748: Number of monic divisors of x^n - 1 with coefficients in {0,1,-1}.

The programs for A107748, there is no canonical definition to state claims against.
-/

/-! ## A107748.P15994597292913884194

`A347405(n+1)+A176664(A176668(n))`
-/

namespace A107748.P15994597292913884194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347405 (n + 1) + A176664 (A176668 n).toNat

end

end A107748.P15994597292913884194

/-! ## A107748.P4874014010203236369

`A347405(n+1)+A033999(A000799(n+1))`
-/

namespace A107748.P4874014010203236369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347405 (n + 1) + A033999 (A000799 (n + 1)).toNat

end

end A107748.P4874014010203236369

/-! ## A107748.P13779641596109648360

`A020639(A000079(n+1))*A243286(A329600(n+1))`
-/

namespace A107748.P13779641596109648360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000079 (n + 1)).toNat * A243286 (A329600 (n + 1)).toNat

end

end A107748.P13779641596109648360

/-! ## A107748.P788566767362419338

`A328400(A108951(n+1))+A108951(A328400(n+1))`
-/

namespace A107748.P788566767362419338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328400 (A108951 (n + 1)).toNat + A108951 (A328400 (n + 1)).toNat

end

end A107748.P788566767362419338

/-!
# A107749: OrdinaryUnitarySigma(n): If n = Product p_i^r_i then OUSigma(n) = Sigma(2^r_1)*UnitarySigma(n/2^r_1).

The programs for A107749, the canonical program `A107749.P144943964937098899` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107749 has offset 1).

The definition of A107749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107749.P12153889042536864364

`A360156(n+1)-A192066(n+1)`
-/

namespace A107749.P12153889042536864364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360156 (n + 1) - A192066 (n + 1)

end

end A107749.P12153889042536864364

namespace A107749

/-- `A360156(n+1)-A192066(n+1)` -/
def P12153889042536864364.Spec : Prop :=
  ∀ n, P12153889042536864364.a n = A107749 (n + 1)

end A107749

/-! ## A107749.P3518310483572925998

`A038712(n+1)*A192066(n+1)`
-/

namespace A107749.P3518310483572925998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) * A192066 (n + 1)

end

end A107749.P3518310483572925998

namespace A107749

/-- `A038712(n+1)*A192066(n+1)` -/
def P3518310483572925998.Spec : Prop :=
  ∀ n, P3518310483572925998.a n = A107749 (n + 1)

end A107749

/-! ## A107749.P18228258382401495681

`(A171977(n+1)-1)*A192066(n+1)`
-/

namespace A107749.P18228258382401495681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171977 (n + 1) - 1) * A192066 (n + 1)

end

end A107749.P18228258382401495681

namespace A107749

/-- `(A171977(n+1)-1)*A192066(n+1)` -/
def P18228258382401495681.Spec : Prop :=
  ∀ n, P18228258382401495681.a n = A107749 (n + 1)

end A107749

/-! ## A107749.P5737210608844555523

`∑{d}[n+1, A048298(#)*A192066((n+1)/#)]`
-/

namespace A107749.P5737210608844555523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048298 d * A192066 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A107749.P5737210608844555523

namespace A107749

/-- `∑{d}[n+1, A048298(#)*A192066((n+1)/#)]` -/
def P5737210608844555523.Spec : Prop :=
  ∀ n, P5737210608844555523.a n = A107749 (n + 1)

end A107749

/-! ## A107749.P11383132099839740697

`∑{d}[n+1, A099894(#-1)*A192066((n+1)/#)]`
-/

namespace A107749.P11383132099839740697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A192066 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A107749.P11383132099839740697

namespace A107749

/-- `∑{d}[n+1, A099894(#-1)*A192066((n+1)/#)]` -/
def P11383132099839740697.Spec : Prop :=
  ∀ n, P11383132099839740697.a n = A107749 (n + 1)

end A107749

/-! ## A107749.P10272694027770733137

`A360156(n+1)-A360156(n+1)/A171977(n+1)`
-/

namespace A107749.P10272694027770733137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360156 (n + 1) : ℚ) - (A360156 (n + 1) : ℚ) / (A171977 (n + 1) : ℚ)

end

end A107749.P10272694027770733137

namespace A107749

/-- `A360156(n+1)-A360156(n+1)/A171977(n+1)` -/
def P10272694027770733137.Spec : Prop :=
  ∀ n, P10272694027770733137.a n = (A107749 (n + 1) : ℚ)

end A107749

/-! ## A107749.P144943964937098899

`A000203(n+1)*A034448(n+1)/A069184(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A107749

/-- `A000203(n+1)*A034448(n+1)/A069184(n+1)` -/
def P144943964937098899.Spec : Prop :=
  ∀ n, P144943964937098899.a n = (A107749 (n + 1) : ℚ)

end A107749

/-! ## A107749.P15212544582913553580

`A000203(n+1)/A000593(n+1)*A192066(n+1)`
-/

namespace A107749.P15212544582913553580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A000593 (n + 1) : ℚ) * (A192066 (n + 1) : ℚ)

end

end A107749.P15212544582913553580

namespace A107749

/-- `A000203(n+1)/A000593(n+1)*A192066(n+1)` -/
def P15212544582913553580.Spec : Prop :=
  ∀ n, P15212544582913553580.a n = (A107749 (n + 1) : ℚ)

end A107749

/-! ## A107749.P17815497722260400304

`A038712(n+1)/A171977(n+1)*A360156(n+1)`
-/

namespace A107749.P17815497722260400304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038712 (n + 1) : ℚ) / (A171977 (n + 1) : ℚ) * (A360156 (n + 1) : ℚ)

end

end A107749.P17815497722260400304

namespace A107749

/-- `A038712(n+1)/A171977(n+1)*A360156(n+1)` -/
def P17815497722260400304.Spec : Prop :=
  ∀ n, P17815497722260400304.a n = (A107749 (n + 1) : ℚ)

end A107749

/-! ## A107749.P9261052529088095258

`A360156(n+1)-gcd(A034677(n+1), A360156(n+1))`
-/

namespace A107749.P9261052529088095258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360156 (n + 1) - (Int.gcd (A034677 (n + 1)) (A360156 (n + 1)) : ℤ)

end

end A107749.P9261052529088095258

namespace A107749

/-- `A360156(n+1)-gcd(A034677(n+1), A360156(n+1))` -/
def P9261052529088095258.Spec : Prop :=
  ∀ n, P9261052529088095258.a n = A107749 (n + 1)

end A107749

/-! ## A107749.P12928990092376218642

`abs(A328258(2*(n+1)))`
-/

namespace A107749.P12928990092376218642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A328258 (2 * (n + 1))|

end

end A107749.P12928990092376218642

namespace A107749

/-- `abs(A328258(2*(n+1)))` -/
def P12928990092376218642.Spec : Prop :=
  ∀ n, P12928990092376218642.a n = A107749 (n + 1)

end A107749

/-! ## A107749.P5515943164439621550

`A034448(2*(n+1))-2*A192066(n+1)`
-/

namespace A107749.P5515943164439621550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (2 * (n + 1)) - 2 * A192066 (n + 1)

end

end A107749.P5515943164439621550

namespace A107749

/-- `A034448(2*(n+1))-2*A192066(n+1)` -/
def P5515943164439621550.Spec : Prop :=
  ∀ n, P5515943164439621550.a n = A107749 (n + 1)

end A107749

/-! ## A107749.P9288518484571282253

`A360156(2*(n+1))-A034448(2*(n+1))`
-/

namespace A107749.P9288518484571282253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360156 (2 * (n + 1)) - A034448 (2 * (n + 1))

end

end A107749.P9288518484571282253

namespace A107749

/-- `A360156(2*(n+1))-A034448(2*(n+1))` -/
def P9288518484571282253.Spec : Prop :=
  ∀ n, P9288518484571282253.a n = A107749 (n + 1)

end A107749

/-! ## A107749.P8005028433838264638

`A118112(2*(n+1))-A328258(2*(n+1))`
-/

namespace A107749.P8005028433838264638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118112 (2 * (n + 1)) - A328258 (2 * (n + 1))

end

end A107749.P8005028433838264638

namespace A107749

/-- `A118112(2*(n+1))-A328258(2*(n+1))` -/
def P8005028433838264638.Spec : Prop :=
  ∀ n, P8005028433838264638.a n = A107749 (n + 1)

end A107749

/-! ## A107749.P5635454854336733199

`A146076(2*n+1)-A328258(2*(n+1))`
-/

namespace A107749.P5635454854336733199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (2 * n + 1) - A328258 (2 * (n + 1))

end

end A107749.P5635454854336733199

namespace A107749

/-- `A146076(2*n+1)-A328258(2*(n+1))` -/
def P5635454854336733199.Spec : Prop :=
  ∀ n, P5635454854336733199.a n = A107749 (n + 1)

end A107749

/-! ## A107749.P12053936096930521901

`A174275(2*(n+1))-A328258(2*(n+1))`
-/

namespace A107749.P12053936096930521901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174275 (2 * (n + 1)) - A328258 (2 * (n + 1))

end

end A107749.P12053936096930521901

namespace A107749

/-- `A174275(2*(n+1))-A328258(2*(n+1))` -/
def P12053936096930521901.Spec : Prop :=
  ∀ n, P12053936096930521901.a n = A107749 (n + 1)

end A107749

/-! ## A107749.P7760215718085286255

`A358679(2*(n+1))-A328258(2*(n+1))`
-/

namespace A107749.P7760215718085286255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358679 (2 * (n + 1)) - A328258 (2 * (n + 1))

end

end A107749.P7760215718085286255

namespace A107749

/-- `A358679(2*(n+1))-A328258(2*(n+1))` -/
def P7760215718085286255.Spec : Prop :=
  ∀ n, P7760215718085286255.a n = A107749 (n + 1)

end A107749

/-! ## A107749.P10546337820235207421

`1-(A328258(2*(n+1))+A006519(2*n+1))`
-/

namespace A107749.P10546337820235207421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A328258 (2 * (n + 1)) + A006519 (2 * n + 1))

end

end A107749.P10546337820235207421

namespace A107749

/-- `1-(A328258(2*(n+1))+A006519(2*n+1))` -/
def P10546337820235207421.Spec : Prop :=
  ∀ n, P10546337820235207421.a n = A107749 (n + 1)

end A107749

/-! ## A107749.P12312927640670929655

`gcd(A034448(n+2)*A328258(2*(n+1)), A328258(2*(n+1)))`
-/

namespace A107749.P12312927640670929655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034448 (n + 2) * A328258 (2 * (n + 1))) (A328258 (2 * (n + 1)))

end

end A107749.P12312927640670929655

namespace A107749

/-- `gcd(A034448(n+2)*A328258(2*(n+1)), A328258(2*(n+1)))` -/
def P12312927640670929655.Spec : Prop :=
  ∀ n, (P12312927640670929655.a n : ℤ) = A107749 (n + 1)

end A107749

/-! ## A107749.P15334815467798200548

`gcd(A328258(2*n+2)*A328258(n+2), A328258(2*n+2))`
-/

namespace A107749.P15334815467798200548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A328258 (2 * n + 2) * A328258 (n + 2)) (A328258 (2 * n + 2))

end

end A107749.P15334815467798200548

namespace A107749

/-- `gcd(A328258(2*n+2)*A328258(n+2), A328258(2*n+2))` -/
def P15334815467798200548.Spec : Prop :=
  ∀ n, (P15334815467798200548.a n : ℤ) = A107749 (n + 1)

end A107749

/-!
# A107750: If n=0 then 0, else smallest number greater than its predecessor and having either more or fewer zeros in its binary representation.

The programs for A107750, the canonical program `A107750.P12702237359604224724` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107750 has offset 0).

The definition of A107750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107750.P7297352914065848298

`comp[4*n+6]`
-/

namespace A107750.P7297352914065848298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A107750.P7297352914065848298

namespace A107750

/-- `comp[4*n+6]` -/
def P7297352914065848298.Spec : Prop :=
  ∀ n, (P7297352914065848298.a n : ℤ) = A107750 n

end A107750

/-! ## A107750.P3738474342789656353

`lt[(-n)^and(3, n), 5]`
-/

namespace A107750.P3738474342789656353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ)) ^ Nat.land 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A107750.P3738474342789656353

namespace A107750

/-- `lt[(-n)^and(3, n), 5]` -/
def P3738474342789656353.Spec : Prop :=
  ∀ n, (P3738474342789656353.a n : ℤ) = A107750 n

end A107750

/-! ## A107750.P12702237359604224724

`eq[n, gcd(n, and(4, n²))]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107750

/-- `eq[n, gcd(n, and(4, n²))]` -/
def P12702237359604224724.Spec : Prop :=
  ∀ n, (P12702237359604224724.a n : ℤ) = A107750 n

theorem P12702237359604224724.correct : P12702237359604224724.Spec := by
  intro n
  simp only [A107750]

end A107750

/-! ## A107750.P3558138943409140926

`lt[n*val(n+2, 4), 3]`
-/

namespace A107750.P3558138943409140926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.valuation (n + 2) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A107750.P3558138943409140926

namespace A107750

/-- `lt[n*val(n+2, 4), 3]` -/
def P3558138943409140926.Spec : Prop :=
  ∀ n, (P3558138943409140926.a n : ℤ) = A107750 n

end A107750

/-! ## A107750.P2372350582650651433

`lt[2*n, lcm(4, n+6)]`
-/

namespace A107750.P2372350582650651433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A107750.P2372350582650651433

namespace A107750

/-- `lt[2*n, lcm(4, n+6)]` -/
def P2372350582650651433.Spec : Prop :=
  ∀ n, (P2372350582650651433.a n : ℤ) = A107750 n

end A107750

/-! ## A107750.P10962653436494621475

`lt[n^val(n+2, 4), 3]`
-/

namespace A107750.P10962653436494621475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.valuation (n + 2) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A107750.P10962653436494621475

namespace A107750

/-- `lt[n^val(n+2, 4), 3]` -/
def P10962653436494621475.Spec : Prop :=
  ∀ n, (P10962653436494621475.a n : ℤ) = A107750 n

end A107750

/-! ## A107750.P8847323696911490144

`lt[(n-1)*and(4, n²), 5]`
-/

namespace A107750.P8847323696911490144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.land 4 (n ^ 2) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A107750.P8847323696911490144

namespace A107750

/-- `lt[(n-1)*and(4, n²), 5]` -/
def P8847323696911490144.Spec : Prop :=
  ∀ n, (P8847323696911490144.a n : ℤ) = A107750 n

end A107750

/-! ## A107750.P265839638819685589

`eq[1, (n-1)^and(4, n²)]`
-/

namespace A107750.P265839638819685589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ Nat.land 4 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107750.P265839638819685589

namespace A107750

/-- `eq[1, (n-1)^and(4, n²)]` -/
def P265839638819685589.Spec : Prop :=
  ∀ n, (P265839638819685589.a n : ℤ) = A107750 n

end A107750

/-! ## A107750.P14665364170249306740

`floor(a(n-2)/4+n)` with `a(0)=0, a(1)=1`
-/

namespace A107750.P14665364170249306740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(a (n - 2) : ℚ) / 4 + (n : ℚ)⌋

end

end A107750.P14665364170249306740

namespace A107750

/-- `floor(a(n-2)/4+n)` -/
def P14665364170249306740.Spec : Prop :=
  ∀ n, P14665364170249306740.a n = A107750 n

end A107750

/-! ## A107750.P12855336703987446950

`eq[1, (n-1)^val(n+2, 4)]`
-/

namespace A107750.P12855336703987446950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ SequenceMachineLib.valuation (n + 2) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107750.P12855336703987446950

namespace A107750

/-- `eq[1, (n-1)^val(n+2, 4)]` -/
def P12855336703987446950.Spec : Prop :=
  ∀ n, (P12855336703987446950.a n : ℤ) = A107750 n

end A107750

/-! ## A107750.P2279838844436630298

`lt[or(3, n+1)%(n+2), 4]`
-/

namespace A107750.P2279838844436630298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (n + 1) % (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A107750.P2279838844436630298

namespace A107750

/-- `lt[or(3, n+1)%(n+2), 4]` -/
def P2279838844436630298.Spec : Prop :=
  ∀ n, (P2279838844436630298.a n : ℤ) = A107750 n

end A107750

/-! ## A107750.P18014795801097796084

`lt[0, C(2*n, a(n-1))]` with `a(0)=1`
-/

namespace A107750.P18014795801097796084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  Nat.choose (2 * n) (f2 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A107750.P18014795801097796084

namespace A107750

/-- `lt[0, C(2*n, a(n-1))]` -/
def P18014795801097796084.Spec : Prop :=
  ∀ n, (P18014795801097796084.a n : ℤ) = A107750 n

end A107750

/-! ## A107750.P2684012016558753792

`a(n-3)+4` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5`
-/

namespace A107750.P2684012016558753792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 4, 5] fun n a =>
  a (n - 3) + 4

end

end A107750.P2684012016558753792

namespace A107750

/-- `a(n-3)+4` -/
def P2684012016558753792.Spec : Prop :=
  ∀ n, (P2684012016558753792.a n : ℤ) = A107750 n

end A107750

/-! ## A107750.P14624154504559897374

`record[n/(n-1)^val(n+2, 4)]`
-/

namespace A107750.P14624154504559897374
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (((n : ℤ) - 1) ^ SequenceMachineLib.valuation (n + 2) 4 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107750.P14624154504559897374

namespace A107750

/-- `record[n/(n-1)^val(n+2, 4)]` -/
def P14624154504559897374.Spec : Prop :=
  ∀ n, P14624154504559897374.a n = (A107750 n : ℚ)

end A107750

/-! ## A107750.P16751918182701099594

`lt[n, (n+2)²/or(3, n+2)]`
-/

namespace A107750.P16751918182701099594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℚ) / (Nat.lor 3 (n + 2) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A107750.P16751918182701099594

namespace A107750

/-- `lt[n, (n+2)²/or(3, n+2)]` -/
def P16751918182701099594.Spec : Prop :=
  ∀ n, (P16751918182701099594.a n : ℤ) = A107750 n

end A107750

/-! ## A107750.P7966712713187449940

`lt[n^gcd(4, n+2), (n+3)²]`
-/

namespace A107750.P7966712713187449940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.gcd 4 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A107750.P7966712713187449940

namespace A107750

/-- `lt[n^gcd(4, n+2), (n+3)²]` -/
def P7966712713187449940.Spec : Prop :=
  ∀ n, (P7966712713187449940.a n : ℤ) = A107750 n

end A107750

/-! ## A107750.P5668788555583082168

`lt[n, (n+3)/val(n+2, 2)!]`
-/

namespace A107750.P5668788555583082168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (Nat.factorial (SequenceMachineLib.valuation (n + 2) 2) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A107750.P5668788555583082168

namespace A107750

/-- `lt[n, (n+3)/val(n+2, 2)!]` -/
def P5668788555583082168.Spec : Prop :=
  ∀ n, (P5668788555583082168.a n : ℤ) = A107750 n

end A107750

/-! ## A107750.P15488035056164623647

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A107750.P15488035056164623647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 1, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107750.P15488035056164623647

namespace A107750

/-- `∑[floor(a(n-3))]` -/
def P15488035056164623647.Spec : Prop :=
  ∀ n, (P15488035056164623647.a n : ℤ) = A107750 n

end A107750

/-! ## A107750.P13510855413609429510

`floor(n-(1-a(n-1))/4)` with `a(0)=0, a(1)=1`
-/

namespace A107750.P13510855413609429510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(n : ℚ) - (1 - a (n - 1) : ℚ) / 4⌋

end

end A107750.P13510855413609429510

namespace A107750

/-- `floor(n-(1-a(n-1))/4)` -/
def P13510855413609429510.Spec : Prop :=
  ∀ n, P13510855413609429510.a n = A107750 n

end A107750

/-! ## A107750.P2694592877479761858

`lt[(n-1)*(n+1)%4, 2*n]`
-/

namespace A107750.P2694592877479761858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (((n + 1) % 4 : ℕ) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A107750.P2694592877479761858

namespace A107750

/-- `lt[(n-1)*(n+1)%4, 2*n]` -/
def P2694592877479761858.Spec : Prop :=
  ∀ n, (P2694592877479761858.a n : ℤ) = A107750 n

end A107750

/-!
# A107751: a(n) = A107750(n+1) - A107750(n).

The programs for A107751, the canonical program `A107751.P15134541237902827226` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107751 has offset 0).

The definition of A107751 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107750, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A107751.P15134541237902827226

`A107750(n+1)-A107750(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A107751

/-- `A107750(n+1)-A107750(n)` -/
def P15134541237902827226.Spec : Prop :=
  ∀ n, P15134541237902827226.a n = A107751 n

theorem P15134541237902827226.correct : P15134541237902827226.Spec := by
  intro n
  simp only [A107751]

end A107751

/-!
# A107752: Primes of the form r(r(r(r(r(n)+1)+1)+1)+1)+1, where A141468(n)=r(n)=n-th nonprime.

The programs for A107752, there is no canonical definition to state claims against.
-/

/-! ## A107752.P3968658355152986631

`p?[A102616(A102615(n+1))+1]`
-/

namespace A107752.P3968658355152986631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102616 (A102615 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107752.P3968658355152986631

/-! ## A107752.P1636768880148105615

`A106736(A084919(n+2))`
-/

namespace A107752.P1636768880148105615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106736 (A084919 (n + 2)).toNat

end

end A107752.P1636768880148105615

/-!
# A107753: Number of primitive subsets of the n-th roots of unity summing to zero.

The programs for A107753, there is no canonical definition to state claims against.
-/

/-! ## A107753.P17391701861659534178

`A318320(n+1)+A209167(A062513(n+1))`
-/

namespace A107753.P17391701861659534178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318320 (n + 1) + A209167 (A062513 (n + 1)).toNat

end

end A107753.P17391701861659534178

/-! ## A107753.P16843471986639138483

`A318320(n+1)+A062513(A300831(n+1))`
-/

namespace A107753.P16843471986639138483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318320 (n + 1) + A062513 (A300831 (n + 1)).toNat

end

end A107753.P16843471986639138483

/-! ## A107753.P15942196334464299948

`A090106(∑{p}[n+1, ceil(n/#)]+1)`
-/

namespace A107753.P15942196334464299948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090106 (∑ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉ + 1).toNat

end

end A107753.P15942196334464299948

/-! ## A107753.P13790564487533241388

`A243903(∑{p}[n+1, ceil(n/#)]+1)`
-/

namespace A107753.P13790564487533241388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (∑ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉ + 1).toNat

end

end A107753.P13790564487533241388

/-! ## A107753.P8009838314044259134

`A182049(∑{p}[n+1, ceil(n/#)]+2)`
-/

namespace A107753.P8009838314044259134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182049 (∑ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉ + 2).toNat

end

end A107753.P8009838314044259134

/-!
# A107754: Number of subsets of the n-th roots of unity that sum to 1.

The programs for A107754, there is no canonical definition to state claims against.
-/

/-! ## A107754.P18026261299618167849

`A331888(n+1)+A266611(A331888(n+1)²)`
-/

namespace A107754.P18026261299618167849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331888 (n + 1) + A266611 (A331888 (n + 1) ^ 2).toNat

end

end A107754.P18026261299618167849

/-!
# A107755: Numbers k such that Sum_{j=1..k} Catalan(j) == 0 (mod 3).

The programs for A107755, the canonical program `A107755.P8010610364266313592` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107755 has offset 1).

The definition of A107755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107755.P8010610364266313592

`A074938(n+1)-1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A107755

/-- `A074938(n+1)-1` -/
def P8010610364266313592.Spec : Prop :=
  ∀ n, P8010610364266313592.a n = A107755 (n + 1)

theorem P8010610364266313592.correct : P8010610364266313592.Spec := by
  intro n
  simp only [A107755, Nat.add_sub_cancel]

end A107755

/-! ## A107755.P2328037965254593295

`2*A137821(n+1)`
-/

namespace A107755.P2328037965254593295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137821 (n + 1)

end

end A107755.P2328037965254593295

namespace A107755

/-- `2*A137821(n+1)` -/
def P2328037965254593295.Spec : Prop :=
  ∀ n, P2328037965254593295.a n = A107755 (n + 1)

end A107755

/-! ## A107755.P1702903300480243789

`Δ[∑[A074938(n)]-n]`
-/

namespace A107755.P1702903300480243789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107755.P1702903300480243789

namespace A107755

/-- `Δ[∑[A074938(n)]-n]` -/
def P1702903300480243789.Spec : Prop :=
  ∀ n, P1702903300480243789.a n = A107755 (n + 1)

end A107755

/-! ## A107755.P1121228237140829165

`∑[2*A137822(n+1)]`
-/

namespace A107755.P1121228237140829165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107755.P1121228237140829165

namespace A107755

/-- `∑[2*A137822(n+1)]` -/
def P1121228237140829165.Spec : Prop :=
  ∀ n, P1121228237140829165.a n = A107755 (n + 1)

end A107755

/-! ## A107755.P11507601070344693831

`and(-2, A005836(2*n+3))`
-/

namespace A107755.P11507601070344693831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A005836 (2 * n + 3))

end

end A107755.P11507601070344693831

namespace A107755

/-- `and(-2, A005836(2*n+3))` -/
def P11507601070344693831.Spec : Prop :=
  ∀ n, P11507601070344693831.a n = A107755 (n + 1)

end A107755

/-! ## A107755.P12189810499450074261

`or(1, A082575(2*(n+1)))+1`
-/

namespace A107755.P12189810499450074261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A082575 (2 * (n + 1))) + 1

end

end A107755.P12189810499450074261

namespace A107755

/-- `or(1, A082575(2*(n+1)))+1` -/
def P12189810499450074261.Spec : Prop :=
  ∀ n, P12189810499450074261.a n = A107755 (n + 1)

end A107755

/-! ## A107755.P11925047309955339675

`A047238(A003278(n+2))`
-/

namespace A107755.P11925047309955339675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047238 (A003278 (n + 2)).toNat

end

end A107755.P11925047309955339675

namespace A107755

/-- `A047238(A003278(n+2))` -/
def P11925047309955339675.Spec : Prop :=
  ∀ n, P11925047309955339675.a n = A107755 (n + 1)

end A107755

/-! ## A107755.P17763378006303998601

`A047238(A005836(n+2)+1)`
-/

namespace A107755.P17763378006303998601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047238 (A005836 (n + 2) + 1).toNat

end

end A107755.P17763378006303998601

namespace A107755

/-- `A047238(A005836(n+2)+1)` -/
def P17763378006303998601.Spec : Prop :=
  ∀ n, P17763378006303998601.a n = A107755 (n + 1)

end A107755

/-! ## A107755.P8602648684815786768

`A005836(A181155(n+2))-1`
-/

namespace A107755.P8602648684815786768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A181155 (n + 2)).toNat - 1

end

end A107755.P8602648684815786768

namespace A107755

/-- `A005836(A181155(n+2))-1` -/
def P8602648684815786768.Spec : Prop :=
  ∀ n, P8602648684815786768.a n = A107755 (n + 1)

end A107755

/-! ## A107755.P13074073125760022112

`A107757(n+1)-A186032(n)`
-/

namespace A107755.P13074073125760022112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107757 (n + 1) - A186032 n

end

end A107755.P13074073125760022112

namespace A107755

/-- `A107757(n+1)-A186032(n)` -/
def P13074073125760022112.Spec : Prop :=
  ∀ n, P13074073125760022112.a n = A107755 (n + 1)

end A107755

/-! ## A107755.P8225778239858960303

`A005836(A000069(n+2)+1)-1`
-/

namespace A107755.P8225778239858960303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A000069 (n + 2) + 1).toNat - 1

end

end A107755.P8225778239858960303

namespace A107755

/-- `A005836(A000069(n+2)+1)-1` -/
def P8225778239858960303.Spec : Prop :=
  ∀ n, P8225778239858960303.a n = A107755 (n + 1)

end A107755

/-! ## A107755.P8956041411522460827

`A092436(n+1)+A089118(n+1)`
-/

namespace A107755.P8956041411522460827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092436 (n + 1) + A089118 (n + 1)

end

end A107755.P8956041411522460827

namespace A107755

/-- `A092436(n+1)+A089118(n+1)` -/
def P8956041411522460827.Spec : Prop :=
  ∀ n, P8956041411522460827.a n = A107755 (n + 1)

theorem P8956041411522460827.correct : P8956041411522460827.Spec := by
  intro n
  simp only [A107755, Nat.add_sub_cancel, A107755.P8956041411522460827.a, A107755.P8010610364266313592.a, A074938, A074938.P9120139472351872222.a, A089118, A089118.P9208626228526382448.a, A092436, A092436.P18053594016097437094.a, A010059, A010059.P6338678923093357896.a, A010060, A010060.P3080921269106500717.a, A081601, A081601.P7694742959722061994.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005836, A005836.P12367569128854000442.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A107755

/-! ## A107755.P711605238039541918

`A074939(n+1)-(A186032(n)+1)`
-/

namespace A107755.P711605238039541918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074939 (n + 1) - (A186032 n + 1)

end

end A107755.P711605238039541918

namespace A107755

/-- `A074939(n+1)-(A186032(n)+1)` -/
def P711605238039541918.Spec : Prop :=
  ∀ n, P711605238039541918.a n = A107755 (n + 1)

end A107755

/-! ## A107755.P1245088438160554337

`A081601(n+2)-A010060(n+1)`
-/

namespace A107755.P1245088438160554337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081601 (n + 2) - A010060 (n + 1)

end

end A107755.P1245088438160554337

namespace A107755

/-- `A081601(n+2)-A010060(n+1)` -/
def P1245088438160554337.Spec : Prop :=
  ∀ n, P1245088438160554337.a n = A107755 (n + 1)

end A107755

/-! ## A107755.P16663276986104827295

`A137821(n+1)+∑[A137822(n+1)]`
-/

namespace A107755.P16663276986104827295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137821 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107755.P16663276986104827295

namespace A107755

/-- `A137821(n+1)+∑[A137822(n+1)]` -/
def P16663276986104827295.Spec : Prop :=
  ∀ n, P16663276986104827295.a n = A107755 (n + 1)

end A107755

/-! ## A107755.P13147028422674025254

`A074939(n+1)+A106400(n+1)-1`
-/

namespace A107755.P13147028422674025254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074939 (n + 1) + (A106400 (n + 1) - 1)

end

end A107755.P13147028422674025254

namespace A107755

/-- `A074939(n+1)+A106400(n+1)-1` -/
def P13147028422674025254.Spec : Prop :=
  ∀ n, P13147028422674025254.a n = A107755 (n + 1)

end A107755

/-! ## A107755.P2791255789032843231

`A055246(n+2)-(A074939(n+1)+1)`
-/

namespace A107755.P2791255789032843231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055246 (n + 2) - (A074939 (n + 1) + 1)

end

end A107755.P2791255789032843231

namespace A107755

/-- `A055246(n+2)-(A074939(n+1)+1)` -/
def P2791255789032843231.Spec : Prop :=
  ∀ n, P2791255789032843231.a n = A107755 (n + 1)

end A107755

/-! ## A107755.P14056986435565004251

`A191107(n+2)-(A010060(n+1)+1)`
-/

namespace A107755.P14056986435565004251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191107 (n + 2) - (A010060 (n + 1) + 1)

end

end A107755.P14056986435565004251

namespace A107755

/-- `A191107(n+2)-(A010060(n+1)+1)` -/
def P14056986435565004251.Spec : Prop :=
  ∀ n, P14056986435565004251.a n = A107755 (n + 1)

end A107755

/-! ## A107755.P2750242144022297691

`A010059(n+1)+A191107(n+2)-2`
-/

namespace A107755.P2750242144022297691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (n + 1) + (A191107 (n + 2) - 2)

end

end A107755.P2750242144022297691

namespace A107755

/-- `A010059(n+1)+A191107(n+2)-2` -/
def P2750242144022297691.Spec : Prop :=
  ∀ n, P2750242144022297691.a n = A107755 (n + 1)

end A107755

/-! ## A107755.P13515078668727498149

`A074939(n+1)-2*A010060(n+1)`
-/

namespace A107755.P13515078668727498149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074939 (n + 1) - 2 * A010060 (n + 1)

end

end A107755.P13515078668727498149

namespace A107755

/-- `A074939(n+1)-2*A010060(n+1)` -/
def P13515078668727498149.Spec : Prop :=
  ∀ n, P13515078668727498149.a n = A107755 (n + 1)

end A107755

/-!
# A107756: Numbers k such that Sum_{j=1..k} Catalan(j) == 1 (mod 3).

The programs for A107756, the canonical program `A107756.P8154172557650536797` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107756 has offset 1).

The definition of A107756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107756.P12859043900138040107

`comp[∑[ceil(3^val(n+1, 2)/2)]-1]`
-/

namespace A107756.P12859043900138040107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A107756.P12859043900138040107

namespace A107756

/-- `comp[∑[ceil(3^val(n+1, 2)/2)]-1]` -/
def P12859043900138040107.Spec : Prop :=
  ∀ n, (P12859043900138040107.a n : ℤ) = A107756 (n + 1)

end A107756

/-! ## A107756.P8154172557650536797

`A074940(n+1)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A107756

/-- `A074940(n+1)-1` -/
def P8154172557650536797.Spec : Prop :=
  ∀ n, P8154172557650536797.a n = A107756 (n + 1)

theorem P8154172557650536797.correct : P8154172557650536797.Spec := by
  intro n
  simp only [A107756, Nat.add_sub_cancel]

end A107756

/-! ## A107756.P18340174244702729794

`A189822(n+1)-2`
-/

namespace A107756.P18340174244702729794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189822 (n + 1) - 2

end

end A107756.P18340174244702729794

namespace A107756

/-- `A189822(n+1)-2` -/
def P18340174244702729794.Spec : Prop :=
  ∀ n, P18340174244702729794.a n = A107756 (n + 1)

theorem P18340174244702729794.correct : P18340174244702729794.Spec := by
  intro n
  simp only [A107756, Nat.add_sub_cancel, A107756.P18340174244702729794.a, A107756.P8154172557650536797.a, A074940, A074940.P6538437615375467476.f1, A074940.P6538437615375467476.f2, A074940.P6538437615375467476.a, A189822, A189822.P9995875126507270326.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A107756

/-! ## A107756.P18023155183242162530

`eq[1, A189820(n+2)]`
-/

namespace A107756.P18023155183242162530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189820 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107756.P18023155183242162530

namespace A107756

/-- `eq[1, A189820(n+2)]` -/
def P18023155183242162530.Spec : Prop :=
  ∀ n, (P18023155183242162530.a n : ℤ) = A107756 (n + 1)

end A107756

/-! ## A107756.P790161369728547794

`lt[1, A273514(n+1)]`
-/

namespace A107756.P790161369728547794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273514 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A107756.P790161369728547794

namespace A107756

/-- `lt[1, A273514(n+1)]` -/
def P790161369728547794.Spec : Prop :=
  ∀ n, (P790161369728547794.a n : ℤ) = A107756 (n + 1)

end A107756

/-! ## A107756.P6276467031871589856

`lt[1, A273515(n+1)]`
-/

namespace A107756.P6276467031871589856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273515 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A107756.P6276467031871589856

namespace A107756

/-- `lt[1, A273515(n+1)]` -/
def P6276467031871589856.Spec : Prop :=
  ∀ n, (P6276467031871589856.a n : ℤ) = A107756 (n + 1)

end A107756

/-! ## A107756.P2853794649323754226

`lt[1, A290092(n+1)]`
-/

namespace A107756.P2853794649323754226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290092 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A107756.P2853794649323754226

namespace A107756

/-- `lt[1, A290092(n+1)]` -/
def P2853794649323754226.Spec : Prop :=
  ∀ n, (P2853794649323754226.a n : ℤ) = A107756 (n + 1)

end A107756

/-! ## A107756.P5667158122638953261

`lt[1, A300222(n+1)]`
-/

namespace A107756.P5667158122638953261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A107756.P5667158122638953261

namespace A107756

/-- `lt[1, A300222(n+1)]` -/
def P5667158122638953261.Spec : Prop :=
  ∀ n, (P5667158122638953261.a n : ℤ) = A107756 (n + 1)

end A107756

/-! ## A107756.P4146059572968862298

`∪[A089119(n+1), A016777(n)]`
-/

namespace A107756.P4146059572968862298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107756.P4146059572968862298

namespace A107756

/-- `∪[A089119(n+1), A016777(n)]` -/
def P4146059572968862298.Spec : Prop :=
  ∀ n, (P4146059572968862298.a n : ℤ) = A107756 (n + 1)

end A107756

/-! ## A107756.P14277856844272612625

`∪[A111018(n+1), A016777(n)]`
-/

namespace A107756.P14277856844272612625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107756.P14277856844272612625

namespace A107756

/-- `∪[A111018(n+1), A016777(n)]` -/
def P14277856844272612625.Spec : Prop :=
  ∀ n, (P14277856844272612625.a n : ℤ) = A107756 (n + 1)

end A107756

/-! ## A107756.P74527691497776213

`∪[A089119(n+1), A080723(n)]`
-/

namespace A107756.P74527691497776213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080723 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107756.P74527691497776213

namespace A107756

/-- `∪[A089119(n+1), A080723(n)]` -/
def P74527691497776213.Spec : Prop :=
  ∀ n, (P74527691497776213.a n : ℤ) = A107756 (n + 1)

end A107756

/-! ## A107756.P5050200341071926560

`∪[A111018(n+1), A080723(n)]`
-/

namespace A107756.P5050200341071926560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080723 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107756.P5050200341071926560

namespace A107756

/-- `∪[A111018(n+1), A080723(n)]` -/
def P5050200341071926560.Spec : Prop :=
  ∀ n, (P5050200341071926560.a n : ℤ) = A107756 (n + 1)

end A107756

/-! ## A107756.P926875834081361414

`∪[A087444(n+1), A111018(n+1)]`
-/

namespace A107756.P926875834081361414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107756.P926875834081361414

namespace A107756

/-- `∪[A087444(n+1), A111018(n+1)]` -/
def P926875834081361414.Spec : Prop :=
  ∀ n, (P926875834081361414.a n : ℤ) = A107756 (n + 1)

end A107756

/-! ## A107756.P9110743328805757317

`∪[A111018(n+1), A191107(n+1)]`
-/

namespace A107756.P9110743328805757317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107756.P9110743328805757317

namespace A107756

/-- `∪[A111018(n+1), A191107(n+1)]` -/
def P9110743328805757317.Spec : Prop :=
  ∀ n, (P9110743328805757317.a n : ℤ) = A107756 (n + 1)

end A107756

/-! ## A107756.P10607369724297338508

`∪[A089119(n+1), A301451(n+1)]`
-/

namespace A107756.P10607369724297338508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107756.P10607369724297338508

namespace A107756

/-- `∪[A089119(n+1), A301451(n+1)]` -/
def P10607369724297338508.Spec : Prop :=
  ∀ n, (P10607369724297338508.a n : ℤ) = A107756 (n + 1)

end A107756

/-! ## A107756.P10627936065810376381

`eq[1, A137993(n)]+1`
-/

namespace A107756.P10627936065810376381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137993 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107756.P10627936065810376381

namespace A107756

/-- `eq[1, A137993(n)]+1` -/
def P10627936065810376381.Spec : Prop :=
  ∀ n, (P10627936065810376381.a n : ℤ) = A107756 (n + 1)

end A107756

/-! ## A107756.P1371728084461681872

`lt[1, A137992(n)]`
-/

namespace A107756.P1371728084461681872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137992 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A107756.P1371728084461681872

namespace A107756

/-- `lt[1, A137992(n)]` -/
def P1371728084461681872.Spec : Prop :=
  ∀ n, (P1371728084461681872.a n : ℤ) = A107756 (n + 1)

end A107756

/-! ## A107756.P7726491309615796218

`eq[0, A039966(n+1)]`
-/

namespace A107756.P7726491309615796218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107756.P7726491309615796218

namespace A107756

/-- `eq[0, A039966(n+1)]` -/
def P7726491309615796218.Spec : Prop :=
  ∀ n, (P7726491309615796218.a n : ℤ) = A107756 (n + 1)

end A107756

/-! ## A107756.P6206415112254482633

`eq[2, A190592(n+1)]`
-/

namespace A107756.P6206415112254482633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190592 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107756.P6206415112254482633

namespace A107756

/-- `eq[2, A190592(n+1)]` -/
def P6206415112254482633.Spec : Prop :=
  ∀ n, (P6206415112254482633.a n : ℤ) = A107756 (n + 1)

end A107756

/-!
# A107757: Numbers k such that Sum_{j=1..k} Catalan(j) == 2 (mod 3).

The programs for A107757, the canonical program `A107757.P7873322615201436145` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107757 has offset 1).

The definition of A107757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107757.P7873322615201436145

`or(1, A089118(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A107757

/-- `or(1, A089118(n+1))` -/
def P7873322615201436145.Spec : Prop :=
  ∀ n, P7873322615201436145.a n = A107757 (n + 1)

theorem P7873322615201436145.correct : P7873322615201436145.Spec := by
  intro n
  simp only [A107757, Nat.add_sub_cancel]

end A107757

/-! ## A107757.P17770984632418862943

`A089118(n+1)+A010060(n+1)`
-/

namespace A107757.P17770984632418862943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089118 (n + 1) + A010060 (n + 1)

end

end A107757.P17770984632418862943

namespace A107757

/-- `A089118(n+1)+A010060(n+1)` -/
def P17770984632418862943.Spec : Prop :=
  ∀ n, P17770984632418862943.a n = A107757 (n + 1)

end A107757

/-! ## A107757.P17412331859563760981

`A074938(n+1)-(A010059(n+1)+A010059(n+1))`
-/

namespace A107757.P17412331859563760981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 (n + 1) - (A010059 (n + 1) + A010059 (n + 1))

end

end A107757.P17412331859563760981

namespace A107757

/-- `A074938(n+1)-(A010059(n+1)+A010059(n+1))` -/
def P17412331859563760981.Spec : Prop :=
  ∀ n, P17412331859563760981.a n = A107757 (n + 1)

end A107757

/-! ## A107757.P8847878110535996599

`A074939(A008619(2*n))-1`
-/

namespace A107757.P8847878110535996599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074939 (A008619 (2 * n)).toNat - 1

end

end A107757.P8847878110535996599

namespace A107757

/-- `A074939(A008619(2*n))-1` -/
def P8847878110535996599.Spec : Prop :=
  ∀ n, P8847878110535996599.a n = A107757 (n + 1)

end A107757

/-! ## A107757.P2249771149158103160

`A047270(A005836(n+2))`
-/

namespace A107757.P2249771149158103160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (A005836 (n + 2)).toNat

end

end A107757.P2249771149158103160

namespace A107757

/-- `A047270(A005836(n+2))` -/
def P2249771149158103160.Spec : Prop :=
  ∀ n, P2249771149158103160.a n = A107757 (n + 1)

end A107757

/-! ## A107757.P15223835276615553975

`∩[A047270(n+1), A370662(n+1)]`
-/

namespace A107757.P15223835276615553975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107757.P15223835276615553975

namespace A107757

/-- `∩[A047270(n+1), A370662(n+1)]` -/
def P15223835276615553975.Spec : Prop :=
  ∀ n, (P15223835276615553975.a n : ℤ) = A107757 (n + 1)

end A107757

/-! ## A107757.P16742657695335439836

`A186032(n)+A107755(n+1)`
-/

namespace A107757.P16742657695335439836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186032 n + A107755 (n + 1)

end

end A107757.P16742657695335439836

namespace A107757

/-- `A186032(n)+A107755(n+1)` -/
def P16742657695335439836.Spec : Prop :=
  ∀ n, P16742657695335439836.a n = A107757 (n + 1)

end A107757

/-! ## A107757.P16364046460903464860

`A047249(A137821(n+1))`
-/

namespace A107757.P16364046460903464860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047249 (A137821 (n + 1)).toNat

end

end A107757.P16364046460903464860

namespace A107757

/-- `A047249(A137821(n+1))` -/
def P16364046460903464860.Spec : Prop :=
  ∀ n, P16364046460903464860.a n = A107757 (n + 1)

end A107757

/-! ## A107757.P403705671693500292

`A074939(n+1)-A006996(A074939(n))`
-/

namespace A107757.P403705671693500292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074939 (n + 1) - A006996 (A074939 n).toNat

end

end A107757.P403705671693500292

namespace A107757

/-- `A074939(n+1)-A006996(A074939(n))` -/
def P403705671693500292.Spec : Prop :=
  ∀ n, P403705671693500292.a n = A107757 (n + 1)

end A107757

/-! ## A107757.P17504137439613238632

`eq[0, A137992(n)]`
-/

namespace A107757.P17504137439613238632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137992 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107757.P17504137439613238632

namespace A107757

/-- `eq[0, A137992(n)]` -/
def P17504137439613238632.Spec : Prop :=
  ∀ n, (P17504137439613238632.a n : ℤ) = A107757 (n + 1)

end A107757

/-! ## A107757.P13672327829490673161

`eq[1, A006996(n+1)]`
-/

namespace A107757.P13672327829490673161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006996 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107757.P13672327829490673161

namespace A107757

/-- `eq[1, A006996(n+1)]` -/
def P13672327829490673161.Spec : Prop :=
  ∀ n, (P13672327829490673161.a n : ℤ) = A107757 (n + 1)

end A107757

/-! ## A107757.P18139332079993014319

`eq[1, A117942(n+1)]`
-/

namespace A107757.P18139332079993014319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117942 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107757.P18139332079993014319

namespace A107757

/-- `eq[1, A117942(n+1)]` -/
def P18139332079993014319.Spec : Prop :=
  ∀ n, (P18139332079993014319.a n : ℤ) = A107757 (n + 1)

end A107757

/-! ## A107757.P12049249575907323362

`eq[2, A137993(n)]+1`
-/

namespace A107757.P12049249575907323362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137993 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107757.P12049249575907323362

namespace A107757

/-- `eq[2, A137993(n)]+1` -/
def P12049249575907323362.Spec : Prop :=
  ∀ n, (P12049249575907323362.a n : ℤ) = A107757 (n + 1)

end A107757

/-! ## A107757.P10638632448743369299

`record[A167877(2*(n+2))]-1`
-/

namespace A107757.P10638632448743369299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167877 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A107757.P10638632448743369299

namespace A107757

/-- `record[A167877(2*(n+2))]-1` -/
def P10638632448743369299.Spec : Prop :=
  ∀ n, P10638632448743369299.a n = A107757 (n + 1)

end A107757

/-! ## A107757.P5212424341642156059

`A014681(A074939(n+1))`
-/

namespace A107757.P5212424341642156059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A074939 (n + 1)).toNat

end

end A107757.P5212424341642156059

namespace A107757

/-- `A014681(A074939(n+1))` -/
def P5212424341642156059.Spec : Prop :=
  ∀ n, P5212424341642156059.a n = A107757 (n + 1)

end A107757

/-! ## A107757.P3746405560250351627

`A074066(A074938(n+1))`
-/

namespace A107757.P3746405560250351627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074066 (A074938 (n + 1)).toNat

end

end A107757.P3746405560250351627

namespace A107757

/-- `A074066(A074938(n+1))` -/
def P3746405560250351627.Spec : Prop :=
  ∀ n, P3746405560250351627.a n = A107757 (n + 1)

end A107757

/-! ## A107757.P5734279209760547681

`A080782(A107755(n+1))`
-/

namespace A107757.P5734279209760547681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A107755 (n + 1)).toNat

end

end A107757.P5734279209760547681

namespace A107757

/-- `A080782(A107755(n+1))` -/
def P5734279209760547681.Spec : Prop :=
  ∀ n, P5734279209760547681.a n = A107757 (n + 1)

end A107757

/-! ## A107757.P17306350128992541377

`A109613(A089118(n+1))`
-/

namespace A107757.P17306350128992541377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A089118 (n + 1)).toNat

end

end A107757.P17306350128992541377

namespace A107757

/-- `A109613(A089118(n+1))` -/
def P17306350128992541377.Spec : Prop :=
  ∀ n, P17306350128992541377.a n = A107757 (n + 1)

end A107757

/-! ## A107757.P12671060343354370752

`A047247(A005823(n+2))`
-/

namespace A107757.P12671060343354370752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047247 (A005823 (n + 2)).toNat

end

end A107757.P12671060343354370752

namespace A107757

/-- `A047247(A005823(n+2))` -/
def P12671060343354370752.Spec : Prop :=
  ∀ n, P12671060343354370752.a n = A107757 (n + 1)

end A107757

/-!
# A107758: (+2)Sigma(n): If n = Product p_i^r_i then a(n) = Product (2 + Sum p_i^s_i, s_i=1 to r_i) = Product (1 + (p_i^(r_i+1)-1)/(p_i-1)), a(1) = 1.

The programs for A107758, the canonical program `A107758.P5135231134874170272` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107758 has offset 1).

The definition of A107758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107758.P5135231134874170272

`∑{d}[n+1, A363289(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A107758

/-- `∑{d}[n+1, A363289(#)]` -/
def P5135231134874170272.Spec : Prop :=
  ∀ n, P5135231134874170272.a n = A107758 (n + 1)

theorem P5135231134874170272.correct : P5135231134874170272.Spec := by
  intro n
  simp only [A107758, Nat.add_sub_cancel]

end A107758

/-! ## A107758.P3481866664929287252

`∑{d}[A064549(n+1), #/A007947(#)]`
-/

namespace A107758.P3481866664929287252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (A007947 d : ℚ)

end

end A107758.P3481866664929287252

namespace A107758

/-- `∑{d}[A064549(n+1), #/A007947(#)]` -/
def P3481866664929287252.Spec : Prop :=
  ∀ n, P3481866664929287252.a n = (A107758 (n + 1) : ℚ)

end A107758

/-! ## A107758.P3175193574239842154

`∑{d}[(n+1)*A007947(n+1), #/A007947(#)]`
-/

namespace A107758.P3175193574239842154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007947 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (A007947 d : ℚ)

end

end A107758.P3175193574239842154

namespace A107758

/-- `∑{d}[(n+1)*A007947(n+1), #/A007947(#)]` -/
def P3175193574239842154.Spec : Prop :=
  ∀ n, P3175193574239842154.a n = (A107758 (n + 1) : ℚ)

end A107758

/-! ## A107758.P18392271446203058234

`A326306((n+1)*∏{p}[n+1, #])`
-/

namespace A107758.P18392271446203058234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326306 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A107758.P18392271446203058234

namespace A107758

/-- `A326306((n+1)*∏{p}[n+1, #])` -/
def P18392271446203058234.Spec : Prop :=
  ∀ n, P18392271446203058234.a n = A107758 (n + 1)

end A107758

/-! ## A107758.P4250909881695415464

`∑{d}[(n+1)*∏{p}[n+1, #], A003557(#)]`
-/

namespace A107758.P4250909881695415464
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003557 d

end

end A107758.P4250909881695415464

namespace A107758

/-- `∑{d}[(n+1)*∏{p}[n+1, #], A003557(#)]` -/
def P4250909881695415464.Spec : Prop :=
  ∀ n, P4250909881695415464.a n = A107758 (n + 1)

end A107758

/-! ## A107758.P4466808973286807577

`A326306(A064549(n+1))`
-/

namespace A107758.P4466808973286807577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326306 (A064549 (n + 1)).toNat

end

end A107758.P4466808973286807577

namespace A107758

/-- `A326306(A064549(n+1))` -/
def P4466808973286807577.Spec : Prop :=
  ∀ n, P4466808973286807577.a n = A107758 (n + 1)

end A107758

/-! ## A107758.P3322625196025577161

`∑{d}[A064549(n+1), A003557(#)]`
-/

namespace A107758.P3322625196025577161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003557 d

end

end A107758.P3322625196025577161

namespace A107758

/-- `∑{d}[A064549(n+1), A003557(#)]` -/
def P3322625196025577161.Spec : Prop :=
  ∀ n, P3322625196025577161.a n = A107758 (n + 1)

end A107758

/-! ## A107758.P10239529185624229992

`A326306((n+1)*A007947(n+1))`
-/

namespace A107758.P10239529185624229992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326306 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A107758.P10239529185624229992

namespace A107758

/-- `A326306((n+1)*A007947(n+1))` -/
def P10239529185624229992.Spec : Prop :=
  ∀ n, P10239529185624229992.a n = A107758 (n + 1)

end A107758

/-! ## A107758.P11106424244949100476

`∑{d}[(n+1)*A007947(n+1), A003557(#)]`
-/

namespace A107758.P11106424244949100476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003557 d

end

end A107758.P11106424244949100476

namespace A107758

/-- `∑{d}[(n+1)*A007947(n+1), A003557(#)]` -/
def P11106424244949100476.Spec : Prop :=
  ∀ n, P11106424244949100476.a n = A107758 (n + 1)

end A107758

/-! ## A107758.P7975280781370018234

`∑{d}[(n+1)²/A003557(n+1), A003557(#)]`
-/

namespace A107758.P7975280781370018234
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A003557 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A003557 d

end

end A107758.P7975280781370018234

namespace A107758

/-- `∑{d}[(n+1)²/A003557(n+1), A003557(#)]` -/
def P7975280781370018234.Spec : Prop :=
  ∀ n, P7975280781370018234.a n = A107758 (n + 1)

end A107758

/-! ## A107758.P2172694016000405817

`∑{d}[A003557(n+1)*A078615(n+1), A003557(#)]`
-/

namespace A107758.P2172694016000405817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A078615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003557 d

end

end A107758.P2172694016000405817

namespace A107758

/-- `∑{d}[A003557(n+1)*A078615(n+1), A003557(#)]` -/
def P2172694016000405817.Spec : Prop :=
  ∀ n, P2172694016000405817.a n = A107758 (n + 1)

end A107758

/-!
# A107759: a(n) = (+2)UnitarySigma(n): if n = Product p_i^r_i then a(n) = Product (2 + p_i^r_i).

The programs for A107759, the canonical program `A107759.P5539761098873370948` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107759 has offset 1).

The definition of A107759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107759.P5539761098873370948

`∏{p}[n+1, #^val(n+1, #)+2]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107759

/-- `∏{p}[n+1, #^val(n+1, #)+2]` -/
def P5539761098873370948.Spec : Prop :=
  ∀ n, (P5539761098873370948.a n : ℤ) = A107759 (n + 1)

theorem P5539761098873370948.correct : P5539761098873370948.Spec := by
  intro n
  simp only [A107759, Nat.add_sub_cancel]

end A107759

/-! ## A107759.P8014077058315912597

`∏{p}[n+1, gcd(n+1, #^n)+2]`
-/

namespace A107759.P8014077058315912597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.gcd (n + 1) (p ^ n) + 2)

end

end A107759.P8014077058315912597

namespace A107759

/-- `∏{p}[n+1, gcd(n+1, #^n)+2]` -/
def P8014077058315912597.Spec : Prop :=
  ∀ n, (P8014077058315912597.a n : ℤ) = A107759 (n + 1)

end A107759

/-!
# A107760: Expansion of eta(q^3) * eta(q^2)^6 / (eta(q)^3 * eta(q^6)^2) in powers of q.

The programs for A107760, there is no canonical definition to state claims against.
-/

/-! ## A107760.P9477952646097082634

`abs(A132973(n))`
-/

namespace A107760.P9477952646097082634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132973 n|

end

end A107760.P9477952646097082634

/-! ## A107760.P11060479047152468188

`A000196(A132973(n)²)`
-/

namespace A107760.P11060479047152468188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A132973 n ^ 2).toNat

end

end A107760.P11060479047152468188

/-! ## A107760.P15998433454667080642

`A217221(n)+A132973(n)`
-/

namespace A107760.P15998433454667080642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217221 n + A132973 n

end

end A107760.P15998433454667080642

/-! ## A107760.P14569729594535269326

`A033999(n)*A132973(n)`
-/

namespace A107760.P14569729594535269326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A132973 n

end

end A107760.P14569729594535269326

/-! ## A107760.P15540586999301028324

`A010684(n)*A253626(n)`
-/

namespace A107760.P15540586999301028324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A253626 n

end

end A107760.P15540586999301028324

/-! ## A107760.P7739795423218268657

`gcd(A000038(n), A132973(n))`
-/

namespace A107760.P7739795423218268657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A132973 n)

end

end A107760.P7739795423218268657

/-! ## A107760.P78353367960405869

`lcm(A010684(n), A132973(n))`
-/

namespace A107760.P78353367960405869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010684 n) (A132973 n)

end

end A107760.P78353367960405869

/-! ## A107760.P7823742971578075737

`A073575(n+1)*A253626(n)`
-/

namespace A107760.P7823742971578075737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073575 (n + 1) * A253626 n

end

end A107760.P7823742971578075737

/-! ## A107760.P8274773647323130041

`(A253623(n)+A033716(n))/2`
-/

namespace A107760.P8274773647323130041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253623 n + A033716 n : ℚ) / 2

end

end A107760.P8274773647323130041

/-! ## A107760.P17665127099676621802

`(2-A033999(n))*A253626(n)`
-/

namespace A107760.P17665127099676621802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A033999 n) * A253626 n

end

end A107760.P17665127099676621802

/-! ## A107760.P10998976847222761039

`2*A253626(n)-A253625(n)`
-/

namespace A107760.P10998976847222761039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253626 n - A253625 n

end

end A107760.P10998976847222761039

/-! ## A107760.P17502192020757340568

`(2-A073575(n+1))*A132973(n)`
-/

namespace A107760.P17502192020757340568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A073575 (n + 1)) * A132973 n

end

end A107760.P17502192020757340568

/-! ## A107760.P12914248974400907659

`A001281(A033716(2*n)+A033716(4*n))`
-/

namespace A107760.P12914248974400907659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A033716 (2 * n) + A033716 (4 * n)).toNat

end

end A107760.P12914248974400907659

/-! ## A107760.P4807534233861412831

`A132973(lcm(2, n))`
-/

namespace A107760.P4807534233861412831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132973 (Nat.lcm 2 n)

end

end A107760.P4807534233861412831

/-! ## A107760.P4033371445653578616

`A132973(A109043(n))`
-/

namespace A107760.P4033371445653578616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132973 (A109043 n).toNat

end

end A107760.P4033371445653578616

/-! ## A107760.P957631642402257351

`(A244339(2*n)+A004016(2*n))/2`
-/

namespace A107760.P957631642402257351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244339 (2 * n) + A004016 (2 * n) : ℚ) / 2

end

end A107760.P957631642402257351

/-! ## A107760.P15525849657237094411

`A004525(A004016(2*n)+A004016(n))`
-/

namespace A107760.P15525849657237094411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004016 (2 * n) + A004016 n).toNat

end

end A107760.P15525849657237094411

/-! ## A107760.P14500050696049819888

`A026741(A004016(2*n)+A004016(n))`
-/

namespace A107760.P14500050696049819888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A004016 (2 * n) + A004016 n).toNat

end

end A107760.P14500050696049819888

/-! ## A107760.P3061764827144498853

`(A122859(A064680(n))+A122859(n))/2`
-/

namespace A107760.P3061764827144498853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122859 (A064680 n).toNat + A122859 n : ℚ) / 2

end

end A107760.P3061764827144498853

/-! ## A107760.P731745633606935282

`A132973(2*n)`
-/

namespace A107760.P731745633606935282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132973 (2 * n)

end

end A107760.P731745633606935282

/-!
# A107761: Number of permutations of (1,3,5,7,9,...,2n-1) where every adjacent pair in the permutation are coprime.

The programs for A107761, there is no canonical definition to state claims against.
-/

/-! ## A107761.P16795008767434081367

`A256450(Δ[n!])-2*and(-8, n!)`
-/

namespace A107761.P16795008767434081367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256450 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2 * Int.land (-8) (Nat.factorial n : ℤ)

end

end A107761.P16795008767434081367

/-! ## A107761.P3945029412660961178

`A028310(A000142(n)*A262519(n))`
-/

namespace A107761.P3945029412660961178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A000142 n * A262519 n).toNat

end

end A107761.P3945029412660961178

/-! ## A107761.P2596008962734519246

`A000142(n)*A078570(A000142(n+1))`
-/

namespace A107761.P2596008962734519246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A078570 (A000142 (n + 1)).toNat

end

end A107761.P2596008962734519246

/-!
# A107762: Number of permutations of (1,3,5,7,9,...,2n-1) in which every pair of adjacent numbers as well as the first and the last entries are relatively prime.

The programs for A107762, there is no canonical definition to state claims against.
-/

/-! ## A107762.P1816023025550794630

`(n+1)*A107763(n+1)`
-/

namespace A107762.P1816023025550794630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A107763 (n + 1)

end

end A107762.P1816023025550794630

/-! ## A107762.P8826826450384260920

`A107763(n+1)*A348553(n)`
-/

namespace A107762.P8826826450384260920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107763 (n + 1) * A348553 n

end

end A107762.P8826826450384260920

/-! ## A107762.P14735886938653713946

`A107763(A131732(2*n))*A131732(2*n)`
-/

namespace A107762.P14735886938653713946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107763 (A131732 (2 * n)).toNat * A131732 (2 * n)

end

end A107762.P14735886938653713946

/-!
# A107763: Number of ways to arrange the numbers (1,3,5,7,9,...,2n-1) in a circle such that every two adjacent numbers are relatively prime.

The programs for A107763, there is no canonical definition to state claims against.
-/

/-! ## A107763.P11660002453095215806

`A107762(n+1)/(n+1)`
-/

namespace A107763.P11660002453095215806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107762 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A107763.P11660002453095215806

/-! ## A107763.P10110549961919147190

`A163370(A005177(n)*A209383(n+1))`
-/

namespace A107763.P10110549961919147190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163370 (A005177 n * A209383 (n + 1)).toNat

end

end A107763.P10110549961919147190

/-! ## A107763.P7560708759544402203

`A234517(a(n-2)+2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A107763.P7560708759544402203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A234517 (a (n - 2) + 2).toNat

end

end A107763.P7560708759544402203

/-!
# A107764: Numbers of the form (8^i)*(13^j), with i, j >= 0.

The programs for A107764, there is no canonical definition to state claims against.
-/

/-! ## A107764.P6645064569097372289

`A235200(A036565(n))*A262616(n)`
-/

namespace A107764.P6645064569097372289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235200 (A036565 n).toNat * A262616 n

end

end A107764.P6645064569097372289

/-! ## A107764.P17140998515668293074

`A130321(n)²*A235200(A036565(n))`
-/

namespace A107764.P17140998515668293074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A235200 (A036565 n).toNat

end

end A107764.P17140998515668293074

/-! ## A107764.P5483149475663604733

`A000079(A025581(n))²*A235200(A036565(n))`
-/

namespace A107764.P5483149475663604733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat ^ 2 * A235200 (A036565 n).toNat

end

end A107764.P5483149475663604733

/-! ## A107764.P18397108931616077904

`A332213(A107788(n+1))`
-/

namespace A107764.P18397108931616077904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (A107788 (n + 1)).toNat

end

end A107764.P18397108931616077904

/-! ## A107764.P11446951199414523262

`∩[A060754(n+1), A107326(n+1)]`
-/

namespace A107764.P11446951199414523262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107764.P11446951199414523262

/-!
# A107765: Number of nonisomorphic self-dual monotone Boolean functions of n variables (where the result depends on all n variables).

The programs for A107765, there is no canonical definition to state claims against.
-/

/-! ## A107765.P6546394819780856493

`Δ[A008840(n)]`
-/

namespace A107765.P6546394819780856493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107765.P6546394819780856493

/-! ## A107765.P13653213351334862755

`A214429(round(ϕ*a(n-1))+1)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A107765.P13653213351334862755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n a =>
  A214429 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)) + 1).toNat

end

end A107765.P13653213351334862755

/-! ## A107765.P11041379039365227779

`A000700(∑[A148014(n)])`
-/

namespace A107765.P11041379039365227779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A107765.P11041379039365227779

/-!
# A107766: Number of self-dual monotonic Boolean functions on n variables (where the result depends on all n variables).

The programs for A107766, there is no canonical definition to state claims against.
-/

/-! ## A107766.P8057696656706819747

`A305844(n)-a(n-1)` with `a(0)=1`
-/

namespace A107766.P8057696656706819747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A305844 n - a (n - 1)

end

end A107766.P8057696656706819747

/-! ## A107766.P15147888260432777983

`A105662(xor(2, n^(n+1)+1-(n+1)^n))-a(n-1)` with `a(0)=1`
-/

namespace A107766.P15147888260432777983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A105662 (Int.xor 2 ((n ^ (n + 1) : ℤ) + (1 - ((n + 1) ^ n : ℤ)))).toNat - a (n - 1)

end

end A107766.P15147888260432777983

/-!
# A107767: a(n) = (1 + 3^n - 2*3^(n/2))/4 if n is even, (1 + 3^n - 4*3^((n-1)/2))/4 if n odd.

The programs for A107767, the canonical program `A107767.P7343257527621844528` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107767 has offset 1).

The definition of A107767 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107767.P7343257527621844528

`4*a(n-1)-12*a(n-3)+9*a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=16`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107767

/-- `4*a(n-1)-12*a(n-3)+9*a(n-4)` -/
def P7343257527621844528.Spec : Prop :=
  ∀ n, P7343257527621844528.a n = A107767 (n + 1)

theorem P7343257527621844528.correct : P7343257527621844528.Spec := by
  intro n
  simp only [A107767, Nat.add_sub_cancel]

end A107767

/-! ## A107767.P7340390648371216235

`∑[ogf(x/(1-3x-3x^2+9x^3))]`
-/

namespace A107767.P7340390648371216235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, -3, 9] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107767.P7340390648371216235

namespace A107767

/-- `∑[ogf(x/(1-3x-3x^2+9x^3))]` -/
def P7340390648371216235.Spec : Prop :=
  ∀ n, P7340390648371216235.a n = A107767 (n + 1)

end A107767

/-! ## A107767.P15513871819630132362

`∑[3*a(n-1)]+3*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A107767.P15513871819630132362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 * a (n - 2)

end

end A107767.P15513871819630132362

namespace A107767

/-- `∑[3*a(n-1)]+3*a(n-2)` -/
def P15513871819630132362.Spec : Prop :=
  ∀ n, (P15513871819630132362.a n : ℤ) = A107767 (n + 1)

end A107767

/-! ## A107767.P5563314991766275530

`(1/gcd(a(n-1), a(n-2))+3)*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A107767.P5563314991766275530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (1 / (Int.gcd (SequenceMachineLib.roundAway (a (n - 1))) (SequenceMachineLib.roundAway (a (n - 2))) : ℚ) + 3) * a (n - 1)

end

end A107767.P5563314991766275530

namespace A107767

/-- `(1/gcd(a(n-1), a(n-2))+3)*a(n-1)` -/
def P5563314991766275530.Spec : Prop :=
  ∀ n, P5563314991766275530.a n = (A107767 (n + 1) : ℚ)

end A107767

/-! ## A107767.P3359615008109981931

`∑[A167993(n+1)]`
-/

namespace A107767.P3359615008109981931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107767.P3359615008109981931

namespace A107767

/-- `∑[A167993(n+1)]` -/
def P3359615008109981931.Spec : Prop :=
  ∀ n, P3359615008109981931.a n = A107767 (n + 1)

end A107767

/-! ## A107767.P14219654023624571242

`∑[∑[A122006(n+1)]]`
-/

namespace A107767.P14219654023624571242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122006 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107767.P14219654023624571242

namespace A107767

/-- `∑[∑[A122006(n+1)]]` -/
def P14219654023624571242.Spec : Prop :=
  ∀ n, P14219654023624571242.a n = A107767 (n + 1)

end A107767

/-! ## A107767.P12217618661870077602

`∑[A032120(n)-A038754(n)]`
-/

namespace A107767.P12217618661870077602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032120 n - A038754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107767.P12217618661870077602

namespace A107767

/-- `∑[A032120(n)-A038754(n)]` -/
def P12217618661870077602.Spec : Prop :=
  ∀ n, P12217618661870077602.a n = A107767 (n + 1)

end A107767

/-! ## A107767.P8916583470486241089

`∑[Δ[A001444(n)]-A032120(n)]`
-/

namespace A107767.P8916583470486241089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001444 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A032120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107767.P8916583470486241089

namespace A107767

/-- `∑[Δ[A001444(n)]-A032120(n)]` -/
def P8916583470486241089.Spec : Prop :=
  ∀ n, P8916583470486241089.a n = A107767 (n + 1)

end A107767

/-! ## A107767.P5288119860496208016

`∑[∑[A182522(n)*A232801(n)]]`
-/

namespace A107767.P5288119860496208016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 n * A232801 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107767.P5288119860496208016

namespace A107767

/-- `∑[∑[A182522(n)*A232801(n)]]` -/
def P5288119860496208016.Spec : Prop :=
  ∀ n, P5288119860496208016.a n = A107767 (n + 1)

end A107767

/-! ## A107767.P8727877856882686369

`∑[A232801(n+1)*A232801(n)]`
-/

namespace A107767.P8727877856882686369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232801 (n + 1) * A232801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107767.P8727877856882686369

namespace A107767

/-- `∑[A232801(n+1)*A232801(n)]` -/
def P8727877856882686369.Spec : Prop :=
  ∀ n, P8727877856882686369.a n = A107767 (n + 1)

end A107767

/-! ## A107767.P10909481327897474624

`A007051(n+1)-A001998(n+1)`
-/

namespace A107767.P10909481327897474624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (n + 1) - A001998 (n + 1)

end

end A107767.P10909481327897474624

namespace A107767

/-- `A007051(n+1)-A001998(n+1)` -/
def P10909481327897474624.Spec : Prop :=
  ∀ n, P10909481327897474624.a n = A107767 (n + 1)

end A107767

/-! ## A107767.P7100359493868291872

`A001998(n+1)-A038754(n+1)`
-/

namespace A107767.P7100359493868291872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001998 (n + 1) - A038754 (n + 1)

end

end A107767.P7100359493868291872

namespace A107767

/-- `A001998(n+1)-A038754(n+1)` -/
def P7100359493868291872.Spec : Prop :=
  ∀ n, P7100359493868291872.a n = A107767 (n + 1)

end A107767

/-! ## A107767.P12720581737292596407

`A124302(n+2)-A001998(n+1)`
-/

namespace A107767.P12720581737292596407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 (n + 2) - A001998 (n + 1)

end

end A107767.P12720581737292596407

namespace A107767

/-- `A124302(n+2)-A001998(n+1)` -/
def P12720581737292596407.Spec : Prop :=
  ∀ n, P12720581737292596407.a n = A107767 (n + 1)

end A107767

/-! ## A107767.P8851144946547046107

`A001998(n+1)-A182522(n+2)`
-/

namespace A107767.P8851144946547046107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001998 (n + 1) - A182522 (n + 2)

end

end A107767.P8851144946547046107

namespace A107767

/-- `A001998(n+1)-A182522(n+2)` -/
def P8851144946547046107.Spec : Prop :=
  ∀ n, P8851144946547046107.a n = A107767 (n + 1)

end A107767

/-! ## A107767.P9398983293474970710

`(A007051(n+1)-A038754(n+1))/2`
-/

namespace A107767.P9398983293474970710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007051 (n + 1) - A038754 (n + 1) : ℚ) / 2

end

end A107767.P9398983293474970710

namespace A107767

/-- `(A007051(n+1)-A038754(n+1))/2` -/
def P9398983293474970710.Spec : Prop :=
  ∀ n, P9398983293474970710.a n = (A107767 (n + 1) : ℚ)

end A107767

/-! ## A107767.P10145316111455344543

`(A003462(n+1)-A062318(n+2))/2`
-/

namespace A107767.P10145316111455344543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003462 (n + 1) - A062318 (n + 2) : ℚ) / 2

end

end A107767.P10145316111455344543

namespace A107767

/-- `(A003462(n+1)-A062318(n+2))/2` -/
def P10145316111455344543.Spec : Prop :=
  ∀ n, P10145316111455344543.a n = (A107767 (n + 1) : ℚ)

end A107767

/-! ## A107767.P789054128717572496

`(A052993(2*n)-A062318(n+2))/2`
-/

namespace A107767.P789054128717572496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052993 (2 * n) - A062318 (n + 2) : ℚ) / 2

end

end A107767.P789054128717572496

namespace A107767

/-- `(A052993(2*n)-A062318(n+2))/2` -/
def P789054128717572496.Spec : Prop :=
  ∀ n, P789054128717572496.a n = (A107767 (n + 1) : ℚ)

end A107767

/-! ## A107767.P2134872433687312579

`record[∑[A140313(2*n+1)-A140313(n+1)]]`
-/

namespace A107767.P2134872433687312579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140313 (2 * n + 1) - A140313 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107767.P2134872433687312579

namespace A107767

/-- `record[∑[A140313(2*n+1)-A140313(n+1)]]` -/
def P2134872433687312579.Spec : Prop :=
  ∀ n, P2134872433687312579.a n = A107767 (n + 1)

end A107767

/-! ## A107767.P2394618404068491164

`∑[A115098(n)-A115098(A004526(n))]`
-/

namespace A107767.P2394618404068491164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n - A115098 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107767.P2394618404068491164

namespace A107767

/-- `∑[A115098(n)-A115098(A004526(n))]` -/
def P2394618404068491164.Spec : Prop :=
  ∀ n, P2394618404068491164.a n = A107767 (n + 1)

end A107767

/-! ## A107767.P9565952867764030872

`(A052993(n)-A254006(n))*A052993(n)`
-/

namespace A107767.P9565952867764030872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052993 n - A254006 n) * A052993 n

end

end A107767.P9565952867764030872

namespace A107767

/-- `(A052993(n)-A254006(n))*A052993(n)` -/
def P9565952867764030872.Spec : Prop :=
  ∀ n, P9565952867764030872.a n = A107767 (n + 1)

end A107767

/-!
# A107769: a(n) = (A001333(n+1) - 2*A005409(floor((n+3)/2)) - 1) / 4.

The programs for A107769, the canonical program `A107769.P12762071507558441473` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107769 has offset 0).

The definition of A107769 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107769.P12762071507558441473

`1/4*(A001333(n+2)-2*A000129(floor(n/2)+2)+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A107769

/-- `1/4*(A001333(n+2)-2*A000129(floor(n/2)+2)+1)` -/
def P12762071507558441473.Spec : Prop :=
  ∀ n, P12762071507558441473.a n = (A107769 n : ℚ)

end A107769

/-! ## A107769.P11942384664170443457

`1/8*(A002203(n+2)-4*A000129(floor(n/2)+2)+2)`
-/

namespace A107769.P11942384664170443457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 8 * (A002203 (n + 2) - 4 * A000129 (⌊(n : ℚ) / 2⌋ + 2).toNat + 2 : ℚ)

end

end A107769.P11942384664170443457

namespace A107769

/-- `1/8*(A002203(n+2)-4*A000129(floor(n/2)+2)+2)` -/
def P11942384664170443457.Spec : Prop :=
  ∀ n, P11942384664170443457.a n = (A107769 n : ℚ)

end A107769

/-! ## A107769.P11346130582916943889

`A193530(n+2)-Δ[A238375(n+1)]`
-/

namespace A107769.P11346130582916943889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193530 (n + 2) - (f1 (n + 1) - f1 n)

end

end A107769.P11346130582916943889

namespace A107769

/-- `A193530(n+2)-Δ[A238375(n+1)]` -/
def P11346130582916943889.Spec : Prop :=
  ∀ n, P11346130582916943889.a n = A107769 n

end A107769

/-! ## A107769.P7313704091259391639

`A089928(n)-A105635(A008619(n))`
-/

namespace A107769.P7313704091259391639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089928 n - A105635 (A008619 n).toNat

end

end A107769.P7313704091259391639

namespace A107769

/-- `A089928(n)-A105635(A008619(n))` -/
def P7313704091259391639.Spec : Prop :=
  ∀ n, P7313704091259391639.a n = A107769 n

end A107769

/-! ## A107769.P11868987547081119919

`∑[A116404(n)]-A105635(A008619(n))`
-/

namespace A107769.P11868987547081119919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116404 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A105635 (A008619 n).toNat

end

end A107769.P11868987547081119919

namespace A107769

/-- `∑[A116404(n)]-A105635(A008619(n))` -/
def P11868987547081119919.Spec : Prop :=
  ∀ n, P11868987547081119919.a n = A107769 n

end A107769

/-!
# A107770: Index of greater of twin primes in the primes.

The programs for A107770, the canonical program `A107770.P11208098202551847983` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107770 has offset 1).

The definition of A107770 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006512, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A107770.P17401578179323890031

`A029707(n+1)+1`
-/

namespace A107770.P17401578179323890031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1) + 1

end

end A107770.P17401578179323890031

namespace A107770

/-- `A029707(n+1)+1` -/
def P17401578179323890031.Spec : Prop :=
  ∀ n, P17401578179323890031.a n = A107770 (n + 1)

end A107770

/-! ## A107770.P11208098202551847983

`A000720(A006512(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A107770

/-- `A000720(A006512(n+1))` -/
def P11208098202551847983.Spec : Prop :=
  ∀ n, P11208098202551847983.a n = A107770 (n + 1)

theorem P11208098202551847983.correct : P11208098202551847983.Spec := by
  intro n
  simp only [A107770, Nat.add_sub_cancel]

end A107770

/-! ## A107770.P14585082361732854469

`A155752(n+1)+2`
-/

namespace A107770.P14585082361732854469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (n + 1) + 2

end

end A107770.P14585082361732854469

namespace A107770

/-- `A155752(n+1)+2` -/
def P14585082361732854469.Spec : Prop :=
  ∀ n, P14585082361732854469.a n = A107770 (n + 1)

end A107770

/-! ## A107770.P1712242152720869324

`∑[A242767(n+2)]+2`
-/

namespace A107770.P1712242152720869324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A107770.P1712242152720869324

namespace A107770

/-- `∑[A242767(n+2)]+2` -/
def P1712242152720869324.Spec : Prop :=
  ∀ n, P1712242152720869324.a n = A107770 (n + 1)

end A107770

/-! ## A107770.P2336448275875037899

`A027833(n)+a(n-1)` with `a(0)=3`
-/

namespace A107770.P2336448275875037899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A027833 n + a (n - 1)

end

end A107770.P2336448275875037899

namespace A107770

/-- `A027833(n)+a(n-1)` -/
def P2336448275875037899.Spec : Prop :=
  ∀ n, P2336448275875037899.a n = A107770 (n + 1)

end A107770

/-! ## A107770.P7122425533930942494

`A014574(n+1)-A169643(n+1)`
-/

namespace A107770.P7122425533930942494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) - A169643 (n + 1)

end

end A107770.P7122425533930942494

namespace A107770

/-- `A014574(n+1)-A169643(n+1)` -/
def P7122425533930942494.Spec : Prop :=
  ∀ n, P7122425533930942494.a n = A107770 (n + 1)

end A107770

/-! ## A107770.P3334486467632113256

`eq[2, A001223(n+1)]+2`
-/

namespace A107770.P3334486467632113256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A107770.P3334486467632113256

namespace A107770

/-- `eq[2, A001223(n+1)]+2` -/
def P3334486467632113256.Spec : Prop :=
  ∀ n, (P3334486467632113256.a n : ℤ) = A107770 (n + 1)

end A107770

/-! ## A107770.P745120032672976970

`A334142(A004277(n))+1`
-/

namespace A107770.P745120032672976970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (A004277 n).toNat + 1

end

end A107770.P745120032672976970

namespace A107770

/-- `A334142(A004277(n))+1` -/
def P745120032672976970.Spec : Prop :=
  ∀ n, P745120032672976970.a n = A107770 (n + 1)

end A107770

/-! ## A107770.P3469996570430053196

`A334142(A004280(n+2))`
-/

namespace A107770.P3469996570430053196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (A004280 (n + 2)).toNat

end

end A107770.P3469996570430053196

namespace A107770

/-- `A334142(A004280(n+2))` -/
def P3469996570430053196.Spec : Prop :=
  ∀ n, P3469996570430053196.a n = A107770 (n + 1)

end A107770

/-! ## A107770.P8653343225561097263

`A334142(2*n+1)+A122257(2*(n+1))`
-/

namespace A107770.P8653343225561097263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (2 * n + 1) + A122257 (2 * (n + 1))

end

end A107770.P8653343225561097263

namespace A107770

/-- `A334142(2*n+1)+A122257(2*(n+1))` -/
def P8653343225561097263.Spec : Prop :=
  ∀ n, P8653343225561097263.a n = A107770 (n + 1)

end A107770

/-! ## A107770.P17351825310053723369

`A334142(2*n+3)-A027833(n+1)`
-/

namespace A107770.P17351825310053723369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (2 * n + 3) - A027833 (n + 1)

end

end A107770.P17351825310053723369

namespace A107770

/-- `A334142(2*n+3)-A027833(n+1)` -/
def P17351825310053723369.Spec : Prop :=
  ∀ n, P17351825310053723369.a n = A107770 (n + 1)

end A107770

/-! ## A107770.P932071938076947112

`eq[2, A075526(n)]+1`
-/

namespace A107770.P932071938076947112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107770.P932071938076947112

namespace A107770

/-- `eq[2, A075526(n)]+1` -/
def P932071938076947112.Spec : Prop :=
  ∀ n, (P932071938076947112.a n : ℤ) = A107770 (n + 1)

end A107770

/-! ## A107770.P11816437766859795607

`eq[2, Δ[A028815(n)]]+1`
-/

namespace A107770.P11816437766859795607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107770.P11816437766859795607

namespace A107770

/-- `eq[2, Δ[A028815(n)]]+1` -/
def P11816437766859795607.Spec : Prop :=
  ∀ n, (P11816437766859795607.a n : ℤ) = A107770 (n + 1)

end A107770

/-! ## A107770.P2041738306203182182

`eq[2, Δ[A158611(n+1)]]`
-/

namespace A107770.P2041738306203182182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107770.P2041738306203182182

namespace A107770

/-- `eq[2, Δ[A158611(n+1)]]` -/
def P2041738306203182182.Spec : Prop :=
  ∀ n, (P2041738306203182182.a n : ℤ) = A107770 (n + 1)

end A107770

/-! ## A107770.P8459178469834075117

`eq[1, A062301(n+1)]+1`
-/

namespace A107770.P8459178469834075117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062301 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107770.P8459178469834075117

namespace A107770

/-- `eq[1, A062301(n+1)]+1` -/
def P8459178469834075117.Spec : Prop :=
  ∀ n, (P8459178469834075117.a n : ℤ) = A107770 (n + 1)

end A107770

/-! ## A107770.P13428987083689276869

`eq[1, A237260(n+1)]+1`
-/

namespace A107770.P13428987083689276869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107770.P13428987083689276869

namespace A107770

/-- `eq[1, A237260(n+1)]+1` -/
def P13428987083689276869.Spec : Prop :=
  ∀ n, (P13428987083689276869.a n : ℤ) = A107770 (n + 1)

end A107770

/-! ## A107770.P8429268496232780328

`eq[1, A046933(n+1)]+2`
-/

namespace A107770.P8429268496232780328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A107770.P8429268496232780328

namespace A107770

/-- `eq[1, A046933(n+1)]+2` -/
def P8429268496232780328.Spec : Prop :=
  ∀ n, (P8429268496232780328.a n : ℤ) = A107770 (n + 1)

end A107770

/-! ## A107770.P8916311111494446116

`eq[1, A074927(n+1)]+2`
-/

namespace A107770.P8916311111494446116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074927 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A107770.P8916311111494446116

namespace A107770

/-- `eq[1, A074927(n+1)]+2` -/
def P8916311111494446116.Spec : Prop :=
  ∀ n, (P8916311111494446116.a n : ℤ) = A107770 (n + 1)

end A107770

/-! ## A107770.P1130707705300422772

`eq[1, A083269(n+1)]+2`
-/

namespace A107770.P1130707705300422772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083269 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A107770.P1130707705300422772

namespace A107770

/-- `eq[1, A083269(n+1)]+2` -/
def P1130707705300422772.Spec : Prop :=
  ∀ n, (P1130707705300422772.a n : ℤ) = A107770 (n + 1)

end A107770

/-!
# A107771: Numbers n such that 2*n + 5 and 5*n + 2 are primes.

The programs for A107771, the canonical program `A107771.P11192892536720195870` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107771 has offset 1).

The definition of A107771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1918 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107771.P11192892536720195870

`∩[A089038(n+1), A111223(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A107771

/-- `∩[A089038(n+1), A111223(n+1)]` -/
def P11192892536720195870.Spec : Prop :=
  ∀ n, (P11192892536720195870.a n : ℤ) = A107771 (n + 1)

theorem P11192892536720195870.correct : P11192892536720195870.Spec := by
  intro n
  simp only [A107771, Nat.add_sub_cancel]

end A107771

/-! ## A107771.P4457274711237633401

`∩[A024895(n+1)-1, A089038(n+1)]`
-/

namespace A107771.P4457274711237633401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024895 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107771.P4457274711237633401

namespace A107771

/-- `∩[A024895(n+1)-1, A089038(n+1)]` -/
def P4457274711237633401.Spec : Prop :=
  ∀ n, (P4457274711237633401.a n : ℤ) = A107771 (n + 1)

end A107771

/-! ## A107771.P2619758318640941864

`∩[A161720(n+3)+1, A024895(n+1)-1]`
-/

namespace A107771.P2619758318640941864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 3) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024895 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107771.P2619758318640941864

namespace A107771

/-- `∩[A161720(n+3)+1, A024895(n+1)-1]` -/
def P2619758318640941864.Spec : Prop :=
  ∀ n, (P2619758318640941864.a n : ℤ) = A107771 (n + 1)

end A107771

/-! ## A107771.P11369228703432425476

`∩[A024895(n+1), A067076(n+1)]-1`
-/

namespace A107771.P11369228703432425476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A107771.P11369228703432425476

namespace A107771

/-- `∩[A024895(n+1), A067076(n+1)]-1` -/
def P11369228703432425476.Spec : Prop :=
  ∀ n, P11369228703432425476.a n = A107771 (n + 1)

end A107771

/-! ## A107771.P6312043660016024160

`∩[A005097(n+2)-2, A024895(n+1)-1]`
-/

namespace A107771.P6312043660016024160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024895 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107771.P6312043660016024160

namespace A107771

/-- `∩[A005097(n+2)-2, A024895(n+1)-1]` -/
def P6312043660016024160.Spec : Prop :=
  ∀ n, (P6312043660016024160.a n : ℤ) = A107771 (n + 1)

end A107771

/-! ## A107771.P6750131158898752676

`∩[A006254(n+2)-3, A024895(n+1)-1]`
-/

namespace A107771.P6750131158898752676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 2) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024895 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107771.P6750131158898752676

namespace A107771

/-- `∩[A006254(n+2)-3, A024895(n+1)-1]` -/
def P6750131158898752676.Spec : Prop :=
  ∀ n, (P6750131158898752676.a n : ℤ) = A107771 (n + 1)

end A107771

/-! ## A107771.P7838859042936233609

`∩[A089253(n+2)-5, A024895(n+1)-1]`
-/

namespace A107771.P7838859042936233609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 2) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024895 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107771.P7838859042936233609

namespace A107771

/-- `∩[A089253(n+2)-5, A024895(n+1)-1]` -/
def P7838859042936233609.Spec : Prop :=
  ∀ n, (P7838859042936233609.a n : ℤ) = A107771 (n + 1)

end A107771

/-! ## A107771.P691037056325796174

`A004483(∩[A006254(n+1)-2, A024895(n+1)])`
-/

namespace A107771.P691037056325796174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024895 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A107771.P691037056325796174

namespace A107771

/-- `A004483(∩[A006254(n+1)-2, A024895(n+1)])` -/
def P691037056325796174.Spec : Prop :=
  ∀ n, P691037056325796174.a n = A107771 (n + 1)

end A107771

/-! ## A107771.P6541710160117710138

`∩[A089253(n+2)-5, A004483(A024895(n+1))]`
-/

namespace A107771.P6541710160117710138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 2) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A024895 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107771.P6541710160117710138

namespace A107771

/-- `∩[A089253(n+2)-5, A004483(A024895(n+1))]` -/
def P6541710160117710138.Spec : Prop :=
  ∀ n, (P6541710160117710138.a n : ℤ) = A107771 (n + 1)

end A107771

/-! ## A107771.P17286107701912419025

`eq[A061358(5*n+4)², A033676(2*n+5)]`
-/

namespace A107771.P17286107701912419025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (5 * n + 4) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107771.P17286107701912419025

namespace A107771

/-- `eq[A061358(5*n+4)², A033676(2*n+5)]` -/
def P17286107701912419025.Spec : Prop :=
  ∀ n, (P17286107701912419025.a n : ℤ) = A107771 (n + 1)

end A107771

/-! ## A107771.P4462973942319008132

`eq[A003415(5*n+2), A181569(A181569(2*n+3))]`
-/

namespace A107771.P4462973942319008132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (5 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (A181569 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107771.P4462973942319008132

namespace A107771

/-- `eq[A003415(5*n+2), A181569(A181569(2*n+3))]` -/
def P4462973942319008132.Spec : Prop :=
  ∀ n, (P4462973942319008132.a n : ℤ) = A107771 (n + 1)

end A107771

/-! ## A107771.P4027412577924508052

`eq[A000032(A061358(5*n+4)), A010051(2*n+5)]`
-/

namespace A107771.P4027412577924508052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A061358 (5 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107771.P4027412577924508052

namespace A107771

/-- `eq[A000032(A061358(5*n+4)), A010051(2*n+5)]` -/
def P4027412577924508052.Spec : Prop :=
  ∀ n, (P4027412577924508052.a n : ℤ) = A107771 (n + 1)

end A107771

/-! ## A107771.P9795231812719845942

`eq[A033581(A061358(5*n+4)), A165827(2*n+5)]`
-/

namespace A107771.P9795231812719845942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 (A061358 (5 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165827 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107771.P9795231812719845942

namespace A107771

/-- `eq[A033581(A061358(5*n+4)), A165827(2*n+5)]` -/
def P9795231812719845942.Spec : Prop :=
  ∀ n, (P9795231812719845942.a n : ℤ) = A107771 (n + 1)

end A107771

/-! ## A107771.P15577329904673678304

`eq[A319700(2*n+5), A319700(A017317(n))]`
-/

namespace A107771.P15577329904673678304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319700 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319700 (A017317 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107771.P15577329904673678304

namespace A107771

/-- `eq[A319700(2*n+5), A319700(A017317(n))]` -/
def P15577329904673678304.Spec : Prop :=
  ∀ n, (P15577329904673678304.a n : ℤ) = A107771 (n + 1)

end A107771

/-!
# A107772: a(1)=1, a(n) = smallest integer not previously used which contains a digit from a(n-1).

The programs for A107772, there is no canonical definition to state claims against.
-/

/-! ## A107772.P6825135547391365787

`A107780(n+3)%A228264(n+3)`
-/

namespace A107772.P6825135547391365787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107780 (n + 3)) (A228264 (n + 3))

end

end A107772.P6825135547391365787

/-! ## A107772.P3316069666288640014

`A107780(n+3)+A007949(A103314(n))`
-/

namespace A107772.P3316069666288640014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107780 (n + 3) + A007949 (A103314 n).toNat

end

end A107772.P3316069666288640014

/-! ## A107772.P1924429720793222809

`A028234(A016116(n))*A107780(n+3)`
-/

namespace A107772.P1924429720793222809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A016116 n).toNat * A107780 (n + 3)

end

end A107772.P1924429720793222809

/-! ## A107772.P5659601761089190763

`A107780(n+3)*A184166(A016825(n))`
-/

namespace A107772.P5659601761089190763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107780 (n + 3) * A184166 (A016825 n).toNat

end

end A107772.P5659601761089190763

/-! ## A107772.P18283379410066184091

`A107780(n+3)+A000007(A104038(n+1))`
-/

namespace A107772.P18283379410066184091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107780 (n + 3) + A000007 (A104038 (n + 1)).toNat

end

end A107772.P18283379410066184091

/-!
# A107775: a(1)=4, a(n) = smallest integer not previously used which contains a digit from a(n-1).

The programs for A107775, there is no canonical definition to state claims against.
-/

/-! ## A107775.P1936794923388344089

`A004525(A107776(n+1)+A107774(n+1))`
-/

namespace A107775.P1936794923388344089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A107776 (n + 1) + A107774 (n + 1)).toNat

end

end A107775.P1936794923388344089

/-! ## A107775.P79977699106982343

`A159075(A028377(n))+A107776(n+1)`
-/

namespace A107775.P79977699106982343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (A028377 n).toNat + A107776 (n + 1)

end

end A107775.P79977699106982343

/-! ## A107775.P2856465101982556642

`A159075(A056040(n))+A107776(n+1)`
-/

namespace A107775.P2856465101982556642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (A056040 n).toNat + A107776 (n + 1)

end

end A107775.P2856465101982556642

/-! ## A107775.P2176652774187746146

`A159075(A301747(n))+A107776(n+1)`
-/

namespace A107775.P2176652774187746146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (A301747 n).toNat + A107776 (n + 1)

end

end A107775.P2176652774187746146

/-! ## A107775.P245790073144968890

`A107776(n+1)-A121373(A002478(n))`
-/

namespace A107775.P245790073144968890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107776 (n + 1) - A121373 (A002478 n).toNat

end

end A107775.P245790073144968890

/-!
# A107776: a(1)=5, a(n) = smallest integer not previously used which contains a digit from a(n-1).

The programs for A107776, there is no canonical definition to state claims against.
-/

/-! ## A107776.P7251172856018607813

`A107777(n+1)-A126812(ceil(2^(n-1)))`
-/

namespace A107776.P7251172856018607813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107777 (n + 1) - A126812 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A107776.P7251172856018607813

/-! ## A107776.P9397794883351986420

`A107777(n+1)+A010815(A108411(n))`
-/

namespace A107776.P9397794883351986420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107777 (n + 1) + A010815 (A108411 n).toNat

end

end A107776.P9397794883351986420

/-! ## A107776.P15921306071930344433

`A107777(n+1)-A000007(A000073(n))`
-/

namespace A107776.P15921306071930344433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107777 (n + 1) - A000007 (A000073 n).toNat

end

end A107776.P15921306071930344433

/-! ## A107776.P18046278616170756938

`A107777(n+1)-A010054(A020741(n))`
-/

namespace A107776.P18046278616170756938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107777 (n + 1) - A010054 (A020741 n).toNat

end

end A107776.P18046278616170756938

/-! ## A107776.P12036357863591478278

`A107777(n+1)-A036987(A011782(n))`
-/

namespace A107776.P12036357863591478278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107777 (n + 1) - A036987 (A011782 n).toNat

end

end A107776.P12036357863591478278

/-!
# A107777: a(1)=6, a(n) = smallest integer not previously used which contains a digit from a(n-1).

The programs for A107777, there is no canonical definition to state claims against.
-/

/-! ## A107777.P181189459625421968

`A159075(A056504(n))+A107778(n+1)`
-/

namespace A107777.P181189459625421968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (A056504 n).toNat + A107778 (n + 1)

end

end A107777.P181189459625421968

/-! ## A107777.P7415801218026779115

`A159075(A094967(n))+A107778(n+1)`
-/

namespace A107777.P7415801218026779115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (A094967 n).toNat + A107778 (n + 1)

end

end A107777.P7415801218026779115

/-! ## A107777.P8886666053599893480

`A159075(A281357(n))+A107778(n+1)`
-/

namespace A107777.P8886666053599893480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (A281357 n).toNat + A107778 (n + 1)

end

end A107777.P8886666053599893480

/-! ## A107777.P9099555800128264570

`A107778(n+1)-A010057(A000447(n))`
-/

namespace A107777.P9099555800128264570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107778 (n + 1) - A010057 (A000447 n).toNat

end

end A107777.P9099555800128264570

/-! ## A107777.P17089495977868237089

`A107778(n+1)-A063524(A238423(n))`
-/

namespace A107777.P17089495977868237089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107778 (n + 1) - A063524 (A238423 n).toNat

end

end A107777.P17089495977868237089

/-!
# A107778: a(1)=7, a(n) = smallest integer not previously used which contains a digit from a(n-1).

The programs for A107778, there is no canonical definition to state claims against.
-/

/-! ## A107778.P4496394103629428516

`A159075(A103314(n))+A107779(n+1)`
-/

namespace A107778.P4496394103629428516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (A103314 n).toNat + A107779 (n + 1)

end

end A107778.P4496394103629428516

/-! ## A107778.P4186136710771194738

`A159075(A117791(n))+A107779(n+1)`
-/

namespace A107778.P4186136710771194738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (A117791 n).toNat + A107779 (n + 1)

end

end A107778.P4186136710771194738

/-! ## A107778.P8740093360879479896

`A107779(n+1)-A010056(A007088(n))`
-/

namespace A107778.P8740093360879479896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107779 (n + 1) - A010056 (A007088 n).toNat

end

end A107778.P8740093360879479896

/-! ## A107778.P4450681967174952223

`A107779(n+1)-A036987(A094967(n))`
-/

namespace A107778.P4450681967174952223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107779 (n + 1) - A036987 (A094967 n).toNat

end

end A107778.P4450681967174952223

/-! ## A107778.P7267983052633931241

`A107779(n+1)-A000007(A135153(n))`
-/

namespace A107778.P7267983052633931241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107779 (n + 1) - A000007 (A135153 n).toNat

end

end A107778.P7267983052633931241

/-!
# A107779: a(1)=8, a(n) = smallest integer not previously used which contains a digit from a(n-1).

The programs for A107779, there is no canonical definition to state claims against.
-/

/-! ## A107779.P17755816927061900477

`A107780(n+1)-A036987(A008911(n))`
-/

namespace A107779.P17755816927061900477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107780 (n + 1) - A036987 (A008911 n).toNat

end

end A107779.P17755816927061900477

/-! ## A107779.P13531222022093830210

`A107780(n+1)-A000007(A096541(n))`
-/

namespace A107779.P13531222022093830210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107780 (n + 1) - A000007 (A096541 n).toNat

end

end A107779.P13531222022093830210

/-! ## A107779.P7666555506458438698

`A107780(n+1)-A209229(A281357(n))`
-/

namespace A107779.P7666555506458438698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107780 (n + 1) - A209229 (A281357 n).toNat

end

end A107779.P7666555506458438698

/-! ## A107779.P9930230573166466160

`A107780(n+1)-A003982(A213359(n+1))`
-/

namespace A107779.P9930230573166466160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107780 (n + 1) - A003982 (A213359 (n + 1)).toNat

end

end A107779.P9930230573166466160

/-! ## A107779.P2819539515810762661

`A107780(n+1)-A156348(A180432(n+1))`
-/

namespace A107779.P2819539515810762661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107780 (n + 1) - A156348 (A180432 (n + 1)).toNat

end

end A107779.P2819539515810762661

/-!
# A107780: a(1)=9, a(n) = smallest integer not previously used which contains a digit from a(n-1).

The programs for A107780, there is no canonical definition to state claims against.
-/

/-! ## A107780.P12640041427545111928

`A107779(n+1)+A036987(A008911(n))`
-/

namespace A107780.P12640041427545111928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107779 (n + 1) + A036987 (A008911 n).toNat

end

end A107780.P12640041427545111928

/-! ## A107780.P11355877752250337262

`A107779(n+1)+A035184(A052551(n))`
-/

namespace A107780.P11355877752250337262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107779 (n + 1) + A035184 (A052551 n).toNat

end

end A107780.P11355877752250337262

/-! ## A107780.P12317475148167975828

`A107779(n+1)+A000007(A096541(n))`
-/

namespace A107780.P12317475148167975828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107779 (n + 1) + A000007 (A096541 n).toNat

end

end A107780.P12317475148167975828

/-! ## A107780.P8567430060030336196

`A327153(A101268(n))+A107779(n+1)`
-/

namespace A107780.P8567430060030336196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327153 (A101268 n).toNat + A107779 (n + 1)

end

end A107780.P8567430060030336196

/-! ## A107780.P12183719194742349395

`A209229(A281357(n))+A107779(n+1)`
-/

namespace A107780.P12183719194742349395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A281357 n).toNat + A107779 (n + 1)

end

end A107780.P12183719194742349395

/-!
# A107782: In binary representation of n: (number of zeros) minus (number of blocks of contiguous zeros).

The programs for A107782, the canonical program `A107782.P10954405074000137432` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107782 has offset 0).

The definition of A107782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107782.P4689253267717059191

`char[4*n]+a(floor(n/2))` with `a(0)=0`
-/

namespace A107782.P4689253267717059191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a ⌊(n : ℚ) / 2⌋.toNat

end

end A107782.P4689253267717059191

namespace A107782

/-- `char[4*n]+a(floor(n/2))` -/
def P4689253267717059191.Spec : Prop :=
  ∀ n, (P4689253267717059191.a n : ℤ) = A107782 n

end A107782

/-! ## A107782.P16055779977574687285

`A056973(C(2, n)+n)`
-/

namespace A107782.P16055779977574687285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (Nat.choose 2 n + n)

end

end A107782.P16055779977574687285

namespace A107782

/-- `A056973(C(2, n)+n)` -/
def P16055779977574687285.Spec : Prop :=
  ∀ n, P16055779977574687285.a n = A107782 n

end A107782

/-! ## A107782.P206661524826483809

`A056973(or(n, C(2, n)))`
-/

namespace A107782.P206661524826483809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (Nat.lor n (Nat.choose 2 n))

end

end A107782.P206661524826483809

namespace A107782

/-- `A056973(or(n, C(2, n)))` -/
def P206661524826483809.Spec : Prop :=
  ∀ n, P206661524826483809.a n = A107782 n

end A107782

/-! ## A107782.P370500434739104233

`A056973(xor(n, C(2, n)))`
-/

namespace A107782.P370500434739104233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (Nat.xor n (Nat.choose 2 n))

end

end A107782.P370500434739104233

namespace A107782

/-- `A056973(xor(n, C(2, n)))` -/
def P370500434739104233.Spec : Prop :=
  ∀ n, P370500434739104233.a n = A107782 n

end A107782

/-! ## A107782.P12818932844796119324

`A014081(n-(Δ[n²]-2^ceil(log2(n+1))))`
-/

namespace A107782.P12818932844796119324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (SequenceMachineLib.roundAway ((n : ℚ) - (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) - (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)))).toNat

end

end A107782.P12818932844796119324

namespace A107782

/-- `A014081(n-(Δ[n²]-2^ceil(log2(n+1))))` -/
def P12818932844796119324.Spec : Prop :=
  ∀ n, P12818932844796119324.a n = A107782 n

end A107782

/-! ## A107782.P208461584881812455

`A056973(A028310(n))`
-/

namespace A107782.P208461584881812455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (A028310 n).toNat

end

end A107782.P208461584881812455

namespace A107782

/-- `A056973(A028310(n))` -/
def P208461584881812455.Spec : Prop :=
  ∀ n, P208461584881812455.a n = A107782 n

end A107782

/-! ## A107782.P17336732974121130719

`A092339(A090077(n))`
-/

namespace A107782.P17336732974121130719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 (A090077 n).toNat

end

end A107782.P17336732974121130719

namespace A107782

/-- `A092339(A090077(n))` -/
def P17336732974121130719.Spec : Prop :=
  ∀ n, P17336732974121130719.a n = A107782 n

end A107782

/-! ## A107782.P10002088546196259588

`A056973(A000007(n)+n)`
-/

namespace A107782.P10002088546196259588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (A000007 n + (n : ℤ)).toNat

end

end A107782.P10002088546196259588

namespace A107782

/-- `A056973(A000007(n)+n)` -/
def P10002088546196259588.Spec : Prop :=
  ∀ n, P10002088546196259588.a n = A107782 n

end A107782

/-! ## A107782.P12757692048515253998

`A056973(A000038(n)+n)`
-/

namespace A107782.P12757692048515253998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (A000038 n + (n : ℤ)).toNat

end

end A107782.P12757692048515253998

namespace A107782

/-- `A056973(A000038(n)+n)` -/
def P12757692048515253998.Spec : Prop :=
  ∀ n, P12757692048515253998.a n = A107782 n

end A107782

/-! ## A107782.P7263826496415129390

`A092339(n)-A014081(n)`
-/

namespace A107782.P7263826496415129390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 n - A014081 n

end

end A107782.P7263826496415129390

namespace A107782

/-- `A092339(n)-A014081(n)` -/
def P7263826496415129390.Spec : Prop :=
  ∀ n, P7263826496415129390.a n = A107782 n

end A107782

/-! ## A107782.P10954405074000137432

`A023416(n)-A087116(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A107782

/-- `A023416(n)-A087116(n)` -/
def P10954405074000137432.Spec : Prop :=
  ∀ n, P10954405074000137432.a n = A107782 n

theorem P10954405074000137432.correct : P10954405074000137432.Spec := by
  intro n
  simp only [A107782]

end A107782

/-! ## A107782.P3508826955554324474

`A080791(n)-A033264(n)`
-/

namespace A107782.P3508826955554324474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n - A033264 n

end

end A107782.P3508826955554324474

namespace A107782

/-- `A080791(n)-A033264(n)` -/
def P3508826955554324474.Spec : Prop :=
  ∀ n, P3508826955554324474.a n = A107782 n

end A107782

/-! ## A107782.P17274620393301778149

`A033265(2*n+1)-A000120(n)`
-/

namespace A107782.P17274620393301778149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 (2 * n + 1) - A000120 n

end

end A107782.P17274620393301778149

namespace A107782

/-- `A033265(2*n+1)-A000120(n)` -/
def P17274620393301778149.Spec : Prop :=
  ∀ n, P17274620393301778149.a n = A107782 n

end A107782

/-! ## A107782.P5811782125272975655

`A023416(n)-A023416(A090079(n))`
-/

namespace A107782.P5811782125272975655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n - A023416 (A090079 n).toNat

end

end A107782.P5811782125272975655

namespace A107782

/-- `A023416(n)-A023416(A090079(n))` -/
def P5811782125272975655.Spec : Prop :=
  ∀ n, P5811782125272975655.a n = A107782 n

end A107782

/-! ## A107782.P10218928465888889309

`A056973(n+1-A163000(A270438(n)))`
-/

namespace A107782.P10218928465888889309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 ((n + 1 : ℤ) - A163000 (A270438 n).toNat).toNat

end

end A107782.P10218928465888889309

namespace A107782

/-- `A056973(n+1-A163000(A270438(n)))` -/
def P10218928465888889309.Spec : Prop :=
  ∀ n, P10218928465888889309.a n = A107782 n

end A107782

/-! ## A107782.P17127995525138724541

`A023416(or(1, or(n, A006257(n))))`
-/

namespace A107782.P17127995525138724541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.lor 1 (Int.lor (n : ℤ) (A006257 n))).toNat

end

end A107782.P17127995525138724541

namespace A107782

/-- `A023416(or(1, or(n, A006257(n))))` -/
def P17127995525138724541.Spec : Prop :=
  ∀ n, P17127995525138724541.a n = A107782 n

end A107782

/-! ## A107782.P15669889176462585071

`A023416(A028310(or(n, A006257(n))))`
-/

namespace A107782.P15669889176462585071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A028310 (Int.lor (n : ℤ) (A006257 n)).toNat).toNat

end

end A107782.P15669889176462585071

namespace A107782

/-- `A023416(A028310(or(n, A006257(n))))` -/
def P15669889176462585071.Spec : Prop :=
  ∀ n, P15669889176462585071.a n = A107782 n

end A107782

/-! ## A107782.P215346806180627567

`A023416(A109613(or(n, A006257(n))))`
-/

namespace A107782.P215346806180627567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A109613 (Int.lor (n : ℤ) (A006257 n)).toNat).toNat

end

end A107782.P215346806180627567

namespace A107782

/-- `A023416(A109613(or(n, A006257(n))))` -/
def P215346806180627567.Spec : Prop :=
  ∀ n, P215346806180627567.a n = A107782 n

end A107782

/-! ## A107782.P4558636784551330059

`A056973(n+1-A000035(A030101(n)))`
-/

namespace A107782.P4558636784551330059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 ((n + 1 : ℤ) - A000035 (A030101 n).toNat).toNat

end

end A107782.P4558636784551330059

namespace A107782

/-- `A056973(n+1-A000035(A030101(n)))` -/
def P4558636784551330059.Spec : Prop :=
  ∀ n, P4558636784551330059.a n = A107782 n

end A107782

/-! ## A107782.P9282538811123382521

`A080791(or(n, floor(n/2)))`
-/

namespace A107782.P9282538811123382521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A107782.P9282538811123382521

namespace A107782

/-- `A080791(or(n, floor(n/2)))` -/
def P9282538811123382521.Spec : Prop :=
  ∀ n, P9282538811123382521.a n = A107782 n

end A107782

/-!
# A107784: See Mathematica program.

The programs for A107784, there is no canonical definition to state claims against.
-/

/-! ## A107784.P11148056598479148788

`eq[2, A099563(A056119(n))]`
-/

namespace A107784.P11148056598479148788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A056119 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107784.P11148056598479148788

/-! ## A107784.P5402963342698811853

`eq[2, A099563(A302537(n))]`
-/

namespace A107784.P5402963342698811853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A302537 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107784.P5402963342698811853

/-! ## A107784.P13418542374662089093

`record[A071626(A022837(2*n+3))]`
-/

namespace A107784.P13418542374662089093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (A022837 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107784.P13418542374662089093

/-! ## A107784.P9060795747295302267

`eq[A077648((2*(n+1))²), A191898(n+1)]`
-/

namespace A107784.P9060795747295302267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077648 ((2 * (n + 1)) ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191898 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107784.P9060795747295302267

/-!
# A107785: Sequence obtained using characteristic polynomial that is Laplace transform of the tribonacci characteristic polynomial: -s^4*L(t^3 -t^2 -t -1) = s^3 +s^2 +2*s -6.

The programs for A107785, there is no canonical definition to state claims against.
-/

/-! ## A107785.P6501299484819012530

`A256263(A121486(n+1))%(2^n)`
-/

namespace A107785.P6501299484819012530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256263 (A121486 (n + 1)).toNat) (2 ^ n : ℤ)

end

end A107785.P6501299484819012530

/-!
# A107786: a(n) = |b(n)| where b(n) = -b(n-1) + 6*b(n-3) with b(0)=0, b(1)=1, b(2)=1.

The programs for A107786, there is no canonical definition to state claims against.
-/

/-! ## A107786.P15406244884447164969

`A078972(A080923(n))%A068911(n)`
-/

namespace A107786.P15406244884447164969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078972 (A080923 n).toNat) (A068911 n)

end

end A107786.P15406244884447164969

/-! ## A107786.P9547290521470104117

`A181516(n+1)%A225530(A000225(n))`
-/

namespace A107786.P9547290521470104117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181516 (n + 1)) (A225530 (A000225 n).toNat)

end

end A107786.P9547290521470104117

/-!
# A107788: Numbers of the form (8^i)*(11^j), with i, j >= 0.

The programs for A107788, there is no canonical definition to state claims against.
-/

/-! ## A107788.P2628017170789730303

`A057979(A103129(n+1))*A166673(A036561(n))`
-/

namespace A107788.P2628017170789730303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A103129 (n + 1)).toNat * A166673 (A036561 n).toNat

end

end A107788.P2628017170789730303

/-! ## A107788.P3852101734423568552

`A166673(A036561(n))%A014342(A185446(n+1))`
-/

namespace A107788.P3852101734423568552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166673 (A036561 n).toNat) (A014342 (A185446 (n + 1)).toNat)

end

end A107788.P3852101734423568552

/-! ## A107788.P12332672869008871727

`A177704(n²)^A106433(n)*A166673(A036561(n))`
-/

namespace A107788.P12332672869008871727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177704 (n ^ 2) : ℚ) ^ (A106433 n : ℤ) * (A166673 (A036561 n).toNat : ℚ)

end

end A107788.P12332672869008871727

/-! ## A107788.P14733993523652025580

`A135517(A063698(n))*A166673(A036561(n))`
-/

namespace A107788.P14733993523652025580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 (A063698 n).toNat * A166673 (A036561 n).toNat

end

end A107788.P14733993523652025580

/-! ## A107788.P11803140424981015450

`A166673(A036561(n))^A156690(A034580(n+1))`
-/

namespace A107788.P11803140424981015450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166673 (A036561 n).toNat : ℚ) ^ (A156690 (A034580 (n + 1)).toNat : ℤ)

end

end A107788.P11803140424981015450

/-!
# A107789: Trajectory of 2 under evenly many applications of the morphism 1 -> 2, 2 -> 114, 3 -> 4, 4 -> 233.

The programs for A107789, the canonical program `A107789.P13357853948593390734` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107789 has offset 0).

The definition of A107789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107789.P12211353003870768842

`A020639(Δ[record[A302792(3*n+1)]])`
-/

namespace A107789.P12211353003870768842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (n + 1) - f1 n).toNat

end

end A107789.P12211353003870768842

namespace A107789

/-- `A020639(Δ[record[A302792(3*n+1)]])` -/
def P12211353003870768842.Spec : Prop :=
  ∀ n, P12211353003870768842.a n = A107789 n

end A107789

/-! ## A107789.P13357853948593390734

`p?[7-(A268272(n+2)-A268272(n))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A107789

/-- `p?[7-(A268272(n+2)-A268272(n))]` -/
def P13357853948593390734.Spec : Prop :=
  ∀ n, P13357853948593390734.a n = A107789 n

theorem P13357853948593390734.correct : P13357853948593390734.Spec := by
  intro n
  simp only [A107789]

end A107789

/-! ## A107789.P2267977700520015754

`p?[A028242(A268272(n+2)-A268272(n))]`
-/

namespace A107789.P2267977700520015754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A268272 (n + 2) - A268272 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107789.P2267977700520015754

namespace A107789

/-- `p?[A028242(A268272(n+2)-A268272(n))]` -/
def P2267977700520015754.Spec : Prop :=
  ∀ n, P2267977700520015754.a n = A107789 n

end A107789

/-! ## A107789.P18111682360861684560

`A020639(Δ[record[A214682(3*n+2)]])`
-/

namespace A107789.P18111682360861684560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214682 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (n + 1) - f1 n).toNat

end

end A107789.P18111682360861684560

namespace A107789

/-- `A020639(Δ[record[A214682(3*n+2)]])` -/
def P18111682360861684560.Spec : Prop :=
  ∀ n, P18111682360861684560.a n = A107789 n

end A107789

/-! ## A107789.P9129185212802755122

`p?[A062490(A268273(n+3)-A268273(n+1))]`
-/

namespace A107789.P9129185212802755122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062490 (A268273 (n + 3) - A268273 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107789.P9129185212802755122

namespace A107789

/-- `p?[A062490(A268273(n+3)-A268273(n+1))]` -/
def P9129185212802755122.Spec : Prop :=
  ∀ n, P9129185212802755122.a n = A107789 n

end A107789

/-!
# A107790: Positions of 1's in the 2-limiting word of the morphism 1->2, 2->3, 3->123.

The programs for A107790, there is no canonical definition to state claims against.
-/

/-! ## A107790.P1474778416936475775

`A287176(n+1)+n`
-/

namespace A107790.P1474778416936475775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287176 (n + 1) + (n : ℤ)

end

end A107790.P1474778416936475775

/-! ## A107790.P6298248899925959266

`A107792(n+1)+2*n`
-/

namespace A107790.P6298248899925959266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107792 (n + 1) + (2 * n : ℤ)

end

end A107790.P6298248899925959266

/-! ## A107790.P9412742628625839995

`∑[A107793(abs(1-n))]-2`
-/

namespace A107790.P9412742628625839995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107793 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A107790.P9412742628625839995

/-! ## A107790.P17609512193549388767

`A316326(n+1)+Δ[n²]`
-/

namespace A107790.P17609512193549388767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316326 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A107790.P17609512193549388767

/-! ## A107790.P8937177891878612539

`eq[3, A305389(n)]+Δ[n²]`
-/

namespace A107790.P8937177891878612539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305389 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

end

end A107790.P8937177891878612539

/-! ## A107790.P16198275458963372361

`A107793(n-1)+a(n-1)` with `a(0)=3`
-/

namespace A107790.P16198275458963372361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A107793 (n - 1) + a (n - 1)

end

end A107790.P16198275458963372361

/-! ## A107790.P9592153536894885828

`∑[A107796(abs(1-n))]+2*n`
-/

namespace A107790.P9592153536894885828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107796 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℤ)

end

end A107790.P9592153536894885828

/-! ## A107790.P16145882161834537055

`eq[1, A305390(n)]+1`
-/

namespace A107790.P16145882161834537055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305390 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107790.P16145882161834537055

/-! ## A107790.P13143169068391126297

`eq[1, A305390(abs(1-n))]`
-/

namespace A107790.P13143169068391126297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305390 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107790.P13143169068391126297

/-! ## A107790.P18432792817202505013

`lt[A305390(n+1), 2]+2`
-/

namespace A107790.P18432792817202505013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305390 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A107790.P18432792817202505013

/-!
# A107791: Positions of 2's in the 1-limiting word of the morphism 1->2, 2->3, 3->123.

The programs for A107791, there is no canonical definition to state claims against.
-/

/-! ## A107791.P14249590465779985406

`A316325(n+1)+1`
-/

namespace A107791.P14249590465779985406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316325 (n + 1) + 1

end

end A107791.P14249590465779985406

/-! ## A107791.P15914697971987780791

`∑[A107795(abs(1-n))]-1`
-/

namespace A107791.P15914697971987780791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107795 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A107791.P15914697971987780791

/-! ## A107791.P790993289809030548

`∑[A107795(floor(n²/(n+1)))]`
-/

namespace A107791.P790993289809030548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107795 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107791.P790993289809030548

/-! ## A107791.P2375271398961398400

`A107795(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A107791.P2375271398961398400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A107795 (n - 1) + a (n - 1)

end

end A107791.P2375271398961398400

/-! ## A107791.P7294886227489426239

`eq[2, A305389(n)]+1`
-/

namespace A107791.P7294886227489426239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107791.P7294886227489426239

/-! ## A107791.P2184310860424538706

`A020725(A316325(n+1))`
-/

namespace A107791.P2184310860424538706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A316325 (n + 1)).toNat

end

end A107791.P2184310860424538706

/-! ## A107791.P15068623899007205382

`A020725(eq[2, A305389(n)])`
-/

namespace A107791.P15068623899007205382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107791.P15068623899007205382

/-!
# A107792: Positions of 3's in the 1-limiting word of the morphism 1->2, 2->3, 3->123.

The programs for A107792, there is no canonical definition to state claims against.
-/

/-! ## A107792.P14255112823210477856

`A316326(n+1)+1`
-/

namespace A107792.P14255112823210477856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316326 (n + 1) + 1

end

end A107792.P14255112823210477856

/-! ## A107792.P16093017343861242926

`lt[2, A305389(n)]+1`
-/

namespace A107792.P16093017343861242926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A107792.P16093017343861242926

/-! ## A107792.P11687588327869559819

`A287176(n+1)-n`
-/

namespace A107792.P11687588327869559819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287176 (n + 1) - (n : ℤ)

end

end A107792.P11687588327869559819

/-! ## A107792.P16268813497485967902

`∑[A107796(abs(1-n))]`
-/

namespace A107792.P16268813497485967902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107796 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107792.P16268813497485967902

/-! ## A107792.P12239097057437939128

`∑[3-A286998(n+1)]`
-/

namespace A107792.P12239097057437939128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A286998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107792.P12239097057437939128

/-! ## A107792.P1580358886024669460

`eq[3, A305389(abs(1-n))]`
-/

namespace A107792.P1580358886024669460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305389 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107792.P1580358886024669460

/-! ## A107792.P44977382892171706

`A107790(n+1)-2*n`
-/

namespace A107792.P44977382892171706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107790 (n + 1) - (2 * n : ℤ)

end

end A107792.P44977382892171706

/-! ## A107792.P10341007694620216727

`∑[A107793(abs(1-n))-2]`
-/

namespace A107792.P10341007694620216727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107793 |1 - (n : ℤ)|.toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107792.P10341007694620216727

/-! ## A107792.P1856686365764122504

`A107796(n-1)+a(n-1)` with `a(0)=3`
-/

namespace A107792.P1856686365764122504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A107796 (n - 1) + a (n - 1)

end

end A107792.P1856686365764122504

/-! ## A107792.P4878941808299124183

`∑[3-round(tan(A347290(n+1)²))]`
-/

namespace A107792.P4878941808299124183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - SequenceMachineLib.roundAway (Real.tan (A347290 (n + 1) ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107792.P4878941808299124183

/-! ## A107792.P16534190460720692478

`eq[1, A305390(n)]+1-2*n`
-/

namespace A107792.P16534190460720692478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + (1 - (2 * n : ℤ))

end

end A107792.P16534190460720692478

/-! ## A107792.P2652900442142738119

`A020725(A316326(n+1))`
-/

namespace A107792.P2652900442142738119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A316326 (n + 1)).toNat

end

end A107792.P2652900442142738119

/-!
# A107793: Differences between successive indices of 1's in the ternary tribonacci sequence A305390.

The programs for A107793, there is no canonical definition to state claims against.
-/

/-! ## A107793.P1388727031019506612

`A107796(n)+2`
-/

namespace A107793.P1388727031019506612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107796 n + 2

end

end A107793.P1388727031019506612

/-! ## A107793.P18229816114103398136

`5-A286998(n+2)`
-/

namespace A107793.P18229816114103398136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A286998 (n + 2)

end

end A107793.P18229816114103398136

/-! ## A107793.P3470422979093352179

`Δ[A107790(n+1)]`
-/

namespace A107793.P3470422979093352179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107793.P3470422979093352179

/-! ## A107793.P13957552968901800806

`Δ[A287176(n+1)]+1`
-/

namespace A107793.P13957552968901800806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A107793.P13957552968901800806

/-! ## A107793.P2491240718910979871

`Δ[A107792(n+1)]+2`
-/

namespace A107793.P2491240718910979871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A107793.P2491240718910979871

/-! ## A107793.P5114374129291033139

`Δ[A316326(n+1)]+2`
-/

namespace A107793.P5114374129291033139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A107793.P5114374129291033139

/-! ## A107793.P17675219355346319026

`Δ[lt[2, A305389(n)]]+2`
-/

namespace A107793.P17675219355346319026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305389 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2

end

end A107793.P17675219355346319026

/-! ## A107793.P8112335176735050609

`ceil(Δ[A287001(n+1)]/ϕ)`
-/

namespace A107793.P8112335176735050609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℝ) / Real.goldenRatio⌉

end

end A107793.P8112335176735050609

/-! ## A107793.P253513540531868033

`A004396(Δ[A287001(n+1)])`
-/

namespace A107793.P253513540531868033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (f1 (n + 1) - f1 n).toNat

end

end A107793.P253513540531868033

/-! ## A107793.P18170156563155791851

`A005185(Δ[A287001(n+1)])`
-/

namespace A107793.P18170156563155791851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (f1 (n + 1) - f1 n).toNat

end

end A107793.P18170156563155791851

/-! ## A107793.P3268292950654518851

`A005374(Δ[A287001(n+1)])`
-/

namespace A107793.P3268292950654518851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (f1 (n + 1) - f1 n).toNat

end

end A107793.P3268292950654518851

/-! ## A107793.P581895762618812326

`A025767(Δ[A287001(n+1)])`
-/

namespace A107793.P581895762618812326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025767 (f1 (n + 1) - f1 n).toNat

end

end A107793.P581895762618812326

/-! ## A107793.P11440163931196800808

`A061288(Δ[A287001(n+1)])`
-/

namespace A107793.P11440163931196800808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061288 (f1 (n + 1) - f1 n).toNat

end

end A107793.P11440163931196800808

/-! ## A107793.P11830225226483713501

`A080513(Δ[A287001(n+1)])`
-/

namespace A107793.P11830225226483713501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (f1 (n + 1) - f1 n).toNat

end

end A107793.P11830225226483713501

/-! ## A107793.P1872473737990157862

`A111684(Δ[A287001(n+1)])`
-/

namespace A107793.P1872473737990157862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111684 (f1 (n + 1) - f1 n).toNat

end

end A107793.P1872473737990157862

/-! ## A107793.P6270721465053052242

`A000120(Δ[A287001(n+1)])+2`
-/

namespace A107793.P6270721465053052242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (n + 1) - f1 n).toNat + 2

end

end A107793.P6270721465053052242

/-! ## A107793.P2290224740060420361

`A000607(Δ[A287001(n+1)])+2`
-/

namespace A107793.P2290224740060420361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (f1 (n + 1) - f1 n).toNat + 2

end

end A107793.P2290224740060420361

/-! ## A107793.P38998573706883201

`A002487(Δ[A287001(n+1)])+2`
-/

namespace A107793.P38998573706883201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (f1 (n + 1) - f1 n).toNat + 2

end

end A107793.P38998573706883201

/-! ## A107793.P8778637931515347656

`A026810(Δ[A287001(n+1)])+2`
-/

namespace A107793.P8778637931515347656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (f1 (n + 1) - f1 n).toNat + 2

end

end A107793.P8778637931515347656

/-! ## A107793.P7773838451019215280

`A107790(n+2)-A107790(n+1)`
-/

namespace A107793.P7773838451019215280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107790 (n + 2) - A107790 (n + 1)

end

end A107793.P7773838451019215280

/-!
# A107794: Numbers n such that both n plus its first digit and n minus its first digit are primes.

The programs for A107794, there is no canonical definition to state claims against.
-/

/-! ## A107794.P13367269109215847512

`∩[A107835(n+1), A107836(n+1)]`
-/

namespace A107794.P13367269109215847512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107794.P13367269109215847512

/-!
# A107795: First differences of indices of 2's in A305389.

The programs for A107795, there is no canonical definition to state claims against.
-/

/-! ## A107795.P17779563685506628396

`Δ[A107791(n+1)]`
-/

namespace A107795.P17779563685506628396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107795.P17779563685506628396

/-! ## A107795.P12401189569742957547

`Δ[A316325(n+1)]`
-/

namespace A107795.P12401189569742957547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107795.P12401189569742957547

/-! ## A107795.P5970540240101540057

`A107791(n+2)-A107791(n+1)`
-/

namespace A107795.P5970540240101540057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107791 (n + 2) - A107791 (n + 1)

end

end A107795.P5970540240101540057

/-! ## A107795.P738944073511314964

`A316325(n+2)-A316325(n+1)`
-/

namespace A107795.P738944073511314964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316325 (n + 2) - A316325 (n + 1)

end

end A107795.P738944073511314964

/-! ## A107795.P12079656870897262597

`A274580(A316325(n+2)%(A316325(n+1)+1)+1)`
-/

namespace A107795.P12079656870897262597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274580 (Int.tmod (A316325 (n + 2)) (A316325 (n + 1) + 1) + 1).toNat

end

end A107795.P12079656870897262597

/-! ## A107795.P18084225805679474355

`Δ[eq[2, A305389(n)]]`
-/

namespace A107795.P18084225805679474355
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305389 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A107795.P18084225805679474355

/-! ## A107795.P5695077264803331663

`abs(Δ[A316325(A008619(2*n))])`
-/

namespace A107795.P5695077264803331663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316325 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A107795.P5695077264803331663

/-! ## A107795.P1176001186755390394

`Δ[A316325(A008619(2*n))]%A004771(n)`
-/

namespace A107795.P1176001186755390394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316325 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A004771 n)

end

end A107795.P1176001186755390394

/-! ## A107795.P324955238869785631

`Δ[A316325(A008619(2*n))-A033487(n)%2]`
-/

namespace A107795.P324955238869785631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316325 (A008619 (2 * n)).toNat - Int.tmod (A033487 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107795.P324955238869785631

/-!
# A107796: First differences of indices of 3's in A305389.

The programs for A107796, there is no canonical definition to state claims against.
-/

/-! ## A107796.P16376210793396397106

`A107793(n)-2`
-/

namespace A107796.P16376210793396397106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107793 n - 2

end

end A107796.P16376210793396397106

/-! ## A107796.P14975954012298880163

`3-A286998(n+2)`
-/

namespace A107796.P14975954012298880163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A286998 (n + 2)

end

end A107796.P14975954012298880163

/-! ## A107796.P11093748168704931345

`Δ[A107792(n+1)]`
-/

namespace A107796.P11093748168704931345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107796.P11093748168704931345

/-! ## A107796.P3706363850548324032

`Δ[A316326(n+1)]`
-/

namespace A107796.P3706363850548324032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107796.P3706363850548324032

/-! ## A107796.P3702960946589345779

`Δ[lt[2, A305389(n)]]`
-/

namespace A107796.P3702960946589345779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305389 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A107796.P3702960946589345779

/-! ## A107796.P16258196035399052070

`Δ[A287176(n+1)]-1`
-/

namespace A107796.P16258196035399052070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A107796.P16258196035399052070

/-! ## A107796.P13546805553018302220

`Δ[A107790(n+1)]-2`
-/

namespace A107796.P13546805553018302220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A107796.P13546805553018302220

/-! ## A107796.P15013700809500596971

`A000120(Δ[A287001(n+1)])`
-/

namespace A107796.P15013700809500596971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (n + 1) - f1 n).toNat

end

end A107796.P15013700809500596971

/-! ## A107796.P13534447609560067270

`A000045(Δ[A287176(n+1)])`
-/

namespace A107796.P13534447609560067270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A107796.P13534447609560067270

/-! ## A107796.P2513749145955200257

`A000607(Δ[A287001(n+1)])`
-/

namespace A107796.P2513749145955200257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (f1 (n + 1) - f1 n).toNat

end

end A107796.P2513749145955200257

/-! ## A107796.P14134554253382548217

`A002487(Δ[A287001(n+1)])`
-/

namespace A107796.P14134554253382548217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (f1 (n + 1) - f1 n).toNat

end

end A107796.P14134554253382548217

/-! ## A107796.P7474275278789631738

`A026810(Δ[A287001(n+1)])`
-/

namespace A107796.P7474275278789631738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (f1 (n + 1) - f1 n).toNat

end

end A107796.P7474275278789631738

/-! ## A107796.P15324458590186638326

`A305390(Δ[A287176(n+1)])`
-/

namespace A107796.P15324458590186638326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305390 (f1 (n + 1) - f1 n).toNat

end

end A107796.P15324458590186638326

/-! ## A107796.P7355196731706776655

`A014963(Δ[A287001(n+1)]+2)`
-/

namespace A107796.P7355196731706776655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (n + 1) - f1 n + 2).toNat

end

end A107796.P7355196731706776655

/-! ## A107796.P4345903119808351640

`A004396(Δ[A287001(n+1)])-2`
-/

namespace A107796.P4345903119808351640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (f1 (n + 1) - f1 n).toNat - 2

end

end A107796.P4345903119808351640

/-! ## A107796.P1079826853352778434

`A005185(Δ[A287001(n+1)])-2`
-/

namespace A107796.P1079826853352778434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (f1 (n + 1) - f1 n).toNat - 2

end

end A107796.P1079826853352778434

/-! ## A107796.P3689233036964148284

`A005374(Δ[A287001(n+1)])-2`
-/

namespace A107796.P3689233036964148284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (f1 (n + 1) - f1 n).toNat - 2

end

end A107796.P3689233036964148284

/-! ## A107796.P10067940231319360019

`A107792(n+2)-A107792(n+1)`
-/

namespace A107796.P10067940231319360019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107792 (n + 2) - A107792 (n + 1)

end

end A107796.P10067940231319360019

/-! ## A107796.P8392168549787895720

`A316326(n+2)-A316326(n+1)`
-/

namespace A107796.P8392168549787895720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316326 (n + 2) - A316326 (n + 1)

end

end A107796.P8392168549787895720

/-! ## A107796.P15797309744185439779

`Δ[lt[A305390(n), 2]]-2`
-/

namespace A107796.P15797309744185439779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305390 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 2

end

end A107796.P15797309744185439779

/-!
# A107797: a(n) = phi(Padovan(n+4)).

The programs for A107797, the canonical program `A107797.P5611527584116679134` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107797 has offset 1).

The definition of A107797 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A107797.P5611527584116679134

`A000010(A134816(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A107797

/-- `A000010(A134816(n+1))` -/
def P5611527584116679134.Spec : Prop :=
  ∀ n, P5611527584116679134.a n = A107797 (n + 1)

theorem P5611527584116679134.correct : P5611527584116679134.Spec := by
  intro n
  simp only [A107797, Nat.add_sub_cancel]

end A107797

/-! ## A107797.P10551897008291673142

`A000010(A000931(n+5))`
-/

namespace A107797.P10551897008291673142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000931 (n + 5)).toNat

end

end A107797.P10551897008291673142

namespace A107797

/-- `A000010(A000931(n+5))` -/
def P10551897008291673142.Spec : Prop :=
  ∀ n, P10551897008291673142.a n = A107797 (n + 1)

end A107797

/-! ## A107797.P11150349868349390688

`A000010(∑[A000931(n)])`
-/

namespace A107797.P11150349868349390688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A107797.P11150349868349390688

namespace A107797

/-- `A000010(∑[A000931(n)])` -/
def P11150349868349390688.Spec : Prop :=
  ∀ n, P11150349868349390688.a n = A107797 (n + 1)

end A107797

/-! ## A107797.P15090666620634990944

`A000010(A182097(n+2))`
-/

namespace A107797.P15090666620634990944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A182097 (n + 2)).toNat

end

end A107797.P15090666620634990944

namespace A107797

/-- `A000010(A182097(n+2))` -/
def P15090666620634990944.Spec : Prop :=
  ∀ n, P15090666620634990944.a n = A107797 (n + 1)

end A107797

/-! ## A107797.P4501947602053350351

`A000010(∑[sqrt(A133037(n))])`
-/

namespace A107797.P4501947602053350351
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133037 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A107797.P4501947602053350351

namespace A107797

/-- `A000010(∑[sqrt(A133037(n))])` -/
def P4501947602053350351.Spec : Prop :=
  ∀ n, P4501947602053350351.a n = A107797 (n + 1)

end A107797

/-!
# A107798: Primes whose digits do not appear in two previous terms.

The programs for A107798, there is no canonical definition to state claims against.
-/

/-! ## A107798.P12514033822253944653

`A000040(A107799(n+1))`
-/

namespace A107798.P12514033822253944653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A107799 (n + 1)).toNat

end

end A107798.P12514033822253944653

/-! ## A107798.P542354852815677489

`A008578(A107799(n+1)+1)`
-/

namespace A107798.P542354852815677489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A107799 (n + 1) + 1).toNat

end

end A107798.P542354852815677489

/-! ## A107798.P13782424766947684981

`A182986(A107799(n+1)+1)`
-/

namespace A107798.P13782424766947684981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A107799 (n + 1) + 1).toNat

end

end A107798.P13782424766947684981

/-! ## A107798.P15176424265077965381

`A158611(A107799(n+1)+2)`
-/

namespace A107798.P15176424265077965381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A107799 (n + 1) + 2).toNat

end

end A107798.P15176424265077965381

/-! ## A107798.P9913721003322965146

`∑{d}[A107799(n+1), A007444(#)]`
-/

namespace A107798.P9913721003322965146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A107798.P9913721003322965146

/-!
# A107799: Indices of primes occurring in A107798.

The programs for A107799, there is no canonical definition to state claims against.
-/

/-! ## A107799.P11610142978513289359

`A000720(A107798(n+1))`
-/

namespace A107799.P11610142978513289359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A107798 (n + 1)).toNat

end

end A107799.P11610142978513289359

/-! ## A107799.P16519458230211568217

`∑{d}[A107798(n+1), A061395(#)]`
-/

namespace A107799.P16519458230211568217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A107799.P16519458230211568217

