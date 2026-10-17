import SequenceMachineLib
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
import Seq.B000.C021
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
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A093900: First column of triangle A093899.

The programs for A093900, there is no canonical definition to state claims against.
-/

/-! ## A093900.P1129575115733042917

`A093899(∑[n]+1)`
-/

namespace A093900.P1129575115733042917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093899 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A093900.P1129575115733042917

/-! ## A093900.P10948842903404416599

`and(-1, A093899(A000124(n)))`
-/

namespace A093900.P10948842903404416599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A093899 (A000124 n).toNat)

end

end A093900.P10948842903404416599

/-! ## A093900.P14037300170838866136

`A093899(A000124(n))+A025466(n)`
-/

namespace A093900.P14037300170838866136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093899 (A000124 n).toNat + A025466 n

end

end A093900.P14037300170838866136

/-!
# A093902: Absolute differences of adjacent entries in triangle A093899, alternately vertical and horizontal.

The programs for A093902, there is no canonical definition to state claims against.
-/

/-! ## A093902.P2510920279936935727

`p?[A243903(A250471(n+1))]`
-/

namespace A093902.P2510920279936935727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (A250471 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093902.P2510920279936935727

/-! ## A093902.P9260310026245896599

`p?[A110653(n+1)-A126849(n+1)]`
-/

namespace A093902.P9260310026245896599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110653 (n + 1) - A126849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093902.P9260310026245896599

/-! ## A093902.P12197731638482909182

`A000040(A330647(n+1)%A356801(n))`
-/

namespace A093902.P12197731638482909182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A330647 (n + 1)) (A356801 n)).toNat

end

end A093902.P12197731638482909182

/-! ## A093902.P8186459285185332835

`A000040(A330647(n+1))%A094007(n+1)`
-/

namespace A093902.P8186459285185332835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A330647 (n + 1)).toNat) (A094007 (n + 1))

end

end A093902.P8186459285185332835

/-!
# A093903: a(1) = 1; for n > 1, a(n) = a(n-1)-p if there exists a prime p (take the smallest) that has not yet been used and is such that a(n) is new and > 0, otherwise a(n) = a(n-1)+p if the same conditions are satisfied.

The programs for A093903, there is no canonical definition to state claims against.
-/

/-! ## A093903.P4451559654939146748

`A006509(n+1)%A322678(A020742(n))`
-/

namespace A093903.P4451559654939146748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006509 (n + 1)) (A322678 (A020742 n).toNat)

end

end A093903.P4451559654939146748

/-! ## A093903.P15248643692966315403

`((A064365(n)+1)%A198277(n))%A322678(A020742(n))`
-/

namespace A093903.P15248643692966315403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A064365 n + 1) (A198277 n)) (A322678 (A020742 n).toNat)

end

end A093903.P15248643692966315403

/-!
# A093905: Triangle read by rows: for 0 <= k < n, a(n, k) is the sum of the products of all subsets of {n-k, n-k+1, ..., n} with k members.

The programs for A093905, there is no canonical definition to state claims against.
-/

/-! ## A093905.P12209187650792368883

`A067176(A099375(n)+n)`
-/

namespace A093905.P12209187650792368883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (A099375 n + (n : ℤ)).toNat

end

end A093905.P12209187650792368883

/-! ## A093905.P7438703325352185452

`A067176(A038722(n+1)+A003056(n))`
-/

namespace A093905.P7438703325352185452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (A038722 (n + 1) + A003056 n).toNat

end

end A093905.P7438703325352185452

/-! ## A093905.P3569324375630626295

`A067176(A061579(n)+A002024(n+1))`
-/

namespace A093905.P3569324375630626295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (A061579 n + A002024 (n + 1)).toNat

end

end A093905.P3569324375630626295

/-! ## A093905.P14988505530135484701

`A067176(A002024(n+1)+A114327(n)+n)`
-/

namespace A093905.P14988505530135484701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (A002024 (n + 1) + (A114327 n + (n : ℤ))).toNat

end

end A093905.P14988505530135484701

/-! ## A093905.P16164776582673247855

`A105954(comp[∑[n-1]])`
-/

namespace A093905.P16164776582673247855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105954 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A093905.P16164776582673247855

/-! ## A093905.P9376732874300397643

`gcd(A000038(n), A105954(A007401(n+1)))`
-/

namespace A093905.P9376732874300397643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A105954 (A007401 (n + 1)).toNat)

end

end A093905.P9376732874300397643

/-! ## A093905.P6853915250143380497

`A105954(A007401(n+1))%A239208(n+1)`
-/

namespace A093905.P6853915250143380497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105954 (A007401 (n + 1)).toNat) (A239208 (n + 1))

end

end A093905.P6853915250143380497

/-! ## A093905.P7922521885526255002

`A105954(A007401(n+1))+A000038(A007401(n+1)²)`
-/

namespace A093905.P7922521885526255002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105954 (A007401 (n + 1)).toNat + A000038 (A007401 (n + 1) ^ 2).toNat

end

end A093905.P7922521885526255002

/-! ## A093905.P16596436152020605574

`A067176(A380649(n+1))`
-/

namespace A093905.P16596436152020605574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (A380649 (n + 1)).toNat

end

end A093905.P16596436152020605574

/-!
# A093906: Start with {2} and close under the operations XY and XY+1; sequence gives complete list of numbers that do not appear.

The programs for A093906, there is no canonical definition to state claims against.
-/

/-! ## A093906.P8667597550913228175

`record[A063946(abs(A349465(n)))]`
-/

namespace A093906.P8667597550913228175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 |A349465 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093906.P8667597550913228175

/-! ## A093906.P5614523050307175022

`record[A063946(record[A349465(n)])]`
-/

namespace A093906.P5614523050307175022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349465 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093906.P5614523050307175022

/-! ## A093906.P5630122209229415423

`lt[A194392(A048724(2*n+1)), A360252(n+1)]`
-/

namespace A093906.P5630122209229415423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194392 (A048724 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A093906.P5630122209229415423

/-! ## A093906.P932476289114318363

`lt[A124772(n), A124769(2*n+1)]`
-/

namespace A093906.P932476289114318363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124772 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A093906.P932476289114318363

/-! ## A093906.P5415780521154736319

`eq[A000055(A303694(n)), A065120(n)]`
-/

namespace A093906.P5415780521154736319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (A303694 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093906.P5415780521154736319

/-!
# A093907: Number of elements in the n-th period of the periodic table as predicted by the Aufbau principle.

The programs for A093907, the canonical program `A093907.P17771538558307370415` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093907 has offset 1).

The definition of A093907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093907.P17771538558307370415

`2*(ceil(n/2)+1)²`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A093907

/-- `2*(ceil(n/2)+1)²` -/
def P17771538558307370415.Spec : Prop :=
  ∀ n, P17771538558307370415.a n = A093907 (n + 1)

theorem P17771538558307370415.correct : P17771538558307370415.Spec := by
  intro n
  simp only [A093907, Nat.add_sub_cancel]

end A093907

/-! ## A093907.P10859177248550086079

`and(n+3, -2)²/2`
-/

namespace A093907.P10859177248550086079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n + 3 : ℤ) (-2) ^ 2 : ℚ) / 2

end

end A093907.P10859177248550086079

namespace A093907

/-- `and(n+3, -2)²/2` -/
def P10859177248550086079.Spec : Prop :=
  ∀ n, P10859177248550086079.a n = (A093907 (n + 1) : ℚ)

end A093907

/-! ## A093907.P14560378709496051122

`(or(1, n+1)+1)²/2`
-/

namespace A093907.P14560378709496051122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (n + 1) + 1) ^ 2 : ℚ) / 2

end

end A093907.P14560378709496051122

namespace A093907

/-- `(or(1, n+1)+1)²/2` -/
def P14560378709496051122.Spec : Prop :=
  ∀ n, P14560378709496051122.a n = (A093907 (n + 1) : ℚ)

end A093907

/-! ## A093907.P7139138103679522404

`(n%2+n+2)²/2`
-/

namespace A093907.P7139138103679522404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n % 2 + (n + 2)) ^ 2 : ℕ) : ℚ) / 2

end

end A093907.P7139138103679522404

namespace A093907

/-- `(n%2+n+2)²/2` -/
def P7139138103679522404.Spec : Prop :=
  ∀ n, P7139138103679522404.a n = (A093907 (n + 1) : ℚ)

end A093907

/-! ## A093907.P16227795534192584844

`(gcd(2, n)-(n+4))²/2`
-/

namespace A093907.P16227795534192584844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.gcd 2 n : ℤ) - (n + 4 : ℤ)) ^ 2 : ℚ) / 2

end

end A093907.P16227795534192584844

namespace A093907

/-- `(gcd(2, n)-(n+4))²/2` -/
def P16227795534192584844.Spec : Prop :=
  ∀ n, P16227795534192584844.a n = (A093907 (n + 1) : ℚ)

end A093907

/-! ## A093907.P15965101236363668339

`(and(1, n)+2+n)²/2`
-/

namespace A093907.P15965101236363668339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n + 2 + n) ^ 2 : ℚ) / 2

end

end A093907.P15965101236363668339

namespace A093907

/-- `(and(1, n)+2+n)²/2` -/
def P15965101236363668339.Spec : Prop :=
  ∀ n, P15965101236363668339.a n = (A093907 (n + 1) : ℚ)

end A093907

/-! ## A093907.P16675141395040064812

`lcm(2, 2*floor((n+3)/2)²)`
-/

namespace A093907.P16675141395040064812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (2 * ⌊(n + 3 : ℚ) / 2⌋ ^ 2)

end

end A093907.P16675141395040064812

namespace A093907

/-- `lcm(2, 2*floor((n+3)/2)²)` -/
def P16675141395040064812.Spec : Prop :=
  ∀ n, (P16675141395040064812.a n : ℤ) = A093907 (n + 1)

end A093907

/-! ## A093907.P5427319945435966487

`∑[2-a(n-1)]²/2` with `a(0)=2, a(1)=2`
-/

namespace A093907.P5427319945435966487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 2

end

end A093907.P5427319945435966487

namespace A093907

/-- `∑[2-a(n-1)]²/2` -/
def P5427319945435966487.Spec : Prop :=
  ∀ n, P5427319945435966487.a n = (A093907 (n + 1) : ℚ)

end A093907

/-! ## A093907.P4948523353474247033

`ceil((n+2)*xor(1, n+3)/2)`
-/

namespace A093907.P4948523353474247033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) * ((Nat.xor 1 (n + 3) : ℚ) / 2)⌉

end

end A093907.P4948523353474247033

namespace A093907

/-- `ceil((n+2)*xor(1, n+3)/2)` -/
def P4948523353474247033.Spec : Prop :=
  ∀ n, P4948523353474247033.a n = A093907 (n + 1)

end A093907

/-! ## A093907.P11983874732643752578

`round((n+2)*xor(1, n+3)/2)`
-/

namespace A093907.P11983874732643752578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) * ((Nat.xor 1 (n + 3) : ℚ) / 2))

end

end A093907.P11983874732643752578

namespace A093907

/-- `round((n+2)*xor(1, n+3)/2)` -/
def P11983874732643752578.Spec : Prop :=
  ∀ n, P11983874732643752578.a n = A093907 (n + 1)

end A093907

/-! ## A093907.P3829739848392321762

`∑[(n+2)*2*and(1, n)]+2`
-/

namespace A093907.P3829739848392321762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (2 * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A093907.P3829739848392321762

namespace A093907

/-- `∑[(n+2)*2*and(1, n)]+2` -/
def P3829739848392321762.Spec : Prop :=
  ∀ n, (P3829739848392321762.a n : ℤ) = A093907 (n + 1)

end A093907

/-! ## A093907.P7806120304210552783

`floor(2*∑[1-a(n-1)]²)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A093907.P7806120304210552783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A093907.P7806120304210552783

namespace A093907

/-- `floor(2*∑[1-a(n-1)]²)` -/
def P7806120304210552783.Spec : Prop :=
  ∀ n, P7806120304210552783.a n = A093907 (n + 1)

end A093907

/-! ## A093907.P4959591319457632990

`2/∑[1-a(n-1)]^(-2)` with `a(0)=1, a(1)=1`
-/

namespace A093907.P4959591319457632990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (-2 : ℤ)

end

end A093907.P4959591319457632990

namespace A093907

/-- `2/∑[1-a(n-1)]^(-2)` -/
def P4959591319457632990.Spec : Prop :=
  ∀ n, P4959591319457632990.a n = (A093907 (n + 1) : ℚ)

end A093907

/-! ## A093907.P1523541138304010529

`∑[2*(n+2)*C(2, a(n-1))]` with `a(0)=2`
-/

namespace A093907.P1523541138304010529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * ((n + 2) * Nat.choose 2 (f1 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093907.P1523541138304010529

namespace A093907

/-- `∑[2*(n+2)*C(2, a(n-1))]` -/
def P1523541138304010529.Spec : Prop :=
  ∀ n, (P1523541138304010529.a n : ℤ) = A093907 (n + 1)

end A093907

/-! ## A093907.P7693764847395951230

`and(1, n)+(n+2)²-a(n-1)` with `a(0)=2`
-/

namespace A093907.P7693764847395951230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (Nat.land 1 n : ℤ) + (((n + 2) ^ 2 : ℤ) - a (n - 1))

end

end A093907.P7693764847395951230

namespace A093907

/-- `and(1, n)+(n+2)²-a(n-1)` -/
def P7693764847395951230.Spec : Prop :=
  ∀ n, P7693764847395951230.a n = A093907 (n + 1)

end A093907

/-! ## A093907.P8638343592613793026

`floor((n+2)²/2)²/a(n-1)` with `a(0)=2`
-/

namespace A093907.P8638343592613793026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (⌊((n + 2) ^ 2 : ℚ) / 2⌋ ^ 2 : ℚ) / a (n - 1)

end

end A093907.P8638343592613793026

namespace A093907

/-- `floor((n+2)²/2)²/a(n-1)` -/
def P8638343592613793026.Spec : Prop :=
  ∀ n, P8638343592613793026.a n = (A093907 (n + 1) : ℚ)

end A093907

/-! ## A093907.P17104410373076158675

`a(n-1)+(n+2)*2*and(1, n)` with `a(0)=2`
-/

namespace A093907.P17104410373076158675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (n + 2) * (2 * Nat.land 1 n)

end

end A093907.P17104410373076158675

namespace A093907

/-- `a(n-1)+(n+2)*2*and(1, n)` -/
def P17104410373076158675.Spec : Prop :=
  ∀ n, (P17104410373076158675.a n : ℤ) = A093907 (n + 1)

end A093907

/-! ## A093907.P11968498372143132321

`∑[(n+2)*Δ[2*n-a(n-1)]]` with `a(0)=0, a(1)=1`
-/

namespace A093907.P11968498372143132321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  (2 * n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093907.P11968498372143132321

namespace A093907

/-- `∑[(n+2)*Δ[2*n-a(n-1)]]` -/
def P11968498372143132321.Spec : Prop :=
  ∀ n, P11968498372143132321.a n = A093907 (n + 1)

end A093907

/-! ## A093907.P532910421506162673

`(A010693(n)+n)²/2`
-/

namespace A093907.P532910421506162673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A010693 n + (n : ℤ)) ^ 2 : ℚ) / 2

end

end A093907.P532910421506162673

namespace A093907

/-- `(A010693(n)+n)²/2` -/
def P532910421506162673.Spec : Prop :=
  ∀ n, P532910421506162673.a n = (A093907 (n + 1) : ℚ)

end A093907

/-! ## A093907.P5861979894709696879

`A014682(n+2)+∑[n+1]`
-/

namespace A093907.P5861979894709696879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A093907.P5861979894709696879

namespace A093907

/-- `A014682(n+2)+∑[n+1]` -/
def P5861979894709696879.Spec : Prop :=
  ∀ n, P5861979894709696879.a n = A093907 (n + 1)

end A093907

/-!
# A093908: Let f(k, n) be the product of n consecutive numbers beginning with k. Then a(n) is the least k > 1+n*(n-1)/2 such that f(k, n) is a multiple of f(1+n*(n-1)/2, n).

The programs for A093908, there is no canonical definition to state claims against.
-/

/-! ## A093908.P13570766298601205043

`A353848(A041201(n))+A078471(n+1)`
-/

namespace A093908.P13570766298601205043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353848 (A041201 n).toNat + A078471 (n + 1)

end

end A093908.P13570766298601205043

/-!
# A093909: Let f(k, n) be the product of n consecutive numbers beginning with k. Then a(n) = f(A093908(n))/f(1+n*(n-1)/2).

The programs for A093909, there is no canonical definition to state claims against.
-/

/-! ## A093909.P6125617112624929676

`A218481(n)+A183568(A218481(2*n+1))`
-/

namespace A093909.P6125617112624929676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218481 n + A183568 (A218481 (2 * n + 1)).toNat

end

end A093909.P6125617112624929676

/-!
# A093910: Product of n-th row of irregular triangle defined in A093911.

The programs for A093910, there is no canonical definition to state claims against.
-/

/-! ## A093910.P5571022133088793837

`a(n-1)*A093913(n)` with `a(0)=1`
-/

namespace A093910.P5571022133088793837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A093913 n

end

end A093910.P5571022133088793837

/-! ## A093910.P14507657072841028102

`∏[A093913(n+1)]/A093913(n+1)`
-/

namespace A093910.P14507657072841028102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093913 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A093913 (n + 1) : ℚ)

end

end A093910.P14507657072841028102

/-!
# A093911: Left side of irregular triangle of natural numbers in which the n-th row has at least n terms and every row product is a multiple of the previous.

The programs for A093911, there is no canonical definition to state claims against.
-/

/-! ## A093911.P8699160983029732164

`A093912(n)+a(n-1)` with `a(0)=1`
-/

namespace A093911.P8699160983029732164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A093912 n + a (n - 1)

end

end A093911.P8699160983029732164

/-! ## A093911.P12647601278700599706

`∑[A093912(round(sqrt(n²+1)))]`
-/

namespace A093911.P12647601278700599706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093912 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093911.P12647601278700599706

/-! ## A093911.P5249620639271657258

`∑[A093912(n+1)]+1-A093912(n+1)`
-/

namespace A093911.P5249620639271657258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A093912 (n + 1))

end

end A093911.P5249620639271657258

/-! ## A093911.P13490052152788671490

`∑[A018293(A007279(n))]`
-/

namespace A093911.P13490052152788671490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018293 (A007279 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093911.P13490052152788671490

/-! ## A093911.P16895497503496963691

`∑[A018293(∑[A000607(n)])]`
-/

namespace A093911.P16895497503496963691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018293 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093911.P16895497503496963691

/-!
# A093912: Number of terms in n-th row of irregular triangle defined in A093911.

The programs for A093912, there is no canonical definition to state claims against.
-/

/-! ## A093912.P14895860178375906872

`Δ[A093911(n+1)]`
-/

namespace A093912.P14895860178375906872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093912.P14895860178375906872

/-! ## A093912.P12792869581308643230

`Δ[record[A093911(A065648(n))]]`
-/

namespace A093912.P12792869581308643230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093911 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093912.P12792869581308643230

/-! ## A093912.P15470995912555853631

`Δ[record[A093911(A106466(n))]]`
-/

namespace A093912.P15470995912555853631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093911 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093912.P15470995912555853631

/-! ## A093912.P18440701324975143739

`Δ[record[A093911(A117910(n))]]`
-/

namespace A093912.P18440701324975143739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093911 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093912.P18440701324975143739

/-! ## A093912.P1615904493978273838

`Δ[record[A093911(A126759(n))]]`
-/

namespace A093912.P1615904493978273838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093911 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093912.P1615904493978273838

/-!
# A093913: Ratio of products of successive rows of irregular triangle defined in A093911.

The programs for A093913, there is no canonical definition to state claims against.
-/

/-! ## A093913.P13020055349710457424

`A093910(n+2)/A093910(n+1)`
-/

namespace A093913.P13020055349710457424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093910 (n + 2) : ℚ) / (A093910 (n + 1) : ℚ)

end

end A093913.P13020055349710457424

/-! ## A093913.P15776092037373187872

`ratio[A093910(n+1)]`
-/

namespace A093913.P15776092037373187872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093910 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A093913.P15776092037373187872

/-!
# A093914: a(1) = 1; for n > 1, a(n) = curling number of (b(1),...,b(n-1)), where b() = Thue-Morse sequence A010060 (with offset changed to 1).

The programs for A093914, there is no canonical definition to state claims against.
-/

/-! ## A093914.P4538090263555928602

`A007895(A000120(A298034(n)))`
-/

namespace A093914.P4538090263555928602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A000120 (A298034 n).toNat).toNat

end

end A093914.P4538090263555928602

/-! ## A093914.P300308466956638923

`gcd(A010894(n), A043529(A064917(n+2)))`
-/

namespace A093914.P300308466956638923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010894 (n + 21)) (A043529 (A064917 (n + 2)).toNat)

end

end A093914.P300308466956638923

/-! ## A093914.P5274570659138092452

`A043529(A151622(n)+A064917(n+2))`
-/

namespace A093914.P5274570659138092452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A151622 n + A064917 (n + 2)).toNat

end

end A093914.P5274570659138092452

/-!
# A093915: Triangle with r-th row containing r consecutive integers that sum to the smallest possible proper multiple of A006003(r).

The programs for A093915, there is no canonical definition to state claims against.
-/

/-! ## A093915.P6629373291888740304

`A228564(∑[char[∑[n]]])+1+n`
-/

namespace A093915.P6629373291888740304
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228564 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 + (n : ℤ)

end

end A093915.P6629373291888740304

/-! ## A093915.P11872724907606313344

`A228564(round(sqrt(Δ[n²])))+n+1`
-/

namespace A093915.P11872724907606313344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228564 (SequenceMachineLib.roundAway (Real.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ))).toNat + (n + 1 : ℤ)

end

end A093915.P11872724907606313344

/-! ## A093915.P524853513249410294

`A030640(∑[char[∑[n]]]²)+n+1`
-/

namespace A093915.P524853513249410294
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030640 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) + (n + 1 : ℤ)

end

end A093915.P524853513249410294

/-! ## A093915.P17768614415562256223

`A145051(∑[char[∑[n]]]²)+1+n`
-/

namespace A093915.P17768614415562256223
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) + 1 + (n : ℤ)

end

end A093915.P17768614415562256223

/-! ## A093915.P7020849853962948575

`A153733(∑[char[∑[n]]]²)+2+n`
-/

namespace A093915.P7020849853962948575
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) + 2 + (n : ℤ)

end

end A093915.P7020849853962948575

/-! ## A093915.P13875405726436863972

`A185048(∑[char[∑[n]]]²+3)+n`
-/

namespace A093915.P13875405726436863972
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 3) + (n : ℤ)

end

end A093915.P13875405726436863972

/-! ## A093915.P6835775260941579164

`A000265(∑[char[∑[n]]]²+1)+1+n`
-/

namespace A093915.P6835775260941579164
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1) + 1 + (n : ℤ)

end

end A093915.P6835775260941579164

/-! ## A093915.P12347925061849493679

`A026741(∑[char[∑[n]]]²+1)+1+n`
-/

namespace A093915.P12347925061849493679
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1) + 1 + (n : ℤ)

end

end A093915.P12347925061849493679

/-! ## A093915.P5267845266848409175

`A065330(∑[char[∑[n]]]²+1)+1+n`
-/

namespace A093915.P5267845266848409175
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1) + 1 + (n : ℤ)

end

end A093915.P5267845266848409175

/-! ## A093915.P2867306319595699386

`A093411(∑[char[∑[n]]]²+1)+n+1`
-/

namespace A093915.P2867306319595699386
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1) + (n + 1 : ℤ)

end

end A093915.P2867306319595699386

/-!
# A093916: a(2*k-1) = (2*k-1)^2 + 2 - k, a(2*k) = 6*k^2 + 2 - k: First column of the triangle A093915.

The programs for A093916, the canonical program `A093916.P7533515427646760501` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093916 has offset 1).

The definition of A093916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093916.P7533515427646760501

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=2, a(1)=7, a(2)=9, a(3)=24, a(4)=24, a(5)=53`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A093916

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P7533515427646760501.Spec : Prop :=
  ∀ n, P7533515427646760501.a n = A093916 (n + 1)

theorem P7533515427646760501.correct : P7533515427646760501.Spec := by
  intro n
  simp only [A093916, Nat.add_sub_cancel]

end A093916

/-! ## A093916.P17374744824963450783

`or(1, n+1)+lcm(n, n+2)+∑[n]+1-n`
-/

namespace A093916.P17374744824963450783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (n + 1) + Nat.lcm n (n + 2) + (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℕ) : ℤ) - (n : ℤ)

end

end A093916.P17374744824963450783

namespace A093916

/-- `or(1, n+1)+lcm(n, n+2)+∑[n]+1-n` -/
def P17374744824963450783.Spec : Prop :=
  ∀ n, P17374744824963450783.a n = A093916 (n + 1)

end A093916

/-! ## A093916.P14280324260105638285

`A093918(n+1)-n`
-/

namespace A093916.P14280324260105638285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093918 (n + 1) - (n : ℤ)

end

end A093916.P14280324260105638285

namespace A093916

/-- `A093918(n+1)-n` -/
def P14280324260105638285.Spec : Prop :=
  ∀ n, P14280324260105638285.a n = A093916 (n + 1)

end A093916

/-! ## A093916.P9198269985631075043

`A228564(n+1)+∑[n]+1`
-/

namespace A093916.P9198269985631075043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228564 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A093916.P9198269985631075043

namespace A093916

/-- `A228564(n+1)+∑[n]+1` -/
def P9198269985631075043.Spec : Prop :=
  ∀ n, P9198269985631075043.a n = A093916 (n + 1)

end A093916

/-! ## A093916.P16014672954903732176

`∑[n]+lcm(2, A061925(n+1))`
-/

namespace A093916.P16014672954903732176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.lcm 2 (A061925 (n + 1))

end

end A093916.P16014672954903732176

namespace A093916

/-- `∑[n]+lcm(2, A061925(n+1))` -/
def P16014672954903732176.Spec : Prop :=
  ∀ n, (P16014672954903732176.a n : ℤ) = A093916 (n + 1)

end A093916

/-! ## A093916.P16467401868222904697

`Δ[A228564(n)]+a(n-1)+n` with `a(0)=2`
-/

namespace A093916.P16467401868222904697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228564 n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  f1 (n + 1) - f1 n + (a (n - 1) + (n : ℤ))

end

end A093916.P16467401868222904697

namespace A093916

/-- `Δ[A228564(n)]+a(n-1)+n` -/
def P16467401868222904697.Spec : Prop :=
  ∀ n, P16467401868222904697.a n = A093916 (n + 1)

end A093916

/-! ## A093916.P224097822036849692

`A000217(n+1)+A228564(n+1)-n`
-/

namespace A093916.P224097822036849692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A228564 (n + 1) - (n : ℤ))

end

end A093916.P224097822036849692

namespace A093916

/-- `A000217(n+1)+A228564(n+1)-n` -/
def P224097822036849692.Spec : Prop :=
  ∀ n, P224097822036849692.a n = A093916 (n + 1)

end A093916

/-! ## A093916.P7901303316851054087

`(n²+n)/2+A243883(2*(n+1))+1`
-/

namespace A093916.P7901303316851054087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℚ) / 2 + (A243883 (2 * (n + 1)) + 1 : ℚ)

end

end A093916.P7901303316851054087

namespace A093916

/-- `(n²+n)/2+A243883(2*(n+1))+1` -/
def P7901303316851054087.Spec : Prop :=
  ∀ n, P7901303316851054087.a n = (A093916 (n + 1) : ℚ)

end A093916

/-! ## A093916.P14275087059351651777

`A000265((n+1)²+1)+∑[n+1]-n`
-/

namespace A093916.P14275087059351651777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((n + 1) ^ 2 + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A093916.P14275087059351651777

namespace A093916

/-- `A000265((n+1)²+1)+∑[n+1]-n` -/
def P14275087059351651777.Spec : Prop :=
  ∀ n, P14275087059351651777.a n = A093916 (n + 1)

end A093916

/-! ## A093916.P16741397084820966057

`A000265((n+1)²+1)+A000124(n)`
-/

namespace A093916.P16741397084820966057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((n + 1) ^ 2 + 1) + A000124 n

end

end A093916.P16741397084820966057

namespace A093916

/-- `A000265((n+1)²+1)+A000124(n)` -/
def P16741397084820966057.Spec : Prop :=
  ∀ n, P16741397084820966057.a n = A093916 (n + 1)

end A093916

/-! ## A093916.P6916316602907347286

`A145051((n+1)²)+A000124(n)`
-/

namespace A093916.P6916316602907347286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 ((n + 1) ^ 2) + A000124 n

end

end A093916.P6916316602907347286

namespace A093916

/-- `A145051((n+1)²)+A000124(n)` -/
def P6916316602907347286.Spec : Prop :=
  ∀ n, P6916316602907347286.a n = A093916 (n + 1)

end A093916

/-!
# A093917: a(n) = n^3+n for odd n, (n^3+n)*3/2 for even n: Row sums of A093915.

The programs for A093917, the canonical program `A093917.P935864147353456527` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093917 has offset 1).

The definition of A093917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093917.P935864147353456527

`((n+1)²+1)*(∑[n]%(n+1)+n+1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A093917

/-- `((n+1)²+1)*(∑[n]%(n+1)+n+1)` -/
def P935864147353456527.Spec : Prop :=
  ∀ n, (P935864147353456527.a n : ℤ) = A093917 (n + 1)

theorem P935864147353456527.correct : P935864147353456527.Spec := by
  intro n
  simp only [A093917, Nat.add_sub_cancel]

end A093917

/-! ## A093917.P16792109734915694425

`((n+1)²+1)*Δ[A085787(n)]`
-/

namespace A093917.P16792109734915694425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A093917.P16792109734915694425

namespace A093917

/-- `((n+1)²+1)*Δ[A085787(n)]` -/
def P16792109734915694425.Spec : Prop :=
  ∀ n, P16792109734915694425.a n = A093917 (n + 1)

end A093917

/-! ## A093917.P12800386533686802143

`((n+1)²+1)*A080512(n+1)`
-/

namespace A093917.P12800386533686802143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + 1 : ℤ) * A080512 (n + 1)

end

end A093917.P12800386533686802143

namespace A093917

/-- `((n+1)²+1)*A080512(n+1)` -/
def P12800386533686802143.Spec : Prop :=
  ∀ n, P12800386533686802143.a n = A093917 (n + 1)

end A093917

/-! ## A093917.P9432859603319282319

`lcm((n+1)²+1, A080512(Δ[n²]-n))`
-/

namespace A093917.P9432859603319282319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1) ^ 2 + 1 : ℤ) (A080512 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A093917.P9432859603319282319

namespace A093917

/-- `lcm((n+1)²+1, A080512(Δ[n²]-n))` -/
def P9432859603319282319.Spec : Prop :=
  ∀ n, (P9432859603319282319.a n : ℤ) = A093917 (n + 1)

end A093917

/-! ## A093917.P15440591164220603252

`A020639(3*(n+2))*∑[∑[n+1]+n²]`
-/

namespace A093917.P15440591164220603252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * (n + 2)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A093917.P15440591164220603252

namespace A093917

/-- `A020639(3*(n+2))*∑[∑[n+1]+n²]` -/
def P15440591164220603252.Spec : Prop :=
  ∀ n, P15440591164220603252.a n = A093917 (n + 1)

end A093917

/-! ## A093917.P7283300953869999673

`Δ[A002817(n)]*A010693(n)`
-/

namespace A093917.P7283300953869999673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A010693 n

end

end A093917.P7283300953869999673

namespace A093917

/-- `Δ[A002817(n)]*A010693(n)` -/
def P7283300953869999673.Spec : Prop :=
  ∀ n, P7283300953869999673.a n = A093917 (n + 1)

end A093917

/-! ## A093917.P3979798003893303566

`A006530(or(n, -2)+4)*Δ[A002817(n)]`
-/

namespace A093917.P3979798003893303566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor (n : ℤ) (-2) + 4).toNat * (f1 (n + 1) - f1 n)

end

end A093917.P3979798003893303566

namespace A093917

/-- `A006530(or(n, -2)+4)*Δ[A002817(n)]` -/
def P3979798003893303566.Spec : Prop :=
  ∀ n, P3979798003893303566.a n = A093917 (n + 1)

end A093917

/-! ## A093917.P3555630300555153156

`((n+1)²+1)*A257143(n+1)`
-/

namespace A093917.P3555630300555153156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + 1 : ℤ) * A257143 (n + 1)

end

end A093917.P3555630300555153156

namespace A093917

/-- `((n+1)²+1)*A257143(n+1)` -/
def P3555630300555153156.Spec : Prop :=
  ∀ n, P3555630300555153156.a n = A093917 (n + 1)

end A093917

/-! ## A093917.P8641473744587576942

`A006003(n+1)*A158478(n+2)`
-/

namespace A093917.P8641473744587576942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (n + 1) * A158478 (n + 2)

end

end A093917.P8641473744587576942

namespace A093917

/-- `A006003(n+1)*A158478(n+2)` -/
def P8641473744587576942.Spec : Prop :=
  ∀ n, P8641473744587576942.a n = A093917 (n + 1)

end A093917

/-! ## A093917.P481951629239574916

`(A040001(n+1)+1)*A006003(n+1)`
-/

namespace A093917.P481951629239574916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040001 (n + 1) + 1) * A006003 (n + 1)

end

end A093917.P481951629239574916

namespace A093917

/-- `(A040001(n+1)+1)*A006003(n+1)` -/
def P481951629239574916.Spec : Prop :=
  ∀ n, P481951629239574916.a n = A093917 (n + 1)

end A093917

/-! ## A093917.P8706424461530607163

`(A085787(n+1)-A085787(n))*A002522(n+1)`
-/

namespace A093917.P8706424461530607163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085787 (n + 1) - A085787 n) * A002522 (n + 1)

end

end A093917.P8706424461530607163

namespace A093917

/-- `(A085787(n+1)-A085787(n))*A002522(n+1)` -/
def P8706424461530607163.Spec : Prop :=
  ∀ n, P8706424461530607163.a n = A093917 (n + 1)

end A093917

/-! ## A093917.P13550092351499548698

`∑[A005448(n+1)]*p?[A005679(n+1)]`
-/

namespace A093917.P13550092351499548698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A093917.P13550092351499548698

namespace A093917

/-- `∑[A005448(n+1)]*p?[A005679(n+1)]` -/
def P13550092351499548698.Spec : Prop :=
  ∀ n, P13550092351499548698.a n = A093917 (n + 1)

end A093917

/-! ## A093917.P8450239853661853659

`Δ[A001068(2*n+1)]*Δ[A002817(n)]`
-/

namespace A093917.P8450239853661853659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A093917.P8450239853661853659

namespace A093917

/-- `Δ[A001068(2*n+1)]*Δ[A002817(n)]` -/
def P8450239853661853659.Spec : Prop :=
  ∀ n, P8450239853661853659.a n = A093917 (n + 1)

end A093917

/-! ## A093917.P14629749718181827500

`((n+1)²+1)*A032742(3*(n+1))`
-/

namespace A093917.P14629749718181827500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + 1 : ℤ) * A032742 (3 * (n + 1))

end

end A093917.P14629749718181827500

namespace A093917

/-- `((n+1)²+1)*A032742(3*(n+1))` -/
def P14629749718181827500.Spec : Prop :=
  ∀ n, P14629749718181827500.a n = A093917 (n + 1)

end A093917

/-! ## A093917.P10073469217618847539

`Δ[A000217(A000217(n))]*A010693(n)`
-/

namespace A093917.P10073469217618847539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A010693 n

end

end A093917.P10073469217618847539

namespace A093917

/-- `Δ[A000217(A000217(n))]*A010693(n)` -/
def P10073469217618847539.Spec : Prop :=
  ∀ n, P10073469217618847539.a n = A093917 (n + 1)

end A093917

/-! ## A093917.P5159284807644397068

`(A176895(2*n)+1)*A000217((n+1)²)/(n+1)`
-/

namespace A093917.P5159284807644397068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A176895 (2 * n) + 1) * A000217 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A093917.P5159284807644397068

namespace A093917

/-- `(A176895(2*n)+1)*A000217((n+1)²)/(n+1)` -/
def P5159284807644397068.Spec : Prop :=
  ∀ n, P5159284807644397068.a n = (A093917 (n + 1) : ℚ)

end A093917

/-!
# A093918: a(2*k-1) = (2*k-1)^2+k, a(2*k) = 6*k^2+k+1: Last term in rows of triangle A093915.

The programs for A093918, the canonical program `A093918.P347913833131518906` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093918 has offset 1).

The definition of A093918 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093918.P347913833131518906

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=2, a(1)=8, a(2)=11, a(3)=27, a(4)=28, a(5)=58`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A093918

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P347913833131518906.Spec : Prop :=
  ∀ n, P347913833131518906.a n = A093918 (n + 1)

theorem P347913833131518906.correct : P347913833131518906.Spec := by
  intro n
  simp only [A093918, Nat.add_sub_cancel]

end A093918

/-! ## A093918.P10437966526497379732

`or(1, n+1)+lcm(n, n+2)+∑[n]+1`
-/

namespace A093918.P10437966526497379732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1) + Nat.lcm n (n + 2) + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A093918.P10437966526497379732

namespace A093918

/-- `or(1, n+1)+lcm(n, n+2)+∑[n]+1` -/
def P10437966526497379732.Spec : Prop :=
  ∀ n, (P10437966526497379732.a n : ℤ) = A093918 (n + 1)

end A093918

/-! ## A093918.P5329067130185118006

`A093916(n+1)+n`
-/

namespace A093918.P5329067130185118006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093916 (n + 1) + (n : ℤ)

end

end A093918.P5329067130185118006

namespace A093918

/-- `A093916(n+1)+n` -/
def P5329067130185118006.Spec : Prop :=
  ∀ n, P5329067130185118006.a n = A093918 (n + 1)

end A093918

/-! ## A093918.P15017279501030956952

`A080513(n)+(n+1)*A080512(n+1)`
-/

namespace A093918.P15017279501030956952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n + (n + 1 : ℤ) * A080512 (n + 1)

end

end A093918.P15017279501030956952

namespace A093918

/-- `A080513(n)+(n+1)*A080512(n+1)` -/
def P15017279501030956952.Spec : Prop :=
  ∀ n, P15017279501030956952.a n = A093918 (n + 1)

end A093918

/-! ## A093918.P5138379483075819888

`A228564(n+1)+∑[n+1]`
-/

namespace A093918.P5138379483075819888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228564 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A093918.P5138379483075819888

namespace A093918

/-- `A228564(n+1)+∑[n+1]` -/
def P5138379483075819888.Spec : Prop :=
  ∀ n, P5138379483075819888.a n = A093918 (n + 1)

end A093918

/-! ## A093918.P8053131032243013516

`A008619(n+1)+(n+1)*A257143(n+1)`
-/

namespace A093918.P8053131032243013516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) + (n + 1 : ℤ) * A257143 (n + 1)

end

end A093918.P8053131032243013516

namespace A093918

/-- `A008619(n+1)+(n+1)*A257143(n+1)` -/
def P8053131032243013516.Spec : Prop :=
  ∀ n, P8053131032243013516.a n = A093918 (n + 1)

end A093918

/-! ## A093918.P12313595820477557693

`A000124(n+1)+A000034(n)*A007590(n+1)`
-/

namespace A093918.P12313595820477557693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1) + A000034 n * A007590 (n + 1)

end

end A093918.P12313595820477557693

namespace A093918

/-- `A000124(n+1)+A000034(n)*A007590(n+1)` -/
def P12313595820477557693.Spec : Prop :=
  ∀ n, P12313595820477557693.a n = A093918 (n + 1)

end A093918

/-! ## A093918.P10214786276491302056

`A243883(2*(n+1))+A001971(2*n+3)`
-/

namespace A093918.P10214786276491302056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243883 (2 * (n + 1)) + A001971 (2 * n + 3)

end

end A093918.P10214786276491302056

namespace A093918

/-- `A243883(2*(n+1))+A001971(2*n+3)` -/
def P10214786276491302056.Spec : Prop :=
  ∀ n, P10214786276491302056.a n = A093918 (n + 1)

end A093918

/-! ## A093918.P17846322818176272523

`A000265((n+1)²+1)+∑[n+1]`
-/

namespace A093918.P17846322818176272523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((n + 1) ^ 2 + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A093918.P17846322818176272523

namespace A093918

/-- `A000265((n+1)²+1)+∑[n+1]` -/
def P17846322818176272523.Spec : Prop :=
  ∀ n, P17846322818176272523.a n = A093918 (n + 1)

end A093918

/-! ## A093918.P3050138948551229106

`A093411((n+1)²+1)+∑[n+1]`
-/

namespace A093918.P3050138948551229106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 ((n + 1) ^ 2 + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A093918.P3050138948551229106

namespace A093918

/-- `A093411((n+1)²+1)+∑[n+1]` -/
def P3050138948551229106.Spec : Prop :=
  ∀ n, P3050138948551229106.a n = A093918 (n + 1)

end A093918

/-! ## A093918.P12329993501098086548

`A342918((n+1)²)+∑[n+1]`
-/

namespace A093918.P12329993501098086548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342918 ((n + 1) ^ 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A093918.P12329993501098086548

namespace A093918

/-- `A342918((n+1)²)+∑[n+1]` -/
def P12329993501098086548.Spec : Prop :=
  ∀ n, P12329993501098086548.a n = A093918 (n + 1)

end A093918

/-! ## A093918.P5245339284989398647

`A145051((n+1)²)+∑[n+1]`
-/

namespace A093918.P5245339284989398647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 ((n + 1) ^ 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A093918.P5245339284989398647

namespace A093918

/-- `A145051((n+1)²)+∑[n+1]` -/
def P5245339284989398647.Spec : Prop :=
  ∀ n, P5245339284989398647.a n = A093918 (n + 1)

end A093918

/-! ## A093918.P17879596789347892541

`A080513(n)+A080512((n+1)²)`
-/

namespace A093918.P17879596789347892541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n + A080512 ((n + 1) ^ 2)

end

end A093918.P17879596789347892541

namespace A093918

/-- `A080513(n)+A080512((n+1)²)` -/
def P17879596789347892541.Spec : Prop :=
  ∀ n, P17879596789347892541.a n = A093918 (n + 1)

end A093918

/-! ## A093918.P4660963673510111662

`A080512((n+1)²)+A008619(n+1)`
-/

namespace A093918.P4660963673510111662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 ((n + 1) ^ 2) + A008619 (n + 1)

end

end A093918.P4660963673510111662

namespace A093918

/-- `A080512((n+1)²)+A008619(n+1)` -/
def P4660963673510111662.Spec : Prop :=
  ∀ n, P4660963673510111662.a n = A093918 (n + 1)

end A093918

/-!
# A093919: Consider the triangle in A004736, the k-th term of the n-th row is the LCM of the preceding k terms.

The programs for A093919, there is no canonical definition to state claims against.
-/

/-! ## A093919.P5700289485178188771

`A271410(A089633(n)+1)`
-/

namespace A093919.P5700289485178188771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 (A089633 n + 1).toNat

end

end A093919.P5700289485178188771

/-! ## A093919.P17904534972386690530

`A271410(A023758(n+2))`
-/

namespace A093919.P17904534972386690530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 (A023758 (n + 2)).toNat

end

end A093919.P17904534972386690530

/-! ## A093919.P10773942862781207810

`A271410(eq[1, A069010(n)])`
-/

namespace A093919.P10773942862781207810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A093919.P10773942862781207810

/-! ## A093919.P725811789453228549

`A271410(∑[A057728(n+1)])`
-/

namespace A093919.P725811789453228549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093919.P725811789453228549

/-! ## A093919.P16478042554515237541

`A271410(record[A059893(n+1)])`
-/

namespace A093919.P16478042554515237541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A093919.P16478042554515237541

/-! ## A093919.P1562110240579775490

`A271410(record[A139708(n+1)])`
-/

namespace A093919.P1562110240579775490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A093919.P1562110240579775490

/-! ## A093919.P10651282389263171342

`A271410(A043569(n+1)/2)`
-/

namespace A093919.P10651282389263171342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 (SequenceMachineLib.roundAway ((A043569 (n + 1) : ℚ) / 2)).toNat

end

end A093919.P10651282389263171342

/-!
# A093920: Row sums of A093919.

The programs for A093920, there is no canonical definition to state claims against.
-/

/-! ## A093920.P7002143820051317881

`(n+1)*A332435(3^n)`
-/

namespace A093920.P7002143820051317881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A332435 (3 ^ n)

end

end A093920.P7002143820051317881

/-!
# A093921: a(1) = 1; for n > 1, a(n) = curling number of (b(1),...,b(n-1)), where b() = Kolakoski sequence A000002.

The programs for A093921, there is no canonical definition to state claims against.
-/

/-! ## A093921.P13879164321926823695

`A294647(A326774(n)+A296659(3*n+5))`
-/

namespace A093921.P13879164321926823695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294647 (A326774 n + A296659 (3 * n + 5)).toNat

end

end A093921.P13879164321926823695

/-! ## A093921.P3703211579249327959

`A063014(or(A107631(3*n+1), A125022(n+1)))`
-/

namespace A093921.P3703211579249327959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 (Int.lor (A107631 (3 * n + 1)) (A125022 (n + 1))).toNat

end

end A093921.P3703211579249327959

/-! ## A093921.P8514272166524079376

`A378282(A137409(3*n+4)-2)`
-/

namespace A093921.P8514272166524079376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378282 (A137409 (3 * n + 4) - 2).toNat

end

end A093921.P8514272166524079376

/-! ## A093921.P819810809003607093

`A000034(A192242(n+5)%A166247(n+1))`
-/

namespace A093921.P819810809003607093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (Int.tmod (A192242 (n + 5)) (A166247 (n + 1))).toNat

end

end A093921.P819810809003607093

/-! ## A093921.P5984368746872995786

`A289074(A270702(n+5))+1`
-/

namespace A093921.P5984368746872995786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289074 (A270702 (n + 5)).toNat + 1

end

end A093921.P5984368746872995786

/-!
# A093923: Leading diagonal of triangle A093922.

The programs for A093923, there is no canonical definition to state claims against.
-/

/-! ## A093923.P15218382251193900353

`A093922(∑[n+1])`
-/

namespace A093923.P15218382251193900353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093922 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093923.P15218382251193900353

/-! ## A093923.P13721840842666159501

`p?[A093922(∑[A005555(n)])]`
-/

namespace A093923.P13721840842666159501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093922 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093923.P13721840842666159501

/-! ## A093923.P12149157605281165701

`p?[A093922(∑[A077168(n)])]`
-/

namespace A093923.P12149157605281165701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093922 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093923.P12149157605281165701

/-! ## A093923.P17043581303047126523

`p?[A093922(∑[A256079(n)])]`
-/

namespace A093923.P17043581303047126523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093922 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093923.P17043581303047126523

/-! ## A093923.P8229123045166774603

`p?[A093922(Δ[A000292(n)])]`
-/

namespace A093923.P8229123045166774603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093922 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093923.P8229123045166774603

/-!
# A093924: First column of triangle A093922.

The programs for A093924, there is no canonical definition to state claims against.
-/

/-! ## A093924.P2251625708856980292

`A093922(∑[n]+1)`
-/

namespace A093924.P2251625708856980292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093922 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A093924.P2251625708856980292

/-! ## A093924.P9215004948224130282

`p?[A093922(A000124(n))]`
-/

namespace A093924.P9215004948224130282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093922 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093924.P9215004948224130282

/-! ## A093924.P7760911400277760232

`p?[A093922(sqrt(A086601(n)))]`
-/

namespace A093924.P7760911400277760232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093922 (SequenceMachineLib.roundAway (Real.sqrt (A086601 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093924.P7760911400277760232

/-! ## A093924.P9864195105080248398

`p?[A093922(∑[A028310(n)])]`
-/

namespace A093924.P9864195105080248398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093922 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093924.P9864195105080248398

/-! ## A093924.P7225377535971951256

`p?[A093922(∑[A118541(n)])]`
-/

namespace A093924.P7225377535971951256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093922 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093924.P7225377535971951256

/-!
# A093925: Row sums of triangle A093922.

The programs for A093925, there is no canonical definition to state claims against.
-/

/-! ## A093925.P15967808148453701345

`record[abs(A122432(A298830(n+1)))]`
-/

namespace A093925.P15967808148453701345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122432 (A298830 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093925.P15967808148453701345

/-!
# A093927: n-th root of the n-th partial sum of A093355.

The programs for A093927, there is no canonical definition to state claims against.
-/

/-! ## A093927.P9246670052104557198

`root(∑[A093355(n+1)], n+1)`
-/

namespace A093927.P9246670052104557198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093355 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (n + 1 : ℝ))

end

end A093927.P9246670052104557198

/-!
# A093930: Primes arising as A093929(n)*A093929(n+1)+2.

The programs for A093930, there is no canonical definition to state claims against.
-/

/-! ## A093930.P11059673115960481401

`A093929(n+1)*A093929(n+2)+2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A093930.P11059673115960481401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093929 (n + 1) * A093929 (n + 2) + 2

end

end A093930.P11059673115960481401

/-! ## A093930.P15409105216625168052

`A151800(A093929(n+1)*A093929(n+2))`
-/

namespace A093930.P15409105216625168052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A093929 (n + 1) * A093929 (n + 2)).toNat

end

end A093930.P15409105216625168052

/-!
# A093933: a(1) = 3; for n >= 1, a(n+1) is the least odd prime not already used such that abs(a(n+1)-a(n)) is a multiple of prime(n).

The programs for A093933, there is no canonical definition to state claims against.
-/

/-! ## A093933.P9335454156201713112

`A006530(∑[or(9, A112833(n))])`
-/

namespace A093933.P9335454156201713112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 9 (A112833 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093933.P9335454156201713112

/-! ## A093933.P9183588178393855271

`A184162(A030915(n+1))+2`
-/

namespace A093933.P9183588178393855271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184162 (A030915 (n + 1)).toNat + 2

end

end A093933.P9183588178393855271

/-!
# A093934: Number of equivalence classes of unlabeled tournaments with n signed nodes.

The programs for A093934, there is no canonical definition to state claims against.
-/

/-! ## A093934.P3271167032438449997

`A087086(a(n-1)+n-1)` with `a(0)=1, a(1)=2`
-/

namespace A093934.P3271167032438449997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A087086 (a (n - 1) + ((n : ℤ) - 1)).toNat

end

end A093934.P3271167032438449997

/-! ## A093934.P13738089985241758688

`A087086(xor(n-1, a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A093934.P13738089985241758688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A087086 (Int.xor ((n : ℤ) - 1) (a (n - 1))).toNat

end

end A093934.P13738089985241758688

/-!
# A093935: a(1) = 1, a(n+1) = a(n) + n*(a(1) + a(2) + ... + a(n)).

The programs for A093935, there is no canonical definition to state claims against.
-/

/-! ## A093935.P16288215481207164085

`Δ[(n+1)*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A093935.P16288215481207164085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (n + 1 : ℤ) * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093935.P16288215481207164085

/-! ## A093935.P6552825423045649981

`A056922(2*n)`
-/

namespace A093935.P6552825423045649981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056922 (2 * n)

end

end A093935.P6552825423045649981

/-! ## A093935.P3020997406391647674

`record[A056922(A056944(n))]`
-/

namespace A093935.P3020997406391647674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056922 (A056944 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093935.P3020997406391647674

/-! ## A093935.P8981270869040335235

`record[A056922(A348717(n+1))]`
-/

namespace A093935.P8981270869040335235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056922 (A348717 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093935.P8981270869040335235

/-! ## A093935.P11789270592294643339

`A273939(2*n)-A056921(2*n)`
-/

namespace A093935.P11789270592294643339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273939 (2 * n) - A056921 (2 * n)

end

end A093935.P11789270592294643339

/-! ## A093935.P2901940248924002764

`A056922(A005843(n))%(Δ[(n+1)!]+1)`
-/

namespace A093935.P2901940248924002764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056922 (A005843 n).toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1)

end

end A093935.P2901940248924002764

/-!
# A093942: Primes of the form 6*10^k + 7*R_k, where R_k is the repunit (A002275) of length k.

The programs for A093942, there is no canonical definition to state claims against.
-/

/-! ## A093942.P11768553958307300884

`A090154(∑[A112377(n+1)])`
-/

namespace A093942.P11768553958307300884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090154 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093942.P11768553958307300884

/-!
# A093943: 

The programs for A093943, there is no canonical definition to state claims against.
-/

/-! ## A093943.P1244667698790506320

`A108835(∑[char[n²]+1])`
-/

namespace A093943.P1244667698790506320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108835 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093943.P1244667698790506320

/-!
# A093944: 

The programs for A093944, there is no canonical definition to state claims against.
-/

/-! ## A093944.P10575695675093099127

`A090157(A105808(n+2)-A112316(n))`
-/

namespace A093944.P10575695675093099127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090157 (A105808 (n + 2) - A112316 n).toNat

end

end A093944.P10575695675093099127

/-!
# A093945: Primes of the form 5*10^n - 1.

The programs for A093945, there is no canonical definition to state claims against.
-/

/-! ## A093945.P10345691673664986009

`A086940(A295988(n+1))/4`
-/

namespace A093945.P10345691673664986009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086940 (A295988 (n + 1)).toNat : ℚ) / 4

end

end A093945.P10345691673664986009

/-!
# A093946: Primes of the form 6*10^k - 1.

The programs for A093946, there is no canonical definition to state claims against.
-/

/-! ## A093946.P8831497944298305474

`6*10^A056716(n+1)-1`
-/

namespace A093946.P8831497944298305474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * (10 : ℚ) ^ (A056716 (n + 1) : ℤ) - 1

end

end A093946.P8831497944298305474

/-! ## A093946.P7852771786861962565

`A099151(A056716(n+1)+1)`
-/

namespace A093946.P7852771786861962565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099151 (A056716 (n + 1) + 1).toNat

end

end A093946.P7852771786861962565

/-! ## A093946.P6447021331903148897

`∩[A090153(n+1), A099151(n+1)]`
-/

namespace A093946.P6447021331903148897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093946.P6447021331903148897

/-! ## A093946.P6224046986610524314

`∪[A099151(3*n+2), p?[6*10^n-1]]`
-/

namespace A093946.P6224046986610524314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099151 (3 * n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * 10 ^ n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093946.P6224046986610524314

/-!
# A093947: Primes of the form 8*10^k - 1.

The programs for A093947, there is no canonical definition to state claims against.
-/

/-! ## A093947.P13624413148287986928

`8*10^A056721(n+1)-1`
-/

namespace A093947.P13624413148287986928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * (10 : ℚ) ^ (A056721 (n + 1) : ℤ) - 1

end

end A093947.P13624413148287986928

/-! ## A093947.P18310508845827499484

`A199689(A056721(n+1))-2`
-/

namespace A093947.P18310508845827499484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199689 (A056721 (n + 1)).toNat - 2

end

end A093947.P18310508845827499484

/-!
# A093950: Expansion of 1 / (chi(-x) * chi(-x^7)) in powers of x where chi() is a Ramanujan theta function.

The programs for A093950, there is no canonical definition to state claims against.
-/

/-! ## A093950.P2329232375892629580

`(-1)^n*A246762(n)`
-/

namespace A093950.P2329232375892629580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A246762 n

end

end A093950.P2329232375892629580

/-! ## A093950.P12211646342445733576

`A112212(2*n+1)`
-/

namespace A093950.P12211646342445733576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112212 (2 * n + 1)

end

end A093950.P12211646342445733576

/-! ## A093950.P4848990823029265542

`-A102314(2*n+1)`
-/

namespace A093950.P4848990823029265542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A102314 (2 * n + 1)

end

end A093950.P4848990823029265542

/-! ## A093950.P636831769702394501

`abs(A246762(n))`
-/

namespace A093950.P636831769702394501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246762 n|

end

end A093950.P636831769702394501

/-! ## A093950.P11154388225126105176

`gcd(A000038(n), A246762(n))`
-/

namespace A093950.P11154388225126105176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A246762 n)

end

end A093950.P11154388225126105176

/-! ## A093950.P18194352242592547537

`lcm(A020985(n), A246762(n))`
-/

namespace A093950.P18194352242592547537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A246762 n)

end

end A093950.P18194352242592547537

/-! ## A093950.P5414534700934188852

`abs(A102314(Δ[n²]))`
-/

namespace A093950.P5414534700934188852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A102314 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A093950.P5414534700934188852

/-! ## A093950.P16922379103817306415

`A000007(n+1)-A102314(2*n+1)`
-/

namespace A093950.P16922379103817306415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A102314 (2 * n + 1)

end

end A093950.P16922379103817306415

/-! ## A093950.P9403762327770348735

`A000038(n+1)-A102314(2*n+1)`
-/

namespace A093950.P9403762327770348735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A102314 (2 * n + 1)

end

end A093950.P9403762327770348735

/-! ## A093950.P17095130578878934180

`lcm(A008836(n+2), A102314(2*n+1))`
-/

namespace A093950.P17095130578878934180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 2)) (A102314 (2 * n + 1))

end

end A093950.P17095130578878934180

/-! ## A093950.P13780008102744511359

`A007814(2*n+1)-A102314(2*n+1)`
-/

namespace A093950.P13780008102744511359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1) - A102314 (2 * n + 1)

end

end A093950.P13780008102744511359

/-! ## A093950.P9674313955395460471

`1-(A102314(2*n+1)+A033999(2*n))`
-/

namespace A093950.P9674313955395460471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A102314 (2 * n + 1) + A033999 (2 * n))

end

end A093950.P9674313955395460471

/-! ## A093950.P4723503882920860271

`1-(A102314(2*n+1)+A059841(2*n))`
-/

namespace A093950.P4723503882920860271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A102314 (2 * n + 1) + A059841 (2 * n))

end

end A093950.P4723503882920860271

/-! ## A093950.P2513065385399742611

`lcm(A102314(2*n+1), A102314(A005408(n)))`
-/

namespace A093950.P2513065385399742611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A102314 (2 * n + 1)) (A102314 (A005408 n).toNat)

end

end A093950.P2513065385399742611

/-! ## A093950.P12256682012235011774

`gcd(A102314(2*n+1)*A102314(n+1), A102314(2*n+1))`
-/

namespace A093950.P12256682012235011774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102314 (2 * n + 1) * A102314 (n + 1)) (A102314 (2 * n + 1))

end

end A093950.P12256682012235011774

/-! ## A093950.P11684952518118891173

`A020985(2*n)-(A102314(2*n+1)+A020985(4*n))`
-/

namespace A093950.P11684952518118891173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (2 * n) - (A102314 (2 * n + 1) + A020985 (4 * n))

end

end A093950.P11684952518118891173

/-!
# A093951: Sum of integers generated by n-1 substitutions, starting with 1, k -> k+1, k-1, .., 1.

The programs for A093951, there is no canonical definition to state claims against.
-/

/-! ## A093951.P10774021405455386728

`A084081(n)+A047749(n+1)`
-/

namespace A093951.P10774021405455386728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084081 n + A047749 (n + 1)

end

end A093951.P10774021405455386728

/-! ## A093951.P16498237460290901429

`A084081(n)+abs(A134565(n+1))`
-/

namespace A093951.P16498237460290901429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084081 n + |A134565 (n + 1)|

end

end A093951.P16498237460290901429

/-! ## A093951.P12087518618618913565

`A047750(n+1)-A047749(n+1)`
-/

namespace A093951.P12087518618618913565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047750 (n + 1) - A047749 (n + 1)

end

end A093951.P12087518618618913565

/-! ## A093951.P1794767656870209909

`A084081(n)+A047773(3*n+4)`
-/

namespace A093951.P1794767656870209909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084081 n + A047773 (3 * n + 4)

end

end A093951.P1794767656870209909

/-! ## A093951.P4810455183189199587

`A047750(n+1)-A116637(n+1)/2`
-/

namespace A093951.P4810455183189199587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047750 (n + 1) : ℚ) - (A116637 (n + 1) : ℚ) / 2

end

end A093951.P4810455183189199587

/-!
# A093952: Partition number A000041(n) mod n.

The programs for A093952, there is no canonical definition to state claims against.
-/

/-! ## A093952.P8700447984808049113

`A000041(n+1)%(n+1)`
-/

namespace A093952.P8700447984808049113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (n + 1)) (n + 1 : ℤ)

end

end A093952.P8700447984808049113

/-! ## A093952.P13771558861981415453

`A133041(n+1)%(n+1)`
-/

namespace A093952.P13771558861981415453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133041 (n + 1)) (n + 1 : ℤ)

end

end A093952.P13771558861981415453

/-! ## A093952.P13438558181858779863

`A168015(n+1)%(n+1)`
-/

namespace A093952.P13438558181858779863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168015 (n + 1)) (n + 1 : ℤ)

end

end A093952.P13438558181858779863

/-! ## A093952.P4385274916590641953

`A000094(n+2)%(n+1)`
-/

namespace A093952.P4385274916590641953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000094 (n + 2)) (n + 1 : ℤ)

end

end A093952.P4385274916590641953

/-! ## A093952.P4253715096292357373

`∑[A187219(n+1)]%(n+1)`
-/

namespace A093952.P4253715096292357373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A093952.P4253715096292357373

/-! ## A093952.P9304412672952551186

`(∑[A002865(n+1)]+1)%(n+1)`
-/

namespace A093952.P9304412672952551186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 1) (n + 1 : ℤ)

end

end A093952.P9304412672952551186

/-! ## A093952.P14614039069400696963

`Δ[A000070(n)]%(n+1)`
-/

namespace A093952.P14614039069400696963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A093952.P14614039069400696963

/-! ## A093952.P6225271355147304909

`A228816(n+2)%(n+1)`
-/

namespace A093952.P6225271355147304909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228816 (n + 2)) (n + 1 : ℤ)

end

end A093952.P6225271355147304909

/-! ## A093952.P17979671752162893768

`Δ[A025065(2*n)]%(n+1)`
-/

namespace A093952.P17979671752162893768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A093952.P17979671752162893768

/-! ## A093952.P4877849950217885980

`A194451(2*n+1)%(n+1)`
-/

namespace A093952.P4877849950217885980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194451 (2 * n + 1)) (n + 1 : ℤ)

end

end A093952.P4877849950217885980

/-! ## A093952.P17781964405012659334

`record[A035363(n)]%(n+1)`
-/

namespace A093952.P17781964405012659334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A093952.P17781964405012659334

/-! ## A093952.P4357029221325511022

`record[A035444(n)]%(n+1)`
-/

namespace A093952.P4357029221325511022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A093952.P4357029221325511022

/-! ## A093952.P13681597122595406220

`A299200(A001749(n+1))%(n+1)`
-/

namespace A093952.P13681597122595406220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299200 (A001749 (n + 1)).toNat) (n + 1 : ℤ)

end

end A093952.P13681597122595406220

/-! ## A093952.P14030006148611853579

`A026807(∑[n]+1)%(n+1)`
-/

namespace A093952.P14030006148611853579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026807 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (n + 1 : ℤ)

end

end A093952.P14030006148611853579

/-! ## A093952.P4051767895099995932

`record[A026807(n+1)]%(n+1)`
-/

namespace A093952.P4051767895099995932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A093952.P4051767895099995932

/-! ## A093952.P15288741560538851432

`record[A194543(n)]%(n+1)`
-/

namespace A093952.P15288741560538851432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A093952.P15288741560538851432

/-!
# A093953: a(n) = rightmost term in M^n * [1,1,1], where M = a 3 X 3 matrix composed of the first 3 rows of A050166 (fill in the matrix with zeros): = [1 0 0 / 1 2 0 / 1 4 5].

The programs for A093953, the canonical program `A093953.P7206756647376839084` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093953 has offset 0).

The definition of A093953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093953.P7206756647376839084

`∑[2^(n+1)+5*a(n-1)]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A093953

/-- `∑[2^(n+1)+5*a(n-1)]` -/
def P7206756647376839084.Spec : Prop :=
  ∀ n, (P7206756647376839084.a n : ℤ) = A093953 n

theorem P7206756647376839084.correct : P7206756647376839084.Spec := by
  intro n
  simp only [A093953]

end A093953

/-! ## A093953.P9292534951794688806

`∑[lcm(5, a(n-1))+2^(n+1)]` with `a(0)=1`
-/

namespace A093953.P9292534951794688806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm 5 (f1 (n - 1)) + 2 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093953.P9292534951794688806

namespace A093953

/-- `∑[lcm(5, a(n-1))+2^(n+1)]` -/
def P9292534951794688806.Spec : Prop :=
  ∀ n, (P9292534951794688806.a n : ℤ) = A093953 n

end A093953

/-! ## A093953.P6892264620586034383

`5*a(n-1)+2^(n+2)-3` with `a(0)=1`
-/

namespace A093953.P6892264620586034383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + ((2 ^ (n + 2) : ℤ) - 3)

end

end A093953.P6892264620586034383

namespace A093953

/-- `5*a(n-1)+2^(n+2)-3` -/
def P6892264620586034383.Spec : Prop :=
  ∀ n, P6892264620586034383.a n = A093953 n

end A093953

/-! ## A093953.P3297804842263630956

`∑[5*a(n-1)-(1-A048578(n))]` with `a(0)=1`
-/

namespace A093953.P3297804842263630956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  5 * f1 (n - 1) - (1 - A048578 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093953.P3297804842263630956

namespace A093953

/-- `∑[5*a(n-1)-(1-A048578(n))]` -/
def P3297804842263630956.Spec : Prop :=
  ∀ n, P3297804842263630956.a n = A093953 n

end A093953

/-! ## A093953.P1831975126329286485

`a(n-1)+A117617(n)+a(n-1)` with `a(0)=1`
-/

namespace A093953.P1831975126329286485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A117617 n + a (n - 1))

end

end A093953.P1831975126329286485

namespace A093953

/-- `a(n-1)+A117617(n)+a(n-1)` -/
def P1831975126329286485.Spec : Prop :=
  ∀ n, P1831975126329286485.a n = A093953 n

end A093953

/-! ## A093953.P7118587824587623176

`∑[A016198(n)+A003463(n)]`
-/

namespace A093953.P7118587824587623176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016198 n + A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093953.P7118587824587623176

namespace A093953

/-- `∑[A016198(n)+A003463(n)]` -/
def P7118587824587623176.Spec : Prop :=
  ∀ n, P7118587824587623176.a n = A093953 n

end A093953

/-! ## A093953.P12809723240105408196

`A016127(n)+∑[A005057(n)]`
-/

namespace A093953.P12809723240105408196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016127 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093953.P12809723240105408196

namespace A093953

/-- `A016127(n)+∑[A005057(n)]` -/
def P12809723240105408196.Spec : Prop :=
  ∀ n, P12809723240105408196.a n = A093953 n

end A093953

/-!
# A093955: a(n) = A090822(n) - 1.

The programs for A093955, there is no canonical definition to state claims against.
-/

/-! ## A093955.P8543957900379328822

`A090822(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A093955.P8543957900379328822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (n + 1) - 1

end

end A093955.P8543957900379328822

/-! ## A093955.P15791509496209172214

`∑[A091586(floor(acot(n)+n))]`
-/

namespace A093955.P15791509496209172214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091586 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093955.P15791509496209172214

/-! ## A093955.P5973832061501664045

`A091586(n)+a(n-1)` with `a(0)=0`
-/

namespace A093955.P5973832061501664045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A091586 n + a (n - 1)

end

end A093955.P5973832061501664045

/-! ## A093955.P946591934892104638

`11%A090822(abs(xor(n, -1)))`
-/

namespace A093955.P946591934892104638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 11 (A090822 |Int.xor (n : ℤ) (-1)|.toNat)

end

end A093955.P946591934892104638

/-! ## A093955.P7852660456037002863

`∑[A091586(round(sqrt(n²+1)))]`
-/

namespace A093955.P7852660456037002863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091586 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093955.P7852660456037002863

/-! ## A093955.P9020994964185962425

`∑[A091586(abs(1-n)+1)]-1`
-/

namespace A093955.P9020994964185962425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091586 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A093955.P9020994964185962425

/-! ## A093955.P8014583955738364075

`A001538(n)%A090822(n+1)`
-/

namespace A093955.P8014583955738364075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A090822 (n + 1))

end

end A093955.P8014583955738364075

/-! ## A093955.P6945440972895502462

`A002146(n)%A090822(n+1)`
-/

namespace A093955.P6945440972895502462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002146 n) (A090822 (n + 1))

end

end A093955.P6945440972895502462

/-! ## A093955.P11665134534347733063

`A002148(n)%A090822(n+1)`
-/

namespace A093955.P11665134534347733063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 n) (A090822 (n + 1))

end

end A093955.P11665134534347733063

/-! ## A093955.P7397095525923628155

`A017653(n)%A090822(n+1)`
-/

namespace A093955.P7397095525923628155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017653 n) (A090822 (n + 1))

end

end A093955.P7397095525923628155

/-! ## A093955.P11748685846026733226

`A017655(n)%A090822(n+1)`
-/

namespace A093955.P11748685846026733226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017655 n) (A090822 (n + 1))

end

end A093955.P11748685846026733226

/-! ## A093955.P15407833312320593766

`A017657(n)%A090822(n+1)`
-/

namespace A093955.P15407833312320593766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017657 n) (A090822 (n + 1))

end

end A093955.P15407833312320593766

/-! ## A093955.P17018561438525740877

`A033300(n)%A090822(n+1)`
-/

namespace A093955.P17018561438525740877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033300 n) (A090822 (n + 1))

end

end A093955.P17018561438525740877

/-! ## A093955.P12159068775913475651

`A119859(n+1)%A090822(n+1)`
-/

namespace A093955.P12159068775913475651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119859 (n + 1)) (A090822 (n + 1))

end

end A093955.P12159068775913475651

/-! ## A093955.P12394838076297814758

`Δ[A091413(n)]-1`
-/

namespace A093955.P12394838076297814758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A093955.P12394838076297814758

/-! ## A093955.P12321729284875895878

`A349029(n+1)%A090822(n+1)`
-/

namespace A093955.P12321729284875895878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349029 (n + 1)) (A090822 (n + 1))

end

end A093955.P12321729284875895878

/-! ## A093955.P15308926576953119047

`A171389(n)%A090822(n+1)`
-/

namespace A093955.P15308926576953119047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171389 n) (A090822 (n + 1))

end

end A093955.P15308926576953119047

/-! ## A093955.P17811070004649103424

`A248877(n+1)%A090822(n+1)`
-/

namespace A093955.P17811070004649103424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248877 (n + 1)) (A090822 (n + 1))

end

end A093955.P17811070004649103424

/-! ## A093955.P13940297821376695151

`A074494(n+1)%A090822(n+1)`
-/

namespace A093955.P13940297821376695151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074494 (n + 1)) (A090822 (n + 1))

end

end A093955.P13940297821376695151

/-! ## A093955.P7131327807313765662

`A239716(n+1)%A090822(n+1)`
-/

namespace A093955.P7131327807313765662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239716 (n + 1)) (A090822 (n + 1))

end

end A093955.P7131327807313765662

/-!
# A093956: A091787(n) - 2.

The programs for A093956, there is no canonical definition to state claims against.
-/

/-! ## A093956.P3420869569856376629

`A091787(n+1)-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A093956.P3420869569856376629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091787 (n + 1) - 2

end

end A093956.P3420869569856376629

/-! ## A093956.P10280988314978103501

`10%A091787(A000027(n+1))`
-/

namespace A093956.P10280988314978103501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 10 (A091787 (A000027 (n + 1)).toNat)

end

end A093956.P10280988314978103501

/-! ## A093956.P4835616011275692755

`A010715(n)%A091787(n+1)`
-/

namespace A093956.P4835616011275692755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010715 n) (A091787 (n + 1))

end

end A093956.P4835616011275692755

/-! ## A093956.P13409793383961423101

`A016957(n)%A091787(n+1)`
-/

namespace A093956.P13409793383961423101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016957 n) (A091787 (n + 1))

end

end A093956.P13409793383961423101

/-! ## A093956.P5213678371590224401

`A017641(n)%A091787(n+1)`
-/

namespace A093956.P5213678371590224401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017641 n) (A091787 (n + 1))

end

end A093956.P5213678371590224401

/-! ## A093956.P5806305185382884550

`A040383(n)%A091787(n+1)`
-/

namespace A093956.P5806305185382884550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040383 n) (A091787 (n + 1))

end

end A093956.P5806305185382884550

/-! ## A093956.P5983767396542788589

`A050871(n)%A091787(n+1)`
-/

namespace A093956.P5983767396542788589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050871 n) (A091787 (n + 1))

end

end A093956.P5983767396542788589

/-! ## A093956.P15758833400120611355

`A080643(n)%A091787(n+1)`
-/

namespace A093956.P15758833400120611355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080643 n) (A091787 (n + 1))

end

end A093956.P15758833400120611355

/-! ## A093956.P9093496030328363688

`A117862(n)%A091787(n+1)`
-/

namespace A093956.P9093496030328363688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117862 n) (A091787 (n + 1))

end

end A093956.P9093496030328363688

/-! ## A093956.P14799388123208174272

`A153480(n)%A091787(n+1)`
-/

namespace A093956.P14799388123208174272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153480 n) (A091787 (n + 1))

end

end A093956.P14799388123208174272

/-!
# A093957: A091799(n) - 3.

The programs for A093957, the canonical program `A093957.P8179048002718482046` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093957 has offset 1).

The definition of A093957 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091799, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A093957.P8179048002718482046

`A091799(n+1)-3`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A093957

/-- `A091799(n+1)-3` -/
def P8179048002718482046.Spec : Prop :=
  ∀ n, P8179048002718482046.a n = A093957 (n + 1)

theorem P8179048002718482046.correct : P8179048002718482046.Spec := by
  intro n
  simp only [A093957, Nat.add_sub_cancel]

end A093957

/-! ## A093957.P11595876031192208692

`char[comp[a(floor(n/4))+n]]` with `a(0)=0`
-/

namespace A093957.P11595876031192208692
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 4⌋.toNat + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A093957.P11595876031192208692

namespace A093957

/-- `char[comp[a(floor(n/4))+n]]` -/
def P11595876031192208692.Spec : Prop :=
  ∀ n, (P11595876031192208692.a n : ℤ) = A093957 (n + 1)

end A093957

/-! ## A093957.P14207512755381350753

`1-char[a(floor(n/4))+n]` with `a(0)=0`
-/

namespace A093957.P14207512755381350753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 4⌋.toNat + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A093957.P14207512755381350753

namespace A093957

/-- `1-char[a(floor(n/4))+n]` -/
def P14207512755381350753.Spec : Prop :=
  ∀ n, P14207512755381350753.a n = A093957 (n + 1)

end A093957

/-! ## A093957.P7835292768483668513

`xor(1, char[a(floor(n/4))+n])` with `a(0)=0`
-/

namespace A093957.P7835292768483668513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 4⌋.toNat + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A093957.P7835292768483668513

namespace A093957

/-- `xor(1, char[a(floor(n/4))+n])` -/
def P7835292768483668513.Spec : Prop :=
  ∀ n, (P7835292768483668513.a n : ℤ) = A093957 (n + 1)

end A093957

/-! ## A093957.P4485460949606933928

`char[comp[val(n, 4)-a(n-1)]]` with `a(0)=0`
-/

namespace A093957.P4485460949606933928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (SequenceMachineLib.valuation n 4 : ℤ) - f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A093957.P4485460949606933928

namespace A093957

/-- `char[comp[val(n, 4)-a(n-1)]]` -/
def P4485460949606933928.Spec : Prop :=
  ∀ n, (P4485460949606933928.a n : ℤ) = A093957 (n + 1)

end A093957

/-! ## A093957.P16722441820331424301

`1-char[-(a(n-1)+val(n, 4))]` with `a(0)=0`
-/

namespace A093957.P16722441820331424301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  -(f1 (n - 1) + (SequenceMachineLib.valuation n 4 : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A093957.P16722441820331424301

namespace A093957

/-- `1-char[-(a(n-1)+val(n, 4))]` -/
def P16722441820331424301.Spec : Prop :=
  ∀ n, P16722441820331424301.a n = A093957 (n + 1)

end A093957

/-! ## A093957.P7944544258419804565

`1-char[floor(a(n-1)+val(n, 4))]` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A093957.P7944544258419804565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A093957.P7944544258419804565

namespace A093957

/-- `1-char[floor(a(n-1)+val(n, 4))]` -/
def P7944544258419804565.Spec : Prop :=
  ∀ n, P7944544258419804565.a n = A093957 (n + 1)

end A093957

/-! ## A093957.P13468809225045605874

`1-char[record[val(n, 4)-a(n-1)]]` with `a(0)=0`
-/

namespace A093957.P13468809225045605874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (SequenceMachineLib.valuation n 4 : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A093957.P13468809225045605874

namespace A093957

/-- `1-char[record[val(n, 4)-a(n-1)]]` -/
def P13468809225045605874.Spec : Prop :=
  ∀ n, P13468809225045605874.a n = A093957 (n + 1)

end A093957

/-! ## A093957.P6779769089839348003

`char[comp[A054893(n)]]`
-/

namespace A093957.P6779769089839348003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054893 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A093957.P6779769089839348003

namespace A093957

/-- `char[comp[A054893(n)]]` -/
def P6779769089839348003.Spec : Prop :=
  ∀ n, (P6779769089839348003.a n : ℤ) = A093957 (n + 1)

end A093957

/-! ## A093957.P8790518793727244447

`char[comp[A087069(n)]]`
-/

namespace A093957.P8790518793727244447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087069 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A093957.P8790518793727244447

namespace A093957

/-- `char[comp[A087069(n)]]` -/
def P8790518793727244447.Spec : Prop :=
  ∀ n, (P8790518793727244447.a n : ℤ) = A093957 (n + 1)

end A093957

/-!
# A093958: a(n) = A091844(n) - 4.

The programs for A093958, there is no canonical definition to state claims against.
-/

/-! ## A093958.P17908019740318816162

`A091844(n+1)-4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A093958.P17908019740318816162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091844 (n + 1) - 4

end

end A093958.P17908019740318816162

/-! ## A093958.P10433135681579991533

`val(gcd(6, (n+1)%31), 6)`
-/

namespace A093958.P10433135681579991533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.gcd 6 ((n + 1) % 31)) 6

end

end A093958.P10433135681579991533

/-! ## A093958.P1102583512875059718

`char[comp[a(floor(n/5))+n]]` with `a(0)=0`
-/

namespace A093958.P1102583512875059718
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 5⌋.toNat + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A093958.P1102583512875059718

/-! ## A093958.P14241344898720163646

`1-char[a(floor(n/5))+n]` with `a(0)=0`
-/

namespace A093958.P14241344898720163646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 5⌋.toNat + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A093958.P14241344898720163646

/-! ## A093958.P320446905209662886

`char[A000966(n+1)]`
-/

namespace A093958.P320446905209662886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A093958.P320446905209662886

/-! ## A093958.P17511667095819833674

`1-char[A027868(n)]`
-/

namespace A093958.P17511667095819833674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A093958.P17511667095819833674

/-! ## A093958.P5683944328496232647

`1-char[A191610(n+1)]`
-/

namespace A093958.P5683944328496232647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191610 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A093958.P5683944328496232647

/-! ## A093958.P14245742362840668625

`char[A007845(n+1)+n]`
-/

namespace A093958.P14245742362840668625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007845 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A093958.P14245742362840668625

/-! ## A093958.P11967356299182836179

`1-A164056(Δ[A007845(n)])`
-/

namespace A093958.P11967356299182836179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A164056 (f1 (n + 1) - f1 n).toNat

end

end A093958.P11967356299182836179

/-! ## A093958.P9623868839338929782

`A164056(Δ[A007845(n)]+2)`
-/

namespace A093958.P9623868839338929782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164056 (f1 (n + 1) - f1 n + 2).toNat

end

end A093958.P9623868839338929782

/-!
# A093959: Squares arising as partial products in A094357 + 1.

The programs for A093959, there is no canonical definition to state claims against.
-/

/-! ## A093959.P5855230944396539935

`∏[A094357(n+1)]+1`
-/

namespace A093959.P5855230944396539935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A093959.P5855230944396539935

/-! ## A093959.P10569709582720334520

`(floor(acot(n))-A144743(n))²`
-/

namespace A093959.P10569709582720334520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊SequenceMachineLib.acot (n : ℝ)⌋ - A144743 n) ^ 2

end

end A093959.P10569709582720334520

/-! ## A093959.P15302874013730211709

`(A000007(n)-A144743(n))²`
-/

namespace A093959.P15302874013730211709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n - A144743 n) ^ 2

end

end A093959.P15302874013730211709

/-!
# A093960: a(1) = 1, a(2) = 2, a(n+1) = n*a(1) + (n-1)*a(2) + ... + (n-r)*a(r+1) + ... + a(n).

The programs for A093960, the canonical program `A093960.P17939838539430753507` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093960 has offset 1).

The definition of A093960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093960.P17939838539430753507

`3*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=11`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A093960

/-- `3*a(n-1)-a(n-2)` -/
def P17939838539430753507.Spec : Prop :=
  ∀ n, P17939838539430753507.a n = A093960 (n + 1)

theorem P17939838539430753507.correct : P17939838539430753507.Spec := by
  intro n
  simp only [A093960, Nat.add_sub_cancel]

end A093960

/-! ## A093960.P12870768323112508004

`round((ϕ^n)²/ϕ)`
-/

namespace A093960.P12870768323112508004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.goldenRatio ^ n) ^ 2 / Real.goldenRatio)

end

end A093960.P12870768323112508004

namespace A093960

/-- `round((ϕ^n)²/ϕ)` -/
def P12870768323112508004.Spec : Prop :=
  ∀ n, P12870768323112508004.a n = A093960 (n + 1)

end A093960

/-! ## A093960.P14113932534574630333

`record[round((-ϕ)^n/ϕ)]`
-/

namespace A093960.P14113932534574630333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((-Real.goldenRatio) ^ n / Real.goldenRatio)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093960.P14113932534574630333

namespace A093960

/-- `record[round((-ϕ)^n/ϕ)]` -/
def P14113932534574630333.Spec : Prop :=
  ∀ n, P14113932534574630333.a n = A093960 (n + 1)

end A093960

/-! ## A093960.P1252635741627819167

`ceil(ϕ²*a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A093960.P1252635741627819167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌉

end

end A093960.P1252635741627819167

namespace A093960

/-- `ceil(ϕ²*a(n-1))` -/
def P1252635741627819167.Spec : Prop :=
  ∀ n, P1252635741627819167.a n = A093960 (n + 1)

end A093960

/-! ## A093960.P3654794968538740321

`floor(∑[(ϕ+1)*a(n-1)])` with `a(0)=1, a(1)=1`
-/

namespace A093960.P3654794968538740321
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (Real.goldenRatio + 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A093960.P3654794968538740321

namespace A093960

/-- `floor(∑[(ϕ+1)*a(n-1)])` -/
def P3654794968538740321.Spec : Prop :=
  ∀ n, P3654794968538740321.a n = A093960 (n + 1)

end A093960

/-! ## A093960.P5129359309023171780

`floor(∑[a(n-1)/(2-ϕ)])` with `a(0)=1, a(1)=1`
-/

namespace A093960.P5129359309023171780
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) / (2 - Real.goldenRatio)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A093960.P5129359309023171780

namespace A093960

/-- `floor(∑[a(n-1)/(2-ϕ)])` -/
def P5129359309023171780.Spec : Prop :=
  ∀ n, P5129359309023171780.a n = A093960 (n + 1)

end A093960

/-! ## A093960.P1267947889547137469

`floor(∑[ϕ*ϕ*a(n-1)])` with `a(0)=1, a(1)=1`
-/

namespace A093960.P1267947889547137469
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Real.goldenRatio * (Real.goldenRatio * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A093960.P1267947889547137469

namespace A093960

/-- `floor(∑[ϕ*ϕ*a(n-1)])` -/
def P1267947889547137469.Spec : Prop :=
  ∀ n, P1267947889547137469.a n = A093960 (n + 1)

end A093960

/-! ## A093960.P13703659263865835007

`floor(Δ[ϕ²*a(n-1)-(n+1)])` with `a(0)=2`
-/

namespace A093960.P13703659263865835007
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2] fun n f1 =>
  Real.goldenRatio ^ 2 * f1 (n - 1) - (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A093960.P13703659263865835007

namespace A093960

/-- `floor(Δ[ϕ²*a(n-1)-(n+1)])` -/
def P13703659263865835007.Spec : Prop :=
  ∀ n, P13703659263865835007.a n = A093960 (n + 1)

end A093960

/-! ## A093960.P15583169705601178072

`A254729(2*n)`
-/

namespace A093960.P15583169705601178072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254729 (2 * n)

end

end A093960.P15583169705601178072

namespace A093960

/-- `A254729(2*n)` -/
def P15583169705601178072.Spec : Prop :=
  ∀ n, P15583169705601178072.a n = A093960 (n + 1)

end A093960

/-! ## A093960.P14050623184765914001

`A329723(2*n+1)+char[1]`
-/

namespace A093960.P14050623184765914001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (2 * n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A093960.P14050623184765914001

namespace A093960

/-- `A329723(2*n+1)+char[1]` -/
def P14050623184765914001.Spec : Prop :=
  ∀ n, P14050623184765914001.a n = A093960 (n + 1)

end A093960

/-! ## A093960.P10735754994350444163

`A000032(xor(1, comp[2*n+3]))`
-/

namespace A093960.P10735754994350444163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A093960.P10735754994350444163

namespace A093960

/-- `A000032(xor(1, comp[2*n+3]))` -/
def P10735754994350444163.Spec : Prop :=
  ∀ n, P10735754994350444163.a n = A093960 (n + 1)

end A093960

/-! ## A093960.P13158782671740225428

`floor((A000032(2*n)+1)/ϕ)`
-/

namespace A093960.P13158782671740225428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000032 (2 * n) + 1 : ℝ) / Real.goldenRatio⌋

end

end A093960.P13158782671740225428

namespace A093960

/-- `floor((A000032(2*n)+1)/ϕ)` -/
def P13158782671740225428.Spec : Prop :=
  ∀ n, P13158782671740225428.a n = A093960 (n + 1)

end A093960

/-! ## A093960.P5090473718986629253

`A000032(Δ[(C(n, n²)+n-1)²])`
-/

namespace A093960.P5090473718986629253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose n (n ^ 2) : ℤ) + ((n : ℤ) - 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n).toNat

end

end A093960.P5090473718986629253

namespace A093960

/-- `A000032(Δ[(C(n, n²)+n-1)²])` -/
def P5090473718986629253.Spec : Prop :=
  ∀ n, P5090473718986629253.a n = A093960 (n + 1)

end A093960

/-! ## A093960.P3589507541798073039

`A000032(gcd(2*n, C(2, n+1))-1)`
-/

namespace A093960.P3589507541798073039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.gcd (2 * n) (Nat.choose 2 (n + 1)) - 1)

end

end A093960.P3589507541798073039

namespace A093960

/-- `A000032(gcd(2*n, C(2, n+1))-1)` -/
def P3589507541798073039.Spec : Prop :=
  ∀ n, P3589507541798073039.a n = A093960 (n + 1)

end A093960

/-! ## A093960.P12816565528751257390

`A000032(Δ[floor((n+1)²/(n+3))²])`
-/

namespace A093960.P12816565528751257390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) / (n + 3 : ℚ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n).toNat

end

end A093960.P12816565528751257390

namespace A093960

/-- `A000032(Δ[floor((n+1)²/(n+3))²])` -/
def P12816565528751257390.Spec : Prop :=
  ∀ n, P12816565528751257390.a n = A093960 (n + 1)

end A093960

/-! ## A093960.P1062999091529848529

`A169985(A004273(n))`
-/

namespace A093960.P1062999091529848529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 (A004273 n).toNat

end

end A093960.P1062999091529848529

namespace A093960

/-- `A169985(A004273(n))` -/
def P1062999091529848529.Spec : Prop :=
  ∀ n, P1062999091529848529.a n = A093960 (n + 1)

end A093960

/-! ## A093960.P10693451226377773434

`A115339(A113127(n))`
-/

namespace A093960.P10693451226377773434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (A113127 n).toNat

end

end A093960.P10693451226377773434

namespace A093960

/-- `A115339(A113127(n))` -/
def P10693451226377773434.Spec : Prop :=
  ∀ n, P10693451226377773434.a n = A093960 (n + 1)

end A093960

/-! ## A093960.P18213937175499598979

`A295674(A004275(n))`
-/

namespace A093960.P18213937175499598979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295674 (A004275 n).toNat

end

end A093960.P18213937175499598979

namespace A093960

/-- `A295674(A004275(n))` -/
def P18213937175499598979.Spec : Prop :=
  ∀ n, P18213937175499598979.a n = A093960 (n + 1)

end A093960

/-! ## A093960.P14841252212975660105

`A329723(A130773(n))`
-/

namespace A093960.P14841252212975660105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (A130773 n).toNat

end

end A093960.P14841252212975660105

namespace A093960

/-- `A329723(A130773(n))` -/
def P14841252212975660105.Spec : Prop :=
  ∀ n, P14841252212975660105.a n = A093960 (n + 1)

end A093960

/-!
# A093963: Antidiagonal sums of array in A093966.

The programs for A093963, there is no canonical definition to state claims against.
-/

/-! ## A093963.P14713790475832955470

`A187737(A149824(n+1))`
-/

namespace A093963.P14713790475832955470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187737 (A149824 (n + 1)).toNat

end

end A093963.P14713790475832955470

/-! ## A093963.P7523271921679075616

`A157271(A228338(n)-4)`
-/

namespace A093963.P7523271921679075616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A228338 n - 4).toNat

end

end A093963.P7523271921679075616

/-! ## A093963.P9603581473961218492

`A157271(A191823(n))+n`
-/

namespace A093963.P9603581473961218492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A191823 n).toNat + (n : ℤ)

end

end A093963.P9603581473961218492

/-!
# A093964: a(n) = Sum_{k=1..n} k*k!*C(n,k).

The programs for A093964, the canonical program `A093964.P14669265345428787088` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093964 has offset 0).

The definition of A093964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093964.P14669265345428787088

`1+(n-1)*A000522(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A093964

/-- `1+(n-1)*A000522(n)` -/
def P14669265345428787088.Spec : Prop :=
  ∀ n, P14669265345428787088.a n = A093964 n

theorem P14669265345428787088.correct : P14669265345428787088.Spec := by
  intro n
  simp only [A093964]

end A093964

/-! ## A093964.P6885859756960550835

`n*a(n-1)+A007526(n)` with `a(0)=0`
-/

namespace A093964.P6885859756960550835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * a (n - 1) + A007526 n

end

end A093964.P6885859756960550835

namespace A093964

/-- `n*a(n-1)+A007526(n)` -/
def P6885859756960550835.Spec : Prop :=
  ∀ n, P6885859756960550835.a n = A093964 n

end A093964

/-! ## A093964.P756925026499520191

`A001339(n)-A000522(n)`
-/

namespace A093964.P756925026499520191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001339 n - A000522 n

end

end A093964.P756925026499520191

namespace A093964

/-- `A001339(n)-A000522(n)` -/
def P756925026499520191.Spec : Prop :=
  ∀ n, P756925026499520191.a n = A093964 n

end A093964

/-! ## A093964.P16848236995463922477

`n!*∑[∑[n/n!]]`
-/

namespace A093964.P16848236995463922477
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093964.P16848236995463922477

namespace A093964

/-- `n!*∑[∑[n/n!]]` -/
def P16848236995463922477.Spec : Prop :=
  ∀ n, P16848236995463922477.a n = (A093964 n : ℚ)

end A093964

/-! ## A093964.P6565381825064369352

`n*Δ[(a(n-1)+1)*(n-1)]` with `a(0)=0`
-/

namespace A093964.P6565381825064369352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (f1 (n - 1) + 1) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A093964.P6565381825064369352

namespace A093964

/-- `n*Δ[(a(n-1)+1)*(n-1)]` -/
def P6565381825064369352.Spec : Prop :=
  ∀ n, P6565381825064369352.a n = A093964 n

end A093964

/-! ## A093964.P7164477952081087911

`lcm(n, Δ[(n-1)*(a(n-1)-1)])` with `a(0)=0`
-/

namespace A093964.P7164477952081087911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ((n : ℤ) - 1) * (f1 (n - 1) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (f1 (n + 1) - f1 n)

end

end A093964.P7164477952081087911

namespace A093964

/-- `lcm(n, Δ[(n-1)*(a(n-1)-1)])` -/
def P7164477952081087911.Spec : Prop :=
  ∀ n, (P7164477952081087911.a n : ℤ) = A093964 n

end A093964

/-! ## A093964.P11677888938994780321

`A134433(∑[n+2])`
-/

namespace A093964.P11677888938994780321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134433 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093964.P11677888938994780321

namespace A093964

/-- `A134433(∑[n+2])` -/
def P11677888938994780321.Spec : Prop :=
  ∀ n, P11677888938994780321.a n = A093964 n

end A093964

/-! ## A093964.P1955493430582358229

`n*A143409(∑[n]+1)`
-/

namespace A093964.P1955493430582358229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A143409 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A093964.P1955493430582358229

namespace A093964

/-- `n*A143409(∑[n]+1)` -/
def P1955493430582358229.Spec : Prop :=
  ∀ n, P1955493430582358229.a n = A093964 n

end A093964

/-! ## A093964.P9256986040278164794

`n/2*Δ[A054091(n)]`
-/

namespace A093964.P9256986040278164794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054091 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A093964.P9256986040278164794

namespace A093964

/-- `n/2*Δ[A054091(n)]` -/
def P9256986040278164794.Spec : Prop :=
  ∀ n, P9256986040278164794.a n = (A093964 n : ℚ)

end A093964

/-! ## A093964.P9843802835763685045

`n/2*Δ[A111063(n)]`
-/

namespace A093964.P9843802835763685045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111063 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A093964.P9843802835763685045

namespace A093964

/-- `n/2*Δ[A111063(n)]` -/
def P9843802835763685045.Spec : Prop :=
  ∀ n, P9843802835763685045.a n = (A093964 n : ℚ)

end A093964

/-!
# A093965: Number of functions of [n] to [n] that simultaneously avoid the patterns 112 and 221.

The programs for A093965, there is no canonical definition to state claims against.
-/

/-! ## A093965.P14209766082643823469

`(n+1)*abs(Δ[n*(a(n-1)-1)])` with `a(0)=1`
-/

namespace A093965.P14209766082643823469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * |f1 (n + 1) - f1 n|

end

end A093965.P14209766082643823469

/-! ## A093965.P834095572546688006

`(n+1)*Δ[n*a(n-1)-(n-2)]` with `a(0)=1`
-/

namespace A093965.P834095572546688006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) * f1 (n - 1) - ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A093965.P834095572546688006

/-! ## A093965.P10901872582711001684

`(n+1)*A193657(n)`
-/

namespace A093965.P10901872582711001684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A193657 n

end

end A093965.P10901872582711001684

/-! ## A093965.P5959814792502690038

`(n+1)*∑[A193668(n)]`
-/

namespace A093965.P5959814792502690038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093965.P5959814792502690038

/-! ## A093965.P13961762739842427518

`(n+1)*Δ[A002627(n)]`
-/

namespace A093965.P13961762739842427518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A093965.P13961762739842427518

/-! ## A093965.P7919322811046510620

`n*A002627(n+1)+1`
-/

namespace A093965.P7919322811046510620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002627 (n + 1) + 1

end

end A093965.P7919322811046510620

/-! ## A093965.P17879318374884862413

`Δ[A193657(n)]-A002627(n)`
-/

namespace A093965.P17879318374884862413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002627 n

end

end A093965.P17879318374884862413

/-! ## A093965.P15793140693694600224

`A193668(n+1)-A002627(n)`
-/

namespace A093965.P15793140693694600224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193668 (n + 1) - A002627 n

end

end A093965.P15793140693694600224

/-! ## A093965.P120331719346837118

`A001339(n)+n*A114870(n)`
-/

namespace A093965.P120331719346837118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001339 n + (n : ℤ) * A114870 n

end

end A093965.P120331719346837118

/-! ## A093965.P11972623561901572689

`A193657(n+1)-∑[A193657(n)]`
-/

namespace A093965.P11972623561901572689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193657 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093965.P11972623561901572689

/-!
# A093966: Array read by antidiagonals: number of {112,221}-avoiding words.

The programs for A093966, there is no canonical definition to state claims against.
-/

/-! ## A093966.P2051376369200879206

`A002260(n+1)*A088699(n)-A010893(A008669(n))`
-/

namespace A093966.P2051376369200879206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A088699 n - A010893 ((A008669 n).toNat + 13)

end

end A093966.P2051376369200879206

/-! ## A093966.P4698318866970879595

`(A002262(n)+1)*A088699(n)-A010893(A008669(n))`
-/

namespace A093966.P4698318866970879595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A088699 n - A010893 ((A008669 n).toNat + 13)

end

end A093966.P4698318866970879595

/-! ## A093966.P3951302936292558390

`A349520(A005408(n))%A192275(n+1)*A027948(n)`
-/

namespace A093966.P3951302936292558390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349520 (A005408 n).toNat) (A192275 (n + 1)) * A027948 n

end

end A093966.P3951302936292558390

/-! ## A093966.P6395818047618536120

`A320111(A035607(n)^A002260(n+1))`
-/

namespace A093966.P6395818047618536120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (SequenceMachineLib.roundAway ((A035607 n : ℚ) ^ (A002260 (n + 1) : ℤ))).toNat

end

end A093966.P6395818047618536120

/-! ## A093966.P12284896353512283391

`A334080(A133214(n))`
-/

namespace A093966.P12284896353512283391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334080 (A133214 n).toNat

end

end A093966.P12284896353512283391

/-!
# A093967: a(n) = n * Pell(n).

The programs for A093967, the canonical program `A093967.P7229199660564859914` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093967 has offset 0).

The definition of A093967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093967.P7229199660564859914

`n*A000129(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A093967

/-- `n*A000129(n)` -/
def P7229199660564859914.Spec : Prop :=
  ∀ n, P7229199660564859914.a n = A093967 n

theorem P7229199660564859914.correct : P7229199660564859914.Spec := by
  intro n
  simp only [A093967]

end A093967

/-! ## A093967.P7793948804124260700

`n*∑[a(n-2)+2*a(n-1)]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A093967.P7793948804124260700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 3] fun n f1 =>
  f1 (n - 2) + 2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093967.P7793948804124260700

namespace A093967

/-- `n*∑[a(n-2)+2*a(n-1)]` -/
def P7793948804124260700.Spec : Prop :=
  ∀ n, (P7793948804124260700.a n : ℤ) = A093967 n

end A093967

/-! ## A093967.P3342406317708688966

`n/2*Δ[a(n-2)+2*a(n-1)]` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A093967.P3342406317708688966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 3] fun n f1 =>
  f1 (n - 2) + 2 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A093967.P3342406317708688966

namespace A093967

/-- `n/2*Δ[a(n-2)+2*a(n-1)]` -/
def P3342406317708688966.Spec : Prop :=
  ∀ n, P3342406317708688966.a n = (A093967 n : ℚ)

end A093967

/-! ## A093967.P14940795567633292380

`n*((1+sqrt(2))^n-(1-sqrt(2))^n)/(2*sqrt(2))`
-/

namespace A093967.P14940795567633292380
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * (((1 + Real.sqrt (2 : ℝ)) ^ n - (1 - Real.sqrt (2 : ℝ)) ^ n) / (2 * Real.sqrt (2 : ℝ)))

end

end A093967.P14940795567633292380

namespace A093967

/-- `n*((1+sqrt(2))^n-(1-sqrt(2))^n)/(2*sqrt(2))` -/
def P14940795567633292380.Spec : Prop :=
  ∀ n, P14940795567633292380.a n = (A093967 n : ℝ)

end A093967

/-! ## A093967.P9701967508494581894

`n*A174191(n)-n`
-/

namespace A093967.P9701967508494581894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A174191 n - (n : ℤ)

end

end A093967.P9701967508494581894

namespace A093967

/-- `n*A174191(n)-n` -/
def P9701967508494581894.Spec : Prop :=
  ∀ n, P9701967508494581894.a n = A093967 n

end A093967

/-! ## A093967.P12552457851408210740

`∑{d}[n, n*A133726(#)]`
-/

namespace A093967.P12552457851408210740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℤ) * A133726 d

end

end A093967.P12552457851408210740

namespace A093967

/-- `∑{d}[n, n*A133726(#)]` -/
def P12552457851408210740.Spec : Prop :=
  ∀ n, P12552457851408210740.a n = A093967 n

end A093967

/-! ## A093967.P11292009575661554896

`abs(n*A176981(n+1))`
-/

namespace A093967.P11292009575661554896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A176981 (n + 1)|

end

end A093967.P11292009575661554896

namespace A093967

/-- `abs(n*A176981(n+1))` -/
def P11292009575661554896.Spec : Prop :=
  ∀ n, P11292009575661554896.a n = A093967 n

end A093967

/-! ## A093967.P14014012625104809798

`n*A209971(n)-n²`
-/

namespace A093967.P14014012625104809798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A209971 n - (n ^ 2 : ℤ)

end

end A093967.P14014012625104809798

namespace A093967

/-- `n*A209971(n)-n²` -/
def P14014012625104809798.Spec : Prop :=
  ∀ n, P14014012625104809798.a n = A093967 n

end A093967

/-! ## A093967.P2628388356691013399

`A088211(n)-A001333(n)`
-/

namespace A093967.P2628388356691013399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088211 n - A001333 n

end

end A093967.P2628388356691013399

namespace A093967

/-- `A088211(n)-A001333(n)` -/
def P2628388356691013399.Spec : Prop :=
  ∀ n, P2628388356691013399.a n = A093967 n

end A093967

/-! ## A093967.P3727489505122553998

`A286814(n)-A002203(n)`
-/

namespace A093967.P3727489505122553998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286814 n - A002203 n

end

end A093967.P3727489505122553998

namespace A093967

/-- `A286814(n)-A002203(n)` -/
def P3727489505122553998.Spec : Prop :=
  ∀ n, P3727489505122553998.a n = A093967 n

end A093967

/-! ## A093967.P8638040749510833995

`A361732(n+1)-A215928(n)`
-/

namespace A093967.P8638040749510833995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361732 (n + 1) - A215928 n

end

end A093967.P8638040749510833995

namespace A093967

/-- `A361732(n+1)-A215928(n)` -/
def P8638040749510833995.Spec : Prop :=
  ∀ n, P8638040749510833995.a n = A093967 n

end A093967

/-! ## A093967.P3646894252657167522

`A000129(n)+A088211(n)-A000129(n+1)`
-/

namespace A093967.P3646894252657167522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (A088211 n - A000129 (n + 1))

end

end A093967.P3646894252657167522

namespace A093967

/-- `A000129(n)+A088211(n)-A000129(n+1)` -/
def P3646894252657167522.Spec : Prop :=
  ∀ n, P3646894252657167522.a n = A093967 n

end A093967

/-! ## A093967.P690655837719072870

`A006645(n+1)+A006645(n+1)-A119915(n)`
-/

namespace A093967.P690655837719072870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n + 1) + (A006645 (n + 1) - A119915 n)

end

end A093967.P690655837719072870

namespace A093967

/-- `A006645(n+1)+A006645(n+1)-A119915(n)` -/
def P690655837719072870.Spec : Prop :=
  ∀ n, P690655837719072870.a n = A093967 n

end A093967

/-! ## A093967.P10140583213651038588

`n*A052542(n)/2`
-/

namespace A093967.P10140583213651038588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A052542 n : ℚ) / 2

end

end A093967.P10140583213651038588

namespace A093967

/-- `n*A052542(n)/2` -/
def P10140583213651038588.Spec : Prop :=
  ∀ n, P10140583213651038588.a n = (A093967 n : ℚ)

end A093967

/-! ## A093967.P7382667146474999250

`n*Δ[A293004(n)]/2`
-/

namespace A093967.P7382667146474999250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A093967.P7382667146474999250

namespace A093967

/-- `n*Δ[A293004(n)]/2` -/
def P7382667146474999250.Spec : Prop :=
  ∀ n, P7382667146474999250.a n = (A093967 n : ℚ)

end A093967

/-! ## A093967.P4332404586374405484

`n*A163271(n+1)/2`
-/

namespace A093967.P4332404586374405484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A163271 (n + 1) : ℚ) / 2

end

end A093967.P4332404586374405484

namespace A093967

/-- `n*A163271(n+1)/2` -/
def P4332404586374405484.Spec : Prop :=
  ∀ n, P4332404586374405484.a n = (A093967 n : ℚ)

end A093967

/-! ## A093967.P10716520377271417594

`n*A082766(2*n+1)/2`
-/

namespace A093967.P10716520377271417594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A082766 (2 * n + 1) : ℚ) / 2

end

end A093967.P10716520377271417594

namespace A093967

/-- `n*A082766(2*n+1)/2` -/
def P10716520377271417594.Spec : Prop :=
  ∀ n, P10716520377271417594.a n = (A093967 n : ℚ)

end A093967

/-! ## A093967.P2376974599335722477

`n*A119016(2*n+1)/2`
-/

namespace A093967.P2376974599335722477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A119016 (2 * n + 1) : ℚ) / 2

end

end A093967.P2376974599335722477

namespace A093967

/-- `n*A119016(2*n+1)/2` -/
def P2376974599335722477.Spec : Prop :=
  ∀ n, P2376974599335722477.a n = (A093967 n : ℚ)

end A093967

/-!
# A093968: Inverse binomial transform of n*Pell(n).

The programs for A093968, the canonical program `A093968.P14236553952080938140` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093968 has offset 0).

The definition of A093968 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093968.P14236553952080938140

`n*2^floor((n-1)/2)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A093968

/-- `n*2^floor((n-1)/2)` -/
def P14236553952080938140.Spec : Prop :=
  ∀ n, P14236553952080938140.a n = (A093968 n : ℚ)

end A093968

/-! ## A093968.P6517296616976146598

`lcm(n, 2*(a(n-1)-a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A093968.P6517296616976146598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lcm (n : ℤ) (2 * ((a (n - 1) : ℤ) - (a (n - 2) : ℤ)))

end

end A093968.P6517296616976146598

namespace A093968

/-- `lcm(n, 2*(a(n-1)-a(n-2)))` -/
def P6517296616976146598.Spec : Prop :=
  ∀ n, (P6517296616976146598.a n : ℤ) = A093968 n

end A093968

/-! ## A093968.P10830468221936957235

`abs(n*A117575(n))`
-/

namespace A093968.P10830468221936957235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A117575 n|

end

end A093968.P10830468221936957235

namespace A093968

/-- `abs(n*A117575(n))` -/
def P10830468221936957235.Spec : Prop :=
  ∀ n, P10830468221936957235.a n = A093968 n

end A093968

/-! ## A093968.P4038048251040823272

`abs(n/2*A152166(n))`
-/

namespace A093968.P4038048251040823272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n : ℚ) / 2 * (A152166 n : ℚ)|

end

end A093968.P4038048251040823272

namespace A093968

/-- `abs(n/2*A152166(n))` -/
def P4038048251040823272.Spec : Prop :=
  ∀ n, P4038048251040823272.a n = (A093968 n : ℚ)

end A093968

/-! ## A093968.P16712870500676639528

`A171647(n+1)-A016116(n)`
-/

namespace A093968.P16712870500676639528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171647 (n + 1) - A016116 n

end

end A093968.P16712870500676639528

namespace A093968

/-- `A171647(n+1)-A016116(n)` -/
def P16712870500676639528.Spec : Prop :=
  ∀ n, P16712870500676639528.a n = A093968 n

end A093968

/-! ## A093968.P3086243747016734676

`A239632(n+1)-A016116(n+1)`
-/

namespace A093968.P3086243747016734676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239632 (n + 1) - A016116 (n + 1)

end

end A093968.P3086243747016734676

namespace A093968

/-- `A239632(n+1)-A016116(n+1)` -/
def P3086243747016734676.Spec : Prop :=
  ∀ n, P3086243747016734676.a n = A093968 n

end A093968

/-! ## A093968.P3846962779130901114

`A008619(n)*A060546(n)-A016116(n)`
-/

namespace A093968.P3846962779130901114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A060546 n - A016116 n

end

end A093968.P3846962779130901114

namespace A093968

/-- `A008619(n)*A060546(n)-A016116(n)` -/
def P3846962779130901114.Spec : Prop :=
  ∀ n, P3846962779130901114.a n = A093968 n

end A093968

/-! ## A093968.P8749359140725614177

`A008619(n)*A016116(n+1)-A016116(n)`
-/

namespace A093968.P8749359140725614177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A016116 (n + 1) - A016116 n

end

end A093968.P8749359140725614177

namespace A093968

/-- `A008619(n)*A016116(n+1)-A016116(n)` -/
def P8749359140725614177.Spec : Prop :=
  ∀ n, P8749359140725614177.a n = A093968 n

end A093968

/-! ## A093968.P13632089771643221063

`A008619(n+1)*A060546(n)-A164073(n+1)`
-/

namespace A093968.P13632089771643221063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) * A060546 n - A164073 (n + 1)

end

end A093968.P13632089771643221063

namespace A093968

/-- `A008619(n+1)*A060546(n)-A164073(n+1)` -/
def P13632089771643221063.Spec : Prop :=
  ∀ n, P13632089771643221063.a n = A093968 n

end A093968

/-! ## A093968.P5097901970998335219

`A132344(n)/A040001(n)`
-/

namespace A093968.P5097901970998335219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132344 n : ℚ) / (A040001 n : ℚ)

end

end A093968.P5097901970998335219

namespace A093968

/-- `A132344(n)/A040001(n)` -/
def P5097901970998335219.Spec : Prop :=
  ∀ n, P5097901970998335219.a n = (A093968 n : ℚ)

end A093968

/-! ## A093968.P10115877884340675503

`∪[A014480(n), A036289(n)]`
-/

namespace A093968.P10115877884340675503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093968.P10115877884340675503

namespace A093968

/-- `∪[A014480(n), A036289(n)]` -/
def P10115877884340675503.Spec : Prop :=
  ∀ n, (P10115877884340675503.a n : ℤ) = A093968 n

end A093968

/-! ## A093968.P14447330984960362125

`n*∏[gcd(2, n+1)]/2`
-/

namespace A093968.P14447330984960362125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (∏ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 2

end

end A093968.P14447330984960362125

namespace A093968

/-- `n*∏[gcd(2, n+1)]/2` -/
def P14447330984960362125.Spec : Prop :=
  ∀ n, P14447330984960362125.a n = (A093968 n : ℚ)

end A093968

/-! ## A093968.P15086021309822435991

`n*2^∑[n%2]/2`
-/

namespace A093968.P15086021309822435991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * 2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A093968.P15086021309822435991

namespace A093968

/-- `n*2^∑[n%2]/2` -/
def P15086021309822435991.Spec : Prop :=
  ∀ n, P15086021309822435991.a n = (A093968 n : ℚ)

end A093968

/-! ## A093968.P4350458420482870651

`n*2^∑[and(1, n)]/2`
-/

namespace A093968.P4350458420482870651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * 2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A093968.P4350458420482870651

namespace A093968

/-- `n*2^∑[and(1, n)]/2` -/
def P4350458420482870651.Spec : Prop :=
  ∀ n, P4350458420482870651.a n = (A093968 n : ℚ)

end A093968

/-! ## A093968.P17637295633347549427

`A132314(n)/2`
-/

namespace A093968.P17637295633347549427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132314 n : ℚ) / 2

end

end A093968.P17637295633347549427

namespace A093968

/-- `A132314(n)/2` -/
def P17637295633347549427.Spec : Prop :=
  ∀ n, P17637295633347549427.a n = (A093968 n : ℚ)

end A093968

/-! ## A093968.P15948514131543449510

`A187272(n)-A132344(n)`
-/

namespace A093968.P15948514131543449510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187272 n - A132344 n

end

end A093968.P15948514131543449510

namespace A093968

/-- `A187272(n)-A132344(n)` -/
def P15948514131543449510.Spec : Prop :=
  ∀ n, P15948514131543449510.a n = A093968 n

end A093968

/-! ## A093968.P13688471687093117817

`A187272(n)/A176059(n)`
-/

namespace A093968.P13688471687093117817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187272 n : ℚ) / (A176059 n : ℚ)

end

end A093968.P13688471687093117817

namespace A093968

/-- `A187272(n)/A176059(n)` -/
def P13688471687093117817.Spec : Prop :=
  ∀ n, P13688471687093117817.a n = (A093968 n : ℚ)

end A093968

/-! ## A093968.P2424245526003727812

`(A132344(n+1)-A016116(n+1))/2`
-/

namespace A093968.P2424245526003727812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132344 (n + 1) - A016116 (n + 1) : ℚ) / 2

end

end A093968.P2424245526003727812

namespace A093968

/-- `(A132344(n+1)-A016116(n+1))/2` -/
def P2424245526003727812.Spec : Prop :=
  ∀ n, P2424245526003727812.a n = (A093968 n : ℚ)

end A093968

/-! ## A093968.P15766918227668854323

`A187272(n+1)-(A187272(n)+A164090(n+1))`
-/

namespace A093968.P15766918227668854323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187272 (n + 1) - (A187272 n + A164090 (n + 1))

end

end A093968.P15766918227668854323

namespace A093968

/-- `A187272(n+1)-(A187272(n)+A164090(n+1))` -/
def P15766918227668854323.Spec : Prop :=
  ∀ n, P15766918227668854323.a n = A093968 n

end A093968

/-!
# A093969: a(n) = n*Pell(n-2).

The programs for A093969, the canonical program `A093969.P1688578768118067326` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093969 has offset 0).

The definition of A093969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093969.P4480819925963845961

`abs(n*A215936(n))`
-/

namespace A093969.P4480819925963845961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A215936 n|

end

end A093969.P4480819925963845961

namespace A093969

/-- `abs(n*A215936(n))` -/
def P4480819925963845961.Spec : Prop :=
  ∀ n, P4480819925963845961.a n = A093969 n

end A093969

/-! ## A093969.P1688578768118067326

`n*A000129(abs(2-n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A093969

/-- `n*A000129(abs(2-n))` -/
def P1688578768118067326.Spec : Prop :=
  ∀ n, P1688578768118067326.a n = A093969 n

theorem P1688578768118067326.correct : P1688578768118067326.Spec := by
  intro n
  simp only [A093969]

end A093969

/-! ## A093969.P1321983730664464085

`n*abs(A176981(abs(1-n)))`
-/

namespace A093969.P1321983730664464085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * |(A176981 |1 - (n : ℤ)|.toNat)|

end

end A093969.P1321983730664464085

namespace A093969

/-- `n*abs(A176981(abs(1-n)))` -/
def P1321983730664464085.Spec : Prop :=
  ∀ n, P1321983730664464085.a n = A093969 n

end A093969

/-! ## A093969.P4881239876626845048

`A181983(n)*A215936(n)`
-/

namespace A093969.P4881239876626845048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 n * A215936 n

end

end A093969.P4881239876626845048

namespace A093969

/-- `A181983(n)*A215936(n)` -/
def P4881239876626845048.Spec : Prop :=
  ∀ n, P4881239876626845048.a n = A093969 n

end A093969

/-! ## A093969.P2545727870868198989

`n*(A078343(n)-A001333(n))`
-/

namespace A093969.P2545727870868198989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A078343 n - A001333 n)

end

end A093969.P2545727870868198989

namespace A093969

/-- `n*(A078343(n)-A001333(n))` -/
def P2545727870868198989.Spec : Prop :=
  ∀ n, P2545727870868198989.a n = A093969 n

end A093969

/-! ## A093969.P11316478084381136083

`n*(A221173(n)-A135532(n))`
-/

namespace A093969.P11316478084381136083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A221173 n - A135532 n)

end

end A093969.P11316478084381136083

namespace A093969

/-- `n*(A221173(n)-A135532(n))` -/
def P11316478084381136083.Spec : Prop :=
  ∀ n, P11316478084381136083.a n = A093969 n

end A093969

/-! ## A093969.P16162355998443984293

`n*(A176981(n)-Δ[A176981(n)])`
-/

namespace A093969.P16162355998443984293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A176981 n - (f1 (n + 1) - f1 n))

end

end A093969.P16162355998443984293

namespace A093969

/-- `n*(A176981(n)-Δ[A176981(n)])` -/
def P16162355998443984293.Spec : Prop :=
  ∀ n, P16162355998443984293.a n = A093969 n

end A093969

/-! ## A093969.P557493636418738880

`n*(A135532(n)-A000129(n+1))`
-/

namespace A093969.P557493636418738880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A135532 n - A000129 (n + 1))

end

end A093969.P557493636418738880

namespace A093969

/-- `n*(A135532(n)-A000129(n+1))` -/
def P557493636418738880.Spec : Prop :=
  ∀ n, P557493636418738880.a n = A093969 n

end A093969

/-! ## A093969.P7121789660345395212

`n*(A002203(abs(1-n))-A215928(n))`
-/

namespace A093969.P7121789660345395212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002203 |1 - (n : ℤ)|.toNat - A215928 n)

end

end A093969.P7121789660345395212

namespace A093969

/-- `n*(A002203(abs(1-n))-A215928(n))` -/
def P7121789660345395212.Spec : Prop :=
  ∀ n, P7121789660345395212.a n = A093969 n

end A093969

/-! ## A093969.P12506017188072724240

`n*(A002203(n+1)-A221173(n+1))`
-/

namespace A093969.P12506017188072724240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002203 (n + 1) - A221173 (n + 1))

end

end A093969.P12506017188072724240

namespace A093969

/-- `n*(A002203(n+1)-A221173(n+1))` -/
def P12506017188072724240.Spec : Prop :=
  ∀ n, P12506017188072724240.a n = A093969 n

end A093969

/-! ## A093969.P7964141148798392351

`n*(A266505(2*n)-A000129(n+1))`
-/

namespace A093969.P7964141148798392351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A266505 (2 * n) - A000129 (n + 1))

end

end A093969.P7964141148798392351

namespace A093969

/-- `n*(A266505(2*n)-A000129(n+1))` -/
def P7964141148798392351.Spec : Prop :=
  ∀ n, P7964141148798392351.a n = A093969 n

end A093969

/-! ## A093969.P14100814204332795231

`n*(A266505(2*n+1)-A221172(n+1))`
-/

namespace A093969.P14100814204332795231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A266505 (2 * n + 1) - A221172 (n + 1))

end

end A093969.P14100814204332795231

namespace A093969

/-- `n*(A266505(2*n+1)-A221172(n+1))` -/
def P14100814204332795231.Spec : Prop :=
  ∀ n, P14100814204332795231.a n = A093969 n

end A093969

/-!
# A093970: Number of subsets A of {1..n} such that there are no solutions to a+b+c=d for a,b,c,d in A.

The programs for A093970, there is no canonical definition to state claims against.
-/

/-! ## A093970.P14838281377743367222

`A102765(n)+A000194(A003946(n))`
-/

namespace A093970.P14838281377743367222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102765 n + A000194 (A003946 n).toNat

end

end A093970.P14838281377743367222

/-!
# A093971: Number of sum-full subsets of {1,...,n}; subsets A such that there is a solution to x+y=z for x,y,z in A.

The programs for A093971, there is no canonical definition to state claims against.
-/

/-! ## A093971.P2195459620626683634

`∑[A365070(n+1)]`
-/

namespace A093971.P2195459620626683634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093971.P2195459620626683634

/-! ## A093971.P15263310601052439357

`∑[2^n-A288728(n+1)]`
-/

namespace A093971.P15263310601052439357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A288728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093971.P15263310601052439357

/-! ## A093971.P4493377072889974120

`2^(n+1)-A007865(n+1)`
-/

namespace A093971.P4493377072889974120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A007865 (n + 1)

end

end A093971.P4493377072889974120

/-! ## A093971.P15297546031418836072

`A088810(n+1)+A088808(n+1)`
-/

namespace A093971.P15297546031418836072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088810 (n + 1) + A088808 (n + 1)

end

end A093971.P15297546031418836072

/-! ## A093971.P8772611214586493862

`A000079(n+1)+A088810(n+1)-A050291(n+1)`
-/

namespace A093971.P8772611214586493862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (A088810 (n + 1) - A050291 (n + 1))

end

end A093971.P8772611214586493862

/-! ## A093971.P390723245072647541

`A050291(n+1)+A088808(n+1)-A007865(n+1)`
-/

namespace A093971.P390723245072647541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050291 (n + 1) + (A088808 (n + 1) - A007865 (n + 1))

end

end A093971.P390723245072647541

/-! ## A093971.P12209982336295960239

`A088811(n+1)+A088809(n+1)`
-/

namespace A093971.P12209982336295960239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088811 (n + 1) + A088809 (n + 1)

end

end A093971.P12209982336295960239

/-! ## A093971.P7666505147843761460

`A088810(n+1)+A088812(n+1)+A088811(n+1)`
-/

namespace A093971.P7666505147843761460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088810 (n + 1) + (A088812 (n + 1) + A088811 (n + 1))

end

end A093971.P7666505147843761460

/-! ## A093971.P17091502059395976245

`A085489(n+1)+A088809(n+1)-A007865(n+1)`
-/

namespace A093971.P17091502059395976245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085489 (n + 1) + (A088809 (n + 1) - A007865 (n + 1))

end

end A093971.P17091502059395976245

/-! ## A093971.P7941299037887046744

`A088812(n+1)+A088813(n+1)-A007865(n+1)`
-/

namespace A093971.P7941299037887046744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088812 (n + 1) + (A088813 (n + 1) - A007865 (n + 1))

end

end A093971.P7941299037887046744

/-!
# A093972: Number of prime pairs below 10^n having a difference of 36.

The programs for A093972, there is no canonical definition to state claims against.
-/

/-! ## A093972.P6608384533633321135

`A284289(A188912(n))%(n^n)`
-/

namespace A093972.P6608384533633321135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284289 (A188912 n).toNat) (n ^ n : ℤ)

end

end A093972.P6608384533633321135

/-! ## A093972.P1652354608323957538

`∑[A054899(A143572(2*n+3))]`
-/

namespace A093972.P1652354608323957538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A143572 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093972.P1652354608323957538

/-!
# A093973: Number of prime pairs below 10^n having a difference of 38.

The programs for A093973, there is no canonical definition to state claims against.
-/

/-! ## A093973.P14096055205652209554

`A229160(A041531(n))`
-/

namespace A093973.P14096055205652209554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229160 (A041531 n).toNat

end

end A093973.P14096055205652209554

/-! ## A093973.P18137515135469020573

`A071980(lcm(n+3, A184944(2*n+3)))`
-/

namespace A093973.P18137515135469020573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071980 (Int.lcm (n + 3 : ℤ) (A184944 (2 * n + 3)))

end

end A093973.P18137515135469020573

/-!
# A093974: Number of prime pairs below 10^n having a difference of 40.

The programs for A093974, there is no canonical definition to state claims against.
-/

/-! ## A093974.P6301344724982826953

`A107130(C(floor(n²/2), 6))`
-/

namespace A093974.P6301344724982826953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107130 (Nat.choose ⌊(n ^ 2 : ℚ) / 2⌋.toNat 6)

end

end A093974.P6301344724982826953

/-! ## A093974.P499885677496682758

`(A134042(n+1)+2)*floor(n/4)`
-/

namespace A093974.P499885677496682758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134042 (n + 1) + 2) * ⌊(n : ℚ) / 4⌋

end

end A093974.P499885677496682758

/-!
# A093975: Number of prime pairs below 10^n having a difference of 42.

The programs for A093975, there is no canonical definition to state claims against.
-/

/-! ## A093975.P4894493021791016502

`A212243(A119364(n))`
-/

namespace A093975.P4894493021791016502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212243 (A119364 n).toNat

end

end A093975.P4894493021791016502

/-! ## A093975.P12289652601946791790

`A212243(A330677(n))`
-/

namespace A093975.P12289652601946791790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212243 (A330677 n).toNat

end

end A093975.P12289652601946791790

/-!
# A093976: Number of prime pairs below 10^n having a difference of 44.

The programs for A093976, there is no canonical definition to state claims against.
-/

/-! ## A093976.P16462247026513653572

`A065710(C(∑[n], 7))`
-/

namespace A093976.P16462247026513653572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065710 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 7)

end

end A093976.P16462247026513653572

/-! ## A093976.P304824812903216878

`A272662(∑[2*C(floor(n/2), 2)])-1`
-/

namespace A093976.P304824812903216878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose ⌊(n : ℚ) / 2⌋.toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272662 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A093976.P304824812903216878

/-!
# A093977: Number of prime pairs below 10^n having a difference of 46.

The programs for A093977, there is no canonical definition to state claims against.
-/

/-! ## A093977.P1562062358972588202

`A105518(C(3*n, 10))`
-/

namespace A093977.P1562062358972588202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105518 (Nat.choose (3 * n) 10)

end

end A093977.P1562062358972588202

/-! ## A093977.P8319745230226742822

`A271800(C(3*n, 11))`
-/

namespace A093977.P8319745230226742822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271800 (Nat.choose (3 * n) 11)

end

end A093977.P8319745230226742822

/-!
# A093978: Number of prime pairs below 10^n having a difference of 48.

The programs for A093978, there is no canonical definition to state claims against.
-/

/-! ## A093978.P16786879015307684685

`14^(a(n-1)-1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=3`
-/

namespace A093978.P16786879015307684685
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 0, 0, 0, 3] fun n a =>
  (14 : ℝ) ^ (a (n - 1) - 1)

end

end A093978.P16786879015307684685

/-! ## A093978.P15543341930548308381

`round(A317076(n)/36)`
-/

namespace A093978.P15543341930548308381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A317076 n : ℚ) / 36)

end

end A093978.P15543341930548308381

/-!
# A093979: Number of prime pairs below 10^n having a difference of 50.

The programs for A093979, there is no canonical definition to state claims against.
-/

/-! ## A093979.P4306975815867287116

`A004526(A000079(n)²%A159315(n))`
-/

namespace A093979.P4306975815867287116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod (A000079 n ^ 2) (A159315 n)).toNat

end

end A093979.P4306975815867287116

/-! ## A093979.P16247272532201463850

`A004526(A000079(2*n)%A159315(n))`
-/

namespace A093979.P16247272532201463850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod (A000079 (2 * n)) (A159315 n)).toNat

end

end A093979.P16247272532201463850

/-! ## A093979.P17203541875924087101

`and(A295010(A001349(n)), A295054(2*n+1))`
-/

namespace A093979.P17203541875924087101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A295010 (A001349 n).toNat) (A295054 (2 * n + 1))

end

end A093979.P17203541875924087101

/-!
# A093980: Number of prime pairs below 10^n having a difference of 52.

The programs for A093980, there is no canonical definition to state claims against.
-/

/-! ## A093980.P5441252895491759205

`A131141(7*A319115(n+1))`
-/

namespace A093980.P5441252895491759205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131141 (7 * A319115 (n + 1)).toNat

end

end A093980.P5441252895491759205

/-! ## A093980.P14769193306731408179

`A131141(lcm(7, A319115(n+1)))`
-/

namespace A093980.P14769193306731408179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131141 (Int.lcm 7 (A319115 (n + 1)))

end

end A093980.P14769193306731408179

/-! ## A093980.P15388842581098811780

`A083641(3*(n+1))%A319760(A039841(n+1))`
-/

namespace A093980.P15388842581098811780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083641 (3 * (n + 1))) (A319760 (A039841 (n + 1)).toNat)

end

end A093980.P15388842581098811780

/-!
# A093981: Number of prime pairs below 10^n having a difference of 54.

The programs for A093981, there is no canonical definition to state claims against.
-/

/-! ## A093981.P6423445682829976029

`Δ[∏[A098190(n!)]]`
-/

namespace A093981.P6423445682829976029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098190 (Nat.factorial n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093981.P6423445682829976029

/-! ## A093981.P10197629758403722635

`A383710(C(n+1, 4))`
-/

namespace A093981.P10197629758403722635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383710 (Nat.choose (n + 1) 4)

end

end A093981.P10197629758403722635

/-!
# A093982: Number of prime pairs below 10^n having a difference of 56.

The programs for A093982, there is no canonical definition to state claims against.
-/

/-! ## A093982.P14570281766236934172

`A025439(A001861(n)+(n+1)/∏{p}[n+1, (n+1)/#])`
-/

namespace A093982.P14570281766236934172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025439 (SequenceMachineLib.roundAway ((A001861 n : ℚ) + (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)))).toNat

end

end A093982.P14570281766236934172

/-! ## A093982.P128175666004378052

`A025444(A006498(n)*A056293(n+2))`
-/

namespace A093982.P128175666004378052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (A006498 n * A056293 (n + 2)).toNat

end

end A093982.P128175666004378052

/-!
# A093983: Number of prime pairs below 10^n having a difference of 58.

The programs for A093983, there is no canonical definition to state claims against.
-/

/-! ## A093983.P5651965989394455223

`A026803(C(A349759(n+1), n))`
-/

namespace A093983.P5651965989394455223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026803 (Nat.choose (A349759 (n + 1)).toNat n)

end

end A093983.P5651965989394455223

/-! ## A093983.P15262359403219712427

`floor(A330475(n)/A305188(n+1))`
-/

namespace A093983.P15262359403219712427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A330475 n : ℚ) / (A305188 (n + 1) : ℚ)⌋

end

end A093983.P15262359403219712427

/-! ## A093983.P1003126995627458839

`floor(A330475(n)/A008585(n+2))`
-/

namespace A093983.P1003126995627458839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A330475 n : ℚ) / (A008585 (n + 2) : ℚ)⌋

end

end A093983.P1003126995627458839

/-!
# A093984: Number of prime pairs below 10^n having a difference of 60.

The programs for A093984, there is no canonical definition to state claims against.
-/

/-! ## A093984.P989751368742959528

`and(A117662(A304185(n)), A304184(n))`
-/

namespace A093984.P989751368742959528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117662 (A304185 n).toNat) (A304184 n)

end

end A093984.P989751368742959528

/-! ## A093984.P3396820446897567371

`A014692(A202406(n+1))%A316275(n)`
-/

namespace A093984.P3396820446897567371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014692 (A202406 (n + 1)).toNat) (A316275 n)

end

end A093984.P3396820446897567371

/-! ## A093984.P12859485297093971390

`and(A110789(A003520(2*n)), A248547(n+1))`
-/

namespace A093984.P12859485297093971390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110789 (A003520 (2 * n)).toNat) (A248547 (n + 1))

end

end A093984.P12859485297093971390

/-!
# A093985: a(1) = 1, a(2) = 2; a(n+1) = 2n*a(n) - a(n-1). Symmetrically, a(n) = (a(n-1) + a(n+1))/((n-1) + (n+1)).

The programs for A093985, there is no canonical definition to state claims against.
-/

/-! ## A093985.P13824796530295103347

`∏[2*n-1/a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A093985.P13824796530295103347
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (2 * n : ℚ) - 1 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A093985.P13824796530295103347

/-! ## A093985.P4699925257697198126

`2*n*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A093985.P4699925257697198126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * ((n : ℤ) * a (n - 1)) - a (n - 2)

end

end A093985.P4699925257697198126

/-! ## A093985.P7780170674584223705

`A106174(n)+A093986(n+1)`
-/

namespace A093985.P7780170674584223705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106174 n + A093986 (n + 1)

end

end A093985.P7780170674584223705

/-! ## A093985.P9811310802641426179

`A305466(∑[n+3])`
-/

namespace A093985.P9811310802641426179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305466 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093985.P9811310802641426179

/-! ## A093985.P14001856809668475409

`abs(A305466(A055998(n+1)))`
-/

namespace A093985.P14001856809668475409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A305466 (A055998 (n + 1)).toNat|

end

end A093985.P14001856809668475409

/-!
# A093986: a(1) = 1, a(2) = 1, a(n+1) = 2n*a(n) - a(n-1). Symmetrically a(n) = (a(n-1) + a(n+1))/((n-1) + (n+1)).

The programs for A093986, there is no canonical definition to state claims against.
-/

/-! ## A093986.P3509670631676069315

`∏[2*n-1/a(n-1)]` with `a(0)=1`
-/

namespace A093986.P3509670631676069315
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 * n : ℚ) - 1 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A093986.P3509670631676069315

/-! ## A093986.P8995885405973224459

`∏[2*n-a(n-1)^-1]` with `a(0)=1`
-/

namespace A093986.P8995885405973224459
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 * n : ℚ) - f1 (n - 1) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A093986.P8995885405973224459

/-! ## A093986.P14531775768408843836

`2*n*a(n-1)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A093986.P14531775768408843836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * ((n : ℤ) * a (n - 1)) - a (n - 2)

end

end A093986.P14531775768408843836

/-! ## A093986.P9925166400281120055

`a(n-1)*A004277(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A093986.P9925166400281120055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A004277 n - a (n - 2)

end

end A093986.P9925166400281120055

/-! ## A093986.P10141725790504235516

`a(n-1)*A005843(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A093986.P10141725790504235516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A005843 n - a (n - 2)

end

end A093986.P10141725790504235516

/-! ## A093986.P14696105984393756458

`A093985(n+1)-A106174(n)`
-/

namespace A093986.P14696105984393756458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093985 (n + 1) - A106174 n

end

end A093986.P14696105984393756458

/-!
# A093987: 

The programs for A093987, there is no canonical definition to state claims against.
-/

/-! ## A093987.P15916547459634301894

`(a(n-1)^n)²/a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A093987.P15916547459634301894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) ^ n) ^ 2 / a (n - 2)

end

end A093987.P15916547459634301894

/-!
# A093988: Numbers k such that 2^k + 3*k is prime.

The programs for A093988, there is no canonical definition to state claims against.
-/

/-! ## A093988.P15649818664549200150

`lt[A270166(n+1), A270201(A270210(n))]`
-/

namespace A093988.P15649818664549200150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270201 (A270210 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A093988.P15649818664549200150

/-!
# A093989: Number of free n-celled polyzebras (or zebra-move-connected polyominoes).

The programs for A093989, there is no canonical definition to state claims against.
-/

/-! ## A093989.P6429867233475200039

`A093992(n+1)+A093991(n+1)`
-/

namespace A093989.P6429867233475200039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093992 (n + 1) + A093991 (n + 1)

end

end A093989.P6429867233475200039

/-! ## A093989.P18355393703320780840

`A093990(n+1)-A093992(n+1)`
-/

namespace A093989.P18355393703320780840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093990 (n + 1) - A093992 (n + 1)

end

end A093989.P18355393703320780840

/-! ## A093989.P14068455031637595563

`(A093991(n+1)+A093990(n+1))/2`
-/

namespace A093989.P14068455031637595563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093991 (n + 1) + A093990 (n + 1) : ℚ) / 2

end

end A093989.P14068455031637595563

/-! ## A093989.P7650625895683595815

`A393392(A167614(n+1))`
-/

namespace A093989.P7650625895683595815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393392 (A167614 (n + 1)).toNat

end

end A093989.P7650625895683595815

/-! ## A093989.P2994436229581495968

`A393838(A052382(n+1))`
-/

namespace A093989.P2994436229581495968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393838 (A052382 (n + 1)).toNat

end

end A093989.P2994436229581495968

/-!
# A093990: Number of one-sided n-celled polyzebras (or zebra-move-connected polyominoes).

The programs for A093990, there is no canonical definition to state claims against.
-/

/-! ## A093990.P2377744939885644763

`A093992(n+1)+A093989(n+1)`
-/

namespace A093990.P2377744939885644763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093992 (n + 1) + A093989 (n + 1)

end

end A093990.P2377744939885644763

/-! ## A093990.P8281776609177710780

`A093991(n+1)+2*A093992(n+1)`
-/

namespace A093990.P8281776609177710780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093991 (n + 1) + 2 * A093992 (n + 1)

end

end A093990.P8281776609177710780

/-! ## A093990.P12198357847143685031

`2*A093989(n+1)-A093991(n+1)`
-/

namespace A093990.P12198357847143685031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093989 (n + 1) - A093991 (n + 1)

end

end A093990.P12198357847143685031

/-! ## A093990.P3653177040081910870

`A093991(n+1)+A093992(n+1)+A093992(A005555(n))`
-/

namespace A093990.P3653177040081910870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093991 (n + 1) + (A093992 (n + 1) + A093992 (A005555 n).toNat)

end

end A093990.P3653177040081910870

/-! ## A093990.P5363891488604700388

`A093991(n+1)+A093992(n+1)+A093992(A291769(n))`
-/

namespace A093990.P5363891488604700388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093991 (n + 1) + (A093992 (n + 1) + A093992 (A291769 n).toNat)

end

end A093990.P5363891488604700388

/-!
# A093991: Number of n-celled polyzebras with bilateral symmetry.

The programs for A093991, there is no canonical definition to state claims against.
-/

/-! ## A093991.P15995475866969989071

`A093989(n+1)-A093992(n+1)`
-/

namespace A093991.P15995475866969989071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093989 (n + 1) - A093992 (n + 1)

end

end A093991.P15995475866969989071

/-! ## A093991.P15689285578719217207

`2*A093989(n+1)-A093990(n+1)`
-/

namespace A093991.P15689285578719217207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093989 (n + 1) - A093990 (n + 1)

end

end A093991.P15689285578719217207

/-! ## A093991.P12692796204322806346

`A093990(n+1)-2*A093992(n+1)`
-/

namespace A093991.P12692796204322806346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093990 (n + 1) - 2 * A093992 (n + 1)

end

end A093991.P12692796204322806346

/-! ## A093991.P3113390151389397132

`A093989(n+1)+A093989(A005555(n))-A093990(n+1)`
-/

namespace A093991.P3113390151389397132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093989 (n + 1) + A093989 (A005555 n).toNat - A093990 (n + 1)

end

end A093991.P3113390151389397132

/-! ## A093991.P6149022539376086883

`A093990(n+1)-(A093992(n+1)+A093992(A005555(n)))`
-/

namespace A093991.P6149022539376086883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093990 (n + 1) - (A093992 (n + 1) + A093992 (A005555 n).toNat)

end

end A093991.P6149022539376086883

/-!
# A093992: Number of n-celled polyzebras without bilateral symmetry.

The programs for A093992, there is no canonical definition to state claims against.
-/

/-! ## A093992.P7560227883482386631

`A093989(n+1)-A093991(n+1)`
-/

namespace A093992.P7560227883482386631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093989 (n + 1) - A093991 (n + 1)

end

end A093992.P7560227883482386631

/-! ## A093992.P15935259603570929230

`A093990(n+1)-A093989(n+1)`
-/

namespace A093992.P15935259603570929230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093990 (n + 1) - A093989 (n + 1)

end

end A093992.P15935259603570929230

/-! ## A093992.P18152137312864624390

`(A093990(n+1)-A093991(n+1))/2`
-/

namespace A093992.P18152137312864624390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093990 (n + 1) - A093991 (n + 1) : ℚ) / 2

end

end A093992.P18152137312864624390

/-!
# A093993: Number of divisors of n with a prime digital sum.

The programs for A093993, the canonical program `A093993.P17290700091184008815` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093993 has offset 1).

The definition of A093993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093993.P17290700091184008815

`∑{d}[n+1, A010051(A007953(#))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A093993

/-- `∑{d}[n+1, A010051(A007953(#))]` -/
def P17290700091184008815.Spec : Prop :=
  ∀ n, P17290700091184008815.a n = A093993 (n + 1)

theorem P17290700091184008815.correct : P17290700091184008815.Spec := by
  intro n
  simp only [A093993, Nat.add_sub_cancel]

end A093993

/-! ## A093993.P10407533504369967207

`∑{d}[n+1, A064911(A118881(#))]`
-/

namespace A093993.P10407533504369967207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064911 (A118881 d).toNat

end

end A093993.P10407533504369967207

namespace A093993

/-- `∑{d}[n+1, A064911(A118881(#))]` -/
def P10407533504369967207.Spec : Prop :=
  ∀ n, P10407533504369967207.a n = A093993 (n + 1)

end A093993

/-! ## A093993.P3390546768734264761

`A196563(A356791(n+1)+n)`
-/

namespace A093993.P3390546768734264761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A356791 (n + 1) + (n : ℤ)).toNat

end

end A093993.P3390546768734264761

namespace A093993

/-- `A196563(A356791(n+1)+n)` -/
def P3390546768734264761.Spec : Prop :=
  ∀ n, P3390546768734264761.a n = A093993 (n + 1)

end A093993

/-! ## A093993.P15920012619052413733

`A348193(Δ[A239014(n+1)]+1)%A181819(n+1)`
-/

namespace A093993.P15920012619052413733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348193 (f1 (n + 1) - f1 n + 1).toNat) (A181819 (n + 1))

end

end A093993.P15920012619052413733

namespace A093993

/-- `A348193(Δ[A239014(n+1)]+1)%A181819(n+1)` -/
def P15920012619052413733.Spec : Prop :=
  ∀ n, P15920012619052413733.a n = A093993 (n + 1)

end A093993

/-! ## A093993.P9080607030885666826

`A065339(A238424(3*n+2)-A345000(3*n+1))`
-/

namespace A093993.P9080607030885666826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A238424 (3 * n + 2) - A345000 (3 * n + 1)).toNat

end

end A093993.P9080607030885666826

namespace A093993

/-- `A065339(A238424(3*n+2)-A345000(3*n+1))` -/
def P9080607030885666826.Spec : Prop :=
  ∀ n, P9080607030885666826.a n = A093993 (n + 1)

end A093993

/-!
# A093995: n^2 appears n times, triangle read by rows.

The programs for A093995, the canonical program `A093995.P6642512022906989204` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093995 has offset 1).

The definition of A093995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093995.P4002247714018868255

`∑[char[∑[n]]]²`
-/

namespace A093995.P4002247714018868255
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A093995.P4002247714018868255

namespace A093995

/-- `∑[char[∑[n]]]²` -/
def P4002247714018868255.Spec : Prop :=
  ∀ n, (P4002247714018868255.a n : ℤ) = A093995 (n + 1)

end A093995

/-! ## A093995.P3749457813092524638

`round(sqrt(comp[lcm(2, n)]))^2`
-/

namespace A093995.P3749457813092524638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ)) ^ 2

end

end A093995.P3749457813092524638

namespace A093995

/-- `round(sqrt(comp[lcm(2, n)]))^2` -/
def P3749457813092524638.Spec : Prop :=
  ∀ n, P3749457813092524638.a n = A093995 (n + 1)

end A093995

/-! ## A093995.P3464594053805615961

`round(record[sqrt(xor(1, n))])^2`
-/

namespace A093995.P3464594053805615961
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 1 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 2

end

end A093995.P3464594053805615961

namespace A093995

/-- `round(record[sqrt(xor(1, n))])^2` -/
def P3464594053805615961.Spec : Prop :=
  ∀ n, P3464594053805615961.a n = A093995 (n + 1)

end A093995

/-! ## A093995.P15468129991177126107

`round(record[sqrt(or(2, n))])^2`
-/

namespace A093995.P15468129991177126107
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lor 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 2

end

end A093995.P15468129991177126107

namespace A093995

/-- `round(record[sqrt(or(2, n))])^2` -/
def P15468129991177126107.Spec : Prop :=
  ∀ n, P15468129991177126107.a n = A093995 (n + 1)

end A093995

/-! ## A093995.P14199679072025861568

`(comp[∑[n]]+xor(n, -1))^2`
-/

namespace A093995.P14199679072025861568
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + Int.xor (n : ℤ) (-1)) ^ 2

end

end A093995.P14199679072025861568

namespace A093995

/-- `(comp[∑[n]]+xor(n, -1))^2` -/
def P14199679072025861568.Spec : Prop :=
  ∀ n, P14199679072025861568.a n = A093995 (n + 1)

end A093995

/-! ## A093995.P8017167496464828643

`(comp[C(n, 2)]-(n+1))^2`
-/

namespace A093995.P8017167496464828643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ)) ^ 2

end

end A093995.P8017167496464828643

namespace A093995

/-- `(comp[C(n, 2)]-(n+1))^2` -/
def P8017167496464828643.Spec : Prop :=
  ∀ n, P8017167496464828643.a n = A093995 (n + 1)

end A093995

/-! ## A093995.P1284266948954144999

`round(sqrt(∑[3^(n%2)]))^2`
-/

namespace A093995.P1284266948954144999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) ^ 2

end

end A093995.P1284266948954144999

namespace A093995

/-- `round(sqrt(∑[3^(n%2)]))^2` -/
def P1284266948954144999.Spec : Prop :=
  ∀ n, P1284266948954144999.a n = A093995 (n + 1)

end A093995

/-! ## A093995.P1176978304544511627

`∑[val(char[C(n, 2)]+1, 2)]^2`
-/

namespace A093995.P1176978304544511627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((if ∃ j, f2 j = n then 1 else 0) + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A093995.P1176978304544511627

namespace A093995

/-- `∑[val(char[C(n, 2)]+1, 2)]^2` -/
def P1176978304544511627.Spec : Prop :=
  ∀ n, (P1176978304544511627.a n : ℤ) = A093995 (n + 1)

end A093995

/-! ## A093995.P17311906316545153296

`∑[C(char[C(n, 2)]+1, 2)]^2`
-/

namespace A093995.P17311906316545153296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((if ∃ j, f2 j = n then 1 else 0) + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A093995.P17311906316545153296

namespace A093995

/-- `∑[C(char[C(n, 2)]+1, 2)]^2` -/
def P17311906316545153296.Spec : Prop :=
  ∀ n, (P17311906316545153296.a n : ℤ) = A093995 (n + 1)

end A093995

/-! ## A093995.P5557410725617666942

`∑[2*n]%comp[∑[n]]+1+n`
-/

namespace A093995.P5557410725617666942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1 + n

end

end A093995.P5557410725617666942

namespace A093995

/-- `∑[2*n]%comp[∑[n]]+1+n` -/
def P5557410725617666942.Spec : Prop :=
  ∀ n, (P5557410725617666942.a n : ℤ) = A093995 (n + 1)

end A093995

/-! ## A093995.P14656914176353369841

`round(sqrt(2*n+1))^(2%(n+2))`
-/

namespace A093995.P14656914176353369841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) ^ (2 % (n + 2))

end

end A093995.P14656914176353369841

namespace A093995

/-- `round(sqrt(2*n+1))^(2%(n+2))` -/
def P14656914176353369841.Spec : Prop :=
  ∀ n, P14656914176353369841.a n = A093995 (n + 1)

end A093995

/-! ## A093995.P12207503208686623750

`round(sqrt(2*n+1))²%(n+2)²`
-/

namespace A093995.P12207503208686623750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) ^ 2) ((n + 2) ^ 2 : ℤ)

end

end A093995.P12207503208686623750

namespace A093995

/-- `round(sqrt(2*n+1))²%(n+2)²` -/
def P12207503208686623750.Spec : Prop :=
  ∀ n, P12207503208686623750.a n = A093995 (n + 1)

end A093995

/-! ## A093995.P17836701006432138419

`Δ[round(sqrt(2*n))²]+a(n-1)` with `a(0)=1`
-/

namespace A093995.P17836701006432138419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A093995.P17836701006432138419

namespace A093995

/-- `Δ[round(sqrt(2*n))²]+a(n-1)` -/
def P17836701006432138419.Spec : Prop :=
  ∀ n, P17836701006432138419.a n = A093995 (n + 1)

end A093995

/-! ## A093995.P6642512022906989204

`∑[A198954(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A093995

/-- `∑[A198954(n)]` -/
def P6642512022906989204.Spec : Prop :=
  ∀ n, P6642512022906989204.a n = A093995 (n + 1)

theorem P6642512022906989204.correct : P6642512022906989204.Spec := by
  intro n
  simp only [A093995, Nat.add_sub_cancel]

end A093995

/-! ## A093995.P10477364075885468489

`∑[abs(A010816(n))]`
-/

namespace A093995.P10477364075885468489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010816 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093995.P10477364075885468489

namespace A093995

/-- `∑[abs(A010816(n))]` -/
def P10477364075885468489.Spec : Prop :=
  ∀ n, P10477364075885468489.a n = A093995 (n + 1)

end A093995

/-! ## A093995.P6886988562171586913

`∑[abs(A133089(n))]`
-/

namespace A093995.P6886988562171586913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133089 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093995.P6886988562171586913

namespace A093995

/-- `∑[abs(A133089(n))]` -/
def P6886988562171586913.Spec : Prop :=
  ∀ n, P6886988562171586913.a n = A093995 (n + 1)

end A093995

/-! ## A093995.P5342829189260246390

`ceil(log2(A140513(n))²)`
-/

namespace A093995.P5342829189260246390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A140513 n : ℝ) ^ 2⌉

end

end A093995.P5342829189260246390

namespace A093995

/-- `ceil(log2(A140513(n))²)` -/
def P5342829189260246390.Spec : Prop :=
  ∀ n, P5342829189260246390.a n = A093995 (n + 1)

end A093995

/-! ## A093995.P16724581994152235697

`A265129(n+1)-1`
-/

namespace A093995.P16724581994152235697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - 1

end

end A093995.P16724581994152235697

namespace A093995

/-- `A265129(n+1)-1` -/
def P16724581994152235697.Spec : Prop :=
  ∀ n, P16724581994152235697.a n = A093995 (n + 1)

end A093995

/-! ## A093995.P1522738951065980767

`A038722(n+1)+n`
-/

namespace A093995.P1522738951065980767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) + (n : ℤ)

end

end A093995.P1522738951065980767

namespace A093995

/-- `A038722(n+1)+n` -/
def P1522738951065980767.Spec : Prop :=
  ∀ n, P1522738951065980767.a n = A093995 (n + 1)

end A093995

/-! ## A093995.P1356013076471307389

`A061579(n)+1+n`
-/

namespace A093995.P1356013076471307389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n + 1 + (n : ℤ)

end

end A093995.P1356013076471307389

namespace A093995

/-- `A061579(n)+1+n` -/
def P1356013076471307389.Spec : Prop :=
  ∀ n, P1356013076471307389.a n = A093995 (n + 1)

end A093995

/-!
# A093996: G.f.: Product_{k>=2} (1 - x^{F_k}) where F_k are the Fibonacci numbers.

The programs for A093996, there is no canonical definition to state claims against.
-/

/-! ## A093996.P2265095452810118549

`A093998(n)-A093997(n)`
-/

namespace A093996.P2265095452810118549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 n - A093997 n

end

end A093996.P2265095452810118549

/-! ## A093996.P3035527505948446180

`∑[A357380(n)]`
-/

namespace A093996.P3035527505948446180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093996.P3035527505948446180

/-! ## A093996.P13295035161908036197

`2*A093998(n)-A000119(n)`
-/

namespace A093996.P13295035161908036197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093998 n - A000119 n

end

end A093996.P13295035161908036197

/-! ## A093996.P12565991025099940788

`A000119(n)-2*A093997(n)`
-/

namespace A093996.P12565991025099940788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 n - 2 * A093997 n

end

end A093996.P12565991025099940788

/-! ## A093996.P9916399550264961577

`2*A093998(n)-∑[A303903(n)]`
-/

namespace A093996.P9916399550264961577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093998 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093996.P9916399550264961577

/-! ## A093996.P365991300541205860

`∑[A303903(n)]-2*A093997(n)`
-/

namespace A093996.P365991300541205860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A093997 n

end

end A093996.P365991300541205860

/-! ## A093996.P13432855782550953275

`A357382(A063732(n+1))`
-/

namespace A093996.P13432855782550953275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357382 (A063732 (n + 1)).toNat

end

end A093996.P13432855782550953275

/-! ## A093996.P14619740292247875630

`A093997(A007066(n+1))-A093997(n)`
-/

namespace A093996.P14619740292247875630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093997 (A007066 (n + 1)).toNat - A093997 n

end

end A093996.P14619740292247875630

/-! ## A093996.P8930759562735813348

`A093998(n)-A093998(A007066(n+1))`
-/

namespace A093996.P8930759562735813348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 n - A093998 (A007066 (n + 1)).toNat

end

end A093996.P8930759562735813348

/-! ## A093996.P1660026802879633415

`A093997(A026356(n+1))-A093997(n)`
-/

namespace A093996.P1660026802879633415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093997 (A026356 (n + 1)).toNat - A093997 n

end

end A093996.P1660026802879633415

/-! ## A093996.P13856996020093404715

`A093998(n)-A093998(A026356(n+1))`
-/

namespace A093996.P13856996020093404715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 n - A093998 (A026356 (n + 1)).toNat

end

end A093996.P13856996020093404715

/-! ## A093996.P14550890409710293985

`A093997(A184583(n+1))-A093997(n)`
-/

namespace A093996.P14550890409710293985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093997 (A184583 (n + 1)).toNat - A093997 n

end

end A093996.P14550890409710293985

/-! ## A093996.P4940956846850834677

`A093998(n)-A093998(A184583(n+1))`
-/

namespace A093996.P4940956846850834677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 n - A093998 (A184583 (n + 1)).toNat

end

end A093996.P4940956846850834677

/-! ## A093996.P14750420223702837338

`A093997(A184735(n+1))-A093997(n)`
-/

namespace A093996.P14750420223702837338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093997 (A184735 (n + 1)).toNat - A093997 n

end

end A093996.P14750420223702837338

/-! ## A093996.P41523501976541055

`A093998(n)-A093998(A184735(n+1))`
-/

namespace A093996.P41523501976541055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 n - A093998 (A184735 (n + 1)).toNat

end

end A093996.P41523501976541055

/-! ## A093996.P14795676892619888369

`A093997(A189379(n+1))-A093997(n)`
-/

namespace A093996.P14795676892619888369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093997 (A189379 (n + 1)).toNat - A093997 n

end

end A093996.P14795676892619888369

/-! ## A093996.P15532412268063381744

`A093998(n)-A093998(A189379(n+1))`
-/

namespace A093996.P15532412268063381744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 n - A093998 (A189379 (n + 1)).toNat

end

end A093996.P15532412268063381744

/-! ## A093996.P9211150180934825394

`A093997(A057843(n+2))-A093997(n)`
-/

namespace A093996.P9211150180934825394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093997 (A057843 (n + 2)).toNat - A093997 n

end

end A093996.P9211150180934825394

/-! ## A093996.P13045044105421097371

`A093998(n)-A093998(A057843(n+2))`
-/

namespace A093996.P13045044105421097371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 n - A093998 (A057843 (n + 2)).toNat

end

end A093996.P13045044105421097371

/-!
# A093997: Number of partitions of n with an odd number of distinct Fibonacci parts.

The programs for A093997, there is no canonical definition to state claims against.
-/

/-! ## A093997.P14544532939887041880

`A000119(n)-A093998(n)`
-/

namespace A093997.P14544532939887041880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 n - A093998 n

end

end A093997.P14544532939887041880

/-! ## A093997.P10716880226584401584

`A093998(n)-A093996(n)`
-/

namespace A093997.P10716880226584401584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 n - A093996 n

end

end A093997.P10716880226584401584

/-! ## A093997.P14903104149981243276

`∑[A303903(n)]-A093998(n)`
-/

namespace A093997.P14903104149981243276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A093998 n

end

end A093997.P14903104149981243276

/-! ## A093997.P1790370888510393791

`A093998(n)-∑[A357380(n)]`
-/

namespace A093997.P1790370888510393791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093997.P1790370888510393791

/-! ## A093997.P1532197275821112748

`(A000119(n)-A093996(n))/2`
-/

namespace A093997.P1532197275821112748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000119 n - A093996 n : ℚ) / 2

end

end A093997.P1532197275821112748

/-! ## A093997.P13783221671238755867

`A093998(A007066(n+1))`
-/

namespace A093997.P13783221671238755867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 (A007066 (n + 1)).toNat

end

end A093997.P13783221671238755867

/-! ## A093997.P4312803767933540691

`A093998(A026356(n+1))`
-/

namespace A093997.P4312803767933540691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 (A026356 (n + 1)).toNat

end

end A093997.P4312803767933540691

/-! ## A093997.P1392741304993416364

`A093998(A184583(n+1))`
-/

namespace A093997.P1392741304993416364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 (A184583 (n + 1)).toNat

end

end A093997.P1392741304993416364

/-! ## A093997.P13262749544755841565

`A093998(A184735(n+1))`
-/

namespace A093997.P13262749544755841565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 (A184735 (n + 1)).toNat

end

end A093997.P13262749544755841565

/-! ## A093997.P13535685708385485731

`A093998(A189379(n+1))`
-/

namespace A093997.P13535685708385485731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 (A189379 (n + 1)).toNat

end

end A093997.P13535685708385485731

/-! ## A093997.P17705952974075384665

`A093998(A057843(n+2))`
-/

namespace A093997.P17705952974075384665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 (A057843 (n + 2)).toNat

end

end A093997.P17705952974075384665

/-! ## A093997.P9465588872571914989

`A093998(A026351(n)+1+n)`
-/

namespace A093997.P9465588872571914989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 (A026351 n + 1 + (n : ℤ)).toNat

end

end A093997.P9465588872571914989

/-! ## A093997.P10826129628360795899

`A093998(A026351(A026351(n)))`
-/

namespace A093997.P10826129628360795899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 (A026351 (A026351 n).toNat).toNat

end

end A093997.P10826129628360795899

/-!
# A093998: Number of partitions of n with an even number of distinct Fibonacci parts.

The programs for A093998, there is no canonical definition to state claims against.
-/

/-! ## A093998.P144465253012388518

`A093997(n)+A093996(n)`
-/

namespace A093998.P144465253012388518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093997 n + A093996 n

end

end A093998.P144465253012388518

/-! ## A093998.P16501817951540254392

`A000119(n)-A093997(n)`
-/

namespace A093998.P16501817951540254392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 n - A093997 n

end

end A093998.P16501817951540254392

/-! ## A093998.P11114028785180350184

`A093997(n)+∑[A357380(n)]`
-/

namespace A093998.P11114028785180350184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093997 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093998.P11114028785180350184

/-! ## A093998.P8655282366609725506

`∑[A303903(n)]-A093997(n)`
-/

namespace A093998.P8655282366609725506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A093997 n

end

end A093998.P8655282366609725506

/-! ## A093998.P12660668058658032535

`(A093996(n)+A000119(n))/2`
-/

namespace A093998.P12660668058658032535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093996 n + A000119 n : ℚ) / 2

end

end A093998.P12660668058658032535

/-! ## A093998.P12819359222652617147

`A093997(A007066(n+1))`
-/

namespace A093998.P12819359222652617147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093997 (A007066 (n + 1)).toNat

end

end A093998.P12819359222652617147

/-! ## A093998.P17983101123192699672

`A093997(A026356(n+1))`
-/

namespace A093998.P17983101123192699672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093997 (A026356 (n + 1)).toNat

end

end A093998.P17983101123192699672

/-! ## A093998.P11437449556364083708

`A093997(A184583(n+1))`
-/

namespace A093998.P11437449556364083708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093997 (A184583 (n + 1)).toNat

end

end A093998.P11437449556364083708

/-! ## A093998.P127537644807067522

`A093997(A184735(n+1))`
-/

namespace A093998.P127537644807067522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093997 (A184735 (n + 1)).toNat

end

end A093998.P127537644807067522

/-! ## A093998.P14041996207959815992

`A093997(A189379(n+1))`
-/

namespace A093998.P14041996207959815992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093997 (A189379 (n + 1)).toNat

end

end A093998.P14041996207959815992

/-! ## A093998.P7831543446817841145

`A093997(A057843(n+2))`
-/

namespace A093998.P7831543446817841145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093997 (A057843 (n + 2)).toNat

end

end A093998.P7831543446817841145

/-! ## A093998.P10548017336569208672

`A093997(A026351(n)+1+n)`
-/

namespace A093998.P10548017336569208672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093997 (A026351 n + 1 + (n : ℤ)).toNat

end

end A093998.P10548017336569208672

/-! ## A093998.P10875365691142851758

`A093997(A026351(A026351(n)))`
-/

namespace A093998.P10875365691142851758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093997 (A026351 (A026351 n).toNat).toNat

end

end A093998.P10875365691142851758

/-!
# A093999: Primes of the form abs(floor(k*log(k)-sqrt(k*(k+2*Pi)/Pi))).

The programs for A093999, there is no canonical definition to state claims against.
-/

/-! ## A093999.P15435806242980824769

`p?[A094227(n+3)+char[1]]`
-/

namespace A093999.P15435806242980824769
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094227 (n + 3) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093999.P15435806242980824769

/-! ## A093999.P5094814152362233403

`p?[A094227(n+3)*A141044(n)]`
-/

namespace A093999.P5094814152362233403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094227 (n + 3) * A141044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093999.P5094814152362233403

/-! ## A093999.P4127456276748776521

`p?[gcd(A000038(n), A094227(n+3))]`
-/

namespace A093999.P4127456276748776521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A094227 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A093999.P4127456276748776521

/-! ## A093999.P2717195592687185542

`p?[∪[A094229(n+1), A094227(n+3)]]`
-/

namespace A093999.P2717195592687185542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094229 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094227 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A093999.P2717195592687185542

