import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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

/-!
# A203302: Cumulative sums of A201206.

The programs for A203302, there is no canonical definition to state claims against.
-/

/-! ## A203302.P13511116714089335374

`floor(sqrt((3/2+n)^3))`
-/

namespace A203302.P13511116714089335374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (((3 : ℚ) / 2 + (n : ℚ)) ^ 3 : ℝ)⌋

end

end A203302.P13511116714089335374

/-! ## A203302.P12674084332730830831

`record[floor(sqrt((abs(3-2*n)/2)^3))]`
-/

namespace A203302.P12674084332730830831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (((|3 - (2 * n : ℤ)| : ℚ) / 2) ^ 3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203302.P12674084332730830831

/-! ## A203302.P17572408982584153372

`∑[Δ[floor(((2*n+1)/2)^(3/2))]%13]`
-/

namespace A203302.P17572408982584153372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n + 1 : ℚ) / 2 : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203302.P17572408982584153372

/-! ## A203302.P3424350875223860875

`∑[and(15, Δ[floor(((2*n+1)/2)^(3/2))])]`
-/

namespace A203302.P3424350875223860875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n + 1 : ℚ) / 2 : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203302.P3424350875223860875

/-! ## A203302.P15918096546848095470

`Δ[floor(((2*n+1)/2)^(3/2))]+a(n-1)` with `a(0)=1`
-/

namespace A203302.P15918096546848095470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n + 1 : ℚ) / 2 : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A203302.P15918096546848095470

/-! ## A203302.P6659343620763030480

`∑[A201206(n+1)]`
-/

namespace A203302.P6659343620763030480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203302.P6659343620763030480

/-!
# A203303: Vandermonde determinant of the first n terms of (1,2,4,8,16,...).

The programs for A203303, there is no canonical definition to state claims against.
-/

/-! ## A203303.P3054881414720805512

`∏[C(2^n, 2)*a(n-1)]` with `a(0)=1`
-/

namespace A203303.P3054881414720805512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose (2 ^ n) 2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203303.P3054881414720805512

/-! ## A203303.P431824544277838719

`∏[∏[ceil(4^n/2)-floor(2^(n-1))]]`
-/

namespace A203303.P431824544277838719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ n : ℚ) / 2⌉ - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203303.P431824544277838719

/-! ## A203303.P7295097884985438354

`∏[sqrt(A002884(n))]²`
-/

namespace A203303.P7295097884985438354
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002884 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A203303.P7295097884985438354

/-! ## A203303.P6410130209810689787

`∏[sqrt(n!*A053601(n))]²`
-/

namespace A203303.P6410130209810689787
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((Nat.factorial n : ℤ) * A053601 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A203303.P6410130209810689787

/-! ## A203303.P2971817945032823037

`lcm(∏[A002884(n)], A053601(n))`
-/

namespace A203303.P2971817945032823037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002884 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∏ j ∈ Finset.range (n + 1), f1 j) (A053601 n)

end

end A203303.P2971817945032823037

/-!
# A203304: Positive numbers n such that n and phi(n) contain digits 0 and 1 only.

The programs for A203304, there is no canonical definition to state claims against.
-/

/-! ## A203304.P10911228332697231904

`∩[A077813(n+1), A385345(n+1)]`
-/

namespace A203304.P10911228332697231904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A203304.P10911228332697231904

/-! ## A203304.P3914824005156878621

`∩[A206159(n+1), A007088(n)]`
-/

namespace A203304.P3914824005156878621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A203304.P3914824005156878621

/-! ## A203304.P6238024876426848900

`∩[A077813(n+1), A206159(n+1)]`
-/

namespace A203304.P6238024876426848900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A203304.P6238024876426848900

/-! ## A203304.P15172726552052950442

`∩[A206159(n+1), A280049(n+1)]`
-/

namespace A203304.P15172726552052950442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A203304.P15172726552052950442

/-! ## A203304.P6376249936687806762

`∩[A280049(n+1), A385345(n+1)]`
-/

namespace A203304.P6376249936687806762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A203304.P6376249936687806762

/-! ## A203304.P4907626920124883620

`∩[A385345(n+1), A265747(n)]`
-/

namespace A203304.P4907626920124883620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A203304.P4907626920124883620

/-! ## A203304.P6256923831951359773

`∩[A385345(n+1), A340051(n)]`
-/

namespace A203304.P6256923831951359773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340051 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A203304.P6256923831951359773

/-! ## A203304.P5068593479747719951

`∩[A385345(n+1), A169683(n)]`
-/

namespace A203304.P5068593479747719951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169683 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A203304.P5068593479747719951

/-! ## A203304.P17289544621710166211

`∩[A206159(n+1), A317204(n)]`
-/

namespace A203304.P17289544621710166211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317204 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A203304.P17289544621710166211

/-! ## A203304.P8888445564182879943

`∩[A099821(n+1), A206159(n+1)]`
-/

namespace A203304.P8888445564182879943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A203304.P8888445564182879943

/-!
# A203305: Vandermonde determinant of the first n terms of (1,3,7,15,31,...).

The programs for A203305, there is no canonical definition to state claims against.
-/

/-! ## A203305.P13142119891935717028

`∏[A028365(n)]`
-/

namespace A203305.P13142119891935717028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203305.P13142119891935717028

/-! ## A203305.P15450026658195348281

`∏[∏[record[A279879(n)]]]`
-/

namespace A203305.P15450026658195348281
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203305.P15450026658195348281

/-! ## A203305.P7811858490179068752

`∏[∏[record[A288663(n)]]]`
-/

namespace A203305.P7811858490179068752
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288663 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203305.P7811858490179068752

/-! ## A203305.P7597753195305533089

`∏[2^n*A002884(n)]`
-/

namespace A203305.P7597753195305533089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A002884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203305.P7597753195305533089

/-! ## A203305.P12993924950084400925

`∏[2^n]*A203303(n+1)`
-/

namespace A203305.P12993924950084400925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A203303 (n + 1)

end

end A203305.P12993924950084400925

/-!
# A203306: Vandermonde determinant of (1!, 2!, 3!, ..., n!).

The programs for A203306, there is no canonical definition to state claims against.
-/

/-! ## A203306.P11999134091234947067

`∏[A203308(n)]/A203308(n)`
-/

namespace A203306.P11999134091234947067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203308 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A203308 n : ℚ)

end

end A203306.P11999134091234947067

/-!
# A203307: a(n) = v(n+1)/(2*v(n)), where v = A203305.

The programs for A203307, the canonical program `A203307.P15403217758868856959` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203307 has offset 1).

The definition of A203307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203307.P15403217758868856959

`1/2*A028365(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A203307

/-- `1/2*A028365(n+1)` -/
def P15403217758868856959.Spec : Prop :=
  ∀ n, P15403217758868856959.a n = (A203307 (n + 1) : ℚ)

end A203307

/-! ## A203307.P2228325131543411639

`2^(n+1)*∑[2^n]*a(n-1)` with `a(0)=1`
-/

namespace A203307.P2228325131543411639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 ^ (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) * a (n - 1)

end

end A203307.P2228325131543411639

namespace A203307

/-- `2^(n+1)*∑[2^n]*a(n-1)` -/
def P2228325131543411639.Spec : Prop :=
  ∀ n, (P2228325131543411639.a n : ℤ) = A203307 (n + 1)

end A203307

/-! ## A203307.P1902830735302893933

`2*2^n*∑[2^n]*a(n-1)` with `a(0)=1`
-/

namespace A203307.P1902830735302893933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j) * a (n - 1))

end

end A203307.P1902830735302893933

namespace A203307

/-- `2*2^n*∑[2^n]*a(n-1)` -/
def P1902830735302893933.Spec : Prop :=
  ∀ n, (P1902830735302893933.a n : ℤ) = A203307 (n + 1)

end A203307

/-! ## A203307.P2890700274887374566

`A028365(n+1)/2`
-/

namespace A203307.P2890700274887374566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028365 (n + 1) : ℚ) / 2

end

end A203307.P2890700274887374566

namespace A203307

/-- `A028365(n+1)/2` -/
def P2890700274887374566.Spec : Prop :=
  ∀ n, P2890700274887374566.a n = (A203307 (n + 1) : ℚ)

end A203307

/-! ## A203307.P7930854461011569268

`∏[record[A288663(n+2)]]`
-/

namespace A203307.P7930854461011569268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288663 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203307.P7930854461011569268

namespace A203307

/-- `∏[record[A288663(n+2)]]` -/
def P7930854461011569268.Spec : Prop :=
  ∀ n, P7930854461011569268.a n = A203307 (n + 1)

end A203307

/-!
# A203308: a(n) = A203306(n+1)/A203306(n).

The programs for A203308, there is no canonical definition to state claims against.
-/

/-! ## A203308.P12110970201953565962

`A203306(n+1)/A203306(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A203308.P12110970201953565962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203306 (n + 1) : ℚ) / (A203306 n : ℚ)

end

end A203308.P12110970201953565962

/-! ## A203308.P15148093147010638241

`ratio[A203306(n)]`
-/

namespace A203308.P15148093147010638241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203306 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203308.P15148093147010638241

/-!
# A203309: Vandermonde determinant of the first n triangular numbers.

The programs for A203309, there is no canonical definition to state claims against.
-/

/-! ## A203309.P11149370961229630895

`∏[A000680(n)/A179865(n+1)]`
-/

namespace A203309.P11149370961229630895
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000680 n : ℚ) / (A179865 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203309.P11149370961229630895

/-! ## A203309.P10538059107405617881

`∏[A000680(n)]/A006472(n+1)`
-/

namespace A203309.P10538059107405617881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000680 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A006472 (n + 1) : ℚ)

end

end A203309.P10538059107405617881

/-! ## A203309.P9143315923822139918

`∏[n!*A001497(∑[n])]/A006472(n+1)`
-/

namespace A203309.P9143315923822139918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A001497 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A006472 (n + 1) : ℚ)

end

end A203309.P9143315923822139918

/-! ## A203309.P5590256646360657563

`∏[n!*A028338(∑[n])]/A006472(n+1)`
-/

namespace A203309.P5590256646360657563
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A028338 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A006472 (n + 1) : ℚ)

end

end A203309.P5590256646360657563

/-! ## A203309.P8259622486067761664

`∏[n!*A102625(∑[n])]/A006472(n+1)`
-/

namespace A203309.P8259622486067761664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A102625 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A006472 (n + 1) : ℚ)

end

end A203309.P8259622486067761664

/-!
# A203310: a(n) = A203309(n+1)/A203309(n).

The programs for A203310, the canonical program `A203310.P11218495340775950352` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203310 has offset 0).

The definition of A203310 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203310.P11218495340775950352

`n!*(2*n+2)!/(2^n*(n+2)!)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203310

/-- `n!*(2*n+2)!/(2^n*(n+2)!)` -/
def P11218495340775950352.Spec : Prop :=
  ∀ n, P11218495340775950352.a n = (A203310 n : ℚ)

end A203310

/-! ## A203310.P17613134120362487228

`A203309(n+1)/A203309(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A203310.P17613134120362487228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203309 (n + 1) : ℚ) / (A203309 n : ℚ)

end

end A203310.P17613134120362487228

namespace A203310

/-- `A203309(n+1)/A203309(n)` -/
def P17613134120362487228.Spec : Prop :=
  ∀ n, P17613134120362487228.a n = (A203310 n : ℚ)

end A203310

/-! ## A203310.P12647506293794612446

`∏[(2*n+1)*(n+1)]/∑[n+1]`
-/

namespace A203310.P12647506293794612446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A203310.P12647506293794612446

namespace A203310

/-- `∏[(2*n+1)*(n+1)]/∑[n+1]` -/
def P12647506293794612446.Spec : Prop :=
  ∀ n, P12647506293794612446.a n = (A203310 n : ℚ)

end A203310

/-! ## A203310.P6986135736106293677

`(2*n+1)*∑[2*n]/(n+2)*a(n-1)` with `a(0)=1`
-/

namespace A203310.P6986135736106293677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1 : ℚ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 2 : ℚ) * a (n - 1))

end

end A203310.P6986135736106293677

namespace A203310

/-- `(2*n+1)*∑[2*n]/(n+2)*a(n-1)` -/
def P6986135736106293677.Spec : Prop :=
  ∀ n, P6986135736106293677.a n = (A203310 n : ℚ)

end A203310

/-! ## A203310.P12173867219009899347

`A000108(n+1)*A006472(n+1)`
-/

namespace A203310.P12173867219009899347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A006472 (n + 1)

end

end A203310.P12173867219009899347

namespace A203310

/-- `A000108(n+1)*A006472(n+1)` -/
def P12173867219009899347.Spec : Prop :=
  ∀ n, P12173867219009899347.a n = A203310 n

end A203310

/-!
# A203311: Vandermonde determinant of (1,2,3,...,F(n+1)), where F=A000045 (Fibonacci numbers).

The programs for A203311, there is no canonical definition to state claims against.
-/

/-! ## A203311.P15035871005761219890

`2*A091777(a(n-2)+1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A203311.P15035871005761219890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  2 * A091777 (a (n - 2) + 1).toNat

end

end A203311.P15035871005761219890

/-! ## A203311.P11427482127687935943

`A115387(A054423(n))`
-/

namespace A203311.P11427482127687935943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115387 (A054423 n).toNat

end

end A203311.P11427482127687935943

/-!
# A203312: Vandermonde sequence using x^2 - xy + y^2 applied to (1,2,...,n).

The programs for A203312, there is no canonical definition to state claims against.
-/

/-! ## A203312.P5339978175164271422

`a(n-1)*A203765(2*n)` with `a(0)=1`
-/

namespace A203312.P5339978175164271422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A203765 (2 * n)

end

end A203312.P5339978175164271422

/-! ## A203312.P17829021538919491455

`∏[A203754(2*n+1)²/A203754(2*n+2)]`
-/

namespace A203312.P17829021538919491455
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203754 (2 * n + 1) ^ 2 : ℚ) / (A203754 (2 * n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203312.P17829021538919491455

/-! ## A203312.P3704556218302392015

`∏[A203513(n+1)]/A203513(n+1)`
-/

namespace A203312.P3704556218302392015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203513 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A203513 (n + 1) : ℚ)

end

end A203312.P3704556218302392015

/-! ## A203312.P7644360481965241952

`∏[A203765(record[A170770(n)])]`
-/

namespace A203312.P7644360481965241952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170770 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203765 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203312.P7644360481965241952

/-!
# A203313: a(n) = v(n)/A000178(n) where v=A203311 and A000178=(superfactorials).

The programs for A203313, there is no canonical definition to state claims against.
-/

/-! ## A203313.P10505313273510041793

`A203311(n+1)/A000178(n)`
-/

namespace A203313.P10505313273510041793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203311 (n + 1) : ℚ) / (A000178 n : ℚ)

end

end A203313.P10505313273510041793

/-! ## A203313.P3401251789014211297

`A203311(n+1)/∏[A000142(n)]`
-/

namespace A203313.P3401251789014211297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203311 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A203313.P3401251789014211297

/-! ## A203313.P392368800127891218

`A203311(n+1)/∏[A154658(n)]`
-/

namespace A203313.P392368800127891218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154658 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203311 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A203313.P392368800127891218

/-! ## A203313.P5644862454185979315

`A203311(n+1)/A203315(n+1)*A203317(n+1)`
-/

namespace A203313.P5644862454185979315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203311 (n + 1) : ℚ) / (A203315 (n + 1) : ℚ) * (A203317 (n + 1) : ℚ)

end

end A203313.P5644862454185979315

/-! ## A203313.P18193020177101377332

`abs(A123742(n+1)/A000178(n))`
-/

namespace A203313.P18193020177101377332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A123742 (n + 1) : ℚ) / (A000178 n : ℚ)|

end

end A203313.P18193020177101377332

/-!
# A203314: a(n) = A080358(n)/A000178(n) where A000178 are superfactorials.

The programs for A203314, there is no canonical definition to state claims against.
-/

/-! ## A203314.P4003529987690373704

`∏[A086803(A028310(n))/A000142(n)]`
-/

namespace A203314.P4003529987690373704
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086803 (A028310 n).toNat : ℚ) / (A000142 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203314.P4003529987690373704

/-! ## A203314.P6480514101473694833

`∏[A086803(n+1)/A000142(n)]/A086803(n+1)`
-/

namespace A203314.P6480514101473694833
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086803 (n + 1) : ℚ) / (A000142 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / (A086803 (n + 1) : ℚ)

end

end A203314.P6480514101473694833

/-! ## A203314.P13460203780158218774

`A080358(n+1)/A000178(n)`
-/

namespace A203314.P13460203780158218774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080358 (n + 1) : ℚ) / (A000178 n : ℚ)

end

end A203314.P13460203780158218774

/-! ## A203314.P16557186494193117954

`A080358(n+1)/∏[A000142(n)]`
-/

namespace A203314.P16557186494193117954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080358 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A203314.P16557186494193117954

/-! ## A203314.P15882954323059334167

`A080358(n+1)/∏[∏[A028310(n)]]`
-/

namespace A203314.P15882954323059334167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080358 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A203314.P15882954323059334167

/-!
# A203315: Vandermonde determinant of the first n odd primes.

The programs for A203315, there is no canonical definition to state claims against.
-/

/-! ## A203315.P7226707409836730334

`∏[n!]*A203317(n+1)`
-/

namespace A203315.P7226707409836730334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A203317 (n + 1)

end

end A203315.P7226707409836730334

/-! ## A203315.P14552572218618561398

`2*a(n-1)*A203316(n)` with `a(0)=1`
-/

namespace A203315.P14552572218618561398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) * A203316 n

end

end A203315.P14552572218618561398

/-! ## A203315.P17544703725669811503

`A000178(n)*A203317(n+1)`
-/

namespace A203315.P17544703725669811503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n * A203317 (n + 1)

end

end A203315.P17544703725669811503

/-! ## A203315.P9314662877577824400

`A203311(n+1)/A203313(n+1)*A203317(n+1)`
-/

namespace A203315.P9314662877577824400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203311 (n + 1) : ℚ) / (A203313 (n + 1) : ℚ) * (A203317 (n + 1) : ℚ)

end

end A203315.P9314662877577824400

/-!
# A203316: a(n) = v(n+1)/(2*v(n)), where v=A203315.

The programs for A203316, there is no canonical definition to state claims against.
-/

/-! ## A203316.P15468120193453621631

`ratio[A203315(n+1)]/2`
-/

namespace A203316.P15468120193453621631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203315 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) / 2

end

end A203316.P15468120193453621631

/-! ## A203316.P13142204036920797654

`ratio[A000178(n)*A203317(n+1)]/2`
-/

namespace A203316.P13142204036920797654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n * A203317 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) / 2

end

end A203316.P13142204036920797654

/-! ## A203316.P7741115921332699898

`A203315(n+2)/(2*A203315(n+1))`
-/

namespace A203316.P7741115921332699898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203315 (n + 2) : ℚ) / (2 * A203315 (n + 1) : ℚ)

end

end A203316.P7741115921332699898

/-! ## A203316.P13602976039872980954

`2^A008683(A065091(n+1))*ratio[A203315(n+1)]`
-/

namespace A203316.P13602976039872980954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203315 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A065091 (n + 1)).toNat : ℤ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A203316.P13602976039872980954

/-!
# A203317: a(n) = A203315(n)/A000178(n) where A000178=(superfactorials).

The programs for A203317, there is no canonical definition to state claims against.
-/

/-! ## A203317.P5471637879632924293

`A203315(n+1)/A000178(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A203317.P5471637879632924293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203315 (n + 1) : ℚ) / (A000178 n : ℚ)

end

end A203317.P5471637879632924293

/-! ## A203317.P15282716255997619348

`A203315(n+1)/A290518(∑[n])`
-/

namespace A203317.P15282716255997619348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203315 (n + 1) : ℚ) / (A290518 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A203317.P15282716255997619348

/-! ## A203317.P11284517767976899306

`A203315(n+1)/∏[A000142(n)]`
-/

namespace A203317.P11284517767976899306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203315 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A203317.P11284517767976899306

/-! ## A203317.P12303438377271976097

`A203315(n+1)/(A030428(n)+1)`
-/

namespace A203317.P12303438377271976097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203315 (n + 1) : ℚ) / (A030428 n + 1 : ℚ)

end

end A203317.P12303438377271976097

/-!
# A203318: G.f.: exp( Sum_{n>=1} x^n/n * exp( Sum_{k>=1} Lucas(n*k)*x^(n*k)/k ) ) where Lucas(n) = A000032(n).

The programs for A203318, there is no canonical definition to state claims against.
-/

/-! ## A203318.P17192060211938446963

`A103128(A130689(n)*A148088(n))`
-/

namespace A203318.P17192060211938446963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A130689 n * A148088 n).toNat

end

end A203318.P17192060211938446963

/-! ## A203318.P15673250135217814725

`or(A011782(n), A297232(A033321(n)))`
-/

namespace A203318.P15673250135217814725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011782 n) (A297232 (A033321 n).toNat)

end

end A203318.P15673250135217814725

/-! ## A203318.P11866593603067666260

`A059252(A335953(∑[n])+A081294(n))`
-/

namespace A203318.P11866593603067666260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (A335953 (∑ j ∈ Finset.range (n + 1), f1 j) + A081294 n).toNat

end

end A203318.P11866593603067666260

/-! ## A203318.P4962551010466499213

`A334107(A083699(n+1))+A011782(n)`
-/

namespace A203318.P4962551010466499213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334107 (A083699 (n + 1)).toNat + A011782 n

end

end A203318.P4962551010466499213

/-!
# A203319: a(n) = n*Fibonacci(n) * Sum_{d|n} 1/(d*Fibonacci(d)).

The programs for A203319, the canonical program `A203319.P11102254697709365866` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203319 has offset 1).

The definition of A203319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203319.P11102254697709365866

`∑{d}[n+1, A045925(n+1)/A045925(#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A203319

/-- `∑{d}[n+1, A045925(n+1)/A045925(#)]` -/
def P11102254697709365866.Spec : Prop :=
  ∀ n, P11102254697709365866.a n = (A203319 (n + 1) : ℚ)

end A203319

/-!
# A203322: Numbers not of the form x^2+2*y^3+3*z^4 for nonnegative x, y, z.

The programs for A203322, there is no canonical definition to state claims against.
-/

/-! ## A203322.P4065397861721363010

`comp[A337133(n+1)]`
-/

namespace A203322.P4065397861721363010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A203322.P4065397861721363010

/-! ## A203322.P4380700596737309754

`lt[char[A337133(ceil((n-1)/2)+1)], 1]`
-/

namespace A203322.P4380700596737309754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337133 (⌈((n : ℤ) - 1 : ℚ) / 2⌉ + 1).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A203322.P4380700596737309754

/-! ## A203322.P18306410032385096424

`lt[n*(char[A337133(ceil(n/2)+1)]+1), 2*n]`
-/

namespace A203322.P18306410032385096424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337133 (⌈(n : ℚ) / 2⌉ + 1).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A203322.P18306410032385096424

/-! ## A203322.P12234533700719695819

`lt[char[A337133(n+1)]*A064987(n+1), 1]`
-/

namespace A203322.P12234533700719695819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337133 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A064987 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A203322.P12234533700719695819

/-! ## A203322.P197314524580186785

`lt[char[A337133(n+1)]*A312079(n), 1]`
-/

namespace A203322.P197314524580186785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337133 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A312079 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A203322.P197314524580186785

/-!
# A203323: Number of n X n 0..2 arrays with the row and column sums nondecreasing.

The programs for A203323, there is no canonical definition to state claims against.
-/

/-! ## A203323.P5469172759951392344

`A203330(∑[4*n]+1)`
-/

namespace A203323.P5469172759951392344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203330 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203323.P5469172759951392344

/-!
# A203324: Number of nX2 0..2 arrays with the row and column sums nondecreasing.

The programs for A203324, there is no canonical definition to state claims against.
-/

/-! ## A203324.P7059305521012274724

`A203330(∑[n+1]+2)`
-/

namespace A203324.P7059305521012274724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203330 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203324.P7059305521012274724

/-! ## A203324.P102112027256080503

`record[A010054(n)*A203330(n+2)]`
-/

namespace A203324.P102112027256080503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A203330 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203324.P102112027256080503

/-! ## A203324.P5283155529473018696

`record[A203330(n+3)/A133371(n)]`
-/

namespace A203324.P5283155529473018696
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203330 (n + 3) : ℚ) / (A133371 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203324.P5283155529473018696

/-! ## A203324.P15040597492286985839

`record[gcd(A002262(n), A203330(n+2))]`
-/

namespace A203324.P15040597492286985839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A203330 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203324.P15040597492286985839

/-! ## A203324.P6096036866463039386

`record[root(A203330(n+2), A057555(2*n+1))]`
-/

namespace A203324.P6096036866463039386
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203330 (n + 2) : ℝ) ^ (1 / (A057555 (2 * n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203324.P6096036866463039386

/-!
# A203325: Number of nX3 0..2 arrays with the row and column sums nondecreasing.

The programs for A203325, there is no canonical definition to state claims against.
-/

/-! ## A203325.P7680009565393668211

`A203330(∑[n+2]+4)`
-/

namespace A203325.P7680009565393668211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203330 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203325.P7680009565393668211

/-! ## A203325.P13533169645770270285

`abs(2-A203330(A167614(n+1)))+2`
-/

namespace A203325.P13533169645770270285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A203330 (A167614 (n + 1)).toNat| + 2

end

end A203325.P13533169645770270285

/-! ## A203325.P11869135368623896865

`abs(2-A203330(A055998(n)+6))+2`
-/

namespace A203325.P11869135368623896865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A203330 (A055998 n + 6).toNat| + 2

end

end A203325.P11869135368623896865

/-! ## A203325.P4365483511329765969

`record[A010054(n+1)*A203330(n+4)]`
-/

namespace A203325.P4365483511329765969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A203330 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203325.P4365483511329765969

/-! ## A203325.P4539141411477809288

`A203330(A167614(n+1))+A011745(n)`
-/

namespace A203325.P4539141411477809288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203330 (A167614 (n + 1)).toNat + A011745 n

end

end A203325.P4539141411477809288

/-!
# A203326: Number of nX4 0..2 arrays with the row and column sums nondecreasing.

The programs for A203326, there is no canonical definition to state claims against.
-/

/-! ## A203326.P8575517345903064420

`A203330(∑[n+3]+7)`
-/

namespace A203326.P8575517345903064420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203330 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A203326.P8575517345903064420

/-!
# A203327: Number of nX5 0..2 arrays with the row and column sums nondecreasing.

The programs for A203327, there is no canonical definition to state claims against.
-/

/-! ## A203327.P4697965315608616785

`A203330(C(n+6, 2)-n)`
-/

namespace A203327.P4697965315608616785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203330 (Nat.choose (n + 6) 2 - n)

end

end A203327.P4697965315608616785

/-! ## A203327.P2149223433340445757

`A203330(record[a(n-1)+n]+5)` with `a(0)=10, a(1)=1`
-/

namespace A203327.P2149223433340445757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 1] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 5)

end

end A203327.P2149223433340445757

/-! ## A203327.P10750124006698642276

`A203330(A167499(n+3))`
-/

namespace A203327.P10750124006698642276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203330 (A167499 (n + 3)).toNat

end

end A203327.P10750124006698642276

/-! ## A203327.P15955893904610488795

`A203330(A155212(n)+13)`
-/

namespace A203327.P15955893904610488795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203330 (A155212 n + 13).toNat

end

end A203327.P15955893904610488795

/-!
# A203328: Number of nX6 0..2 arrays with the row and column sums nondecreasing.

The programs for A203328, there is no canonical definition to state claims against.
-/

/-! ## A203328.P3337571723129709530

`A203330(A374007(n+1))`
-/

namespace A203328.P3337571723129709530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203330 (A374007 (n + 1)).toNat

end

end A203328.P3337571723129709530

/-!
# A203329: Number of nX7 0..2 arrays with the row and column sums nondecreasing.

The programs for A203329, there is no canonical definition to state claims against.
-/

/-! ## A203329.P11159628167020511993

`A203330(A374008(n+1))`
-/

namespace A203329.P11159628167020511993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203330 (A374008 (n + 1)).toNat

end

end A203329.P11159628167020511993

/-!
# A203331: Number of n X n 0..5 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203331, there is no canonical definition to state claims against.
-/

/-! ## A203331.P14219624885144496502

`A203338((n+1)²+n²)`
-/

namespace A203331.P14219624885144496502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203338 ((n + 1) ^ 2 + n ^ 2)

end

end A203331.P14219624885144496502

/-!
# A203332: Number of nX2 0..5 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203332, there is no canonical definition to state claims against.
-/

/-! ## A203332.P14541185011002375183

`record[ratio[A203338(n+1)]]`
-/

namespace A203332.P14541185011002375183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203338 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203332.P14541185011002375183

/-! ## A203332.P5208930573549923731

`A203338(∑[n+1]+2)`
-/

namespace A203332.P5208930573549923731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203338 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203332.P5208930573549923731

/-! ## A203332.P7358075066316973660

`record[root(A203338(n+1), A245980(n))]`
-/

namespace A203332.P7358075066316973660
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203338 (n + 1) : ℝ) ^ (1 / (A245980 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203332.P7358075066316973660

/-! ## A203332.P8659759688216471901

`record[gcd(A091866(n), A203338(n+1))]`
-/

namespace A203332.P8659759688216471901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091866 n) (A203338 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203332.P8659759688216471901

/-! ## A203332.P13571620861842486343

`record[A203338(n+2)/A203338(n+1)]`
-/

namespace A203332.P13571620861842486343
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203338 (n + 2) : ℚ) / (A203338 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203332.P13571620861842486343

/-!
# A203333: Number of nX3 0..5 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203333, there is no canonical definition to state claims against.
-/

/-! ## A203333.P14929928587429490261

`A203338(∑[n+2]+4)`
-/

namespace A203333.P14929928587429490261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203338 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203333.P14929928587429490261

/-! ## A203333.P4042691494704981606

`A203338(A167614(n+1))^ceil(acot(n))`
-/

namespace A203333.P4042691494704981606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203338 (A167614 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A203333.P4042691494704981606

/-! ## A203333.P8158657595122886799

`record[gcd(1-A091866(n), A203338(n+1))]`
-/

namespace A203333.P8158657595122886799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A091866 n) (A203338 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203333.P8158657595122886799

/-! ## A203333.P2125711338207976588

`A203338(A167614(n+1))+A011731(n)`
-/

namespace A203333.P2125711338207976588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203338 (A167614 (n + 1)).toNat + A011731 n

end

end A203333.P2125711338207976588

/-! ## A203333.P16670768868484720892

`A203338(A167614(n+1))+A185284(n)`
-/

namespace A203333.P16670768868484720892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203338 (A167614 (n + 1)).toNat + A185284 n

end

end A203333.P16670768868484720892

/-!
# A203334: Number of nX4 0..5 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203334, there is no canonical definition to state claims against.
-/

/-! ## A203334.P6423151769538526660

`A203338(A374004(n+1))`
-/

namespace A203334.P6423151769538526660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203338 (A374004 (n + 1)).toNat

end

end A203334.P6423151769538526660

/-! ## A203334.P9866928096875881248

`A203338(A052905(n)+9)`
-/

namespace A203334.P9866928096875881248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203338 (A052905 n + 9).toNat

end

end A203334.P9866928096875881248

/-! ## A203334.P17445578010289372576

`A203338(A167614(n+2)+1)`
-/

namespace A203334.P17445578010289372576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203338 (A167614 (n + 2) + 1).toNat

end

end A203334.P17445578010289372576

/-! ## A203334.P1950473999507916803

`A203338(A141214(n+1))`
-/

namespace A203334.P1950473999507916803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203338 (A141214 (n + 1)).toNat

end

end A203334.P1950473999507916803

/-! ## A203334.P6447250463133777771

`A203338(A155212(n)+5)`
-/

namespace A203334.P6447250463133777771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203338 (A155212 n + 5).toNat

end

end A203334.P6447250463133777771

/-!
# A203335: Number of nX5 0..5 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203335, there is no canonical definition to state claims against.
-/

/-! ## A203335.P15137567344267546391

`A203338(A374005(n+1))`
-/

namespace A203335.P15137567344267546391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203338 (A374005 (n + 1)).toNat

end

end A203335.P15137567344267546391

/-! ## A203335.P9523110350733246714

`A203338(A155212(n)+13)`
-/

namespace A203335.P9523110350733246714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203338 (A155212 n + 13).toNat

end

end A203335.P9523110350733246714

/-! ## A203335.P11177304738268380034

`A203338(A056000(n)+15)`
-/

namespace A203335.P11177304738268380034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203338 (A056000 n + 15).toNat

end

end A203335.P11177304738268380034

/-! ## A203335.P8348217253226407598

`A203338(eq[7, A066657(n)])`
-/

namespace A203335.P8348217253226407598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203335.P8348217253226407598

/-! ## A203335.P16665061287502484023

`A203338(A167614(n+3)+2)`
-/

namespace A203335.P16665061287502484023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203338 (A167614 (n + 3) + 2).toNat

end

end A203335.P16665061287502484023

/-!
# A203336: Number of nX6 0..5 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203336, there is no canonical definition to state claims against.
-/

/-! ## A203336.P13537635866571407194

`A203338(A374007(n+1))`
-/

namespace A203336.P13537635866571407194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203338 (A374007 (n + 1)).toNat

end

end A203336.P13537635866571407194

/-! ## A203336.P8216754133941521072

`A203338(A052905(n+3))`
-/

namespace A203336.P8216754133941521072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203338 (A052905 (n + 3)).toNat

end

end A203336.P8216754133941521072

/-! ## A203336.P9532867449345050153

`A203338(A056115(n)+21)`
-/

namespace A203336.P9532867449345050153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203338 (A056115 n + 21).toNat

end

end A203336.P9532867449345050153

/-!
# A203337: Number of nX7 0..5 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203337, there is no canonical definition to state claims against.
-/

/-! ## A203337.P11763576471594901133

`A203338(eq[7, A200370(n+1)])`
-/

namespace A203337.P11763576471594901133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203337.P11763576471594901133

/-!
# A203338: T(n,k)=Number of nXk 0..5 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203338, there is no canonical definition to state claims against.
-/

/-! ## A203338.P18199035933632079961

`A053873(A143007(n))`
-/

namespace A203338.P18199035933632079961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053873 (A143007 n).toNat

end

end A203338.P18199035933632079961

/-! ## A203338.P804612413896129306

`A051677(A157221(n))`
-/

namespace A203338.P804612413896129306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051677 (A157221 n).toNat

end

end A203338.P804612413896129306

/-! ## A203338.P17732704463977865560

`A169915(A172339(n))`
-/

namespace A203338.P17732704463977865560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169915 (A172339 n).toNat

end

end A203338.P17732704463977865560

/-! ## A203338.P9536549646464333942

`A203057(A157243(n))`
-/

namespace A203338.P9536549646464333942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203057 (A157243 n).toNat

end

end A203338.P9536549646464333942

/-! ## A203338.P6858337746529888711

`A320226(A154334(n))`
-/

namespace A203338.P6858337746529888711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320226 (A154334 n).toNat

end

end A203338.P6858337746529888711

/-!
# A203339: Number of n X n 0..4 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203339, there is no canonical definition to state claims against.
-/

/-! ## A203339.P12096428196741356996

`A203346(∑[4*n]+1)`
-/

namespace A203339.P12096428196741356996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203346 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203339.P12096428196741356996

/-!
# A203340: Number of nX2 0..4 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203340, there is no canonical definition to state claims against.
-/

/-! ## A203340.P9954368318709309696

`record[ratio[A203346(n+1)]]`
-/

namespace A203340.P9954368318709309696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203346 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203340.P9954368318709309696

/-! ## A203340.P381354229943955698

`A203346(∑[n+1]+2)`
-/

namespace A203340.P381354229943955698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203346 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203340.P381354229943955698

/-! ## A203340.P6751686874728677312

`record[A203346(n+1)/A294746(n)]`
-/

namespace A203340.P6751686874728677312
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203346 (n + 1) : ℚ) / (A294746 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203340.P6751686874728677312

/-! ## A203340.P14766086069330042568

`record[root(A203346(n+1), A242784(n))]`
-/

namespace A203340.P14766086069330042568
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203346 (n + 1) : ℝ) ^ (1 / (A242784 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203340.P14766086069330042568

/-! ## A203340.P11036396121205439138

`record[gcd(A159854(n), A203346(n+1))]`
-/

namespace A203340.P11036396121205439138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A159854 n) (A203346 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203340.P11036396121205439138

/-!
# A203341: Number of nX3 0..4 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203341, there is no canonical definition to state claims against.
-/

/-! ## A203341.P5229986356269618171

`A203346(∑[n+2]+4)`
-/

namespace A203341.P5229986356269618171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203346 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203341.P5229986356269618171

/-! ## A203341.P1913396904964042119

`record[gcd(1-A159854(n), A203346(n+1))]`
-/

namespace A203341.P1913396904964042119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A159854 n) (A203346 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203341.P1913396904964042119

/-! ## A203341.P12502748282785658983

`A203346(A167614(n+1))+A011731(n)`
-/

namespace A203341.P12502748282785658983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203346 (A167614 (n + 1)).toNat + A011731 n

end

end A203341.P12502748282785658983

/-! ## A203341.P542469607997409923

`A203346(A167614(n+1))+A025443(n)`
-/

namespace A203341.P542469607997409923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203346 (A167614 (n + 1)).toNat + A025443 n

end

end A203341.P542469607997409923

/-! ## A203341.P14288597938308186305

`A203346(A167614(n+1))+A056967(n)`
-/

namespace A203341.P14288597938308186305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203346 (A167614 (n + 1)).toNat + A056967 n

end

end A203341.P14288597938308186305

/-!
# A203342: Number of nX4 0..4 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203342, there is no canonical definition to state claims against.
-/

/-! ## A203342.P8201027404389139794

`A203346(A374004(n+1))`
-/

namespace A203342.P8201027404389139794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203346 (A374004 (n + 1)).toNat

end

end A203342.P8201027404389139794

/-! ## A203342.P6333932121063106061

`A203346(A141214(n)+7)`
-/

namespace A203342.P6333932121063106061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203346 (A141214 n + 7).toNat

end

end A203342.P6333932121063106061

/-! ## A203342.P8690192880495049175

`A203346(A052905(n)+9)`
-/

namespace A203342.P8690192880495049175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203346 (A052905 n + 9).toNat

end

end A203342.P8690192880495049175

/-! ## A203342.P2462772529359048888

`A203346(A055999(n)+10)`
-/

namespace A203342.P2462772529359048888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203346 (A055999 n + 10).toNat

end

end A203342.P2462772529359048888

/-! ## A203342.P17983091446973146492

`A203346(eq[5, A066657(n)])`
-/

namespace A203342.P17983091446973146492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203346 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203342.P17983091446973146492

/-!
# A203343: Number of nX5 0..4 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203343, there is no canonical definition to state claims against.
-/

/-! ## A203343.P13625691972078968145

`A203346(A374005(n+1))`
-/

namespace A203343.P13625691972078968145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203346 (A374005 (n + 1)).toNat

end

end A203343.P13625691972078968145

/-! ## A203343.P12833701950203771134

`A203346(A155212(n)+13)`
-/

namespace A203343.P12833701950203771134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203346 (A155212 n + 13).toNat

end

end A203343.P12833701950203771134

/-! ## A203343.P15916997347977081064

`A203346(A056000(n)+15)`
-/

namespace A203343.P15916997347977081064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203346 (A056000 n + 15).toNat

end

end A203343.P15916997347977081064

/-! ## A203343.P7068921488694978291

`A203346(eq[7, A066657(n)])`
-/

namespace A203343.P7068921488694978291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203346 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203343.P7068921488694978291

/-! ## A203343.P4508080840539079766

`A203346(A167614(n+3)+2)`
-/

namespace A203343.P4508080840539079766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203346 (A167614 (n + 3) + 2).toNat

end

end A203343.P4508080840539079766

/-!
# A203344: Number of nX6 0..4 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203344, there is no canonical definition to state claims against.
-/

/-! ## A203344.P398738303096903345

`A203346(A374007(n+1))`
-/

namespace A203344.P398738303096903345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203346 (A374007 (n + 1)).toNat

end

end A203344.P398738303096903345

/-! ## A203344.P10164170217296711419

`A203346(A000217(n+5)+6)`
-/

namespace A203344.P10164170217296711419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203346 (A000217 (n + 5) + 6).toNat

end

end A203344.P10164170217296711419

/-! ## A203344.P17390682228256137125

`A203346(eq[2, A074625(n+1)-2])`
-/

namespace A203344.P17390682228256137125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074625 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203346 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203344.P17390682228256137125

/-!
# A203345: Number of nX7 0..4 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203345, there is no canonical definition to state claims against.
-/

/-! ## A203345.P15882227917020440961

`A203346(A374008(n+1))`
-/

namespace A203345.P15882227917020440961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203346 (A374008 (n + 1)).toNat

end

end A203345.P15882227917020440961

/-!
# A203346: T(n,k)=Number of nXk 0..4 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203346, there is no canonical definition to state claims against.
-/

/-! ## A203346.P9491160487243870141

`A088618(A066094(n))`
-/

namespace A203346.P9491160487243870141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088618 (A066094 n).toNat

end

end A203346.P9491160487243870141

/-! ## A203346.P1829117875748045528

`A002637(A154230(n))`
-/

namespace A203346.P1829117875748045528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002637 (A154230 n).toNat

end

end A203346.P1829117875748045528

/-! ## A203346.P939613236522146769

`A130399(A034802(n))`
-/

namespace A203346.P939613236522146769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130399 (A034802 n).toNat

end

end A203346.P939613236522146769

/-! ## A203346.P17721515619447656592

`A111869(A056941(n))`
-/

namespace A203346.P17721515619447656592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111869 (A056941 n).toNat

end

end A203346.P17721515619447656592

/-! ## A203346.P2603262480688846501

`A057255(A167040(n))`
-/

namespace A203346.P2603262480688846501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057255 (A167040 n).toNat

end

end A203346.P2603262480688846501

/-!
# A203347: Number of (n+2)X(n+2) binary arrays avoiding patterns 010 and 101 in rows, columns and nw-to-se diagonals.

The programs for A203347, there is no canonical definition to state claims against.
-/

/-! ## A203347.P11346185521301689205

`A203355(∑[4*n]+1)`
-/

namespace A203347.P11346185521301689205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203347.P11346185521301689205

/-! ## A203347.P6988051848587257876

`lcm(2, A203355(A001844(n)))`
-/

namespace A203347.P6988051848587257876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203355 (A001844 n).toNat)

end

end A203347.P6988051848587257876

/-! ## A203347.P12585295432354553423

`record[A003982(n)*A203355(n+1)]`
-/

namespace A203347.P12585295432354553423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A203355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203347.P12585295432354553423

/-! ## A203347.P16026414200301782190

`record[gcd(A003987(n), A203355(n+1))]`
-/

namespace A203347.P16026414200301782190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A203355 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203347.P16026414200301782190

/-! ## A203347.P11380633688914436553

`record[A203355(n+1)*A203994(n+1)]`
-/

namespace A203347.P11380633688914436553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (n + 1) * A203994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203347.P11380633688914436553

/-!
# A203348: Number of (n+2)X3 binary arrays avoiding patterns 010 and 101 in rows, columns and nw-to-se diagonals.

The programs for A203348, there is no canonical definition to state claims against.
-/

/-! ## A203348.P8074302327837021536

`A203355(∑[n]+1)`
-/

namespace A203348.P8074302327837021536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203348.P8074302327837021536

/-! ## A203348.P5325717398081350604

`lcm(2, A203355(A000124(n)))`
-/

namespace A203348.P5325717398081350604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203355 (A000124 n).toNat)

end

end A203348.P5325717398081350604

/-! ## A203348.P12921030981647911078

`record[A010054(n)*A203355(n+1)]`
-/

namespace A203348.P12921030981647911078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A203355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203348.P12921030981647911078

/-! ## A203348.P17932856678211849996

`record[A203355(n+1)/A008459(n)]`
-/

namespace A203348.P17932856678211849996
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203355 (n + 1) : ℚ) / (A008459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203348.P17932856678211849996

/-! ## A203348.P624247403958065235

`record[gcd(A002262(n), A203355(n+1))]`
-/

namespace A203348.P624247403958065235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A203355 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203348.P624247403958065235

/-!
# A203349: Number of (n+2)X4 binary arrays avoiding patterns 010 and 101 in rows, columns and nw-to-se diagonals.

The programs for A203349, there is no canonical definition to state claims against.
-/

/-! ## A203349.P1468504008522125830

`A203355(∑[n+1]+2)`
-/

namespace A203349.P1468504008522125830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203349.P1468504008522125830

/-! ## A203349.P14927964550190614959

`record[A010054(n)*A203355(n+2)]`
-/

namespace A203349.P14927964550190614959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A203355 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203349.P14927964550190614959

/-! ## A203349.P9551534179244075748

`record[gcd(A002262(n), A203355(n+2))]`
-/

namespace A203349.P9551534179244075748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A203355 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203349.P9551534179244075748

/-! ## A203349.P4040715482754662690

`record[A203355(A133263(A008612(n)))]`
-/

namespace A203349.P4040715482754662690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (A133263 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203349.P4040715482754662690

/-! ## A203349.P6514806030015580680

`record[A203355(eq[1, A053200(n)])]`
-/

namespace A203349.P6514806030015580680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053200 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203349.P6514806030015580680

/-!
# A203350: Number of (n+2)X5 binary arrays avoiding patterns 010 and 101 in rows, columns and nw-to-se diagonals.

The programs for A203350, there is no canonical definition to state claims against.
-/

/-! ## A203350.P13900225133344991302

`A203355(∑[n+2]+4)`
-/

namespace A203350.P13900225133344991302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203350.P13900225133344991302

/-! ## A203350.P1153677710820706680

`lcm(2, A203355(A167614(n+1)))`
-/

namespace A203350.P1153677710820706680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203355 (A167614 (n + 1)).toNat)

end

end A203350.P1153677710820706680

/-! ## A203350.P2825270819024818822

`A203355(A167614(n+1))+A025444(n)`
-/

namespace A203350.P2825270819024818822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (A167614 (n + 1)).toNat + A025444 n

end

end A203350.P2825270819024818822

/-! ## A203350.P16171410838587743174

`A203355(A167614(n+1))+A076142(n+1)`
-/

namespace A203350.P16171410838587743174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (A167614 (n + 1)).toNat + A076142 (n + 1)

end

end A203350.P16171410838587743174

/-! ## A203350.P5409686600258576223

`A203355(A167614(n+1))%A203351(n+1)`
-/

namespace A203350.P5409686600258576223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203355 (A167614 (n + 1)).toNat) (A203351 (n + 1))

end

end A203350.P5409686600258576223

/-!
# A203351: Number of (n+2)X6 binary arrays avoiding patterns 010 and 101 in rows, columns and nw-to-se diagonals.

The programs for A203351, there is no canonical definition to state claims against.
-/

/-! ## A203351.P10670364404010938905

`A203355(A374004(n+1))`
-/

namespace A203351.P10670364404010938905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (A374004 (n + 1)).toNat

end

end A203351.P10670364404010938905

/-! ## A203351.P863078366793286815

`A203355(A141214(n)+7)`
-/

namespace A203351.P863078366793286815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (A141214 n + 7).toNat

end

end A203351.P863078366793286815

/-! ## A203351.P9356718493504308730

`A203355(A055999(n)+10)`
-/

namespace A203351.P9356718493504308730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (A055999 n + 10).toNat

end

end A203351.P9356718493504308730

/-! ## A203351.P5433028626163662134

`A203355(A167614(n+2)+1)`
-/

namespace A203351.P5433028626163662134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (A167614 (n + 2) + 1).toNat

end

end A203351.P5433028626163662134

/-! ## A203351.P9515564112919919282

`A203355(A167499(n+2)-1)`
-/

namespace A203351.P9515564112919919282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (A167499 (n + 2) - 1).toNat

end

end A203351.P9515564112919919282

/-!
# A203352: Number of (n+2)X7 binary arrays avoiding patterns 010 and 101 in rows, columns and nw-to-se diagonals.

The programs for A203352, there is no canonical definition to state claims against.
-/

/-! ## A203352.P6950354120356351230

`A203355(A374005(n+1))`
-/

namespace A203352.P6950354120356351230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (A374005 (n + 1)).toNat

end

end A203352.P6950354120356351230

/-! ## A203352.P17538900184938208286

`A203355(A167499(n+3))`
-/

namespace A203352.P17538900184938208286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (A167499 (n + 3)).toNat

end

end A203352.P17538900184938208286

/-! ## A203352.P17034856773838808059

`A203355(A000217(n+4)+5)`
-/

namespace A203352.P17034856773838808059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (A000217 (n + 4) + 5).toNat

end

end A203352.P17034856773838808059

/-! ## A203352.P12568703055332476455

`A203355(eq[6, A131818(n+1)])`
-/

namespace A203352.P12568703055332476455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203352.P12568703055332476455

/-! ## A203352.P2807482306645112120

`A203355(A020710(n)+A055999(n)+10)`
-/

namespace A203352.P2807482306645112120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (A020710 n + (A055999 n + 10)).toNat

end

end A203352.P2807482306645112120

/-!
# A203353: Number of (n+2)X8 binary arrays avoiding patterns 010 and 101 in rows, columns and nw-to-se diagonals.

The programs for A203353, there is no canonical definition to state claims against.
-/

/-! ## A203353.P4711489797727675319

`A203355(A374007(n+1))`
-/

namespace A203353.P4711489797727675319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (A374007 (n + 1)).toNat

end

end A203353.P4711489797727675319

/-! ## A203353.P10835158056721241036

`A203355(eq[7, A131818(n+1)])`
-/

namespace A203353.P10835158056721241036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203353.P10835158056721241036

/-! ## A203353.P1976401547026050368

`A203355(eq[3, A219347(n)])`
-/

namespace A203353.P1976401547026050368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203353.P1976401547026050368

/-! ## A203353.P12529847394258169213

`A203355(eq[5, A193592(n)])`
-/

namespace A203353.P12529847394258169213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203353.P12529847394258169213

/-! ## A203353.P5149189377161559655

`A203355(eq[6, A200370(n+1)])`
-/

namespace A203353.P5149189377161559655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203353.P5149189377161559655

/-!
# A203354: Number of (n+2)X9 binary arrays avoiding patterns 010 and 101 in rows, columns and nw-to-se diagonals.

The programs for A203354, there is no canonical definition to state claims against.
-/

/-! ## A203354.P9537678546975727395

`A203355(A374008(n+1))`
-/

namespace A203354.P9537678546975727395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (A374008 (n + 1)).toNat

end

end A203354.P9537678546975727395

/-! ## A203354.P9489677719979567124

`A203355(eq[8, A131818(n+1)])`
-/

namespace A203354.P9489677719979567124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203354.P9489677719979567124

/-! ## A203354.P1441276246349779364

`A203355(A055999(n+4))`
-/

namespace A203354.P1441276246349779364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (A055999 (n + 4)).toNat

end

end A203354.P1441276246349779364

/-! ## A203354.P3955925896543921459

`A203355(eq[4, A219347(n)])`
-/

namespace A203354.P3955925896543921459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203354.P3955925896543921459

/-! ## A203354.P14439804128804575449

`A203355(eq[6, A193592(n)])`
-/

namespace A203354.P14439804128804575449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203354.P14439804128804575449

/-!
# A203356: Number of n X n binary arrays with every 1 immediately preceded by 0 to the left or above.

The programs for A203356, there is no canonical definition to state claims against.
-/

/-! ## A203356.P15279346037329594916

`A203362(∑[4*n]+1)`
-/

namespace A203356.P15279346037329594916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203362 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203356.P15279346037329594916

/-! ## A203356.P17992811239803960131

`record[A203362(Δ[A235355(n)])]`
-/

namespace A203356.P17992811239803960131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203362 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203356.P17992811239803960131

/-! ## A203356.P9248622422789763600

`record[A203362(A330613(n+1))]`
-/

namespace A203356.P9248622422789763600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203362 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203356.P9248622422789763600

/-! ## A203356.P3972469709587949780

`gcd(A000038(n), A203362(A001844(n)))`
-/

namespace A203356.P3972469709587949780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A203362 (A001844 n).toNat)

end

end A203356.P3972469709587949780

/-! ## A203356.P15175323610462631888

`lcm(A033999(n), A203362(A001844(n)))`
-/

namespace A203356.P15175323610462631888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A203362 (A001844 n).toNat)

end

end A203356.P15175323610462631888

/-!
# A203357: Number of n X 3 binary arrays with every 1 immediately preceded by 0 to the left or above.

The programs for A203357, the canonical program `A203357.P12564199531783826951` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203357 has offset 1).

The definition of A203357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203357.P12564199531783826951

`3*a(n-1)+12*a(n-2)+6*a(n-3)+a(n-4)` with `a(0)=3, a(1)=20, a(2)=102, a(3)=565`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203357

/-- `3*a(n-1)+12*a(n-2)+6*a(n-3)+a(n-4)` -/
def P12564199531783826951.Spec : Prop :=
  ∀ n, (P12564199531783826951.a n : ℤ) = A203357 (n + 1)

theorem P12564199531783826951.correct : P12564199531783826951.Spec := by
  intro n
  simp only [A203357, Nat.add_sub_cancel]

end A203357

/-! ## A203357.P6577722580316011483

`A203362(∑[n+2]+4)`
-/

namespace A203357.P6577722580316011483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203362 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203357.P6577722580316011483

namespace A203357

/-- `A203362(∑[n+2]+4)` -/
def P6577722580316011483.Spec : Prop :=
  ∀ n, P6577722580316011483.a n = A203357 (n + 1)

end A203357

/-! ## A203357.P16869873897194923804

`A016030(n)*A203362(A167614(n+1))`
-/

namespace A203357.P16869873897194923804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016030 n * A203362 (A167614 (n + 1)).toNat

end

end A203357.P16869873897194923804

namespace A203357

/-- `A016030(n)*A203362(A167614(n+1))` -/
def P16869873897194923804.Spec : Prop :=
  ∀ n, P16869873897194923804.a n = A203357 (n + 1)

end A203357

/-! ## A203357.P17643035258258389254

`A203362(A167614(n+1))%A029829(n)`
-/

namespace A203357.P17643035258258389254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203362 (A167614 (n + 1)).toNat) (A029829 n)

end

end A203357.P17643035258258389254

namespace A203357

/-- `A203362(A167614(n+1))%A029829(n)` -/
def P17643035258258389254.Spec : Prop :=
  ∀ n, P17643035258258389254.a n = A203357 (n + 1)

end A203357

/-! ## A203357.P14414497270377100694

`lcm(A033999(n), A203362(A167614(n+1)))`
-/

namespace A203357.P14414497270377100694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A203362 (A167614 (n + 1)).toNat)

end

end A203357.P14414497270377100694

namespace A203357

/-- `lcm(A033999(n), A203362(A167614(n+1)))` -/
def P14414497270377100694.Spec : Prop :=
  ∀ n, (P14414497270377100694.a n : ℤ) = A203357 (n + 1)

end A203357

/-!
# A203358: Number of n X 4 binary arrays with every 1 immediately preceded by 0 to the left or above.

The programs for A203358, there is no canonical definition to state claims against.
-/

/-! ## A203358.P2629444302342324782

`A203362(A374004(n+1))`
-/

namespace A203358.P2629444302342324782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203362 (A374004 (n + 1)).toNat

end

end A203358.P2629444302342324782

/-! ## A203358.P3882766657842528932

`A203362(A055999(n)+10)`
-/

namespace A203358.P3882766657842528932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203362 (A055999 n + 10).toNat

end

end A203358.P3882766657842528932

/-! ## A203358.P13417077807257484727

`A203362(A167614(n+2)+1)`
-/

namespace A203358.P13417077807257484727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203362 (A167614 (n + 2) + 1).toNat

end

end A203358.P13417077807257484727

/-! ## A203358.P1793932655251882415

`A203362(A034856(n+2)+6)`
-/

namespace A203358.P1793932655251882415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203362 (A034856 (n + 2) + 6).toNat

end

end A203358.P1793932655251882415

/-! ## A203358.P18429684126841358298

`A203362(Δ[A023545(n+1)-n²])`
-/

namespace A203358.P18429684126841358298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203362 (f1 (n + 1) - f1 n).toNat

end

end A203358.P18429684126841358298

/-!
# A203359: Number of nX5 binary arrays with every 1 immediately preceded by 0 to the left or above.

The programs for A203359, there is no canonical definition to state claims against.
-/

/-! ## A203359.P6928983915214641256

`A203362(A374005(n+1))`
-/

namespace A203359.P6928983915214641256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203362 (A374005 (n + 1)).toNat

end

end A203359.P6928983915214641256

/-! ## A203359.P7507158692532505275

`A203362(A000217(n+4)+5)`
-/

namespace A203359.P7507158692532505275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203362 (A000217 (n + 4) + 5).toNat

end

end A203359.P7507158692532505275

/-! ## A203359.P7109850801610845693

`A203362(eq[6, A131818(n+1)])`
-/

namespace A203359.P7109850801610845693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203359.P7109850801610845693

/-! ## A203359.P12392612971268240446

`A203362(A020710(n)+A055999(n)+10)`
-/

namespace A203359.P12392612971268240446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203362 (A020710 n + (A055999 n + 10)).toNat

end

end A203359.P12392612971268240446

/-! ## A203359.P5519917511664217595

`A203362(∑[n+2]+3*(n+3))`
-/

namespace A203359.P5519917511664217595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203362 (∑ j ∈ Finset.range (n + 1), f1 j + 3 * (n + 3))

end

end A203359.P5519917511664217595

/-!
# A203360: Number of nX6 binary arrays with every 1 immediately preceded by 0 to the left or above.

The programs for A203360, there is no canonical definition to state claims against.
-/

/-! ## A203360.P5867549735522424689

`A203362(A374007(n+1))`
-/

namespace A203360.P5867549735522424689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203362 (A374007 (n + 1)).toNat

end

end A203360.P5867549735522424689

/-! ## A203360.P304327548616277532

`A203362(A000217(n+5)+6)`
-/

namespace A203360.P304327548616277532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203362 (A000217 (n + 5) + 6).toNat

end

end A203360.P304327548616277532

/-! ## A203360.P5844913668504983357

`A203362(eq[7, A131818(n+1)])`
-/

namespace A203360.P5844913668504983357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203360.P5844913668504983357

/-! ## A203360.P15473096692341349311

`A203362(A167614(n+5)-(n+3))`
-/

namespace A203360.P15473096692341349311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203362 (A167614 (n + 5) - (n + 3 : ℤ)).toNat

end

end A203360.P15473096692341349311

/-! ## A203360.P1225055351349536879

`A203362(A052905(n+3))`
-/

namespace A203360.P1225055351349536879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203362 (A052905 (n + 3)).toNat

end

end A203360.P1225055351349536879

/-!
# A203361: Number of nX7 binary arrays with every 1 immediately preceded by 0 to the left or above.

The programs for A203361, there is no canonical definition to state claims against.
-/

/-! ## A203361.P1527874863596489284

`A203362(A374008(n+1))`
-/

namespace A203361.P1527874863596489284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203362 (A374008 (n + 1)).toNat

end

end A203361.P1527874863596489284

/-! ## A203361.P9259157761930031964

`A203362(A056119(n)+28)`
-/

namespace A203361.P9259157761930031964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203362 (A056119 n + 28).toNat

end

end A203361.P9259157761930031964

/-! ## A203361.P973446090564343989

`A203362(A167614(n+5)+4)`
-/

namespace A203361.P973446090564343989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203362 (A167614 (n + 5) + 4).toNat

end

end A203361.P973446090564343989

/-! ## A203361.P13813816927431108967

`A203362(eq[8, A131818(n+1)])`
-/

namespace A203361.P13813816927431108967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203361.P13813816927431108967

/-! ## A203361.P9404449317343861353

`A203362(eq[4, A219347(n)])`
-/

namespace A203361.P9404449317343861353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203361.P9404449317343861353

/-!
# A203362: T(n,k)=Number of nXk binary arrays with every 1 immediately preceded by 0 to the left or above.

The programs for A203362, there is no canonical definition to state claims against.
-/

/-! ## A203362.P17929190144245598056

`A130148(A232368(n+1))`
-/

namespace A203362.P17929190144245598056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130148 (A232368 (n + 1)).toNat

end

end A203362.P17929190144245598056

/-! ## A203362.P176483465767323301

`A137734(4*A359990(n+1))`
-/

namespace A203362.P176483465767323301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (4 * A359990 (n + 1)).toNat

end

end A203362.P176483465767323301

/-! ## A203362.P11051855320342405808

`A137734(lcm(4, A359990(n+1)))`
-/

namespace A203362.P11051855320342405808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (Int.lcm 4 (A359990 (n + 1)))

end

end A203362.P11051855320342405808

/-!
# A203364: Number of n X n 0..2 arrays with every 1 immediately preceded by 0 to the left or above, and every 2 immediately preceded by both a 1 and a 0.

The programs for A203364, there is no canonical definition to state claims against.
-/

/-! ## A203364.P4739018211299168696

`A203371(∑[4*n]+1)`
-/

namespace A203364.P4739018211299168696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203371 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203364.P4739018211299168696

/-! ## A203364.P3379659225097362051

`record[A077606(n+1)*A203371(n+1)]`
-/

namespace A203364.P3379659225097362051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A203371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203364.P3379659225097362051

/-! ## A203364.P13631875588033534175

`A203371(A001844(n))+A185037(n)`
-/

namespace A203364.P13631875588033534175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203371 (A001844 n).toNat + A185037 n

end

end A203364.P13631875588033534175

/-! ## A203364.P11981193743835871437

`gcd(A000038(n), A203371(A001844(n)))`
-/

namespace A203364.P11981193743835871437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A203371 (A001844 n).toNat)

end

end A203364.P11981193743835871437

/-! ## A203364.P9534473390292976698

`or(A000007(n), A203371(A001844(n)))`
-/

namespace A203364.P9534473390292976698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A203371 (A001844 n).toNat)

end

end A203364.P9534473390292976698

/-!
# A203365: Number of n X 2 0..2 arrays with every 1 immediately preceded by 0 to the left or above, and every 2 immediately preceded by both a 1 and a 0.

The programs for A203365, the canonical program `A203365.P12214831048468946394` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203365 has offset 1).

The definition of A203365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 181 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203365.P9728761996223221975

`ogf((2+5x+2x^2+x^3)/(1-2x-5x^2-2x^3-x^4))`
-/

namespace A203365.P9728761996223221975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5, 2, 1] [1, -2, -5, -2, -1] n

end

end A203365.P9728761996223221975

namespace A203365

/-- `ogf((2+5x+2x^2+x^3)/(1-2x-5x^2-2x^3-x^4))` -/
def P9728761996223221975.Spec : Prop :=
  ∀ n, P9728761996223221975.a n = A203365 (n + 1)

end A203365

/-! ## A203365.P12214831048468946394

`2*a(n-1)+5*a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=2, a(1)=9, a(2)=30, a(3)=110`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203365

/-- `2*a(n-1)+5*a(n-2)+2*a(n-3)+a(n-4)` -/
def P12214831048468946394.Spec : Prop :=
  ∀ n, (P12214831048468946394.a n : ℤ) = A203365 (n + 1)

theorem P12214831048468946394.correct : P12214831048468946394.Spec := by
  intro n
  simp only [A203365, Nat.add_sub_cancel]

end A203365

/-! ## A203365.P16567198393751375683

`Δ[ogf(1/(1-3x-3x^2+3x^3+x^4+x^5))]`
-/

namespace A203365.P16567198393751375683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, -3, 3, 1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203365.P16567198393751375683

namespace A203365

/-- `Δ[ogf(1/(1-3x-3x^2+3x^3+x^4+x^5))]` -/
def P16567198393751375683.Spec : Prop :=
  ∀ n, P16567198393751375683.a n = A203365 (n + 1)

end A203365

/-! ## A203365.P2430374235570967927

`A203371(∑[n+1]+2)`
-/

namespace A203365.P2430374235570967927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203371 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203365.P2430374235570967927

namespace A203365

/-- `A203371(∑[n+1]+2)` -/
def P2430374235570967927.Spec : Prop :=
  ∀ n, P2430374235570967927.a n = A203365 (n + 1)

end A203365

/-! ## A203365.P16053243377614179203

`A316868(2*n)+A203371(A000096(n)+3)`
-/

namespace A203365.P16053243377614179203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (2 * n) + A203371 (A000096 n + 3).toNat

end

end A203365.P16053243377614179203

namespace A203365

/-- `A316868(2*n)+A203371(A000096(n)+3)` -/
def P16053243377614179203.Spec : Prop :=
  ∀ n, P16053243377614179203.a n = A203365 (n + 1)

end A203365

/-!
# A203366: Number of n X 3 0..2 arrays with every 1 immediately preceded by 0 to the left or above, and every 2 immediately preceded by both a 1 and a 0.

The programs for A203366, there is no canonical definition to state claims against.
-/

/-! ## A203366.P2092814851289469602

`A203371(∑[n+2]+4)`
-/

namespace A203366.P2092814851289469602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203371 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203366.P2092814851289469602

/-! ## A203366.P4289519964361665600

`A203371(A167614(n+1))%A041086(n)`
-/

namespace A203366.P4289519964361665600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203371 (A167614 (n + 1)).toNat) (A041086 n)

end

end A203366.P4289519964361665600

/-! ## A203366.P10164099855806615983

`lcm(A033999(n), A203371(A167614(n+1)))`
-/

namespace A203366.P10164099855806615983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A203371 (A167614 (n + 1)).toNat)

end

end A203366.P10164099855806615983

/-! ## A203366.P9824793262117107449

`or(A000007(n), A203371(A167614(n+1)))`
-/

namespace A203366.P9824793262117107449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A203371 (A167614 (n + 1)).toNat)

end

end A203366.P9824793262117107449

/-! ## A203366.P3812387548091164477

`or(A000038(n), A203371(A167614(n+1)))`
-/

namespace A203366.P3812387548091164477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A203371 (A167614 (n + 1)).toNat)

end

end A203366.P3812387548091164477

/-!
# A203367: Number of nX4 0..2 arrays with every 1 immediately preceded by 0 to the left or above, and every 2 immediately preceded by both a 1 and a 0.

The programs for A203367, there is no canonical definition to state claims against.
-/

/-! ## A203367.P17657887372404713377

`A203371(A141214(n)+7)`
-/

namespace A203367.P17657887372404713377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203371 (A141214 n + 7).toNat

end

end A203367.P17657887372404713377

/-! ## A203367.P8142177704334489059

`A203371(A052905(n)+9)`
-/

namespace A203367.P8142177704334489059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203371 (A052905 n + 9).toNat

end

end A203367.P8142177704334489059

/-! ## A203367.P13662592511554565891

`A203371(A055999(n)+10)`
-/

namespace A203367.P13662592511554565891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203371 (A055999 n + 10).toNat

end

end A203367.P13662592511554565891

/-! ## A203367.P6490884001588915837

`A203371(A167614(n+2)+1)`
-/

namespace A203367.P6490884001588915837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203371 (A167614 (n + 2) + 1).toNat

end

end A203367.P6490884001588915837

/-! ## A203367.P4383914192168176699

`A203371(A034856(n+2)+6)`
-/

namespace A203367.P4383914192168176699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203371 (A034856 (n + 2) + 6).toNat

end

end A203367.P4383914192168176699

/-!
# A203368: Number of nX5 0..2 arrays with every 1 immediately preceded by 0 to the left or above, and every 2 immediately preceded by both a 1 and a 0.

The programs for A203368, there is no canonical definition to state claims against.
-/

/-! ## A203368.P10077871647564493108

`A203371(A167499(n+3))`
-/

namespace A203368.P10077871647564493108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203371 (A167499 (n + 3)).toNat

end

end A203368.P10077871647564493108

/-! ## A203368.P12705287549391969244

`A203371(A167614(n+3)+2)`
-/

namespace A203368.P12705287549391969244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203371 (A167614 (n + 3) + 2).toNat

end

end A203368.P12705287549391969244

/-! ## A203368.P12986987520733159651

`A203371(A000217(n+4)+5)`
-/

namespace A203368.P12986987520733159651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203371 (A000217 (n + 4) + 5).toNat

end

end A203368.P12986987520733159651

/-! ## A203368.P3613808155106154084

`A203371(A020710(n)+A055999(n)+10)`
-/

namespace A203368.P3613808155106154084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203371 (A020710 n + (A055999 n + 10)).toNat

end

end A203368.P3613808155106154084

/-! ## A203368.P6637758951482970679

`A203371(A374005(n+1))`
-/

namespace A203368.P6637758951482970679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203371 (A374005 (n + 1)).toNat

end

end A203368.P6637758951482970679

/-!
# A203369: Number of nX6 0..2 arrays with every 1 immediately preceded by 0 to the left or above, and every 2 immediately preceded by both a 1 and a 0.

The programs for A203369, there is no canonical definition to state claims against.
-/

/-! ## A203369.P5240223623887627057

`A203371(A000217(n+5)+6)`
-/

namespace A203369.P5240223623887627057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203371 (A000217 (n + 5) + 6).toNat

end

end A203369.P5240223623887627057

/-! ## A203369.P8138280238457578358

`A203371(eq[7, A131818(n+1)])`
-/

namespace A203369.P8138280238457578358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203371 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203369.P8138280238457578358

/-! ## A203369.P7978719393098310670

`A203371(A167614(n+5)-(n+3))`
-/

namespace A203369.P7978719393098310670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203371 (A167614 (n + 5) - (n + 3 : ℤ)).toNat

end

end A203369.P7978719393098310670

/-! ## A203369.P12364704822721631364

`A203371(A374007(n+1))`
-/

namespace A203369.P12364704822721631364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203371 (A374007 (n + 1)).toNat

end

end A203369.P12364704822721631364

/-! ## A203369.P15780993106304069583

`A203371(A052905(n+3))`
-/

namespace A203369.P15780993106304069583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203371 (A052905 (n + 3)).toNat

end

end A203369.P15780993106304069583

/-!
# A203370: Number of nX7 0..2 arrays with every 1 immediately preceded by 0 to the left or above, and every 2 immediately preceded by both a 1 and a 0.

The programs for A203370, there is no canonical definition to state claims against.
-/

/-! ## A203370.P10531356837389939523

`A203371(A056119(n)+28)`
-/

namespace A203370.P10531356837389939523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203371 (A056119 n + 28).toNat

end

end A203370.P10531356837389939523

/-! ## A203370.P5015167539954383670

`A203371(A167614(n+5)+4)`
-/

namespace A203370.P5015167539954383670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203371 (A167614 (n + 5) + 4).toNat

end

end A203370.P5015167539954383670

/-! ## A203370.P12077860246310712488

`A203371(eq[8, A131818(n+1)])`
-/

namespace A203370.P12077860246310712488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203371 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203370.P12077860246310712488

/-! ## A203370.P10193058766927026367

`A203371(A000124(n+7)-(n+1))`
-/

namespace A203370.P10193058766927026367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203371 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A203370.P10193058766927026367

/-! ## A203370.P14065311266769360586

`A203371(A374008(n+1))`
-/

namespace A203370.P14065311266769360586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203371 (A374008 (n + 1)).toNat

end

end A203370.P14065311266769360586

/-!
# A203371: T(n,k)=Number of nXk 0..2 arrays with every 1 immediately preceded by 0 to the left or above, and every 2 immediately preceded by both a 1 and a 0.

The programs for A203371, there is no canonical definition to state claims against.
-/

/-! ## A203371.P12237911115683684044

`A275947(A121449(n))+A220553(n+1)`
-/

namespace A203371.P12237911115683684044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275947 (A121449 n).toNat + A220553 (n + 1)

end

end A203371.P12237911115683684044

/-! ## A203371.P7668015450377909129

`A357621(A217227(n+1))+A220553(n+1)`
-/

namespace A203371.P7668015450377909129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357621 (A217227 (n + 1)).toNat + A220553 (n + 1)

end

end A203371.P7668015450377909129

/-!
# A203372: Number of (n+1)X(n+1) 0..1 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203372, there is no canonical definition to state claims against.
-/

/-! ## A203372.P9560581215370602201

`2*A068253(n+2)`
-/

namespace A203372.P9560581215370602201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A068253 (n + 2)

end

end A203372.P9560581215370602201

/-! ## A203372.P16277199127438677235

`A205247(n+1)-4`
-/

namespace A203372.P16277199127438677235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205247 (n + 1) - 4

end

end A203372.P16277199127438677235

/-! ## A203372.P15503031290932056915

`4*A207993(n+2)`
-/

namespace A203372.P15503031290932056915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A207993 (n + 2)

end

end A203372.P15503031290932056915

/-! ## A203372.P9828034020010669901

`A203378(∑[4*n]+1)`
-/

namespace A203372.P9828034020010669901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203378 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203372.P9828034020010669901

/-! ## A203372.P14929308388362137285

`2*(A205311(n+1)-2)`
-/

namespace A203372.P14929308388362137285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A205311 (n + 1) - 2)

end

end A203372.P14929308388362137285

/-!
# A203373: Number of (n+1) X 4 0..1 arrays with every 2 X 2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203373, there is no canonical definition to state claims against.
-/

/-! ## A203373.P8618698195180956480

`A205250(n+1)-4`
-/

namespace A203373.P8618698195180956480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205250 (n + 1) - 4

end

end A203373.P8618698195180956480

/-! ## A203373.P1730496361970884052

`4*A078100(n+2)`
-/

namespace A203373.P1730496361970884052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A078100 (n + 2)

end

end A203373.P1730496361970884052

/-! ## A203373.P498887002618827787

`2*(A205313(n+1)-2)`
-/

namespace A203373.P498887002618827787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A205313 (n + 1) - 2)

end

end A203373.P498887002618827787

/-! ## A203373.P7939202654716866790

`4/3*A209506(n+1)`
-/

namespace A203373.P7939202654716866790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A209506 (n + 1) : ℚ)

end

end A203373.P7939202654716866790

/-! ## A203373.P16120815124474613563

`A209506(n+1)+A078100(n+2)`
-/

namespace A203373.P16120815124474613563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209506 (n + 1) + A078100 (n + 2)

end

end A203373.P16120815124474613563

/-! ## A203373.P3483182488951211489

`2/3*A206145(n+1)`
-/

namespace A203373.P3483182488951211489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A206145 (n + 1) : ℚ)

end

end A203373.P3483182488951211489

/-!
# A203374: Number of (n+1) X 5 0..1 arrays with every 2 X 2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203374, there is no canonical definition to state claims against.
-/

/-! ## A203374.P4696711823398725276

`A205251(n+1)-4`
-/

namespace A203374.P4696711823398725276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205251 (n + 1) - 4

end

end A203374.P4696711823398725276

/-! ## A203374.P14284595783882018575

`4*A207994(n+2)`
-/

namespace A203374.P14284595783882018575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A207994 (n + 2)

end

end A203374.P14284595783882018575

/-! ## A203374.P2725040830118371819

`2*(A205314(n+1)-2)`
-/

namespace A203374.P2725040830118371819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A205314 (n + 1) - 2)

end

end A203374.P2725040830118371819

/-! ## A203374.P3512792396718725393

`2/3*A206146(n+1)`
-/

namespace A203374.P3512792396718725393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A206146 (n + 1) : ℚ)

end

end A203374.P3512792396718725393

/-! ## A203374.P422146501234220746

`4/3*A209507(n+1)`
-/

namespace A203374.P422146501234220746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A209507 (n + 1) : ℚ)

end

end A203374.P422146501234220746

/-!
# A203375: Number of (n+1)X6 0..1 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203375, there is no canonical definition to state claims against.
-/

/-! ## A203375.P10216541190907345490

`A205252(n+1)-4`
-/

namespace A203375.P10216541190907345490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205252 (n + 1) - 4

end

end A203375.P10216541190907345490

/-! ## A203375.P15838593673544087035

`4*A207995(n+2)`
-/

namespace A203375.P15838593673544087035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A207995 (n + 2)

end

end A203375.P15838593673544087035

/-! ## A203375.P1184949150063646028

`2*(A205315(n+1)-2)`
-/

namespace A203375.P1184949150063646028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A205315 (n + 1) - 2)

end

end A203375.P1184949150063646028

/-! ## A203375.P6805416112835261223

`2/3*A206147(n+1)`
-/

namespace A203375.P6805416112835261223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A206147 (n + 1) : ℚ)

end

end A203375.P6805416112835261223

/-! ## A203375.P15578457534062504706

`4/3*A209508(n+1)`
-/

namespace A203375.P15578457534062504706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A209508 (n + 1) : ℚ)

end

end A203375.P15578457534062504706

/-!
# A203376: Number of (n+1)X7 0..1 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203376, there is no canonical definition to state claims against.
-/

/-! ## A203376.P4248706719658045408

`A205253(n+1)-4`
-/

namespace A203376.P4248706719658045408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205253 (n + 1) - 4

end

end A203376.P4248706719658045408

/-! ## A203376.P13425249810360052673

`4*A207996(n+2)`
-/

namespace A203376.P13425249810360052673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A207996 (n + 2)

end

end A203376.P13425249810360052673

/-! ## A203376.P17550404697320911368

`2*(A205316(n+1)-2)`
-/

namespace A203376.P17550404697320911368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A205316 (n + 1) - 2)

end

end A203376.P17550404697320911368

/-! ## A203376.P8243601475009209873

`2/3*A206148(n+1)`
-/

namespace A203376.P8243601475009209873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A206148 (n + 1) : ℚ)

end

end A203376.P8243601475009209873

/-! ## A203376.P15282583861490051610

`4/3*A209509(n+1)`
-/

namespace A203376.P15282583861490051610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A209509 (n + 1) : ℚ)

end

end A203376.P15282583861490051610

/-!
# A203377: Number of (n+1)X8 0..1 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203377, there is no canonical definition to state claims against.
-/

/-! ## A203377.P7503801892929572794

`A205254(n+1)-4`
-/

namespace A203377.P7503801892929572794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205254 (n + 1) - 4

end

end A203377.P7503801892929572794

/-! ## A203377.P8455539577560153571

`2*(A205317(n+1)-2)`
-/

namespace A203377.P8455539577560153571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A205317 (n + 1) - 2)

end

end A203377.P8455539577560153571

/-! ## A203377.P2730124475143095224

`2/3*A206149(n+1)`
-/

namespace A203377.P2730124475143095224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A206149 (n + 1) : ℚ)

end

end A203377.P2730124475143095224

/-! ## A203377.P13600872527825076893

`4/3*A209510(n+1)`
-/

namespace A203377.P13600872527825076893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A209510 (n + 1) : ℚ)

end

end A203377.P13600872527825076893

/-! ## A203377.P9358335365695561814

`A206149(n+1)+2-A205317(n+1)`
-/

namespace A203377.P9358335365695561814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206149 (n + 1) + (2 - A205317 (n + 1))

end

end A203377.P9358335365695561814

/-!
# A203378: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203378, there is no canonical definition to state claims against.
-/

/-! ## A203378.P18121013968797812837

`A205255(n+1)-4`
-/

namespace A203378.P18121013968797812837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205255 (n + 1) - 4

end

end A203378.P18121013968797812837

/-! ## A203378.P9600350757414635400

`2*(A205318(n+1)-2)`
-/

namespace A203378.P9600350757414635400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A205318 (n + 1) - 2)

end

end A203378.P9600350757414635400

/-! ## A203378.P726505052449445247

`A205318(char[1]+1+n)+A205318(n+1)-4`
-/

namespace A203378.P726505052449445247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205318 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + A205318 (n + 1) - 4

end

end A203378.P726505052449445247

/-! ## A203378.P16647535939254597667

`A205318(n+1)+root(A205318(n+1), A000027(n+1)-n)-4`
-/

namespace A203378.P16647535939254597667
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205318 (n + 1) : ℝ) + (A205318 (n + 1) : ℝ) ^ (1 / (A000027 (n + 1) - (n : ℤ) : ℝ)) - 4

end

end A203378.P16647535939254597667

/-! ## A203378.P15696167010977913534

`4/3*A209511(n+1)`
-/

namespace A203378.P15696167010977913534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A209511 (n + 1) : ℚ)

end

end A203378.P15696167010977913534

/-!
# A203379: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,4,0,2,1,0,0 for x=0,1,2,3,4,5,6.

The programs for A203379, there is no canonical definition to state claims against.
-/

/-! ## A203379.P7571030378688871308

`A069909(n*A250001(n))`
-/

namespace A203379.P7571030378688871308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069909 ((n : ℤ) * A250001 n).toNat

end

end A203379.P7571030378688871308

/-!
# A203380: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 2,0,3,0,0,0,0 for x=0,1,2,3,4,5,6.

The programs for A203380, there is no canonical definition to state claims against.
-/

/-! ## A203380.P10940696371440645331

`A186222(A305114(n)+A268289(n))`
-/

namespace A203380.P10940696371440645331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186222 (A305114 n + A268289 n).toNat

end

end A203380.P10940696371440645331

/-!
# A203381: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,0,0,1,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A203381, there is no canonical definition to state claims against.
-/

/-! ## A203381.P6477783881050312833

`A093848(A246534(n)+A018252(n+1))`
-/

namespace A203381.P6477783881050312833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093848 (A246534 n + A018252 (n + 1)).toNat

end

end A203381.P6477783881050312833

/-!
# A203382: Number of n X n 0..6 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203382, there is no canonical definition to state claims against.
-/

/-! ## A203382.P17555185218451316487

`A203389(∑[4*n]+1)`
-/

namespace A203382.P17555185218451316487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203389 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203382.P17555185218451316487

/-!
# A203383: Number of nX2 0..6 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203383, there is no canonical definition to state claims against.
-/

/-! ## A203383.P6035283803447552086

`record[ratio[A203389(n+1)]]`
-/

namespace A203383.P6035283803447552086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203389 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203383.P6035283803447552086

/-! ## A203383.P4569404229006597834

`A203389(∑[n+1]+2)`
-/

namespace A203383.P4569404229006597834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203389 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203383.P4569404229006597834

/-! ## A203383.P3052771678777331693

`record[A203389(A278512(n+1))]`
-/

namespace A203383.P3052771678777331693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203389 (A278512 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203383.P3052771678777331693

/-! ## A203383.P3291544400898154552

`record[A203389(gcd(n, A303913(n)))]`
-/

namespace A203383.P3291544400898154552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203389 (Int.gcd (n : ℤ) (A303913 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203383.P3291544400898154552

/-! ## A203383.P3993356748281021686

`record[A010054(n)*A203389(n+2)]`
-/

namespace A203383.P3993356748281021686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A203389 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203383.P3993356748281021686

/-!
# A203384: Number of nX3 0..6 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203384, there is no canonical definition to state claims against.
-/

/-! ## A203384.P14218863902335519102

`A203389(∑[n+2]+4)`
-/

namespace A203384.P14218863902335519102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203389 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203384.P14218863902335519102

/-! ## A203384.P7358816192291861391

`record[A203389(A278512(2*n+1))]`
-/

namespace A203384.P7358816192291861391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203389 (A278512 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203384.P7358816192291861391

/-! ## A203384.P9595281180795547330

`record[gcd(A203389(n+1), A303913(n))]`
-/

namespace A203384.P9595281180795547330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A203389 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203384.P9595281180795547330

/-! ## A203384.P12453703830946732040

`abs(A203389(A167614(n+1))-1)+1`
-/

namespace A203384.P12453703830946732040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A203389 (A167614 (n + 1)).toNat - 1| + 1

end

end A203384.P12453703830946732040

/-! ## A203384.P17257389083873430719

`A203389(A167614(n+1))+A025442(n)`
-/

namespace A203384.P17257389083873430719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203389 (A167614 (n + 1)).toNat + A025442 n

end

end A203384.P17257389083873430719

/-!
# A203385: Number of nX4 0..6 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203385, there is no canonical definition to state claims against.
-/

/-! ## A203385.P15617438475552155080

`A203389(A374004(n+1))`
-/

namespace A203385.P15617438475552155080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203389 (A374004 (n + 1)).toNat

end

end A203385.P15617438475552155080

/-! ## A203385.P13901650906177754027

`A203389(A141214(n)+7)`
-/

namespace A203385.P13901650906177754027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203389 (A141214 n + 7).toNat

end

end A203385.P13901650906177754027

/-! ## A203385.P1382945461880235481

`A203389(A052905(n)+9)`
-/

namespace A203385.P1382945461880235481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203389 (A052905 n + 9).toNat

end

end A203385.P1382945461880235481

/-! ## A203385.P11213353601293511179

`A203389(A055999(n)+10)`
-/

namespace A203385.P11213353601293511179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203389 (A055999 n + 10).toNat

end

end A203385.P11213353601293511179

/-!
# A203386: Number of n X 5 0..6 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203386, there is no canonical definition to state claims against.
-/

/-! ## A203386.P7223444355337314466

`A203389(A374005(n+1))`
-/

namespace A203386.P7223444355337314466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203389 (A374005 (n + 1)).toNat

end

end A203386.P7223444355337314466

/-! ## A203386.P9941246201931843132

`A203389(Δ[A264443(n)])`
-/

namespace A203386.P9941246201931843132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203389 (f1 (n + 1) - f1 n).toNat

end

end A203386.P9941246201931843132

/-!
# A203387: Number of n X 6 0..6 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203387, there is no canonical definition to state claims against.
-/

/-! ## A203387.P15291666929552349068

`A203389(C(n+7, 2)-n)`
-/

namespace A203387.P15291666929552349068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203389 (Nat.choose (n + 7) 2 - n)

end

end A203387.P15291666929552349068

/-!
# A203389: T(n,k)=Number of nXk 0..6 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203389, there is no canonical definition to state claims against.
-/

/-! ## A203389.P12025614118032845239

`A203066(A157243(n))`
-/

namespace A203389.P12025614118032845239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203066 (A157243 n).toNat

end

end A203389.P12025614118032845239

/-! ## A203389.P10899504204063575969

`A375626(A174921(n))`
-/

namespace A203389.P10899504204063575969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375626 (A174921 n).toNat

end

end A203389.P10899504204063575969

/-! ## A203389.P2722324644421683146

`A319185(A172339(n)+1)`
-/

namespace A203389.P2722324644421683146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319185 (A172339 n + 1).toNat

end

end A203389.P2722324644421683146

/-! ## A203389.P572099148684472530

`A241312(2*A131065(n))`
-/

namespace A203389.P572099148684472530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241312 (2 * A131065 n).toNat

end

end A203389.P572099148684472530

/-! ## A203389.P15192629537577467846

`A258049(5^A014473(n))`
-/

namespace A203389.P15192629537577467846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258049 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A014473 n : ℤ))).toNat

end

end A203389.P15192629537577467846

/-!
# A203390: Number of n X n 0..3 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203390, there is no canonical definition to state claims against.
-/

/-! ## A203390.P16283016926274004596

`A203397(∑[4*n]+1)`
-/

namespace A203390.P16283016926274004596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203397 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203390.P16283016926274004596

/-! ## A203390.P7103287017238315000

`record[root(A203397(n+1), A143182(n))]`
-/

namespace A203390.P7103287017238315000
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203397 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203390.P7103287017238315000

/-! ## A203390.P9582174151843569075

`record[gcd(A114327(n), A203397(n+1))]`
-/

namespace A203390.P9582174151843569075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A203397 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203390.P9582174151843569075

/-! ## A203390.P2027806154674073695

`A203397(A001844(n))+A056965(n)`
-/

namespace A203390.P2027806154674073695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203397 (A001844 n).toNat + A056965 n

end

end A203390.P2027806154674073695

/-! ## A203390.P17882257663244976279

`A203397(A001844(n))+A180472(n)`
-/

namespace A203390.P17882257663244976279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203397 (A001844 n).toNat + A180472 n

end

end A203390.P17882257663244976279

/-!
# A203391: Number of nX2 0..3 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203391, there is no canonical definition to state claims against.
-/

/-! ## A203391.P17866494052409400804

`record[ratio[A203397(n+1)]]`
-/

namespace A203391.P17866494052409400804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203397 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203391.P17866494052409400804

/-! ## A203391.P17378584920847972359

`A203397(∑[n+1]+2)`
-/

namespace A203391.P17378584920847972359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203397 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203391.P17378584920847972359

/-! ## A203391.P17782717291905505425

`record[A203397(record[A091995(n+1)])]`
-/

namespace A203391.P17782717291905505425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091995 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203397 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203391.P17782717291905505425

/-! ## A203391.P16915796148476963943

`record[root(A203397(n+1), A333159(n))]`
-/

namespace A203391.P16915796148476963943
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203397 (n + 1) : ℝ) ^ (1 / (A333159 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203391.P16915796148476963943

/-! ## A203391.P7599047104270350800

`record[root(A203397(n+1), A144328(n+1))]`
-/

namespace A203391.P7599047104270350800
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203397 (n + 1) : ℝ) ^ (1 / (A144328 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203391.P7599047104270350800

/-!
# A203392: Number of nX3 0..3 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203392, there is no canonical definition to state claims against.
-/

/-! ## A203392.P9895717417549464656

`A203397(∑[n+2]+4)`
-/

namespace A203392.P9895717417549464656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203397 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203392.P9895717417549464656

/-! ## A203392.P12550417266343385559

`A203397(A167614(n+1))+A025469(n)`
-/

namespace A203392.P12550417266343385559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203397 (A167614 (n + 1)).toNat + A025469 n

end

end A203392.P12550417266343385559

/-! ## A203392.P17274494748603413235

`A203397(A167614(n+1))%A332197(n)`
-/

namespace A203392.P17274494748603413235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203397 (A167614 (n + 1)).toNat) (A332197 n)

end

end A203392.P17274494748603413235

/-! ## A203392.P15990617350221185462

`or(A000007(n), A203397(A167614(n+1)))`
-/

namespace A203392.P15990617350221185462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A203397 (A167614 (n + 1)).toNat)

end

end A203392.P15990617350221185462

/-! ## A203392.P4650039265872525537

`record[A203397(A198464(n+1))]`
-/

namespace A203392.P4650039265872525537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203397 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203392.P4650039265872525537

/-!
# A203393: Number of nX4 0..3 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203393, there is no canonical definition to state claims against.
-/

/-! ## A203393.P10403359839790104072

`A203397(A374004(n+1))`
-/

namespace A203393.P10403359839790104072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203397 (A374004 (n + 1)).toNat

end

end A203393.P10403359839790104072

/-! ## A203393.P10337249213589839129

`A203397(A052905(n)+9)`
-/

namespace A203393.P10337249213589839129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203397 (A052905 n + 9).toNat

end

end A203393.P10337249213589839129

/-! ## A203393.P11992761876539701820

`A203397(A167614(n+2)+1)`
-/

namespace A203393.P11992761876539701820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203397 (A167614 (n + 2) + 1).toNat

end

end A203393.P11992761876539701820

/-! ## A203393.P16245484144274981827

`A203397(A166136(n+2)-2)`
-/

namespace A203393.P16245484144274981827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203397 (A166136 (n + 2) - 2).toNat

end

end A203393.P16245484144274981827

/-! ## A203393.P742426923995084450

`A203397(A166136(n+1)+1+n)`
-/

namespace A203393.P742426923995084450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203397 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A203393.P742426923995084450

/-!
# A203394: Number of nX5 0..3 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203394, there is no canonical definition to state claims against.
-/

/-! ## A203394.P18056676317284888704

`A203397(A374005(n+1))`
-/

namespace A203394.P18056676317284888704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203397 (A374005 (n + 1)).toNat

end

end A203394.P18056676317284888704

/-! ## A203394.P3929664355459689899

`A203397(A167499(n+3))`
-/

namespace A203394.P3929664355459689899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203397 (A167499 (n + 3)).toNat

end

end A203394.P3929664355459689899

/-! ## A203394.P761368258915921785

`A203397(eq[7, A066657(n)])`
-/

namespace A203394.P761368258915921785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203394.P761368258915921785

/-! ## A203394.P14528872562392574482

`A203397(eq[4, A193592(n)])`
-/

namespace A203394.P14528872562392574482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203394.P14528872562392574482

/-! ## A203394.P2800222112127581195

`record[A203397(A198464(n+1)-2)]`
-/

namespace A203394.P2800222112127581195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203397 (A198464 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203394.P2800222112127581195

/-!
# A203395: Number of nX6 0..3 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203395, there is no canonical definition to state claims against.
-/

/-! ## A203395.P17270159729902642379

`A203397(A374007(n+1))`
-/

namespace A203395.P17270159729902642379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203397 (A374007 (n + 1)).toNat

end

end A203395.P17270159729902642379

/-! ## A203395.P16637920530336312340

`A203397(A052905(n+3))`
-/

namespace A203395.P16637920530336312340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203397 (A052905 (n + 3)).toNat

end

end A203395.P16637920530336312340

/-! ## A203395.P12085025664651039156

`A203397(eq[5, A193592(n)])`
-/

namespace A203395.P12085025664651039156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203395.P12085025664651039156

/-! ## A203395.P9955357918802174099

`A203397(Δ[Δ[A006504(n+1)]])`
-/

namespace A203395.P9955357918802174099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203397 (f1 (n + 1) - f1 n).toNat

end

end A203395.P9955357918802174099

/-!
# A203396: 

The programs for A203396, there is no canonical definition to state claims against.
-/

/-! ## A203396.P10708353587268862997

`A203397(eq[11, A066657(n)])`
-/

namespace A203396.P10708353587268862997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203396.P10708353587268862997

/-!
# A203397: T(n,k)=Number of nXk 0..3 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203397, there is no canonical definition to state claims against.
-/

/-! ## A203397.P6909222627258546633

`A319775(2*A276777(n))`
-/

namespace A203397.P6909222627258546633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319775 (2 * A276777 n).toNat

end

end A203397.P6909222627258546633

/-! ## A203397.P6941030517325367697

`A352961(A348566(n)^3)`
-/

namespace A203397.P6941030517325367697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352961 (A348566 n ^ 3).toNat

end

end A203397.P6941030517325367697

/-! ## A203397.P13163702949260822714

`A045990(∑{d}[A276777(n), #])`
-/

namespace A203397.P13163702949260822714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045990 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A203397.P13163702949260822714

/-! ## A203397.P10828721328418471011

`A203391(A276777(2^A276777(n)))`
-/

namespace A203397.P10828721328418471011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203391 (A276777 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A276777 n : ℤ))).toNat).toNat

end

end A203397.P10828721328418471011

/-! ## A203397.P17800069873835846001

`A004207(A157212(n)%A367770(n))`
-/

namespace A203397.P17800069873835846001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004207 (Int.tmod (A157212 n) (A367770 n)).toNat

end

end A203397.P17800069873835846001

/-!
# A203398: T(n,k), a triangular array read by rows, is the number of classes of equivalent 2-color n-bead necklaces (turning over is not allowed) that have k necklaces.

The programs for A203398, the canonical program `A203398.P16155668990834997632` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203398 has offset 1).

The definition of A203398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203398.P16155668990834997632

`A216953(n+1)/(1-C(∑[char[∑[n]]], 2)+n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A203398

/-- `A216953(n+1)/(1-C(∑[char[∑[n]]], 2)+n)` -/
def P16155668990834997632.Spec : Prop :=
  ∀ n, P16155668990834997632.a n = (A203398 (n + 1) : ℚ)

end A203398

/-! ## A203398.P11762755491520387202

`A216953(n+1)/A002260(n+1)`
-/

namespace A203398.P11762755491520387202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216953 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A203398.P11762755491520387202

namespace A203398

/-- `A216953(n+1)/A002260(n+1)` -/
def P11762755491520387202.Spec : Prop :=
  ∀ n, P11762755491520387202.a n = (A203398 (n + 1) : ℚ)

end A203398

/-! ## A203398.P7915077349972542920

`A216953(n+1)/(A002262(n)+1)`
-/

namespace A203398.P7915077349972542920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216953 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)

end

end A203398.P7915077349972542920

namespace A203398

/-- `A216953(n+1)/(A002262(n)+1)` -/
def P7915077349972542920.Spec : Prop :=
  ∀ n, P7915077349972542920.a n = (A203398 (n + 1) : ℚ)

end A203398

/-! ## A203398.P17513389876016154950

`A216953(n+1)/A050873(n+1)`
-/

namespace A203398.P17513389876016154950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216953 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A203398.P17513389876016154950

namespace A203398

/-- `A216953(n+1)/A050873(n+1)` -/
def P17513389876016154950.Spec : Prop :=
  ∀ n, P17513389876016154950.a n = (A203398 (n + 1) : ℚ)

end A203398

/-! ## A203398.P16984630927352194454

`A216953(n+1)/A123275(n+1)`
-/

namespace A203398.P16984630927352194454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216953 (n + 1) : ℚ) / (A123275 (n + 1) : ℚ)

end

end A203398.P16984630927352194454

namespace A203398

/-- `A216953(n+1)/A123275(n+1)` -/
def P16984630927352194454.Spec : Prop :=
  ∀ n, P16984630927352194454.a n = (A203398 (n + 1) : ℚ)

end A203398

/-! ## A203398.P8953115525246291917

`A216953(n+1)/A334230(n+1)`
-/

namespace A203398.P8953115525246291917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216953 (n + 1) : ℚ) / (A334230 (n + 1) : ℚ)

end

end A203398.P8953115525246291917

namespace A203398

/-- `A216953(n+1)/A334230(n+1)` -/
def P8953115525246291917.Spec : Prop :=
  ∀ n, P8953115525246291917.a n = (A203398 (n + 1) : ℚ)

end A203398

/-! ## A203398.P3912364311752361907

`A216953(n+1)/A357554(n+1)`
-/

namespace A203398.P3912364311752361907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216953 (n + 1) : ℚ) / (A357554 (n + 1) : ℚ)

end

end A203398.P3912364311752361907

namespace A203398

/-- `A216953(n+1)/A357554(n+1)` -/
def P3912364311752361907.Spec : Prop :=
  ∀ n, P3912364311752361907.a n = (A203398 (n + 1) : ℚ)

end A203398

/-! ## A203398.P2113594703014808576

`A216953(n+1)/A307662(n+1)`
-/

namespace A203398.P2113594703014808576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216953 (n + 1) : ℚ) / (A307662 (n + 1) : ℚ)

end

end A203398.P2113594703014808576

namespace A203398

/-- `A216953(n+1)/A307662(n+1)` -/
def P2113594703014808576.Spec : Prop :=
  ∀ n, P2113594703014808576.a n = (A203398 (n + 1) : ℚ)

end A203398

/-! ## A203398.P9952784682887961705

`A216953(n+1)/A112544(n+1)`
-/

namespace A203398.P9952784682887961705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216953 (n + 1) : ℚ) / (A112544 (n + 1) : ℚ)

end

end A203398.P9952784682887961705

namespace A203398

/-- `A216953(n+1)/A112544(n+1)` -/
def P9952784682887961705.Spec : Prop :=
  ∀ n, P9952784682887961705.a n = (A203398 (n + 1) : ℚ)

end A203398

/-! ## A203398.P13904302141264231632

`A216953(n+1)/A134840(n+1)`
-/

namespace A203398.P13904302141264231632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216953 (n + 1) : ℚ) / (A134840 (n + 1) : ℚ)

end

end A203398.P13904302141264231632

namespace A203398

/-- `A216953(n+1)/A134840(n+1)` -/
def P13904302141264231632.Spec : Prop :=
  ∀ n, P13904302141264231632.a n = (A203398 (n + 1) : ℚ)

end A203398

/-!
# A203399: T(n, k), a triangular array read by rows, is the number of classes of equivalent 2-color n-bead necklaces (turning over is allowed) that contain k necklaces.

The programs for A203399, there is no canonical definition to state claims against.
-/

/-! ## A203399.P18397469520326172862

`A088362(A024757(n+1))%3`
-/

namespace A203399.P18397469520326172862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088362 (A024757 (n + 1)).toNat) 3

end

end A203399.P18397469520326172862

/-! ## A203399.P3367930112086235078

`A058305(A232106(n+1))%3`
-/

namespace A203399.P3367930112086235078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058305 (A232106 (n + 1)).toNat) 3

end

end A203399.P3367930112086235078

/-! ## A203399.P9411739385214534204

`and(A288735(A126024(n+3)), A376306(n+1))`
-/

namespace A203399.P9411739385214534204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A288735 (A126024 (n + 3)).toNat) (A376306 (n + 1))

end

end A203399.P9411739385214534204

/-! ## A203399.P10436370712643313303

`A268865(A282853(n))`
-/

namespace A203399.P10436370712643313303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268865 (A282853 n).toNat

end

end A203399.P10436370712643313303

/-! ## A203399.P4273948350163694172

`A281453(A013326(n))`
-/

namespace A203399.P4273948350163694172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281453 (A013326 n).toNat

end

end A203399.P4273948350163694172

