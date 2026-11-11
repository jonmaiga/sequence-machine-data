import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C037
import Seq.B000.C044
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C014
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
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
# A401501: Triangle read by rows: T(n, k) is the number of partitions of the set {1, 2,..., 2*n-k} into n-k nonempty lists, such that the smallest element of each list is not in the initial position. The lists themselves are unordered.

The programs for A401501, the canonical program `A401501.P17358560477405179724` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401501 has offset 0).

The definition of A401501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401501.P17358560477405179724

`A401502(C(row(n)+1, 2)+row(n)-col(n))`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A401501

/-- `A401502(C(row(n)+1, 2)+row(n)-col(n))` -/
def P17358560477405179724.Spec : Prop :=
  ∀ n, P17358560477405179724.a n = A401501 n

theorem P17358560477405179724.correct : P17358560477405179724.Spec := by
  intro n
  simp only [A401501]

end A401501

/-! ## A401501.P8697915268556558871

`A401502(A061579(n))`
-/

namespace A401501.P8697915268556558871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401502 (A061579 n).toNat

end

end A401501.P8697915268556558871

namespace A401501

/-- `A401502(A061579(n))` -/
def P8697915268556558871.Spec : Prop :=
  ∀ n, P8697915268556558871.a n = A401501 n

end A401501

/-!
# A401502: Triangle read by rows: T(n, k) is the number of partitions of the set {1, 2, ..., n+k} into k nonempty lists, such that the smallest element of each list is not in the initial position. The lists themselves are unordered.

The programs for A401502, the canonical program `A401502.P13268597667660539485` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401502 has offset 0).

The definition of A401502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401502.P13268597667660539485

`(row(n)+col(n)-1)*(T(n-1,k-1)+2*T(n-1,k)-(row(n)+col(n)-2)*T(n-2,k))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401502

/-- `(row(n)+col(n)-1)*(T(n-1,k-1)+2*T(n-1,k)-(row(n)+col(n)-2)*T(n-2,k))` -/
def P13268597667660539485.Spec : Prop :=
  ∀ n, P13268597667660539485.a n = A401502 n

theorem P13268597667660539485.correct : P13268597667660539485.Spec := by
  intro n
  simp only [A401502]

end A401502

/-! ## A401502.P15310113458868603503

`A401501(C(row(n)+1, 2)+row(n)-col(n))`
-/

namespace A401502.P15310113458868603503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401501 ((Nat.choose (SequenceMachineLib.triRow n + 1) 2 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat

end

end A401502.P15310113458868603503

namespace A401502

/-- `A401501(C(row(n)+1, 2)+row(n)-col(n))` -/
def P15310113458868603503.Spec : Prop :=
  ∀ n, P15310113458868603503.a n = A401502 n

end A401502

/-! ## A401502.P503662449518208890

`A401501(A061579(n))`
-/

namespace A401502.P503662449518208890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401501 (A061579 n).toNat

end

end A401502.P503662449518208890

namespace A401502

/-- `A401501(A061579(n))` -/
def P503662449518208890.Spec : Prop :=
  ∀ n, P503662449518208890.a n = A401502 n

end A401502

/-!
# A401505: a(n) = log_2(A307848(n)).

The programs for A401505, the canonical program `A401505.P12185595390029850357` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401505 has offset 1).

The definition of A401505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401505.P12185595390029850357

`log2(A307848(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A401505

/-- `log2(A307848(n+1))` -/
def P12185595390029850357.Spec : Prop :=
  ∀ n, P12185595390029850357.a n = (A401505 (n + 1) : ℝ)

end A401505

/-!
# A401508: Least prime p such that 2^((p-1)/n) == 1 (mod p).

The programs for A401508, there is no canonical definition to state claims against.
-/

/-! ## A401508.P91551807385007920

`A112686(A014160(n))`
-/

namespace A401508.P91551807385007920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112686 (A014160 n).toNat

end

end A401508.P91551807385007920

/-!
# A401509: Numbers whose largest exponentially odd unitary divisor is a cube.

The programs for A401509, there is no canonical definition to state claims against.
-/

/-! ## A401509.P9426085544148928853

`filter[A227370(2*n+1), A112526(#)]`
-/

namespace A401509.P9426085544148928853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227370 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A401509.P9426085544148928853

/-! ## A401509.P10545496846812828254

`filter[A132016(n+1), A112526(#)]`
-/

namespace A401509.P10545496846812828254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A401509.P10545496846812828254

/-! ## A401509.P887876951198977626

`filter[A172152(n+1), A112526(#)]`
-/

namespace A401509.P887876951198977626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A401509.P887876951198977626

/-! ## A401509.P5815753307262803900

`filter[A219249(n+1), A112526(#)]`
-/

namespace A401509.P5815753307262803900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A401509.P5815753307262803900

/-! ## A401509.P13676099573203182832

`filter[A172152(n+1), A380440(#)]`
-/

namespace A401509.P13676099573203182832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380440 (f1 j).toNat = 1) n)

end

end A401509.P13676099573203182832

/-!
# A401512: Denominators of continued fraction convergents to A226771.

The programs for A401512, there is no canonical definition to state claims against.
-/

/-! ## A401512.P3978445639094017423

`a(n-2)+a(n-1)*∑[n+1]` with `a(0)=1, a(1)=3`
-/

namespace A401512.P3978445639094017423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A401512.P3978445639094017423

/-!
# A401529: Number of labeled simple graphs on n vertices (not necessarily connected) with burning number 2.

The programs for A401529, there is no canonical definition to state claims against.
-/

/-! ## A401529.P4154371102711748950

`A361858(A000041(2*n+1))-1`
-/

namespace A401529.P4154371102711748950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361858 (A000041 (2 * n + 1)).toNat - 1

end

end A401529.P4154371102711748950

/-!
# A401531: Number of n-bit binary significands X for which RN_n(X * RN_n(1/X)) != 1 where RN_n is the rounding to n significant binary bits using round to nearest, ties to even, with an unbounded exponent range.

The programs for A401531, there is no canonical definition to state claims against.
-/

/-! ## A401531.P2364325672032459455

`A094365(A193147(n))`
-/

namespace A401531.P2364325672032459455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094365 (A193147 n).toNat

end

end A401531.P2364325672032459455

/-! ## A401531.P16248624586505825988

`A316896(A098763(n))`
-/

namespace A401531.P16248624586505825988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316896 (A098763 n).toNat

end

end A401531.P16248624586505825988

/-! ## A401531.P10469435647783928510

`A344646(A335470(n))`
-/

namespace A401531.P10469435647783928510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344646 (A335470 n).toNat

end

end A401531.P10469435647783928510

/-! ## A401531.P7246977224824475330

`A370842(A173758(n+1))`
-/

namespace A401531.P7246977224824475330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370842 (A173758 (n + 1)).toNat

end

end A401531.P7246977224824475330

/-! ## A401531.P1362535845539990715

`A358503(A056690(n+2))`
-/

namespace A401531.P1362535845539990715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358503 (A056690 (n + 2)).toNat

end

end A401531.P1362535845539990715

/-!
# A401539: Semiprime residuals: a(n) = q (mod p), where p <= q are the prime factors of the n-th semiprime S_n = p*q.

The programs for A401539, the canonical program `A401539.P6625268143966319437` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401539 has offset 1).

The definition of A401539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401539.P656428641672002179

`A069859(A001358(n+1))`
-/

namespace A401539.P656428641672002179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (A001358 (n + 1)).toNat

end

end A401539.P656428641672002179

namespace A401539

/-- `A069859(A001358(n+1))` -/
def P656428641672002179.Spec : Prop :=
  ∀ n, P656428641672002179.a n = A401539 (n + 1)

end A401539

/-! ## A401539.P6625268143966319437

`A068318(n+1)%A084126(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A401539

/-- `A068318(n+1)%A084126(n+1)` -/
def P6625268143966319437.Spec : Prop :=
  ∀ n, P6625268143966319437.a n = A401539 (n + 1)

theorem P6625268143966319437.correct : P6625268143966319437.Spec := by
  intro n
  simp only [A401539, Nat.add_sub_cancel]

end A401539

/-! ## A401539.P17472845089329201336

`A084127(n+1)%A084126(n+1)`
-/

namespace A401539.P17472845089329201336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084127 (n + 1)) (A084126 (n + 1))

end

end A401539.P17472845089329201336

namespace A401539

/-- `A084127(n+1)%A084126(n+1)` -/
def P17472845089329201336.Spec : Prop :=
  ∀ n, P17472845089329201336.a n = A401539 (n + 1)

end A401539

/-! ## A401539.P5164677669266827748

`A106550(n+1)%A084126(n+1)`
-/

namespace A401539.P5164677669266827748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106550 (n + 1)) (A084126 (n + 1))

end

end A401539.P5164677669266827748

namespace A401539

/-- `A106550(n+1)%A084126(n+1)` -/
def P5164677669266827748.Spec : Prop :=
  ∀ n, P5164677669266827748.a n = A401539 (n + 1)

end A401539

/-! ## A401539.P16552992574180142048

`A106554(n+1)%A084126(n+1)`
-/

namespace A401539.P16552992574180142048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106554 (n + 1)) (A084126 (n + 1))

end

end A401539.P16552992574180142048

namespace A401539

/-- `A106554(n+1)%A084126(n+1)` -/
def P16552992574180142048.Spec : Prop :=
  ∀ n, P16552992574180142048.a n = A401539 (n + 1)

end A401539

/-! ## A401539.P4720638921507336115

`A109313(n+1)%A084126(n+1)`
-/

namespace A401539.P4720638921507336115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109313 (n + 1)) (A084126 (n + 1))

end

end A401539.P4720638921507336115

namespace A401539

/-- `A109313(n+1)%A084126(n+1)` -/
def P4720638921507336115.Spec : Prop :=
  ∀ n, P4720638921507336115.a n = A401539 (n + 1)

end A401539

/-! ## A401539.P8695549815478581368

`A257533(n+1)%A084126(n+1)`
-/

namespace A401539.P8695549815478581368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257533 (n + 1)) (A084126 (n + 1))

end

end A401539.P8695549815478581368

namespace A401539

/-- `A257533(n+1)%A084126(n+1)` -/
def P8695549815478581368.Spec : Prop :=
  ∀ n, P8695549815478581368.a n = A401539 (n + 1)

end A401539

/-! ## A401539.P12071030618447669003

`A069859(A176540(n+2))`
-/

namespace A401539.P12071030618447669003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (A176540 (n + 2)).toNat

end

end A401539.P12071030618447669003

namespace A401539

/-- `A069859(A176540(n+2))` -/
def P12071030618447669003.Spec : Prop :=
  ∀ n, P12071030618447669003.a n = A401539 (n + 1)

end A401539

/-! ## A401539.P14400347405105637763

`A161849(A176193(n+1))`
-/

namespace A401539.P14400347405105637763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161849 (A176193 (n + 1)).toNat

end

end A401539.P14400347405105637763

namespace A401539

/-- `A161849(A176193(n+1))` -/
def P14400347405105637763.Spec : Prop :=
  ∀ n, P14400347405105637763.a n = A401539 (n + 1)

end A401539

/-! ## A401539.P9093945462537207562

`A069859(A074985(n+1))`
-/

namespace A401539.P9093945462537207562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (A074985 (n + 1)).toNat

end

end A401539.P9093945462537207562

namespace A401539

/-- `A069859(A074985(n+1))` -/
def P9093945462537207562.Spec : Prop :=
  ∀ n, P9093945462537207562.a n = A401539 (n + 1)

end A401539

/-!
# A401544: Numbers k such that the alternating group A_k does not contain an element of order k.

The programs for A401544, the canonical program `A401544.P3111510912022119941` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401544 has offset 1).

The definition of A401544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401544.P3111510912022119941

`ogf((2-2x^2-4x^3)/(1-2x))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401544

/-- `ogf((2-2x^2-4x^3)/(1-2x))` -/
def P3111510912022119941.Spec : Prop :=
  ∀ n, P3111510912022119941.a n = A401544 (n + 1)

theorem P3111510912022119941.correct : P3111510912022119941.Spec := by
  intro n
  simp only [A401544, Nat.add_sub_cancel]

end A401544

/-! ## A401544.P5629211041755842318

`2*a(n-1)` with `a(0)=2, a(1)=4, a(2)=6, a(3)=8`
-/

namespace A401544.P5629211041755842318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 6, 8] fun n a =>
  2 * a (n - 1)

end

end A401544.P5629211041755842318

namespace A401544

/-- `2*a(n-1)` -/
def P5629211041755842318.Spec : Prop :=
  ∀ n, (P5629211041755842318.a n : ℤ) = A401544 (n + 1)

end A401544

/-! ## A401544.P9098150618560077702

`a(n-1)+a(n-1)` with `a(0)=2, a(1)=4, a(2)=6, a(3)=8`
-/

namespace A401544.P9098150618560077702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 6, 8] fun n a =>
  a (n - 1) + a (n - 1)

end

end A401544.P9098150618560077702

namespace A401544

/-- `a(n-1)+a(n-1)` -/
def P9098150618560077702.Spec : Prop :=
  ∀ n, (P9098150618560077702.a n : ℤ) = A401544 (n + 1)

end A401544

/-! ## A401544.P16497980560072881397

`record[A077569(n+2)]`
-/

namespace A401544.P16497980560072881397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077569 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A401544.P16497980560072881397

namespace A401544

/-- `record[A077569(n+2)]` -/
def P16497980560072881397.Spec : Prop :=
  ∀ n, P16497980560072881397.a n = A401544 (n + 1)

end A401544

/-! ## A401544.P2076866919908717794

`A052515(n)+2*(n+1)`
-/

namespace A401544.P2076866919908717794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052515 n + (2 * (n + 1) : ℤ)

end

end A401544.P2076866919908717794

namespace A401544

/-- `A052515(n)+2*(n+1)` -/
def P2076866919908717794.Spec : Prop :=
  ∀ n, P2076866919908717794.a n = A401544 (n + 1)

end A401544

/-! ## A401544.P7509141783079394967

`A181821(A175787(n+1))`
-/

namespace A401544.P7509141783079394967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A175787 (n + 1)).toNat

end

end A401544.P7509141783079394967

namespace A401544

/-- `A181821(A175787(n+1))` -/
def P7509141783079394967.Spec : Prop :=
  ∀ n, P7509141783079394967.a n = A401544 (n + 1)

end A401544

/-! ## A401544.P15195909181444085121

`A181821(A046022(n+2))`
-/

namespace A401544.P15195909181444085121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A046022 (n + 2)).toNat

end

end A401544.P15195909181444085121

namespace A401544

/-- `A181821(A046022(n+2))` -/
def P15195909181444085121.Spec : Prop :=
  ∀ n, P15195909181444085121.a n = A401544 (n + 1)

end A401544

/-! ## A401544.P10532484439493784859

`A186949(n)+A167891(n)`
-/

namespace A401544.P10532484439493784859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186949 n + A167891 n

end

end A401544.P10532484439493784859

namespace A401544

/-- `A186949(n)+A167891(n)` -/
def P10532484439493784859.Spec : Prop :=
  ∀ n, P10532484439493784859.a n = A401544 (n + 1)

end A401544

/-! ## A401544.P13413119465783209654

`and(A133140(n), A157823(n))`
-/

namespace A401544.P13413119465783209654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133140 n) (A157823 n)

end

end A401544.P13413119465783209654

namespace A401544

/-- `and(A133140(n), A157823(n))` -/
def P13413119465783209654.Spec : Prop :=
  ∀ n, P13413119465783209654.a n = A401544 (n + 1)

end A401544

/-! ## A401544.P13953815313204593965

`max(A000079(n), A151688(n))`
-/

namespace A401544.P13953815313204593965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A000079 n) (A151688 n)

end

end A401544.P13953815313204593965

namespace A401544

/-- `max(A000079(n), A151688(n))` -/
def P13953815313204593965.Spec : Prop :=
  ∀ n, P13953815313204593965.a n = A401544 (n + 1)

end A401544

/-! ## A401544.P4805588803357426027

`A127904(n)+A088041(n+1)`
-/

namespace A401544.P4805588803357426027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127904 n + A088041 (n + 1)

end

end A401544.P4805588803357426027

namespace A401544

/-- `A127904(n)+A088041(n+1)` -/
def P4805588803357426027.Spec : Prop :=
  ∀ n, P4805588803357426027.a n = A401544 (n + 1)

end A401544

/-! ## A401544.P8335732093606661065

`A317108(n+1)+A052515(n)`
-/

namespace A401544.P8335732093606661065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317108 (n + 1) + A052515 n

end

end A401544.P8335732093606661065

namespace A401544

/-- `A317108(n+1)+A052515(n)` -/
def P8335732093606661065.Spec : Prop :=
  ∀ n, P8335732093606661065.a n = A401544 (n + 1)

end A401544

/-! ## A401544.P4386774815201459894

`A317440(n+1)+A052515(n)`
-/

namespace A401544.P4386774815201459894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317440 (n + 1) + A052515 n

end

end A401544.P4386774815201459894

namespace A401544

/-- `A317440(n+1)+A052515(n)` -/
def P4386774815201459894.Spec : Prop :=
  ∀ n, P4386774815201459894.a n = A401544 (n + 1)

end A401544

/-! ## A401544.P5720863338911159040

`A240951(n+1)+A130713(n)`
-/

namespace A401544.P5720863338911159040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240951 (n + 1) + A130713 n

end

end A401544.P5720863338911159040

namespace A401544

/-- `A240951(n+1)+A130713(n)` -/
def P5720863338911159040.Spec : Prop :=
  ∀ n, P5720863338911159040.a n = A401544 (n + 1)

end A401544

/-! ## A401544.P1328946933456307189

`∩[A057048(n), A320674(n+1)]`
-/

namespace A401544.P1328946933456307189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057048 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401544.P1328946933456307189

namespace A401544

/-- `∩[A057048(n), A320674(n+1)]` -/
def P1328946933456307189.Spec : Prop :=
  ∀ n, (P1328946933456307189.a n : ℤ) = A401544 (n + 1)

end A401544

/-! ## A401544.P16929926694947366493

`∪[A067507(n+1), A171494(n)]`
-/

namespace A401544.P16929926694947366493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A401544.P16929926694947366493

namespace A401544

/-- `∪[A067507(n+1), A171494(n)]` -/
def P16929926694947366493.Spec : Prop :=
  ∀ n, (P16929926694947366493.a n : ℤ) = A401544 (n + 1)

end A401544

/-! ## A401544.P8377925553256059947

`∩[A100778(n+1), A164090(n+1)]`
-/

namespace A401544.P8377925553256059947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401544.P8377925553256059947

namespace A401544

/-- `∩[A100778(n+1), A164090(n+1)]` -/
def P8377925553256059947.Spec : Prop :=
  ∀ n, (P8377925553256059947.a n : ℤ) = A401544 (n + 1)

end A401544

/-! ## A401544.P3631751601879209990

`∩[A100778(n+1), A320674(n+1)]`
-/

namespace A401544.P3631751601879209990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401544.P3631751601879209990

namespace A401544

/-- `∩[A100778(n+1), A320674(n+1)]` -/
def P3631751601879209990.Spec : Prop :=
  ∀ n, (P3631751601879209990.a n : ℤ) = A401544 (n + 1)

end A401544

/-! ## A401544.P4966717066904445997

`∩[A164090(n+1), A317306(n+1)]`
-/

namespace A401544.P4966717066904445997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401544.P4966717066904445997

namespace A401544

/-- `∩[A164090(n+1), A317306(n+1)]` -/
def P4966717066904445997.Spec : Prop :=
  ∀ n, (P4966717066904445997.a n : ℤ) = A401544 (n + 1)

end A401544

/-! ## A401544.P7717600610899651355

`∩[A164090(n+1), A368325(n+1)]`
-/

namespace A401544.P7717600610899651355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401544.P7717600610899651355

namespace A401544

/-- `∩[A164090(n+1), A368325(n+1)]` -/
def P7717600610899651355.Spec : Prop :=
  ∀ n, (P7717600610899651355.a n : ℤ) = A401544 (n + 1)

end A401544

/-!
# A401546: First differences of A018900.

The programs for A401546, the canonical program `A401546.P12281128147999140787` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401546 has offset 1).

The definition of A401546 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401546.P12281128147999140787

`A018900(n+2)-A018900(n+1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A401546

/-- `A018900(n+2)-A018900(n+1)` -/
def P12281128147999140787.Spec : Prop :=
  ∀ n, P12281128147999140787.a n = A401546 (n + 1)

theorem P12281128147999140787.correct : P12281128147999140787.Spec := by
  intro n
  simp only [A401546, Nat.add_sub_cancel]

end A401546

/-! ## A401546.P17224491566694960430

`Δ[row(n)]+2^col(n)`
-/

namespace A401546.P17224491566694960430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (2 ^ SequenceMachineLib.triCol n : ℤ)

end

end A401546.P17224491566694960430

namespace A401546

/-- `Δ[row(n)]+2^col(n)` -/
def P17224491566694960430.Spec : Prop :=
  ∀ n, P17224491566694960430.a n = A401546 (n + 1)

end A401546

/-! ## A401546.P16567779446490345499

`C(col(n), row(n))+2^col(n)`
-/

namespace A401546.P16567779446490345499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triCol n) (SequenceMachineLib.triRow n) + 2 ^ SequenceMachineLib.triCol n

end

end A401546.P16567779446490345499

namespace A401546

/-- `C(col(n), row(n))+2^col(n)` -/
def P16567779446490345499.Spec : Prop :=
  ∀ n, (P16567779446490345499.a n : ℤ) = A401546 (n + 1)

end A401546

/-! ## A401546.P504783293157823587

`Δ[A099628(n+1)]`
-/

namespace A401546.P504783293157823587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A401546.P504783293157823587

namespace A401546

/-- `Δ[A099628(n+1)]` -/
def P504783293157823587.Spec : Prop :=
  ∀ n, P504783293157823587.a n = A401546 (n + 1)

end A401546

/-! ## A401546.P6793944855636004703

`A059268(n)+A023531(n)`
-/

namespace A401546.P6793944855636004703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + A023531 n

end

end A401546.P6793944855636004703

namespace A401546

/-- `A059268(n)+A023531(n)` -/
def P6793944855636004703.Spec : Prop :=
  ∀ n, P6793944855636004703.a n = A401546 (n + 1)

end A401546

/-! ## A401546.P10210296782715914519

`A099628(n+2)-A099628(n+1)`
-/

namespace A401546.P10210296782715914519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099628 (n + 2) - A099628 (n + 1)

end

end A401546.P10210296782715914519

namespace A401546

/-- `A099628(n+2)-A099628(n+1)` -/
def P10210296782715914519.Spec : Prop :=
  ∀ n, P10210296782715914519.a n = A401546 (n + 1)

end A401546

/-! ## A401546.P5750321330298594087

`Δ[A018900(n+1)]`
-/

namespace A401546.P5750321330298594087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A401546.P5750321330298594087

namespace A401546

/-- `Δ[A018900(n+1)]` -/
def P5750321330298594087.Spec : Prop :=
  ∀ n, P5750321330298594087.a n = A401546 (n + 1)

theorem P5750321330298594087.correct : P5750321330298594087.Spec := by
  intro n
  simp only [A401546, Nat.add_sub_cancel, A401546.P5750321330298594087.f1, A401546.P5750321330298594087.a, A401546.P12281128147999140787.a, SequenceMachineLib.memo_apply]

end A401546

/-! ## A401546.P17663567236202524820

`Δ[A084468(n+1)]/2`
-/

namespace A401546.P17663567236202524820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084468 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A401546.P17663567236202524820

namespace A401546

/-- `Δ[A084468(n+1)]/2` -/
def P17663567236202524820.Spec : Prop :=
  ∀ n, P17663567236202524820.a n = (A401546 (n + 1) : ℚ)

theorem P17663567236202524820.correct : P17663567236202524820.Spec := by
  intro n
  simp only [A401546, Nat.add_sub_cancel, A401546.P17663567236202524820.f1, A401546.P17663567236202524820.a, A401546.P12281128147999140787.a, A018900, A018900.P2868698677378612256.a, A084468, A084468.P3280344016003290935.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A401546

/-! ## A401546.P14986353575090626572

`(A013609(n+1)+A013609(n))/A110813(n)`
-/

namespace A401546.P14986353575090626572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 (n + 1) + A013609 n : ℚ) / (A110813 n : ℚ)

end

end A401546.P14986353575090626572

namespace A401546

/-- `(A013609(n+1)+A013609(n))/A110813(n)` -/
def P14986353575090626572.Spec : Prop :=
  ∀ n, P14986353575090626572.a n = (A401546 (n + 1) : ℚ)

end A401546

/-! ## A401546.P8060484673402021467

`Δ[A340161(n+1)]`
-/

namespace A401546.P8060484673402021467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A401546.P8060484673402021467

namespace A401546

/-- `Δ[A340161(n+1)]` -/
def P8060484673402021467.Spec : Prop :=
  ∀ n, P8060484673402021467.a n = A401546 (n + 1)

end A401546

/-! ## A401546.P3806098360051822257

`A340161(n+2)-A340161(n+1)`
-/

namespace A401546.P3806098360051822257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340161 (n + 2) - A340161 (n + 1)

end

end A401546.P3806098360051822257

namespace A401546

/-- `A340161(n+2)-A340161(n+1)` -/
def P3806098360051822257.Spec : Prop :=
  ∀ n, P3806098360051822257.a n = A401546 (n + 1)

end A401546

/-! ## A401546.P13214733112894158898

`A023531(n)+A397284(n)/A397286(n)`
-/

namespace A401546.P13214733112894158898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023531 n : ℚ) + (A397284 n : ℚ) / (A397286 n : ℚ)

end

end A401546.P13214733112894158898

namespace A401546

/-- `A023531(n)+A397284(n)/A397286(n)` -/
def P13214733112894158898.Spec : Prop :=
  ∀ n, P13214733112894158898.a n = (A401546 (n + 1) : ℚ)

end A401546

/-! ## A401546.P4490014378149455167

`Δ[A066884(∑[n+2])]`
-/

namespace A401546.P4490014378149455167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066884 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A401546.P4490014378149455167

namespace A401546

/-- `Δ[A066884(∑[n+2])]` -/
def P4490014378149455167.Spec : Prop :=
  ∀ n, P4490014378149455167.a n = A401546 (n + 1)

end A401546

/-! ## A401546.P2465311865838734141

`A131436(A059268(n+1))+A059268(n)`
-/

namespace A401546.P2465311865838734141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131436 (A059268 (n + 1)).toNat + A059268 n

end

end A401546.P2465311865838734141

namespace A401546

/-- `A131436(A059268(n+1))+A059268(n)` -/
def P2465311865838734141.Spec : Prop :=
  ∀ n, P2465311865838734141.a n = A401546 (n + 1)

end A401546

/-! ## A401546.P793468833873636695

`A131436(A130321(n))+A059268(n)`
-/

namespace A401546.P793468833873636695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131436 (A130321 n).toNat + A059268 n

end

end A401546.P793468833873636695

namespace A401546

/-- `A131436(A130321(n))+A059268(n)` -/
def P793468833873636695.Spec : Prop :=
  ∀ n, P793468833873636695.a n = A401546 (n + 1)

end A401546

/-! ## A401546.P7340932432483948898

`A271497(A130459(n+1))`
-/

namespace A401546.P7340932432483948898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271497 (A130459 (n + 1)).toNat

end

end A401546.P7340932432483948898

namespace A401546

/-- `A271497(A130459(n+1))` -/
def P7340932432483948898.Spec : Prop :=
  ∀ n, P7340932432483948898.a n = A401546 (n + 1)

end A401546

/-! ## A401546.P14673623181806861156

`Δ[record[A038558(n+1)]]`
-/

namespace A401546.P14673623181806861156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038558 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A401546.P14673623181806861156

namespace A401546

/-- `Δ[record[A038558(n+1)]]` -/
def P14673623181806861156.Spec : Prop :=
  ∀ n, P14673623181806861156.a n = A401546 (n + 1)

end A401546

/-!
# A401550: Number of inscribable simplicial polyhedra with n nodes.

The programs for A401550, there is no canonical definition to state claims against.
-/

/-! ## A401550.P1037550286878733113

`A000109(n+3)-A007037(n+3)`
-/

namespace A401550.P1037550286878733113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000109 (n + 3) - A007037 (n + 3)

end

end A401550.P1037550286878733113

/-!
# A401551: Number of combinatorial types of triangulations of the sphere with n vertices for which the volume of polyhedra of that type inscribed in the unit sphere has a local maximum at a strictly convex configuration.

The programs for A401551, there is no canonical definition to state claims against.
-/

/-! ## A401551.P16062241147858953245

`A360744(A319436(n+1))`
-/

namespace A401551.P16062241147858953245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360744 (A319436 (n + 1)).toNat

end

end A401551.P16062241147858953245

/-! ## A401551.P12640475430582997390

`A047580(A191701(n+2))`
-/

namespace A401551.P12640475430582997390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047580 (A191701 (n + 2)).toNat

end

end A401551.P12640475430582997390

/-! ## A401551.P9256455008789165756

`A171400(n)+A054163(n)`
-/

namespace A401551.P9256455008789165756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171400 n + A054163 n

end

end A401551.P9256455008789165756

/-! ## A401551.P5421627429239350233

`A320785(n)+A054164(n)`
-/

namespace A401551.P5421627429239350233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320785 n + A054164 n

end

end A401551.P5421627429239350233

/-! ## A401551.P16365504795379026095

`A193147(n)-A088512(n)`
-/

namespace A401551.P16365504795379026095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193147 n - A088512 n

end

end A401551.P16365504795379026095

/-!
# A401552: Run lengths of A400000.

The programs for A401552, there is no canonical definition to state claims against.
-/

/-! ## A401552.P838047489938210053

`runs[A400000(n+1)]`
-/

namespace A401552.P838047489938210053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400000 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A401552.P838047489938210053

/-! ## A401552.P1045783530124803692

`gcd(A116358(n+1), A261312(n+1))`
-/

namespace A401552.P1045783530124803692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A116358 (n + 1)) (A261312 (n + 1))

end

end A401552.P1045783530124803692

/-! ## A401552.P17173978036295366353

`gcd(A255857(n), A261312(n+1))`
-/

namespace A401552.P17173978036295366353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A255857 n) (A261312 (n + 1))

end

end A401552.P17173978036295366353

/-! ## A401552.P13243880709493269799

`A030600(A227574(n))`
-/

namespace A401552.P13243880709493269799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030600 (A227574 n).toNat

end

end A401552.P13243880709493269799

/-! ## A401552.P9026958066951864345

`A022929(A264364(n+1))`
-/

namespace A401552.P9026958066951864345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022929 (A264364 (n + 1)).toNat

end

end A401552.P9026958066951864345

/-!
# A401566: Number of connected symmetric quartic graphs on n nodes.

The programs for A401566, there is no canonical definition to state claims against.
-/

/-! ## A401566.P13986492579351558095

`∑{d}[n+1, A008683((n+1)/#)*A087101(#)]`
-/

namespace A401566.P13986492579351558095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A087101 d

end

end A401566.P13986492579351558095

/-! ## A401566.P4693676575395497193

`A087101(n+1)-A401567(n+1)`
-/

namespace A401566.P4693676575395497193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087101 (n + 1) - A401567 (n + 1)

end

end A401566.P4693676575395497193

/-! ## A401566.P10785349246790363861

`A268238(A225725(n))`
-/

namespace A401566.P10785349246790363861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268238 (A225725 n).toNat

end

end A401566.P10785349246790363861

/-!
# A401567: Number of disconnected symmetric quartic graphs on n nodes.

The programs for A401567, there is no canonical definition to state claims against.
-/

/-! ## A401567.P16181975051994222939

`A087101(n+1)-A401566(n+1)`
-/

namespace A401567.P16181975051994222939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087101 (n + 1) - A401566 (n + 1)

end

end A401567.P16181975051994222939

/-!
# A401568: Number of quintic symmetric graphs on 2n vertices.

The programs for A401568, there is no canonical definition to state claims against.
-/

/-! ## A401568.P1487281919662988334

`∑{d}[n+1, A400580(#)]`
-/

namespace A401568.P1487281919662988334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A400580 d

end

end A401568.P1487281919662988334

/-! ## A401568.P6127389245091093174

`A400580(n+1)+A401569(n+1)`
-/

namespace A401568.P6127389245091093174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400580 (n + 1) + A401569 (n + 1)

end

end A401568.P6127389245091093174

/-!
# A401569: Number of disconnected quintic symmetric graphs on 2n vertices.

The programs for A401569, there is no canonical definition to state claims against.
-/

/-! ## A401569.P12187302119367384249

`A401568(n+1)-A400580(n+1)`
-/

namespace A401569.P12187302119367384249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401568 (n + 1) - A400580 (n + 1)

end

end A401569.P12187302119367384249

/-! ## A401569.P9626673433200663001

`A148076(n)%A375624(n+1)`
-/

namespace A401569.P9626673433200663001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148076 n) (A375624 (n + 1))

end

end A401569.P9626673433200663001

/-! ## A401569.P9249395563906733766

`A346030(n+1)%A375624(n+1)`
-/

namespace A401569.P9249395563906733766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346030 (n + 1)) (A375624 (n + 1))

end

end A401569.P9249395563906733766

/-! ## A401569.P5143800904008817822

`∑{d}[n+1, A349621(#)*A358402((n+1)/#)]`
-/

namespace A401569.P5143800904008817822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349621 d * A358402 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A401569.P5143800904008817822

/-! ## A401569.P3661272096514238284

`∑{d}[n+1, A011586(#-1)*A229140((n+1)/#)]`
-/

namespace A401569.P3661272096514238284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011586 (d - 1) * A229140 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A401569.P3661272096514238284

/-!
# A401570: Numbers k such that (34^k + 33^k)/67 is prime.

The programs for A401570, there is no canonical definition to state claims against.
-/

/-! ## A401570.P10704988155641057511

`A237055(A099576(n))`
-/

namespace A401570.P10704988155641057511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237055 (A099576 n).toNat

end

end A401570.P10704988155641057511

/-!
# A401574: Numbers k such that reversal(k) = (3/2)*k + 3.

The programs for A401574, there is no canonical definition to state claims against.
-/

/-! ## A401574.P5685915502389694355

`A004086(A101703(n+1))`
-/

namespace A401574.P5685915502389694355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A101703 (n + 1)).toNat

end

end A401574.P5685915502389694355

/-!
# A401595: Distance between n^3 and the nearest triangular number, either above or below n^3.

The programs for A401595, the canonical program `A401595.P5597691312598404850` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401595 has offset 0).

The definition of A401595 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053616, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401595.P5597691312598404850

`A053616(n^3)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A401595

/-- `A053616(n^3)` -/
def P5597691312598404850.Spec : Prop :=
  ∀ n, P5597691312598404850.a n = A401595 n

theorem P5597691312598404850.correct : P5597691312598404850.Spec := by
  intro n
  simp only [A401595]

end A401595

/-!
# A401599: Odd numbers k > 1 such that, for some g, iterating x -> (3*x+1)/2^g starting at k gives integers until 1 is reached.

The programs for A401599, there is no canonical definition to state claims against.
-/

/-! ## A401599.P17909544117267438082

`A313789(4^n)`
-/

namespace A401599.P17909544117267438082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313789 (4 ^ n)

end

end A401599.P17909544117267438082

/-! ## A401599.P16408330062357767898

`A004754(A072197(n))`
-/

namespace A401599.P16408330062357767898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (A072197 n).toNat

end

end A401599.P16408330062357767898

