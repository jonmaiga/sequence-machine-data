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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A003600: Maximal number of pieces obtained by slicing a torus (or a bagel) with n cuts: (n^3 + 3*n^2 + 8*n)/6 (n > 0).

The programs for A003600, the canonical program `A003600.P1301183481127113703` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003600 has offset 0).

The definition of A003600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003600.P1301183481127113703

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=13, a(4)=24`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003600

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P1301183481127113703.Spec : Prop :=
  ∀ n, P1301183481127113703.a n = A003600 n

theorem P1301183481127113703.correct : P1301183481127113703.Spec := by
  intro n
  simp only [A003600]

end A003600

/-! ## A003600.P4754808077559699046

`∑[∑[char[2]+n]]+1`
-/

namespace A003600.P4754808077559699046
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A003600.P4754808077559699046

namespace A003600

/-- `∑[∑[char[2]+n]]+1` -/
def P4754808077559699046.Spec : Prop :=
  ∀ n, (P4754808077559699046.a n : ℤ) = A003600 n

end A003600

/-! ## A003600.P8223368693831384656

`∑[a(n-1)+n]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A003600.P8223368693831384656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003600.P8223368693831384656

namespace A003600

/-- `∑[a(n-1)+n]` -/
def P8223368693831384656.Spec : Prop :=
  ∀ n, (P8223368693831384656.a n : ℤ) = A003600 n

end A003600

/-! ## A003600.P1291240912606555889

`∑[∑[n]+a(n%2)]` with `a(0)=1, a(1)=1`
-/

namespace A003600.P1291240912606555889
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j + f1 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003600.P1291240912606555889

namespace A003600

/-- `∑[∑[n]+a(n%2)]` -/
def P1291240912606555889.Spec : Prop :=
  ∀ n, (P1291240912606555889.a n : ℤ) = A003600 n

end A003600

/-! ## A003600.P5531016438714904526

`record[abs(C(n+1, 3)+n-1)]`
-/

namespace A003600.P5531016438714904526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (n + 1) 3 + n : ℤ) - 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003600.P5531016438714904526

namespace A003600

/-- `record[abs(C(n+1, 3)+n-1)]` -/
def P5531016438714904526.Spec : Prop :=
  ∀ n, P5531016438714904526.a n = A003600 n

end A003600

/-! ## A003600.P10684880370432491389

`∑[∑[n]%(3-(n+1)²)+1]`
-/

namespace A003600.P10684880370432491389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (3 - ((n + 1) ^ 2 : ℤ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003600.P10684880370432491389

namespace A003600

/-- `∑[∑[n]%(3-(n+1)²)+1]` -/
def P10684880370432491389.Spec : Prop :=
  ∀ n, P10684880370432491389.a n = A003600 n

end A003600

/-! ## A003600.P6016025992478329576

`∑[∑[n]+a(gcd(n, n+1))]` with `a(0)=1, a(1)=1`
-/

namespace A003600.P6016025992478329576
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j + f1 (Nat.gcd n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003600.P6016025992478329576

namespace A003600

/-- `∑[∑[n]+a(gcd(n, n+1))]` -/
def P6016025992478329576.Spec : Prop :=
  ∀ n, (P6016025992478329576.a n : ℤ) = A003600 n

end A003600

/-! ## A003600.P11113704689710164455

`∑[2-(a(n-1)-n²)]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A003600.P11113704689710164455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n f1 =>
  2 - (f1 (n - 1) - (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003600.P11113704689710164455

namespace A003600

/-- `∑[2-(a(n-1)-n²)]` -/
def P11113704689710164455.Spec : Prop :=
  ∀ n, P11113704689710164455.a n = A003600 n

end A003600

/-! ## A003600.P14797543142704956153

`floor(sqrt((∑[C(n+1, 2)]+n)²+1))`
-/

namespace A003600.P14797543142704956153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2 + 1)

end

end A003600.P14797543142704956153

namespace A003600

/-- `floor(sqrt((∑[C(n+1, 2)]+n)²+1))` -/
def P14797543142704956153.Spec : Prop :=
  ∀ n, (P14797543142704956153.a n : ℤ) = A003600 n

end A003600

/-! ## A003600.P3694696808565669363

`∑[A000124(n-char[1])]`
-/

namespace A003600.P3694696808565669363
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n - (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003600.P3694696808565669363

namespace A003600

/-- `∑[A000124(n-char[1])]` -/
def P3694696808565669363.Spec : Prop :=
  ∀ n, P3694696808565669363.a n = A003600 n

end A003600

/-! ## A003600.P18024522529296744963

`∑[A060576(n)+∑[n]]`
-/

namespace A003600.P18024522529296744963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003600.P18024522529296744963

namespace A003600

/-- `∑[A060576(n)+∑[n]]` -/
def P18024522529296744963.Spec : Prop :=
  ∀ n, P18024522529296744963.a n = A003600 n

end A003600

/-! ## A003600.P16317968758467111161

`∑[∑[A263013(n)+n]]`
-/

namespace A003600.P16317968758467111161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263013 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003600.P16317968758467111161

namespace A003600

/-- `∑[∑[A263013(n)+n]]` -/
def P16317968758467111161.Spec : Prop :=
  ∀ n, P16317968758467111161.a n = A003600 n

end A003600

/-! ## A003600.P7992250312465125000

`∑[∑[n]+abs(A105812(n))]`
-/

namespace A003600.P7992250312465125000
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + |A105812 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003600.P7992250312465125000

namespace A003600

/-- `∑[∑[n]+abs(A105812(n))]` -/
def P7992250312465125000.Spec : Prop :=
  ∀ n, P7992250312465125000.a n = A003600 n

end A003600

/-! ## A003600.P18426442712949181823

`∑[∑[n]+abs(A134323(n+1))]`
-/

namespace A003600.P18426442712949181823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + |A134323 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003600.P18426442712949181823

namespace A003600

/-- `∑[∑[n]+abs(A134323(n+1))]` -/
def P18426442712949181823.Spec : Prop :=
  ∀ n, P18426442712949181823.a n = A003600 n

end A003600

/-! ## A003600.P2508643986165383033

`record[abs(∑[C(n, 2)+1]-2)]`
-/

namespace A003600.P2508643986165383033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003600.P2508643986165383033

namespace A003600

/-- `record[abs(∑[C(n, 2)+1]-2)]` -/
def P2508643986165383033.Spec : Prop :=
  ∀ n, P2508643986165383033.a n = A003600 n

end A003600

/-! ## A003600.P12086799183990134209

`record[abs(A283551(n))]`
-/

namespace A003600.P12086799183990134209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A283551 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003600.P12086799183990134209

namespace A003600

/-- `record[abs(A283551(n))]` -/
def P12086799183990134209.Spec : Prop :=
  ∀ n, P12086799183990134209.a n = A003600 n

end A003600

/-! ## A003600.P16605769473270176505

`record[abs(2-A000125(n))]`
-/

namespace A003600.P16605769473270176505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A000125 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003600.P16605769473270176505

namespace A003600

/-- `record[abs(2-A000125(n))]` -/
def P16605769473270176505.Spec : Prop :=
  ∀ n, P16605769473270176505.a n = A003600 n

end A003600

/-! ## A003600.P8037876710999475099

`∑[A186783(n+2)-n]`
-/

namespace A003600.P8037876710999475099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186783 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003600.P8037876710999475099

namespace A003600

/-- `∑[A186783(n+2)-n]` -/
def P8037876710999475099.Spec : Prop :=
  ∀ n, P8037876710999475099.a n = A003600 n

end A003600

/-!
# A003601: Numbers j such that the average of the divisors of j is an integer: sigma_0(j) divides sigma_1(j). Alternatively, numbers j such that tau(j) (A000005(j)) divides sigma(j) (A000203(j)).

The programs for A003601, the canonical program `A003601.P1376783723534109363` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003601 has offset 1).

The definition of A003601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003601.P3213996787634155091

`eq[1, A176801(n+1)]+1`
-/

namespace A003601.P3213996787634155091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003601.P3213996787634155091

namespace A003601

/-- `eq[1, A176801(n+1)]+1` -/
def P3213996787634155091.Spec : Prop :=
  ∀ n, (P3213996787634155091.a n : ℤ) = A003601 (n + 1)

end A003601

/-! ## A003601.P1376783723534109363

`eq[1, A245656(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A003601

/-- `eq[1, A245656(n+1)]+1` -/
def P1376783723534109363.Spec : Prop :=
  ∀ n, (P1376783723534109363.a n : ℤ) = A003601 (n + 1)

theorem P1376783723534109363.correct : P1376783723534109363.Spec := by
  intro n
  simp only [A003601, Nat.add_sub_cancel]

end A003601

/-! ## A003601.P15814886397443829790

`comp[A049642(n+1)-1]+1`
-/

namespace A003601.P15814886397443829790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A003601.P15814886397443829790

namespace A003601

/-- `comp[A049642(n+1)-1]+1` -/
def P15814886397443829790.Spec : Prop :=
  ∀ n, (P15814886397443829790.a n : ℤ) = A003601 (n + 1)

end A003601

/-! ## A003601.P5380865127854290288

`lt[A000203(n+1)%A000005(n+1), 1]+1`
-/

namespace A003601.P5380865127854290288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A000005 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A003601.P5380865127854290288

namespace A003601

/-- `lt[A000203(n+1)%A000005(n+1), 1]+1` -/
def P5380865127854290288.Spec : Prop :=
  ∀ n, (P5380865127854290288.a n : ℤ) = A003601 (n + 1)

end A003601

/-! ## A003601.P2398621319570626390

`filter[A046839(n+1), A245656(#)]`
-/

namespace A003601.P2398621319570626390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A003601.P2398621319570626390

namespace A003601

/-- `filter[A046839(n+1), A245656(#)]` -/
def P2398621319570626390.Spec : Prop :=
  ∀ n, P2398621319570626390.a n = A003601 (n + 1)

end A003601

/-! ## A003601.P10368088148932524426

`filter[A183300(n+1), A245656(#)]`
-/

namespace A003601.P10368088148932524426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A003601.P10368088148932524426

namespace A003601

/-- `filter[A183300(n+1), A245656(#)]` -/
def P10368088148932524426.Spec : Prop :=
  ∀ n, P10368088148932524426.a n = A003601 (n + 1)

end A003601

/-! ## A003601.P712340632934090214

`filter[A163162(n+1), A245656(#)]`
-/

namespace A003601.P712340632934090214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A003601.P712340632934090214

namespace A003601

/-- `filter[A163162(n+1), A245656(#)]` -/
def P712340632934090214.Spec : Prop :=
  ∀ n, P712340632934090214.a n = A003601 (n + 1)

end A003601

/-! ## A003601.P16269431457214159592

`filter[A138591(n+1), A245656(#)]`
-/

namespace A003601.P16269431457214159592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A003601.P16269431457214159592

namespace A003601

/-- `filter[A138591(n+1), A245656(#)]` -/
def P16269431457214159592.Spec : Prop :=
  ∀ n, P16269431457214159592.a n = A003601 (n + 1)

end A003601

/-! ## A003601.P4794083275952713072

`filter[n+1, A245656(#)]`
-/

namespace A003601.P4794083275952713072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j) = 1) n)

end

end A003601.P4794083275952713072

namespace A003601

/-- `filter[n+1, A245656(#)]` -/
def P4794083275952713072.Spec : Prop :=
  ∀ n, (P4794083275952713072.a n : ℤ) = A003601 (n + 1)

end A003601

/-! ## A003601.P6953604259933468989

`eq[1, A057021(n+1)]+1`
-/

namespace A003601.P6953604259933468989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003601.P6953604259933468989

namespace A003601

/-- `eq[1, A057021(n+1)]+1` -/
def P6953604259933468989.Spec : Prop :=
  ∀ n, (P6953604259933468989.a n : ℤ) = A003601 (n + 1)

end A003601

/-! ## A003601.P8301880688922970401

`lt[A054025(n+1), 1]+1`
-/

namespace A003601.P8301880688922970401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054025 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A003601.P8301880688922970401

namespace A003601

/-- `lt[A054025(n+1), 1]+1` -/
def P8301880688922970401.Spec : Prop :=
  ∀ n, (P8301880688922970401.a n : ℤ) = A003601 (n + 1)

end A003601

/-! ## A003601.P545312043235127779

`record[A000203(n+1)+n+1-A009278(n+1)]`
-/

namespace A003601.P545312043235127779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + ((n + 1 : ℤ) - A009278 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003601.P545312043235127779

namespace A003601

/-- `record[A000203(n+1)+n+1-A009278(n+1)]` -/
def P545312043235127779.Spec : Prop :=
  ∀ n, P545312043235127779.a n = A003601 (n + 1)

end A003601

/-! ## A003601.P7197575994767945640

`record[(n+1)/A000005(n+1)*A009205(n+1)]`
-/

namespace A003601.P7197575994767945640
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000005 (n + 1) : ℚ) * (A009205 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003601.P7197575994767945640

namespace A003601

/-- `record[(n+1)/A000005(n+1)*A009205(n+1)]` -/
def P7197575994767945640.Spec : Prop :=
  ∀ n, P7197575994767945640.a n = (A003601 (n + 1) : ℚ)

end A003601

/-! ## A003601.P8212802235480052447

`eq[n, A028310(n)*A057021(A028310(n))]`
-/

namespace A003601.P8212802235480052447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A057021 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003601.P8212802235480052447

namespace A003601

/-- `eq[n, A028310(n)*A057021(A028310(n))]` -/
def P8212802235480052447.Spec : Prop :=
  ∀ n, (P8212802235480052447.a n : ℤ) = A003601 (n + 1)

end A003601

/-! ## A003601.P882715947610395389

`lt[A060576(A286628(n+1)), A286628(n+1)]+1`
-/

namespace A003601.P882715947610395389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A286628 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286628 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A003601.P882715947610395389

namespace A003601

/-- `lt[A060576(A286628(n+1)), A286628(n+1)]+1` -/
def P882715947610395389.Spec : Prop :=
  ∀ n, (P882715947610395389.a n : ℤ) = A003601 (n + 1)

end A003601

/-! ## A003601.P4508154616266482189

`record[A029579(2*n)/A057021(A029579(2*n))]`
-/

namespace A003601.P4508154616266482189
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029579 (2 * n) : ℚ) / (A057021 (A029579 (2 * n)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003601.P4508154616266482189

namespace A003601

/-- `record[A029579(2*n)/A057021(A029579(2*n))]` -/
def P4508154616266482189.Spec : Prop :=
  ∀ n, P4508154616266482189.a n = (A003601 (n + 1) : ℚ)

end A003601

/-! ## A003601.P14849835341893581920

`record[A008624(2*n)*A245656(A008624(2*n))]`
-/

namespace A003601.P14849835341893581920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * n) * A245656 (A008624 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003601.P14849835341893581920

namespace A003601

/-- `record[A008624(2*n)*A245656(A008624(2*n))]` -/
def P14849835341893581920.Spec : Prop :=
  ∀ n, P14849835341893581920.a n = A003601 (n + 1)

end A003601

/-! ## A003601.P6565361608552673325

`record[A027750(n+1)/A057021(A027750(n+1))]`
-/

namespace A003601.P6565361608552673325
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027750 (n + 1) : ℚ) / (A057021 (A027750 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003601.P6565361608552673325

namespace A003601

/-- `record[A027750(n+1)/A057021(A027750(n+1))]` -/
def P6565361608552673325.Spec : Prop :=
  ∀ n, P6565361608552673325.a n = (A003601 (n + 1) : ℚ)

end A003601

/-! ## A003601.P18058254791010282341

`eq[A054025(A233583(n+1))+n, A233583(n+1)]`
-/

namespace A003601.P18058254791010282341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054025 (A233583 (n + 1)).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003601.P18058254791010282341

namespace A003601

/-- `eq[A054025(A233583(n+1))+n, A233583(n+1)]` -/
def P18058254791010282341.Spec : Prop :=
  ∀ n, (P18058254791010282341.a n : ℤ) = A003601 (n + 1)

end A003601

/-!
# A003602: Kimberling's paraphrase of the binary number system: if n = (2k-1)*2^m then a(n) = k.

The programs for A003602, the canonical program `A003602.P7612175048291952394` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003602 has offset 1).

The definition of A003602 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110963, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A003602.P1701830788088914631

`((n+1)/2^val(n+1, 2)+1)/2`
-/

namespace A003602.P1701830788088914631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1) / 2

end

end A003602.P1701830788088914631

namespace A003602

/-- `((n+1)/2^val(n+1, 2)+1)/2` -/
def P1701830788088914631.Spec : Prop :=
  ∀ n, P1701830788088914631.a n = (A003602 (n + 1) : ℚ)

end A003602

/-! ## A003602.P14361908234991488244

`A025480(n)+1`
-/

namespace A003602.P14361908234991488244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n + 1

end

end A003602.P14361908234991488244

namespace A003602

/-- `A025480(n)+1` -/
def P14361908234991488244.Spec : Prop :=
  ∀ n, P14361908234991488244.a n = A003602 (n + 1)

end A003602

/-! ## A003602.P7612175048291952394

`A110963(2*n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A003602

/-- `A110963(2*n+1)` -/
def P7612175048291952394.Spec : Prop :=
  ∀ n, P7612175048291952394.a n = A003602 (n + 1)

theorem P7612175048291952394.correct : P7612175048291952394.Spec := by
  intro n
  simp only [A003602, Nat.add_sub_cancel]

end A003602

/-! ## A003602.P7124283385895870500

`(A000265(n+1)+1)/2`
-/

namespace A003602.P7124283385895870500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) + 1 : ℚ) / 2

end

end A003602.P7124283385895870500

namespace A003602

/-- `(A000265(n+1)+1)/2` -/
def P7124283385895870500.Spec : Prop :=
  ∀ n, P7124283385895870500.a n = (A003602 (n + 1) : ℚ)

end A003602

/-! ## A003602.P18117043881939113207

`(n+1)/2^A001511(n+1)+1/2`
-/

namespace A003602.P18117043881939113207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 : ℚ) ^ (A001511 (n + 1) : ℤ) + (1 : ℚ) / 2

end

end A003602.P18117043881939113207

namespace A003602

/-- `(n+1)/2^A001511(n+1)+1/2` -/
def P18117043881939113207.Spec : Prop :=
  ∀ n, P18117043881939113207.a n = (A003602 (n + 1) : ℚ)

end A003602

/-! ## A003602.P6938965022172616396

`A123390(A118319(n+1))`
-/

namespace A003602.P6938965022172616396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123390 (A118319 (n + 1)).toNat

end

end A003602.P6938965022172616396

namespace A003602

/-- `A123390(A118319(n+1))` -/
def P6938965022172616396.Spec : Prop :=
  ∀ n, P6938965022172616396.a n = A003602 (n + 1)

end A003602

/-! ## A003602.P7613628622908658950

`A181988(n+1)/A001511(n+1)`
-/

namespace A003602.P7613628622908658950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181988 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A003602.P7613628622908658950

namespace A003602

/-- `A181988(n+1)/A001511(n+1)` -/
def P7613628622908658950.Spec : Prop :=
  ∀ n, P7613628622908658950.a n = (A003602 (n + 1) : ℚ)

end A003602

/-! ## A003602.P4085206767614232798

`A349135(4*(n+1))`
-/

namespace A003602.P4085206767614232798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349135 (4 * (n + 1))

end

end A003602.P4085206767614232798

namespace A003602

/-- `A349135(4*(n+1))` -/
def P4085206767614232798.Spec : Prop :=
  ∀ n, P4085206767614232798.a n = A003602 (n + 1)

end A003602

/-! ## A003602.P18355080967946337818

`A249745(A126760(A003961(n+1)))`
-/

namespace A003602.P18355080967946337818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249745 (A126760 (A003961 (n + 1)).toNat).toNat

end

end A003602.P18355080967946337818

namespace A003602

/-- `A249745(A126760(A003961(n+1)))` -/
def P18355080967946337818.Spec : Prop :=
  ∀ n, P18355080967946337818.a n = A003602 (n + 1)

end A003602

/-! ## A003602.P11967935328779392122

`A249745(A253887(A048673(n+1)))`
-/

namespace A003602.P11967935328779392122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249745 (A253887 (A048673 (n + 1)).toNat).toNat

end

end A003602.P11967935328779392122

namespace A003602

/-- `A249745(A253887(A048673(n+1)))` -/
def P11967935328779392122.Spec : Prop :=
  ∀ n, P11967935328779392122.a n = A003602 (n + 1)

end A003602

/-! ## A003602.P7093450138616772326

`floor(n/(xor(n, n+1)+1))+1`
-/

namespace A003602.P7093450138616772326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1

end

end A003602.P7093450138616772326

namespace A003602

/-- `floor(n/(xor(n, n+1)+1))+1` -/
def P7093450138616772326.Spec : Prop :=
  ∀ n, P7093450138616772326.a n = A003602 (n + 1)

end A003602

/-! ## A003602.P10469672467948286880

`ceil((n+1)/(xor(n, n+1)+1))`
-/

namespace A003602.P10469672467948286880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌉

end

end A003602.P10469672467948286880

namespace A003602

/-- `ceil((n+1)/(xor(n, n+1)+1))` -/
def P10469672467948286880.Spec : Prop :=
  ∀ n, P10469672467948286880.a n = A003602 (n + 1)

end A003602

/-! ## A003602.P6779457773431139755

`round((n+1)/(xor(n, n+1)+1))`
-/

namespace A003602.P6779457773431139755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))

end

end A003602.P6779457773431139755

namespace A003602

/-- `round((n+1)/(xor(n, n+1)+1))` -/
def P6779457773431139755.Spec : Prop :=
  ∀ n, P6779457773431139755.a n = A003602 (n + 1)

end A003602

/-! ## A003602.P12310428892423052908

`floor(n/2^val(n+1, 2))/2+1`
-/

namespace A003602.P12310428892423052908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / 2 + 1

end

end A003602.P12310428892423052908

namespace A003602

/-- `floor(n/2^val(n+1, 2))/2+1` -/
def P12310428892423052908.Spec : Prop :=
  ∀ n, P12310428892423052908.a n = (A003602 (n + 1) : ℚ)

end A003602

/-! ## A003602.P15049760442949799978

`A103391(n+2)-1`
-/

namespace A003602.P15049760442949799978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (n + 2) - 1

end

end A003602.P15049760442949799978

namespace A003602

/-- `A103391(n+2)-1` -/
def P15049760442949799978.Spec : Prop :=
  ∀ n, P15049760442949799978.a n = A003602 (n + 1)

end A003602

/-! ## A003602.P18303894857975824374

`A110962(2*n)+1`
-/

namespace A003602.P18303894857975824374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (2 * n) + 1

end

end A003602.P18303894857975824374

namespace A003602

/-- `A110962(2*n)+1` -/
def P18303894857975824374.Spec : Prop :=
  ∀ n, P18303894857975824374.a n = A003602 (n + 1)

end A003602

/-! ## A003602.P12767195796165930439

`A153733(n)/2+1`
-/

namespace A003602.P12767195796165930439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153733 n : ℚ) / 2 + 1

end

end A003602.P12767195796165930439

namespace A003602

/-- `A153733(n)/2+1` -/
def P12767195796165930439.Spec : Prop :=
  ∀ n, P12767195796165930439.a n = (A003602 (n + 1) : ℚ)

end A003602

/-! ## A003602.P883277264681122663

`∑[A108715(abs(1-n))]`
-/

namespace A003602.P883277264681122663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108715 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003602.P883277264681122663

namespace A003602

/-- `∑[A108715(abs(1-n))]` -/
def P883277264681122663.Spec : Prop :=
  ∀ n, P883277264681122663.a n = A003602 (n + 1)

end A003602

/-! ## A003602.P6414767846615143980

`∑{d}[n+1, A349136(#)]`
-/

namespace A003602.P6414767846615143980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349136 d

end

end A003602.P6414767846615143980

namespace A003602

/-- `∑{d}[n+1, A349136(#)]` -/
def P6414767846615143980.Spec : Prop :=
  ∀ n, P6414767846615143980.a n = A003602 (n + 1)

end A003602

/-! ## A003602.P477131537767092379

`ceil(A000265(n+1)/2)`
-/

namespace A003602.P477131537767092379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000265 (n + 1) : ℚ) / 2⌉

end

end A003602.P477131537767092379

namespace A003602

/-- `ceil(A000265(n+1)/2)` -/
def P477131537767092379.Spec : Prop :=
  ∀ n, P477131537767092379.a n = A003602 (n + 1)

end A003602

/-!
# A003603: Fractal sequence obtained from Fibonacci numbers (or Wythoff array).

The programs for A003603, the canonical program `A003603.P16957953193221149440` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003603 has offset 1).

The definition of A003603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003603.P6009801369931489951

`A019586(n+1)+1`
-/

namespace A003603.P6009801369931489951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (n + 1) + 1

end

end A003603.P6009801369931489951

namespace A003603

/-- `A019586(n+1)+1` -/
def P6009801369931489951.Spec : Prop :=
  ∀ n, P6009801369931489951.a n = A003603 (n + 1)

end A003603

/-! ## A003603.P16957953193221149440

`abs(floor((n+1)/ϕ)-floor((n+1)*(1/ϕ+1/(-ϕ)^(A035612(n+1)+1))))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A003603

/-- `abs(floor((n+1)/ϕ)-floor((n+1)*(1/ϕ+1/(-ϕ)^(A035612(n+1)+1))))` -/
def P16957953193221149440.Spec : Prop :=
  ∀ n, P16957953193221149440.a n = A003603 (n + 1)

theorem P16957953193221149440.correct : P16957953193221149440.Spec := by
  intro n
  simp only [A003603, Nat.add_sub_cancel]

end A003603

/-! ## A003603.P16648053077311964868

`A120873(A026242(n+1))`
-/

namespace A003603.P16648053077311964868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120873 (A026242 (n + 1)).toNat

end

end A003603.P16648053077311964868

namespace A003603

/-- `A120873(A026242(n+1))` -/
def P16648053077311964868.Spec : Prop :=
  ∀ n, P16648053077311964868.a n = A003603 (n + 1)

end A003603

/-! ## A003603.P4586352285775792627

`A026242(A348853(n+1)+1)`
-/

namespace A003603.P4586352285775792627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026242 (A348853 (n + 1) + 1).toNat

end

end A003603.P4586352285775792627

namespace A003603

/-- `A026242(A348853(n+1)+1)` -/
def P4586352285775792627.Spec : Prop :=
  ∀ n, P4586352285775792627.a n = A003603 (n + 1)

end A003603

/-! ## A003603.P13470675967827441361

`A189663(A348853(n+1)+1)`
-/

namespace A003603.P13470675967827441361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A348853 (n + 1) + 1).toNat

end

end A003603.P13470675967827441361

namespace A003603

/-- `A189663(A348853(n+1)+1)` -/
def P13470675967827441361.Spec : Prop :=
  ∀ n, P13470675967827441361.a n = A003603 (n + 1)

end A003603

/-! ## A003603.P17227475791925860115

`A360485(n+1)-A035614(n)`
-/

namespace A003603.P17227475791925860115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360485 (n + 1) - A035614 n

end

end A003603.P17227475791925860115

namespace A003603

/-- `A360485(n+1)-A035614(n)` -/
def P17227475791925860115.Spec : Prop :=
  ∀ n, P17227475791925860115.a n = A003603 (n + 1)

end A003603

/-! ## A003603.P1022691039294427536

`A195172(ceil(A348853(n+1)/2))`
-/

namespace A003603.P1022691039294427536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195172 ⌈(A348853 (n + 1) : ℚ) / 2⌉.toNat

end

end A003603.P1022691039294427536

namespace A003603

/-- `A195172(ceil(A348853(n+1)/2))` -/
def P1022691039294427536.Spec : Prop :=
  ∀ n, P1022691039294427536.a n = A003603 (n + 1)

end A003603

/-! ## A003603.P17037651595158776254

`A195172(A348853(n+1)+1)/2`
-/

namespace A003603.P17037651595158776254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195172 (A348853 (n + 1) + 1).toNat : ℚ) / 2

end

end A003603.P17037651595158776254

namespace A003603

/-- `A195172(A348853(n+1)+1)/2` -/
def P17037651595158776254.Spec : Prop :=
  ∀ n, P17037651595158776254.a n = (A003603 (n + 1) : ℚ)

end A003603

/-! ## A003603.P10729024344422172548

`A035612(n+1)-A191360(n+1)`
-/

namespace A003603.P10729024344422172548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (n + 1) - A191360 (n + 1)

end

end A003603.P10729024344422172548

namespace A003603

/-- `A035612(n+1)-A191360(n+1)` -/
def P10729024344422172548.Spec : Prop :=
  ∀ n, P10729024344422172548.a n = A003603 (n + 1)

end A003603

/-! ## A003603.P11953699480038525229

`A005206(A005206(A348853(n+1)))`
-/

namespace A003603.P11953699480038525229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A005206 (A348853 (n + 1)).toNat).toNat

end

end A003603.P11953699480038525229

namespace A003603

/-- `A005206(A005206(A348853(n+1)))` -/
def P11953699480038525229.Spec : Prop :=
  ∀ n, P11953699480038525229.a n = A003603 (n + 1)

end A003603

/-! ## A003603.P3713940749126759499

`A060144(A348853(n+1)+2)`
-/

namespace A003603.P3713940749126759499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A348853 (n + 1) + 2).toNat

end

end A003603.P3713940749126759499

namespace A003603

/-- `A060144(A348853(n+1)+2)` -/
def P3713940749126759499.Spec : Prop :=
  ∀ n, P3713940749126759499.a n = A003603 (n + 1)

end A003603

/-! ## A003603.P10351838941712238372

`A005206(A005206(A349238(A349238(n+1))))`
-/

namespace A003603.P10351838941712238372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A005206 (A349238 (A349238 (n + 1)).toNat).toNat).toNat

end

end A003603.P10351838941712238372

namespace A003603

/-- `A005206(A005206(A349238(A349238(n+1))))` -/
def P10351838941712238372.Spec : Prop :=
  ∀ n, P10351838941712238372.a n = A003603 (n + 1)

end A003603

/-! ## A003603.P3014224445344809890

`A026350(A026351(A019586(A026350(A026351(n)))))`
-/

namespace A003603.P3014224445344809890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026350 (A026351 (A019586 (A026350 (A026351 n).toNat).toNat).toNat).toNat

end

end A003603.P3014224445344809890

namespace A003603

/-- `A026350(A026351(A019586(A026350(A026351(n)))))` -/
def P3014224445344809890.Spec : Prop :=
  ∀ n, P3014224445344809890.a n = A003603 (n + 1)

end A003603

/-! ## A003603.P9266926213005029438

`A120873(A120873(A348853(A120873(A000201(n+1)))))`
-/

namespace A003603.P9266926213005029438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120873 (A120873 (A348853 (A120873 (A000201 (n + 1)).toNat).toNat).toNat).toNat

end

end A003603.P9266926213005029438

namespace A003603

/-- `A120873(A120873(A348853(A120873(A000201(n+1)))))` -/
def P9266926213005029438.Spec : Prop :=
  ∀ n, P9266926213005029438.a n = A003603 (n + 1)

end A003603

/-! ## A003603.P5500825168500773355

`A026350(A026352(A019586(A026350(A026352(n)))))`
-/

namespace A003603.P5500825168500773355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026350 (A026352 (A019586 (A026350 (A026352 n).toNat).toNat).toNat).toNat

end

end A003603.P5500825168500773355

namespace A003603

/-- `A026350(A026352(A019586(A026350(A026352(n)))))` -/
def P5500825168500773355.Spec : Prop :=
  ∀ n, P5500825168500773355.a n = A003603 (n + 1)

end A003603

/-! ## A003603.P2518074705771149767

`A074049(A304100(n+1))`
-/

namespace A003603.P2518074705771149767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074049 (A304100 (n + 1)).toNat

end

end A003603.P2518074705771149767

namespace A003603

/-- `A074049(A304100(n+1))` -/
def P2518074705771149767.Spec : Prop :=
  ∀ n, P2518074705771149767.a n = A003603 (n + 1)

end A003603

/-! ## A003603.P5150601036752455877

`A048680(A304100(n+1)-1)+1`
-/

namespace A003603.P5150601036752455877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A304100 (n + 1) - 1).toNat + 1

end

end A003603.P5150601036752455877

namespace A003603

/-- `A048680(A304100(n+1)-1)+1` -/
def P5150601036752455877.Spec : Prop :=
  ∀ n, P5150601036752455877.a n = A003603 (n + 1)

end A003603

/-! ## A003603.P12804979474199746075

`A002260(A064274(n+1))`
-/

namespace A003603.P12804979474199746075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A064274 (n + 1)).toNat

end

end A003603.P12804979474199746075

namespace A003603

/-- `A002260(A064274(n+1))` -/
def P12804979474199746075.Spec : Prop :=
  ∀ n, P12804979474199746075.a n = A003603 (n + 1)

end A003603

/-!
# A003604: Number of primes <= n!.

The programs for A003604, there is no canonical definition to state claims against.
-/

/-! ## A003604.P3491736269565394301

`A061232(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A003604.P3491736269565394301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A061232 (n - 1) + a (n - 1)

end

end A003604.P3491736269565394301

/-! ## A003604.P3027140889190538400

`∑[A061232(log2(A011782(n)))]`
-/

namespace A003604.P3027140889190538400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061232 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003604.P3027140889190538400

/-! ## A003604.P10198348358296532857

`∑[A061232(val(A011782(n), 2))]`
-/

namespace A003604.P10198348358296532857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061232 (SequenceMachineLib.valuation (A011782 n).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003604.P10198348358296532857

/-! ## A003604.P11219065799598519416

`∑[A061232(A114327(C(n, 2)))]`
-/

namespace A003604.P11219065799598519416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061232 (A114327 (Nat.choose n 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003604.P11219065799598519416

/-! ## A003604.P2192154179652949979

`A000720(n!)`
-/

namespace A003604.P2192154179652949979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Nat.factorial n)

end

end A003604.P2192154179652949979

/-!
# A003605: Unique monotonic sequence of nonnegative integers satisfying a(a(n)) = 3n.

The programs for A003605, the canonical program `A003605.P2942983274760748228` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003605 has offset 0).

The definition of A003605 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006166, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A003605.P2942983274760748228

`n+A006166(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A003605

/-- `n+A006166(n)` -/
def P2942983274760748228.Spec : Prop :=
  ∀ n, P2942983274760748228.a n = A003605 n

theorem P2942983274760748228.correct : P2942983274760748228.Spec := by
  intro n
  simp only [A003605]

end A003605

/-! ## A003605.P6782871790397758974

`A006166(n)-A001489(n)`
-/

namespace A003605.P6782871790397758974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006166 n - A001489 n

end

end A003605.P6782871790397758974

namespace A003605

/-- `A006166(n)-A001489(n)` -/
def P6782871790397758974.Spec : Prop :=
  ∀ n, P6782871790397758974.a n = A003605 n

end A003605

/-! ## A003605.P2670616252620400657

`∪[A157671(n+1), A008585(n)]`
-/

namespace A003605.P2670616252620400657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003605.P2670616252620400657

namespace A003605

/-- `∪[A157671(n+1), A008585(n)]` -/
def P2670616252620400657.Spec : Prop :=
  ∀ n, (P2670616252620400657.a n : ℤ) = A003605 n

end A003605

/-! ## A003605.P3072300792723309462

`A080722(n+1)-1`
-/

namespace A003605.P3072300792723309462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080722 (n + 1) - 1

end

end A003605.P3072300792723309462

namespace A003605

/-- `A080722(n+1)-1` -/
def P3072300792723309462.Spec : Prop :=
  ∀ n, P3072300792723309462.a n = A003605 n

end A003605

/-! ## A003605.P6413332818390415354

`Δ[∑[A080722(n)]-n]`
-/

namespace A003605.P6413332818390415354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080722 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003605.P6413332818390415354

namespace A003605

/-- `Δ[∑[A080722(n)]-n]` -/
def P6413332818390415354.Spec : Prop :=
  ∀ n, P6413332818390415354.a n = A003605 n

end A003605

/-! ## A003605.P17526068467119799807

`A023443(A080722(n+1))`
-/

namespace A003605.P17526068467119799807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A080722 (n + 1)).toNat

end

end A003605.P17526068467119799807

namespace A003605

/-- `A023443(A080722(n+1))` -/
def P17526068467119799807.Spec : Prop :=
  ∀ n, P17526068467119799807.a n = A003605 n

end A003605

/-! ## A003605.P14023899624984422334

`eq[A257075(n), A257075(A330740(n)+2)]`
-/

namespace A003605.P14023899624984422334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 (A330740 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003605.P14023899624984422334

namespace A003605

/-- `eq[A257075(n), A257075(A330740(n)+2)]` -/
def P14023899624984422334.Spec : Prop :=
  ∀ n, (P14023899624984422334.a n : ℤ) = A003605 n

end A003605

/-! ## A003605.P17967365104329955309

`comp[A330740(comp[A008585(n)])]`
-/

namespace A003605.P17967365104329955309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330740 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A003605.P17967365104329955309

namespace A003605

/-- `comp[A330740(comp[A008585(n)])]` -/
def P17967365104329955309.Spec : Prop :=
  ∀ n, (P17967365104329955309.a n : ℤ) = A003605 n

end A003605

/-! ## A003605.P12138840373344976968

`eq[1, A005131(A265353(n))]`
-/

namespace A003605.P12138840373344976968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 (A265353 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003605.P12138840373344976968

namespace A003605

/-- `eq[1, A005131(A265353(n))]` -/
def P12138840373344976968.Spec : Prop :=
  ∀ n, (P12138840373344976968.a n : ℤ) = A003605 n

end A003605

/-! ## A003605.P12866240383868329189

`comp[A321464(3*n+1)]`
-/

namespace A003605.P12866240383868329189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321464 (3 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A003605.P12866240383868329189

namespace A003605

/-- `comp[A321464(3*n+1)]` -/
def P12866240383868329189.Spec : Prop :=
  ∀ n, (P12866240383868329189.a n : ℤ) = A003605 n

end A003605

/-! ## A003605.P1883038896098447873

`eq[1, A257075(A263273(n))]`
-/

namespace A003605.P1883038896098447873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 (A263273 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003605.P1883038896098447873

namespace A003605

/-- `eq[1, A257075(A263273(n))]` -/
def P1883038896098447873.Spec : Prop :=
  ∀ n, (P1883038896098447873.a n : ℤ) = A003605 n

end A003605

/-! ## A003605.P3823716831763942327

`eq[1, A267318(A321464(n))]`
-/

namespace A003605.P3823716831763942327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267318 (A321464 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003605.P3823716831763942327

namespace A003605

/-- `eq[1, A267318(A321464(n))]` -/
def P3823716831763942327.Spec : Prop :=
  ∀ n, (P3823716831763942327.a n : ℤ) = A003605 n

end A003605

/-! ## A003605.P5261674295449906420

`comp[A117967(comp[A008585(n)])]`
-/

namespace A003605.P5261674295449906420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A003605.P5261674295449906420

namespace A003605

/-- `comp[A117967(comp[A008585(n)])]` -/
def P5261674295449906420.Spec : Prop :=
  ∀ n, (P5261674295449906420.a n : ℤ) = A003605 n

end A003605

/-! ## A003605.P14091522629190378372

`eq[1, A038500(A263273(n)+2)]`
-/

namespace A003605.P14091522629190378372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A263273 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003605.P14091522629190378372

namespace A003605

/-- `eq[1, A038500(A263273(n)+2)]` -/
def P14091522629190378372.Spec : Prop :=
  ∀ n, (P14091522629190378372.a n : ℤ) = A003605 n

end A003605

/-! ## A003605.P15447421762986668345

`eq[1, A038500(A321464(n)+2)]`
-/

namespace A003605.P15447421762986668345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A321464 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003605.P15447421762986668345

namespace A003605

/-- `eq[1, A038500(A321464(n)+2)]` -/
def P15447421762986668345.Spec : Prop :=
  ∀ n, (P15447421762986668345.a n : ℤ) = A003605 n

end A003605

/-! ## A003605.P1864135098817887986

`eq[1, A038500(A265341(n))]`
-/

namespace A003605.P1864135098817887986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A265341 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003605.P1864135098817887986

namespace A003605

/-- `eq[1, A038500(A265341(n))]` -/
def P1864135098817887986.Spec : Prop :=
  ∀ n, (P1864135098817887986.a n : ℤ) = A003605 n

end A003605

/-! ## A003605.P2490928800331141818

`comp[A216851(n+1)]`
-/

namespace A003605.P2490928800331141818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A003605.P2490928800331141818

namespace A003605

/-- `comp[A216851(n+1)]` -/
def P2490928800331141818.Spec : Prop :=
  ∀ n, (P2490928800331141818.a n : ℤ) = A003605 n

end A003605

/-!
# A003606: a(n) = number of types of conjugacy classes in GL(n,q) (this is independent of q).

The programs for A003606, there is no canonical definition to state claims against.
-/

/-! ## A003606.P418857545839985418

`A183544(A242172(n))`
-/

namespace A003606.P418857545839985418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183544 (A242172 n).toNat

end

end A003606.P418857545839985418

/-! ## A003606.P7762842769838612807

`∑[A133137(A282684(n))]`
-/

namespace A003606.P7762842769838612807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A282684 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003606.P7762842769838612807

/-!
# A003607: Location of 0's when natural numbers are listed in binary.

The programs for A003607, there is no canonical definition to state claims against.
-/

/-! ## A003607.P11572787657977697985

`comp[A030303(n+1)]`
-/

namespace A003607.P11572787657977697985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A003607.P11572787657977697985

/-! ## A003607.P18390203328509393370

`eq[0, A030190(n)]`
-/

namespace A003607.P18390203328509393370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003607.P18390203328509393370

/-! ## A003607.P15138449804041005806

`record[(n+1)*(1-A030190(n+1))]`
-/

namespace A003607.P15138449804041005806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A030190 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003607.P15138449804041005806

/-! ## A003607.P9460107307218458854

`lt[A030190(n), A000038(n)!]`
-/

namespace A003607.P9460107307218458854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A003607.P9460107307218458854

/-! ## A003607.P11434442945412300336

`record[n-A000290(n*A030190(n))]`
-/

namespace A003607.P11434442945412300336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000290 ((n : ℤ) * A030190 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003607.P11434442945412300336

/-! ## A003607.P7807514653965129852

`record[n-A000788(n*A030190(n))]`
-/

namespace A003607.P7807514653965129852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000788 ((n : ℤ) * A030190 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003607.P7807514653965129852

/-! ## A003607.P6594448814716637010

`record[n-A173318(n*A030190(n))]`
-/

namespace A003607.P6594448814716637010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A173318 ((n : ℤ) * A030190 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003607.P6594448814716637010

/-! ## A003607.P10766281969431613332

`eq[1, A030315(n)]`
-/

namespace A003607.P10766281969431613332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003607.P10766281969431613332

/-! ## A003607.P7087915896516833038

`lt[A030190(n), tanh(A066099(n+1))]`
-/

namespace A003607.P7087915896516833038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (A066099 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A003607.P7087915896516833038

/-! ## A003607.P15556452162834410918

`record[n-A030190(n)*A051698(n)]`
-/

namespace A003607.P15556452162834410918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A030190 n * A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003607.P15556452162834410918

/-! ## A003607.P15957990067949452264

`record[n-A030190(n)*A167499(n)]`
-/

namespace A003607.P15957990067949452264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A030190 n * A167499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003607.P15957990067949452264

/-! ## A003607.P18057253326668062470

`lt[A030190(n), A057427(A247253(n+1))]`
-/

namespace A003607.P18057253326668062470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A247253 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003607.P18057253326668062470

/-! ## A003607.P4033043776179998078

`filter[A092942(n), A030315(#)]`
-/

namespace A003607.P4033043776179998078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030315 (f1 j).toNat = 1) n)

end

end A003607.P4033043776179998078

/-! ## A003607.P6406687568503900489

`lt[A030190(n), A030190(A030303(n+1))]`
-/

namespace A003607.P6406687568503900489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A030303 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003607.P6406687568503900489

/-! ## A003607.P15110729562053010094

`filter[A179820(2*n), A030315(#)]`
-/

namespace A003607.P15110729562053010094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179820 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030315 (f1 j).toNat = 1) n)

end

end A003607.P15110729562053010094

/-! ## A003607.P10104705268830046605

`filter[A267530(2*n), A030315(#)]`
-/

namespace A003607.P10104705268830046605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267530 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030315 (f1 j).toNat = 1) n)

end

end A003607.P10104705268830046605

/-! ## A003607.P2749961158240394170

`lt[A030190(n), A030190(A030304(n+3))]`
-/

namespace A003607.P2749961158240394170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A030304 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003607.P2749961158240394170

/-!
# A003608: Add 4, then reverse digits; start with 0.

The programs for A003608, there is no canonical definition to state claims against.
-/

/-! ## A003608.P17216432034069309669

`A004086(a(n-1)+4)` with `a(0)=0`
-/

namespace A003608.P17216432034069309669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004086 (a (n - 1) + 4).toNat

end

end A003608.P17216432034069309669

/-!
# A003610: Symmetries in unrooted (1,3) trees on 2n vertices.

The programs for A003610, there is no canonical definition to state claims against.
-/

/-! ## A003610.P9292837480207606881

`Δ[record[A347191(A362083(n+1))]]`
-/

namespace A003610.P9292837480207606881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347191 (A362083 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003610.P9292837480207606881

/-!
# A003613: Number of symmetries in planted (1,4) trees on 3n-1 vertices.

The programs for A003613, there is no canonical definition to state claims against.
-/

/-! ## A003613.P18049306019616547748

`∏{p}[A069607(lcm(7, a(n-1))), #-1]` with `a(0)=2`
-/

namespace A003613.P18049306019616547748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A069607 (Int.lcm 7 (f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A003613.P18049306019616547748

/-!
# A003614: Symmetries in unrooted (1,4) trees on 3n-1 vertices.

The programs for A003614, there is no canonical definition to state claims against.
-/

/-! ## A003614.P9247105786599571255

`A114810(A123615(n+1))`
-/

namespace A003614.P9247105786599571255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114810 (A123615 (n + 1)).toNat

end

end A003614.P9247105786599571255

/-!
# A003615: Symmetries in planted 4-trees on n+1 vertices.

The programs for A003615, there is no canonical definition to state claims against.
-/

/-! ## A003615.P4135407299863573975

`A007305(A209657(n)*A293076(n))`
-/

namespace A003615.P4135407299863573975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A209657 n * A293076 n).toNat

end

end A003615.P4135407299863573975

/-! ## A003615.P14943029763707184364

`A220431(A000142(n+1))+A062624(n)`
-/

namespace A003615.P14943029763707184364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220431 (A000142 (n + 1)).toNat + A062624 n

end

end A003615.P14943029763707184364

/-! ## A003615.P2181301426329117891

`A087061(A001003(n)*A137760(n+1))`
-/

namespace A003615.P2181301426329117891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 (A001003 n * A137760 (n + 1)).toNat

end

end A003615.P2181301426329117891

/-!
# A003617: Smallest n-digit prime.

The programs for A003617, the canonical program `A003617.P3664545779481022082` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003617 has offset 1).

The definition of A003617 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A003617.P3664545779481022082

`A151800(A011557(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A003617

/-- `A151800(A011557(n))` -/
def P3664545779481022082.Spec : Prop :=
  ∀ n, P3664545779481022082.a n = A003617 (n + 1)

theorem P3664545779481022082.correct : P3664545779481022082.Spec := by
  intro n
  simp only [A003617, Nat.add_sub_cancel]

end A003617

/-! ## A003617.P6302379071049233898

`A073914(∑[n])`
-/

namespace A003617.P6302379071049233898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073914 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003617.P6302379071049233898

namespace A003617

/-- `A073914(∑[n])` -/
def P6302379071049233898.Spec : Prop :=
  ∀ n, P6302379071049233898.a n = A003617 (n + 1)

end A003617

/-! ## A003617.P3389717752905519007

`A101592(Δ[n²])`
-/

namespace A003617.P3389717752905519007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003617.P3389717752905519007

namespace A003617

/-- `A101592(Δ[n²])` -/
def P3389717752905519007.Spec : Prop :=
  ∀ n, P3389717752905519007.a n = A003617 (n + 1)

end A003617

/-! ## A003617.P9297294217182139303

`A139052(Δ[n²])`
-/

namespace A003617.P9297294217182139303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139052 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003617.P9297294217182139303

namespace A003617

/-- `A139052(Δ[n²])` -/
def P9297294217182139303.Spec : Prop :=
  ∀ n, P9297294217182139303.a n = A003617 (n + 1)

end A003617

/-! ## A003617.P1743903774097881346

`A139053(3*n+1)`
-/

namespace A003617.P1743903774097881346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (3 * n + 1)

end

end A003617.P1743903774097881346

namespace A003617

/-- `A139053(3*n+1)` -/
def P1743903774097881346.Spec : Prop :=
  ∀ n, P1743903774097881346.a n = A003617 (n + 1)

end A003617

/-! ## A003617.P13386980902687581434

`A033873(n)+10^n`
-/

namespace A003617.P13386980902687581434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033873 n + (10 ^ n : ℤ)

end

end A003617.P13386980902687581434

namespace A003617

/-- `A033873(n)+10^n` -/
def P13386980902687581434.Spec : Prop :=
  ∀ n, P13386980902687581434.a n = A003617 (n + 1)

end A003617

/-! ## A003617.P11189257949013133130

`lcm(ceil(acot(n)), A139052(2*n+1))`
-/

namespace A003617.P11189257949013133130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈SequenceMachineLib.acot (n : ℝ)⌉ (A139052 (2 * n + 1))

end

end A003617.P11189257949013133130

namespace A003617

/-- `lcm(ceil(acot(n)), A139052(2*n+1))` -/
def P11189257949013133130.Spec : Prop :=
  ∀ n, (P11189257949013133130.a n : ℤ) = A003617 (n + 1)

end A003617

/-! ## A003617.P7253183682452910581

`record[A101592(A093178(n))]`
-/

namespace A003617.P7253183682452910581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003617.P7253183682452910581

namespace A003617

/-- `record[A101592(A093178(n))]` -/
def P7253183682452910581.Spec : Prop :=
  ∀ n, P7253183682452910581.a n = A003617 (n + 1)

end A003617

/-! ## A003617.P15657466561057083056

`A272006(n+1)+A062397(n)`
-/

namespace A003617.P15657466561057083056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272006 (n + 1) + A062397 n

end

end A003617.P15657466561057083056

namespace A003617

/-- `A272006(n+1)+A062397(n)` -/
def P15657466561057083056.Spec : Prop :=
  ∀ n, P15657466561057083056.a n = A003617 (n + 1)

end A003617

/-! ## A003617.P3197501888637236568

`∩[A073914(n), A101592(n+1)]`
-/

namespace A003617.P3197501888637236568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073914 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003617.P3197501888637236568

namespace A003617

/-- `∩[A073914(n), A101592(n+1)]` -/
def P3197501888637236568.Spec : Prop :=
  ∀ n, (P3197501888637236568.a n : ℤ) = A003617 (n + 1)

end A003617

/-! ## A003617.P4520423913111002532

`A003618(n+1)-A073862(n+1)`
-/

namespace A003617.P4520423913111002532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (n + 1) - A073862 (n + 1)

end

end A003617.P4520423913111002532

namespace A003617

/-- `A003618(n+1)-A073862(n+1)` -/
def P4520423913111002532.Spec : Prop :=
  ∀ n, P4520423913111002532.a n = A003617 (n + 1)

end A003617

/-! ## A003617.P5271915316351498422

`∩[A101592(n+1), A139052(n+1)]`
-/

namespace A003617.P5271915316351498422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003617.P5271915316351498422

namespace A003617

/-- `∩[A101592(n+1), A139052(n+1)]` -/
def P5271915316351498422.Spec : Prop :=
  ∀ n, (P5271915316351498422.a n : ℤ) = A003617 (n + 1)

end A003617

/-! ## A003617.P125120019251117600

`∩[A101592(n+1), A139053(n+1)]`
-/

namespace A003617.P125120019251117600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003617.P125120019251117600

namespace A003617

/-- `∩[A101592(n+1), A139053(n+1)]` -/
def P125120019251117600.Spec : Prop :=
  ∀ n, (P125120019251117600.a n : ℤ) = A003617 (n + 1)

end A003617

/-! ## A003617.P9850110525555195178

`record[A101592(n+1)/(A004442(n)-n)]`
-/

namespace A003617.P9850110525555195178
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101592 (n + 1) : ℚ) / (A004442 n - (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003617.P9850110525555195178

namespace A003617

/-- `record[A101592(n+1)/(A004442(n)-n)]` -/
def P9850110525555195178.Spec : Prop :=
  ∀ n, P9850110525555195178.a n = (A003617 (n + 1) : ℚ)

end A003617

/-! ## A003617.P13274670905101794682

`A101592(2*n+1)+C(2, A101592(2*(n+1)))`
-/

namespace A003617.P13274670905101794682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (2 * n + 1) + (Nat.choose 2 (A101592 (2 * (n + 1))).toNat : ℤ)

end

end A003617.P13274670905101794682

namespace A003617

/-- `A101592(2*n+1)+C(2, A101592(2*(n+1)))` -/
def P13274670905101794682.Spec : Prop :=
  ∀ n, P13274670905101794682.a n = A003617 (n + 1)

end A003617

/-! ## A003617.P12561915800057178259

`A098406(n+1)+A033873(n)-A098406(n)`
-/

namespace A003617.P12561915800057178259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098406 (n + 1) + (A033873 n - A098406 n)

end

end A003617.P12561915800057178259

namespace A003617

/-- `A098406(n+1)+A033873(n)-A098406(n)` -/
def P12561915800057178259.Spec : Prop :=
  ∀ n, P12561915800057178259.a n = A003617 (n + 1)

end A003617

/-! ## A003617.P1661464504837074469

`A092245(n+1)+A033873(n)-A124001(n)`
-/

namespace A003617.P1661464504837074469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092245 (n + 1) + (A033873 n - A124001 n)

end

end A003617.P1661464504837074469

namespace A003617

/-- `A092245(n+1)+A033873(n)-A124001(n)` -/
def P1661464504837074469.Spec : Prop :=
  ∀ n, P1661464504837074469.a n = A003617 (n + 1)

end A003617

/-! ## A003617.P8793016255110786469

`A101592(2*n+1)+A101592(2*(n+1))-A132153(2*(n+1))`
-/

namespace A003617.P8793016255110786469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (2 * n + 1) + (A101592 (2 * (n + 1)) - A132153 (2 * (n + 1)))

end

end A003617.P8793016255110786469

namespace A003617

/-- `A101592(2*n+1)+A101592(2*(n+1))-A132153(2*(n+1))` -/
def P8793016255110786469.Spec : Prop :=
  ∀ n, P8793016255110786469.a n = A003617 (n + 1)

end A003617

/-!
# A003618: Largest n-digit prime.

The programs for A003618, there is no canonical definition to state claims against.
-/

/-! ## A003618.P6358945928099687099

`A101592(2*(n+1))`
-/

namespace A003618.P6358945928099687099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (2 * (n + 1))

end

end A003618.P6358945928099687099

/-! ## A003618.P12038703317535745123

`A132153(2*(n+1))`
-/

namespace A003618.P12038703317535745123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132153 (2 * (n + 1))

end

end A003618.P12038703317535745123

/-! ## A003618.P5891858755604259081

`record[A101592(A004442(n)+1)]`
-/

namespace A003618.P5891858755604259081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (A004442 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003618.P5891858755604259081

/-! ## A003618.P16041577061770185002

`record[A132153(A014681(n+1))]`
-/

namespace A003618.P16041577061770185002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132153 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003618.P16041577061770185002

/-! ## A003618.P8854784283462122276

`record[A101592(A093178(n)+1)]`
-/

namespace A003618.P8854784283462122276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (A093178 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003618.P8854784283462122276

/-! ## A003618.P10343206242358129589

`record[A132153(2*A134478(n))]`
-/

namespace A003618.P10343206242358129589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132153 (2 * A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003618.P10343206242358129589

/-! ## A003618.P16324764281337879847

`record[A132153(2*A344180(n))]`
-/

namespace A003618.P16324764281337879847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132153 (2 * A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003618.P16324764281337879847

/-! ## A003618.P15766492746381793417

`A073862(n+1)+A003617(n+1)`
-/

namespace A003618.P15766492746381793417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073862 (n + 1) + A003617 (n + 1)

end

end A003618.P15766492746381793417

/-! ## A003618.P5018162087477363390

`∩[A101592(n+1), A132153(n+1)]`
-/

namespace A003618.P5018162087477363390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003618.P5018162087477363390

/-!
# A003619: Not of form [ e^m ], m >= 1.

The programs for A003619, the canonical program `A003619.P7398027424474486091` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003619 has offset 1).

The definition of A003619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003619.P7398027424474486091

`n+1+floor(log(n+2+floor(log(n+1))))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003619

/-- `n+1+floor(log(n+2+floor(log(n+1))))` -/
def P7398027424474486091.Spec : Prop :=
  ∀ n, P7398027424474486091.a n = A003619 (n + 1)

theorem P7398027424474486091.correct : P7398027424474486091.Spec := by
  intro n
  simp only [A003619, Nat.add_sub_cancel]

end A003619

/-! ## A003619.P8123057991873955529

`ceil(log(a(n-1)+2)+n)` with `a(0)=1`
-/

namespace A003619.P8123057991873955529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.log (a (n - 1) + 2 : ℝ) + (n : ℝ)⌉

end

end A003619.P8123057991873955529

namespace A003619

/-- `ceil(log(a(n-1)+2)+n)` -/
def P8123057991873955529.Spec : Prop :=
  ∀ n, P8123057991873955529.a n = A003619 (n + 1)

end A003619

/-! ## A003619.P17454715447274487793

`floor(log(a(n-1)+2)+n+1)` with `a(0)=1`
-/

namespace A003619.P17454715447274487793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.log (a (n - 1) + 2 : ℝ) + (n + 1 : ℝ)⌋

end

end A003619.P17454715447274487793

namespace A003619

/-- `floor(log(a(n-1)+2)+n+1)` -/
def P17454715447274487793.Spec : Prop :=
  ∀ n, P17454715447274487793.a n = A003619 (n + 1)

end A003619

/-! ## A003619.P15641553861186376445

`lt[0, A072631(n+1)]`
-/

namespace A003619.P15641553861186376445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072631 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003619.P15641553861186376445

namespace A003619

/-- `lt[0, A072631(n+1)]` -/
def P15641553861186376445.Spec : Prop :=
  ∀ n, (P15641553861186376445.a n : ℤ) = A003619 (n + 1)

end A003619

/-! ## A003619.P18101247348680871589

`A023443(A103838(n))`
-/

namespace A003619.P18101247348680871589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A103838 n).toNat

end

end A003619.P18101247348680871589

namespace A003619

/-- `A023443(A103838(n))` -/
def P18101247348680871589.Spec : Prop :=
  ∀ n, P18101247348680871589.a n = A003619 (n + 1)

end A003619

/-! ## A003619.P5207366856359787440

`floor(log(A145914(n+1)))`
-/

namespace A003619.P5207366856359787440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A145914 (n + 1) : ℝ)⌋

end

end A003619.P5207366856359787440

namespace A003619

/-- `floor(log(A145914(n+1)))` -/
def P5207366856359787440.Spec : Prop :=
  ∀ n, P5207366856359787440.a n = A003619 (n + 1)

end A003619

/-! ## A003619.P11039853201029187653

`lt[1, A194713(A194733(n+1)²)²]`
-/

namespace A003619.P11039853201029187653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194713 (A194733 (n + 1) ^ 2).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003619.P11039853201029187653

namespace A003619

/-- `lt[1, A194713(A194733(n+1)²)²]` -/
def P11039853201029187653.Spec : Prop :=
  ∀ n, (P11039853201029187653.a n : ℤ) = A003619 (n + 1)

end A003619

/-! ## A003619.P8081601656465201671

`lt[A167850(A331985(n)), A329130(n+1)]`
-/

namespace A003619.P8081601656465201671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167850 (A331985 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329130 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003619.P8081601656465201671

namespace A003619

/-- `lt[A167850(A331985(n)), A329130(n+1)]` -/
def P8081601656465201671.Spec : Prop :=
  ∀ n, (P8081601656465201671.a n : ℤ) = A003619 (n + 1)

end A003619

/-! ## A003619.P14550257930585957633

`lt[A167850(n+1), A329130(n+1)]`
-/

namespace A003619.P14550257930585957633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329130 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003619.P14550257930585957633

namespace A003619

/-- `lt[A167850(n+1), A329130(n+1)]` -/
def P14550257930585957633.Spec : Prop :=
  ∀ n, (P14550257930585957633.a n : ℤ) = A003619 (n + 1)

end A003619

/-!
# A003620: Number of iterations until 3n reaches 153 under x goes to sum of cubes of digits map.

The programs for A003620, there is no canonical definition to state claims against.
-/

/-! ## A003620.P6619317886806848456

`A165331(3*(n+1))`
-/

namespace A003620.P6619317886806848456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165331 (3 * (n + 1))

end

end A003620.P6619317886806848456

/-! ## A003620.P9667755651455661657

`A165331(A008585(n+1))%21`
-/

namespace A003620.P9667755651455661657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165331 (A008585 (n + 1)).toNat) 21

end

end A003620.P9667755651455661657

/-! ## A003620.P8044401486323340134

`A165331(A008585(n+1))/A033999(n)²`
-/

namespace A003620.P8044401486323340134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165331 (A008585 (n + 1)).toNat : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A003620.P8044401486323340134

/-! ## A003620.P8371758030148283924

`and(-A243134(n), A165331(A008585(n+1)))`
-/

namespace A003620.P8371758030148283924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A243134 n) (A165331 (A008585 (n + 1)).toNat)

end

end A003620.P8371758030148283924

/-! ## A003620.P351819292382183057

`A165331(A008585(n+1))-A000007(n+1)`
-/

namespace A003620.P351819292382183057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165331 (A008585 (n + 1)).toNat - A000007 (n + 1)

end

end A003620.P351819292382183057

/-! ## A003620.P11894094172832791918

`A165331(A008585(n+1))+A002264(C(2, n))`
-/

namespace A003620.P11894094172832791918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165331 (A008585 (n + 1)).toNat + A002264 (Nat.choose 2 n)

end

end A003620.P11894094172832791918

/-! ## A003620.P12690245796531801635

`A165331(A008585(n+1))/gcd(2, A000040(n+2))`
-/

namespace A003620.P12690245796531801635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165331 (A008585 (n + 1)).toNat : ℚ) / (Int.gcd 2 (A000040 (n + 2)) : ℚ)

end

end A003620.P12690245796531801635

/-! ## A003620.P3046126060022415185

`A165331(A008585(n+1))/A000041(C(2, n+2))`
-/

namespace A003620.P3046126060022415185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165331 (A008585 (n + 1)).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A003620.P3046126060022415185

/-! ## A003620.P9441624488681658476

`A165331(A008585(n+1))/A000041(gcd(n, n+1))`
-/

namespace A003620.P9441624488681658476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165331 (A008585 (n + 1)).toNat : ℚ) / (A000041 (Nat.gcd n (n + 1)) : ℚ)

end

end A003620.P9441624488681658476

/-! ## A003620.P9942356592619324934

`A165331(A008585(n+1))/A000005(((-1)^n)²)`
-/

namespace A003620.P9942356592619324934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165331 (A008585 (n + 1)).toNat : ℚ) / (A000005 (((-1) ^ n) ^ 2).toNat : ℚ)

end

end A003620.P9942356592619324934

/-! ## A003620.P4954494094181567455

`A165331(A008585(n+1))/A007318(∑[n])`
-/

namespace A003620.P4954494094181567455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165331 (A008585 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A003620.P4954494094181567455

/-! ## A003620.P6867357419780289653

`A165331(A008585(n+1))^A007318(∑[n+2])`
-/

namespace A003620.P6867357419780289653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165331 (A008585 (n + 1)).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A003620.P6867357419780289653

/-!
# A003621: Number of iterations until n reaches 1 or 4 under x goes to sum of squares of digits map.

The programs for A003621, there is no canonical definition to state claims against.
-/

/-! ## A003621.P3934440701030442653

`A171250(n+1)-char[n*char[3]]`
-/

namespace A003621.P3934440701030442653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171250 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A003621.P3934440701030442653

/-! ## A003621.P17903335077812475607

`A171250(n+1)%A090592(n+1)`
-/

namespace A003621.P17903335077812475607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171250 (n + 1)) (A090592 (n + 1))

end

end A003621.P17903335077812475607

/-! ## A003621.P11784130716818234490

`xor(A154281(n+1), A171250(n+1))`
-/

namespace A003621.P11784130716818234490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A154281 (n + 1)) (A171250 (n + 1))

end

end A003621.P11784130716818234490

/-! ## A003621.P9080786678069764140

`A060576(A028242(n))*A171250(n+1)`
-/

namespace A003621.P9080786678069764140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A028242 n).toNat * A171250 (n + 1)

end

end A003621.P9080786678069764140

/-! ## A003621.P3134721576650460366

`A060576(A076412(n))*A171250(n+1)`
-/

namespace A003621.P3134721576650460366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A076412 n).toNat * A171250 (n + 1)

end

end A003621.P3134721576650460366

/-! ## A003621.P13834903763329955883

`C(A171250(n+1), A014963(A171241(n+1)))`
-/

namespace A003621.P13834903763329955883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A171250 (n + 1)).toNat (A014963 (A171241 (n + 1)).toNat).toNat

end

end A003621.P13834903763329955883

/-! ## A003621.P16612560735695737716

`and(A081729(A239693(n+1)), A171250(n+1))`
-/

namespace A003621.P16612560735695737716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A081729 (A239693 (n + 1)).toNat) (A171250 (n + 1))

end

end A003621.P16612560735695737716

/-!
# A003622: The Wythoff compound sequence AA: a(n) = floor(n*phi^2) - 1, where phi = (1+sqrt(5))/2.

The programs for A003622, the canonical program `A003622.P18369330713868503528` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003622 has offset 1).

The definition of A003622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003622.P11915187559265999127

`floor((n+1)*ϕ²)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A003622.P11915187559265999127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋ - 1

end

end A003622.P11915187559265999127

namespace A003622

/-- `floor((n+1)*ϕ²)-1` -/
def P11915187559265999127.Spec : Prop :=
  ∀ n, P11915187559265999127.a n = A003622 (n + 1)

end A003622

/-! ## A003622.P18369330713868503528

`A000201(A000201(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A003622

/-- `A000201(A000201(n+1))` -/
def P18369330713868503528.Spec : Prop :=
  ∀ n, P18369330713868503528.a n = A003622 (n + 1)

theorem P18369330713868503528.correct : P18369330713868503528.Spec := by
  intro n
  simp only [A003622, Nat.add_sub_cancel]

end A003622

/-! ## A003622.P8450951975719142075

`xor(-comp[floor(ϕ*n)], -1)`
-/

namespace A003622.P8450951975719142075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)) (-1)

end

end A003622.P8450951975719142075

namespace A003622

/-- `xor(-comp[floor(ϕ*n)], -1)` -/
def P8450951975719142075.Spec : Prop :=
  ∀ n, P8450951975719142075.a n = A003622 (n + 1)

end A003622

/-! ## A003622.P5391715835435426564

`ceil(lcm(2, 2*n)+(n+1)/ϕ)`
-/

namespace A003622.P5391715835435426564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 (2 * n) : ℝ) + (n + 1 : ℝ) / Real.goldenRatio⌉

end

end A003622.P5391715835435426564

namespace A003622

/-- `ceil(lcm(2, 2*n)+(n+1)/ϕ)` -/
def P5391715835435426564.Spec : Prop :=
  ∀ n, P5391715835435426564.a n = A003622 (n + 1)

end A003622

/-! ## A003622.P10560560176299747644

`ceil(ϕ*C(n+1, n)+n-1)`
-/

namespace A003622.P10560560176299747644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Nat.choose (n + 1) n : ℝ) + ((n : ℤ) - 1 : ℝ)⌉

end

end A003622.P10560560176299747644

namespace A003622

/-- `ceil(ϕ*C(n+1, n)+n-1)` -/
def P10560560176299747644.Spec : Prop :=
  ∀ n, P10560560176299747644.a n = A003622 (n + 1)

end A003622

/-! ## A003622.P10108001609858850404

`ceil(C(n+1, n)/ϕ+2*n)`
-/

namespace A003622.P10108001609858850404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 1) n : ℝ) / Real.goldenRatio + (2 * n : ℝ)⌉

end

end A003622.P10108001609858850404

namespace A003622

/-- `ceil(C(n+1, n)/ϕ+2*n)` -/
def P10108001609858850404.Spec : Prop :=
  ∀ n, P10108001609858850404.a n = A003622 (n + 1)

end A003622

/-! ## A003622.P6224825461642803752

`lt[ϕ, (n+1)/floor((n+2)/ϕ)]`
-/

namespace A003622.P6224825461642803752
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (⌊(n + 2 : ℝ) / Real.goldenRatio⌋ : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A003622.P6224825461642803752

namespace A003622

/-- `lt[ϕ, (n+1)/floor((n+2)/ϕ)]` -/
def P6224825461642803752.Spec : Prop :=
  ∀ n, (P6224825461642803752.a n : ℤ) = A003622 (n + 1)

end A003622

/-! ## A003622.P11149264723868902983

`ceil(xor(1, 2*n+1)+(n+1)/ϕ)`
-/

namespace A003622.P11149264723868902983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (2 * n + 1) : ℝ) + (n + 1 : ℝ) / Real.goldenRatio⌉

end

end A003622.P11149264723868902983

namespace A003622

/-- `ceil(xor(1, 2*n+1)+(n+1)/ϕ)` -/
def P11149264723868902983.Spec : Prop :=
  ∀ n, P11149264723868902983.a n = A003622 (n + 1)

end A003622

/-! ## A003622.P12053164347896002492

`ceil(and(2*n+1, 2*n)+(n+1)/ϕ)`
-/

namespace A003622.P12053164347896002492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.land (2 * n + 1) (2 * n) : ℝ) + (n + 1 : ℝ) / Real.goldenRatio⌉

end

end A003622.P12053164347896002492

namespace A003622

/-- `ceil(and(2*n+1, 2*n)+(n+1)/ϕ)` -/
def P12053164347896002492.Spec : Prop :=
  ∀ n, P12053164347896002492.a n = A003622 (n + 1)

end A003622

/-! ## A003622.P3721986896215922062

`A035337(n)%A035336(n+1)`
-/

namespace A003622.P3721986896215922062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035337 n) (A035336 (n + 1))

end

end A003622.P3721986896215922062

namespace A003622

/-- `A035337(n)%A035336(n+1)` -/
def P3721986896215922062.Spec : Prop :=
  ∀ n, P3721986896215922062.a n = A003622 (n + 1)

end A003622

/-! ## A003622.P8596114075879886165

`A035338(n)%A035336(n+1)`
-/

namespace A003622.P8596114075879886165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035338 n) (A035336 (n + 1))

end

end A003622.P8596114075879886165

namespace A003622

/-- `A035338(n)%A035336(n+1)` -/
def P8596114075879886165.Spec : Prop :=
  ∀ n, P8596114075879886165.a n = A003622 (n + 1)

end A003622

/-! ## A003622.P3076724909083056625

`A075318(n+1)%A001950(n+1)`
-/

namespace A003622.P3076724909083056625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075318 (n + 1)) (A001950 (n + 1))

end

end A003622.P3076724909083056625

namespace A003622

/-- `A075318(n+1)%A001950(n+1)` -/
def P3076724909083056625.Spec : Prop :=
  ∀ n, P3076724909083056625.a n = A003622 (n + 1)

end A003622

/-! ## A003622.P17156262630377746600

`A134860(n+1)%A003623(n+1)`
-/

namespace A003622.P17156262630377746600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134860 (n + 1)) (A003623 (n + 1))

end

end A003622.P17156262630377746600

namespace A003622

/-- `A134860(n+1)%A003623(n+1)` -/
def P17156262630377746600.Spec : Prop :=
  ∀ n, P17156262630377746600.a n = A003622 (n + 1)

end A003622

/-! ## A003622.P6944382421309650616

`A134863(n+1)%A003623(n+1)`
-/

namespace A003622.P6944382421309650616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134863 (n + 1)) (A003623 (n + 1))

end

end A003622.P6944382421309650616

namespace A003622

/-- `A134863(n+1)%A003623(n+1)` -/
def P6944382421309650616.Spec : Prop :=
  ∀ n, P6944382421309650616.a n = A003622 (n + 1)

end A003622

/-! ## A003622.P2258403180801702619

`∩[A095279(n+1), A387349(n+1)]`
-/

namespace A003622.P2258403180801702619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003622.P2258403180801702619

namespace A003622

/-- `∩[A095279(n+1), A387349(n+1)]` -/
def P2258403180801702619.Spec : Prop :=
  ∀ n, (P2258403180801702619.a n : ℤ) = A003622 (n + 1)

end A003622

/-! ## A003622.P14649817208669984146

`filter[A080746(n+1), A096270(#)]`
-/

namespace A003622.P14649817208669984146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096270 (f1 j).toNat = 1) n)

end

end A003622.P14649817208669984146

namespace A003622

/-- `filter[A080746(n+1), A096270(#)]` -/
def P14649817208669984146.Spec : Prop :=
  ∀ n, P14649817208669984146.a n = A003622 (n + 1)

end A003622

/-! ## A003622.P9336761512264435431

`∩[A080746(n+1), A095279(n+1)]`
-/

namespace A003622.P9336761512264435431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003622.P9336761512264435431

namespace A003622

/-- `∩[A080746(n+1), A095279(n+1)]` -/
def P9336761512264435431.Spec : Prop :=
  ∀ n, (P9336761512264435431.a n : ℤ) = A003622 (n + 1)

end A003622

/-! ## A003622.P5200625338086129974

`∩[A080746(n+1), A327204(n+1)]`
-/

namespace A003622.P5200625338086129974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003622.P5200625338086129974

namespace A003622

/-- `∩[A080746(n+1), A327204(n+1)]` -/
def P5200625338086129974.Spec : Prop :=
  ∀ n, (P5200625338086129974.a n : ℤ) = A003622 (n + 1)

end A003622

/-!
# A003623: Wythoff AB-numbers: floor(floor(n*phi^2)*phi), where phi = (1+sqrt(5))/2.

The programs for A003623, the canonical program `A003623.P14438316745221780006` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003623 has offset 1).

The definition of A003623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003623.P12248463738201374717

`floor(ϕ*floor((n+1)*ϕ²))`
-/

namespace A003623.P12248463738201374717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋ : ℝ)⌋

end

end A003623.P12248463738201374717

namespace A003623

/-- `floor(ϕ*floor((n+1)*ϕ²))` -/
def P12248463738201374717.Spec : Prop :=
  ∀ n, P12248463738201374717.a n = A003623 (n + 1)

end A003623

/-! ## A003623.P14143227779044563362

`floor(floor((n+1)*ϕ²)*ϕ)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A003623.P14143227779044563362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋ : ℝ) * Real.goldenRatio⌋

end

end A003623.P14143227779044563362

namespace A003623

/-- `floor(floor((n+1)*ϕ²)*ϕ)` -/
def P14143227779044563362.Spec : Prop :=
  ∀ n, P14143227779044563362.a n = A003623 (n + 1)

end A003623

/-! ## A003623.P13860049737818365804

`2*A000201(n+1)+n+1`
-/

namespace A003623.P13860049737818365804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000201 (n + 1) + (n + 1 : ℤ)

end

end A003623.P13860049737818365804

namespace A003623

/-- `2*A000201(n+1)+n+1` -/
def P13860049737818365804.Spec : Prop :=
  ∀ n, P13860049737818365804.a n = A003623 (n + 1)

end A003623

/-! ## A003623.P14438316745221780006

`A000201(n+1)+A001950(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A003623

/-- `A000201(n+1)+A001950(n+1)` -/
def P14438316745221780006.Spec : Prop :=
  ∀ n, P14438316745221780006.a n = A003623 (n + 1)

theorem P14438316745221780006.correct : P14438316745221780006.Spec := by
  intro n
  simp only [A003623, Nat.add_sub_cancel]

end A003623

/-! ## A003623.P12291011338274657906

`A035336(n+1)+1`
-/

namespace A003623.P12291011338274657906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1) + 1

end

end A003623.P12291011338274657906

namespace A003623

/-- `A035336(n+1)+1` -/
def P12291011338274657906.Spec : Prop :=
  ∀ n, P12291011338274657906.a n = A003623 (n + 1)

end A003623

/-! ## A003623.P10173827108807161928

`A089910(n+1)-1`
-/

namespace A003623.P10173827108807161928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089910 (n + 1) - 1

end

end A003623.P10173827108807161928

namespace A003623

/-- `A089910(n+1)-1` -/
def P10173827108807161928.Spec : Prop :=
  ∀ n, P10173827108807161928.a n = A003623 (n + 1)

end A003623

/-! ## A003623.P9776651624491893030

`A134859(n+1)+2`
-/

namespace A003623.P9776651624491893030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134859 (n + 1) + 2

end

end A003623.P9776651624491893030

namespace A003623

/-- `A134859(n+1)+2` -/
def P9776651624491893030.Spec : Prop :=
  ∀ n, P9776651624491893030.a n = A003623 (n + 1)

end A003623

/-! ## A003623.P9594613163279530663

`A101868(n+1)-2`
-/

namespace A003623.P9594613163279530663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101868 (n + 1) - 2

end

end A003623.P9594613163279530663

namespace A003623

/-- `A101868(n+1)-2` -/
def P9594613163279530663.Spec : Prop :=
  ∀ n, P9594613163279530663.a n = A003623 (n + 1)

end A003623

/-! ## A003623.P4993731933849952885

`A075318(n+1)-n`
-/

namespace A003623.P4993731933849952885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075318 (n + 1) - (n : ℤ)

end

end A003623.P4993731933849952885

namespace A003623

/-- `A075318(n+1)-n` -/
def P4993731933849952885.Spec : Prop :=
  ∀ n, P4993731933849952885.a n = A003623 (n + 1)

end A003623

/-! ## A003623.P6162522534876140739

`∑[2*A001468(n)+1]`
-/

namespace A003623.P6162522534876140739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001468 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003623.P6162522534876140739

namespace A003623

/-- `∑[2*A001468(n)+1]` -/
def P6162522534876140739.Spec : Prop :=
  ∀ n, P6162522534876140739.a n = A003623 (n + 1)

end A003623

/-! ## A003623.P1972754606818909727

`∑[2*A282162(n)-1]`
-/

namespace A003623.P1972754606818909727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282162 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003623.P1972754606818909727

namespace A003623

/-- `∑[2*A282162(n)-1]` -/
def P1972754606818909727.Spec : Prop :=
  ∀ n, P1972754606818909727.a n = A003623 (n + 1)

end A003623

/-! ## A003623.P5043628877294518183

`A075319(n+1)/2+1`
-/

namespace A003623.P5043628877294518183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075319 (n + 1) : ℚ) / 2 + 1

end

end A003623.P5043628877294518183

namespace A003623

/-- `A075319(n+1)/2+1` -/
def P5043628877294518183.Spec : Prop :=
  ∀ n, P5043628877294518183.a n = (A003623 (n + 1) : ℚ)

end A003623

/-! ## A003623.P6563765184293773314

`A101869(n+1)/2-2`
-/

namespace A003623.P6563765184293773314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101869 (n + 1) : ℚ) / 2 - 2

end

end A003623.P6563765184293773314

namespace A003623

/-- `A101869(n+1)/2-2` -/
def P6563765184293773314.Spec : Prop :=
  ∀ n, P6563765184293773314.a n = (A003623 (n + 1) : ℚ)

end A003623

/-! ## A003623.P21255784448147701

`A283233(n+1)+1+n`
-/

namespace A003623.P21255784448147701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283233 (n + 1) + 1 + (n : ℤ)

end

end A003623.P21255784448147701

namespace A003623

/-- `A283233(n+1)+1+n` -/
def P21255784448147701.Spec : Prop :=
  ∀ n, P21255784448147701.a n = A003623 (n + 1)

end A003623

/-! ## A003623.P17781397920420766875

`A075317(n+1)+2+n`
-/

namespace A003623.P17781397920420766875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075317 (n + 1) + 2 + (n : ℤ)

end

end A003623.P17781397920420766875

namespace A003623

/-- `A075317(n+1)+2+n` -/
def P17781397920420766875.Spec : Prop :=
  ∀ n, P17781397920420766875.a n = A003623 (n + 1)

end A003623

/-! ## A003623.P3880721877059627179

`A283234(n+1)-(n+1)`
-/

namespace A003623.P3880721877059627179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283234 (n + 1) - (n + 1 : ℤ)

end

end A003623.P3880721877059627179

namespace A003623

/-- `A283234(n+1)-(n+1)` -/
def P3880721877059627179.Spec : Prop :=
  ∀ n, P3880721877059627179.a n = A003623 (n + 1)

end A003623

/-!
# A003624: Duffinian numbers: composite numbers k relatively prime to sigma(k).

The programs for A003624, the canonical program `A003624.P11850390878674121676` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003624 has offset 1).

The definition of A003624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6885 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003624.P5927372288704058285

`∪[A095738(n+1), A134612(n+1)]`
-/

namespace A003624.P5927372288704058285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003624.P5927372288704058285

namespace A003624

/-- `∪[A095738(n+1), A134612(n+1)]` -/
def P5927372288704058285.Spec : Prop :=
  ∀ n, (P5927372288704058285.a n : ℤ) = A003624 (n + 1)

end A003624

/-! ## A003624.P5711776401671938749

`∪[A095738(n+1), A306531(n+1)]`
-/

namespace A003624.P5711776401671938749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003624.P5711776401671938749

namespace A003624

/-- `∪[A095738(n+1), A306531(n+1)]` -/
def P5711776401671938749.Spec : Prop :=
  ∀ n, (P5711776401671938749.a n : ℤ) = A003624 (n + 1)

end A003624

/-! ## A003624.P11850390878674121676

`filter[A014567(n+1), A066247(#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A003624

/-- `filter[A014567(n+1), A066247(#)]` -/
def P11850390878674121676.Spec : Prop :=
  ∀ n, P11850390878674121676.a n = A003624 (n + 1)

theorem P11850390878674121676.correct : P11850390878674121676.Spec := by
  intro n
  simp only [A003624, Nat.add_sub_cancel]

end A003624

/-! ## A003624.P1796854300046082341

`filter[A014567(n+2), A005171(#)]`
-/

namespace A003624.P1796854300046082341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A003624.P1796854300046082341

namespace A003624

/-- `filter[A014567(n+2), A005171(#)]` -/
def P1796854300046082341.Spec : Prop :=
  ∀ n, P1796854300046082341.a n = A003624 (n + 1)

end A003624

/-! ## A003624.P14682815379219313374

`∩[A002808(n+1), A014567(n+1)]`
-/

namespace A003624.P14682815379219313374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003624.P14682815379219313374

namespace A003624

/-- `∩[A002808(n+1), A014567(n+1)]` -/
def P14682815379219313374.Spec : Prop :=
  ∀ n, (P14682815379219313374.a n : ℤ) = A003624 (n + 1)

end A003624

/-! ## A003624.P15661958803751166805

`filter[A347202(n+3), A325964(#)]`
-/

namespace A003624.P15661958803751166805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A003624.P15661958803751166805

namespace A003624

/-- `filter[A347202(n+3), A325964(#)]` -/
def P15661958803751166805.Spec : Prop :=
  ∀ n, P15661958803751166805.a n = A003624 (n + 1)

end A003624

/-! ## A003624.P18262428480825813674

`filter[A002808(n+1), A325964(#)]`
-/

namespace A003624.P18262428480825813674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A003624.P18262428480825813674

namespace A003624

/-- `filter[A002808(n+1), A325964(#)]` -/
def P18262428480825813674.Spec : Prop :=
  ∀ n, P18262428480825813674.a n = A003624 (n + 1)

end A003624

/-! ## A003624.P16712571036471836067

`filter[A018252(n+2), A325964(#)]`
-/

namespace A003624.P16712571036471836067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A003624.P16712571036471836067

namespace A003624

/-- `filter[A018252(n+2), A325964(#)]` -/
def P16712571036471836067.Spec : Prop :=
  ∀ n, P16712571036471836067.a n = A003624 (n + 1)

end A003624

/-! ## A003624.P10946711571933426056

`filter[A065090(n+3), A325964(#)]`
-/

namespace A003624.P10946711571933426056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A003624.P10946711571933426056

namespace A003624

/-- `filter[A065090(n+3), A325964(#)]` -/
def P10946711571933426056.Spec : Prop :=
  ∀ n, P10946711571933426056.a n = A003624 (n + 1)

end A003624

/-! ## A003624.P4305936448398714150

`filter[A141468(n+3), A325964(#)]`
-/

namespace A003624.P4305936448398714150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A003624.P4305936448398714150

namespace A003624

/-- `filter[A141468(n+3), A325964(#)]` -/
def P4305936448398714150.Spec : Prop :=
  ∀ n, P4305936448398714150.a n = A003624 (n + 1)

end A003624

/-! ## A003624.P15097837444002847180

`record[A017666(A002808(n+1))]`
-/

namespace A003624.P15097837444002847180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A002808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003624.P15097837444002847180

namespace A003624

/-- `record[A017666(A002808(n+1))]` -/
def P15097837444002847180.Spec : Prop :=
  ∀ n, P15097837444002847180.a n = A003624 (n + 1)

end A003624

/-! ## A003624.P7269991136958021510

`record[A017666(A018252(n+2))]`
-/

namespace A003624.P7269991136958021510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A018252 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003624.P7269991136958021510

namespace A003624

/-- `record[A017666(A018252(n+2))]` -/
def P7269991136958021510.Spec : Prop :=
  ∀ n, P7269991136958021510.a n = A003624 (n + 1)

end A003624

/-! ## A003624.P11578862029835580596

`record[A017666(A014683(n+3))]`
-/

namespace A003624.P11578862029835580596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A014683 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003624.P11578862029835580596

namespace A003624

/-- `record[A017666(A014683(n+3))]` -/
def P11578862029835580596.Spec : Prop :=
  ∀ n, P11578862029835580596.a n = A003624 (n + 1)

end A003624

/-! ## A003624.P9577688070020788878

`filter[A066560(n+3), A325964(#)]`
-/

namespace A003624.P9577688070020788878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066560 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A003624.P9577688070020788878

namespace A003624

/-- `filter[A066560(n+3), A325964(#)]` -/
def P9577688070020788878.Spec : Prop :=
  ∀ n, P9577688070020788878.a n = A003624 (n + 1)

end A003624

/-! ## A003624.P10061386271993138672

`filter[A143545(n+3), A325964(#)]`
-/

namespace A003624.P10061386271993138672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143545 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A003624.P10061386271993138672

namespace A003624

/-- `filter[A143545(n+3), A325964(#)]` -/
def P10061386271993138672.Spec : Prop :=
  ∀ n, P10061386271993138672.a n = A003624 (n + 1)

end A003624

/-! ## A003624.P8791667653195019836

`record[A017666(lt[2, A000005(n+3)]+3)]`
-/

namespace A003624.P8791667653195019836
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003624.P8791667653195019836

namespace A003624

/-- `record[A017666(lt[2, A000005(n+3)]+3)]` -/
def P8791667653195019836.Spec : Prop :=
  ∀ n, P8791667653195019836.a n = A003624 (n + 1)

end A003624

/-! ## A003624.P741397130678357095

`eq[n+1, A113646(A017666(n+1))]+1`
-/

namespace A003624.P741397130678357095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113646 (A017666 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003624.P741397130678357095

namespace A003624

/-- `eq[n+1, A113646(A017666(n+1))]+1` -/
def P741397130678357095.Spec : Prop :=
  ∀ n, (P741397130678357095.a n : ℤ) = A003624 (n + 1)

end A003624

/-! ## A003624.P1979272238763014844

`eq[A267133(n+1), A325967(n+1)]+1`
-/

namespace A003624.P1979272238763014844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325967 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A003624.P1979272238763014844

namespace A003624

/-- `eq[A267133(n+1), A325967(n+1)]+1` -/
def P1979272238763014844.Spec : Prop :=
  ∀ n, (P1979272238763014844.a n : ℤ) = A003624 (n + 1)

end A003624

/-! ## A003624.P6360736998985767852

`lt[abs(A017666(n+1)-n), A001222(n+1)]+1`
-/

namespace A003624.P6360736998985767852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A017666 (n + 1) - (n : ℤ)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A003624.P6360736998985767852

namespace A003624

/-- `lt[abs(A017666(n+1)-n), A001222(n+1)]+1` -/
def P6360736998985767852.Spec : Prop :=
  ∀ n, (P6360736998985767852.a n : ℤ) = A003624 (n + 1)

end A003624

/-!
# A003625: Primes congruent to {3, 5, 6} mod 7.

The programs for A003625, the canonical program `A003625.P2314722676035882593` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003625 has offset 1).

The definition of A003625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003625.P2314722676035882593

`p?[a(n-3)+7]` with `a(0)=0, a(1)=3, a(2)=6, a(3)=5`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003625

/-- `p?[a(n-3)+7]` -/
def P2314722676035882593.Spec : Prop :=
  ∀ n, (P2314722676035882593.a n : ℤ) = A003625 (n + 1)

theorem P2314722676035882593.correct : P2314722676035882593.Spec := by
  intro n
  simp only [A003625, Nat.add_sub_cancel]

end A003625

/-! ## A003625.P8058082575591826241

`p?[ogf((3x+2x^2+x^3+x^4)/(1-x-x^3+x^4))]`
-/

namespace A003625.P8058082575591826241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 2, 1, 1] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003625.P8058082575591826241

namespace A003625

/-- `p?[ogf((3x+2x^2+x^3+x^4)/(1-x-x^3+x^4))]` -/
def P8058082575591826241.Spec : Prop :=
  ∀ n, P8058082575591826241.a n = A003625 (n + 1)

end A003625

/-! ## A003625.P13761706423219381766

`∪[A045455(n+1), A045416(n+1)]`
-/

namespace A003625.P13761706423219381766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003625.P13761706423219381766

namespace A003625

/-- `∪[A045455(n+1), A045416(n+1)]` -/
def P13761706423219381766.Spec : Prop :=
  ∀ n, (P13761706423219381766.a n : ℤ) = A003625 (n + 1)

end A003625

/-! ## A003625.P17112463500542270799

`∪[A045437(n+1), A045455(n+1)]`
-/

namespace A003625.P17112463500542270799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003625.P17112463500542270799

namespace A003625

/-- `∪[A045437(n+1), A045455(n+1)]` -/
def P17112463500542270799.Spec : Prop :=
  ∀ n, (P17112463500542270799.a n : ℤ) = A003625 (n + 1)

end A003625

/-! ## A003625.P4769910035052899094

`A045399(A326178(n+1))`
-/

namespace A003625.P4769910035052899094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (A326178 (n + 1)).toNat

end

end A003625.P4769910035052899094

namespace A003625

/-- `A045399(A326178(n+1))` -/
def P4769910035052899094.Spec : Prop :=
  ∀ n, P4769910035052899094.a n = A003625 (n + 1)

end A003625

/-! ## A003625.P6044635309483780389

`∩[A045399(n+1), A045411(n+1)]`
-/

namespace A003625.P6044635309483780389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003625.P6044635309483780389

namespace A003625

/-- `∩[A045399(n+1), A045411(n+1)]` -/
def P6044635309483780389.Spec : Prop :=
  ∀ n, (P6044635309483780389.a n : ℤ) = A003625 (n + 1)

end A003625

/-! ## A003625.P16661713767765642221

`∩[A045404(n+1), A045411(n+1)]`
-/

namespace A003625.P16661713767765642221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003625.P16661713767765642221

namespace A003625

/-- `∩[A045404(n+1), A045411(n+1)]` -/
def P16661713767765642221.Spec : Prop :=
  ∀ n, (P16661713767765642221.a n : ℤ) = A003625 (n + 1)

end A003625

/-! ## A003625.P7228520115951813076

`∩[A045312(n+1), A045398(n+1)]`
-/

namespace A003625.P7228520115951813076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003625.P7228520115951813076

namespace A003625

/-- `∩[A045312(n+1), A045398(n+1)]` -/
def P7228520115951813076.Spec : Prop :=
  ∀ n, (P7228520115951813076.a n : ℤ) = A003625 (n + 1)

end A003625

/-! ## A003625.P11117151352060040399

`∩[A042992(n+1), A045404(n+1)]`
-/

namespace A003625.P11117151352060040399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003625.P11117151352060040399

namespace A003625

/-- `∩[A042992(n+1), A045404(n+1)]` -/
def P11117151352060040399.Spec : Prop :=
  ∀ n, (P11117151352060040399.a n : ℤ) = A003625 (n + 1)

end A003625

/-! ## A003625.P14822711146814407016

`∩[A042992(n+1), A045411(n+1)]`
-/

namespace A003625.P14822711146814407016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003625.P14822711146814407016

namespace A003625

/-- `∩[A042992(n+1), A045411(n+1)]` -/
def P14822711146814407016.Spec : Prop :=
  ∀ n, (P14822711146814407016.a n : ℤ) = A003625 (n + 1)

end A003625

/-! ## A003625.P8373851953764964805

`∩[A042997(n+1), A045398(n+1)]`
-/

namespace A003625.P8373851953764964805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003625.P8373851953764964805

namespace A003625

/-- `∩[A042997(n+1), A045398(n+1)]` -/
def P8373851953764964805.Spec : Prop :=
  ∀ n, (P8373851953764964805.a n : ℤ) = A003625 (n + 1)

end A003625

/-! ## A003625.P2012913384948762903

`∩[A042997(n+1), A045399(n+1)]`
-/

namespace A003625.P2012913384948762903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003625.P2012913384948762903

namespace A003625

/-- `∩[A042997(n+1), A045399(n+1)]` -/
def P2012913384948762903.Spec : Prop :=
  ∀ n, (P2012913384948762903.a n : ℤ) = A003625 (n + 1)

end A003625

/-! ## A003625.P11505574730890463463

`∩[A042997(n+1), A045411(n+1)]`
-/

namespace A003625.P11505574730890463463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003625.P11505574730890463463

namespace A003625

/-- `∩[A042997(n+1), A045411(n+1)]` -/
def P11505574730890463463.Spec : Prop :=
  ∀ n, (P11505574730890463463.a n : ℤ) = A003625 (n + 1)

end A003625

/-! ## A003625.P14266911556087988584

`∩[A042992(n+1), A045402(n+1)]`
-/

namespace A003625.P14266911556087988584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003625.P14266911556087988584

namespace A003625

/-- `∩[A042992(n+1), A045402(n+1)]` -/
def P14266911556087988584.Spec : Prop :=
  ∀ n, (P14266911556087988584.a n : ℤ) = A003625 (n + 1)

end A003625

/-! ## A003625.P9678538260294203494

`∩[A045311(n+1), A045394(n+1)]`
-/

namespace A003625.P9678538260294203494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003625.P9678538260294203494

namespace A003625

/-- `∩[A045311(n+1), A045394(n+1)]` -/
def P9678538260294203494.Spec : Prop :=
  ∀ n, (P9678538260294203494.a n : ℤ) = A003625 (n + 1)

end A003625

/-! ## A003625.P6237554212289201970

`∩[A045404(n+1), A042990(n)]`
-/

namespace A003625.P6237554212289201970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003625.P6237554212289201970

namespace A003625

/-- `∩[A045404(n+1), A042990(n)]` -/
def P6237554212289201970.Spec : Prop :=
  ∀ n, (P6237554212289201970.a n : ℤ) = A003625 (n + 1)

end A003625

/-! ## A003625.P17575408143745540376

`∩[A045312(n+1), A045393(n+1)]`
-/

namespace A003625.P17575408143745540376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003625.P17575408143745540376

namespace A003625

/-- `∩[A045312(n+1), A045393(n+1)]` -/
def P17575408143745540376.Spec : Prop :=
  ∀ n, (P17575408143745540376.a n : ℤ) = A003625 (n + 1)

end A003625

/-! ## A003625.P10913347096526807973

`p?[2*A047278(n+1)+1]`
-/

namespace A003625.P10913347096526807973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047278 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003625.P10913347096526807973

namespace A003625

/-- `p?[2*A047278(n+1)+1]` -/
def P10913347096526807973.Spec : Prop :=
  ∀ n, P10913347096526807973.a n = A003625 (n + 1)

end A003625

/-! ## A003625.P1591224275036761629

`p?[2*A047359(n+1)-1]`
-/

namespace A003625.P1591224275036761629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047359 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003625.P1591224275036761629

namespace A003625

/-- `p?[2*A047359(n+1)-1]` -/
def P1591224275036761629.Spec : Prop :=
  ∀ n, P1591224275036761629.a n = A003625 (n + 1)

end A003625

/-! ## A003625.P14628736472708112658

`record[A006530(2*A047384(n+1)+3)]`
-/

namespace A003625.P14628736472708112658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A047384 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003625.P14628736472708112658

namespace A003625

/-- `record[A006530(2*A047384(n+1)+3)]` -/
def P14628736472708112658.Spec : Prop :=
  ∀ n, P14628736472708112658.a n = A003625 (n + 1)

end A003625

/-!
# A003626: Inert rational primes in Q(sqrt(-5)).

The programs for A003626, the canonical program `A003626.P5169860312697132588` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003626 has offset 1).

The definition of A003626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003626.P5169860312697132588

`p?[a(n-4)+20]` with `a(0)=11, a(1)=13, a(2)=17, a(3)=19`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003626

/-- `p?[a(n-4)+20]` -/
def P5169860312697132588.Spec : Prop :=
  ∀ n, (P5169860312697132588.a n : ℤ) = A003626 (n + 1)

theorem P5169860312697132588.correct : P5169860312697132588.Spec := by
  intro n
  simp only [A003626, Nat.add_sub_cancel]

end A003626

/-! ## A003626.P15473878255359368672

`A296923(n+2)`
-/

namespace A003626.P15473878255359368672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296923 (n + 2)

end

end A003626.P15473878255359368672

namespace A003626

/-- `A296923(n+2)` -/
def P15473878255359368672.Spec : Prop :=
  ∀ n, P15473878255359368672.a n = A003626 (n + 1)

end A003626

/-! ## A003626.P8935045605793916867

`p?[2*n+10-n%10]`
-/

namespace A003626.P8935045605793916867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (10 - ((n % 10 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003626.P8935045605793916867

namespace A003626

/-- `p?[2*n+10-n%10]` -/
def P8935045605793916867.Spec : Prop :=
  ∀ n, P8935045605793916867.a n = A003626 (n + 1)

end A003626

/-! ## A003626.P10433456898866470902

`p?[n-a(n-2)%10]` with `a(0)=4, a(1)=6, a(2)=6`
-/

namespace A003626.P10433456898866470902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 6, 6] fun n f1 =>
  (n : ℤ) - Int.tmod (f1 (n - 2)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003626.P10433456898866470902

namespace A003626

/-- `p?[n-a(n-2)%10]` -/
def P10433456898866470902.Spec : Prop :=
  ∀ n, P10433456898866470902.a n = A003626 (n + 1)

end A003626

/-! ## A003626.P16637777199741637102

`p?[record[or(10, n)]+n+1]`
-/

namespace A003626.P16637777199741637102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 10 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A003626.P16637777199741637102

namespace A003626

/-- `p?[record[or(10, n)]+n+1]` -/
def P16637777199741637102.Spec : Prop :=
  ∀ n, (P16637777199741637102.a n : ℤ) = A003626 (n + 1)

end A003626

/-! ## A003626.P3109036482198411750

`p?[A045798(n+1)]`
-/

namespace A003626.P3109036482198411750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003626.P3109036482198411750

namespace A003626

/-- `p?[A045798(n+1)]` -/
def P3109036482198411750.Spec : Prop :=
  ∀ n, P3109036482198411750.a n = A003626 (n + 1)

end A003626

/-! ## A003626.P951914066607816378

`p?[A045797(n+1)+10]`
-/

namespace A003626.P951914066607816378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045797 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003626.P951914066607816378

namespace A003626

/-- `p?[A045797(n+1)+10]` -/
def P951914066607816378.Spec : Prop :=
  ∀ n, P951914066607816378.a n = A003626 (n + 1)

end A003626

/-! ## A003626.P11411887636076069748

`p?[A214864(n+1)+1+n]`
-/

namespace A003626.P11411887636076069748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214864 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003626.P11411887636076069748

namespace A003626

/-- `p?[A214864(n+1)+1+n]` -/
def P11411887636076069748.Spec : Prop :=
  ∀ n, P11411887636076069748.a n = A003626 (n + 1)

end A003626

/-! ## A003626.P5969788311796308421

`filter[A045798(n+1), A010051(#)]`
-/

namespace A003626.P5969788311796308421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A003626.P5969788311796308421

namespace A003626

/-- `filter[A045798(n+1), A010051(#)]` -/
def P5969788311796308421.Spec : Prop :=
  ∀ n, P5969788311796308421.a n = A003626 (n + 1)

end A003626

/-! ## A003626.P11553041141422093740

`filter[A045798(n+1), A302777(#)]`
-/

namespace A003626.P11553041141422093740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A003626.P11553041141422093740

namespace A003626

/-- `filter[A045798(n+1), A302777(#)]` -/
def P11553041141422093740.Spec : Prop :=
  ∀ n, P11553041141422093740.a n = A003626 (n + 1)

end A003626

/-! ## A003626.P17934973837290053813

`filter[A045798(n+1), A323152(#)]`
-/

namespace A003626.P17934973837290053813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A003626.P17934973837290053813

namespace A003626

/-- `filter[A045798(n+1), A323152(#)]` -/
def P17934973837290053813.Spec : Prop :=
  ∀ n, P17934973837290053813.a n = A003626 (n + 1)

end A003626

/-! ## A003626.P3071995938138711984

`filter[A045798(n+1), A323153(#)]`
-/

namespace A003626.P3071995938138711984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A003626.P3071995938138711984

namespace A003626

/-- `filter[A045798(n+1), A323153(#)]` -/
def P3071995938138711984.Spec : Prop :=
  ∀ n, P3071995938138711984.a n = A003626 (n + 1)

end A003626

/-! ## A003626.P7195724207148322655

`filter[A045798(n+1), A340371(#)]`
-/

namespace A003626.P7195724207148322655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A003626.P7195724207148322655

namespace A003626

/-- `filter[A045798(n+1), A340371(#)]` -/
def P7195724207148322655.Spec : Prop :=
  ∀ n, P7195724207148322655.a n = A003626 (n + 1)

end A003626

/-! ## A003626.P11088535935928347634

`∩[A045798(n+1), A222030(n)]`
-/

namespace A003626.P11088535935928347634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003626.P11088535935928347634

namespace A003626

/-- `∩[A045798(n+1), A222030(n)]` -/
def P11088535935928347634.Spec : Prop :=
  ∀ n, (P11088535935928347634.a n : ℤ) = A003626 (n + 1)

end A003626

/-! ## A003626.P18321713875804093624

`∩[A000040(n+1), A045798(n+1)]`
-/

namespace A003626.P18321713875804093624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003626.P18321713875804093624

namespace A003626

/-- `∩[A000040(n+1), A045798(n+1)]` -/
def P18321713875804093624.Spec : Prop :=
  ∀ n, (P18321713875804093624.a n : ℤ) = A003626 (n + 1)

end A003626

/-! ## A003626.P8631075398873550116

`∩[A000430(n+1), A045798(n+1)]`
-/

namespace A003626.P8631075398873550116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003626.P8631075398873550116

namespace A003626

/-- `∩[A000430(n+1), A045798(n+1)]` -/
def P8631075398873550116.Spec : Prop :=
  ∀ n, (P8631075398873550116.a n : ℤ) = A003626 (n + 1)

end A003626

/-! ## A003626.P4267162949734426830

`∩[A001751(n+1), A045798(n+1)]`
-/

namespace A003626.P4267162949734426830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003626.P4267162949734426830

namespace A003626

/-- `∩[A001751(n+1), A045798(n+1)]` -/
def P4267162949734426830.Spec : Prop :=
  ∀ n, (P4267162949734426830.a n : ℤ) = A003626 (n + 1)

end A003626

/-! ## A003626.P16289248648977013030

`∩[A004139(n+1), A045798(n+1)]`
-/

namespace A003626.P16289248648977013030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003626.P16289248648977013030

namespace A003626

/-- `∩[A004139(n+1), A045798(n+1)]` -/
def P16289248648977013030.Spec : Prop :=
  ∀ n, (P16289248648977013030.a n : ℤ) = A003626 (n + 1)

end A003626

/-! ## A003626.P11593681737878754766

`∩[A006005(n+1), A045798(n+1)]`
-/

namespace A003626.P11593681737878754766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003626.P11593681737878754766

namespace A003626

/-- `∩[A006005(n+1), A045798(n+1)]` -/
def P11593681737878754766.Spec : Prop :=
  ∀ n, (P11593681737878754766.a n : ℤ) = A003626 (n + 1)

end A003626

/-! ## A003626.P15866392679369589593

`∩[A008578(n+1), A045798(n+1)]`
-/

namespace A003626.P15866392679369589593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003626.P15866392679369589593

namespace A003626

/-- `∩[A008578(n+1), A045798(n+1)]` -/
def P15866392679369589593.Spec : Prop :=
  ∀ n, (P15866392679369589593.a n : ℤ) = A003626 (n + 1)

end A003626

/-!
# A003627: Primes of the form 3n-1.

The programs for A003627, the canonical program `A003627.P15428665616045919031` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003627 has offset 1).

The definition of A003627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003627.P15428665616045919031

`p?[3*n-1]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003627

/-- `p?[3*n-1]` -/
def P15428665616045919031.Spec : Prop :=
  ∀ n, P15428665616045919031.a n = A003627 (n + 1)

theorem P15428665616045919031.correct : P15428665616045919031.Spec := by
  intro n
  simp only [A003627, Nat.add_sub_cancel]

end A003627

/-! ## A003627.P3459266077258358307

`∏{d}[p?[3*n+2], #]`
-/

namespace A003627.P3459266077258358307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A003627.P3459266077258358307

namespace A003627

/-- `∏{d}[p?[3*n+2], #]` -/
def P3459266077258358307.Spec : Prop :=
  ∀ n, (P3459266077258358307.a n : ℤ) = A003627 (n + 1)

end A003627

/-! ## A003627.P18143128763939205135

`∑{p}[p?[3*n+2], #]`
-/

namespace A003627.P18143128763939205135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A003627.P18143128763939205135

namespace A003627

/-- `∑{p}[p?[3*n+2], #]` -/
def P18143128763939205135.Spec : Prop :=
  ∀ n, (P18143128763939205135.a n : ℤ) = A003627 (n + 1)

end A003627

/-! ## A003627.P12223668913424452862

`∏{p}[p?[3*n+2], #]`
-/

namespace A003627.P12223668913424452862
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A003627.P12223668913424452862

namespace A003627

/-- `∏{p}[p?[3*n+2], #]` -/
def P12223668913424452862.Spec : Prop :=
  ∀ n, (P12223668913424452862.a n : ℤ) = A003627 (n + 1)

end A003627

/-! ## A003627.P17991383298339619334

`A112774(n+1)/2`
-/

namespace A003627.P17991383298339619334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112774 (n + 1) : ℚ) / 2

end

end A003627.P17991383298339619334

namespace A003627

/-- `A112774(n+1)/2` -/
def P17991383298339619334.Spec : Prop :=
  ∀ n, P17991383298339619334.a n = (A003627 (n + 1) : ℚ)

end A003627

/-! ## A003627.P7974997290662895773

`ceil(sqrt(A301812(n+1)))`
-/

namespace A003627.P7974997290662895773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A301812 (n + 1) : ℝ)⌉

end

end A003627.P7974997290662895773

namespace A003627

/-- `ceil(sqrt(A301812(n+1)))` -/
def P7974997290662895773.Spec : Prop :=
  ∀ n, P7974997290662895773.a n = A003627 (n + 1)

end A003627

/-! ## A003627.P187178802234271515

`3*A024893(n+1)+2`
-/

namespace A003627.P187178802234271515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A024893 (n + 1) + 2

end

end A003627.P187178802234271515

namespace A003627

/-- `3*A024893(n+1)+2` -/
def P187178802234271515.Spec : Prop :=
  ∀ n, P187178802234271515.a n = A003627 (n + 1)

end A003627

/-! ## A003627.P14261052146853166035

`3*A087370(n+1)-1`
-/

namespace A003627.P14261052146853166035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A087370 (n + 1) - 1

end

end A003627.P14261052146853166035

namespace A003627

/-- `3*A087370(n+1)-1` -/
def P14261052146853166035.Spec : Prop :=
  ∀ n, P14261052146853166035.a n = A003627 (n + 1)

end A003627

/-! ## A003627.P9694732545568414555

`3*A088879(n+1)+5`
-/

namespace A003627.P9694732545568414555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A088879 (n + 1) + 5

end

end A003627.P9694732545568414555

namespace A003627

/-- `3*A088879(n+1)+5` -/
def P9694732545568414555.Spec : Prop :=
  ∀ n, P9694732545568414555.a n = A003627 (n + 1)

end A003627

/-! ## A003627.P15756008992734813748

`3*A228121(n+1)-4`
-/

namespace A003627.P15756008992734813748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A228121 (n + 1) - 4

end

end A003627.P15756008992734813748

namespace A003627

/-- `3*A228121(n+1)-4` -/
def P15756008992734813748.Spec : Prop :=
  ∀ n, P15756008992734813748.a n = A003627 (n + 1)

end A003627

/-! ## A003627.P9270183120483859641

`A358548(n)+a(n-1)` with `a(0)=2`
-/

namespace A003627.P9270183120483859641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A358548 n + a (n - 1)

end

end A003627.P9270183120483859641

namespace A003627

/-- `A358548(n)+a(n-1)` -/
def P9270183120483859641.Spec : Prop :=
  ∀ n, P9270183120483859641.a n = A003627 (n + 1)

end A003627

/-! ## A003627.P17874596157783228144

`A045410(n+1)-A000007(n)`
-/

namespace A003627.P17874596157783228144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1) - A000007 n

end

end A003627.P17874596157783228144

namespace A003627

/-- `A045410(n+1)-A000007(n)` -/
def P17874596157783228144.Spec : Prop :=
  ∀ n, P17874596157783228144.a n = A003627 (n + 1)

end A003627

/-! ## A003627.P2040465372503705294

`A087370(n+1)+A034934(n+1)`
-/

namespace A003627.P2040465372503705294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1) + A034934 (n + 1)

end

end A003627.P2040465372503705294

namespace A003627

/-- `A087370(n+1)+A034934(n+1)` -/
def P2040465372503705294.Spec : Prop :=
  ∀ n, P2040465372503705294.a n = A003627 (n + 1)

end A003627

/-! ## A003627.P6176410645270434498

`A007645(n+1)-A171715(n+1)`
-/

namespace A003627.P6176410645270434498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1) - A171715 (n + 1)

end

end A003627.P6176410645270434498

namespace A003627

/-- `A007645(n+1)-A171715(n+1)` -/
def P6176410645270434498.Spec : Prop :=
  ∀ n, P6176410645270434498.a n = A003627 (n + 1)

end A003627

/-! ## A003627.P18175245045221993992

`A007528(n+1)-A358548(n+1)`
-/

namespace A003627.P18175245045221993992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1) - A358548 (n + 1)

end

end A003627.P18175245045221993992

namespace A003627

/-- `A007528(n+1)-A358548(n+1)` -/
def P18175245045221993992.Spec : Prop :=
  ∀ n, P18175245045221993992.a n = A003627 (n + 1)

end A003627

/-! ## A003627.P14322906728583279756

`A024893(n+1)+A087370(n+1)+A087370(n+1)`
-/

namespace A003627.P14322906728583279756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1) + (A087370 (n + 1) + A087370 (n + 1))

end

end A003627.P14322906728583279756

namespace A003627

/-- `A024893(n+1)+A087370(n+1)+A087370(n+1)` -/
def P14322906728583279756.Spec : Prop :=
  ∀ n, P14322906728583279756.a n = A003627 (n + 1)

end A003627

/-! ## A003627.P11987217259141416341

`A024893(n+1)+A228121(n+1)+A024893(n+1)`
-/

namespace A003627.P11987217259141416341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1) + (A228121 (n + 1) + A024893 (n + 1))

end

end A003627.P11987217259141416341

namespace A003627

/-- `A024893(n+1)+A228121(n+1)+A024893(n+1)` -/
def P11987217259141416341.Spec : Prop :=
  ∀ n, P11987217259141416341.a n = A003627 (n + 1)

end A003627

/-! ## A003627.P15091226966273151300

`A087370(n+1)+A228121(n+1)+A088879(n+1)`
-/

namespace A003627.P15091226966273151300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1) + (A228121 (n + 1) + A088879 (n + 1))

end

end A003627.P15091226966273151300

namespace A003627

/-- `A087370(n+1)+A228121(n+1)+A088879(n+1)` -/
def P15091226966273151300.Spec : Prop :=
  ∀ n, P15091226966273151300.a n = A003627 (n + 1)

end A003627

/-! ## A003627.P6382118538590988490

`A045375(n+1)+A045410(n+1)-A007645(n+1)`
-/

namespace A003627.P6382118538590988490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1) + (A045410 (n + 1) - A007645 (n + 1))

end

end A003627.P6382118538590988490

namespace A003627

/-- `A045375(n+1)+A045410(n+1)-A007645(n+1)` -/
def P6382118538590988490.Spec : Prop :=
  ∀ n, P6382118538590988490.a n = A003627 (n + 1)

end A003627

/-! ## A003627.P18142592890484949007

`A045309(A065475(n+1))`
-/

namespace A003627.P18142592890484949007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (A065475 (n + 1)).toNat

end

end A003627.P18142592890484949007

namespace A003627

/-- `A045309(A065475(n+1))` -/
def P18142592890484949007.Spec : Prop :=
  ∀ n, P18142592890484949007.a n = A003627 (n + 1)

end A003627

/-!
# A003628: Primes congruent to {5, 7} mod 8.

The programs for A003628, the canonical program `A003628.P4394842169735371844` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003628 has offset 1).

The definition of A003628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003628.P4394842169735371844

`p?[or(5, 6*n)]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003628

/-- `p?[or(5, 6*n)]` -/
def P4394842169735371844.Spec : Prop :=
  ∀ n, (P4394842169735371844.a n : ℤ) = A003628 (n + 1)

theorem P4394842169735371844.correct : P4394842169735371844.Spec := by
  intro n
  simp only [A003628, Nat.add_sub_cancel]

end A003628

/-! ## A003628.P2840026302621776273

`p?[a(n-2)+8]` with `a(0)=5, a(1)=7`
-/

namespace A003628.P2840026302621776273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 7] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A003628.P2840026302621776273

namespace A003628

/-- `p?[a(n-2)+8]` -/
def P2840026302621776273.Spec : Prop :=
  ∀ n, (P2840026302621776273.a n : ℤ) = A003628 (n + 1)

end A003628

/-! ## A003628.P11265079031272096410

`p?[8*n-(a(n-1)-4)]` with `a(0)=5`
-/

namespace A003628.P11265079031272096410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  (8 * n : ℤ) - (f1 (n - 1) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003628.P11265079031272096410

namespace A003628

/-- `p?[8*n-(a(n-1)-4)]` -/
def P11265079031272096410.Spec : Prop :=
  ∀ n, P11265079031272096410.a n = A003628 (n + 1)

end A003628

/-! ## A003628.P13906452748861294425

`p?[ogf((5x+2x^2+x^3)/(1-x-x^3+x^4))]`
-/

namespace A003628.P13906452748861294425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 2, 1] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003628.P13906452748861294425

namespace A003628

/-- `p?[ogf((5x+2x^2+x^3)/(1-x-x^3+x^4))]` -/
def P13906452748861294425.Spec : Prop :=
  ∀ n, P13906452748861294425.a n = A003628 (n + 1)

end A003628

/-! ## A003628.P15598437203487456053

`A045355(n+2)`
-/

namespace A003628.P15598437203487456053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 2)

end

end A003628.P15598437203487456053

namespace A003628

/-- `A045355(n+2)` -/
def P15598437203487456053.Spec : Prop :=
  ∀ n, P15598437203487456053.a n = A003628 (n + 1)

end A003628

/-! ## A003628.P6221167058976786075

`p?[or(3, n)+1+n]`
-/

namespace A003628.P6221167058976786075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A003628.P6221167058976786075

namespace A003628

/-- `p?[or(3, n)+1+n]` -/
def P6221167058976786075.Spec : Prop :=
  ∀ n, (P6221167058976786075.a n : ℤ) = A003628 (n + 1)

end A003628

/-! ## A003628.P17280710473602469036

`p?[n*and(2, n)+1]`
-/

namespace A003628.P17280710473602469036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 2 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A003628.P17280710473602469036

namespace A003628

/-- `p?[n*and(2, n)+1]` -/
def P17280710473602469036.Spec : Prop :=
  ∀ n, (P17280710473602469036.a n : ℤ) = A003628 (n + 1)

end A003628

/-! ## A003628.P48595833736449788

`p?[gcd(4, n)+2*n+1]`
-/

namespace A003628.P48595833736449788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n + (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A003628.P48595833736449788

namespace A003628

/-- `p?[gcd(4, n)+2*n+1]` -/
def P48595833736449788.Spec : Prop :=
  ∀ n, (P48595833736449788.a n : ℤ) = A003628 (n + 1)

end A003628

/-! ## A003628.P14625777206021492198

`p?[4*n-a(n-2)]` with `a(0)=0, a(1)=5`
-/

namespace A003628.P14625777206021492198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  (4 * n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003628.P14625777206021492198

namespace A003628

/-- `p?[4*n-a(n-2)]` -/
def P14625777206021492198.Spec : Prop :=
  ∀ n, P14625777206021492198.a n = A003628 (n + 1)

end A003628

/-! ## A003628.P15883279731343644605

`p?[n-or(3, 2-n)]`
-/

namespace A003628.P15883279731343644605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor 3 (2 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003628.P15883279731343644605

namespace A003628

/-- `p?[n-or(3, 2-n)]` -/
def P15883279731343644605.Spec : Prop :=
  ∀ n, P15883279731343644605.a n = A003628 (n + 1)

end A003628

/-! ## A003628.P10748475024626691908

`p?[2*n-(n+2)%4]`
-/

namespace A003628.P10748475024626691908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (((n + 2) % 4 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003628.P10748475024626691908

namespace A003628

/-- `p?[2*n-(n+2)%4]` -/
def P10748475024626691908.Spec : Prop :=
  ∀ n, P10748475024626691908.a n = A003628 (n + 1)

end A003628

/-! ## A003628.P17420944314980535413

`record[p?[or(4, n)]]`
-/

namespace A003628.P17420944314980535413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003628.P17420944314980535413

namespace A003628

/-- `record[p?[or(4, n)]]` -/
def P17420944314980535413.Spec : Prop :=
  ∀ n, (P17420944314980535413.a n : ℤ) = A003628 (n + 1)

end A003628

/-! ## A003628.P9610760475819402354

`p?[C(xor(4, n), n+3)]`
-/

namespace A003628.P9610760475819402354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 4 n) (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A003628.P9610760475819402354

namespace A003628

/-- `p?[C(xor(4, n), n+3)]` -/
def P9610760475819402354.Spec : Prop :=
  ∀ n, (P9610760475819402354.a n : ℤ) = A003628 (n + 1)

end A003628

/-! ## A003628.P1728013545051539656

`p?[lcm(n+3, and(5, n-1))]`
-/

namespace A003628.P1728013545051539656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 3 : ℤ) (Int.land 5 ((n : ℤ) - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A003628.P1728013545051539656

namespace A003628

/-- `p?[lcm(n+3, and(5, n-1))]` -/
def P1728013545051539656.Spec : Prop :=
  ∀ n, (P1728013545051539656.a n : ℤ) = A003628 (n + 1)

end A003628

/-! ## A003628.P15078520580996008186

`record[A006530(or(5, n))]`
-/

namespace A003628.P15078520580996008186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lor 5 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003628.P15078520580996008186

namespace A003628

/-- `record[A006530(or(5, n))]` -/
def P15078520580996008186.Spec : Prop :=
  ∀ n, P15078520580996008186.a n = A003628 (n + 1)

end A003628

/-! ## A003628.P17524362957806004894

`record[A020639(or(5, n))]`
-/

namespace A003628.P17524362957806004894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lor 5 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003628.P17524362957806004894

namespace A003628

/-- `record[A020639(or(5, n))]` -/
def P17524362957806004894.Spec : Prop :=
  ∀ n, P17524362957806004894.a n = A003628 (n + 1)

end A003628

/-! ## A003628.P9934338564146847782

`record[A000010(or(5, n))+1]`
-/

namespace A003628.P9934338564146847782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lor 5 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003628.P9934338564146847782

namespace A003628

/-- `record[A000010(or(5, n))+1]` -/
def P9934338564146847782.Spec : Prop :=
  ∀ n, P9934338564146847782.a n = A003628 (n + 1)

end A003628

/-! ## A003628.P3020084287951919005

`record[A006530(and(n, -6)+5)]`
-/

namespace A003628.P3020084287951919005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.land (n : ℤ) (-6) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003628.P3020084287951919005

namespace A003628

/-- `record[A006530(and(n, -6)+5)]` -/
def P3020084287951919005.Spec : Prop :=
  ∀ n, P3020084287951919005.a n = A003628 (n + 1)

end A003628

/-! ## A003628.P14080837208728779777

`record[A020639(and(n, -6)+5)]`
-/

namespace A003628.P14080837208728779777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.land (n : ℤ) (-6) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003628.P14080837208728779777

namespace A003628

/-- `record[A020639(and(n, -6)+5)]` -/
def P14080837208728779777.Spec : Prop :=
  ∀ n, P14080837208728779777.a n = A003628 (n + 1)

end A003628

/-! ## A003628.P18164847661098850981

`p?[A353313(n)+n]`
-/

namespace A003628.P18164847661098850981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353313 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003628.P18164847661098850981

namespace A003628

/-- `p?[A353313(n)+n]` -/
def P18164847661098850981.Spec : Prop :=
  ∀ n, P18164847661098850981.a n = A003628 (n + 1)

end A003628

/-!
# A003629: Primes p == +- 3 (mod 8), or, primes p such that 2 is not a square mod p.

The programs for A003629, the canonical program `A003629.P15929574543943250703` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003629 has offset 1).

The definition of A003629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003629.P15929574543943250703

`p?[round(8*n/3)]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003629

/-- `p?[round(8*n/3)]` -/
def P15929574543943250703.Spec : Prop :=
  ∀ n, P15929574543943250703.a n = A003629 (n + 1)

theorem P15929574543943250703.correct : P15929574543943250703.Spec := by
  intro n
  simp only [A003629, Nat.add_sub_cancel]

end A003629

/-! ## A003629.P5394779016358338559

`A042999(n+2)`
-/

namespace A003629.P5394779016358338559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 2)

end

end A003629.P5394779016358338559

namespace A003629

/-- `A042999(n+2)` -/
def P5394779016358338559.Spec : Prop :=
  ∀ n, P5394779016358338559.a n = A003629 (n + 1)

end A003629

/-! ## A003629.P4072232558417865967

`∩[A045395(n+1), A270699(n+1)]`
-/

namespace A003629.P4072232558417865967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003629.P4072232558417865967

namespace A003629

/-- `∩[A045395(n+1), A270699(n+1)]` -/
def P4072232558417865967.Spec : Prop :=
  ∀ n, (P4072232558417865967.a n : ℤ) = A003629 (n + 1)

end A003629

/-! ## A003629.P8546887385121493822

`∩[A270699(n+1), A042987(n+1)]`
-/

namespace A003629.P8546887385121493822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003629.P8546887385121493822

namespace A003629

/-- `∩[A270699(n+1), A042987(n+1)]` -/
def P8546887385121493822.Spec : Prop :=
  ∀ n, (P8546887385121493822.a n : ℤ) = A003629 (n + 1)

end A003629

/-! ## A003629.P3131475565293104318

`∩[A000040(n+1), A270699(n+1)]`
-/

namespace A003629.P3131475565293104318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003629.P3131475565293104318

namespace A003629

/-- `∩[A000040(n+1), A270699(n+1)]` -/
def P3131475565293104318.Spec : Prop :=
  ∀ n, (P3131475565293104318.a n : ℤ) = A003629 (n + 1)

end A003629

/-! ## A003629.P4832756503493034930

`filter[A270699(n+2), A324290(#)]`
-/

namespace A003629.P4832756503493034930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270699 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A003629.P4832756503493034930

namespace A003629

/-- `filter[A270699(n+2), A324290(#)]` -/
def P4832756503493034930.Spec : Prop :=
  ∀ n, P4832756503493034930.a n = A003629 (n + 1)

end A003629

/-! ## A003629.P4436098198343370329

`record[A006530(or(3, n)+n)]`
-/

namespace A003629.P4436098198343370329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lor 3 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003629.P4436098198343370329

namespace A003629

/-- `record[A006530(or(3, n)+n)]` -/
def P4436098198343370329.Spec : Prop :=
  ∀ n, P4436098198343370329.a n = A003629 (n + 1)

end A003629

/-! ## A003629.P6023332984702275686

`record[A020639(or(3, n)+n)]`
-/

namespace A003629.P6023332984702275686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lor 3 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003629.P6023332984702275686

namespace A003629

/-- `record[A020639(or(3, n)+n)]` -/
def P6023332984702275686.Spec : Prop :=
  ∀ n, P6023332984702275686.a n = A003629 (n + 1)

end A003629

/-! ## A003629.P13655601552229545518

`record[A006530((n+3)%4+2*n)]`
-/

namespace A003629.P13655601552229545518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 3) % 4 + 2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003629.P13655601552229545518

namespace A003629

/-- `record[A006530((n+3)%4+2*n)]` -/
def P13655601552229545518.Spec : Prop :=
  ∀ n, P13655601552229545518.a n = A003629 (n + 1)

end A003629

/-! ## A003629.P8641788665412684413

`record[A006530(and(n+1, n-3)+2)]`
-/

namespace A003629.P8641788665412684413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.land (n + 1 : ℤ) ((n : ℤ) - 3) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003629.P8641788665412684413

namespace A003629

/-- `record[A006530(and(n+1, n-3)+2)]` -/
def P8641788665412684413.Spec : Prop :=
  ∀ n, P8641788665412684413.a n = A003629 (n + 1)

end A003629

/-! ## A003629.P15602113762380758634

`filter[A270699(n+1), A010051(#)]`
-/

namespace A003629.P15602113762380758634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A003629.P15602113762380758634

namespace A003629

/-- `filter[A270699(n+1), A010051(#)]` -/
def P15602113762380758634.Spec : Prop :=
  ∀ n, P15602113762380758634.a n = A003629 (n + 1)

end A003629

/-! ## A003629.P16179308425250883333

`filter[A270699(n+1), A069513(#)]`
-/

namespace A003629.P16179308425250883333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A003629.P16179308425250883333

namespace A003629

/-- `filter[A270699(n+1), A069513(#)]` -/
def P16179308425250883333.Spec : Prop :=
  ∀ n, P16179308425250883333.a n = A003629 (n + 1)

end A003629

/-! ## A003629.P12419339423573453313

`filter[A270699(n+1), A257531(#)]`
-/

namespace A003629.P12419339423573453313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A003629.P12419339423573453313

namespace A003629

/-- `filter[A270699(n+1), A257531(#)]` -/
def P12419339423573453313.Spec : Prop :=
  ∀ n, P12419339423573453313.a n = A003629 (n + 1)

end A003629

/-!
# A003630: Inert rational primes in Q[sqrt(3)].

The programs for A003630, the canonical program `A003630.P11987820216269325476` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003630 has offset 1).

The definition of A003630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003630.P11987820216269325476

`p?[xor(2, 3*n)+3]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003630

/-- `p?[xor(2, 3*n)+3]` -/
def P11987820216269325476.Spec : Prop :=
  ∀ n, (P11987820216269325476.a n : ℤ) = A003630 (n + 1)

theorem P11987820216269325476.correct : P11987820216269325476.Spec := by
  intro n
  simp only [A003630, Nat.add_sub_cancel]

end A003630

/-! ## A003630.P3008346554247763708

`p?[or(5, 2*n)+n]`
-/

namespace A003630.P3008346554247763708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 (2 * n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A003630.P3008346554247763708

namespace A003630

/-- `p?[or(5, 2*n)+n]` -/
def P3008346554247763708.Spec : Prop :=
  ∀ n, (P3008346554247763708.a n : ℤ) = A003630 (n + 1)

end A003630

/-! ## A003630.P819015152699020580

`p?[a(n-2)+12]` with `a(0)=5, a(1)=7`
-/

namespace A003630.P819015152699020580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 7] fun n f1 =>
  f1 (n - 2) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A003630.P819015152699020580

namespace A003630

/-- `p?[a(n-2)+12]` -/
def P819015152699020580.Spec : Prop :=
  ∀ n, (P819015152699020580.a n : ℤ) = A003630 (n + 1)

end A003630

/-! ## A003630.P15450659535813371934

`p?[1-xor(6*n, -4)]`
-/

namespace A003630.P15450659535813371934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.xor (6 * n : ℤ) (-4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003630.P15450659535813371934

namespace A003630

/-- `p?[1-xor(6*n, -4)]` -/
def P15450659535813371934.Spec : Prop :=
  ∀ n, P15450659535813371934.a n = A003630 (n + 1)

end A003630

/-! ## A003630.P14888946283276295521

`p?[xor(3, n)+n+1+n]`
-/

namespace A003630.P14888946283276295521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n + (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A003630.P14888946283276295521

namespace A003630

/-- `p?[xor(3, n)+n+1+n]` -/
def P14888946283276295521.Spec : Prop :=
  ∀ n, (P14888946283276295521.a n : ℤ) = A003630 (n + 1)

end A003630

/-! ## A003630.P11491062995001084466

`p?[ogf((4x+x^2+2x^3+5x^4)/(1-x-x^3+x^4))]`
-/

namespace A003630.P11491062995001084466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 1, 2, 5] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003630.P11491062995001084466

namespace A003630

/-- `p?[ogf((4x+x^2+2x^3+5x^4)/(1-x-x^3+x^4))]` -/
def P11491062995001084466.Spec : Prop :=
  ∀ n, P11491062995001084466.a n = A003630 (n + 1)

end A003630

/-! ## A003630.P6553225230584824606

`p?[n-A134429(n+1)]`
-/

namespace A003630.P6553225230584824606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A134429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003630.P6553225230584824606

namespace A003630

/-- `p?[n-A134429(n+1)]` -/
def P6553225230584824606.Spec : Prop :=
  ∀ n, P6553225230584824606.a n = A003630 (n + 1)

end A003630

/-! ## A003630.P8358563440193940468

`A038875(n+2)`
-/

namespace A003630.P8358563440193940468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 2)

end

end A003630.P8358563440193940468

namespace A003630

/-- `A038875(n+2)` -/
def P8358563440193940468.Spec : Prop :=
  ∀ n, P8358563440193940468.a n = A003630 (n + 1)

end A003630

/-! ## A003630.P13361328183377385287

`record[A006530(1-xor(6*n, -4))]`
-/

namespace A003630.P13361328183377385287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (1 - Int.xor (6 * n : ℤ) (-4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003630.P13361328183377385287

namespace A003630

/-- `record[A006530(1-xor(6*n, -4))]` -/
def P13361328183377385287.Spec : Prop :=
  ∀ n, P13361328183377385287.a n = A003630 (n + 1)

end A003630

/-! ## A003630.P16684853414068658676

`record[A020639(1-xor(6*n, -4))]`
-/

namespace A003630.P16684853414068658676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (1 - Int.xor (6 * n : ℤ) (-4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003630.P16684853414068658676

namespace A003630

/-- `record[A020639(1-xor(6*n, -4))]` -/
def P16684853414068658676.Spec : Prop :=
  ∀ n, P16684853414068658676.a n = A003630 (n + 1)

end A003630

/-! ## A003630.P11958386696062185531

`record[A006530(xor(2, 3*n+1)+2)]`
-/

namespace A003630.P11958386696062185531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.xor 2 (3 * n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003630.P11958386696062185531

namespace A003630

/-- `record[A006530(xor(2, 3*n+1)+2)]` -/
def P11958386696062185531.Spec : Prop :=
  ∀ n, P11958386696062185531.a n = A003630 (n + 1)

end A003630

/-! ## A003630.P15865150389820677707

`p?[∑[A040024(n)]]`
-/

namespace A003630.P15865150389820677707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040024 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003630.P15865150389820677707

namespace A003630

/-- `p?[∑[A040024(n)]]` -/
def P15865150389820677707.Spec : Prop :=
  ∀ n, P15865150389820677707.a n = A003630 (n + 1)

end A003630

/-! ## A003630.P3160309114170793814

`p?[Δ[A397444(n)]]`
-/

namespace A003630.P3160309114170793814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397444 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003630.P3160309114170793814

namespace A003630

/-- `p?[Δ[A397444(n)]]` -/
def P3160309114170793814.Spec : Prop :=
  ∀ n, P3160309114170793814.a n = A003630 (n + 1)

end A003630

/-! ## A003630.P5758051748303352321

`p?[A092242(n+1)]`
-/

namespace A003630.P5758051748303352321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003630.P5758051748303352321

namespace A003630

/-- `p?[A092242(n+1)]` -/
def P5758051748303352321.Spec : Prop :=
  ∀ n, P5758051748303352321.a n = A003630 (n + 1)

end A003630

/-! ## A003630.P17082998590438464193

`p?[A166639(xor(1, n))]`
-/

namespace A003630.P17082998590438464193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166639 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003630.P17082998590438464193

namespace A003630

/-- `p?[A166639(xor(1, n))]` -/
def P17082998590438464193.Spec : Prop :=
  ∀ n, P17082998590438464193.a n = A003630 (n + 1)

end A003630

/-! ## A003630.P3786263526909614114

`p?[∑[A010131(2*n)]]`
-/

namespace A003630.P3786263526909614114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010131 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003630.P3786263526909614114

namespace A003630

/-- `p?[∑[A010131(2*n)]]` -/
def P3786263526909614114.Spec : Prop :=
  ∀ n, P3786263526909614114.a n = A003630 (n + 1)

end A003630

/-! ## A003630.P7848492377800875328

`p?[∑[A040022(2*n)]]`
-/

namespace A003630.P7848492377800875328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040022 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003630.P7848492377800875328

namespace A003630

/-- `p?[∑[A040022(2*n)]]` -/
def P7848492377800875328.Spec : Prop :=
  ∀ n, P7848492377800875328.a n = A003630 (n + 1)

end A003630

/-! ## A003630.P17395402575939594415

`p?[abs(1-xor(2, A016957(n)))]`
-/

namespace A003630.P17395402575939594415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - Int.xor 2 (A016957 n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003630.P17395402575939594415

namespace A003630

/-- `p?[abs(1-xor(2, A016957(n)))]` -/
def P17395402575939594415.Spec : Prop :=
  ∀ n, P17395402575939594415.a n = A003630 (n + 1)

end A003630

/-! ## A003630.P16795780456739347211

`p?[2*A047243(n+1)+1]`
-/

namespace A003630.P16795780456739347211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047243 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003630.P16795780456739347211

namespace A003630

/-- `p?[2*A047243(n+1)+1]` -/
def P16795780456739347211.Spec : Prop :=
  ∀ n, P16795780456739347211.a n = A003630 (n + 1)

end A003630

/-! ## A003630.P6267231258539980649

`p?[2*A047230(n+1)-1]`
-/

namespace A003630.P6267231258539980649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047230 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003630.P6267231258539980649

namespace A003630

/-- `p?[2*A047230(n+1)-1]` -/
def P6267231258539980649.Spec : Prop :=
  ∀ n, P6267231258539980649.a n = A003630 (n + 1)

end A003630

/-!
# A003631: Primes congruent to 2 or 3 modulo 5.

The programs for A003631, the canonical program `A003631.P5148357027392419026` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003631 has offset 1).

The definition of A003631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003631.P5148357027392419026

`p?[a(n-2)+5]` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003631

/-- `p?[a(n-2)+5]` -/
def P5148357027392419026.Spec : Prop :=
  ∀ n, (P5148357027392419026.a n : ℤ) = A003631 (n + 1)

theorem P5148357027392419026.correct : P5148357027392419026.Spec := by
  intro n
  simp only [A003631, Nat.add_sub_cancel]

end A003631

/-! ## A003631.P7575461994261276175

`p?[5*n-a(n-1)]` with `a(0)=2`
-/

namespace A003631.P7575461994261276175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (5 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003631.P7575461994261276175

namespace A003631

/-- `p?[5*n-a(n-1)]` -/
def P7575461994261276175.Spec : Prop :=
  ∀ n, P7575461994261276175.a n = A003631 (n + 1)

end A003631

/-! ## A003631.P6431292465080968945

`p?[ogf((2x+x^2+4x^3+3x^4)/(1-x-x^3+x^4))]`
-/

namespace A003631.P6431292465080968945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 4, 3] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003631.P6431292465080968945

namespace A003631

/-- `p?[ogf((2x+x^2+4x^3+3x^4)/(1-x-x^3+x^4))]` -/
def P6431292465080968945.Spec : Prop :=
  ∀ n, P6431292465080968945.a n = A003631 (n + 1)

end A003631

/-! ## A003631.P17729105476911781621

`record[A051831(n+1)+1]`
-/

namespace A003631.P17729105476911781621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051831 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003631.P17729105476911781621

namespace A003631

/-- `record[A051831(n+1)+1]` -/
def P17729105476911781621.Spec : Prop :=
  ∀ n, P17729105476911781621.a n = A003631 (n + 1)

end A003631

/-! ## A003631.P7989711641798106492

`A042993(A326178(n+1))`
-/

namespace A003631.P7989711641798106492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (A326178 (n + 1)).toNat

end

end A003631.P7989711641798106492

namespace A003631

/-- `A042993(A326178(n+1))` -/
def P7989711641798106492.Spec : Prop :=
  ∀ n, P7989711641798106492.a n = A003631 (n + 1)

end A003631

/-! ## A003631.P3827102236155894191

`p?[A069104(n+1)]`
-/

namespace A003631.P3827102236155894191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003631.P3827102236155894191

namespace A003631

/-- `p?[A069104(n+1)]` -/
def P3827102236155894191.Spec : Prop :=
  ∀ n, P3827102236155894191.a n = A003631 (n + 1)

end A003631

/-! ## A003631.P13507608384923076019

`p?[A023162(n+1)]`
-/

namespace A003631.P13507608384923076019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003631.P13507608384923076019

namespace A003631

/-- `p?[A023162(n+1)]` -/
def P13507608384923076019.Spec : Prop :=
  ∀ n, P13507608384923076019.a n = A003631 (n + 1)

end A003631

/-! ## A003631.P4368510998255872048

`∩[A023162(n+1), A042986(n+1)]`
-/

namespace A003631.P4368510998255872048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003631.P4368510998255872048

namespace A003631

/-- `∩[A023162(n+1), A042986(n+1)]` -/
def P4368510998255872048.Spec : Prop :=
  ∀ n, (P4368510998255872048.a n : ℤ) = A003631 (n + 1)

end A003631

/-! ## A003631.P12254514725514987399

`∩[A042993(n+1), A023162(n+1)]`
-/

namespace A003631.P12254514725514987399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003631.P12254514725514987399

namespace A003631

/-- `∩[A042993(n+1), A023162(n+1)]` -/
def P12254514725514987399.Spec : Prop :=
  ∀ n, (P12254514725514987399.a n : ℤ) = A003631 (n + 1)

end A003631

/-! ## A003631.P4946348645674358098

`∩[A045321(n+1), A023162(n+1)]`
-/

namespace A003631.P4946348645674358098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003631.P4946348645674358098

namespace A003631

/-- `∩[A045321(n+1), A023162(n+1)]` -/
def P4946348645674358098.Spec : Prop :=
  ∀ n, (P4946348645674358098.a n : ℤ) = A003631 (n + 1)

end A003631

/-! ## A003631.P4209665234817808211

`∩[A049557(n+1), A023162(n+1)]`
-/

namespace A003631.P4209665234817808211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003631.P4209665234817808211

namespace A003631

/-- `∩[A049557(n+1), A023162(n+1)]` -/
def P4209665234817808211.Spec : Prop :=
  ∀ n, (P4209665234817808211.a n : ℤ) = A003631 (n + 1)

end A003631

/-! ## A003631.P18132808025704769207

`∩[A023162(n+1), A040179(n+1)]`
-/

namespace A003631.P18132808025704769207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003631.P18132808025704769207

namespace A003631

/-- `∩[A023162(n+1), A040179(n+1)]` -/
def P18132808025704769207.Spec : Prop :=
  ∀ n, (P18132808025704769207.a n : ℤ) = A003631 (n + 1)

end A003631

/-! ## A003631.P1059569521379530185

`∩[A040970(n+1), A023162(n+1)]`
-/

namespace A003631.P1059569521379530185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003631.P1059569521379530185

namespace A003631

/-- `∩[A040970(n+1), A023162(n+1)]` -/
def P1059569521379530185.Spec : Prop :=
  ∀ n, (P1059569521379530185.a n : ℤ) = A003631 (n + 1)

end A003631

/-! ## A003631.P12616180013437224876

`∩[A040972(n+1), A023162(n+1)]`
-/

namespace A003631.P12616180013437224876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003631.P12616180013437224876

namespace A003631

/-- `∩[A040972(n+1), A023162(n+1)]` -/
def P12616180013437224876.Spec : Prop :=
  ∀ n, (P12616180013437224876.a n : ℤ) = A003631 (n + 1)

end A003631

/-! ## A003631.P673312877817782600

`∩[A023162(n+1), A040161(n+1)]`
-/

namespace A003631.P673312877817782600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003631.P673312877817782600

namespace A003631

/-- `∩[A023162(n+1), A040161(n+1)]` -/
def P673312877817782600.Spec : Prop :=
  ∀ n, (P673312877817782600.a n : ℤ) = A003631 (n + 1)

end A003631

/-! ## A003631.P4518926719228916554

`∩[A023162(n+1), A040169(n+1)]`
-/

namespace A003631.P4518926719228916554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003631.P4518926719228916554

namespace A003631

/-- `∩[A023162(n+1), A040169(n+1)]` -/
def P4518926719228916554.Spec : Prop :=
  ∀ n, (P4518926719228916554.a n : ℤ) = A003631 (n + 1)

end A003631

/-! ## A003631.P13353829569285023778

`∩[A023162(n+1), A040159(n+1)]`
-/

namespace A003631.P13353829569285023778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003631.P13353829569285023778

namespace A003631

/-- `∩[A023162(n+1), A040159(n+1)]` -/
def P13353829569285023778.Spec : Prop :=
  ∀ n, (P13353829569285023778.a n : ℤ) = A003631 (n + 1)

end A003631

/-! ## A003631.P7633489031215990433

`∩[A040982(n+1), A023162(n+1)]`
-/

namespace A003631.P7633489031215990433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003631.P7633489031215990433

namespace A003631

/-- `∩[A040982(n+1), A023162(n+1)]` -/
def P7633489031215990433.Spec : Prop :=
  ∀ n, (P7633489031215990433.a n : ℤ) = A003631 (n + 1)

end A003631

/-! ## A003631.P4434336848830959502

`∩[A023162(n+1), A040171(n+1)]`
-/

namespace A003631.P4434336848830959502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003631.P4434336848830959502

namespace A003631

/-- `∩[A023162(n+1), A040171(n+1)]` -/
def P4434336848830959502.Spec : Prop :=
  ∀ n, (P4434336848830959502.a n : ℤ) = A003631 (n + 1)

end A003631

/-! ## A003631.P9714844380517744625

`∩[A023162(n+1), A040165(n+1)]`
-/

namespace A003631.P9714844380517744625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003631.P9714844380517744625

namespace A003631

/-- `∩[A023162(n+1), A040165(n+1)]` -/
def P9714844380517744625.Spec : Prop :=
  ∀ n, (P9714844380517744625.a n : ℤ) = A003631 (n + 1)

end A003631

/-!
# A003632: Inert rational primes in Q(sqrt 7), or, 7 is not a square mod p.

The programs for A003632, the canonical program `A003632.P12204109187370661191` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003632 has offset 1).

The definition of A003632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003632.P12204109187370661191

`p?[A047415(n+2)+A008620(n+1)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A003632

/-- `p?[A047415(n+2)+A008620(n+1)]` -/
def P12204109187370661191.Spec : Prop :=
  ∀ n, P12204109187370661191.a n = A003632 (n + 1)

theorem P12204109187370661191.correct : P12204109187370661191.Spec := by
  intro n
  simp only [A003632, Nat.add_sub_cancel]

end A003632

/-! ## A003632.P12495102396614768985

`p?[A074230(n+1)-42]`
-/

namespace A003632.P12495102396614768985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074230 (n + 1) - 42

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003632.P12495102396614768985

namespace A003632

/-- `p?[A074230(n+1)-42]` -/
def P12495102396614768985.Spec : Prop :=
  ∀ n, P12495102396614768985.a n = A003632 (n + 1)

end A003632

/-! ## A003632.P18385449433923511506

`p?[n*(2-A040574(n))]`
-/

namespace A003632.P18385449433923511506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - A040574 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003632.P18385449433923511506

namespace A003632

/-- `p?[n*(2-A040574(n))]` -/
def P18385449433923511506.Spec : Prop :=
  ∀ n, P18385449433923511506.a n = A003632 (n + 1)

end A003632

/-! ## A003632.P2525865160601604026

`eq[A040574(n), A210442(n)]`
-/

namespace A003632.P2525865160601604026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003632.P2525865160601604026

namespace A003632

/-- `eq[A040574(n), A210442(n)]` -/
def P2525865160601604026.Spec : Prop :=
  ∀ n, (P2525865160601604026.a n : ℤ) = A003632 (n + 1)

end A003632

/-! ## A003632.P16433304420856844990

`eq[A040574(n), A217668(n)]`
-/

namespace A003632.P16433304420856844990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003632.P16433304420856844990

namespace A003632

/-- `eq[A040574(n), A217668(n)]` -/
def P16433304420856844990.Spec : Prop :=
  ∀ n, (P16433304420856844990.a n : ℤ) = A003632 (n + 1)

end A003632

/-! ## A003632.P11751138980564918864

`eq[A040574(n), A327642(n)]`
-/

namespace A003632.P11751138980564918864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003632.P11751138980564918864

namespace A003632

/-- `eq[A040574(n), A327642(n)]` -/
def P11751138980564918864.Spec : Prop :=
  ∀ n, (P11751138980564918864.a n : ℤ) = A003632 (n + 1)

end A003632

/-! ## A003632.P15048892285968778090

`eq[A040574(n), A357311(n)]`
-/

namespace A003632.P15048892285968778090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357311 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003632.P15048892285968778090

namespace A003632

/-- `eq[A040574(n), A357311(n)]` -/
def P15048892285968778090.Spec : Prop :=
  ∀ n, (P15048892285968778090.a n : ℤ) = A003632 (n + 1)

end A003632

/-! ## A003632.P5263905884742382303

`eq[A040574(n), A368922(n)]`
-/

namespace A003632.P5263905884742382303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368922 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003632.P5263905884742382303

namespace A003632

/-- `eq[A040574(n), A368922(n)]` -/
def P5263905884742382303.Spec : Prop :=
  ∀ n, (P5263905884742382303.a n : ℤ) = A003632 (n + 1)

end A003632

/-! ## A003632.P17010877553907613696

`eq[A260148(n), A390615(n)]`
-/

namespace A003632.P17010877553907613696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260148 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390615 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003632.P17010877553907613696

namespace A003632

/-- `eq[A260148(n), A390615(n)]` -/
def P17010877553907613696.Spec : Prop :=
  ∀ n, (P17010877553907613696.a n : ℤ) = A003632 (n + 1)

end A003632

/-! ## A003632.P2751812791896718805

`p?[(A035189(n+1)+1)*A131738(n)]`
-/

namespace A003632.P2751812791896718805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035189 (n + 1) + 1) * A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003632.P2751812791896718805

namespace A003632

/-- `p?[(A035189(n+1)+1)*A131738(n)]` -/
def P2751812791896718805.Spec : Prop :=
  ∀ n, P2751812791896718805.a n = A003632 (n + 1)

end A003632

/-! ## A003632.P15545234792176043916

`p?[(1-A035189(n+1))*A004442(n)]`
-/

namespace A003632.P15545234792176043916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A035189 (n + 1)) * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003632.P15545234792176043916

namespace A003632

/-- `p?[(1-A035189(n+1))*A004442(n)]` -/
def P15545234792176043916.Spec : Prop :=
  ∀ n, P15545234792176043916.a n = A003632 (n + 1)

end A003632

/-! ## A003632.P11155956741852166298

`p?[(A035189(n+1)-1)*A001478(n+1)]`
-/

namespace A003632.P11155956741852166298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035189 (n + 1) - 1) * A001478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003632.P11155956741852166298

namespace A003632

/-- `p?[(A035189(n+1)-1)*A001478(n+1)]` -/
def P11155956741852166298.Spec : Prop :=
  ∀ n, P11155956741852166298.a n = A003632 (n + 1)

end A003632

/-! ## A003632.P9521171447126103554

`p?[(1-A035189(n+1))*A019554(n+1)]`
-/

namespace A003632.P9521171447126103554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A035189 (n + 1)) * A019554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003632.P9521171447126103554

namespace A003632

/-- `p?[(1-A035189(n+1))*A019554(n+1)]` -/
def P9521171447126103554.Spec : Prop :=
  ∀ n, P9521171447126103554.a n = A003632 (n + 1)

end A003632

/-! ## A003632.P5776814884492612175

`p?[(1-A035189(n+1))*A062759(n+1)]`
-/

namespace A003632.P5776814884492612175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A035189 (n + 1)) * A062759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003632.P5776814884492612175

namespace A003632

/-- `p?[(1-A035189(n+1))*A062759(n+1)]` -/
def P5776814884492612175.Spec : Prop :=
  ∀ n, P5776814884492612175.a n = A003632 (n + 1)

end A003632

/-! ## A003632.P6238348927781154626

`p?[(n+2)*A035189(A035189(n+2)+1)]`
-/

namespace A003632.P6238348927781154626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A035189 (A035189 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003632.P6238348927781154626

namespace A003632

/-- `p?[(n+2)*A035189(A035189(n+2)+1)]` -/
def P6238348927781154626.Spec : Prop :=
  ∀ n, P6238348927781154626.a n = A003632 (n + 1)

end A003632

/-! ## A003632.P11874037453755920100

`p?[A004442(A035189(n+1))*A004442(n)]`
-/

namespace A003632.P11874037453755920100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A035189 (n + 1)).toNat * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003632.P11874037453755920100

namespace A003632

/-- `p?[A004442(A035189(n+1))*A004442(n)]` -/
def P11874037453755920100.Spec : Prop :=
  ∀ n, P11874037453755920100.a n = A003632 (n + 1)

end A003632

/-! ## A003632.P763399582336578511

`p?[A081611(A035189(n+1))*A131738(n)]`
-/

namespace A003632.P763399582336578511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (A035189 (n + 1)).toNat * A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003632.P763399582336578511

namespace A003632

/-- `p?[A081611(A035189(n+1))*A131738(n)]` -/
def P763399582336578511.Spec : Prop :=
  ∀ n, P763399582336578511.a n = A003632 (n + 1)

end A003632

/-! ## A003632.P8530874436785576320

`p?[A001478(n+1)*A046691(A035189(n+1))]`
-/

namespace A003632.P8530874436785576320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) * A046691 (A035189 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003632.P8530874436785576320

namespace A003632

/-- `p?[A001478(n+1)*A046691(A035189(n+1))]` -/
def P8530874436785576320.Spec : Prop :=
  ∀ n, P8530874436785576320.a n = A003632 (n + 1)

end A003632

/-! ## A003632.P2512769853499825614

`p?[A019554(n+1)*A151935(A035189(n+1))]`
-/

namespace A003632.P2512769853499825614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) * A151935 (A035189 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003632.P2512769853499825614

namespace A003632

/-- `p?[A019554(n+1)*A151935(A035189(n+1))]` -/
def P2512769853499825614.Spec : Prop :=
  ∀ n, P2512769853499825614.a n = A003632 (n + 1)

end A003632

/-! ## A003632.P13137011762749010188

`p?[A062759(n+1)*A311882(A035189(n+1))]`
-/

namespace A003632.P13137011762749010188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (n + 1) * A311882 (A035189 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003632.P13137011762749010188

namespace A003632

/-- `p?[A062759(n+1)*A311882(A035189(n+1))]` -/
def P13137011762749010188.Spec : Prop :=
  ∀ n, P13137011762749010188.a n = A003632 (n + 1)

end A003632

/-!
# A003634: Smallest positive integer that is n times its digit sum, or 0 if no such number exists.

The programs for A003634, there is no canonical definition to state claims against.
-/

/-! ## A003634.P833952524372998606

`(n+1)*A007471(n+1)`
-/

namespace A003634.P833952524372998606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007471 (n + 1)

end

end A003634.P833952524372998606

/-! ## A003634.P14481673324216544277

`abs((1-(n-2*n))*A007471(1-(n-2*n)))`
-/

namespace A003634.P14481673324216544277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - ((n : ℤ) - (2 * n : ℤ))) * A007471 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat|

end

end A003634.P14481673324216544277

/-! ## A003634.P12708872028324769740

`A007471(A008619(2*n))*A008619(2*n)`
-/

namespace A003634.P12708872028324769740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007471 (A008619 (2 * n)).toNat * A008619 (2 * n)

end

end A003634.P12708872028324769740

/-! ## A003634.P671202588254852903

`A007471(A077168(n))*A077168(n)`
-/

namespace A003634.P671202588254852903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007471 (A077168 n).toNat * A077168 n

end

end A003634.P671202588254852903

/-! ## A003634.P14031599546495443145

`A007471(A008619(2*n))*A070939(A289525(n))`
-/

namespace A003634.P14031599546495443145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007471 (A008619 (2 * n)).toNat * A070939 (A289525 n).toNat

end

end A003634.P14031599546495443145

/-!
# A003635: Inconsummate numbers in base 10: no number is this multiple of the sum of its digits (in base 10).

The programs for A003635, there is no canonical definition to state claims against.
-/

/-! ## A003635.P14956624524133619704

`lt[A052489(n), n]`
-/

namespace A003635.P14956624524133619704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052489 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A003635.P14956624524133619704

/-! ## A003635.P14659734593306790055

`eq[0, A003634(n+1)]+1`
-/

namespace A003635.P14659734593306790055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003634 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003635.P14659734593306790055

/-! ## A003635.P12353406381800908091

`eq[0, A277223(n+1)]+1`
-/

namespace A003635.P12353406381800908091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003635.P12353406381800908091

/-! ## A003635.P14531614294198563387

`eq[0, A052489(A028310(n))]`
-/

namespace A003635.P14531614294198563387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052489 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003635.P14531614294198563387

/-! ## A003635.P15552779188742064386

`eq[A000007(n), A052489(n)]`
-/

namespace A003635.P15552779188742064386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003635.P15552779188742064386

/-! ## A003635.P18334355710187858531

`eq[A000038(n), A052489(n)]`
-/

namespace A003635.P18334355710187858531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003635.P18334355710187858531

/-! ## A003635.P7921362026625386222

`eq[A003131(n), A052489(n)]`
-/

namespace A003635.P7921362026625386222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003131 (n + 54)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003635.P7921362026625386222

/-! ## A003635.P16272205684356710546

`eq[0, A037478(A004277(n)-n)]`
-/

namespace A003635.P16272205684356710546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037478 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003635.P16272205684356710546

/-! ## A003635.P1340292926768967209

`eq[A012245(n+1), A052489(n)]`
-/

namespace A003635.P1340292926768967209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003635.P1340292926768967209

/-! ## A003635.P602031382079781746

`eq[1, A004277(A037478(n+1))]+1`
-/

namespace A003635.P602031382079781746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A037478 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003635.P602031382079781746

/-! ## A003635.P16319483959405070758

`eq[0, A037478(A004277(5*n))]`
-/

namespace A003635.P16319483959405070758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037478 (A004277 (5 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003635.P16319483959405070758

/-!
# A003636: Number of classes per genus in quadratic field with discriminant -n.

The programs for A003636, there is no canonical definition to state claims against.
-/

/-! ## A003636.P14758444306369026167

`A006641(n+1)/A003640(n+1)`
-/

namespace A003636.P14758444306369026167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006641 (n + 1) : ℚ) / (A003640 (n + 1) : ℚ)

end

end A003636.P14758444306369026167

/-! ## A003636.P15079849725529776417

`A006641(n+1)/2^A319659(n+1)`
-/

namespace A003636.P15079849725529776417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006641 (n + 1) : ℚ) / (2 : ℚ) ^ (A319659 (n + 1) : ℤ)

end

end A003636.P15079849725529776417

/-! ## A003636.P10305172920125135248

`A006641(n+1)/A007875(A003657(n+1))`
-/

namespace A003636.P10305172920125135248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006641 (n + 1) : ℚ) / (A007875 (A003657 (n + 1)).toNat : ℚ)

end

end A003636.P10305172920125135248

/-! ## A003636.P7351379061678350409

`A058305(A003657(n+1))/A003640(n+1)`
-/

namespace A003636.P7351379061678350409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058305 (A003657 (n + 1)).toNat : ℚ) / (A003640 (n + 1) : ℚ)

end

end A003636.P7351379061678350409

/-! ## A003636.P11885535306608201074

`A191410(A003657(2*(n+1)-(n+1)))/A003640(n+1)`
-/

namespace A003636.P11885535306608201074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191410 (A003657 (2 * (n + 1) - (n + 1))).toNat : ℚ) / (A003640 (n + 1) : ℚ)

end

end A003636.P11885535306608201074

/-! ## A003636.P352559517201711164

`A191410(A003657(n+1)%A003657(n+2))/A003640(n+1)`
-/

namespace A003636.P352559517201711164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191410 (Int.tmod (A003657 (n + 1)) (A003657 (n + 2))).toNat : ℚ) / (A003640 (n + 1) : ℚ)

end

end A003636.P352559517201711164

/-! ## A003636.P2940967155214076533

`A191410(A003657(2*(n+1)-(n+1)))/A007875(A003657(n+1))`
-/

namespace A003636.P2940967155214076533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191410 (A003657 (2 * (n + 1) - (n + 1))).toNat : ℚ) / (A007875 (A003657 (n + 1)).toNat : ℚ)

end

end A003636.P2940967155214076533

/-!
# A003637: Number of classes per genus in quadratic field with discriminant -4n+1.

The programs for A003637, there is no canonical definition to state claims against.
-/

/-! ## A003637.P13724986709982520096

`A006642(n+1)/A003641(n+1)`
-/

namespace A003637.P13724986709982520096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006642 (n + 1) : ℚ) / (A003641 (n + 1) : ℚ)

end

end A003637.P13724986709982520096

/-! ## A003637.P12974061048044135593

`A014599(ceil(A039957(n+1)/4))/A003641(n+1)`
-/

namespace A003637.P12974061048044135593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014599 ⌈(A039957 (n + 1) : ℚ) / 4⌉.toNat : ℚ) / (A003641 (n + 1) : ℚ)

end

end A003637.P12974061048044135593

/-! ## A003637.P8924734357670103710

`A006642(n+1)/A001826(A039957(n+1))`
-/

namespace A003637.P8924734357670103710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006642 (n + 1) : ℚ) / (A001826 (A039957 (n + 1)).toNat : ℚ)

end

end A003637.P8924734357670103710

/-! ## A003637.P15323470350650561887

`A058305(A039957(n+1))/A003641(n+1)`
-/

namespace A003637.P15323470350650561887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058305 (A039957 (n + 1)).toNat : ℚ) / (A003641 (n + 1) : ℚ)

end

end A003637.P15323470350650561887

/-! ## A003637.P10449563103919391935

`A006642(n+1)/A007875(record[A007947(4*(n+1)-1)])`
-/

namespace A003637.P10449563103919391935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (4 * (n + 1) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006642 (n + 1) : ℚ) / (A007875 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ)

end

end A003637.P10449563103919391935

/-! ## A003637.P17633260744850577976

`A058305(record[A007947(4*(n+1)-1)])/A003641(n+1)`
-/

namespace A003637.P17633260744850577976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (4 * (n + 1) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058305 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / (A003641 (n + 1) : ℚ)

end

end A003637.P17633260744850577976

/-!
# A003638: Number of classes per genus in quadratic field with discriminant -4n, -n == 2,3( mod 4).

The programs for A003638, there is no canonical definition to state claims against.
-/

/-! ## A003638.P15633674538462675355

`A006643(n+1)/A003642(n+1)`
-/

namespace A003638.P15633674538462675355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006643 (n + 1) : ℚ) / (A003642 (n + 1) : ℚ)

end

end A003638.P15633674538462675355

/-! ## A003638.P12505648384996285862

`A000003(A089269(n+1))/A003642(n+1)`
-/

namespace A003638.P12505648384996285862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000003 (A089269 (n + 1)).toNat : ℚ) / (A003642 (n + 1) : ℚ)

end

end A003638.P12505648384996285862

/-! ## A003638.P13425751432679982078

`A006643(n+1)/A001227(A089269(n+1))`
-/

namespace A003638.P13425751432679982078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006643 (n + 1) : ℚ) / (A001227 (A089269 (n + 1)).toNat : ℚ)

end

end A003638.P13425751432679982078

/-! ## A003638.P8867021351137852182

`A006643(n+1)/A007875(A191483(n+1)/2)`
-/

namespace A003638.P8867021351137852182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006643 (n + 1) : ℚ) / (A007875 (SequenceMachineLib.roundAway ((A191483 (n + 1) : ℚ) / 2)).toNat : ℚ)

end

end A003638.P8867021351137852182

/-! ## A003638.P13336335917131646497

`A006643(n+1)/A007875(A191483(n+1))`
-/

namespace A003638.P13336335917131646497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006643 (n + 1) : ℚ) / (A007875 (A191483 (n + 1)).toNat : ℚ)

end

end A003638.P13336335917131646497

/-! ## A003638.P13495559458172665842

`A058305(A191483(n+1))/A003642(n+1)`
-/

namespace A003638.P13495559458172665842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058305 (A191483 (n + 1)).toNat : ℚ) / (A003642 (n + 1) : ℚ)

end

end A003638.P13495559458172665842

/-!
# A003639: Number of classes per genus in Q(sqrt -n), n squarefree.

The programs for A003639, there is no canonical definition to state claims against.
-/

/-! ## A003639.P6456338944041702411

`A000924(n+1)/A003643(n+1)`
-/

namespace A003639.P6456338944041702411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000924 (n + 1) : ℚ) / (A003643 (n + 1) : ℚ)

end

end A003639.P6456338944041702411

/-! ## A003639.P3491760724610891946

`A000924(n+1)/A024363(abs(A033197(n+1)))`
-/

namespace A003639.P3491760724610891946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000924 (n + 1) : ℚ) / (A024363 |A033197 (n + 1)|.toNat : ℚ)

end

end A003639.P3491760724610891946

/-! ## A003639.P6651668930750268412

`A202084(record[A007913(n+1)])/A003643(n+1)`
-/

namespace A003639.P6651668930750268412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202084 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / (A003643 (n + 1) : ℚ)

end

end A003639.P6651668930750268412

/-! ## A003639.P12019458985635470993

`A202084(record[A007947(n+1)])/A003643(n+1)`
-/

namespace A003639.P12019458985635470993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202084 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / (A003643 (n + 1) : ℚ)

end

end A003639.P12019458985635470993

/-! ## A003639.P14540962352852074733

`A202084(record[A019554(n+1)])/A003643(n+1)`
-/

namespace A003639.P14540962352852074733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202084 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / (A003643 (n + 1) : ℚ)

end

end A003639.P14540962352852074733

/-! ## A003639.P3587676579778755769

`A202084(record[A055231(n+1)])/A003643(n+1)`
-/

namespace A003639.P3587676579778755769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202084 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / (A003643 (n + 1) : ℚ)

end

end A003639.P3587676579778755769

/-! ## A003639.P14584280462890370192

`A202084(record[A066069(n+1)])/A003643(n+1)`
-/

namespace A003639.P14584280462890370192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066069 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202084 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / (A003643 (n + 1) : ℚ)

end

end A003639.P14584280462890370192

/-! ## A003639.P2775893027062866155

`A202084(abs(A033197(n+1)))/A003643(n+1)`
-/

namespace A003639.P2775893027062866155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202084 |A033197 (n + 1)|.toNat : ℚ) / (A003643 (n + 1) : ℚ)

end

end A003639.P2775893027062866155

/-! ## A003639.P1543680973808153573

`A202084(-A033197(n+1))/A003643(n+1)`
-/

namespace A003639.P1543680973808153573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202084 (-A033197 (n + 1)).toNat : ℚ) / (A003643 (n + 1) : ℚ)

end

end A003639.P1543680973808153573

/-! ## A003639.P7256486660123821399

`A202084(A133466(n+1))/A003643(n+1)`
-/

namespace A003639.P7256486660123821399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202084 (A133466 (n + 1)).toNat : ℚ) / (A003643 (n + 1) : ℚ)

end

end A003639.P7256486660123821399

/-!
# A003640: Number of genera of imaginary quadratic field with discriminant -k, k = A003657(n).

The programs for A003640, the canonical program `A003640.P12567564219174590625` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003640 has offset 1).

The definition of A003640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003640.P14267846692224755662

`2^A319659(n+1)`
-/

namespace A003640.P14267846692224755662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A319659 (n + 1) : ℤ)

end

end A003640.P14267846692224755662

namespace A003640

/-- `2^A319659(n+1)` -/
def P14267846692224755662.Spec : Prop :=
  ∀ n, P14267846692224755662.a n = (A003640 (n + 1) : ℚ)

end A003640

/-! ## A003640.P1548540632633523350

`A006641(n+1)/A003636(n+3)`
-/

namespace A003640.P1548540632633523350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006641 (n + 1) : ℚ) / (A003636 (n + 3) : ℚ)

end

end A003640.P1548540632633523350

namespace A003640

/-- `A006641(n+1)/A003636(n+3)` -/
def P1548540632633523350.Spec : Prop :=
  ∀ n, P1548540632633523350.a n = (A003640 (n + 1) : ℚ)

end A003640

/-! ## A003640.P17236410915493808762

`A000005(∏{p}[A003657(n+1), #])/2`
-/

namespace A003640.P17236410915493808762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) : ℚ) / 2

end

end A003640.P17236410915493808762

namespace A003640

/-- `A000005(∏{p}[A003657(n+1), #])/2` -/
def P17236410915493808762.Spec : Prop :=
  ∀ n, P17236410915493808762.a n = (A003640 (n + 1) : ℚ)

end A003640

/-! ## A003640.P12567564219174590625

`A000010(∏{p}[A003657(n+1), A000005(#)])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A003640

/-- `A000010(∏{p}[A003657(n+1), A000005(#)])` -/
def P12567564219174590625.Spec : Prop :=
  ∀ n, P12567564219174590625.a n = A003640 (n + 1)

theorem P12567564219174590625.correct : P12567564219174590625.Spec := by
  intro n
  simp only [A003640, Nat.add_sub_cancel]

end A003640

/-! ## A003640.P8091103290764438378

`A007875(A003657(n+1))`
-/

namespace A003640.P8091103290764438378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (A003657 (n + 1)).toNat

end

end A003640.P8091103290764438378

namespace A003640

/-- `A007875(A003657(n+1))` -/
def P8091103290764438378.Spec : Prop :=
  ∀ n, P8091103290764438378.a n = A003640 (n + 1)

end A003640

/-! ## A003640.P4624102360377979284

`gcd(A001013(n+1), A024363(A003657(n+1)))`
-/

namespace A003640.P4624102360377979284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001013 (n + 1)) (A024363 (A003657 (n + 1)).toNat)

end

end A003640.P4624102360377979284

namespace A003640

/-- `gcd(A001013(n+1), A024363(A003657(n+1)))` -/
def P4624102360377979284.Spec : Prop :=
  ∀ n, (P4624102360377979284.a n : ℤ) = A003640 (n + 1)

end A003640

/-! ## A003640.P7453663235945320456

`gcd(A009116(n), A024363(A003657(n+1)))`
-/

namespace A003640.P7453663235945320456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009116 n) (A024363 (A003657 (n + 1)).toNat)

end

end A003640.P7453663235945320456

namespace A003640

/-- `gcd(A009116(n), A024363(A003657(n+1)))` -/
def P7453663235945320456.Spec : Prop :=
  ∀ n, (P7453663235945320456.a n : ℤ) = A003640 (n + 1)

end A003640

/-! ## A003640.P13101942983441815102

`2*A106031(n+1)-A006641(n+1)`
-/

namespace A003640.P13101942983441815102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106031 (n + 1) - A006641 (n + 1)

end

end A003640.P13101942983441815102

namespace A003640

/-- `2*A106031(n+1)-A006641(n+1)` -/
def P13101942983441815102.Spec : Prop :=
  ∀ n, P13101942983441815102.a n = A003640 (n + 1)

end A003640

/-!
# A003641: Number of genera of imaginary quadratic field with discriminant -k, k = A039957(n).

The programs for A003641, the canonical program `A003641.P13216667118483783135` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003641 has offset 1).

The definition of A003641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003641.P13216667118483783135

`2^A319660(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A003641

/-- `2^A319660(n+1)` -/
def P13216667118483783135.Spec : Prop :=
  ∀ n, P13216667118483783135.a n = (A003641 (n + 1) : ℚ)

end A003641

/-! ## A003641.P6247557782477672762

`A341594(A039957(n+1))`
-/

namespace A003641.P6247557782477672762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341594 (A039957 (n + 1)).toNat

end

end A003641.P6247557782477672762

namespace A003641

/-- `A341594(A039957(n+1))` -/
def P6247557782477672762.Spec : Prop :=
  ∀ n, P6247557782477672762.a n = A003641 (n + 1)

end A003641

/-! ## A003641.P12370820542137948221

`A006642(n+1)/A003637(n+1)`
-/

namespace A003641.P12370820542137948221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006642 (n + 1) : ℚ) / (A003637 (n + 1) : ℚ)

end

end A003641.P12370820542137948221

namespace A003641

/-- `A006642(n+1)/A003637(n+1)` -/
def P12370820542137948221.Spec : Prop :=
  ∀ n, P12370820542137948221.a n = (A003641 (n + 1) : ℚ)

end A003641

/-! ## A003641.P1613088785268486177

`A000010(A000005(record[∏{p}[4*n+3, #]]))`
-/

namespace A003641.P1613088785268486177
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A003641.P1613088785268486177

namespace A003641

/-- `A000010(A000005(record[∏{p}[4*n+3, #]]))` -/
def P1613088785268486177.Spec : Prop :=
  ∀ n, P1613088785268486177.a n = A003641 (n + 1)

end A003641

/-! ## A003641.P11666371257113052451

`A000010(A000005(eq[A005887(n), A087049(n)]))`
-/

namespace A003641.P11666371257113052451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000005 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)).toNat

end

end A003641.P11666371257113052451

namespace A003641

/-- `A000010(A000005(eq[A005887(n), A087049(n)]))` -/
def P11666371257113052451.Spec : Prop :=
  ∀ n, P11666371257113052451.a n = A003641 (n + 1)

end A003641

/-! ## A003641.P4481514417601455860

`A038548(A039957(n+1))+A000122(A039957(n+2))`
-/

namespace A003641.P4481514417601455860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A039957 (n + 1)).toNat + A000122 (A039957 (n + 2)).toNat

end

end A003641.P4481514417601455860

namespace A003641

/-- `A038548(A039957(n+1))+A000122(A039957(n+2))` -/
def P4481514417601455860.Spec : Prop :=
  ∀ n, P4481514417601455860.a n = A003641 (n + 1)

end A003641

/-!
# A003642: Number of genera of imaginary quadratic field with discriminant -k, k = A191483(n).

The programs for A003642, the canonical program `A003642.P14855717082008427332` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003642 has offset 1).

The definition of A003642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003642.P10631898331111239766

`2^A319661(n+1)`
-/

namespace A003642.P10631898331111239766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A319661 (n + 1) : ℤ)

end

end A003642.P10631898331111239766

namespace A003642

/-- `2^A319661(n+1)` -/
def P10631898331111239766.Spec : Prop :=
  ∀ n, P10631898331111239766.a n = (A003642 (n + 1) : ℚ)

end A003642

/-! ## A003642.P14855717082008427332

`A000005(lcm(2, A089269(n+1))/2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A003642

/-- `A000005(lcm(2, A089269(n+1))/2)` -/
def P14855717082008427332.Spec : Prop :=
  ∀ n, P14855717082008427332.a n = A003642 (n + 1)

theorem P14855717082008427332.correct : P14855717082008427332.Spec := by
  intro n
  simp only [A003642, Nat.add_sub_cancel]

end A003642

/-! ## A003642.P2542777290694810174

`A006643(n+1)/A003638(n+1)`
-/

namespace A003642.P2542777290694810174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006643 (n + 1) : ℚ) / (A003638 (n + 1) : ℚ)

end

end A003642.P2542777290694810174

namespace A003642

/-- `A006643(n+1)/A003638(n+1)` -/
def P2542777290694810174.Spec : Prop :=
  ∀ n, P2542777290694810174.a n = (A003642 (n + 1) : ℚ)

end A003642

/-! ## A003642.P12867181413814152620

`∏{p}[A089269(n+1), A000034(#)]`
-/

namespace A003642.P12867181413814152620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000034 p

end

end A003642.P12867181413814152620

namespace A003642

/-- `∏{p}[A089269(n+1), A000034(#)]` -/
def P12867181413814152620.Spec : Prop :=
  ∀ n, P12867181413814152620.a n = A003642 (n + 1)

end A003642

/-! ## A003642.P9015302590184612562

`A001227(A089269(n+1))`
-/

namespace A003642.P9015302590184612562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A089269 (n + 1)).toNat

end

end A003642.P9015302590184612562

namespace A003642

/-- `A001227(A089269(n+1))` -/
def P9015302590184612562.Spec : Prop :=
  ∀ n, P9015302590184612562.a n = A003642 (n + 1)

end A003642

/-! ## A003642.P580521423767186509

`∑{d}[A089269(n+1), A000035(#)]`
-/

namespace A003642.P580521423767186509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000035 d

end

end A003642.P580521423767186509

namespace A003642

/-- `∑{d}[A089269(n+1), A000035(#)]` -/
def P580521423767186509.Spec : Prop :=
  ∀ n, P580521423767186509.a n = A003642 (n + 1)

end A003642

/-! ## A003642.P1258260377174639790

`∑{d}[A089269(n+1), A114643(#)]`
-/

namespace A003642.P1258260377174639790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A114643 d

end

end A003642.P1258260377174639790

namespace A003642

/-- `∑{d}[A089269(n+1), A114643(#)]` -/
def P1258260377174639790.Spec : Prop :=
  ∀ n, P1258260377174639790.a n = A003642 (n + 1)

end A003642

/-! ## A003642.P6960759109541328379

`A007875(2*A089269(n+1))`
-/

namespace A003642.P6960759109541328379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (2 * A089269 (n + 1)).toNat

end

end A003642.P6960759109541328379

namespace A003642

/-- `A007875(2*A089269(n+1))` -/
def P6960759109541328379.Spec : Prop :=
  ∀ n, P6960759109541328379.a n = A003642 (n + 1)

end A003642

/-! ## A003642.P13275898103327138633

`A001227(A191483(n+1)/2)`
-/

namespace A003642.P13275898103327138633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (SequenceMachineLib.roundAway ((A191483 (n + 1) : ℚ) / 2)).toNat

end

end A003642.P13275898103327138633

namespace A003642

/-- `A001227(A191483(n+1)/2)` -/
def P13275898103327138633.Spec : Prop :=
  ∀ n, P13275898103327138633.a n = A003642 (n + 1)

end A003642

/-! ## A003642.P7013064000082574153

`A007875(lcm(2, A089269(n+1)))`
-/

namespace A003642.P7013064000082574153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (Int.lcm 2 (A089269 (n + 1)))

end

end A003642.P7013064000082574153

namespace A003642

/-- `A007875(lcm(2, A089269(n+1)))` -/
def P7013064000082574153.Spec : Prop :=
  ∀ n, P7013064000082574153.a n = A003642 (n + 1)

end A003642

/-! ## A003642.P18173347240265538252

`A001227(record[abs(A033197(n+1)/2)])`
-/

namespace A003642.P18173347240265538252
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A033197 (n + 1) : ℚ) / 2|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A003642.P18173347240265538252

namespace A003642

/-- `A001227(record[abs(A033197(n+1)/2)])` -/
def P18173347240265538252.Spec : Prop :=
  ∀ n, P18173347240265538252.a n = A003642 (n + 1)

end A003642

/-! ## A003642.P7183850350643525855

`A001227(A191483(n+1))`
-/

namespace A003642.P7183850350643525855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A191483 (n + 1)).toNat

end

end A003642.P7183850350643525855

namespace A003642

/-- `A001227(A191483(n+1))` -/
def P7183850350643525855.Spec : Prop :=
  ∀ n, P7183850350643525855.a n = A003642 (n + 1)

end A003642

/-! ## A003642.P5882799239763868430

`A001227(record[abs(A033197(n+1))])`
-/

namespace A003642.P5882799239763868430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033197 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A003642.P5882799239763868430

namespace A003642

/-- `A001227(record[abs(A033197(n+1))])` -/
def P5882799239763868430.Spec : Prop :=
  ∀ n, P5882799239763868430.a n = A003642 (n + 1)

end A003642

/-! ## A003642.P7441291670988794628

`A056674(record[abs(A033197(n+1))])`
-/

namespace A003642.P7441291670988794628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033197 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056674 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A003642.P7441291670988794628

namespace A003642

/-- `A056674(record[abs(A033197(n+1))])` -/
def P7441291670988794628.Spec : Prop :=
  ∀ n, P7441291670988794628.a n = A003642 (n + 1)

end A003642

/-! ## A003642.P1928549445618337820

`A001227(record[-A033197(n+1)])`
-/

namespace A003642.P1928549445618337820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A033197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A003642.P1928549445618337820

namespace A003642

/-- `A001227(record[-A033197(n+1)])` -/
def P1928549445618337820.Spec : Prop :=
  ∀ n, P1928549445618337820.a n = A003642 (n + 1)

end A003642

/-!
# A003643: Number of genera of Q(sqrt(-n)), n squarefree.

The programs for A003643, there is no canonical definition to state claims against.
-/

/-! ## A003643.P17471140294711852494

`2^A319662(n+1)`
-/

namespace A003643.P17471140294711852494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A319662 (n + 1) : ℤ)

end

end A003643.P17471140294711852494

/-! ## A003643.P16815202681239438441

`A000924(n+1)/A003639(n+1)`
-/

namespace A003643.P16815202681239438441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000924 (n + 1) : ℚ) / (A003639 (n + 1) : ℚ)

end

end A003643.P16815202681239438441

/-! ## A003643.P6900710506438205139

`A024361(abs(A033197(n+1)))`
-/

namespace A003643.P6900710506438205139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 |A033197 (n + 1)|.toNat

end

end A003643.P6900710506438205139

/-! ## A003643.P15960329700775140714

`A024361(-A033197(n+1))`
-/

namespace A003643.P15960329700775140714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (-A033197 (n + 1)).toNat

end

end A003643.P15960329700775140714

/-! ## A003643.P8606620506033111067

`A024361(A033197(n+1)-2*A033197(n+1))`
-/

namespace A003643.P8606620506033111067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (A033197 (n + 1) - 2 * A033197 (n + 1)).toNat

end

end A003643.P8606620506033111067

/-! ## A003643.P15437869121272527035

`A007875(abs(A033197(n+1)))`
-/

namespace A003643.P15437869121272527035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 |A033197 (n + 1)|.toNat

end

end A003643.P15437869121272527035

/-! ## A003643.P12318443622417232454

`A024363(abs(A033197(n+1)))`
-/

namespace A003643.P12318443622417232454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024363 |A033197 (n + 1)|.toNat

end

end A003643.P12318443622417232454

/-! ## A003643.P17083043669065335088

`A007875(-A033197(n+1))`
-/

namespace A003643.P17083043669065335088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (-A033197 (n + 1)).toNat

end

end A003643.P17083043669065335088

/-! ## A003643.P8311795594477435539

`A024363(-A033197(n+1))`
-/

namespace A003643.P8311795594477435539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024363 (-A033197 (n + 1)).toNat

end

end A003643.P8311795594477435539

/-! ## A003643.P4334785414323485646

`A004526(A034444(-A033197(n+1)))`
-/

namespace A003643.P4334785414323485646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A034444 (-A033197 (n + 1)).toNat).toNat

end

end A003643.P4334785414323485646

/-! ## A003643.P18089552930765893325

`A007875(A033197(n+1)-2*A033197(n+1))`
-/

namespace A003643.P18089552930765893325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (A033197 (n + 1) - 2 * A033197 (n + 1)).toNat

end

end A003643.P18089552930765893325

/-! ## A003643.P9148858770478424281

`A024363(A033197(n+1)-2*A033197(n+1))`
-/

namespace A003643.P9148858770478424281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024363 (A033197 (n + 1) - 2 * A033197 (n + 1)).toNat

end

end A003643.P9148858770478424281

/-! ## A003643.P7179811861886182885

`A086669(-(4*A033197(n+1)))/2`
-/

namespace A003643.P7179811861886182885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086669 (-(4 * A033197 (n + 1))).toNat : ℚ) / 2

end

end A003643.P7179811861886182885

/-! ## A003643.P6454690947328716257

`A202084(record[A007913(n+1)])/A003639(n+1)`
-/

namespace A003643.P6454690947328716257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202084 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / (A003639 (n + 1) : ℚ)

end

end A003643.P6454690947328716257

/-! ## A003643.P16634764007707239698

`A202084(record[A007947(n+1)])/A003639(n+1)`
-/

namespace A003643.P16634764007707239698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202084 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / (A003639 (n + 1) : ℚ)

end

end A003643.P16634764007707239698

/-! ## A003643.P6783695911326142618

`A202084(record[A066069(n+1)])/A003639(n+1)`
-/

namespace A003643.P6783695911326142618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066069 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202084 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / (A003639 (n + 1) : ℚ)

end

end A003643.P6783695911326142618

/-! ## A003643.P2924282710009408113

`A202084(A133466(n+1))/A003639(n+1)`
-/

namespace A003643.P2924282710009408113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202084 (A133466 (n + 1)).toNat : ℚ) / (A003639 (n + 1) : ℚ)

end

end A003643.P2924282710009408113

/-!
# A003644: Discriminants of the known imaginary quadratic fields with 1 class per genus (a finite sequence).

The programs for A003644, there is no canonical definition to state claims against.
-/

/-! ## A003644.P16794492348821426953

`∩[A003171(n+1), A003657(n+1)]`
-/

namespace A003644.P16794492348821426953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003644.P16794492348821426953

/-! ## A003644.P6647635148282201704

`∩[A003657(n+1), A232528(n+1)]`
-/

namespace A003644.P6647635148282201704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003644.P6647635148282201704

/-! ## A003644.P1799874941180460887

`record[root(A003657(n+1), A003636(n+3))]`
-/

namespace A003644.P1799874941180460887
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A003657 (n + 1) : ℝ) ^ (1 / (A003636 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003644.P1799874941180460887

/-! ## A003644.P14072786625728180765

`eq[A007875(n+1), A191410(n+1)]+1`
-/

namespace A003644.P14072786625728180765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A003644.P14072786625728180765

/-! ## A003644.P15762532288890842209

`A020725(eq[A007875(n+1), A191410(n+1)])`
-/

namespace A003644.P15762532288890842209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A003644.P15762532288890842209

/-! ## A003644.P8336212104042095129

`A056699(eq[A007875(n+1), A191410(n+1)])`
-/

namespace A003644.P8336212104042095129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A003644.P8336212104042095129

/-! ## A003644.P11459536316434624877

`A065475(eq[A007875(n+1), A191410(n+1)])`
-/

namespace A003644.P11459536316434624877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A003644.P11459536316434624877

/-! ## A003644.P2744890395091911984

`A003657(eq[A003640(n+1), A006641(n+1)]+1)`
-/

namespace A003644.P2744890395091911984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A003644.P2744890395091911984

/-! ## A003644.P18118146942966441394

`A020725(eq[2*A191410(n+1), A034444(n+1)])`
-/

namespace A003644.P18118146942966441394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A003644.P18118146942966441394

/-! ## A003644.P15524702034971685466

`A056699(eq[2*A191410(n+1), A034444(n+1)])`
-/

namespace A003644.P15524702034971685466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A003644.P15524702034971685466

/-!
# A003645: a(n) = 2^n * C(n+1), where C(n) = A000108(n) Catalan numbers.

The programs for A003645, the canonical program `A003645.P9793536378345761660` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003645 has offset 0).

The definition of A003645 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052701, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A003645.P9793536378345761660

`A052701(n+2)/2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A003645

/-- `A052701(n+2)/2` -/
def P9793536378345761660.Spec : Prop :=
  ∀ n, P9793536378345761660.a n = (A003645 n : ℚ)

end A003645

/-! ## A003645.P9111236735168054829

`2^n*C(2*n+3, n+1)/(2*n+3)`
-/

namespace A003645.P9111236735168054829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n * Nat.choose (2 * n + 3) (n + 1) : ℚ) / (2 * n + 3 : ℚ)

end

end A003645.P9111236735168054829

namespace A003645

/-- `2^n*C(2*n+3, n+1)/(2*n+3)` -/
def P9111236735168054829.Spec : Prop :=
  ∀ n, P9111236735168054829.a n = (A003645 n : ℚ)

end A003645

/-! ## A003645.P4113907663861104041

`∏[(8*n+4)/(n+2)]/2`
-/

namespace A003645.P4113907663861104041
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * n + 4 : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A003645.P4113907663861104041

namespace A003645

/-- `∏[(8*n+4)/(n+2)]/2` -/
def P4113907663861104041.Spec : Prop :=
  ∀ n, P4113907663861104041.a n = (A003645 n : ℚ)

end A003645

/-! ## A003645.P6040757184501443672

`(8*n+4)/(n+2)*a(n-1)` with `a(0)=1`
-/

namespace A003645.P6040757184501443672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (8 * n + 4 : ℚ) / (n + 2 : ℚ) * a (n - 1)

end

end A003645.P6040757184501443672

namespace A003645

/-- `(8*n+4)/(n+2)*a(n-1)` -/
def P6040757184501443672.Spec : Prop :=
  ∀ n, P6040757184501443672.a n = (A003645 n : ℚ)

end A003645

/-! ## A003645.P17030817785197626602

`record[(2-3/n)*4*a(n-1)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A003645.P17030817785197626602
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  (2 - 3 / (n : ℚ)) * (4 * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003645.P17030817785197626602

namespace A003645

/-- `record[(2-3/n)*4*a(n-1)]` -/
def P17030817785197626602.Spec : Prop :=
  ∀ n, P17030817785197626602.a n = (A003645 n : ℚ)

end A003645

/-! ## A003645.P15565888632467698599

`A167432(∑[n])`
-/

namespace A003645.P15565888632467698599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167432 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003645.P15565888632467698599

namespace A003645

/-- `A167432(∑[n])` -/
def P15565888632467698599.Spec : Prop :=
  ∀ n, P15565888632467698599.a n = A003645 n

end A003645

/-! ## A003645.P5710216328304831580

`A201639(∑[n])`
-/

namespace A003645.P5710216328304831580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201639 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003645.P5710216328304831580

namespace A003645

/-- `A201639(∑[n])` -/
def P5710216328304831580.Spec : Prop :=
  ∀ n, P5710216328304831580.a n = A003645 n

end A003645

/-! ## A003645.P11843403920837502691

`record[A167432(n)]`
-/

namespace A003645.P11843403920837502691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003645.P11843403920837502691

namespace A003645

/-- `record[A167432(n)]` -/
def P11843403920837502691.Spec : Prop :=
  ∀ n, P11843403920837502691.a n = A003645 n

end A003645

/-! ## A003645.P12679503066300656224

`record[A201639(n)]`
-/

namespace A003645.P12679503066300656224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201639 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003645.P12679503066300656224

namespace A003645

/-- `record[A201639(n)]` -/
def P12679503066300656224.Spec : Prop :=
  ∀ n, P12679503066300656224.a n = A003645 n

end A003645

/-! ## A003645.P9912420241462274580

`2^n*A000108(n+1)`
-/

namespace A003645.P9912420241462274580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000108 (n + 1)

end

end A003645.P9912420241462274580

namespace A003645

/-- `2^n*A000108(n+1)` -/
def P9912420241462274580.Spec : Prop :=
  ∀ n, P9912420241462274580.a n = A003645 n

end A003645

/-! ## A003645.P5684254688940516564

`2^n*A120588(n+2)`
-/

namespace A003645.P5684254688940516564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A120588 (n + 2)

end

end A003645.P5684254688940516564

namespace A003645

/-- `2^n*A120588(n+2)` -/
def P5684254688940516564.Spec : Prop :=
  ∀ n, P5684254688940516564.a n = A003645 n

end A003645

/-! ## A003645.P3790828936873689218

`2^(n-1)*A068875(n+1)`
-/

namespace A003645.P3790828936873689218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A068875 (n + 1) : ℚ)

end

end A003645.P3790828936873689218

namespace A003645

/-- `2^(n-1)*A068875(n+1)` -/
def P3790828936873689218.Spec : Prop :=
  ∀ n, P3790828936873689218.a n = (A003645 n : ℚ)

end A003645

/-! ## A003645.P8709763569761481899

`2^(n-1)*A262543(n+2)`
-/

namespace A003645.P8709763569761481899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A262543 (n + 2) : ℚ)

end

end A003645.P8709763569761481899

namespace A003645

/-- `2^(n-1)*A262543(n+2)` -/
def P8709763569761481899.Spec : Prop :=
  ∀ n, P8709763569761481899.a n = (A003645 n : ℚ)

end A003645

/-! ## A003645.P2294915941577040151

`A056450(n)*A234040(n)`
-/

namespace A003645.P2294915941577040151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056450 n * A234040 n

end

end A003645.P2294915941577040151

namespace A003645

/-- `A056450(n)*A234040(n)` -/
def P2294915941577040151.Spec : Prop :=
  ∀ n, P2294915941577040151.a n = A003645 n

end A003645

/-! ## A003645.P1442151700094303171

`record[A126120(n)]*A000079(n)`
-/

namespace A003645.P1442151700094303171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000079 n

end

end A003645.P1442151700094303171

namespace A003645

/-- `record[A126120(n)]*A000079(n)` -/
def P1442151700094303171.Spec : Prop :=
  ∀ n, P1442151700094303171.a n = A003645 n

end A003645

/-! ## A003645.P9814250500293119956

`A110510(A167614(n+1)-1)`
-/

namespace A003645.P9814250500293119956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110510 (A167614 (n + 1) - 1).toNat

end

end A003645.P9814250500293119956

namespace A003645

/-- `A110510(A167614(n+1)-1)` -/
def P9814250500293119956.Spec : Prop :=
  ∀ n, P9814250500293119956.a n = A003645 n

end A003645

/-! ## A003645.P1229066202006891353

`A000108(n+1)*A000079(n)`
-/

namespace A003645.P1229066202006891353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A000079 n

end

end A003645.P1229066202006891353

namespace A003645

/-- `A000108(n+1)*A000079(n)` -/
def P1229066202006891353.Spec : Prop :=
  ∀ n, P1229066202006891353.a n = A003645 n

end A003645

/-! ## A003645.P11942044462835673090

`A011782(n)*A228403(n+1)`
-/

namespace A003645.P11942044462835673090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A228403 (n + 1)

end

end A003645.P11942044462835673090

namespace A003645

/-- `A011782(n)*A228403(n+1)` -/
def P11942044462835673090.Spec : Prop :=
  ∀ n, P11942044462835673090.a n = A003645 n

end A003645

/-! ## A003645.P2069338245796039760

`A000079(n)*A099364(2*n)`
-/

namespace A003645.P2069338245796039760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A099364 (2 * n)

end

end A003645.P2069338245796039760

namespace A003645

/-- `A000079(n)*A099364(2*n)` -/
def P2069338245796039760.Spec : Prop :=
  ∀ n, P2069338245796039760.a n = A003645 n

end A003645

/-!
# A003646: Class number of binary quadratic forms with fundamental discriminant A003658(n),n>=2.

The programs for A003646, there is no canonical definition to state claims against.
-/

/-! ## A003646.P18232706349458478444

`(A106032(n+1)^4)%7`
-/

namespace A003646.P18232706349458478444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106032 (n + 1) ^ 4) 7

end

end A003646.P18232706349458478444

/-! ## A003646.P6267802587802682186

`A105774(A178334(n)+A106032(n+1))`
-/

namespace A003646.P6267802587802682186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105774 (A178334 n + A106032 (n + 1)).toNat

end

end A003646.P6267802587802682186

/-! ## A003646.P4747084528260132058

`A053196(A106032(n+1)^A178334(n))`
-/

namespace A003646.P4747084528260132058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053196 (SequenceMachineLib.roundAway ((A106032 (n + 1) : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A003646.P4747084528260132058

/-! ## A003646.P5554753381200958540

`A056415(A178334(n+1)+A106032(n+1))`
-/

namespace A003646.P5554753381200958540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056415 (A178334 (n + 1) + A106032 (n + 1)).toNat

end

end A003646.P5554753381200958540

/-! ## A003646.P17879103234771540011

`A053196(A106032(n+1)*A178334(n+1))`
-/

namespace A003646.P17879103234771540011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053196 (A106032 (n + 1) * A178334 (n + 1)).toNat

end

end A003646.P17879103234771540011

/-! ## A003646.P16476458214763296904

`A007294((A304042(n)+1)*A106032(n+1))`
-/

namespace A003646.P16476458214763296904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 ((A304042 n + 1) * A106032 (n + 1)).toNat

end

end A003646.P16476458214763296904

/-! ## A003646.P6204861323596568431

`A032355((A304042(n)+1)*A106032(n+1))`
-/

namespace A003646.P6204861323596568431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032355 ((A304042 n + 1) * A106032 (n + 1)).toNat

end

end A003646.P6204861323596568431

/-! ## A003646.P8578356655658898564

`A007294(A106032(n+1)*A239374(n+2))`
-/

namespace A003646.P8578356655658898564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (A106032 (n + 1) * A239374 (n + 2)).toNat

end

end A003646.P8578356655658898564

/-! ## A003646.P2598816889594033027

`A072721(A106032(n+1)*A239374(n+2))`
-/

namespace A003646.P2598816889594033027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 (A106032 (n + 1) * A239374 (n + 2)).toNat

end

end A003646.P2598816889594033027

/-! ## A003646.P16598387479198252103

`2^A000720(A106032(n+1)*A304042(n))`
-/

namespace A003646.P16598387479198252103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000720 (A106032 (n + 1) * A304042 n).toNat : ℤ)

end

end A003646.P16598387479198252103

/-!
# A003647: Class number of real quadratic forms with discriminant 4n+1.

The programs for A003647, there is no canonical definition to state claims against.
-/

/-! ## A003647.P8284624544791951204

`A003646(eq[A003658(n+2), A306300(n+2)]+2)`
-/

namespace A003647.P8284624544791951204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306300 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003646 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A003647.P8284624544791951204

/-! ## A003647.P14559606236629736551

`gcd(2, A335433(A050038(n+1)))`
-/

namespace A003647.P14559606236629736551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A335433 (A050038 (n + 1)).toNat)

end

end A003647.P14559606236629736551

/-! ## A003647.P16963476928522054128

`A087890(A143862(n+4)+n)`
-/

namespace A003647.P16963476928522054128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087890 (A143862 (n + 4) + (n : ℤ)).toNat

end

end A003647.P16963476928522054128

/-! ## A003647.P8988730319799458082

`A010060(∑[A121756(2*n+5)])+1`
-/

namespace A003647.P8988730319799458082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121756 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A003647.P8988730319799458082

/-! ## A003647.P3597481706808728132

`A396562(A211110(A039955(n+2)))`
-/

namespace A003647.P3597481706808728132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396562 (A211110 (A039955 (n + 2)).toNat).toNat

end

end A003647.P3597481706808728132

/-!
# A003648: Class number of quadratic forms with discriminant 4n, n == 2,3^( mod 4).

The programs for A003648, there is no canonical definition to state claims against.
-/

/-! ## A003648.P12722999156901250742

`A003646(eq[1, round(n/A306300(n+2))]+2)`
-/

namespace A003648.P12722999156901250742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (A306300 (n + 2) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003646 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A003648.P12722999156901250742

/-! ## A003648.P3770316648268680602

`A003646(eq[1, floor((n+1)/A306300(n+2))]+2)`
-/

namespace A003648.P3770316648268680602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A306300 (n + 2) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003646 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A003648.P3770316648268680602

/-! ## A003648.P7848817782268554005

`A000120(A089759(n)*A335870(n))`
-/

namespace A003648.P7848817782268554005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A089759 n * A335870 n).toNat

end

end A003648.P7848817782268554005

/-! ## A003648.P15432996728771318951

`A303536(A023242(n+1)+A022168(n))`
-/

namespace A003648.P15432996728771318951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 (A023242 (n + 1) + A022168 n).toNat

end

end A003648.P15432996728771318951

/-! ## A003648.P897842124322054396

`A034444(or(A177729(n+1), A329593(n)))`
-/

namespace A003648.P897842124322054396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (Int.lor (A177729 (n + 1)) (A329593 n)).toNat

end

end A003648.P897842124322054396

/-!
# A003649: Class number of real quadratic field Q(sqrt f), where f is the n-th squarefree number A005117(n).

The programs for A003649, there is no canonical definition to state claims against.
-/

/-! ## A003649.P12913595893100918604

`A202053(A144338(n+1))`
-/

namespace A003649.P12913595893100918604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A144338 (n + 1)).toNat

end

end A003649.P12913595893100918604

/-! ## A003649.P4578259234988433719

`A202053(A005117(n+2))`
-/

namespace A003649.P4578259234988433719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A005117 (n + 2)).toNat

end

end A003649.P4578259234988433719

/-! ## A003649.P7626747983972612206

`A202053(eq[0, A087049(n)])`
-/

namespace A003649.P7626747983972612206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003649.P7626747983972612206

/-! ## A003649.P15172881023351143076

`A202053(record[A007913(n+2)])`
-/

namespace A003649.P15172881023351143076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A003649.P15172881023351143076

/-! ## A003649.P11069507630101279896

`A202053(A033198(n+1))`
-/

namespace A003649.P11069507630101279896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A033198 (n + 1)).toNat

end

end A003649.P11069507630101279896

/-! ## A003649.P17447166572754255514

`A202053(A133466(n+2))`
-/

namespace A003649.P17447166572754255514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A133466 (n + 2)).toNat

end

end A003649.P17447166572754255514

/-! ## A003649.P8877371647750830895

`A202053(A195085(n+2))`
-/

namespace A003649.P8877371647750830895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A195085 (n + 2)).toNat

end

end A003649.P8877371647750830895

/-!
# A003650: Class number of real quadratic field with discriminant 4n+1.

The programs for A003650, there is no canonical definition to state claims against.
-/

/-! ## A003650.P10196488761738759027

`A202053(A039955(n+2))`
-/

namespace A003650.P10196488761738759027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A039955 (n + 2)).toNat

end

end A003650.P10196488761738759027

/-! ## A003650.P7142691354640633519

`A202053(record[A306300(n+2)])`
-/

namespace A003650.P7142691354640633519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306300 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A003650.P7142691354640633519

/-! ## A003650.P4638422902865661346

`A202053(∩[2*n+1, A003658(n+2)])`
-/

namespace A003650.P4638422902865661346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A003650.P4638422902865661346

/-! ## A003650.P9271750170902211253

`A003652(eq[A003658(n+2), A306300(n+2)]+2)`
-/

namespace A003650.P9271750170902211253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306300 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003652 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A003650.P9271750170902211253

/-! ## A003650.P14243561582626838688

`gcd(A039958(A039955(n+2)), A039975(2*n+1))`
-/

namespace A003650.P14243561582626838688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039958 (A039955 (n + 2)).toNat) (A039975 (2 * n + 1))

end

end A003650.P14243561582626838688

/-!
# A003651: Class number of real quadratic field with discriminant 4n, n == 2,3 ( mod 4).

The programs for A003651, there is no canonical definition to state claims against.
-/

/-! ## A003651.P16936175869658844825

`A202053(record[A033198(n+1)])`
-/

namespace A003651.P16936175869658844825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A003651.P16936175869658844825

/-! ## A003651.P7372593287426171655

`A202053(record[A037449(n+2)])`
-/

namespace A003651.P7372593287426171655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A003651.P7372593287426171655

/-! ## A003651.P9735265348704830636

`A202053(∩[2*n, A003658(n+1)])`
-/

namespace A003651.P9735265348704830636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A003651.P9735265348704830636

/-! ## A003651.P13565489854644952622

`A003652(eq[1, round(n/A306300(n+2))]+2)`
-/

namespace A003651.P13565489854644952622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (A306300 (n + 2) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A003651.P13565489854644952622

/-! ## A003651.P3724402811812489868

`A003652(eq[1, floor((n+1)/A306300(n+2))]+2)`
-/

namespace A003651.P3724402811812489868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A306300 (n + 2) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A003651.P3724402811812489868

/-! ## A003651.P11041646468791282228

`A202053(A230375(n+1))`
-/

namespace A003651.P11041646468791282228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A230375 (n + 1)).toNat

end

end A003651.P11041646468791282228

/-!
# A003652: Class number of real quadratic field with discriminant A003658(n), n >= 2.

The programs for A003652, there is no canonical definition to state claims against.
-/

/-! ## A003652.P9311271777569263814

`A202053(A003658(n+2))`
-/

namespace A003652.P9311271777569263814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A003658 (n + 2)).toNat

end

end A003652.P9311271777569263814

/-! ## A003652.P3709356495423489875

`A202053(A306300(n+2))`
-/

namespace A003652.P3709356495423489875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A306300 (n + 2)).toNat

end

end A003652.P3709356495423489875

/-! ## A003652.P13479694021531829133

`A237271(A320631(n+1)^A391436(n+2))`
-/

namespace A003652.P13479694021531829133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (SequenceMachineLib.roundAway ((A320631 (n + 1) : ℚ) ^ (A391436 (n + 2) : ℤ))).toNat

end

end A003652.P13479694021531829133

/-! ## A003652.P16227807040331935414

`A032741(A320631(n+1)^A391436(n+2))+1`
-/

namespace A003652.P16227807040331935414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((A320631 (n + 1) : ℚ) ^ (A391436 (n + 2) : ℤ))).toNat + 1

end

end A003652.P16227807040331935414

/-! ## A003652.P11719197236104321285

`A335385(A391426(n+2)^A065645(2*(n+2)))`
-/

namespace A003652.P11719197236104321285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335385 (SequenceMachineLib.roundAway ((A391426 (n + 2) : ℚ) ^ (A065645 (2 * (n + 2)) : ℤ))).toNat

end

end A003652.P11719197236104321285

/-!
# A003653: Discriminants of quadratic fields whose fundamental unit has norm -1.

The programs for A003653, there is no canonical definition to state claims against.
-/

/-! ## A003653.P5209331744939760883

`filter[A226696(n+1), A290098(#)]`
-/

namespace A003653.P5209331744939760883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A003653.P5209331744939760883

/-! ## A003653.P17360635485402400757

`filter[A245226(n+2), A290098(#)]`
-/

namespace A003653.P17360635485402400757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245226 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A003653.P17360635485402400757

/-! ## A003653.P13414803621942668146

`∩[A003658(n+1), A226696(n+1)]`
-/

namespace A003653.P13414803621942668146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003653.P13414803621942668146

/-! ## A003653.P8540206632621551802

`record[and(A003658(n+2), A014077(n+2))]`
-/

namespace A003653.P8540206632621551802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003658 (n + 2)) (A014077 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003653.P8540206632621551802

/-! ## A003653.P13902407755715761559

`record[A037449(A226696(n+1))]`
-/

namespace A003653.P13902407755715761559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (A226696 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003653.P13902407755715761559

/-!
# A003654: Squarefree integers m such that the fundamental unit of Q(sqrt(m)) has norm -1. Also, squarefree integers m such that the Pell equation x^2 - m*y^2 = -1 is soluble.

The programs for A003654, there is no canonical definition to state claims against.
-/

/-! ## A003654.P17381178112501864792

`record[A007913(A003814(n+1))]`
-/

namespace A003654.P17381178112501864792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A003814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003654.P17381178112501864792

/-! ## A003654.P4878873529165302817

`filter[A003814(n+1), A008966(#)]`
-/

namespace A003654.P4878873529165302817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A003654.P4878873529165302817

/-! ## A003654.P10964869236032675700

`filter[A003814(n+1), A359377(#)]`
-/

namespace A003654.P10964869236032675700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A003654.P10964869236032675700

/-! ## A003654.P4067618932825809055

`filter[A003814(n+1), A359834(#)]`
-/

namespace A003654.P4067618932825809055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A003654.P4067618932825809055

/-! ## A003654.P2757295124208128771

`filter[A031396(n+2), A008966(#)]`
-/

namespace A003654.P2757295124208128771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A003654.P2757295124208128771

/-! ## A003654.P8330732481260037486

`filter[A031396(n+2), A359377(#)]`
-/

namespace A003654.P8330732481260037486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A003654.P8330732481260037486

/-! ## A003654.P5539919073574640469

`∩[A003814(n+1), A005117(n+1)]`
-/

namespace A003654.P5539919073574640469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003654.P5539919073574640469

/-! ## A003654.P18106838060217744209

`∩[A003814(n+1), A020893(n+1)]`
-/

namespace A003654.P18106838060217744209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003654.P18106838060217744209

/-! ## A003654.P4140659505635849174

`filter[A003814(n+1), A323154(#)]`
-/

namespace A003654.P4140659505635849174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A003654.P4140659505635849174

/-! ## A003654.P3069630827322521956

`filter[A003814(n+1), A353559(#)]`
-/

namespace A003654.P3069630827322521956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A003654.P3069630827322521956

/-! ## A003654.P7216896886538046837

`filter[A003814(n+1), A353627(#)]`
-/

namespace A003654.P7216896886538046837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A003654.P7216896886538046837

/-! ## A003654.P2700669621713486511

`filter[A003814(n+1), A364250(#)]`
-/

namespace A003654.P2700669621713486511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364250 (f1 j).toNat = 1) n)

end

end A003654.P2700669621713486511

/-! ## A003654.P17410530935659069955

`filter[A031396(n+2), A323154(#)]`
-/

namespace A003654.P17410530935659069955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A003654.P17410530935659069955

/-! ## A003654.P12201589473586809673

`filter[A031396(n+2), A353559(#)]`
-/

namespace A003654.P12201589473586809673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A003654.P12201589473586809673

/-! ## A003654.P4388705080513405059

`filter[A031396(n+2), A353627(#)]`
-/

namespace A003654.P4388705080513405059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A003654.P4388705080513405059

/-! ## A003654.P9346434072456743297

`filter[A245226(n+2), A008966(#)]`
-/

namespace A003654.P9346434072456743297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245226 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A003654.P9346434072456743297

/-! ## A003654.P13206791824353768962

`filter[A245226(n+2), A323154(#)]`
-/

namespace A003654.P13206791824353768962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245226 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A003654.P13206791824353768962

/-! ## A003654.P18272425112071521644

`filter[A245226(n+2), A359377(#)]`
-/

namespace A003654.P18272425112071521644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245226 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A003654.P18272425112071521644

/-! ## A003654.P15920349179984098203

`∩[A003814(n+1), A034026(n+1)]`
-/

namespace A003654.P15920349179984098203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003654.P15920349179984098203

/-! ## A003654.P13249083892180388026

`∩[A003814(n+1), A089269(n+1)]`
-/

namespace A003654.P13249083892180388026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003654.P13249083892180388026

/-!
# A003655: Discriminants of real quadratic fields with narrow class number 1.

The programs for A003655, there is no canonical definition to state claims against.
-/

/-! ## A003655.P5779655031497504421

`record[A008475(A003656(n+1))]`
-/

namespace A003655.P5779655031497504421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A003656 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003655.P5779655031497504421

/-! ## A003655.P14818799013647905294

`filter[A003656(n+1), A010055(#)]`
-/

namespace A003655.P14818799013647905294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A003655.P14818799013647905294

/-! ## A003655.P17186777644537653050

`filter[A003656(n+1), A069513(#)]`
-/

namespace A003655.P17186777644537653050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A003655.P17186777644537653050

/-! ## A003655.P9045302103718040669

`filter[A003656(n+1), A092248(#)]`
-/

namespace A003655.P9045302103718040669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A003655.P9045302103718040669

/-! ## A003655.P15717401811284600058

`filter[A003656(n+1), A174282(#)]`
-/

namespace A003655.P15717401811284600058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174282 (f1 j).toNat = 1) n)

end

end A003655.P15717401811284600058

/-! ## A003655.P8101560632185369439

`filter[A003656(n+1), A174897(#)]`
-/

namespace A003655.P8101560632185369439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A003655.P8101560632185369439

/-! ## A003655.P9581653610659316684

`filter[A003656(n+1), A229062(#)]`
-/

namespace A003655.P9581653610659316684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A003655.P9581653610659316684

/-! ## A003655.P3086032241556906119

`filter[A003656(n+1), A324290(#)]`
-/

namespace A003655.P3086032241556906119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A003655.P3086032241556906119

/-! ## A003655.P11062778638790257558

`filter[A003656(n+1), A351957(#)]`
-/

namespace A003655.P11062778638790257558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A003655.P11062778638790257558

/-! ## A003655.P10501119837954997690

`filter[A003656(n+1), A353817(#)]`
-/

namespace A003655.P10501119837954997690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A003655.P10501119837954997690

/-!
# A003656: Discriminants of real quadratic fields with unique factorization.

The programs for A003656, there is no canonical definition to state claims against.
-/

/-! ## A003656.P6387681258821196264

`filter[A133315(n+1), A290098(#)]`
-/

namespace A003656.P6387681258821196264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A003656.P6387681258821196264

/-! ## A003656.P5833752919303719765

`filter[A219361(n+2), A290098(#)]`
-/

namespace A003656.P5833752919303719765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219361 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A003656.P5833752919303719765

/-! ## A003656.P2296164514330624206

`A003658(eq[1, A003652(n+2)]+2)`
-/

namespace A003656.P2296164514330624206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003652 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A003656.P2296164514330624206

/-! ## A003656.P7768217625774382590

`∩[A003658(n+1), A133315(n+1)]`
-/

namespace A003656.P7768217625774382590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003656.P7768217625774382590

/-! ## A003656.P10772474453951330437

`∩[A133315(n+1), A391417(n+1)]`
-/

namespace A003656.P10772474453951330437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003656.P10772474453951330437

/-! ## A003656.P14592656527621773975

`∩[A133315(n+1), A391422(n+1)]`
-/

namespace A003656.P14592656527621773975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003656.P14592656527621773975

/-! ## A003656.P13112977140871012192

`∩[A133315(n+1), A396862(n+1)]`
-/

namespace A003656.P13112977140871012192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003656.P13112977140871012192

/-! ## A003656.P18225461812675248110

`∩[A219361(n+1), A391417(n+1)]`
-/

namespace A003656.P18225461812675248110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003656.P18225461812675248110

/-! ## A003656.P17508058374362873563

`∩[A219361(n+1), A391422(n+1)]`
-/

namespace A003656.P17508058374362873563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003656.P17508058374362873563

/-! ## A003656.P3014140413031476692

`∩[A219361(n+1), A396862(n+1)]`
-/

namespace A003656.P3014140413031476692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003656.P3014140413031476692

/-! ## A003656.P2846028675217777282

`∩[A390079(n+1), A396862(n+1)]`
-/

namespace A003656.P2846028675217777282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003656.P2846028675217777282

/-! ## A003656.P14250463905382455332

`∩[A391422(n+1), A396862(n+1)]`
-/

namespace A003656.P14250463905382455332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003656.P14250463905382455332

/-! ## A003656.P17786433213279328232

`∩[A003658(n+1), A219361(n+2)]`
-/

namespace A003656.P17786433213279328232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219361 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003656.P17786433213279328232

/-! ## A003656.P1145587661544391353

`record[A003658(n+2)/A003652(n+2)]`
-/

namespace A003656.P1145587661544391353
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003658 (n + 2) : ℚ) / (A003652 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003656.P1145587661544391353

/-! ## A003656.P424095292662440132

`A003658(record[root(n+2, A003652(n+2))])`
-/

namespace A003656.P424095292662440132
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) ^ (1 / (A003652 (n + 2) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A003656.P424095292662440132

/-! ## A003656.P6746526297001271058

`∪[A003655(n+1), A327297(n+1)]`
-/

namespace A003656.P6746526297001271058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003656.P6746526297001271058

/-!
# A003657: Discriminants of imaginary quadratic fields, negated.

The programs for A003657, the canonical program `A003657.P3243846555462678354` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003657 has offset 1).

The definition of A003657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003657.P3243846555462678354

`∪[A039957(n+1), A191483(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A003657

/-- `∪[A039957(n+1), A191483(n+1)]` -/
def P3243846555462678354.Spec : Prop :=
  ∀ n, (P3243846555462678354.a n : ℤ) = A003657 (n + 1)

theorem P3243846555462678354.correct : P3243846555462678354.Spec := by
  intro n
  simp only [A003657, Nat.add_sub_cancel]

end A003657

/-! ## A003657.P2516477620417118938

`lt[0, A191410(n+1)]+1`
-/

namespace A003657.P2516477620417118938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A003657.P2516477620417118938

namespace A003657

/-- `lt[0, A191410(n+1)]+1` -/
def P2516477620417118938.Spec : Prop :=
  ∀ n, (P2516477620417118938.a n : ℤ) = A003657 (n + 1)

end A003657

/-! ## A003657.P523134448367540285

`eq[A037449(n+1), A178182(n+1)]+1`
-/

namespace A003657.P523134448367540285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178182 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A003657.P523134448367540285

namespace A003657

/-- `eq[A037449(n+1), A178182(n+1)]+1` -/
def P523134448367540285.Spec : Prop :=
  ∀ n, (P523134448367540285.a n : ℤ) = A003657 (n + 1)

end A003657

/-! ## A003657.P7097182582839775029

`A056699(eq[A037449(n+1), A178182(n+1)])`
-/

namespace A003657.P7097182582839775029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A003657.P7097182582839775029

namespace A003657

/-- `A056699(eq[A037449(n+1), A178182(n+1)])` -/
def P7097182582839775029.Spec : Prop :=
  ∀ n, P7097182582839775029.a n = A003657 (n + 1)

end A003657

/-! ## A003657.P16089521630491330677

`eq[A191410(n+1), A202084(n+1)]+1`
-/

namespace A003657.P16089521630491330677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A003657.P16089521630491330677

namespace A003657

/-- `eq[A191410(n+1), A202084(n+1)]+1` -/
def P16089521630491330677.Spec : Prop :=
  ∀ n, (P16089521630491330677.a n : ℤ) = A003657 (n + 1)

end A003657

/-! ## A003657.P2477881015646817754

`eq[A058305(n+2), A202084(n+2)]+2`
-/

namespace A003657.P2477881015646817754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A003657.P2477881015646817754

namespace A003657

/-- `eq[A058305(n+2), A202084(n+2)]+2` -/
def P2477881015646817754.Spec : Prop :=
  ∀ n, (P2477881015646817754.a n : ℤ) = A003657 (n + 1)

end A003657

/-! ## A003657.P14098808232877591603

`eq[A058305(n), A202084(A233583(n+1))]`
-/

namespace A003657.P14098808232877591603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003657.P14098808232877591603

namespace A003657

/-- `eq[A058305(n), A202084(A233583(n+1))]` -/
def P14098808232877591603.Spec : Prop :=
  ∀ n, (P14098808232877591603.a n : ℤ) = A003657 (n + 1)

end A003657

/-! ## A003657.P8020195223171068949

`eq[A058305(n), A202084(A123108(2*n))]`
-/

namespace A003657.P8020195223171068949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003657.P8020195223171068949

namespace A003657

/-- `eq[A058305(n), A202084(A123108(2*n))]` -/
def P8020195223171068949.Spec : Prop :=
  ∀ n, (P8020195223171068949.a n : ℤ) = A003657 (n + 1)

end A003657

/-! ## A003657.P12840181331105588194

`eq[A058305(n), A202084(A000007(n)+n)]`
-/

namespace A003657.P12840181331105588194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003657.P12840181331105588194

namespace A003657

/-- `eq[A058305(n), A202084(A000007(n)+n)]` -/
def P12840181331105588194.Spec : Prop :=
  ∀ n, (P12840181331105588194.a n : ℤ) = A003657 (n + 1)

end A003657

/-! ## A003657.P3077803210137836593

`A056699(eq[A191410(n+1), A202084(n+1)])`
-/

namespace A003657.P3077803210137836593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A003657.P3077803210137836593

namespace A003657

/-- `A056699(eq[A191410(n+1), A202084(n+1)])` -/
def P3077803210137836593.Spec : Prop :=
  ∀ n, P3077803210137836593.a n = A003657 (n + 1)

end A003657

/-!
# A003658: Fundamental discriminants of real quadratic fields; indices of primitive positive Dirichlet L-series.

The programs for A003658, the canonical program `A003658.P12929696761515540924` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003658 has offset 1).

The definition of A003658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003658.P12929696761515540924

`eq[1, A290098(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A003658

/-- `eq[1, A290098(n+1)]+1` -/
def P12929696761515540924.Spec : Prop :=
  ∀ n, (P12929696761515540924.a n : ℤ) = A003658 (n + 1)

theorem P12929696761515540924.correct : P12929696761515540924.Spec := by
  intro n
  simp only [A003658, Nat.add_sub_cancel]

end A003658

/-! ## A003658.P11868811683444654407

`∪[A002144(n+1), A072902(n+1)]`
-/

namespace A003658.P11868811683444654407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003658.P11868811683444654407

namespace A003658

/-- `∪[A002144(n+1), A072902(n+1)]` -/
def P11868811683444654407.Spec : Prop :=
  ∀ n, (P11868811683444654407.a n : ℤ) = A003658 (n + 1)

end A003658

/-! ## A003658.P3326170294431471882

`∪[A003653(n+1), A072902(n+1)]`
-/

namespace A003658.P3326170294431471882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003658.P3326170294431471882

namespace A003658

/-- `∪[A003653(n+1), A072902(n+1)]` -/
def P3326170294431471882.Spec : Prop :=
  ∀ n, (P3326170294431471882.a n : ℤ) = A003658 (n + 1)

end A003658

/-! ## A003658.P8405781845448434886

`∪[A039955(n+1), A072902(n+1)]`
-/

namespace A003658.P8405781845448434886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003658.P8405781845448434886

namespace A003658

/-- `∪[A039955(n+1), A072902(n+1)]` -/
def P8405781845448434886.Spec : Prop :=
  ∀ n, (P8405781845448434886.a n : ℤ) = A003658 (n + 1)

end A003658

/-! ## A003658.P9534374322470699621

`∪[A072902(n+1), A231754(n+1)]`
-/

namespace A003658.P9534374322470699621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003658.P9534374322470699621

namespace A003658

/-- `∪[A072902(n+1), A231754(n+1)]` -/
def P9534374322470699621.Spec : Prop :=
  ∀ n, (P9534374322470699621.a n : ℤ) = A003658 (n + 1)

end A003658

/-! ## A003658.P8071080370781970134

`∪[A072902(n+1), A280084(n+1)]`
-/

namespace A003658.P8071080370781970134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003658.P8071080370781970134

namespace A003658

/-- `∪[A072902(n+1), A280084(n+1)]` -/
def P8071080370781970134.Spec : Prop :=
  ∀ n, (P8071080370781970134.a n : ℤ) = A003658 (n + 1)

end A003658

/-! ## A003658.P6516738604969353585

`filter[A100832(n+1), A290098(#)]`
-/

namespace A003658.P6516738604969353585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A003658.P6516738604969353585

namespace A003658

/-- `filter[A100832(n+1), A290098(#)]` -/
def P6516738604969353585.Spec : Prop :=
  ∀ n, P6516738604969353585.a n = A003658 (n + 1)

end A003658

/-! ## A003658.P6843987326506902227

`filter[A042948(n+1), A290098(#)]`
-/

namespace A003658.P6843987326506902227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A003658.P6843987326506902227

namespace A003658

/-- `filter[A042948(n+1), A290098(#)]` -/
def P6843987326506902227.Spec : Prop :=
  ∀ n, P6843987326506902227.a n = A003658 (n + 1)

end A003658

/-! ## A003658.P17776533245377001127

`filter[A285623(n+1), A290098(#)]`
-/

namespace A003658.P17776533245377001127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A003658.P17776533245377001127

namespace A003658

/-- `filter[A285623(n+1), A290098(#)]` -/
def P17776533245377001127.Spec : Prop :=
  ∀ n, P17776533245377001127.a n = A003658 (n + 1)

end A003658

/-! ## A003658.P12274681035091735844

`filter[A047432(n+2), A290098(#)]`
-/

namespace A003658.P12274681035091735844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047432 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A003658.P12274681035091735844

namespace A003658

/-- `filter[A047432(n+2), A290098(#)]` -/
def P12274681035091735844.Spec : Prop :=
  ∀ n, P12274681035091735844.a n = A003658 (n + 1)

end A003658

/-! ## A003658.P1484331616405687462

`filter[A047494(n+2), A290098(#)]`
-/

namespace A003658.P1484331616405687462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047494 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A003658.P1484331616405687462

namespace A003658

/-- `filter[A047494(n+2), A290098(#)]` -/
def P1484331616405687462.Spec : Prop :=
  ∀ n, P1484331616405687462.a n = A003658 (n + 1)

end A003658

/-! ## A003658.P14906822736063410376

`filter[A047601(n+2), A290098(#)]`
-/

namespace A003658.P14906822736063410376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047601 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A003658.P14906822736063410376

namespace A003658

/-- `filter[A047601(n+2), A290098(#)]` -/
def P14906822736063410376.Spec : Prop :=
  ∀ n, P14906822736063410376.a n = A003658 (n + 1)

end A003658

/-! ## A003658.P11527377065045138525

`filter[A047614(n+2), A290098(#)]`
-/

namespace A003658.P11527377065045138525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047614 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A003658.P11527377065045138525

namespace A003658

/-- `filter[A047614(n+2), A290098(#)]` -/
def P11527377065045138525.Spec : Prop :=
  ∀ n, P11527377065045138525.a n = A003658 (n + 1)

end A003658

/-! ## A003658.P3684879913260984581

`filter[A161674(n+2), A290098(#)]`
-/

namespace A003658.P3684879913260984581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161674 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A003658.P3684879913260984581

namespace A003658

/-- `filter[A161674(n+2), A290098(#)]` -/
def P3684879913260984581.Spec : Prop :=
  ∀ n, P3684879913260984581.a n = A003658 (n + 1)

end A003658

/-! ## A003658.P2027238486257252451

`filter[A247161(n+1), A290098(#)]`
-/

namespace A003658.P2027238486257252451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A003658.P2027238486257252451

namespace A003658

/-- `filter[A247161(n+1), A290098(#)]` -/
def P2027238486257252451.Spec : Prop :=
  ∀ n, P2027238486257252451.a n = A003658 (n + 1)

end A003658

/-! ## A003658.P5458327850901722595

`filter[A325130(n+1), A290098(#)]`
-/

namespace A003658.P5458327850901722595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A003658.P5458327850901722595

namespace A003658

/-- `filter[A325130(n+1), A290098(#)]` -/
def P5458327850901722595.Spec : Prop :=
  ∀ n, P5458327850901722595.a n = A003658 (n + 1)

end A003658

/-! ## A003658.P1842795693833643028

`filter[A304800(n), A290098(#)]`
-/

namespace A003658.P1842795693833643028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A003658.P1842795693833643028

namespace A003658

/-- `filter[A304800(n), A290098(#)]` -/
def P1842795693833643028.Spec : Prop :=
  ∀ n, P1842795693833643028.a n = A003658 (n + 1)

end A003658

/-! ## A003658.P16508909626356170759

`filter[A004773(n+1), A290098(#)]`
-/

namespace A003658.P16508909626356170759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A003658.P16508909626356170759

namespace A003658

/-- `filter[A004773(n+1), A290098(#)]` -/
def P16508909626356170759.Spec : Prop :=
  ∀ n, P16508909626356170759.a n = A003658 (n + 1)

end A003658

/-! ## A003658.P15296905166790481097

`filter[A286053(n+1), A290098(#)]`
-/

namespace A003658.P15296905166790481097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A003658.P15296905166790481097

namespace A003658

/-- `filter[A286053(n+1), A290098(#)]` -/
def P15296905166790481097.Spec : Prop :=
  ∀ n, P15296905166790481097.a n = A003658 (n + 1)

end A003658

/-! ## A003658.P9903908143842508471

`filter[A047569(n+2), A290098(#)]`
-/

namespace A003658.P9903908143842508471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047569 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A003658.P9903908143842508471

namespace A003658

/-- `filter[A047569(n+2), A290098(#)]` -/
def P9903908143842508471.Spec : Prop :=
  ∀ n, P9903908143842508471.a n = A003658 (n + 1)

end A003658

/-!
# A003659: Shifts left under Stirling2 transform.

The programs for A003659, there is no canonical definition to state claims against.
-/

/-! ## A003659.P7544258051986353593

`A007723(A167614(n+1)+A004273(n))`
-/

namespace A003659.P7544258051986353593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (A167614 (n + 1) + A004273 n).toNat

end

end A003659.P7544258051986353593

/-! ## A003659.P2919255242809090579

`A007723(A046691(n+2)-A057427(n))`
-/

namespace A003659.P2919255242809090579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (A046691 (n + 2) - A057427 n).toNat

end

end A003659.P2919255242809090579

/-! ## A003659.P11512070028302028841

`A007723(A004273(n)+A055998(n)+6)`
-/

namespace A003659.P11512070028302028841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (A004273 n + (A055998 n + 6)).toNat

end

end A003659.P11512070028302028841

/-! ## A003659.P4452552959037067819

`A007723(A004273(n)+A167499(n)+n)`
-/

namespace A003659.P4452552959037067819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (A004273 n + (A167499 n + (n : ℤ))).toNat

end

end A003659.P4452552959037067819

/-! ## A003659.P15969518914545111171

`A007723(A004273(n)+A000217(n+2)+3)`
-/

namespace A003659.P15969518914545111171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (A004273 n + (A000217 (n + 2) + 3)).toNat

end

end A003659.P15969518914545111171

/-!
# A003660: Number of nontrivial disconnected complements of Steinhaus graphs on n nodes.

The programs for A003660, there is no canonical definition to state claims against.
-/

/-! ## A003660.P11020046566411188211

`A014499(A325535(3*n+1)+1)`
-/

namespace A003660.P11020046566411188211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (A325535 (3 * n + 1) + 1).toNat

end

end A003660.P11020046566411188211

/-!
# A003662: a(n) is smallest number != a(j) + a(k), j < k and a(1) = 1, a(2) = 4.

The programs for A003662, the canonical program `A003662.P16681911144183647010` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003662 has offset 1).

The definition of A003662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003662.P16681911144183647010

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=4, a(2)=6, a(3)=8, a(4)=11, a(5)=13, a(6)=16, a(7)=18, a(8)=23`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003662

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P16681911144183647010.Spec : Prop :=
  ∀ n, P16681911144183647010.a n = A003662 (n + 1)

theorem P16681911144183647010.correct : P16681911144183647010.Spec := by
  intro n
  simp only [A003662, Nat.add_sub_cancel]

end A003662

/-! ## A003662.P11397909032366753931

`∑[gcd(n, 2^a(n-2))]+n+1` with `a(0)=0, a(1)=2`
-/

namespace A003662.P11397909032366753931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  Nat.gcd n (2 ^ f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A003662.P11397909032366753931

namespace A003662

/-- `∑[gcd(n, 2^a(n-2))]+n+1` -/
def P11397909032366753931.Spec : Prop :=
  ∀ n, (P11397909032366753931.a n : ℤ) = A003662 (n + 1)

end A003662

/-! ## A003662.P8378965042214393676

`∑[A082207(gcd(n, A337664(a(n-2)))+1)]` with `a(0)=1, a(1)=3`
-/

namespace A003662.P8378965042214393676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  A082207 (Int.gcd (n : ℤ) (A337664 (f1 (n - 2)).toNat) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003662.P8378965042214393676

namespace A003662

/-- `∑[A082207(gcd(n, A337664(a(n-2)))+1)]` -/
def P8378965042214393676.Spec : Prop :=
  ∀ n, P8378965042214393676.a n = A003662 (n + 1)

end A003662

/-! ## A003662.P1202239460684021125

`A060469(A171463(n+1))`
-/

namespace A003662.P1202239460684021125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060469 (A171463 (n + 1)).toNat

end

end A003662.P1202239460684021125

namespace A003662

/-- `A060469(A171463(n+1))` -/
def P1202239460684021125.Spec : Prop :=
  ∀ n, P1202239460684021125.a n = A003662 (n + 1)

end A003662

/-! ## A003662.P2670029467872374435

`A060469(A134451(2*n)+n+1)`
-/

namespace A003662.P2670029467872374435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060469 (A134451 (2 * n) + (n : ℤ) + 1).toNat

end

end A003662.P2670029467872374435

namespace A003662

/-- `A060469(A134451(2*n)+n+1)` -/
def P2670029467872374435.Spec : Prop :=
  ∀ n, P2670029467872374435.a n = A003662 (n + 1)

end A003662

/-! ## A003662.P11540838439574192517

`record[A060469(n+1)%(3-A160664(n))]`
-/

namespace A003662.P11540838439574192517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060469 (n + 1)) (3 - A160664 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003662.P11540838439574192517

namespace A003662

/-- `record[A060469(n+1)%(3-A160664(n))]` -/
def P11540838439574192517.Spec : Prop :=
  ∀ n, P11540838439574192517.a n = A003662 (n + 1)

end A003662

/-! ## A003662.P13578021855438069014

`∩[A060469(n+1), A349707(n+1)]`
-/

namespace A003662.P13578021855438069014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003662.P13578021855438069014

namespace A003662

/-- `∩[A060469(n+1), A349707(n+1)]` -/
def P13578021855438069014.Spec : Prop :=
  ∀ n, (P13578021855438069014.a n : ℤ) = A003662 (n + 1)

end A003662

/-! ## A003662.P322472021788592713

`A060469(n+3)%A003664(A003663(n+1))`
-/

namespace A003662.P322472021788592713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060469 (n + 3)) (A003664 (A003663 (n + 1)).toNat)

end

end A003662.P322472021788592713

namespace A003662

/-- `A060469(n+3)%A003664(A003663(n+1))` -/
def P322472021788592713.Spec : Prop :=
  ∀ n, P322472021788592713.a n = A003662 (n + 1)

end A003662

/-! ## A003662.P7878911253570478076

`A060469(n+3)%∑[A060444(n)]`
-/

namespace A003662.P7878911253570478076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060469 (n + 3)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003662.P7878911253570478076

namespace A003662

/-- `A060469(n+3)%∑[A060444(n)]` -/
def P7878911253570478076.Spec : Prop :=
  ∀ n, P7878911253570478076.a n = A003662 (n + 1)

end A003662

/-!
# A003663: a(n) is smallest number != a(j) + a(k), j < k and a(1) = 1, a(2) = 6.

The programs for A003663, the canonical program `A003663.P9349078246544111142` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003663 has offset 1).

The definition of A003663 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003663.P9349078246544111142

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=8, a(3)=10, a(4)=12, a(5)=15, a(6)=17, a(7)=19, a(8)=24`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003663

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P9349078246544111142.Spec : Prop :=
  ∀ n, P9349078246544111142.a n = A003663 (n + 1)

theorem P9349078246544111142.correct : P9349078246544111142.Spec := by
  intro n
  simp only [A003663, Nat.add_sub_cancel]

end A003663

/-! ## A003663.P12493949901519064874

`A060470(n+5)^A057428(n)²`
-/

namespace A003663.P12493949901519064874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060470 (n + 5) : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A003663.P12493949901519064874

namespace A003663

/-- `A060470(n+5)^A057428(n)²` -/
def P12493949901519064874.Spec : Prop :=
  ∀ n, P12493949901519064874.a n = (A003663 (n + 1) : ℚ)

end A003663

/-! ## A003663.P6436035296605697166

`record[A060470(n+4)%A163778(n+1)]`
-/

namespace A003663.P6436035296605697166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060470 (n + 4)) (A163778 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003663.P6436035296605697166

namespace A003663

/-- `record[A060470(n+4)%A163778(n+1)]` -/
def P6436035296605697166.Spec : Prop :=
  ∀ n, P6436035296605697166.a n = A003663 (n + 1)

end A003663

/-! ## A003663.P7196399359898179286

`record[A060470(n+1)+A045991(C(2, n))]`
-/

namespace A003663.P7196399359898179286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060470 (n + 1) + A045991 (Nat.choose 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003663.P7196399359898179286

namespace A003663

/-- `record[A060470(n+1)+A045991(C(2, n))]` -/
def P7196399359898179286.Spec : Prop :=
  ∀ n, P7196399359898179286.a n = A003663 (n + 1)

end A003663

/-! ## A003663.P16762247241736566183

`A060470(n+5)%A014574(A014076(n+1))`
-/

namespace A003663.P16762247241736566183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060470 (n + 5)) (A014574 (A014076 (n + 1)).toNat)

end

end A003663.P16762247241736566183

namespace A003663

/-- `A060470(n+5)%A014574(A014076(n+1))` -/
def P16762247241736566183.Spec : Prop :=
  ∀ n, P16762247241736566183.a n = A003663 (n + 1)

end A003663

/-! ## A003663.P17857851470348993769

`A060470(n+5)%A000040(A016777(n))`
-/

namespace A003663.P17857851470348993769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060470 (n + 5)) (A000040 (A016777 n).toNat)

end

end A003663.P17857851470348993769

namespace A003663

/-- `A060470(n+5)%A000040(A016777(n))` -/
def P17857851470348993769.Spec : Prop :=
  ∀ n, P17857851470348993769.a n = A003663 (n + 1)

end A003663

/-! ## A003663.P10751642945519341484

`A060470(n+5)^(Δ[A049623(n+1)]%2)`
-/

namespace A003663.P10751642945519341484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049623 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060470 (n + 5) : ℚ) ^ (Int.tmod (f1 (n + 1) - f1 n) 2 : ℤ)

end

end A003663.P10751642945519341484

namespace A003663

/-- `A060470(n+5)^(Δ[A049623(n+1)]%2)` -/
def P10751642945519341484.Spec : Prop :=
  ∀ n, P10751642945519341484.a n = (A003663 (n + 1) : ℚ)

end A003663

/-!
# A003664: a(n) is smallest number larger than a(n-1) and not = a(j) + a(k), j < k.

The programs for A003664, there is no canonical definition to state claims against.
-/

/-! ## A003664.P9113629151795558711

`lt[A106351(A103451(2*n+1)+A045943(n)), 1]`
-/

namespace A003664.P9113629151795558711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (A103451 (2 * n + 1) + A045943 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A003664.P9113629151795558711

/-! ## A003664.P8496266951666664024

`eq[A171850(A131327(n)), A188071(n+1)]`
-/

namespace A003664.P8496266951666664024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171850 (A131327 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188071 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003664.P8496266951666664024

/-! ## A003664.P11039809460104600325

`eq[A008619(A119467(n)²), A188071(n+1)]`
-/

namespace A003664.P11039809460104600325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A119467 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188071 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003664.P11039809460104600325

/-! ## A003664.P9513493490849541152

`lt[A078802(A045943(n)), A352517(2*n)]`
-/

namespace A003664.P9513493490849541152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078802 (A045943 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352517 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003664.P9513493490849541152

/-! ## A003664.P7836858161376865976

`lt[sqrt(A028859(n)), A074193(n+2)]`
-/

namespace A003664.P7836858161376865976
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A028859 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074193 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A003664.P7836858161376865976

/-!
# A003665: a(n) = 2^(n-1)*( 2^n + (-1)^n ).

The programs for A003665, the canonical program `A003665.P2110433556491732309` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003665 has offset 0).

The definition of A003665 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003665.P1190558539609335708

`2^(n-1)*(2^n+(-1)^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A003665.P1190558539609335708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((2 ^ n : ℤ) + (-1) ^ n : ℚ)

end

end A003665.P1190558539609335708

namespace A003665

/-- `2^(n-1)*(2^n+(-1)^n)` -/
def P1190558539609335708.Spec : Prop :=
  ∀ n, P1190558539609335708.a n = (A003665 n : ℚ)

end A003665

/-! ## A003665.P2110433556491732309

`2*a(n-1)+8*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003665

/-- `2*a(n-1)+8*a(n-2)` -/
def P2110433556491732309.Spec : Prop :=
  ∀ n, (P2110433556491732309.a n : ℤ) = A003665 n

theorem P2110433556491732309.correct : P2110433556491732309.Spec := by
  intro n
  simp only [A003665]

end A003665

/-! ## A003665.P14885561127568100907

`ogf((-1+x)/(-1+2x+8x^2))`
-/

namespace A003665.P14885561127568100907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, -8] n

end

end A003665.P14885561127568100907

namespace A003665

/-- `ogf((-1+x)/(-1+2x+8x^2))` -/
def P14885561127568100907.Spec : Prop :=
  ∀ n, P14885561127568100907.a n = A003665 n

end A003665

/-! ## A003665.P12642558303026128265

`Δ[4^(n-1)-2*a(n-1)]` with `a(0)=0`
-/

namespace A003665.P12642558303026128265
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 2 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003665.P12642558303026128265

namespace A003665

/-- `Δ[4^(n-1)-2*a(n-1)]` -/
def P12642558303026128265.Spec : Prop :=
  ∀ n, P12642558303026128265.a n = (A003665 n : ℚ)

end A003665

/-! ## A003665.P6938157638642206745

`4^n-(a(n-1)+a(n-1)+4^(n-1))` with `a(0)=1`
-/

namespace A003665.P6938157638642206745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 ^ n : ℚ) - (a (n - 1) + (a (n - 1) + (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A003665.P6938157638642206745

namespace A003665

/-- `4^n-(a(n-1)+a(n-1)+4^(n-1))` -/
def P6938157638642206745.Spec : Prop :=
  ∀ n, P6938157638642206745.a n = (A003665 n : ℚ)

end A003665

/-! ## A003665.P1238600099263574175

`Δ[A003683(n)]`
-/

namespace A003665.P1238600099263574175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003665.P1238600099263574175

namespace A003665

/-- `Δ[A003683(n)]` -/
def P1238600099263574175.Spec : Prop :=
  ∀ n, P1238600099263574175.a n = A003665 n

end A003665

/-! ## A003665.P16617464191590300915

`Δ[Δ[A084152(n)]]`
-/

namespace A003665.P16617464191590300915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084152 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003665.P16617464191590300915

namespace A003665

/-- `Δ[Δ[A084152(n)]]` -/
def P16617464191590300915.Spec : Prop :=
  ∀ n, P16617464191590300915.a n = A003665 n

end A003665

/-! ## A003665.P12876159985240785464

`Δ[2^(n-1)*A001045(n)]`
-/

namespace A003665.P12876159985240785464
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A001045 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003665.P12876159985240785464

namespace A003665

/-- `Δ[2^(n-1)*A001045(n)]` -/
def P12876159985240785464.Spec : Prop :=
  ∀ n, P12876159985240785464.a n = (A003665 n : ℚ)

end A003665

/-! ## A003665.P10884270252918449603

`Δ[round(2^n/3)*A011782(n)]`
-/

namespace A003665.P10884270252918449603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003665.P10884270252918449603

namespace A003665

/-- `Δ[round(2^n/3)*A011782(n)]` -/
def P10884270252918449603.Spec : Prop :=
  ∀ n, P10884270252918449603.a n = A003665 n

end A003665

/-! ## A003665.P11763710310669814175

`A002001(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A003665.P11763710310669814175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002001 n - (a (n - 1) + a (n - 1))

end

end A003665.P11763710310669814175

namespace A003665

/-- `A002001(n)-(a(n-1)+a(n-1))` -/
def P11763710310669814175.Spec : Prop :=
  ∀ n, P11763710310669814175.a n = A003665 n

end A003665

/-! ## A003665.P9007667527183614842

`A137173(A042963(n+1))`
-/

namespace A003665.P9007667527183614842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137173 (A042963 (n + 1)).toNat

end

end A003665.P9007667527183614842

namespace A003665

/-- `A137173(A042963(n+1))` -/
def P9007667527183614842.Spec : Prop :=
  ∀ n, P9007667527183614842.a n = A003665 n

end A003665

/-! ## A003665.P66810401728636242

`A122803(n)+A003674(n)`
-/

namespace A003665.P66810401728636242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n + A003674 n

end

end A003665.P66810401728636242

namespace A003665

/-- `A122803(n)+A003674(n)` -/
def P66810401728636242.Spec : Prop :=
  ∀ n, P66810401728636242.a n = A003665 n

end A003665

/-! ## A003665.P11082813763098529903

`A199572(n)+A006516(n)`
-/

namespace A003665.P11082813763098529903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199572 n + A006516 n

end

end A003665.P11082813763098529903

namespace A003665

/-- `A199572(n)+A006516(n)` -/
def P11082813763098529903.Spec : Prop :=
  ∀ n, P11082813763098529903.a n = A003665 n

end A003665

/-! ## A003665.P862774280512677979

`A000302(n)-A003674(n)`
-/

namespace A003665.P862774280512677979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - A003674 n

end

end A003665.P862774280512677979

namespace A003665

/-- `A000302(n)-A003674(n)` -/
def P862774280512677979.Spec : Prop :=
  ∀ n, P862774280512677979.a n = A003665 n

end A003665

/-! ## A003665.P1425179954213643973

`A257273(n)-A056450(n)`
-/

namespace A003665.P1425179954213643973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257273 n - A056450 n

end

end A003665.P1425179954213643973

namespace A003665

/-- `A257273(n)-A056450(n)` -/
def P1425179954213643973.Spec : Prop :=
  ∀ n, P1425179954213643973.a n = A003665 n

end A003665

/-! ## A003665.P12735883359651178833

`A006516(n)+A077957(n)²`
-/

namespace A003665.P12735883359651178833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n + A077957 n ^ 2

end

end A003665.P12735883359651178833

namespace A003665

/-- `A006516(n)+A077957(n)²` -/
def P12735883359651178833.Spec : Prop :=
  ∀ n, P12735883359651178833.a n = A003665 n

end A003665

/-! ## A003665.P2464838238783462555

`A000079(n)²-A003674(n)`
-/

namespace A003665.P2464838238783462555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 - A003674 n

end

end A003665.P2464838238783462555

namespace A003665

/-- `A000079(n)²-A003674(n)` -/
def P2464838238783462555.Spec : Prop :=
  ∀ n, P2464838238783462555.a n = A003665 n

end A003665

/-! ## A003665.P9959709656988626842

`A139818(n+1)+A084152(n)`
-/

namespace A003665.P9959709656988626842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139818 (n + 1) + A084152 n

end

end A003665.P9959709656988626842

namespace A003665

/-- `A139818(n+1)+A084152(n)` -/
def P9959709656988626842.Spec : Prop :=
  ∀ n, P9959709656988626842.a n = A003665 n

end A003665

/-! ## A003665.P1007322136967836110

`A003683(n+1)-A003683(n)`
-/

namespace A003665.P1007322136967836110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003683 (n + 1) - A003683 n

end

end A003665.P1007322136967836110

namespace A003665

/-- `A003683(n+1)-A003683(n)` -/
def P1007322136967836110.Spec : Prop :=
  ∀ n, P1007322136967836110.a n = A003665 n

end A003665

/-! ## A003665.P13327665997295729837

`A083424(n)-A192382(n+1)`
-/

namespace A003665.P13327665997295729837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083424 n - A192382 (n + 1)

end

end A003665.P13327665997295729837

namespace A003665

/-- `A083424(n)-A192382(n+1)` -/
def P13327665997295729837.Spec : Prop :=
  ∀ n, P13327665997295729837.a n = A003665 n

end A003665

/-!
# A003668: a(n) is smallest number which is uniquely a(j)+a(k), j

The programs for A003668, there is no canonical definition to state claims against.
-/

/-! ## A003668.P9533895001972727713

`A135737(A167614(n+1))`
-/

namespace A003668.P9533895001972727713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135737 (A167614 (n + 1)).toNat

end

end A003668.P9533895001972727713

/-! ## A003668.P229227121995065818

`A135737(A000217(n+2)+3)`
-/

namespace A003668.P229227121995065818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135737 (A000217 (n + 2) + 3).toNat

end

end A003668.P229227121995065818

/-! ## A003668.P9957065970276008597

`or(A285532(n+1), A285565(A285546(n)))`
-/

namespace A003668.P9957065970276008597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285532 (n + 1)) (A285565 (A285546 n).toNat)

end

end A003668.P9957065970276008597

/-! ## A003668.P4793288278421356574

`or(A285515(A285484(2*(n+1))), A285532(n+1))`
-/

namespace A003668.P4793288278421356574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285515 (A285484 (2 * (n + 1))).toNat) (A285532 (n + 1))

end

end A003668.P4793288278421356574

/-!
# A003670: a(n) is smallest number which is uniquely a(j)+a(k).

The programs for A003670, there is no canonical definition to state claims against.
-/

/-! ## A003670.P10567228964809577132

`eq[A038567(n), A038567(A135435(n))]`
-/

namespace A003670.P10567228964809577132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A135435 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003670.P10567228964809577132

/-! ## A003670.P9154635034978061448

`eq[A100196(n), A100196(A135435(n))]`
-/

namespace A003670.P9154635034978061448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A135435 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003670.P9154635034978061448

/-! ## A003670.P16556216374392091543

`eq[A284359(A135435(n)), A284359(n)]`
-/

namespace A003670.P16556216374392091543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 (A135435 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003670.P16556216374392091543

/-! ## A003670.P10128067404401280087

`lt[A331590(A002522(3*n+2)), A008000(n)]`
-/

namespace A003670.P10128067404401280087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331590 (A002522 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003670.P10128067404401280087

/-! ## A003670.P1937794205643750735

`eq[n, A135435(n)]`
-/

namespace A003670.P1937794205643750735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135435 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003670.P1937794205643750735

/-!
# A003674: a(n) = 2^(n-1)*(2^n - (-1)^n).

The programs for A003674, the canonical program `A003674.P13562937148914839628` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003674 has offset 0).

The definition of A003674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003674.P15441522667095015991

`(4^n-(-2)^n)/2`
-/

namespace A003674.P15441522667095015991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) - (-2) ^ n : ℚ) / 2

end

end A003674.P15441522667095015991

namespace A003674

/-- `(4^n-(-2)^n)/2` -/
def P15441522667095015991.Spec : Prop :=
  ∀ n, P15441522667095015991.a n = (A003674 n : ℚ)

theorem P15441522667095015991.correct : P15441522667095015991.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A003674, Nat.add_sub_cancel, A003674.P15441522667095015991.a, A003674.P13562937148914839628.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A003674, Nat.add_sub_cancel, A003674.P15441522667095015991.a, A003674.P13562937148914839628.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A003674

/-! ## A003674.P12229784088619185273

`2^(n-1)*(2^n-(-1)^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A003674.P12229784088619185273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((2 ^ n : ℤ) - (-1) ^ n : ℚ)

end

end A003674.P12229784088619185273

namespace A003674

/-- `2^(n-1)*(2^n-(-1)^n)` -/
def P12229784088619185273.Spec : Prop :=
  ∀ n, P12229784088619185273.a n = (A003674 n : ℚ)

end A003674

/-! ## A003674.P13562937148914839628

`2*a(n-1)+8*a(n-2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003674

/-- `2*a(n-1)+8*a(n-2)` -/
def P13562937148914839628.Spec : Prop :=
  ∀ n, (P13562937148914839628.a n : ℤ) = A003674 n

theorem P13562937148914839628.correct : P13562937148914839628.Spec := by
  intro n
  simp only [A003674]

end A003674

/-! ## A003674.P12961939639423797463

`ogf(3x/(1-2x-8x^2))`
-/

namespace A003674.P12961939639423797463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -2, -8] n

end

end A003674.P12961939639423797463

namespace A003674

/-- `ogf(3x/(1-2x-8x^2))` -/
def P12961939639423797463.Spec : Prop :=
  ∀ n, P12961939639423797463.a n = A003674 n

end A003674

/-! ## A003674.P1058219234961513855

`lcm(abs(1-(-2)^n), floor(2^(n-1)))`
-/

namespace A003674.P1058219234961513855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm |1 - (-2) ^ n| ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A003674.P1058219234961513855

namespace A003674

/-- `lcm(abs(1-(-2)^n), floor(2^(n-1)))` -/
def P1058219234961513855.Spec : Prop :=
  ∀ n, (P1058219234961513855.a n : ℤ) = A003674 n

end A003674

/-! ## A003674.P6909963835902104779

`Δ[A136401(2*n)]`
-/

namespace A003674.P6909963835902104779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136401 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003674.P6909963835902104779

namespace A003674

/-- `Δ[A136401(2*n)]` -/
def P6909963835902104779.Spec : Prop :=
  ∀ n, P6909963835902104779.a n = A003674 n

end A003674

/-! ## A003674.P11954483708578208224

`Δ[3*A084152(n)]`
-/

namespace A003674.P11954483708578208224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A084152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003674.P11954483708578208224

namespace A003674

/-- `Δ[3*A084152(n)]` -/
def P11954483708578208224.Spec : Prop :=
  ∀ n, P11954483708578208224.a n = A003674 n

end A003674

/-! ## A003674.P5881170769856779207

`A137173(A014601(n))`
-/

namespace A003674.P5881170769856779207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137173 (A014601 n).toNat

end

end A003674.P5881170769856779207

namespace A003674

/-- `A137173(A014601(n))` -/
def P5881170769856779207.Spec : Prop :=
  ∀ n, P5881170769856779207.a n = A003674 n

end A003674

/-! ## A003674.P6393533706369002697

`A378676(n)+A084152(n)`
-/

namespace A003674.P6393533706369002697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378676 n + A084152 n

end

end A003674.P6393533706369002697

namespace A003674

/-- `A378676(n)+A084152(n)` -/
def P6393533706369002697.Spec : Prop :=
  ∀ n, P6393533706369002697.a n = A003674 n

end A003674

/-! ## A003674.P5261788506293607060

`A000302(n)-A003665(n)`
-/

namespace A003674.P5261788506293607060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - A003665 n

end

end A003674.P5261788506293607060

namespace A003674

/-- `A000302(n)-A003665(n)` -/
def P5261788506293607060.Spec : Prop :=
  ∀ n, P5261788506293607060.a n = A003674 n

end A003674

/-! ## A003674.P9911730128886089823

`A003665(n)-A122803(n)`
-/

namespace A003674.P9911730128886089823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003665 n - A122803 n

end

end A003674.P9911730128886089823

namespace A003674

/-- `A003665(n)-A122803(n)` -/
def P9911730128886089823.Spec : Prop :=
  ∀ n, P9911730128886089823.a n = A003674 n

end A003674

/-! ## A003674.P12114444713398495024

`A007582(n)-A199572(n)`
-/

namespace A003674.P12114444713398495024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n - A199572 n

end

end A003674.P12114444713398495024

namespace A003674

/-- `A007582(n)-A199572(n)` -/
def P12114444713398495024.Spec : Prop :=
  ∀ n, P12114444713398495024.a n = A003674 n

end A003674

/-! ## A003674.P17591791501077865569

`A032121(n)-A213173(n)`
-/

namespace A003674.P17591791501077865569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032121 n - A213173 n

end

end A003674.P17591791501077865569

namespace A003674

/-- `A032121(n)-A213173(n)` -/
def P17591791501077865569.Spec : Prop :=
  ∀ n, P17591791501077865569.a n = A003674 n

end A003674

/-! ## A003674.P6607951071485711755

`A192382(n+1)+A003683(n)`
-/

namespace A003674.P6607951071485711755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192382 (n + 1) + A003683 n

end

end A003674.P6607951071485711755

namespace A003674

/-- `A192382(n+1)+A003683(n)` -/
def P6607951071485711755.Spec : Prop :=
  ∀ n, P6607951071485711755.a n = A003674 n

end A003674

/-! ## A003674.P4693583461483722782

`A054881(n+1)-A003683(n)`
-/

namespace A003674.P4693583461483722782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054881 (n + 1) - A003683 n

end

end A003674.P4693583461483722782

namespace A003674

/-- `A054881(n+1)-A003683(n)` -/
def P4693583461483722782.Spec : Prop :=
  ∀ n, P4693583461483722782.a n = A003674 n

end A003674

/-! ## A003674.P310022294879038358

`A123344(n)-A123344(2*n)`
-/

namespace A003674.P310022294879038358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 n - A123344 (2 * n)

end

end A003674.P310022294879038358

namespace A003674

/-- `A123344(n)-A123344(2*n)` -/
def P310022294879038358.Spec : Prop :=
  ∀ n, P310022294879038358.a n = A003674 n

end A003674

/-! ## A003674.P1063504819108472251

`A011782(2*n+1)-A003665(n)`
-/

namespace A003674.P1063504819108472251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n + 1) - A003665 n

end

end A003674.P1063504819108472251

namespace A003674

/-- `A011782(2*n+1)-A003665(n)` -/
def P1063504819108472251.Spec : Prop :=
  ∀ n, P1063504819108472251.a n = A003674 n

end A003674

/-! ## A003674.P5663065483126065022

`A011782(2*n)-A117575(2*n)`
-/

namespace A003674.P5663065483126065022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n) - A117575 (2 * n)

end

end A003674.P5663065483126065022

namespace A003674

/-- `A011782(2*n)-A117575(2*n)` -/
def P5663065483126065022.Spec : Prop :=
  ∀ n, P5663065483126065022.a n = A003674 n

end A003674

/-! ## A003674.P9416168318329494059

`A003683(n)+A139818(n)+A084175(n)`
-/

namespace A003674.P9416168318329494059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003683 n + (A139818 n + A084175 n)

end

end A003674.P9416168318329494059

namespace A003674

/-- `A003683(n)+A139818(n)+A084175(n)` -/
def P9416168318329494059.Spec : Prop :=
  ∀ n, P9416168318329494059.a n = A003674 n

end A003674

/-! ## A003674.P13985854170895434019

`A003683(n)+A000079(n)*A001045(n)`
-/

namespace A003674.P13985854170895434019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003683 n + A000079 n * A001045 n

end

end A003674.P13985854170895434019

namespace A003674

/-- `A003683(n)+A000079(n)*A001045(n)` -/
def P13985854170895434019.Spec : Prop :=
  ∀ n, P13985854170895434019.a n = A003674 n

end A003674

/-!
# A003679: Numbers that are not the sum of 3 pentagonal numbers.

The programs for A003679, there is no canonical definition to state claims against.
-/

/-! ## A003679.P5518405431290875422

`lt[3, A100878(n)]`
-/

namespace A003679.P5518405431290875422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003679.P5518405431290875422

/-!
# A003680: Smallest number with 2n divisors.

The programs for A003680, there is no canonical definition to state claims against.
-/

/-! ## A003680.P10466186960597589612

`A005179(n+1)*A140605(n+1)`
-/

namespace A003680.P10466186960597589612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (n + 1) * A140605 (n + 1)

end

end A003680.P10466186960597589612

/-! ## A003680.P9625050555528784863

`A077569(A096276(n)+1)*A140605(n+1)`
-/

namespace A003680.P9625050555528784863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077569 (A096276 n + 1).toNat * A140605 (n + 1)

end

end A003680.P9625050555528784863

/-! ## A003680.P17447995301889325569

`A081532(∑[n+1])*A140605(n+1)`
-/

namespace A003680.P17447995301889325569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (∑ j ∈ Finset.range (n + 1), f1 j) * A140605 (n + 1)

end

end A003680.P17447995301889325569

/-! ## A003680.P6044364597271938493

`A005179(2*(n+1))`
-/

namespace A003680.P6044364597271938493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (2 * (n + 1))

end

end A003680.P6044364597271938493

/-! ## A003680.P6193566270111574362

`A077569(A096276(2*n+1)+1)`
-/

namespace A003680.P6193566270111574362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077569 (A096276 (2 * n + 1) + 1).toNat

end

end A003680.P6193566270111574362

/-! ## A003680.P17353605552987425487

`A081532(∑[record[xor(3, n)]])`
-/

namespace A003680.P17353605552987425487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003680.P17353605552987425487

/-! ## A003680.P2080733778909765903

`A081532(∑[4*n+3])`
-/

namespace A003680.P2080733778909765903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003680.P2080733778909765903

/-! ## A003680.P5006245925564220596

`A007416(A064787(2*(n+1)))`
-/

namespace A003680.P5006245925564220596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (A064787 (2 * (n + 1))).toNat

end

end A003680.P5006245925564220596

/-! ## A003680.P8843499002678286278

`sqrt(A130279(2*(n+1)))`
-/

namespace A003680.P8843499002678286278
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A130279 (2 * (n + 1)) : ℝ)

end

end A003680.P8843499002678286278

/-!
# A003681: a(n) = min { p +- q : p +- q > 1 and p*q = Product_{k=1..n-1} a(k) }.

The programs for A003681, there is no canonical definition to state claims against.
-/

/-! ## A003681.P12342083777022188480

`p?[∑[A000680(A247889(n))]]`
-/

namespace A003681.P12342083777022188480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000680 (A247889 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003681.P12342083777022188480

/-! ## A003681.P12159233885218423575

`p?[∑[A181611(A090802(n))]]`
-/

namespace A003681.P12159233885218423575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181611 (A090802 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003681.P12159233885218423575

/-! ## A003681.P3138104170695455304

`p?[∑[A292627(A058669(n))]]`
-/

namespace A003681.P3138104170695455304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (A058669 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003681.P3138104170695455304

/-! ## A003681.P8277610747998886159

`p?[∑[A327427(A026552(n))]]`
-/

namespace A003681.P8277610747998886159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327427 (A026552 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003681.P8277610747998886159

/-! ## A003681.P10699232174610696416

`p?[∑[A108898(A287641(n))]]`
-/

namespace A003681.P10699232174610696416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108898 (A287641 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003681.P10699232174610696416

/-!
# A003682: Number of (undirected) Hamiltonian paths in the n-ladder graph K_2 X P_n.

The programs for A003682, the canonical program `A003682.P8992013216299356380` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003682 has offset 1).

The definition of A003682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003682.P8992013216299356380

`2*n+a(n-1)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003682

/-- `2*n+a(n-1)` -/
def P8992013216299356380.Spec : Prop :=
  ∀ n, (P8992013216299356380.a n : ℤ) = A003682 (n + 1)

theorem P8992013216299356380.correct : P8992013216299356380.Spec := by
  intro n
  simp only [A003682, Nat.add_sub_cancel]

end A003682

/-! ## A003682.P4846054571402101068

`floor(((n+1)^3+2*(n+1))/(n+2))`
-/

namespace A003682.P4846054571402101068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 3 + 2 * (n + 1) : ℚ) / (n + 2 : ℚ)⌋

end

end A003682.P4846054571402101068

namespace A003682

/-- `floor(((n+1)^3+2*(n+1))/(n+2))` -/
def P4846054571402101068.Spec : Prop :=
  ∀ n, P4846054571402101068.a n = A003682 (n + 1)

end A003682

/-! ## A003682.P2355456607037916594

`A137882(n+1)/2`
-/

namespace A003682.P2355456607037916594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137882 (n + 1) : ℚ) / 2

end

end A003682.P2355456607037916594

namespace A003682

/-- `A137882(n+1)/2` -/
def P2355456607037916594.Spec : Prop :=
  ∀ n, P2355456607037916594.a n = (A003682 (n + 1) : ℚ)

end A003682

/-! ## A003682.P6797087541776743103

`∑[round(2/acot(n))]`
-/

namespace A003682.P6797087541776743103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003682.P6797087541776743103

namespace A003682

/-- `∑[round(2/acot(n))]` -/
def P6797087541776743103.Spec : Prop :=
  ∀ n, P6797087541776743103.a n = A003682 (n + 1)

end A003682

/-! ## A003682.P6810984417115902271

`∑[or(2*n, C(3, n²))]`
-/

namespace A003682.P6810984417115902271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (Nat.choose 3 (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003682.P6810984417115902271

namespace A003682

/-- `∑[or(2*n, C(3, n²))]` -/
def P6810984417115902271.Spec : Prop :=
  ∀ n, (P6810984417115902271.a n : ℤ) = A003682 (n + 1)

end A003682

/-! ## A003682.P4904225537724543548

`ceil(n/acot(n+1))+1`
-/

namespace A003682.P4904225537724543548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ)⌉ + 1

end

end A003682.P4904225537724543548

namespace A003682

/-- `ceil(n/acot(n+1))+1` -/
def P4904225537724543548.Spec : Prop :=
  ∀ n, P4904225537724543548.a n = A003682 (n + 1)

end A003682

/-! ## A003682.P9713539955520534597

`∑[or(2*n, char[n^14])]`
-/

namespace A003682.P9713539955520534597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 14

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003682.P9713539955520534597

namespace A003682

/-- `∑[or(2*n, char[n^14])]` -/
def P9713539955520534597.Spec : Prop :=
  ∀ n, (P9713539955520534597.a n : ℤ) = A003682 (n + 1)

end A003682

/-! ## A003682.P6306038361729561116

`∑[xor(2*n, char[n^14])]`
-/

namespace A003682.P6306038361729561116
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 14

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003682.P6306038361729561116

namespace A003682

/-- `∑[xor(2*n, char[n^14])]` -/
def P6306038361729561116.Spec : Prop :=
  ∀ n, (P6306038361729561116.a n : ℤ) = A003682 (n + 1)

end A003682

/-! ## A003682.P794858615593909251

`∑[C(n, n²)+2*n]`
-/

namespace A003682.P794858615593909251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n ^ 2) + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003682.P794858615593909251

namespace A003682

/-- `∑[C(n, n²)+2*n]` -/
def P794858615593909251.Spec : Prop :=
  ∀ n, (P794858615593909251.a n : ℤ) = A003682 (n + 1)

end A003682

/-! ## A003682.P9722999840389266314

`∑[C(n, n²)+n+n]`
-/

namespace A003682.P9722999840389266314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n ^ 2) + n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003682.P9722999840389266314

namespace A003682

/-- `∑[C(n, n²)+n+n]` -/
def P9722999840389266314.Spec : Prop :=
  ∀ n, (P9722999840389266314.a n : ℤ) = A003682 (n + 1)

end A003682

/-! ## A003682.P5334632800897126596

`∑[a(n-1)+2]` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A003682.P5334632800897126596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003682.P5334632800897126596

namespace A003682

/-- `∑[a(n-1)+2]` -/
def P5334632800897126596.Spec : Prop :=
  ∀ n, (P5334632800897126596.a n : ℤ) = A003682 (n + 1)

end A003682

/-! ## A003682.P16673734421146492168

`a(n-1)+n+n` with `a(0)=1, a(1)=4`
-/

namespace A003682.P16673734421146492168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + (n + n)

end

end A003682.P16673734421146492168

namespace A003682

/-- `a(n-1)+n+n` -/
def P16673734421146492168.Spec : Prop :=
  ∀ n, (P16673734421146492168.a n : ℤ) = A003682 (n + 1)

end A003682

/-! ## A003682.P6408561036650657442

`round((1/acot(n))²+n+1)`
-/

namespace A003682.P6408561036650657442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 / SequenceMachineLib.acot (n : ℝ)) ^ 2 + (n + 1 : ℝ))

end

end A003682.P6408561036650657442

namespace A003682

/-- `round((1/acot(n))²+n+1)` -/
def P6408561036650657442.Spec : Prop :=
  ∀ n, P6408561036650657442.a n = A003682 (n + 1)

end A003682

/-! ## A003682.P11592399958035321018

`(∑[n]+1)*ceil(atan(n+1))`
-/

namespace A003682.P11592399958035321018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉

end

end A003682.P11592399958035321018

namespace A003682

/-- `(∑[n]+1)*ceil(atan(n+1))` -/
def P11592399958035321018.Spec : Prop :=
  ∀ n, P11592399958035321018.a n = A003682 (n + 1)

end A003682

/-! ## A003682.P14372801521682224492

`∑[2*n+1-floor(atan(n))]`
-/

namespace A003682.P14372801521682224492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ⌊Real.arctan (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003682.P14372801521682224492

namespace A003682

/-- `∑[2*n+1-floor(atan(n))]` -/
def P14372801521682224492.Spec : Prop :=
  ∀ n, P14372801521682224492.a n = A003682 (n + 1)

end A003682

/-! ## A003682.P17532019512998742969

`ceil(atan(n+1)+n)+n²`
-/

namespace A003682.P17532019512998742969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ) + (n : ℝ)⌉ + (n ^ 2 : ℤ)

end

end A003682.P17532019512998742969

namespace A003682

/-- `ceil(atan(n+1)+n)+n²` -/
def P17532019512998742969.Spec : Prop :=
  ∀ n, P17532019512998742969.a n = A003682 (n + 1)

end A003682

/-! ## A003682.P2250322483999197737

`ceil((acot(n+1)+n)²)+n`
-/

namespace A003682.P2250322483999197737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.acot (n + 1 : ℝ) + (n : ℝ)) ^ 2⌉ + (n : ℤ)

end

end A003682.P2250322483999197737

namespace A003682

/-- `ceil((acot(n+1)+n)²)+n` -/
def P2250322483999197737.Spec : Prop :=
  ∀ n, P2250322483999197737.a n = A003682 (n + 1)

end A003682

/-! ## A003682.P9897381290309221215

`∑[ceil(n+1+n-atan(n))]`
-/

namespace A003682.P9897381290309221215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 + n : ℝ) - Real.arctan (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003682.P9897381290309221215

namespace A003682

/-- `∑[ceil(n+1+n-atan(n))]` -/
def P9897381290309221215.Spec : Prop :=
  ∀ n, P9897381290309221215.a n = A003682 (n + 1)

end A003682

/-! ## A003682.P6888759251205525246

`∑[ogf((1+x-x^2+x^3)/(1-2x+x^2))]`
-/

namespace A003682.P6888759251205525246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003682.P6888759251205525246

namespace A003682

/-- `∑[ogf((1+x-x^2+x^3)/(1-2x+x^2))]` -/
def P6888759251205525246.Spec : Prop :=
  ∀ n, P6888759251205525246.a n = A003682 (n + 1)

end A003682

/-! ## A003682.P10290570810531557048

`ogf((1+x-x^2+x^3)/(1-3x+3x^2-x^3))`
-/

namespace A003682.P10290570810531557048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, 1] [1, -3, 3, -1] n

end

end A003682.P10290570810531557048

namespace A003682

/-- `ogf((1+x-x^2+x^3)/(1-3x+3x^2-x^3))` -/
def P10290570810531557048.Spec : Prop :=
  ∀ n, P10290570810531557048.a n = A003682 (n + 1)

end A003682

/-!
# A003683: a(n) = 2^(n-1)*(2^n - (-1)^n)/3.

The programs for A003683, the canonical program `A003683.P2129763581421799269` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003683 has offset 0).

The definition of A003683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003683.P2129763581421799269

`2*a(n-1)+8*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003683

/-- `2*a(n-1)+8*a(n-2)` -/
def P2129763581421799269.Spec : Prop :=
  ∀ n, (P2129763581421799269.a n : ℤ) = A003683 n

theorem P2129763581421799269.correct : P2129763581421799269.Spec := by
  intro n
  simp only [A003683]

end A003683

/-! ## A003683.P10980726709035269585

`2^(n-1)*A001045(n)`
-/

namespace A003683.P10980726709035269585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A001045 n : ℚ)

end

end A003683.P10980726709035269585

namespace A003683

/-- `2^(n-1)*A001045(n)` -/
def P10980726709035269585.Spec : Prop :=
  ∀ n, P10980726709035269585.a n = (A003683 n : ℚ)

end A003683

/-! ## A003683.P3693582457645004623

`2^(n-1)*(2^n-(-1)^n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A003683.P3693582457645004623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((2 ^ n : ℤ) - (-1) ^ n : ℚ) / 3

end

end A003683.P3693582457645004623

namespace A003683

/-- `2^(n-1)*(2^n-(-1)^n)/3` -/
def P3693582457645004623.Spec : Prop :=
  ∀ n, P3693582457645004623.a n = (A003683 n : ℚ)

end A003683

/-! ## A003683.P13318803892705563050

`ogf(x/(1-2x-8x^2))`
-/

namespace A003683.P13318803892705563050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -8] n

end

end A003683.P13318803892705563050

namespace A003683

/-- `ogf(x/(1-2x-8x^2))` -/
def P13318803892705563050.Spec : Prop :=
  ∀ n, P13318803892705563050.a n = A003683 n

end A003683

/-! ## A003683.P11573417374184794273

`4^(n-1)-2*a(n-1)` with `a(0)=0`
-/

namespace A003683.P11573417374184794273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 2 * a (n - 1)

end

end A003683.P11573417374184794273

namespace A003683

/-- `4^(n-1)-2*a(n-1)` -/
def P11573417374184794273.Spec : Prop :=
  ∀ n, P11573417374184794273.a n = (A003683 n : ℚ)

end A003683

/-! ## A003683.P10310610751134568156

`4^(n-1)-a(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A003683.P10310610751134568156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1) - a (n - 1)

end

end A003683.P10310610751134568156

namespace A003683

/-- `4^(n-1)-a(n-1)-a(n-1)` -/
def P10310610751134568156.Spec : Prop :=
  ∀ n, P10310610751134568156.a n = (A003683 n : ℚ)

end A003683

/-! ## A003683.P9531996089632468092

`Δ[A084152(n)]`
-/

namespace A003683.P9531996089632468092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003683.P9531996089632468092

namespace A003683

/-- `Δ[A084152(n)]` -/
def P9531996089632468092.Spec : Prop :=
  ∀ n, P9531996089632468092.a n = A003683 n

end A003683

/-! ## A003683.P16346834748620476989

`A139818(n)+A084152(n)`
-/

namespace A003683.P16346834748620476989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139818 n + A084152 n

end

end A003683.P16346834748620476989

namespace A003683

/-- `A139818(n)+A084152(n)` -/
def P16346834748620476989.Spec : Prop :=
  ∀ n, P16346834748620476989.a n = A003683 n

end A003683

/-! ## A003683.P17534410354870710980

`A084175(n)-A084152(n)`
-/

namespace A003683.P17534410354870710980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084175 n - A084152 n

end

end A003683.P17534410354870710980

namespace A003683

/-- `A084175(n)-A084152(n)` -/
def P17534410354870710980.Spec : Prop :=
  ∀ n, P17534410354870710980.a n = A003683 n

end A003683

/-! ## A003683.P9551445691298781735

`A001045(n)*A011782(n)`
-/

namespace A003683.P9551445691298781735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A011782 n

end

end A003683.P9551445691298781735

namespace A003683

/-- `A001045(n)*A011782(n)` -/
def P9551445691298781735.Spec : Prop :=
  ∀ n, P9551445691298781735.a n = A003683 n

end A003683

/-! ## A003683.P221968220666897617

`A001045(n)*A131577(n)`
-/

namespace A003683.P221968220666897617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A131577 n

end

end A003683.P221968220666897617

namespace A003683

/-- `A001045(n)*A131577(n)` -/
def P221968220666897617.Spec : Prop :=
  ∀ n, P221968220666897617.a n = A003683 n

end A003683

/-! ## A003683.P320716302045284752

`A131577(n)*A152046(n)`
-/

namespace A003683.P320716302045284752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n * A152046 n

end

end A003683.P320716302045284752

namespace A003683

/-- `A131577(n)*A152046(n)` -/
def P320716302045284752.Spec : Prop :=
  ∀ n, P320716302045284752.a n = A003683 n

end A003683

/-! ## A003683.P16141094758904424335

`A131577(n)*A167167(n)`
-/

namespace A003683.P16141094758904424335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n * A167167 n

end

end A003683.P16141094758904424335

namespace A003683

/-- `A131577(n)*A167167(n)` -/
def P16141094758904424335.Spec : Prop :=
  ∀ n, P16141094758904424335.a n = A003683 n

end A003683

/-! ## A003683.P5035650248790249950

`lcm(A123344(n), A193652(n))`
-/

namespace A003683.P5035650248790249950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123344 n) (A193652 n)

end

end A003683.P5035650248790249950

namespace A003683

/-- `lcm(A123344(n), A193652(n))` -/
def P5035650248790249950.Spec : Prop :=
  ∀ n, (P5035650248790249950.a n : ℤ) = A003683 n

end A003683

/-! ## A003683.P11699069780326458754

`A084152(n)+A001045(n)²`
-/

namespace A003683.P11699069780326458754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084152 n + A001045 n ^ 2

end

end A003683.P11699069780326458754

namespace A003683

/-- `A084152(n)+A001045(n)²` -/
def P11699069780326458754.Spec : Prop :=
  ∀ n, P11699069780326458754.a n = A003683 n

end A003683

/-! ## A003683.P19489538021287307

`A084152(n+1)-A084152(n)`
-/

namespace A003683.P19489538021287307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084152 (n + 1) - A084152 n

end

end A003683.P19489538021287307

namespace A003683

/-- `A084152(n+1)-A084152(n)` -/
def P19489538021287307.Spec : Prop :=
  ∀ n, P19489538021287307.a n = A003683 n

end A003683

/-! ## A003683.P5081031136159421445

`A001045(n)*A166444(n+1)`
-/

namespace A003683.P5081031136159421445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A166444 (n + 1)

end

end A003683.P5081031136159421445

namespace A003683

/-- `A001045(n)*A166444(n+1)` -/
def P5081031136159421445.Spec : Prop :=
  ∀ n, P5081031136159421445.a n = A003683 n

end A003683

/-! ## A003683.P14503980765747615739

`A138477(2*n)-A084152(n)`
-/

namespace A003683.P14503980765747615739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138477 (2 * n) - A084152 n

end

end A003683.P14503980765747615739

namespace A003683

/-- `A138477(2*n)-A084152(n)` -/
def P14503980765747615739.Spec : Prop :=
  ∀ n, P14503980765747615739.a n = A003683 n

end A003683

/-! ## A003683.P12469115316503281172

`A138495(2*n)-A084152(n)`
-/

namespace A003683.P12469115316503281172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 (2 * n) - A084152 n

end

end A003683.P12469115316503281172

namespace A003683

/-- `A138495(2*n)-A084152(n)` -/
def P12469115316503281172.Spec : Prop :=
  ∀ n, P12469115316503281172.a n = A003683 n

end A003683

/-! ## A003683.P16919256388335003127

`Δ[Δ[A023105(n)]*A001045(n)]`
-/

namespace A003683.P16919256388335003127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023105 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003683.P16919256388335003127

namespace A003683

/-- `Δ[Δ[A023105(n)]*A001045(n)]` -/
def P16919256388335003127.Spec : Prop :=
  ∀ n, P16919256388335003127.a n = A003683 n

end A003683

/-!
# A003684: Number of n-digit reversible primes (or emirps) with distinct digits.

The programs for A003684, there is no canonical definition to state claims against.
-/

/-! ## A003684.P3619819047750290729

`A277676(n*a(n-1))` with `a(0)=4, a(1)=8`
-/

namespace A003684.P3619819047750290729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 8] fun n a =>
  A277676 ((n : ℤ) * a (n - 1)).toNat

end

end A003684.P3619819047750290729

/-!
# A003685: Number of Hamiltonian paths in P_3 X P_n.

The programs for A003685, there is no canonical definition to state claims against.
-/

/-! ## A003685.P4047634540997090895

`A332307(∑[n+3]+1)`
-/

namespace A003685.P4047634540997090895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A003685.P4047634540997090895

/-! ## A003685.P556939845589207840

`gcd(floor(acot(n)), A332307(A167614(n+1)))`
-/

namespace A003685.P556939845589207840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A332307 (A167614 (n + 1)).toNat)

end

end A003685.P556939845589207840

/-! ## A003685.P16948812286651174146

`record[A332307(A167614(ceil(C(or(1, n), n)/2)))]`
-/

namespace A003685.P16948812286651174146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A167614 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003685.P16948812286651174146

/-! ## A003685.P537997850725072164

`A332307(A167614(n+1))^A178489(n)`
-/

namespace A003685.P537997850725072164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332307 (A167614 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A003685.P537997850725072164

/-! ## A003685.P1270762582519223686

`A332307(A167614(n+1))%A034488(n)`
-/

namespace A003685.P1270762582519223686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332307 (A167614 (n + 1)).toNat) (A034488 n)

end

end A003685.P1270762582519223686

/-!
# A003686: Number of genealogical 1-2 rooted trees of height n.

The programs for A003686, the canonical program `A003686.P3781707574244188072` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003686 has offset 1).

The definition of A003686 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003686.P3781707574244188072

`a(n-1)+a(n-2)*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003686

/-- `a(n-1)+a(n-2)*(a(n-1)-a(n-2))` -/
def P3781707574244188072.Spec : Prop :=
  ∀ n, P3781707574244188072.a n = A003686 (n + 1)

theorem P3781707574244188072.correct : P3781707574244188072.Spec := by
  intro n
  simp only [A003686, Nat.add_sub_cancel]

end A003686

/-! ## A003686.P15903536721597276805

`(a(n-2)+1)*a(n-1)-a(n-2)²` with `a(0)=1, a(1)=2`
-/

namespace A003686.P15903536721597276805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 2) + 1) * a (n - 1) - a (n - 2) ^ 2

end

end A003686.P15903536721597276805

namespace A003686

/-- `(a(n-2)+1)*a(n-1)-a(n-2)²` -/
def P15903536721597276805.Spec : Prop :=
  ∀ n, P15903536721597276805.a n = A003686 (n + 1)

end A003686

/-! ## A003686.P15747790179683271048

`a(n-1)+lcm(a(n-1)-a(n-2), a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A003686.P15747790179683271048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + Int.lcm ((a (n - 1) : ℤ) - (a (n - 2) : ℤ)) (a (n - 2) : ℤ)

end

end A003686.P15747790179683271048

namespace A003686

/-- `a(n-1)+lcm(a(n-1)-a(n-2), a(n-2))` -/
def P15747790179683271048.Spec : Prop :=
  ∀ n, (P15747790179683271048.a n : ℤ) = A003686 (n + 1)

end A003686

/-! ## A003686.P9873677866364494395

`a(n-1)*a(n-2)-(a(n-2)²-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A003686.P9873677866364494395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * a (n - 2) - (a (n - 2) ^ 2 - a (n - 1))

end

end A003686.P9873677866364494395

namespace A003686

/-- `a(n-1)*a(n-2)-(a(n-2)²-a(n-1))` -/
def P9873677866364494395.Spec : Prop :=
  ∀ n, P9873677866364494395.a n = A003686 (n + 1)

theorem P9873677866364494395.correct : P9873677866364494395.Spec := by
  intro n
  simp only [A003686, Nat.add_sub_cancel, A003686.P9873677866364494395.a, A003686.P3781707574244188072.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A003686

/-! ## A003686.P3859595579417721938

`floor(a(n-1)-(a(n-2)-a(n-1))*a(n-2))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A003686.P3859595579417721938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1)) * a (n - 2)

end

end A003686.P3859595579417721938

namespace A003686

/-- `floor(a(n-1)-(a(n-2)-a(n-1))*a(n-2))` -/
def P3859595579417721938.Spec : Prop :=
  ∀ n, P3859595579417721938.a n = A003686 (n + 1)

theorem P3859595579417721938.correct : P3859595579417721938.Spec := by
  intro n
  simp only [A003686, Nat.add_sub_cancel, A003686.P3859595579417721938.a, A003686.P3781707574244188072.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A003686

/-!
# A003687: a(n+1) = a(n)-a(1)a(2)...a(n-1), if n>0. a(0)=1, a(1)=2.

The programs for A003687, there is no canonical definition to state claims against.
-/

/-! ## A003687.P5527192748302886614

`a(n-2)-(a(n-2)+1)²` with `a(0)=1, a(1)=2, a(2)=1, a(3)=-1`
-/

namespace A003687.P5527192748302886614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, -1] fun n a =>
  a (n - 2) - (a (n - 2) + 1) ^ 2

end

end A003687.P5527192748302886614

/-! ## A003687.P15492840748754916142

`a(n-1)+(a(n-1)-a(n-2))*a(n-2)` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A003687.P15492840748754916142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 2)) * a (n - 2)

end

end A003687.P15492840748754916142

/-! ## A003687.P16611229372537182913

`floor(a(n-1)-(a(n-2)-a(n-1))*a(n-2))` with `a(0)=1, a(1)=2, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A003687.P16611229372537182913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1)) * a (n - 2)

end

end A003687.P16611229372537182913

/-! ## A003687.P7636014989166095799

`ratio[A081478(A028310(n))]`
-/

namespace A003687.P7636014989166095799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081478 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A003687.P7636014989166095799

/-! ## A003687.P16883153718831103051

`A081478(n+1)/A081478(A028310(n))`
-/

namespace A003687.P16883153718831103051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081478 (n + 1) : ℚ) / (A081478 (A028310 n).toNat : ℚ)

end

end A003687.P16883153718831103051

/-!
# A003688: a(n) = 3*a(n-1) + a(n-2), with a(1)=1 and a(2)=4.

The programs for A003688, the canonical program `A003688.P16257799004263574507` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003688 has offset 1).

The definition of A003688 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+a(n-2)` (program `A003688.P16257799004263574507`, by `A003688.P16257799004263574507.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003688.P16257799004263574507

`3*a(n-1)+a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003688

/-- `3*a(n-1)+a(n-2)` -/
def P16257799004263574507.Spec : Prop :=
  ∀ n, (P16257799004263574507.a n : ℤ) = A003688 (n + 1)

theorem P16257799004263574507.correct : P16257799004263574507.Spec := by
  intro n
  simp only [A003688, Nat.add_sub_cancel]

end A003688

/-! ## A003688.P13558523099100162192

`A006190(n+1)+A006190(n)`
-/

namespace A003688.P13558523099100162192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 (n + 1) + A006190 n

end

end A003688.P13558523099100162192

namespace A003688

/-- `A006190(n+1)+A006190(n)` -/
def P13558523099100162192.Spec : Prop :=
  ∀ n, P13558523099100162192.a n = A003688 (n + 1)

end A003688

/-! ## A003688.P10654224500912188362

`ogf((1+x)/(1-3x-x^2))`
-/

namespace A003688.P10654224500912188362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -3, -1] n

end

end A003688.P10654224500912188362

namespace A003688

/-- `ogf((1+x)/(1-3x-x^2))` -/
def P10654224500912188362.Spec : Prop :=
  ∀ n, P10654224500912188362.a n = A003688 (n + 1)

end A003688

/-! ## A003688.P805408016706802132

`a(n-2)+lcm(3, a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A003688.P805408016706802132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + Nat.lcm 3 (a (n - 1))

end

end A003688.P805408016706802132

namespace A003688

/-- `a(n-2)+lcm(3, a(n-1))` -/
def P805408016706802132.Spec : Prop :=
  ∀ n, (P805408016706802132.a n : ℤ) = A003688 (n + 1)

end A003688

/-! ## A003688.P3982023733936230396

`3-(3*(1-a(n-1))-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A003688.P3982023733936230396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 - (3 * (1 - a (n - 1)) - a (n - 2))

end

end A003688.P3982023733936230396

namespace A003688

/-- `3-(3*(1-a(n-1))-a(n-2))` -/
def P3982023733936230396.Spec : Prop :=
  ∀ n, P3982023733936230396.a n = A003688 (n + 1)

end A003688

/-! ## A003688.P17189770396641074623

`a(n-1)+a(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A003688.P17189770396641074623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + a (n - 2)))

end

end A003688.P17189770396641074623

namespace A003688

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-2)` -/
def P17189770396641074623.Spec : Prop :=
  ∀ n, (P17189770396641074623.a n : ℤ) = A003688 (n + 1)

theorem P17189770396641074623.correct : P17189770396641074623.Spec := by
  intro n
  simp only [A003688, Nat.add_sub_cancel, A003688.P17189770396641074623.a, A003688.P16257799004263574507.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A003688

/-! ## A003688.P6188864243341304625

`∑[A052906(n)]`
-/

namespace A003688.P6188864243341304625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003688.P6188864243341304625

namespace A003688

/-- `∑[A052906(n)]` -/
def P6188864243341304625.Spec : Prop :=
  ∀ n, P6188864243341304625.a n = A003688 (n + 1)

end A003688

/-! ## A003688.P3622037946440344401

`A249579(4*n+5)`
-/

namespace A003688.P3622037946440344401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (4 * n + 5)

end

end A003688.P3622037946440344401

namespace A003688

/-- `A249579(4*n+5)` -/
def P3622037946440344401.Spec : Prop :=
  ∀ n, P3622037946440344401.a n = A003688 (n + 1)

end A003688

/-! ## A003688.P149713676598494103

`record[Δ[A249579(2*n)]]`
-/

namespace A003688.P149713676598494103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003688.P149713676598494103

namespace A003688

/-- `record[Δ[A249579(2*n)]]` -/
def P149713676598494103.Spec : Prop :=
  ∀ n, P149713676598494103.a n = A003688 (n + 1)

end A003688

/-! ## A003688.P8866983552680343165

`A180148(n)-a(n-1)` with `a(0)=1`
-/

namespace A003688.P8866983552680343165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A180148 n - a (n - 1)

end

end A003688.P8866983552680343165

namespace A003688

/-- `A180148(n)-a(n-1)` -/
def P8866983552680343165.Spec : Prop :=
  ∀ n, P8866983552680343165.a n = A003688 (n + 1)

end A003688

/-! ## A003688.P4810185598936554609

`A108300(n)-A006190(n)`
-/

namespace A003688.P4810185598936554609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108300 n - A006190 n

end

end A003688.P4810185598936554609

namespace A003688

/-- `A108300(n)-A006190(n)` -/
def P4810185598936554609.Spec : Prop :=
  ∀ n, P4810185598936554609.a n = A003688 (n + 1)

end A003688

/-! ## A003688.P5145030019497418339

`A006191(n+2)-A006189(n)`
-/

namespace A003688.P5145030019497418339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006191 (n + 2) - A006189 n

end

end A003688.P5145030019497418339

namespace A003688

/-- `A006191(n+2)-A006189(n)` -/
def P5145030019497418339.Spec : Prop :=
  ∀ n, P5145030019497418339.a n = A003688 (n + 1)

end A003688

/-! ## A003688.P15081822547937468836

`Δ[A180148(n)/3]`
-/

namespace A003688.P15081822547937468836
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180148 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003688.P15081822547937468836

namespace A003688

/-- `Δ[A180148(n)/3]` -/
def P15081822547937468836.Spec : Prop :=
  ∀ n, P15081822547937468836.a n = (A003688 (n + 1) : ℚ)

end A003688

/-! ## A003688.P15315421021805826692

`A052906(n+1)-A180148(n)`
-/

namespace A003688.P15315421021805826692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052906 (n + 1) - A180148 n

end

end A003688.P15315421021805826692

namespace A003688

/-- `A052906(n+1)-A180148(n)` -/
def P15315421021805826692.Spec : Prop :=
  ∀ n, P15315421021805826692.a n = A003688 (n + 1)

end A003688

/-! ## A003688.P17776578573828558490

`A006497(n+1)-A052924(n+1)`
-/

namespace A003688.P17776578573828558490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 (n + 1) - A052924 (n + 1)

end

end A003688.P17776578573828558490

namespace A003688

/-- `A006497(n+1)-A052924(n+1)` -/
def P17776578573828558490.Spec : Prop :=
  ∀ n, P17776578573828558490.a n = A003688 (n + 1)

end A003688

/-! ## A003688.P3515352799307061697

`(13-sqrt(13))*((3+sqrt(13))/2)^(n+1)/26+(13+sqrt(13))*((3-sqrt(13))/2)^(n+1)/26`
-/

namespace A003688.P3515352799307061697
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (13 - Real.sqrt (13 : ℝ)) * ((3 + Real.sqrt (13 : ℝ)) / 2) ^ (n + 1) / 26 + (13 + Real.sqrt (13 : ℝ)) * ((3 - Real.sqrt (13 : ℝ)) / 2) ^ (n + 1) / 26

end

end A003688.P3515352799307061697

namespace A003688

/-- `(13-sqrt(13))*((3+sqrt(13))/2)^(n+1)/26+(13+sqrt(13))*((3-sqrt(13))/2)^(n+1)/26` -/
def P3515352799307061697.Spec : Prop :=
  ∀ n, P3515352799307061697.a n = (A003688 (n + 1) : ℝ)

end A003688

/-!
# A003690: Number of spanning trees in K_3 X P_n.

The programs for A003690, the canonical program `A003690.P9136672205004948120` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003690 has offset 1).

The definition of A003690 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003690.P9136672205004948120

`3*A004254(n+1)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A003690

/-- `3*A004254(n+1)²` -/
def P9136672205004948120.Spec : Prop :=
  ∀ n, P9136672205004948120.a n = A003690 (n + 1)

theorem P9136672205004948120.correct : P9136672205004948120.Spec := by
  intro n
  simp only [A003690, Nat.add_sub_cancel]

end A003690

/-! ## A003690.P419111955198961944

`(A090731(n+1)-2)/7`
-/

namespace A003690.P419111955198961944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090731 (n + 1) - 2 : ℚ) / 7

end

end A003690.P419111955198961944

namespace A003690

/-- `(A090731(n+1)-2)/7` -/
def P419111955198961944.Spec : Prop :=
  ∀ n, P419111955198961944.a n = (A003690 (n + 1) : ℚ)

end A003690

/-! ## A003690.P4652139591001919478

`A003769(Δ[n²])`
-/

namespace A003690.P4652139591001919478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003769 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003690.P4652139591001919478

namespace A003690

/-- `A003769(Δ[n²])` -/
def P4652139591001919478.Spec : Prop :=
  ∀ n, P4652139591001919478.a n = A003690 (n + 1)

end A003690

/-! ## A003690.P7130607017422130923

`∑[A290902(2*n)]`
-/

namespace A003690.P7130607017422130923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290902 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003690.P7130607017422130923

namespace A003690

/-- `∑[A290902(2*n)]` -/
def P7130607017422130923.Spec : Prop :=
  ∀ n, P7130607017422130923.a n = A003690 (n + 1)

end A003690

/-! ## A003690.P1275709883277599795

`A005386(2*(n+1))`
-/

namespace A003690.P1275709883277599795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005386 (2 * (n + 1))

end

end A003690.P1275709883277599795

namespace A003690

/-- `A005386(2*(n+1))` -/
def P1275709883277599795.Spec : Prop :=
  ∀ n, P1275709883277599795.a n = A003690 (n + 1)

end A003690

/-! ## A003690.P11113552171682173919

`3*A089927(2*n)`
-/

namespace A003690.P11113552171682173919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A089927 (2 * n)

end

end A003690.P11113552171682173919

namespace A003690

/-- `3*A089927(2*n)` -/
def P11113552171682173919.Spec : Prop :=
  ∀ n, P11113552171682173919.a n = A003690 (n + 1)

end A003690

/-! ## A003690.P11577137506932553932

`3*A123967(∑[n])²`
-/

namespace A003690.P11577137506932553932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A123967 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A003690.P11577137506932553932

namespace A003690

/-- `3*A123967(∑[n])²` -/
def P11577137506932553932.Spec : Prop :=
  ∀ n, P11577137506932553932.a n = A003690 (n + 1)

end A003690

/-! ## A003690.P2108590423905138130

`3*A179900(∑[n])²`
-/

namespace A003690.P2108590423905138130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A179900 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A003690.P2108590423905138130

namespace A003690

/-- `3*A179900(∑[n])²` -/
def P2108590423905138130.Spec : Prop :=
  ∀ n, P2108590423905138130.a n = A003690 (n + 1)

end A003690

/-! ## A003690.P5787751679225807133

`3*A207824(∑[n])²`
-/

namespace A003690.P5787751679225807133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A207824 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A003690.P5787751679225807133

namespace A003690

/-- `3*A207824(∑[n])²` -/
def P5787751679225807133.Spec : Prop :=
  ∀ n, P5787751679225807133.a n = A003690 (n + 1)

end A003690

/-! ## A003690.P14650323180477847518

`lcm(3, A003769(2*n+1))`
-/

namespace A003690.P14650323180477847518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A003769 (2 * n + 1))

end

end A003690.P14650323180477847518

namespace A003690

/-- `lcm(3, A003769(2*n+1))` -/
def P14650323180477847518.Spec : Prop :=
  ∀ n, (P14650323180477847518.a n : ℤ) = A003690 (n + 1)

end A003690

/-!
# A003691: Number of spanning trees with degrees 1 and 3 in K_3 X P_2n.

The programs for A003691, the canonical program `A003691.P1839067066119288158` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003691 has offset 1).

The definition of A003691 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003691.P1839067066119288158

`8*a(n-1)+8*a(n-2)` with `a(0)=3, a(1)=36, a(2)=324`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003691

/-- `8*a(n-1)+8*a(n-2)` -/
def P1839067066119288158.Spec : Prop :=
  ∀ n, (P1839067066119288158.a n : ℤ) = A003691 (n + 1)

theorem P1839067066119288158.correct : P1839067066119288158.Spec := by
  intro n
  simp only [A003691, Nat.add_sub_cancel]

end A003691

/-! ## A003691.P6539997781489121944

`ogf((3+12x+12x^2)/(1-8x-8x^2))`
-/

namespace A003691.P6539997781489121944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 12, 12] [1, -8, -8] n

end

end A003691.P6539997781489121944

namespace A003691

/-- `ogf((3+12x+12x^2)/(1-8x-8x^2))` -/
def P6539997781489121944.Spec : Prop :=
  ∀ n, P6539997781489121944.a n = A003691 (n + 1)

end A003691

/-! ## A003691.P6971611379452991048

`A003945(n)*A123348(n+1)`
-/

namespace A003691.P6971611379452991048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n * A123348 (n + 1)

end

end A003691.P6971611379452991048

namespace A003691

/-- `A003945(n)*A123348(n+1)` -/
def P6971611379452991048.Spec : Prop :=
  ∀ n, P6971611379452991048.a n = A003691 (n + 1)

end A003691

/-! ## A003691.P11074379670145963703

`Δ[A042950(n)]*A123348(n+1)`
-/

namespace A003691.P11074379670145963703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A123348 (n + 1)

end

end A003691.P11074379670145963703

namespace A003691

/-- `Δ[A042950(n)]*A123348(n+1)` -/
def P11074379670145963703.Spec : Prop :=
  ∀ n, P11074379670145963703.a n = A003691 (n + 1)

end A003691

/-! ## A003691.P13444834617101420488

`A048645(∑[n+1])*A123348(n+1)`
-/

namespace A003691.P13444834617101420488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (∑ j ∈ Finset.range (n + 1), f1 j) * A123348 (n + 1)

end

end A003691.P13444834617101420488

namespace A003691

/-- `A048645(∑[n+1])*A123348(n+1)` -/
def P13444834617101420488.Spec : Prop :=
  ∀ n, P13444834617101420488.a n = A003691 (n + 1)

end A003691

/-!
# A003692: Number of trees on n labeled vertices with degree at most 3.

The programs for A003692, there is no canonical definition to state claims against.
-/

/-! ## A003692.P12802225855310842125

`A141765(n*(n+3))`
-/

namespace A003692.P12802225855310842125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141765 (n * (n + 3))

end

end A003692.P12802225855310842125

/-! ## A003692.P13935295807193309508

`A007494((3*n-2)*a(n-1))/2` with `a(0)=1`
-/

namespace A003692.P13935295807193309508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A007494 (SequenceMachineLib.roundAway (((3 * n : ℤ) - 2 : ℚ) * a (n - 1))).toNat : ℚ) / 2

end

end A003692.P13935295807193309508

/-!
# A003693: Number of 2-factors in P_4 X P_n.

The programs for A003693, the canonical program `A003693.P3154472324048347324` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003693 has offset 1).

The definition of A003693 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003693.P3154472324048347324

`2*a(n-1)+7*a(n-2)-2*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=18, a(4)=54`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003693

/-- `2*a(n-1)+7*a(n-2)-2*a(n-3)-3*a(n-4)+a(n-5)` -/
def P3154472324048347324.Spec : Prop :=
  ∀ n, P3154472324048347324.a n = A003693 (n + 1)

theorem P3154472324048347324.correct : P3154472324048347324.Spec := by
  intro n
  simp only [A003693, Nat.add_sub_cancel]

end A003693

/-! ## A003693.P12499188675811851019

`A002375(A334682(n)+2)`
-/

namespace A003693.P12499188675811851019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (A334682 n + 2).toNat

end

end A003693.P12499188675811851019

namespace A003693

/-- `A002375(A334682(n)+2)` -/
def P12499188675811851019.Spec : Prop :=
  ∀ n, P12499188675811851019.a n = A003693 (n + 1)

end A003693

/-!
# A003695: Number of Hamiltonian paths in P_4 X P_n.

The programs for A003695, there is no canonical definition to state claims against.
-/

/-! ## A003695.P2330973479052597978

`A332307(A141214(n+1))`
-/

namespace A003695.P2330973479052597978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A141214 (n + 1)).toNat

end

end A003695.P2330973479052597978

/-! ## A003695.P3093236082084889486

`A332307(A374004(n+1))`
-/

namespace A003695.P3093236082084889486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A374004 (n + 1)).toNat

end

end A003695.P3093236082084889486

/-! ## A003695.P3042672341525534558

`A332307(A055998(n+2))`
-/

namespace A003695.P3042672341525534558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A055998 (n + 2)).toNat

end

end A003695.P3042672341525534558

/-! ## A003695.P3041682746006751489

`A332307(A155212(n)+5)`
-/

namespace A003695.P3041682746006751489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A155212 n + 5).toNat

end

end A003695.P3041682746006751489

/-! ## A003695.P8055217549929161446

`A332307(A055999(n)+10)`
-/

namespace A003695.P8055217549929161446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A055999 n + 10).toNat

end

end A003695.P8055217549929161446

/-!
# A003696: Number of spanning trees in P_4 X P_n.

The programs for A003696, there is no canonical definition to state claims against.
-/

/-! ## A003696.P4794289137935018164

`A001353(n+1)*A161158(n)`
-/

namespace A003696.P4794289137935018164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 1) * A161158 n

end

end A003696.P4794289137935018164

/-! ## A003696.P744533978768540570

`A189004(Δ[n²])`
-/

namespace A003696.P744533978768540570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189004 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003696.P744533978768540570

/-! ## A003696.P3936274518565885995

`record[A189004(abs(A009001(n)))]`
-/

namespace A003696.P3936274518565885995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189004 |A009001 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003696.P3936274518565885995

/-! ## A003696.P3074311040919987451

`record[A189004(A000265(n+1))]`
-/

namespace A003696.P3074311040919987451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189004 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003696.P3074311040919987451

/-! ## A003696.P12861771083231801689

`record[A189004(A204154(n+1))]`
-/

namespace A003696.P12861771083231801689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189004 (A204154 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003696.P12861771083231801689

/-! ## A003696.P15151877182347659615

`record[A189004(A033999(n)+n)]`
-/

namespace A003696.P15151877182347659615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189004 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003696.P15151877182347659615

/-! ## A003696.P6452139084879510044

`record[A189004(gcd(n, A035363(n)))]`
-/

namespace A003696.P6452139084879510044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189004 (Int.gcd (n : ℤ) (A035363 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003696.P6452139084879510044

/-! ## A003696.P11509271342602813436

`record[A189004(and(n, A033999(n)))]`
-/

namespace A003696.P11509271342602813436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189004 (Int.land (n : ℤ) (A033999 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003696.P11509271342602813436

/-! ## A003696.P13743909593978522823

`gcd(A035363(2*n)*A189004(2*n+1), A189004(2*n+1))`
-/

namespace A003696.P13743909593978522823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035363 (2 * n) * A189004 (2 * n + 1)) (A189004 (2 * n + 1))

end

end A003696.P13743909593978522823

/-!
# A003698: Number of 2-factors in C_4 X P_n.

The programs for A003698, the canonical program `A003698.P1496861103619815972` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003698 has offset 1).

The definition of A003698 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003698.P1496861103619815972

`6*a(n-1)+3*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=9, a(2)=53`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003698

/-- `6*a(n-1)+3*a(n-2)-4*a(n-3)` -/
def P1496861103619815972.Spec : Prop :=
  ∀ n, P1496861103619815972.a n = A003698 (n + 1)

theorem P1496861103619815972.correct : P1496861103619815972.Spec := by
  intro n
  simp only [A003698, Nat.add_sub_cancel]

end A003698

/-! ## A003698.P7257335971261815551

`ogf((1+3x-4x^2)/(1-6x-3x^2+4x^3))`
-/

namespace A003698.P7257335971261815551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -4] [1, -6, -3, 4] n

end

end A003698.P7257335971261815551

namespace A003698

/-- `ogf((1+3x-4x^2)/(1-6x-3x^2+4x^3))` -/
def P7257335971261815551.Spec : Prop :=
  ∀ n, P7257335971261815551.a n = A003698 (n + 1)

end A003698

/-! ## A003698.P3549469814098522061

`or(1, ∑[A190973(n+1)])`
-/

namespace A003698.P3549469814098522061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003698.P3549469814098522061

namespace A003698

/-- `or(1, ∑[A190973(n+1)])` -/
def P3549469814098522061.Spec : Prop :=
  ∀ n, P3549469814098522061.a n = A003698 (n + 1)

end A003698

/-! ## A003698.P11113642647002628020

`A000035(n)+∑[A190973(n+1)]`
-/

namespace A003698.P11113642647002628020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003698.P11113642647002628020

namespace A003698

/-- `A000035(n)+∑[A190973(n+1)]` -/
def P11113642647002628020.Spec : Prop :=
  ∀ n, P11113642647002628020.a n = A003698 (n + 1)

end A003698

/-! ## A003698.P14638887857579225736

`Δ[A004526(n)]+∑[A190973(n+1)]`
-/

namespace A003698.P14638887857579225736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A003698.P14638887857579225736

namespace A003698

/-- `Δ[A004526(n)]+∑[A190973(n+1)]` -/
def P14638887857579225736.Spec : Prop :=
  ∀ n, P14638887857579225736.a n = A003698 (n + 1)

end A003698

/-! ## A003698.P16360509330255619034

`A059841(n+1)+∑[A190973(n+1)]`
-/

namespace A003698.P16360509330255619034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003698.P16360509330255619034

namespace A003698

/-- `A059841(n+1)+∑[A190973(n+1)]` -/
def P16360509330255619034.Spec : Prop :=
  ∀ n, P16360509330255619034.a n = A003698 (n + 1)

end A003698

/-! ## A003698.P7353082829340631256

`a(n-1)-(A033999(n)-A190973(n+1))` with `a(0)=1`
-/

namespace A003698.P7353082829340631256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A033999 n - A190973 (n + 1))

end

end A003698.P7353082829340631256

namespace A003698

/-- `a(n-1)-(A033999(n)-A190973(n+1))` -/
def P7353082829340631256.Spec : Prop :=
  ∀ n, P7353082829340631256.a n = A003698 (n + 1)

end A003698

/-!
# A003699: Number of Hamiltonian cycles in C_4 X P_n.

The programs for A003699, the canonical program `A003699.P12714379156896456777` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003699 has offset 1).

The definition of A003699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003699.P12714379156896456777

`4*a(n-1)-a(n-2)` with `a(0)=1, a(1)=6, a(2)=22`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003699

/-- `4*a(n-1)-a(n-2)` -/
def P12714379156896456777.Spec : Prop :=
  ∀ n, P12714379156896456777.a n = A003699 (n + 1)

theorem P12714379156896456777.correct : P12714379156896456777.Spec := by
  intro n
  simp only [A003699, Nat.add_sub_cancel]

end A003699

/-! ## A003699.P14145169408060912868

`ogf((1+2x-x^2)/(1-4x+x^2))`
-/

namespace A003699.P14145169408060912868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, -4, 1] n

end

end A003699.P14145169408060912868

namespace A003699

/-- `ogf((1+2x-x^2)/(1-4x+x^2))` -/
def P14145169408060912868.Spec : Prop :=
  ∀ n, P14145169408060912868.a n = A003699 (n + 1)

end A003699

/-! ## A003699.P5879944108146794104

`floor((sqrt(3)+2)*a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A003699.P5879944108146794104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋

end

end A003699.P5879944108146794104

namespace A003699

/-- `floor((sqrt(3)+2)*a(n-1))` -/
def P5879944108146794104.Spec : Prop :=
  ∀ n, P5879944108146794104.a n = A003699 (n + 1)

end A003699

/-! ## A003699.P1041158701179779915

`-round(a(n-1)/(sqrt(3)-2))` with `a(0)=1, a(1)=6`
-/

namespace A003699.P1041158701179779915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  -SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

end

end A003699.P1041158701179779915

namespace A003699

/-- `-round(a(n-1)/(sqrt(3)-2))` -/
def P1041158701179779915.Spec : Prop :=
  ∀ n, P1041158701179779915.a n = A003699 (n + 1)

end A003699

/-! ## A003699.P13285312762209460732

`Δ[ceil((sqrt(3)+2)*a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A003699.P13285312762209460732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003699.P13285312762209460732

namespace A003699

/-- `Δ[ceil((sqrt(3)+2)*a(n-1))]` -/
def P13285312762209460732.Spec : Prop :=
  ∀ n, P13285312762209460732.a n = A003699 (n + 1)

end A003699

/-! ## A003699.P5389312665407834120

`a(n-1)/(1/2)²-a(n-2)` with `a(0)=1, a(1)=6, a(2)=22`
-/

namespace A003699.P5389312665407834120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6, 22] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - a (n - 2)

end

end A003699.P5389312665407834120

namespace A003699

/-- `a(n-1)/(1/2)²-a(n-2)` -/
def P5389312665407834120.Spec : Prop :=
  ∀ n, P5389312665407834120.a n = (A003699 (n + 1) : ℚ)

end A003699

/-! ## A003699.P8079642268315782907

`A393527(2*(n+1))`
-/

namespace A003699.P8079642268315782907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393527 (2 * (n + 1))

end

end A003699.P8079642268315782907

namespace A003699

/-- `A393527(2*(n+1))` -/
def P8079642268315782907.Spec : Prop :=
  ∀ n, P8079642268315782907.a n = A003699 (n + 1)

end A003699

/-! ## A003699.P2597879494871663913

`∑[A231896(n)+C(n, n²)]`
-/

namespace A003699.P2597879494871663913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231896 n + (Nat.choose n (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003699.P2597879494871663913

namespace A003699

/-- `∑[A231896(n)+C(n, n²)]` -/
def P2597879494871663913.Spec : Prop :=
  ∀ n, P2597879494871663913.a n = A003699 (n + 1)

end A003699

/-! ## A003699.P9684082080939685858

`Δ[A254308(A008486(n))]`
-/

namespace A003699.P9684082080939685858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254308 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003699.P9684082080939685858

namespace A003699

/-- `Δ[A254308(A008486(n))]` -/
def P9684082080939685858.Spec : Prop :=
  ∀ n, P9684082080939685858.a n = A003699 (n + 1)

end A003699

/-! ## A003699.P12994340606995307054

`Δ[Δ[A002530(A004273(n))]]`
-/

namespace A003699.P12994340606995307054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (A004273 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003699.P12994340606995307054

namespace A003699

/-- `Δ[Δ[A002530(A004273(n))]]` -/
def P12994340606995307054.Spec : Prop :=
  ∀ n, P12994340606995307054.a n = A003699 (n + 1)

end A003699

/-! ## A003699.P946185647944546303

`Δ[A048788(A004273(n)+1)]`
-/

namespace A003699.P946185647944546303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 (A004273 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003699.P946185647944546303

namespace A003699

/-- `Δ[A048788(A004273(n)+1)]` -/
def P946185647944546303.Spec : Prop :=
  ∀ n, P946185647944546303.a n = A003699 (n + 1)

end A003699

/-! ## A003699.P5681978182517715786

`Δ[A052530(n)+A000007(n)]`
-/

namespace A003699.P5681978182517715786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 n + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003699.P5681978182517715786

namespace A003699

/-- `Δ[A052530(n)+A000007(n)]` -/
def P5681978182517715786.Spec : Prop :=
  ∀ n, P5681978182517715786.a n = A003699 (n + 1)

end A003699

/-! ## A003699.P14087965678233269651

`Δ[A052530(n)-A057427(n)]`
-/

namespace A003699.P14087965678233269651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 n - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003699.P14087965678233269651

namespace A003699

/-- `Δ[A052530(n)-A057427(n)]` -/
def P14087965678233269651.Spec : Prop :=
  ∀ n, P14087965678233269651.a n = A003699 (n + 1)

end A003699

/-! ## A003699.P17219390759258132770

`Δ[A254308(A294732(2*(n+1)))]`
-/

namespace A003699.P17219390759258132770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254308 (A294732 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003699.P17219390759258132770

namespace A003699

/-- `Δ[A254308(A294732(2*(n+1)))]` -/
def P17219390759258132770.Spec : Prop :=
  ∀ n, P17219390759258132770.a n = A003699 (n + 1)

end A003699

/-! ## A003699.P5010719001875925468

`Δ[A179167(n+1)]-A001353(n)`
-/

namespace A003699.P5010719001875925468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001353 n

end

end A003699.P5010719001875925468

namespace A003699

/-- `Δ[A179167(n+1)]-A001353(n)` -/
def P5010719001875925468.Spec : Prop :=
  ∀ n, P5010719001875925468.a n = A003699 (n + 1)

end A003699

/-! ## A003699.P6968019836004320726

`Δ[A179167(n+1)-A101879(n)]`
-/

namespace A003699.P6968019836004320726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179167 (n + 1) - A101879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003699.P6968019836004320726

namespace A003699

/-- `Δ[A179167(n+1)-A101879(n)]` -/
def P6968019836004320726.Spec : Prop :=
  ∀ n, P6968019836004320726.a n = A003699 (n + 1)

end A003699

