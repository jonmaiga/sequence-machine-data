import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A233300: Number of (n+1)X(4+1) 0..1 arrays x(i,j) with row sums sum{x(i,j), j=1..4+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A233300, there is no canonical definition to state claims against.
-/

/-! ## A233300.P11970343735427762123

`A233301(A141214(n+1))`
-/

namespace A233300.P11970343735427762123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233301 (A141214 (n + 1)).toNat

end

end A233300.P11970343735427762123

/-! ## A233300.P9886044847677853007

`A233301(A027379(n+2))`
-/

namespace A233300.P9886044847677853007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233301 (A027379 (n + 2)).toNat

end

end A233300.P9886044847677853007

/-! ## A233300.P16870219522836073014

`A233301(A055998(n+2))`
-/

namespace A233300.P16870219522836073014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233301 (A055998 (n + 2)).toNat

end

end A233300.P16870219522836073014

/-! ## A233300.P16082424520378090944

`A233301(A155212(n)+5)`
-/

namespace A233300.P16082424520378090944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233301 (A155212 n + 5).toNat

end

end A233300.P16082424520378090944

/-! ## A233300.P2130375882937478670

`A233301(A056000(n)+7)`
-/

namespace A233300.P2130375882937478670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233301 (A056000 n + 7).toNat

end

end A233300.P2130375882937478670

/-!
# A233302: Number of (2+1) X (n+1) 0..1 arrays x(i,j) with row sums sum{x(i,j), j=1..n+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..2+1} nondecreasing.

The programs for A233302, there is no canonical definition to state claims against.
-/

/-! ## A233302.P7899475250210172100

`A267245(∑[n+3]+6)`
-/

namespace A233302.P7899475250210172100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A233302.P7899475250210172100

/-! ## A233302.P1356695315389125940

`A267245(A167614(n+2))%A233303(n+1)`
-/

namespace A233302.P1356695315389125940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267245 (A167614 (n + 2)).toNat) (A233303 (n + 1))

end

end A233302.P1356695315389125940

/-! ## A233302.P16615722286071121032

`A267245(eq[2, A141169(n)])+A094497(n+3)`
-/

namespace A233302.P16615722286071121032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A094497 (n + 3)

end

end A233302.P16615722286071121032

/-! ## A233302.P14969370808643796154

`A233301(∑[n+1]+2)`
-/

namespace A233302.P14969370808643796154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233301 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233302.P14969370808643796154

/-!
# A233303: Number of (3+1)X(n+1) 0..1 arrays x(i,j) with row sums sum{x(i,j), j=1..n+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..3+1} nondecreasing.

The programs for A233303, there is no canonical definition to state claims against.
-/

/-! ## A233303.P4877893259310471963

`A267245(A155212(n)+12)`
-/

namespace A233303.P4877893259310471963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (A155212 n + 12).toNat

end

end A233303.P4877893259310471963

/-! ## A233303.P8735615318340894577

`A267245(eq[4, A002262(n)])`
-/

namespace A233303.P8735615318340894577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233303.P8735615318340894577

/-! ## A233303.P1605358396700018493

`A267245(eq[16, A059268(n)])`
-/

namespace A233303.P1605358396700018493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233303.P1605358396700018493

/-! ## A233303.P9511362276472309047

`A267245(eq[4, A144328(n+1)])`
-/

namespace A233303.P9511362276472309047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233303.P9511362276472309047

/-! ## A233303.P4840680535283587955

`A267245(eq[5, A002260(n+1)])`
-/

namespace A233303.P4840680535283587955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233303.P4840680535283587955

/-!
# A233304: Number of (4+1) X (n+1) 0..1 arrays x(i,j) with row sums sum{x(i,j), j=1..n+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..4+1} nondecreasing.

The programs for A233304, there is no canonical definition to state claims against.
-/

/-! ## A233304.P6031154524510123940

`A233301(∑[n+3]+7)`
-/

namespace A233304.P6031154524510123940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233301 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A233304.P6031154524510123940

/-!
# A233305: Number of (5+1) X (n+1) 0..1 arrays x(i,j) with row sums Sum_{j=1..n+1} x(i,j) nondecreasing, and column sums Sum_{i=1..5+1} i^2*x(i,j) nondecreasing.

The programs for A233305, there is no canonical definition to state claims against.
-/

/-! ## A233305.P11493075584771005321

`A233301(A167499(n+3))`
-/

namespace A233305.P11493075584771005321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233301 (A167499 (n + 3)).toNat

end

end A233305.P11493075584771005321

/-! ## A233305.P2791081168475747288

`A233301(A155212(n)+13)`
-/

namespace A233305.P2791081168475747288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233301 (A155212 n + 13).toNat

end

end A233305.P2791081168475747288

/-! ## A233305.P1937741383516186685

`A233301(A056000(n)+15)`
-/

namespace A233305.P1937741383516186685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233301 (A056000 n + 15).toNat

end

end A233305.P1937741383516186685

/-! ## A233305.P15545104659703804319

`A233301(eq[7, A066657(n)])`
-/

namespace A233305.P15545104659703804319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233301 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233305.P15545104659703804319

/-! ## A233305.P16608689289110679051

`A233301(A167614(n+3)+2)`
-/

namespace A233305.P16608689289110679051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233301 (A167614 (n + 3) + 2).toNat

end

end A233305.P16608689289110679051

/-!
# A233306: Number of (6+1)X(n+1) 0..1 arrays x(i,j) with row sums sum{x(i,j), j=1..n+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..6+1} nondecreasing.

The programs for A233306, there is no canonical definition to state claims against.
-/

/-! ## A233306.P12690326612967427576

`A233301(A166136(n+4))`
-/

namespace A233306.P12690326612967427576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233301 (A166136 (n + 4)).toNat

end

end A233306.P12690326612967427576

/-! ## A233306.P16242708596788985887

`A233301(A056115(n)+21)`
-/

namespace A233306.P16242708596788985887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233301 (A056115 n + 21).toNat

end

end A233306.P16242708596788985887

/-! ## A233306.P16320378894273024539

`A233301(A167499(n+4)+1)`
-/

namespace A233306.P16320378894273024539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233301 (A167499 (n + 4) + 1).toNat

end

end A233306.P16320378894273024539

/-! ## A233306.P12203502254420077331

`A233301(A167614(n+4)+3)`
-/

namespace A233306.P12203502254420077331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233301 (A167614 (n + 4) + 3).toNat

end

end A233306.P12203502254420077331

/-!
# A233307: a(n) = |{0 < k < n: p(k)^2 + q(n-k)^2 is prime}|, where p(.) is the partition function (A000041) and q(.) is the strict partition function (A000009).

The programs for A233307, there is no canonical definition to state claims against.
-/

/-! ## A233307.P16319515757893518822

`A001222(lcm(2, A109722(n)*A331124(n))+1)`
-/

namespace A233307.P16319515757893518822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 2 (A109722 n * A331124 n) + 1)

end

end A233307.P16319515757893518822

/-!
# A233308: Number A(n,k) of tilings of a k X k X n box using k*n bricks of shape k X 1 X 1; square array A(n,k), n>=0, k>=1, read by antidiagonals.

The programs for A233308, there is no canonical definition to state claims against.
-/

/-! ## A233308.P8665299289489089098

`A152650(2*A209571(n+1)-1)`
-/

namespace A233308.P8665299289489089098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152650 (2 * A209571 (n + 1) - 1).toNat

end

end A233308.P8665299289489089098

/-! ## A233308.P7532762821560108357

`A152650(A060747(A209571(n+1)))`
-/

namespace A233308.P7532762821560108357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152650 (A060747 (A209571 (n + 1)).toNat).toNat

end

end A233308.P7532762821560108357

/-! ## A233308.P9758852080577036451

`A029923(A216955(A140993(n+1)²))`
-/

namespace A233308.P9758852080577036451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029923 (A216955 (A140993 (n + 1) ^ 2).toNat).toNat

end

end A233308.P9758852080577036451

/-! ## A233308.P9300485526793336106

`A152650(A209571(n+1)+A209571(n+1)-1)`
-/

namespace A233308.P9300485526793336106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152650 (A209571 (n + 1) + (A209571 (n + 1) - 1)).toNat

end

end A233308.P9300485526793336106

/-!
# A233309: Number of (n+1)X(1+1) 0..4 arrays with row and column sums nondecreasing, and no adjacent elements equal.

The programs for A233309, there is no canonical definition to state claims against.
-/

/-! ## A233309.P11513516836128179014

`A233311(∑[n]+1)`
-/

namespace A233309.P11513516836128179014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233311 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233309.P11513516836128179014

/-! ## A233309.P12226862027211605761

`record[A233311(A286235(n+1))]`
-/

namespace A233309.P12226862027211605761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233311 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233309.P12226862027211605761

/-! ## A233309.P4633576037667428642

`record[A010054(n)*A233311(n+1)]`
-/

namespace A233309.P4633576037667428642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233309.P4633576037667428642

/-! ## A233309.P5050794595938821564

`record[A103451(n)*A233311(n+1)]`
-/

namespace A233309.P5050794595938821564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A233311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233309.P5050794595938821564

/-!
# A233310: Number of (n+1) X (2+1) 0..4 arrays with row and column sums nondecreasing, and no adjacent elements equal.

The programs for A233310, there is no canonical definition to state claims against.
-/

/-! ## A233310.P18185360395002436089

`A233311(∑[n+1]+2)`
-/

namespace A233310.P18185360395002436089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233311 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233310.P18185360395002436089

/-! ## A233310.P4235702157474607566

`record[A233311(A286235(n+1)+1)]`
-/

namespace A233310.P4235702157474607566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233311 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233310.P4235702157474607566

/-! ## A233310.P7211539251019995598

`record[A233311(A348553(3*n+1))]`
-/

namespace A233310.P7211539251019995598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233311 (A348553 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233310.P7211539251019995598

/-!
# A233312: Terms of A114994 which are c-equivalent to "c-squares" (A020330).

The programs for A233312, there is no canonical definition to state claims against.
-/

/-! ## A233312.P10136830086839346441

`A233249(A333219(n+1)²)`
-/

namespace A233312.P10136830086839346441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233249 (A333219 (n + 1) ^ 2).toNat

end

end A233312.P10136830086839346441

/-! ## A233312.P3253036228167419426

`A233249(A358506(n+1)²)`
-/

namespace A233312.P3253036228167419426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233249 (A358506 (n + 1) ^ 2).toNat

end

end A233312.P3253036228167419426

/-! ## A233312.P17384557261725758835

`A233249(A333219(n+1)^2)`
-/

namespace A233312.P17384557261725758835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233249 (A333219 (n + 1) ^ 2).toNat

end

end A233312.P17384557261725758835

/-! ## A233312.P3868969076937912548

`A233249(∏{e}[A057335(n), A016114(#)²])`
-/

namespace A233312.P3868969076937912548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233249 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A016114 (Nat.factorization (f1 n).natAbs p) ^ 2).toNat

end

end A233312.P3868969076937912548

/-! ## A233312.P9487244042372141942

`A233249(∏{e}[A057335(n), A029732(#)²])`
-/

namespace A233312.P9487244042372141942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233249 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A029732 (Nat.factorization (f1 n).natAbs p) ^ 2).toNat

end

end A233312.P9487244042372141942

/-!
# A233314: Primes p such that p+6 and p+12 are composite.

The programs for A233314, the canonical program `A233314.P11642887588606614742` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233314 has offset 1).

The definition of A233314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 532 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233314.P11642887588606614742

`p?[A005843(A191558(n+2))-A191558(n+8)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A233314

/-- `p?[A005843(A191558(n+2))-A191558(n+8)]` -/
def P11642887588606614742.Spec : Prop :=
  ∀ n, P11642887588606614742.a n = A233314 (n + 1)

theorem P11642887588606614742.correct : P11642887588606614742.Spec := by
  intro n
  simp only [A233314, Nat.add_sub_cancel]

end A233314

/-!
# A233318: Primes p such that p+6, p+12 and p+18 are composite.

The programs for A233318, there is no canonical definition to state claims against.
-/

/-! ## A233318.P3729448500072779331

`p?[A233314(n+1)%p?[A233320(n)]]`
-/

namespace A233318.P3729448500072779331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233314 (n + 1)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A233318.P3729448500072779331

/-!
# A233319: E.g.f. A(x) satisfies: A'(x) = A(x*A'(x))^3.

The programs for A233319, there is no canonical definition to state claims against.
-/

/-! ## A233319.P13805500431673823046

`∏[A139432(∏[n!])]`
-/

namespace A233319.P13805500431673823046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A233319.P13805500431673823046

/-!
# A233320: Number A(n,k) of tilings of a k X n rectangle using trominoes of any shape; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A233320, there is no canonical definition to state claims against.
-/

/-! ## A233320.P16094409208545031071

`A303908(A014473(n))%A083844(n+1)`
-/

namespace A233320.P16094409208545031071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303908 (A014473 n).toNat) (A083844 (n + 1))

end

end A233320.P16094409208545031071

/-! ## A233320.P11545413839751507081

`A303908(A014473(n)^A277873(n))`
-/

namespace A233320.P11545413839751507081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303908 (SequenceMachineLib.roundAway ((A014473 n : ℚ) ^ (A277873 n : ℤ))).toNat

end

end A233320.P11545413839751507081

/-! ## A233320.P16946323236251103427

`A303908(A014473(C(n, A277873(n))))`
-/

namespace A233320.P16946323236251103427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303908 (A014473 (Nat.choose n (A277873 n).toNat)).toNat

end

end A233320.P16946323236251103427

/-! ## A233320.P7383968333747621031

`A072453(A045912(n))`
-/

namespace A233320.P7383968333747621031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072453 (A045912 n).toNat

end

end A233320.P7383968333747621031

/-! ## A233320.P3224410928945076479

`A027356(A225532(n))`
-/

namespace A233320.P3224410928945076479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027356 (A225532 n).toNat

end

end A233320.P3224410928945076479

/-!
# A233321: Triangle read by rows: T(n,k) = number of palindromic partitions of n in which the largest part is equal to k, 1 <= k <= n.

The programs for A233321, there is no canonical definition to state claims against.
-/

/-! ## A233321.P4305176659993318526

`A226993(A002145(3*n+4))%A048379(A233323(n+1))`
-/

namespace A233321.P4305176659993318526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226993 (A002145 (3 * n + 4)).toNat) (A048379 (A233323 (n + 1)).toNat)

end

end A233321.P4305176659993318526

/-! ## A233321.P9523837123321025838

`A257528(2*n+5)%A116549(A233323(n+1))`
-/

namespace A233321.P9523837123321025838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257528 (2 * n + 5)) (A116549 (A233323 (n + 1)).toNat)

end

end A233321.P9523837123321025838

/-! ## A233321.P4271786286354350372

`A002145(A227368(2*(n+2)))%A048379(A233323(n+1))`
-/

namespace A233321.P4271786286354350372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002145 (A227368 (2 * (n + 2))).toNat) (A048379 (A233323 (n + 1)).toNat)

end

end A233321.P4271786286354350372

/-! ## A233321.P3736244405956748299

`A294446(A198889(n+2))`
-/

namespace A233321.P3736244405956748299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294446 (A198889 (n + 2)).toNat

end

end A233321.P3736244405956748299

/-! ## A233321.P12023817209279974285

`A316998(A052509(n))%4`
-/

namespace A233321.P12023817209279974285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316998 (A052509 n).toNat) 4

end

end A233321.P12023817209279974285

/-!
# A233322: Triangle read by rows: T(n,k) = number of palindromic partitions of n in which no part exceeds k, 1 <= k <= n.

The programs for A233322, there is no canonical definition to state claims against.
-/

/-! ## A233322.P11159310800518318676

`A233324(n+1)-A043545(A165656(n))`
-/

namespace A233322.P11159310800518318676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233324 (n + 1) - A043545 (A165656 n).toNat

end

end A233322.P11159310800518318676

/-! ## A233322.P14654088884714185635

`A034880(A228246(A233324(n+1)²))`
-/

namespace A233322.P14654088884714185635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034880 (A228246 (A233324 (n + 1) ^ 2).toNat).toNat

end

end A233322.P14654088884714185635

/-! ## A233322.P15761674630858337426

`A233324(n+1)-A043545(A213003(n))`
-/

namespace A233322.P15761674630858337426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233324 (n + 1) - A043545 (A213003 n).toNat

end

end A233322.P15761674630858337426

/-! ## A233322.P13436235273256171889

`A233324(n+1)-A185284(A162901(n+1))`
-/

namespace A233322.P13436235273256171889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233324 (n + 1) - A185284 (A162901 (n + 1)).toNat

end

end A233322.P13436235273256171889

/-!
# A233323: Triangle read by rows: T(n,k) = number of palindromic compositions of n in which the largest part is equal to k, 1 <= k <= n.

The programs for A233323, there is no canonical definition to state claims against.
-/

/-! ## A233323.P1862192607665173467

`A331982(A293808(n)%A332031(n+2))`
-/

namespace A233323.P1862192607665173467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331982 (Int.tmod (A293808 n) (A332031 (n + 2))).toNat

end

end A233323.P1862192607665173467

/-! ## A233323.P11041795201965521822

`A236299(A278984(n+1))%5`
-/

namespace A233323.P11041795201965521822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236299 (A278984 (n + 1)).toNat) 5

end

end A233323.P11041795201965521822

/-! ## A233323.P3187684019366663742

`A277141(A052509(n)*A209438(n))`
-/

namespace A233323.P3187684019366663742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277141 (A052509 n * A209438 n).toNat

end

end A233323.P3187684019366663742

/-! ## A233323.P4315862030296437154

`gcd(A182703(n+1), A363723(A124323(n)))`
-/

namespace A233323.P4315862030296437154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A182703 (n + 1)) (A363723 (A124323 n).toNat)

end

end A233323.P4315862030296437154

/-! ## A233323.P15878378610314169652

`A182703(n+1)^A318753(A220725(n+1))`
-/

namespace A233323.P15878378610314169652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182703 (n + 1) : ℚ) ^ (A318753 (A220725 (n + 1)).toNat : ℤ)

end

end A233323.P15878378610314169652

/-!
# A233324: Triangle read by rows: T(n,k) = number of palindromic compositions of n in which no part exceeds k, 1 <= k <= n.

The programs for A233324, there is no canonical definition to state claims against.
-/

/-! ## A233324.P10922025854273592388

`A233322(n+1)+A043545(A165656(n))`
-/

namespace A233324.P10922025854273592388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233322 (n + 1) + A043545 (A165656 n).toNat

end

end A233324.P10922025854273592388

/-! ## A233324.P11663641638805733595

`A081604(lcm(A002262(n), A101229(n+1)))`
-/

namespace A233324.P11663641638805733595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (Int.lcm (A002262 n) (A101229 (n + 1)))

end

end A233324.P11663641638805733595

/-! ## A233324.P1605895813949761165

`A233322(n+1)+A043545(A213003(n))`
-/

namespace A233324.P1605895813949761165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233322 (n + 1) + A043545 (A213003 n).toNat

end

end A233324.P1605895813949761165

/-! ## A233324.P2833974567019807945

`A328516(A165656(n)²)+A233322(n+1)`
-/

namespace A233324.P2833974567019807945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328516 (A165656 n ^ 2).toNat + A233322 (n + 1)

end

end A233324.P2833974567019807945

/-! ## A233324.P444794416994553106

`A233322(n+1)+A185284(record[A106254(n+1)])`
-/

namespace A233324.P444794416994553106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233322 (n + 1) + A185284 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A233324.P444794416994553106

/-!
# A233325: a(n) = (2*6^(n+1) - 7) / 5.

The programs for A233325, the canonical program `A233325.P877105728730688515` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233325 has offset 0).

The definition of A233325 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*6^(n+1)-7)/5` (program `A233325.P16537781333769897263`, by `A233325.P16537781333769897263.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233325.P877105728730688515

`6*a(n-1)+7` with `a(0)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A233325

/-- `6*a(n-1)+7` -/
def P877105728730688515.Spec : Prop :=
  ∀ n, (P877105728730688515.a n : ℤ) = A233325 n

theorem P877105728730688515.correct : P877105728730688515.Spec := by
  intro n
  simp only [A233325]

end A233325

/-! ## A233325.P11202616224963449169

`A026567(2*n)`
-/

namespace A233325.P11202616224963449169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026567 (2 * n)

end

end A233325.P11202616224963449169

namespace A233325

/-- `A026567(2*n)` -/
def P11202616224963449169.Spec : Prop :=
  ∀ n, P11202616224963449169.a n = A233325 n

end A233325

/-! ## A233325.P16537781333769897263

`(2*6^(n+1)-7)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A233325.P16537781333769897263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 6 ^ (n + 1) : ℤ) - 7 : ℚ) / 5

end

end A233325.P16537781333769897263

namespace A233325

/-- `(2*6^(n+1)-7)/5` -/
def P16537781333769897263.Spec : Prop :=
  ∀ n, P16537781333769897263.a n = (A233325 n : ℚ)

theorem P16537781333769897263.correct : P16537781333769897263.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A233325, Nat.add_sub_cancel, A233325.P16537781333769897263.a, A233325.P877105728730688515.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A233325, Nat.add_sub_cancel, A233325.P16537781333769897263.a, A233325.P877105728730688515.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A233325

/-! ## A233325.P387332782333206577

`ogf((1+6x)/(1-7x+6x^2))`
-/

namespace A233325.P387332782333206577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, -7, 6] n

end

end A233325.P387332782333206577

namespace A233325

/-- `ogf((1+6x)/(1-7x+6x^2))` -/
def P387332782333206577.Spec : Prop :=
  ∀ n, P387332782333206577.a n = A233325 n

end A233325

/-! ## A233325.P15272237501425022800

`xor(3, ∑[2*6^n])`
-/

namespace A233325.P15272237501425022800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 6 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233325.P15272237501425022800

namespace A233325

/-- `xor(3, ∑[2*6^n])` -/
def P15272237501425022800.Spec : Prop :=
  ∀ n, (P15272237501425022800.a n : ℤ) = A233325 n

end A233325

/-! ## A233325.P3905488393927600331

`lcm(6, a(n-1))+7` with `a(0)=1`
-/

namespace A233325.P3905488393927600331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 6 (a (n - 1)) + 7

end

end A233325.P3905488393927600331

namespace A233325

/-- `lcm(6, a(n-1))+7` -/
def P3905488393927600331.Spec : Prop :=
  ∀ n, (P3905488393927600331.a n : ℤ) = A233325 n

end A233325

/-! ## A233325.P14585104372881429902

`∑[6*a(n-1)]` with `a(0)=1, a(1)=12`
-/

namespace A233325.P14585104372881429902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233325.P14585104372881429902

namespace A233325

/-- `∑[6*a(n-1)]` -/
def P14585104372881429902.Spec : Prop :=
  ∀ n, (P14585104372881429902.a n : ℤ) = A233325 n

end A233325

/-! ## A233325.P3927731469863878621

`∑[6^n*ceil(cosh(sin(n)))]`
-/

namespace A233325.P3927731469863878621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * ⌈Real.cosh (Real.sin (n : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233325.P3927731469863878621

namespace A233325

/-- `∑[6^n*ceil(cosh(sin(n)))]` -/
def P3927731469863878621.Spec : Prop :=
  ∀ n, P3927731469863878621.a n = A233325 n

end A233325

/-! ## A233325.P18092637320660732013

`∑[gcd(2*6^n, floor(acot(n)))]`
-/

namespace A233325.P18092637320660732013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * 6 ^ n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233325.P18092637320660732013

namespace A233325

/-- `∑[gcd(2*6^n, floor(acot(n)))]` -/
def P18092637320660732013.Spec : Prop :=
  ∀ n, (P18092637320660732013.a n : ℤ) = A233325 n

end A233325

/-! ## A233325.P14507381441815918291

`A005618(n)-3`
-/

namespace A233325.P14507381441815918291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005618 n - 3

end

end A233325.P14507381441815918291

namespace A233325

/-- `A005618(n)-3` -/
def P14507381441815918291.Spec : Prop :=
  ∀ n, P14507381441815918291.a n = A233325 n

end A233325

/-! ## A233325.P16252764472401085224

`A005610(n+1)-1`
-/

namespace A233325.P16252764472401085224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005610 (n + 1) - 1

end

end A233325.P16252764472401085224

namespace A233325

/-- `A005610(n+1)-1` -/
def P16252764472401085224.Spec : Prop :=
  ∀ n, P16252764472401085224.a n = A233325 n

end A233325

/-! ## A233325.P4868280186784570578

`A152596(n+1)-2`
-/

namespace A233325.P4868280186784570578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152596 (n + 1) - 2

end

end A233325.P4868280186784570578

namespace A233325

/-- `A152596(n+1)-2` -/
def P4868280186784570578.Spec : Prop :=
  ∀ n, P4868280186784570578.a n = A233325 n

end A233325

/-! ## A233325.P13260474106404988537

`2*A105281(n)+1`
-/

namespace A233325.P13260474106404988537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105281 n + 1

end

end A233325.P13260474106404988537

namespace A233325

/-- `2*A105281(n)+1` -/
def P13260474106404988537.Spec : Prop :=
  ∀ n, P13260474106404988537.a n = A233325 n

end A233325

/-! ## A233325.P426612409820933399

`3*A083066(n)-2`
-/

namespace A233325.P426612409820933399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A083066 n - 2

end

end A233325.P426612409820933399

namespace A233325

/-- `3*A083066(n)-2` -/
def P426612409820933399.Spec : Prop :=
  ∀ n, P426612409820933399.a n = A233325 n

end A233325

/-! ## A233325.P17747106039554018002

`4*A261399(n+1)-3`
-/

namespace A233325.P17747106039554018002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A261399 (n + 1) - 3

end

end A233325.P17747106039554018002

namespace A233325

/-- `4*A261399(n+1)-3` -/
def P17747106039554018002.Spec : Prop :=
  ∀ n, P17747106039554018002.a n = A233325 n

end A233325

/-! ## A233325.P8231700994567676827

`∑[(A057427(n)+1)*6^n]`
-/

namespace A233325.P8231700994567676827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * (6 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233325.P8231700994567676827

namespace A233325

/-- `∑[(A057427(n)+1)*6^n]` -/
def P8231700994567676827.Spec : Prop :=
  ∀ n, P8231700994567676827.a n = A233325 n

end A233325

/-! ## A233325.P8152510175568654039

`or(1, A026567(A005843(n)))`
-/

namespace A233325.P8152510175568654039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A026567 (A005843 n).toNat)

end

end A233325.P8152510175568654039

namespace A233325

/-- `or(1, A026567(A005843(n)))` -/
def P8152510175568654039.Spec : Prop :=
  ∀ n, P8152510175568654039.a n = A233325 n

end A233325

/-! ## A233325.P7238826280623587215

`∑[A003945(n)*A003946(n)]`
-/

namespace A233325.P7238826280623587215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n * A003946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233325.P7238826280623587215

namespace A233325

/-- `∑[A003945(n)*A003946(n)]` -/
def P7238826280623587215.Spec : Prop :=
  ∀ n, P7238826280623587215.a n = A233325 n

end A233325

/-! ## A233325.P6250066606386923033

`a(n-1)+6^(n+1)/3` with `a(0)=1`
-/

namespace A233325.P6250066606386923033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (6 ^ (n + 1) : ℚ) / 3

end

end A233325.P6250066606386923033

namespace A233325

/-- `a(n-1)+6^(n+1)/3` -/
def P6250066606386923033.Spec : Prop :=
  ∀ n, P6250066606386923033.a n = (A233325 n : ℚ)

end A233325

/-!
# A233326: a(n) = (7^(n+1) - 4) / 3.

The programs for A233326, the canonical program `A233326.P1913548844398052496` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233326 has offset 0).

The definition of A233326 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7^(n+1)-4)/3` (program `A233326.P16901236553264319089`, by `A233326.P16901236553264319089.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233326.P16901236553264319089

`(7^(n+1)-4)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A233326.P16901236553264319089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ (n + 1) : ℤ) - 4 : ℚ) / 3

end

end A233326.P16901236553264319089

namespace A233326

/-- `(7^(n+1)-4)/3` -/
def P16901236553264319089.Spec : Prop :=
  ∀ n, P16901236553264319089.a n = (A233326 n : ℚ)

theorem P16901236553264319089.correct : P16901236553264319089.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A233326, Nat.add_sub_cancel, A233326.P16901236553264319089.a, A233326.P1913548844398052496.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A233326, Nat.add_sub_cancel, A233326.P16901236553264319089.a, A233326.P1913548844398052496.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A233326

/-! ## A233326.P1913548844398052496

`7*a(n-1)+8` with `a(0)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A233326

/-- `7*a(n-1)+8` -/
def P1913548844398052496.Spec : Prop :=
  ∀ n, (P1913548844398052496.a n : ℤ) = A233326 n

theorem P1913548844398052496.correct : P1913548844398052496.Spec := by
  intro n
  simp only [A233326]

end A233326

/-! ## A233326.P13258811300766465028

`ogf((1+7x)/(1-8x+7x^2))`
-/

namespace A233326.P13258811300766465028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, -8, 7] n

end

end A233326.P13258811300766465028

namespace A233326

/-- `ogf((1+7x)/(1-8x+7x^2))` -/
def P13258811300766465028.Spec : Prop :=
  ∀ n, P13258811300766465028.a n = A233326 n

end A233326

/-! ## A233326.P3763228878821602576

`lcm(7, a(n-1))+8` with `a(0)=1`
-/

namespace A233326.P3763228878821602576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 7 (a (n - 1)) + 8

end

end A233326.P3763228878821602576

namespace A233326

/-- `lcm(7, a(n-1))+8` -/
def P3763228878821602576.Spec : Prop :=
  ∀ n, (P3763228878821602576.a n : ℤ) = A233326 n

end A233326

/-! ## A233326.P4932520150031042513

`∑[7*a(n-1)]` with `a(0)=1, a(1)=14`
-/

namespace A233326.P4932520150031042513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233326.P4932520150031042513

namespace A233326

/-- `∑[7*a(n-1)]` -/
def P4932520150031042513.Spec : Prop :=
  ∀ n, (P4932520150031042513.a n : ℤ) = A233326 n

end A233326

/-! ## A233326.P9931912471669000374

`∑[7^n*ceil(cosh(sin(n)))]`
-/

namespace A233326.P9931912471669000374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * ⌈Real.cosh (Real.sin (n : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233326.P9931912471669000374

namespace A233326

/-- `∑[7^n*ceil(cosh(sin(n)))]` -/
def P9931912471669000374.Spec : Prop :=
  ∀ n, P9931912471669000374.a n = A233326 n

end A233326

/-! ## A233326.P14100439873158174026

`∑[gcd(2*7^n, floor(acot(n)))]`
-/

namespace A233326.P14100439873158174026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * 7 ^ n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233326.P14100439873158174026

namespace A233326

/-- `∑[gcd(2*7^n, floor(acot(n)))]` -/
def P14100439873158174026.Spec : Prop :=
  ∀ n, (P14100439873158174026.a n : ℤ) = A233326 n

end A233326

/-! ## A233326.P5023724743190698725

`∑[(ceil(sin(n)²)+1)*7^n]`
-/

namespace A233326.P5023724743190698725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sin (n : ℝ) ^ 2⌉ + 1) * (7 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233326.P5023724743190698725

namespace A233326

/-- `∑[(ceil(sin(n)²)+1)*7^n]` -/
def P5023724743190698725.Spec : Prop :=
  ∀ n, P5023724743190698725.a n = A233326 n

end A233326

/-! ## A233326.P8512335261310849068

`floor(8*a(n-1)-(a(n-1)-8))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A233326.P8512335261310849068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 * a (n - 1) - (a (n - 1) - 8)

end

end A233326.P8512335261310849068

namespace A233326

/-- `floor(8*a(n-1)-(a(n-1)-8))` -/
def P8512335261310849068.Spec : Prop :=
  ∀ n, P8512335261310849068.a n = A233326 n

end A233326

/-! ## A233326.P3700986778992172617

`∑[7^n-1+ceil(sin(n)²)+7^n]`
-/

namespace A233326.P3700986778992172617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) - 1 + (⌈Real.sin (n : ℝ) ^ 2⌉ + (7 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233326.P3700986778992172617

namespace A233326

/-- `∑[7^n-1+ceil(sin(n)²)+7^n]` -/
def P3700986778992172617.Spec : Prop :=
  ∀ n, P3700986778992172617.a n = A233326 n

end A233326

/-! ## A233326.P1717710528541027448

`A125725(n+2)-1`
-/

namespace A233326.P1717710528541027448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125725 (n + 2) - 1

end

end A233326.P1717710528541027448

namespace A233326

/-- `A125725(n+2)-1` -/
def P1717710528541027448.Spec : Prop :=
  ∀ n, P1717710528541027448.a n = A233326 n

end A233326

/-! ## A233326.P14982678643551885464

`2*A104896(n)+1`
-/

namespace A233326.P14982678643551885464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104896 n + 1

end

end A233326.P14982678643551885464

namespace A233326

/-- `2*A104896(n)+1` -/
def P14982678643551885464.Spec : Prop :=
  ∀ n, P14982678643551885464.a n = A233326 n

end A233326

/-! ## A233326.P11899863856563788085

`A146885(n)/4-1`
-/

namespace A233326.P11899863856563788085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146885 n : ℚ) / 4 - 1

end

end A233326.P11899863856563788085

namespace A233326

/-- `A146885(n)/4-1` -/
def P11899863856563788085.Spec : Prop :=
  ∀ n, P11899863856563788085.a n = (A233326 n : ℚ)

end A233326

/-! ## A233326.P5854990219560319907

`abs(1-∑[2*A000420(n)])`
-/

namespace A233326.P5854990219560319907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A233326.P5854990219560319907

namespace A233326

/-- `abs(1-∑[2*A000420(n)])` -/
def P5854990219560319907.Spec : Prop :=
  ∀ n, P5854990219560319907.a n = A233326 n

end A233326

/-! ## A233326.P3107073389219558636

`∑[7^n*A029653(∑[n])]`
-/

namespace A233326.P3107073389219558636
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A029653 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233326.P3107073389219558636

namespace A233326

/-- `∑[7^n*A029653(∑[n])]` -/
def P3107073389219558636.Spec : Prop :=
  ∀ n, P3107073389219558636.a n = A233326 n

end A233326

/-! ## A233326.P16382487495254777342

`∑[7^n*gcd(2, A000010(n+2))]`
-/

namespace A233326.P16382487495254777342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n * Int.gcd 2 (A000010 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233326.P16382487495254777342

namespace A233326

/-- `∑[7^n*gcd(2, A000010(n+2))]` -/
def P16382487495254777342.Spec : Prop :=
  ∀ n, (P16382487495254777342.a n : ℤ) = A233326 n

end A233326

/-! ## A233326.P2708387981334350192

`∑[7^n*A000032(C(2, n+2))]`
-/

namespace A233326.P2708387981334350192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A000032 (Nat.choose 2 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233326.P2708387981334350192

namespace A233326

/-- `∑[7^n*A000032(C(2, n+2))]` -/
def P2708387981334350192.Spec : Prop :=
  ∀ n, P2708387981334350192.a n = A233326 n

end A233326

/-!
# A233327: Distance from 2^n to the nearest triangular number.

The programs for A233327, there is no canonical definition to state claims against.
-/

/-! ## A233327.P15879880047603916324

`A053616(2^n)`
-/

namespace A233327.P15879880047603916324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (2 ^ n)

end

end A233327.P15879880047603916324

/-! ## A233327.P4433196154798415126

`A204016(or(2^n, char[∑[n]]))`
-/

namespace A233327.P4433196154798415126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204016 (Nat.lor (2 ^ n) (if ∃ j, f1 j = n then 1 else 0))

end

end A233327.P4433196154798415126

/-! ## A233327.P5702166527987041086

`floor(A274773(2^n+1)/2)`
-/

namespace A233327.P5702166527987041086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A274773 (2 ^ n + 1) : ℚ) / 2⌋

end

end A233327.P5702166527987041086

/-! ## A233327.P14762542181702030755

`A204016(char[∑[n+1]]+2^n)`
-/

namespace A233327.P14762542181702030755
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204016 ((if ∃ j, f1 j = n then 1 else 0) + 2 ^ n)

end

end A233327.P14762542181702030755

/-! ## A233327.P4848604637220740228

`abs(A004736(2^n-n)-1-n)`
-/

namespace A233327.P4848604637220740228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004736 (2 ^ n - n) - 1 - (n : ℤ)|

end

end A233327.P4848604637220740228

/-!
# A233328: a(n) = (2*8^(n+1) - 9) / 7.

The programs for A233328, the canonical program `A233328.P12369655513726789720` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233328 has offset 0).

The definition of A233328 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*8^(n+1)-9)/7` (program `A233328.P9293939961329187183`, by `A233328.P9293939961329187183.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233328.P12369655513726789720

`8*a(n-1)+9` with `a(0)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A233328

/-- `8*a(n-1)+9` -/
def P12369655513726789720.Spec : Prop :=
  ∀ n, (P12369655513726789720.a n : ℤ) = A233328 n

theorem P12369655513726789720.correct : P12369655513726789720.Spec := by
  intro n
  simp only [A233328]

end A233328

/-! ## A233328.P4845212873476304603

`A226308(3*n+1)`
-/

namespace A233328.P4845212873476304603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226308 (3 * n + 1)

end

end A233328.P4845212873476304603

namespace A233328

/-- `A226308(3*n+1)` -/
def P4845212873476304603.Spec : Prop :=
  ∀ n, P4845212873476304603.a n = A233328 n

end A233328

/-! ## A233328.P9293939961329187183

`(2*8^(n+1)-9)/7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A233328.P9293939961329187183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 8 ^ (n + 1) : ℤ) - 9 : ℚ) / 7

end

end A233328.P9293939961329187183

namespace A233328

/-- `(2*8^(n+1)-9)/7` -/
def P9293939961329187183.Spec : Prop :=
  ∀ n, P9293939961329187183.a n = (A233328 n : ℚ)

theorem P9293939961329187183.correct : P9293939961329187183.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A233328, Nat.add_sub_cancel, A233328.P9293939961329187183.a, A233328.P12369655513726789720.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A233328, Nat.add_sub_cancel, A233328.P9293939961329187183.a, A233328.P12369655513726789720.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A233328

/-! ## A233328.P10629409295693779865

`ogf((1+8x)/(1-9x+8x^2))`
-/

namespace A233328.P10629409295693779865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8] [1, -9, 8] n

end

end A233328.P10629409295693779865

namespace A233328

/-- `ogf((1+8x)/(1-9x+8x^2))` -/
def P10629409295693779865.Spec : Prop :=
  ∀ n, P10629409295693779865.a n = A233328 n

end A233328

/-! ## A233328.P9978438018332030975

`xor(3, ∑[2*8^n])`
-/

namespace A233328.P9978438018332030975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 8 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233328.P9978438018332030975

namespace A233328

/-- `xor(3, ∑[2*8^n])` -/
def P9978438018332030975.Spec : Prop :=
  ∀ n, (P9978438018332030975.a n : ℤ) = A233328 n

end A233328

/-! ## A233328.P7519831761087563996

`lcm(8, a(n-1))+9` with `a(0)=1`
-/

namespace A233328.P7519831761087563996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 8 (a (n - 1)) + 9

end

end A233328.P7519831761087563996

namespace A233328

/-- `lcm(8, a(n-1))+9` -/
def P7519831761087563996.Spec : Prop :=
  ∀ n, (P7519831761087563996.a n : ℤ) = A233328 n

end A233328

/-! ## A233328.P13681798125340794897

`∑[8*a(n-1)]` with `a(0)=1, a(1)=16`
-/

namespace A233328.P13681798125340794897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233328.P13681798125340794897

namespace A233328

/-- `∑[8*a(n-1)]` -/
def P13681798125340794897.Spec : Prop :=
  ∀ n, (P13681798125340794897.a n : ℤ) = A233328 n

end A233328

/-! ## A233328.P7031614442124127799

`∑[record[((n-2)%3)^n]]`
-/

namespace A233328.P7031614442124127799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 2) 3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233328.P7031614442124127799

namespace A233328

/-- `∑[record[((n-2)%3)^n]]` -/
def P7031614442124127799.Spec : Prop :=
  ∀ n, P7031614442124127799.a n = A233328 n

end A233328

/-! ## A233328.P5491971021653664965

`or(2*8^n, a(n-1))` with `a(0)=1`
-/

namespace A233328.P5491971021653664965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (2 * 8 ^ n) (a (n - 1))

end

end A233328.P5491971021653664965

namespace A233328

/-- `or(2*8^n, a(n-1))` -/
def P5491971021653664965.Spec : Prop :=
  ∀ n, (P5491971021653664965.a n : ℤ) = A233328 n

end A233328

/-! ## A233328.P17622856962583207806

`∑[A077552(3*n)]`
-/

namespace A233328.P17622856962583207806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077552 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233328.P17622856962583207806

namespace A233328

/-- `∑[A077552(3*n)]` -/
def P17622856962583207806.Spec : Prop :=
  ∀ n, P17622856962583207806.a n = A233328 n

end A233328

/-! ## A233328.P4081208598732302209

`A125835(n+2)-1`
-/

namespace A233328.P4081208598732302209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125835 (n + 2) - 1

end

end A233328.P4081208598732302209

namespace A233328

/-- `A125835(n+2)-1` -/
def P4081208598732302209.Spec : Prop :=
  ∀ n, P4081208598732302209.a n = A233328 n

end A233328

/-! ## A233328.P16929026522107190363

`4*A108019(n)+1`
-/

namespace A233328.P16929026522107190363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A108019 n + 1

end

end A233328.P16929026522107190363

namespace A233328

/-- `4*A108019(n)+1` -/
def P16929026522107190363.Spec : Prop :=
  ∀ n, P16929026522107190363.a n = A233328 n

end A233328

/-! ## A233328.P5962181865933423066

`4*A046636(n)-3`
-/

namespace A233328.P5962181865933423066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A046636 n - 3

end

end A233328.P5962181865933423066

namespace A233328

/-- `4*A046636(n)-3` -/
def P5962181865933423066.Spec : Prop :=
  ∀ n, P5962181865933423066.a n = A233328 n

end A233328

/-! ## A233328.P7026305826156761708

`∑[record[A164703(n+1)]]`
-/

namespace A233328.P7026305826156761708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164703 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233328.P7026305826156761708

namespace A233328

/-- `∑[record[A164703(n+1)]]` -/
def P7026305826156761708.Spec : Prop :=
  ∀ n, P7026305826156761708.a n = A233328 n

end A233328

/-! ## A233328.P16244678776696727935

`A078010(3*(n+1))-2`
-/

namespace A233328.P16244678776696727935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078010 (3 * (n + 1)) - 2

end

end A233328.P16244678776696727935

namespace A233328

/-- `A078010(3*(n+1))-2` -/
def P16244678776696727935.Spec : Prop :=
  ∀ n, P16244678776696727935.a n = A233328 n

end A233328

/-! ## A233328.P681947458454945839

`A178455(3*(n+1))+n`
-/

namespace A233328.P681947458454945839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178455 (3 * (n + 1)) + (n : ℤ)

end

end A233328.P681947458454945839

namespace A233328

/-- `A178455(3*(n+1))+n` -/
def P681947458454945839.Spec : Prop :=
  ∀ n, P681947458454945839.a n = A233328 n

end A233328

/-! ## A233328.P4129995891534984918

`∑[A151821(2*n+1+n)]`
-/

namespace A233328.P4129995891534984918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233328.P4129995891534984918

namespace A233328

/-- `∑[A151821(2*n+1+n)]` -/
def P4129995891534984918.Spec : Prop :=
  ∀ n, P4129995891534984918.a n = A233328 n

end A233328

/-! ## A233328.P15560018150701254156

`abs(∑[A094014(2*n+1)]+1)`
-/

namespace A233328.P15560018150701254156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094014 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + 1|

end

end A233328.P15560018150701254156

namespace A233328

/-- `abs(∑[A094014(2*n+1)]+1)` -/
def P15560018150701254156.Spec : Prop :=
  ∀ n, P15560018150701254156.a n = A233328 n

end A233328

/-! ## A233328.P2576735098250658262

`∑[A011782(A103517(n)+n)]`
-/

namespace A233328.P2576735098250658262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A103517 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233328.P2576735098250658262

namespace A233328

/-- `∑[A011782(A103517(n)+n)]` -/
def P2576735098250658262.Spec : Prop :=
  ∀ n, P2576735098250658262.a n = A233328 n

end A233328

/-! ## A233328.P2826787280550769503

`A083713(n)+A245599(n+1)+A083713(n)`
-/

namespace A233328.P2826787280550769503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083713 n + (A245599 (n + 1) + A083713 n)

end

end A233328.P2826787280550769503

namespace A233328

/-- `A083713(n)+A245599(n+1)+A083713(n)` -/
def P2826787280550769503.Spec : Prop :=
  ∀ n, P2826787280550769503.a n = A233328 n

end A233328

/-!
# A233329: Expansion of (1+4*x+x^2)/((1+x)^2*(1-x)^5).

The programs for A233329, the canonical program `A233329.P8953026973635005906` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233329 has offset 0).

The definition of A233329 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x+x^2)/(1-3x+x^2+5x^3-5x^4-x^5+3x^6-x^7))` (program `A233329.P8953026973635005906`, by `A233329.P8953026973635005906.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233329.P8953026973635005906

`ogf((1+4x+x^2)/(1-3x+x^2+5x^3-5x^4-x^5+3x^6-x^7))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A233329

/-- `ogf((1+4x+x^2)/(1-3x+x^2+5x^3-5x^4-x^5+3x^6-x^7))` -/
def P8953026973635005906.Spec : Prop :=
  ∀ n, P8953026973635005906.a n = A233329 n

theorem P8953026973635005906.correct : P8953026973635005906.Spec := by
  intro n
  simp only [A233329]

end A233329

/-! ## A233329.P3840784710708039687

`∑[∑[∑[(n+1)*(n%2+1)]]]`
-/

namespace A233329.P3840784710708039687
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n % 2 + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233329.P3840784710708039687

namespace A233329

/-- `∑[∑[∑[(n+1)*(n%2+1)]]]` -/
def P3840784710708039687.Spec : Prop :=
  ∀ n, (P3840784710708039687.a n : ℤ) = A233329 n

end A233329

/-! ## A233329.P14615840711086007867

`∑[∑[∑[(n+1)*gcd(2, n+1)]]]`
-/

namespace A233329.P14615840711086007867
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd 2 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233329.P14615840711086007867

namespace A233329

/-- `∑[∑[∑[(n+1)*gcd(2, n+1)]]]` -/
def P14615840711086007867.Spec : Prop :=
  ∀ n, (P14615840711086007867.a n : ℤ) = A233329 n

end A233329

/-! ## A233329.P13940577089281519915

`∑[∑[∑[gcd(1-n², (n+1)²)]]]`
-/

namespace A233329.P13940577089281519915
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n ^ 2 : ℤ)) ((n + 1) ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233329.P13940577089281519915

namespace A233329

/-- `∑[∑[∑[gcd(1-n², (n+1)²)]]]` -/
def P13940577089281519915.Spec : Prop :=
  ∀ n, (P13940577089281519915.a n : ℤ) = A233329 n

end A233329

/-! ## A233329.P5414814257523031633

`∑[(n+2)*∑[or(1, n+1)/2]]`
-/

namespace A233329.P5414814257523031633
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233329.P5414814257523031633

namespace A233329

/-- `∑[(n+2)*∑[or(1, n+1)/2]]` -/
def P5414814257523031633.Spec : Prop :=
  ∀ n, P5414814257523031633.a n = (A233329 n : ℚ)

end A233329

/-! ## A233329.P16430828206316169563

`∑[∑[∑[4/a(n-1)*∑[n]]]]` with `a(0)=1`
-/

namespace A233329.P16430828206316169563
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f3 =>
  4 / f3 (n - 1) * ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℚ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233329.P16430828206316169563

namespace A233329

/-- `∑[∑[∑[4/a(n-1)*∑[n]]]]` -/
def P16430828206316169563.Spec : Prop :=
  ∀ n, P16430828206316169563.a n = (A233329 n : ℚ)

end A233329

/-! ## A233329.P318832557154452531

`∑[∑[∑[(n+1)*(2-∑[(-1)^n])]]]`
-/

namespace A233329.P318832557154452531
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - ∑ j ∈ Finset.range (n + 1), f4 j)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233329.P318832557154452531

namespace A233329

/-- `∑[∑[∑[(n+1)*(2-∑[(-1)^n])]]]` -/
def P318832557154452531.Spec : Prop :=
  ∀ n, P318832557154452531.a n = A233329 n

end A233329

/-! ## A233329.P162688829346586767

`∑[(n+1)^3-a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A233329.P162688829346586767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n + 1) ^ 3 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A233329.P162688829346586767

namespace A233329

/-- `∑[(n+1)^3-a(n-1)]-a(n-1)` -/
def P162688829346586767.Spec : Prop :=
  ∀ n, P162688829346586767.a n = A233329 n

end A233329

/-! ## A233329.P7189831015950524072

`A070893(n+1)+A006918(n)`
-/

namespace A233329.P7189831015950524072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070893 (n + 1) + A006918 n

end

end A233329.P7189831015950524072

namespace A233329

/-- `A070893(n+1)+A006918(n)` -/
def P7189831015950524072.Spec : Prop :=
  ∀ n, P7189831015950524072.a n = A233329 n

end A233329

/-! ## A233329.P2387841035248805827

`A105636(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A233329.P2387841035248805827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A105636 (n + 1) - a (n - 1)

end

end A233329.P2387841035248805827

namespace A233329

/-- `A105636(n+1)-a(n-1)` -/
def P2387841035248805827.Spec : Prop :=
  ∀ n, P2387841035248805827.a n = A233329 n

end A233329

/-! ## A233329.P15653843007018319592

`∑[A032765(A032766(n+1))]+a(n-1)` with `a(0)=1`
-/

namespace A233329.P15653843007018319592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 (A032766 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A233329.P15653843007018319592

namespace A233329

/-- `∑[A032765(A032766(n+1))]+a(n-1)` -/
def P15653843007018319592.Spec : Prop :=
  ∀ n, P15653843007018319592.a n = A233329 n

end A233329

/-!
# A233330: Irregular array read by rows: T(n,k) = number of r_{n,k}-cores associated with A233332(n,k), for n>=2, 1<=k<=floor(n/2), explained below.

The programs for A233330, there is no canonical definition to state claims against.
-/

/-! ## A233330.P5004108120118427813

`record[A125568(A314049(n))²]`
-/

namespace A233330.P5004108120118427813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125568 (A314049 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233330.P5004108120118427813

/-! ## A233330.P6537710965662741573

`∑[A271510(A192382(n+1))]²`
-/

namespace A233330.P6537710965662741573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271510 (A192382 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A233330.P6537710965662741573

/-! ## A233330.P4047274196770003020

`lt[A185264(n), A049310(n+1)]²`
-/

namespace A233330.P4047274196770003020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A233330.P4047274196770003020

/-! ## A233330.P8204612605327848174

`lt[A326682(n), A049310(n+1)]²`
-/

namespace A233330.P8204612605327848174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326682 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A233330.P8204612605327848174

/-!
# A233334: a(1) = 1; for n > 1, a(n) is the smallest number > a(n-1) such that a(1) + a(2) + ... + a(n) is a composite number.

The programs for A233334, the canonical program `A233334.P11995600070905089122` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233334 has offset 1).

The definition of A233334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A233334.P11995600070905089122

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=6, a(4)=7, a(5)=9, a(6)=10`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A233334

/-- `2*a(n-1)-a(n-2)` -/
def P11995600070905089122.Spec : Prop :=
  ∀ n, P11995600070905089122.a n = A233334 (n + 1)

theorem P11995600070905089122.correct : P11995600070905089122.Spec := by
  intro n
  simp only [A233334, Nat.add_sub_cancel]

end A233334

/-!
# A233335: E.g.f. A(x) satisfies A( Integral 1/A(x) dx ) = exp(x).

The programs for A233335, there is no canonical definition to state claims against.
-/

/-! ## A233335.P3516145055437255307

`A392058(A212342(n))`
-/

namespace A233335.P3516145055437255307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392058 (A212342 n).toNat

end

end A233335.P3516145055437255307

/-! ## A233335.P12219645358226380514

`A396999(∑[n+1]+n)`
-/

namespace A233335.P12219645358226380514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396999 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A233335.P12219645358226380514

/-!
# A233336: E.g.f. A(x) satisfies: A( Integral 1/A(x)^2 dx ) = exp(x).

The programs for A233336, there is no canonical definition to state claims against.
-/

/-! ## A233336.P12614186599914963215

`A065033(A099712(n)+2^C(n, 2))`
-/

namespace A233336.P12614186599914963215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A099712 n + (2 ^ Nat.choose n 2 : ℤ)).toNat

end

end A233336.P12614186599914963215

/-! ## A233336.P11244347033127678374

`A175176(n)+A170984(A000142(n))`
-/

namespace A233336.P11244347033127678374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175176 n + A170984 (A000142 n).toNat

end

end A233336.P11244347033127678374

/-!
# A233337: E.g.f. satisfies: A(x) = exp( A(x) * Series_Reversion( Integral A(x) dx ) ).

The programs for A233337, there is no canonical definition to state claims against.
-/

/-! ## A233337.P10172443666450278677

`A100807(a(n-1)+4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=8`
-/

namespace A233337.P10172443666450278677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 8] fun n a =>
  A100807 (a (n - 1) + 4).toNat

end

end A233337.P10172443666450278677

/-! ## A233337.P8571238727783639769

`ceil((ceil(A160170(2^n+1)/6)+n)/6)`
-/

namespace A233337.P8571238727783639769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A160170 (2 ^ n + 1) : ℚ) / 6⌉ + (n : ℤ) : ℚ) / 6⌉

end

end A233337.P8571238727783639769

/-!
# A233338: E.g.f. satisfies: A(x) = exp( A(x) * Integral A(-x) dx ).

The programs for A233338, there is no canonical definition to state claims against.
-/

/-! ## A233338.P341975335503542769

`A251550(A094639(n))`
-/

namespace A233338.P341975335503542769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251550 (A094639 n).toNat

end

end A233338.P341975335503542769

/-! ## A233338.P14311025078110204593

`A251550(∑[A000108(n)²])`
-/

namespace A233338.P14311025078110204593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251550 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A233338.P14311025078110204593

/-!
# A233339: Number of tilings of a 4 X 3n rectangle using 4n trominoes of any shape.

The programs for A233339, there is no canonical definition to state claims against.
-/

/-! ## A233339.P14959235170106157684

`record[A233320(A052905(n))]`
-/

namespace A233339.P14959235170106157684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233339.P14959235170106157684

/-! ## A233339.P17357330630791569795

`record[A233320(A133263(n)+2)]`
-/

namespace A233339.P17357330630791569795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (A133263 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233339.P17357330630791569795

/-! ## A233339.P1792175745614180203

`record[A233320(A155212(n)+3)]`
-/

namespace A233339.P1792175745614180203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (A155212 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233339.P1792175745614180203

/-! ## A233339.P15686840202885877864

`record[A233320(eq[4, A002262(n)])]`
-/

namespace A233339.P15686840202885877864
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233339.P15686840202885877864

/-! ## A233339.P17642622759083624398

`record[A233320(A141214(n)-2)]`
-/

namespace A233339.P17642622759083624398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (A141214 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233339.P17642622759083624398

/-!
# A233340: Number of tilings of a 5 X 3n rectangle using 5n trominoes of any shape.

The programs for A233340, there is no canonical definition to state claims against.
-/

/-! ## A233340.P17742595616444538650

`record[A233320(∑[n+1]+5)]`
-/

namespace A233340.P17742595616444538650
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (∑ j ∈ Finset.range (n + 1), f2 j + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233340.P17742595616444538650

/-! ## A233340.P17797062136035727222

`A233320(A055999(3*(n+1)))`
-/

namespace A233340.P17797062136035727222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (A055999 (3 * (n + 1))).toNat

end

end A233340.P17797062136035727222

/-! ## A233340.P2954264691527971356

`record[Δ[A233320(A167499(n+1))]]`
-/

namespace A233340.P2954264691527971356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (A167499 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233340.P2954264691527971356

/-! ## A233340.P3273087110463823779

`A233320(A167499(3*(n+1)+1))`
-/

namespace A233340.P3273087110463823779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (A167499 (3 * (n + 1) + 1)).toNat

end

end A233340.P3273087110463823779

/-!
# A233341: Least number m for which n applications of the mapping r(k) = k - (greatest prime divisor of k) map m to 0.

The programs for A233341, there is no canonical definition to state claims against.
-/

/-! ## A233341.P2713014866302447150

`A233342(∑[n+1])`
-/

namespace A233341.P2713014866302447150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233342 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233341.P2713014866302447150

/-! ## A233341.P16003586667417463603

`record[A233342(A257506(n+1))]`
-/

namespace A233341.P16003586667417463603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233342 (A257506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233341.P16003586667417463603

/-! ## A233341.P7553205432043202431

`record[A103452(n)*A233342(n+1)]`
-/

namespace A233341.P7553205432043202431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A233342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233341.P7553205432043202431

/-! ## A233341.P14066535714241196706

`record[A233342(n+1)/A038207(n)]`
-/

namespace A233341.P14066535714241196706
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233342 (n + 1) : ℚ) / (A038207 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233341.P14066535714241196706

/-! ## A233341.P8505350733317550296

`record[gcd(A091435(n), A233342(n+1))]`
-/

namespace A233341.P8505350733317550296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091435 n) (A233342 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233341.P8505350733317550296

/-! ## A233341.P6859574548600353264

`record[A233342(n+1)/A004736(n+1)]`
-/

namespace A233341.P6859574548600353264
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233342 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233341.P6859574548600353264

/-!
# A233343: Number of tilings of a 7 X 3n rectangle using 7n trominoes of any shape.

The programs for A233343, there is no canonical definition to state claims against.
-/

/-! ## A233343.P16889711949777228114

`record[A233320(A155212(n))]`
-/

namespace A233343.P16889711949777228114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (A155212 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233343.P16889711949777228114

/-! ## A233343.P12802806265869344535

`record[A233320(A056000(n)+2)]`
-/

namespace A233343.P12802806265869344535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (A056000 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233343.P12802806265869344535

/-!
# A233345: Numbers having at least one digit 0 and at least two identical digits (which may be two 0's), in their decimal expansion.

The programs for A233345, the canonical program `A233345.P582782782341846025` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233345 has offset 1).

The definition of A233345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233345.P582782782341846025

`∩[A011540(n+1), A109303(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A233345

/-- `∩[A011540(n+1), A109303(n+1)]` -/
def P582782782341846025.Spec : Prop :=
  ∀ n, (P582782782341846025.a n : ℤ) = A233345 (n + 1)

theorem P582782782341846025.correct : P582782782341846025.Spec := by
  intro n
  simp only [A233345, Nat.add_sub_cancel]

end A233345

/-! ## A233345.P986999203248194360

`∩[A098394(n+1), A109303(n+1)]`
-/

namespace A233345.P986999203248194360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233345.P986999203248194360

namespace A233345

/-- `∩[A098394(n+1), A109303(n+1)]` -/
def P986999203248194360.Spec : Prop :=
  ∀ n, (P986999203248194360.a n : ℤ) = A233345 (n + 1)

end A233345

/-! ## A233345.P2808168355068093801

`∩[A109303(n+1), A212499(n+1)]`
-/

namespace A233345.P2808168355068093801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233345.P2808168355068093801

namespace A233345

/-- `∩[A109303(n+1), A212499(n+1)]` -/
def P2808168355068093801.Spec : Prop :=
  ∀ n, (P2808168355068093801.a n : ℤ) = A233345 (n + 1)

end A233345

/-! ## A233345.P8091618753529489861

`eq[A178788(n), A187844(n)]`
-/

namespace A233345.P8091618753529489861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233345.P8091618753529489861

namespace A233345

/-- `eq[A178788(n), A187844(n)]` -/
def P8091618753529489861.Spec : Prop :=
  ∀ n, (P8091618753529489861.a n : ℤ) = A233345 (n + 1)

end A233345

/-! ## A233345.P13986980838214349682

`eq[tan(A007954(n)), A178788(n)]`
-/

namespace A233345.P13986980838214349682
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A007954 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A233345.P13986980838214349682

namespace A233345

/-- `eq[tan(A007954(n)), A178788(n)]` -/
def P13986980838214349682.Spec : Prop :=
  ∀ n, (P13986980838214349682.a n : ℤ) = A233345 (n + 1)

end A233345

/-! ## A233345.P12584402848926132079

`eq[tan(A168046(n)), A178788(n)]`
-/

namespace A233345.P12584402848926132079
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A168046 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A233345.P12584402848926132079

namespace A233345

/-- `eq[tan(A168046(n)), A178788(n)]` -/
def P12584402848926132079.Spec : Prop :=
  ∀ n, (P12584402848926132079.a n : ℤ) = A233345 (n + 1)

end A233345

/-! ## A233345.P1927012654996820031

`eq[atan(A004428(n)), A307651(n)]`
-/

namespace A233345.P1927012654996820031
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A004428 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A233345.P1927012654996820031

namespace A233345

/-- `eq[atan(A004428(n)), A307651(n)]` -/
def P1927012654996820031.Spec : Prop :=
  ∀ n, (P1927012654996820031.a n : ℤ) = A233345 (n + 1)

end A233345

/-! ## A233345.P5047025057790625460

`eq[atan(A054054(n)), A307651(n)]`
-/

namespace A233345.P5047025057790625460
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A054054 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A233345.P5047025057790625460

namespace A233345

/-- `eq[atan(A054054(n)), A307651(n)]` -/
def P5047025057790625460.Spec : Prop :=
  ∀ n, (P5047025057790625460.a n : ℤ) = A233345 (n + 1)

end A233345

/-! ## A233345.P8271339264861260638

`eq[0, A054054(n)^A107846(n)]`
-/

namespace A233345.P8271339264861260638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054054 n : ℚ) ^ (A107846 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A233345.P8271339264861260638

namespace A233345

/-- `eq[0, A054054(n)^A107846(n)]` -/
def P8271339264861260638.Spec : Prop :=
  ∀ n, (P8271339264861260638.a n : ℤ) = A233345 (n + 1)

end A233345

/-! ## A233345.P6872442893789057515

`eq[A004093(n)*A007954(n), A178788(n)]`
-/

namespace A233345.P6872442893789057515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 n * A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233345.P6872442893789057515

namespace A233345

/-- `eq[A004093(n)*A007954(n), A178788(n)]` -/
def P6872442893789057515.Spec : Prop :=
  ∀ n, (P6872442893789057515.a n : ℤ) = A233345 (n + 1)

end A233345

/-! ## A233345.P6707693496751562513

`eq[A005843(n)*A007954(n), A178788(n)]`
-/

namespace A233345.P6707693496751562513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n * A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233345.P6707693496751562513

namespace A233345

/-- `eq[A005843(n)*A007954(n), A178788(n)]` -/
def P6707693496751562513.Spec : Prop :=
  ∀ n, (P6707693496751562513.a n : ℤ) = A233345 (n + 1)

end A233345

/-! ## A233345.P10349316371208065812

`filter[A109303(n+1), A217096(#)]`
-/

namespace A233345.P10349316371208065812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217096 (f1 j).toNat = 1) n)

end

end A233345.P10349316371208065812

namespace A233345

/-- `filter[A109303(n+1), A217096(#)]` -/
def P10349316371208065812.Spec : Prop :=
  ∀ n, P10349316371208065812.a n = A233345 (n + 1)

end A233345

/-!
# A233346: Primes of the form p(k)^2 + q(m)^2 with k > 0 and m > 0, where p(.) is the partition function (A000041), and q(.) is the strict partition function (A000009).

The programs for A233346, there is no canonical definition to state claims against.
-/

/-! ## A233346.P18353324170714966056

`p?[A320889(A205405(n+1))+A008574(n)]`
-/

namespace A233346.P18353324170714966056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320889 (A205405 (n + 1)).toNat + A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A233346.P18353324170714966056

/-! ## A233346.P5974609810663257953

`p?[A014681(A302170(n+1)+n)+n]`
-/

namespace A233346.P5974609810663257953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A302170 (n + 1) + (n : ℤ)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A233346.P5974609810663257953

/-! ## A233346.P7223288751621011582

`p?[(n*gcd(2, n)+1)%A224496(n+1)]`
-/

namespace A233346.P7223288751621011582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n * Nat.gcd 2 n + 1 : ℤ) (A224496 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A233346.P7223288751621011582

/-! ## A233346.P10564096810610407756

`p?[A000404(A294335(n)+n)]`
-/

namespace A233346.P10564096810610407756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (A294335 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A233346.P10564096810610407756

/-! ## A233346.P16016109960150747674

`A002313(∑[A110981(n+1)!])`
-/

namespace A233346.P16016109960150747674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A110981 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233346.P16016109960150747674

/-!
# A233347: G.f. satisfies: 1-x = Sum_{n>=0} (-x)^n*A(x)^(n mod 3).

The programs for A233347, there is no canonical definition to state claims against.
-/

/-! ## A233347.P4418016919353065952

`A352878(n)+A341523(A352855(n))`
-/

namespace A233347.P4418016919353065952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352878 n + A341523 (A352855 n).toNat

end

end A233347.P4418016919353065952

/-! ## A233347.P13969811137570569608

`A390135(n)-A363487(A011782(n))`
-/

namespace A233347.P13969811137570569608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390135 n - A363487 (A011782 n).toNat

end

end A233347.P13969811137570569608

/-! ## A233347.P14698866913442844524

`∑[A157271(A148310(n))]-A055086(n)`
-/

namespace A233347.P14698866913442844524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A148310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A055086 n

end

end A233347.P14698866913442844524

/-!
# A233348: Numbers n such that 3*n+2 and 3*n-2 are both prime for n multiple of 5 (A008587).

The programs for A233348, the canonical program `A233348.P14961469874671804838` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233348 has offset 1).

The definition of A233348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233348.P14961469874671804838

`ceil(A289413(n+2)/3)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A233348

/-- `ceil(A289413(n+2)/3)` -/
def P14961469874671804838.Spec : Prop :=
  ∀ n, P14961469874671804838.a n = A233348 (n + 1)

theorem P14961469874671804838.correct : P14961469874671804838.Spec := by
  intro n
  simp only [A233348, Nat.add_sub_cancel]

end A233348

/-! ## A233348.P16318631969799763792

`∑[A291290(Δ[A289413(n+1)])]`
-/

namespace A233348.P16318631969799763792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289413 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291290 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233348.P16318631969799763792

namespace A233348

/-- `∑[A291290(Δ[A289413(n+1)])]` -/
def P16318631969799763792.Spec : Prop :=
  ∀ n, P16318631969799763792.a n = A233348 (n + 1)

end A233348

/-! ## A233348.P17710433048990185424

`(A289413(n+2)+2)/(A020639(2*(n+1))+1)`
-/

namespace A233348.P17710433048990185424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289413 (n + 2) + 2 : ℚ) / (A020639 (2 * (n + 1)) + 1 : ℚ)

end

end A233348.P17710433048990185424

namespace A233348

/-- `(A289413(n+2)+2)/(A020639(2*(n+1))+1)` -/
def P17710433048990185424.Spec : Prop :=
  ∀ n, P17710433048990185424.a n = (A233348 (n + 1) : ℚ)

end A233348

/-! ## A233348.P15599179027608951849

`∩[A157834(n+1), A017329(n)]`
-/

namespace A233348.P15599179027608951849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233348.P15599179027608951849

namespace A233348

/-- `∩[A157834(n+1), A017329(n)]` -/
def P15599179027608951849.Spec : Prop :=
  ∀ n, (P15599179027608951849.a n : ℤ) = A233348 (n + 1)

end A233348

/-! ## A233348.P1626517732951772991

`∩[A157834(n+1), A088648(n)]`
-/

namespace A233348.P1626517732951772991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088648 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233348.P1626517732951772991

namespace A233348

/-- `∩[A157834(n+1), A088648(n)]` -/
def P1626517732951772991.Spec : Prop :=
  ∀ n, (P1626517732951772991.a n : ℤ) = A233348 (n + 1)

end A233348

/-! ## A233348.P14523639093954189044

`∩[A157834(n+1), A277592(n+1)]`
-/

namespace A233348.P14523639093954189044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233348.P14523639093954189044

namespace A233348

/-- `∩[A157834(n+1), A277592(n+1)]` -/
def P14523639093954189044.Spec : Prop :=
  ∀ n, (P14523639093954189044.a n : ℤ) = A233348 (n + 1)

end A233348

/-! ## A233348.P8453467512255885984

`∩[A121025(n+1), A157834(n+1)]`
-/

namespace A233348.P8453467512255885984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233348.P8453467512255885984

namespace A233348

/-- `∩[A121025(n+1), A157834(n+1)]` -/
def P8453467512255885984.Spec : Prop :=
  ∀ n, (P8453467512255885984.a n : ℤ) = A233348 (n + 1)

end A233348

/-! ## A233348.P7189522134329380104

`∩[A157834(n+1), A008587(n)]`
-/

namespace A233348.P7189522134329380104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233348.P7189522134329380104

namespace A233348

/-- `∩[A157834(n+1), A008587(n)]` -/
def P7189522134329380104.Spec : Prop :=
  ∀ n, (P7189522134329380104.a n : ℤ) = A233348 (n + 1)

end A233348

/-! ## A233348.P17930634870605772950

`∩[A157834(n+1), A008706(n)]`
-/

namespace A233348.P17930634870605772950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233348.P17930634870605772950

namespace A233348

/-- `∩[A157834(n+1), A008706(n)]` -/
def P17930634870605772950.Spec : Prop :=
  ∀ n, (P17930634870605772950.a n : ℤ) = A233348 (n + 1)

end A233348

/-! ## A233348.P17783293567523769266

`∩[A157834(n+1), A135042(n)]`
-/

namespace A233348.P17783293567523769266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233348.P17783293567523769266

namespace A233348

/-- `∩[A157834(n+1), A135042(n)]` -/
def P17783293567523769266.Spec : Prop :=
  ∀ n, (P17783293567523769266.a n : ℤ) = A233348 (n + 1)

end A233348

/-! ## A233348.P11588683049915315717

`∩[A063093(n+1), A157834(n+1)]`
-/

namespace A233348.P11588683049915315717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233348.P11588683049915315717

namespace A233348

/-- `∩[A063093(n+1), A157834(n+1)]` -/
def P11588683049915315717.Spec : Prop :=
  ∀ n, (P11588683049915315717.a n : ℤ) = A233348 (n + 1)

end A233348

/-! ## A233348.P8806602574751744173

`∩[A157834(n+1), A187715(n+1)]`
-/

namespace A233348.P8806602574751744173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233348.P8806602574751744173

namespace A233348

/-- `∩[A157834(n+1), A187715(n+1)]` -/
def P8806602574751744173.Spec : Prop :=
  ∀ n, (P8806602574751744173.a n : ℤ) = A233348 (n + 1)

end A233348

/-! ## A233348.P7854211937909571423

`5*A004396(A162410(n+2))`
-/

namespace A233348.P7854211937909571423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A004396 (A162410 (n + 2)).toNat

end

end A233348.P7854211937909571423

namespace A233348

/-- `5*A004396(A162410(n+2))` -/
def P7854211937909571423.Spec : Prop :=
  ∀ n, P7854211937909571423.a n = A233348 (n + 1)

end A233348

/-! ## A233348.P4775523477055499008

`∩[A063213(n+1), A157834(n+1)]`
-/

namespace A233348.P4775523477055499008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233348.P4775523477055499008

namespace A233348

/-- `∩[A063213(n+1), A157834(n+1)]` -/
def P4775523477055499008.Spec : Prop :=
  ∀ n, (P4775523477055499008.a n : ℤ) = A233348 (n + 1)

end A233348

/-! ## A233348.P2872802739633564539

`(A289413(n+2)+2)/A020639(A289413(n+2)+2)`
-/

namespace A233348.P2872802739633564539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289413 (n + 2) + 2 : ℚ) / (A020639 (A289413 (n + 2) + 2).toNat : ℚ)

end

end A233348.P2872802739633564539

namespace A233348

/-- `(A289413(n+2)+2)/A020639(A289413(n+2)+2)` -/
def P2872802739633564539.Spec : Prop :=
  ∀ n, P2872802739633564539.a n = (A233348 (n + 1) : ℚ)

end A233348

/-! ## A233348.P15232738754075748770

`∩[A093509(n+1), A157834(n+1)]`
-/

namespace A233348.P15232738754075748770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233348.P15232738754075748770

namespace A233348

/-- `∩[A093509(n+1), A157834(n+1)]` -/
def P15232738754075748770.Spec : Prop :=
  ∀ n, (P15232738754075748770.a n : ℤ) = A233348 (n + 1)

end A233348

/-! ## A233348.P15719085262491906582

`∩[A157834(n+1), A100530(n)]`
-/

namespace A233348.P15719085262491906582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100530 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233348.P15719085262491906582

namespace A233348

/-- `∩[A157834(n+1), A100530(n)]` -/
def P15719085262491906582.Spec : Prop :=
  ∀ n, (P15719085262491906582.a n : ℤ) = A233348 (n + 1)

end A233348

/-! ## A233348.P15964615563992085180

`∩[A008851(n+1), A157834(n+1)]`
-/

namespace A233348.P15964615563992085180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233348.P15964615563992085180

namespace A233348

/-- `∩[A008851(n+1), A157834(n+1)]` -/
def P15964615563992085180.Spec : Prop :=
  ∀ n, (P15964615563992085180.a n : ℤ) = A233348 (n + 1)

end A233348

/-! ## A233348.P13940335192317939338

`∩[A047208(n+1), A157834(n+1)]`
-/

namespace A233348.P13940335192317939338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233348.P13940335192317939338

namespace A233348

/-- `∩[A047208(n+1), A157834(n+1)]` -/
def P13940335192317939338.Spec : Prop :=
  ∀ n, (P13940335192317939338.a n : ℤ) = A233348 (n + 1)

end A233348

/-! ## A233348.P6200769498257165009

`∩[A008854(n+1), A157834(n+1)]`
-/

namespace A233348.P6200769498257165009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233348.P6200769498257165009

namespace A233348

/-- `∩[A008854(n+1), A157834(n+1)]` -/
def P6200769498257165009.Spec : Prop :=
  ∀ n, (P6200769498257165009.a n : ℤ) = A233348 (n + 1)

end A233348

/-!
# A233349: Numbers k such that k divides 1 + Sum_{j=1..k} prime(j)^13.

The programs for A233349, there is no canonical definition to state claims against.
-/

/-! ## A233349.P2364952044566904626

`A000720(A233350(n+1))`
-/

namespace A233349.P2364952044566904626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A233350 (n + 1)).toNat

end

end A233349.P2364952044566904626

/-! ## A233349.P10457758481934488365

`A061395(p?[A233350(n+1)])`
-/

namespace A233349.P10457758481934488365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A233349.P10457758481934488365

/-! ## A233349.P15761154061154080479

`A061395(2*A233350(n+1))`
-/

namespace A233349.P15761154061154080479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A233350 (n + 1)).toNat

end

end A233349.P15761154061154080479

/-! ## A233349.P10532812028732238681

`A061395(lcm(2, A233350(n+1)))`
-/

namespace A233349.P10532812028732238681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A233350 (n + 1)))

end

end A233349.P10532812028732238681

/-! ## A233349.P6080172684771509095

`∑{d}[A233350(n+1), A061395(#)]`
-/

namespace A233349.P6080172684771509095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A233349.P6080172684771509095

/-!
# A233350: Prime(k), where k is such that (1 + Sum_{i=1..k} prime(i)^13) / k is an integer.

The programs for A233350, there is no canonical definition to state claims against.
-/

/-! ## A233350.P14003906351557957076

`A000040(A233349(n+1))`
-/

namespace A233350.P14003906351557957076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A233349 (n + 1)).toNat

end

end A233350.P14003906351557957076

/-! ## A233350.P10916782491457950342

`A008578(A233349(n+1)+1)`
-/

namespace A233350.P10916782491457950342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A233349 (n + 1) + 1).toNat

end

end A233350.P10916782491457950342

/-! ## A233350.P4560618532120636444

`A182986(A233349(n+1)+1)`
-/

namespace A233350.P4560618532120636444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A233349 (n + 1) + 1).toNat

end

end A233350.P4560618532120636444

/-! ## A233350.P6837461738428555792

`A158611(A233349(n+1)+2)`
-/

namespace A233350.P6837461738428555792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A233349 (n + 1) + 2).toNat

end

end A233350.P6837461738428555792

/-! ## A233350.P2521852527189201060

`A219606(2*A233349(n+1))`
-/

namespace A233350.P2521852527189201060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (2 * A233349 (n + 1)).toNat

end

end A233350.P2521852527189201060

/-!
# A233351: Number of (n+1)X(1+1) 0..3 arrays x(i,j) with row sums sum{x(i,j), j=1..1+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A233351, there is no canonical definition to state claims against.
-/

/-! ## A233351.P3359212717608553600

`A233353(∑[n+1])`
-/

namespace A233351.P3359212717608553600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233353 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233351.P3359212717608553600

/-! ## A233351.P1036012312589587836

`record[A233353(A133825(n))]`
-/

namespace A233351.P1036012312589587836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233353 (A133825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233351.P1036012312589587836

/-! ## A233351.P11521196782638303958

`record[A233353(A342511(n))]`
-/

namespace A233351.P11521196782638303958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233353 (A342511 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233351.P11521196782638303958

/-!
# A233352: Number of (n+1)X(2+1) 0..3 arrays x(i,j) with row sums sum{x(i,j), j=1..2+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A233352, there is no canonical definition to state claims against.
-/

/-! ## A233352.P18281719540095823104

`A233353(∑[n+2])`
-/

namespace A233352.P18281719540095823104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233353 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233352.P18281719540095823104

/-! ## A233352.P10941696568614019147

`record[gcd(A130400(n+2), A233353(n+2))]`
-/

namespace A233352.P10941696568614019147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130400 (n + 2)) (A233353 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233352.P10941696568614019147

/-!
# A233354: Number of (1+1)X(n+1) 0..3 arrays x(i,j) with row sums sum{x(i,j), j=1..n+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..1+1} nondecreasing.

The programs for A233354, there is no canonical definition to state claims against.
-/

/-! ## A233354.P9280241702311927056

`A233353(∑[n]+1)`
-/

namespace A233354.P9280241702311927056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233353 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233354.P9280241702311927056

/-! ## A233354.P1430432246989131941

`or(16, A233353(A000124(n)))`
-/

namespace A233354.P1430432246989131941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 16 (A233353 (A000124 n).toNat)

end

end A233354.P1430432246989131941

/-! ## A233354.P9876072639275878758

`record[A233353(A114091(n+1))]`
-/

namespace A233354.P9876072639275878758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233353 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233354.P9876072639275878758

/-! ## A233354.P2704394213166221978

`record[A233353(A000124(val(n+1, 2)))]`
-/

namespace A233354.P2704394213166221978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233353 (A000124 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233354.P2704394213166221978

/-!
# A233355: Number of (2+1)X(n+1) 0..3 arrays x(i,j) with row sums sum{x(i,j), j=1..n+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..2+1} nondecreasing.

The programs for A233355, there is no canonical definition to state claims against.
-/

/-! ## A233355.P7290715296746882503

`A233353(∑[n+1]+2)`
-/

namespace A233355.P7290715296746882503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233353 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233355.P7290715296746882503

/-! ## A233355.P1482350760136953619

`record[gcd(A110504(n), A233353(n+3))]`
-/

namespace A233355.P1482350760136953619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110504 n) (A233353 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233355.P1482350760136953619

/-!
# A233356: Number of (3+1) X (n+1) 0..3 arrays x(i,j) with row sums Sum_{j=1..n+1} x(i,j) nondecreasing, and column sums Sum_{i=1..3+1} i^2*x(i,j) nondecreasing.

The programs for A233356, there is no canonical definition to state claims against.
-/

/-! ## A233356.P2647285685492265289

`A233353(∑[n+2]+4)`
-/

namespace A233356.P2647285685492265289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233353 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233356.P2647285685492265289

/-! ## A233356.P12664244629214073115

`record[A233353(A167614(val(n+1, 2)+1))]`
-/

namespace A233356.P12664244629214073115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233353 (A167614 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233356.P12664244629214073115

/-!
# A233357: Triangle read by rows: T(n,k) = ((Stirling2)^2)(n,k) * k!

The programs for A233357, there is no canonical definition to state claims against.
-/

/-! ## A233357.P231386813218133372

`A039810(n+1)*A166350(n+1)`
-/

namespace A233357.P231386813218133372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039810 (n + 1) * A166350 (n + 1)

end

end A233357.P231386813218133372

/-! ## A233357.P1789006097088424929

`A002260(n+1)!*A039810(n+1)`
-/

namespace A233357.P1789006097088424929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1)).toNat : ℤ) * A039810 (n + 1)

end

end A233357.P1789006097088424929

/-! ## A233357.P12194710404268955472

`(A002262(n)+1)!*A039810(n+1)`
-/

namespace A233357.P12194710404268955472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n + 1).toNat : ℤ) * A039810 (n + 1)

end

end A233357.P12194710404268955472

/-! ## A233357.P1998032290742520247

`A046817(A061579(n))*A166350(n+1)`
-/

namespace A233357.P1998032290742520247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046817 (A061579 n).toNat * A166350 (n + 1)

end

end A233357.P1998032290742520247

/-! ## A233357.P18426723567449675341

`A130191(A014132(n+1))*A166350(n+1)`
-/

namespace A233357.P18426723567449675341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130191 (A014132 (n + 1)).toNat * A166350 (n + 1)

end

end A233357.P18426723567449675341

/-! ## A233357.P865587467269729948

`A004736(A038722(n+1))!*A039810(n+1)`
-/

namespace A233357.P865587467269729948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004736 (A038722 (n + 1)).toNat).toNat : ℤ) * A039810 (n + 1)

end

end A233357.P865587467269729948

/-! ## A233357.P779882094453584339

`A019538(n+1)/A008277(n+1)*A039810(n+1)`
-/

namespace A233357.P779882094453584339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019538 (n + 1) : ℚ) / (A008277 (n + 1) : ℚ) * (A039810 (n + 1) : ℚ)

end

end A233357.P779882094453584339

/-! ## A233357.P8379391927928613759

`A000005(A059268(n))!*A039810(n+1)`
-/

namespace A233357.P8379391927928613759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000005 (A059268 n).toNat).toNat : ℤ) * A039810 (n + 1)

end

end A233357.P8379391927928613759

/-! ## A233357.P13077860994831789662

`A039810(n+1)*A059590(A059268(n))`
-/

namespace A233357.P13077860994831789662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039810 (n + 1) * A059590 (A059268 n).toNat

end

end A233357.P13077860994831789662

/-!
# A233359: a(n) = |{0 < k < n: L(k) + q(n-k) is prime}|, where L(k) is the k-th Lucas number (A000204), and q(.) is the strict partition function (A000009).

The programs for A233359, there is no canonical definition to state claims against.
-/

/-! ## A233359.P643214569406918573

`A001222(or(A000217(n), A199694(n)))`
-/

namespace A233359.P643214569406918573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A000217 n) (A199694 n)).toNat

end

end A233359.P643214569406918573

/-! ## A233359.P2572724561475621164

`A001221(∑[A137882(n+5)^A046660(n+1)])`
-/

namespace A233359.P2572724561475621164
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137882 (n + 5) : ℚ) ^ (A046660 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A233359.P2572724561475621164

/-! ## A233359.P14548230771408352154

`A305435(A007661(n+2))+A209229(A263883(n+3))`
-/

namespace A233359.P14548230771408352154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305435 (A007661 (n + 2)).toNat + A209229 (A263883 (n + 3)).toNat

end

end A233359.P14548230771408352154

/-! ## A233359.P3412440817874094945

`A001222(A052018(n+1)+A001683(n+2))`
-/

namespace A233359.P3412440817874094945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A052018 (n + 1) + A001683 (n + 2)).toNat

end

end A233359.P3412440817874094945

/-! ## A233359.P14402555935066623704

`A001222(A102659(n+1)+A008472(2*n+1))`
-/

namespace A233359.P14402555935066623704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A102659 (n + 1) + A008472 (2 * n + 1)).toNat

end

end A233359.P14402555935066623704

/-!
# A233360: Primes of the form L(k) + q(m) with k > 0 and m > 0, where L(k) is the k-th Lucas number (A000204), and q(.) is the strict partition function (A000009).

The programs for A233360, there is no canonical definition to state claims against.
-/

/-! ## A233360.P14182608083986926480

`A000040(lt[A219282(n), A066058(n)])`
-/

namespace A233360.P14182608083986926480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219282 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A233360.P14182608083986926480

/-! ## A233360.P2780982232946506822

`A000040(lt[A242695(n), A230328(n)])`
-/

namespace A233360.P2780982232946506822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242695 (n + 16)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A233360.P2780982232946506822

/-! ## A233360.P12375176113383025403

`A000040(lt[A283506(n), A028553(n+1)])`
-/

namespace A233360.P12375176113383025403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283506 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A233360.P12375176113383025403

/-! ## A233360.P18158547985504671127

`A000040(lt[A001464(n), A345691(n+1)])`
-/

namespace A233360.P18158547985504671127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001464 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A233360.P18158547985504671127

/-! ## A233360.P9471092107383142703

`A000040(lt[A300628(n), A074285(n+1)])`
-/

namespace A233360.P9471092107383142703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300628 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A233360.P9471092107383142703

/-!
# A233361: Number of (n+1)X(2+1) 0..1 arrays x(i,j) with row sums sum{j*x(i,j), j=1..2+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A233361, there is no canonical definition to state claims against.
-/

/-! ## A233361.P8227824394624821223

`A233366(∑[n+2])`
-/

namespace A233361.P8227824394624821223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233366 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233361.P8227824394624821223

/-! ## A233361.P15146271332189931795

`record[A233366(Δ[A003453(n+5)])]`
-/

namespace A233361.P15146271332189931795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233366 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233361.P15146271332189931795

/-! ## A233361.P14787978191480101453

`record[A233366(n+2)/A164844(n+3)]`
-/

namespace A233361.P14787978191480101453
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233366 (n + 2) : ℚ) / (A164844 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233361.P14787978191480101453

/-! ## A233361.P17607949191656216327

`record[gcd(A073200(n+2), A233366(n+2))]`
-/

namespace A233361.P17607949191656216327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073200 (n + 2)) (A233366 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233361.P17607949191656216327

/-! ## A233361.P5316772588379872138

`lcm(A233366(A000096(n+1)), A250068(n+1))`
-/

namespace A233361.P5316772588379872138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A233366 (A000096 (n + 1)).toNat) (A250068 (n + 1))

end

end A233361.P5316772588379872138

/-!
# A233362: Number of (n+1)X(3+1) 0..1 arrays x(i,j) with row sums sum{j*x(i,j), j=1..3+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A233362, there is no canonical definition to state claims against.
-/

/-! ## A233362.P17214702103823679210

`A233366(∑[n+3]+1)`
-/

namespace A233362.P17214702103823679210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233366 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233362.P17214702103823679210

/-!
# A233363: Number of (n+1)X(4+1) 0..1 arrays x(i,j) with row sums sum{j*x(i,j), j=1..4+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A233363, there is no canonical definition to state claims against.
-/

/-! ## A233363.P10295406189719258305

`A233366(∑[n+4]+3)`
-/

namespace A233363.P10295406189719258305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233366 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A233363.P10295406189719258305

/-!
# A233364: Number of (n+1)X(5+1) 0..1 arrays x(i,j) with row sums sum{j*x(i,j), j=1..5+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A233364, there is no canonical definition to state claims against.
-/

/-! ## A233364.P12863324617527140770

`A233366(∑[n+5]+6)`
-/

namespace A233364.P12863324617527140770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233366 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A233364.P12863324617527140770

/-!
# A233365: Number of (n+1)X(6+1) 0..1 arrays x(i,j) with row sums sum{j*x(i,j), j=1..6+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A233365, there is no canonical definition to state claims against.
-/

/-! ## A233365.P3891542208708138370

`A233366(A052905(n+3))`
-/

namespace A233365.P3891542208708138370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233366 (A052905 (n + 3)).toNat

end

end A233365.P3891542208708138370

/-! ## A233365.P7912979895507573032

`A233366(A168105(n)-5)`
-/

namespace A233365.P7912979895507573032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233366 (A168105 n - 5).toNat

end

end A233365.P7912979895507573032

/-! ## A233365.P7587150380323968905

`A233366(eq[3, A219347(n)])`
-/

namespace A233365.P7587150380323968905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233366 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233365.P7587150380323968905

/-! ## A233365.P11235099394958740729

`A233366(eq[5, A193592(n)])`
-/

namespace A233365.P11235099394958740729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233366 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233365.P11235099394958740729

/-!
# A233367: Number of (2+1)X(n+1) 0..1 arrays x(i,j) with row sums sum{j*x(i,j), j=1..n+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..2+1} nondecreasing.

The programs for A233367, there is no canonical definition to state claims against.
-/

/-! ## A233367.P11154284319931201023

`A233366(∑[n+1]+2)`
-/

namespace A233367.P11154284319931201023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233366 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233367.P11154284319931201023

/-! ## A233367.P12869588235550753938

`record[A233366(A257504(n+1)+1)]`
-/

namespace A233367.P12869588235550753938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233366 (A257504 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233367.P12869588235550753938

/-! ## A233367.P4529394529290239456

`record[A233366(C(A028242(n), 2)+2)]`
-/

namespace A233367.P4529394529290239456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233366 (Nat.choose (A028242 n).toNat 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233367.P4529394529290239456

/-! ## A233367.P15159743938230346543

`record[A010054(n)*A233366(n+2)]`
-/

namespace A233367.P15159743938230346543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233366 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233367.P15159743938230346543

/-! ## A233367.P15342977350207912815

`record[A233366(n+2)/A056588(n)]`
-/

namespace A233367.P15342977350207912815
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233366 (n + 2) : ℚ) / (A056588 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233367.P15342977350207912815

/-!
# A233368: Number of (3+1)X(n+1) 0..1 arrays x(i,j) with row sums sum{j*x(i,j), j=1..n+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..3+1} nondecreasing.

The programs for A233368, there is no canonical definition to state claims against.
-/

/-! ## A233368.P7664380144913430664

`A233366(∑[n+2]+4)`
-/

namespace A233368.P7664380144913430664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233366 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233368.P7664380144913430664

/-! ## A233368.P9307233989660532892

`or(char[1], A233366(A167614(n+1)))`
-/

namespace A233368.P9307233989660532892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A233366 (A167614 (n + 1)).toNat)

end

end A233368.P9307233989660532892

/-! ## A233368.P13679908104533920084

`A233366(A167614(n+1))+A025437(n)`
-/

namespace A233368.P13679908104533920084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233366 (A167614 (n + 1)).toNat + A025437 n

end

end A233368.P13679908104533920084

/-! ## A233368.P12849365792985756814

`A233366(A167614(n+1))+A025444(n)`
-/

namespace A233368.P12849365792985756814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233366 (A167614 (n + 1)).toNat + A025444 n

end

end A233368.P12849365792985756814

/-! ## A233368.P8297273888178893184

`A233366(A167614(n+1))+A025469(n)`
-/

namespace A233368.P8297273888178893184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233366 (A167614 (n + 1)).toNat + A025469 n

end

end A233368.P8297273888178893184

/-!
# A233369: Number of (4+1)X(n+1) 0..1 arrays x(i,j) with row sums sum{j*x(i,j), j=1..n+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..4+1} nondecreasing.

The programs for A233369, there is no canonical definition to state claims against.
-/

/-! ## A233369.P16598477402458223424

`A233366(∑[n+3]+7)`
-/

namespace A233369.P16598477402458223424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233366 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A233369.P16598477402458223424

/-!
# A233370: Number of (5+1)X(n+1) 0..1 arrays x(i,j) with row sums sum{j*x(i,j), j=1..n+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..5+1} nondecreasing.

The programs for A233370, there is no canonical definition to state claims against.
-/

/-! ## A233370.P3136783948547302831

`A233366(∑[n+4]+11)`
-/

namespace A233370.P3136783948547302831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233366 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A233370.P3136783948547302831

/-!
# A233371: Number of (6+1)X(n+1) 0..1 arrays x(i,j) with row sums sum{j*x(i,j), j=1..n+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..6+1} nondecreasing.

The programs for A233371, there is no canonical definition to state claims against.
-/

/-! ## A233371.P1410603375175188496

`A233366(A166136(n+4))`
-/

namespace A233371.P1410603375175188496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233366 (A166136 (n + 4)).toNat

end

end A233371.P1410603375175188496

/-! ## A233371.P3838736849126326548

`A233366(A056115(n)+21)`
-/

namespace A233371.P3838736849126326548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233366 (A056115 n + 21).toNat

end

end A233371.P3838736849126326548

/-! ## A233371.P961497894486033349

`A233366(A168105(n)-n)`
-/

namespace A233371.P961497894486033349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233366 (A168105 n - (n : ℤ)).toNat

end

end A233371.P961497894486033349

/-! ## A233371.P5759428569560315022

`A233366(A167499(n+4)+1)`
-/

namespace A233371.P5759428569560315022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233366 (A167499 (n + 4) + 1).toNat

end

end A233371.P5759428569560315022

/-!
# A233372: Number of (n+1)X(1+1) 0..2 arrays x(i,j) with row sums sum{x(i,j), j=1..1+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A233372, there is no canonical definition to state claims against.
-/

/-! ## A233372.P2191219796397024455

`A233374(∑[n+1])`
-/

namespace A233372.P2191219796397024455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233374 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233372.P2191219796397024455

/-! ## A233372.P14456483468924731592

`record[A233374(A130270(n+1))]`
-/

namespace A233372.P14456483468924731592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233374 (A130270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233372.P14456483468924731592

/-! ## A233372.P8164548984738535757

`record[A233374(C(A056239(n+4), 2))]`
-/

namespace A233372.P8164548984738535757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233374 (Nat.choose (A056239 (n + 4)).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233372.P8164548984738535757

/-! ## A233372.P8035185309336647580

`record[A115359(n)*A233374(n+1)]`
-/

namespace A233372.P8035185309336647580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 n * A233374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233372.P8035185309336647580

/-!
# A233373: Number of (n+1)X(2+1) 0..2 arrays x(i,j) with row sums sum{x(i,j), j=1..2+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A233373, there is no canonical definition to state claims against.
-/

/-! ## A233373.P15234851442984952755

`A233374(∑[n+2])`
-/

namespace A233373.P15234851442984952755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233374 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233373.P15234851442984952755

/-! ## A233373.P13517742330106945908

`record[A233374(abs(A201163(n)))]`
-/

namespace A233373.P13517742330106945908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233374 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233373.P13517742330106945908

/-! ## A233373.P16298897622226453605

`record[A233374(A000096(C(ceil(2*sqrt(n+1)), 2)-n-(n-floor(sqrt(n)))))]`
-/

namespace A233373.P16298897622226453605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233374 (A000096 ((Nat.choose ⌈2 * Real.sqrt (n + 1 : ℝ)⌉.toNat 2 : ℤ) - (n : ℤ) - ((n : ℤ) - (Nat.sqrt n : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233373.P16298897622226453605

/-!
# A233375: Number of (1+1)X(n+1) 0..2 arrays x(i,j) with row sums sum{x(i,j), j=1..n+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..1+1} nondecreasing.

The programs for A233375, there is no canonical definition to state claims against.
-/

/-! ## A233375.P1898598897096857973

`A233374(∑[n]+1)`
-/

namespace A233375.P1898598897096857973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233374 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233375.P1898598897096857973

/-! ## A233375.P3644697000338692339

`lcm((-1)^n, A233374(A000124(n)))`
-/

namespace A233375.P3644697000338692339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A233374 (A000124 n).toNat)

end

end A233375.P3644697000338692339

/-! ## A233375.P15530587069785062713

`record[A010054(n)*A233374(n+1)]`
-/

namespace A233375.P15530587069785062713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233375.P15530587069785062713

/-! ## A233375.P15689426222654919140

`record[A233374(n+1)/A285061(n)]`
-/

namespace A233375.P15689426222654919140
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233374 (n + 1) : ℚ) / (A285061 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233375.P15689426222654919140

/-! ## A233375.P5183184139974459554

`record[root(A233374(n+1), A008949(n))]`
-/

namespace A233375.P5183184139974459554
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233374 (n + 1) : ℝ) ^ (1 / (A008949 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233375.P5183184139974459554

/-!
# A233376: Number of (2+1)X(n+1) 0..2 arrays x(i,j) with row sums sum{x(i,j), j=1..n+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..2+1} nondecreasing.

The programs for A233376, there is no canonical definition to state claims against.
-/

/-! ## A233376.P8282474975509191941

`A233374(∑[n+1]+2)`
-/

namespace A233376.P8282474975509191941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233374 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233376.P8282474975509191941

/-! ## A233376.P4003380590304070349

`record[A233374(n+3)/A154990(n+1)]`
-/

namespace A233376.P4003380590304070349
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233374 (n + 3) : ℚ) / (A154990 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233376.P4003380590304070349

/-! ## A233376.P11768807382973967562

`A233374(A238531(n+2))*A293669(n)`
-/

namespace A233376.P11768807382973967562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233374 (A238531 (n + 2)).toNat * A293669 n

end

end A233376.P11768807382973967562

/-! ## A233376.P4726836913132799550

`A238655(n+1)+A233374(A238531(n+2))`
-/

namespace A233376.P4726836913132799550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238655 (n + 1) + A233374 (A238531 (n + 2)).toNat

end

end A233376.P4726836913132799550

/-!
# A233377: Number of (3+1)X(n+1) 0..2 arrays x(i,j) with row sums sum{x(i,j), j=1..n+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..3+1} nondecreasing.

The programs for A233377, there is no canonical definition to state claims against.
-/

/-! ## A233377.P757556152377743931

`A233374(∑[n+2]+4)`
-/

namespace A233377.P757556152377743931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233374 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233377.P757556152377743931

/-! ## A233377.P3190146898122439408

`record[A233374(A167614(C(ceil(2*sqrt(n+1)), 2)-n-(n-floor(sqrt(n)))))]`
-/

namespace A233377.P3190146898122439408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233374 (A167614 ((Nat.choose ⌈2 * Real.sqrt (n + 1 : ℝ)⌉.toNat 2 : ℤ) - (n : ℤ) - ((n : ℤ) - (Nat.sqrt n : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233377.P3190146898122439408

/-! ## A233377.P14952129757237338053

`A233374(A167614(n+1))+A025466(n)`
-/

namespace A233377.P14952129757237338053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233374 (A167614 (n + 1)).toNat + A025466 n

end

end A233377.P14952129757237338053

/-!
# A233378: Number of (4+1)X(n+1) 0..2 arrays x(i,j) with row sums sum{x(i,j), j=1..n+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..4+1} nondecreasing.

The programs for A233378, there is no canonical definition to state claims against.
-/

/-! ## A233378.P15781663157507112227

`A233374(∑[n+3]+7)`
-/

namespace A233378.P15781663157507112227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233374 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A233378.P15781663157507112227

/-! ## A233378.P15141712677662155097

`A308907(n)+A233374(A055999(n)+10)`
-/

namespace A233378.P15141712677662155097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308907 n + A233374 (A055999 n + 10).toNat

end

end A233378.P15141712677662155097

/-!
# A233381: Y-coordinate of the bottom left corner of the n X 1 brick in the greedy tiling of the first quadrant with bricks of height 1 and width 1, 2, 3... (See Comments in A233380 for precise definition).

The programs for A233381, there is no canonical definition to state claims against.
-/

/-! ## A233381.P4593383372581933267

`A002262(A108611(5*n))`
-/

namespace A233381.P4593383372581933267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A108611 (5 * n)).toNat

end

end A233381.P4593383372581933267

/-! ## A233381.P12438382214826437583

`(a(n-1)+1)%A068108(A000712(n))` with `a(0)=0`
-/

namespace A233381.P12438382214826437583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a (n - 1) + 1) (A068108 (A000712 n).toNat)

end

end A233381.P12438382214826437583

/-! ## A233381.P13341333405707972093

`and(a(n-1)+1, A153941(A275823(n+1)))` with `a(0)=0`
-/

namespace A233381.P13341333405707972093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land (a (n - 1) + 1) (A153941 (A275823 (n + 1)).toNat)

end

end A233381.P13341333405707972093

/-! ## A233381.P11060795179484172990

`A002262(∑{d}[A011782(n), A049240(#+1)])`
-/

namespace A233381.P11060795179484172990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (∑ d ∈ Nat.divisors (f1 n).natAbs, A049240 (d + 1)).toNat

end

end A233381.P11060795179484172990

/-! ## A233381.P12355107279030461144

`A055087(lt[A317576(n+1), A317573(n+1)])`
-/

namespace A233381.P12355107279030461144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A233381.P12355107279030461144

/-!
# A233386: Number of ways to write n = i + j + k with 0 < i <= j <= k and i, j, k not all equal such that phi(i)*phi(j)*phi(k) is a cube.

The programs for A233386, there is no canonical definition to state claims against.
-/

/-! ## A233386.P17840097476209158084

`A285099(A062392(n)%A014551(n))`
-/

namespace A233386.P17840097476209158084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (Int.tmod (A062392 n) (A014551 n)).toNat

end

end A233386.P17840097476209158084

/-!
# A233388: Odious numbers that are the sum of 2 consecutive odious numbers.

The programs for A233388, the canonical program `A233388.P9376784371074079915` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233388 has offset 1).

The definition of A233388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233388.P1903026774741547457

`2*A157970(n+1)+1`
-/

namespace A233388.P1903026774741547457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157970 (n + 1) + 1

end

end A233388.P1903026774741547457

namespace A233388

/-- `2*A157970(n+1)+1` -/
def P1903026774741547457.Spec : Prop :=
  ∀ n, P1903026774741547457.a n = A233388 (n + 1)

theorem P1903026774741547457.correct : P1903026774741547457.Spec := by
  intro n
  simp only [A233388, Nat.add_sub_cancel, A233388.P1903026774741547457.a, A233388.P9376784371074079915.a, A091785, A091785.P17722584434212151531.a, A157970, A157970.P9283823334930395978.a, A036554, A036554.P8175060370953883075.a, A248056, A248056.P11690070156917874997.a, A072939, A072939.P3298129372781019083.f1, A072939.P3298129372781019083.f2, A072939.P3298129372781019083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A233388

/-! ## A233388.P17826652424577847813

`2*A248056(n+1)-1`
-/

namespace A233388.P17826652424577847813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A248056 (n + 1) - 1

end

end A233388.P17826652424577847813

namespace A233388

/-- `2*A248056(n+1)-1` -/
def P17826652424577847813.Spec : Prop :=
  ∀ n, P17826652424577847813.a n = A233388 (n + 1)

theorem P17826652424577847813.correct : P17826652424577847813.Spec := by
  intro n
  simp only [A233388, Nat.add_sub_cancel, A233388.P17826652424577847813.a, A233388.P9376784371074079915.a, A091785, A091785.P17722584434212151531.a, A248056, A248056.P11690070156917874997.a, A036554, A036554.P8175060370953883075.a, A072939, A072939.P3298129372781019083.f1, A072939.P3298129372781019083.f2, A072939.P3298129372781019083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A233388

/-! ## A233388.P9376784371074079915

`4*A091785(n+1)-1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A233388

/-- `4*A091785(n+1)-1` -/
def P9376784371074079915.Spec : Prop :=
  ∀ n, P9376784371074079915.a n = A233388 (n + 1)

theorem P9376784371074079915.correct : P9376784371074079915.Spec := by
  intro n
  simp only [A233388, Nat.add_sub_cancel]

end A233388

/-! ## A233388.P16764186712948842421

`A248056(n+1)+A157970(n+1)`
-/

namespace A233388.P16764186712948842421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248056 (n + 1) + A157970 (n + 1)

end

end A233388.P16764186712948842421

namespace A233388

/-- `A248056(n+1)+A157970(n+1)` -/
def P16764186712948842421.Spec : Prop :=
  ∀ n, P16764186712948842421.a n = A233388 (n + 1)

theorem P16764186712948842421.correct : P16764186712948842421.Spec := by
  intro n
  simp only [A233388, Nat.add_sub_cancel, A233388.P16764186712948842421.a, A233388.P9376784371074079915.a, A091785, A091785.P17722584434212151531.a, A157970, A157970.P9283823334930395978.a, A248056, A248056.P11690070156917874997.a, A036554, A036554.P8175060370953883075.a, A072939, A072939.P3298129372781019083.f1, A072939.P3298129372781019083.f2, A072939.P3298129372781019083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A233388

/-! ## A233388.P3071843106253485547

`2*eq[5, A254655(n+1)]-1`
-/

namespace A233388.P3071843106253485547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A233388.P3071843106253485547

namespace A233388

/-- `2*eq[5, A254655(n+1)]-1` -/
def P3071843106253485547.Spec : Prop :=
  ∀ n, P3071843106253485547.a n = A233388 (n + 1)

end A233388

/-! ## A233388.P12262653182278312119

`A131323(2*(n+1))`
-/

namespace A233388.P12262653182278312119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131323 (2 * (n + 1))

end

end A233388.P12262653182278312119

namespace A233388

/-- `A131323(2*(n+1))` -/
def P12262653182278312119.Spec : Prop :=
  ∀ n, P12262653182278312119.a n = A233388 (n + 1)

end A233388

/-! ## A233388.P17688751669642389050

`A108269(2*(n+1))-1`
-/

namespace A233388.P17688751669642389050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108269 (2 * (n + 1)) - 1

end

end A233388.P17688751669642389050

namespace A233388

/-- `A108269(2*(n+1))-1` -/
def P17688751669642389050.Spec : Prop :=
  ∀ n, P17688751669642389050.a n = A233388 (n + 1)

end A233388

/-! ## A233388.P6664028170602829128

`A249034(2*(n+1))-2`
-/

namespace A233388.P6664028170602829128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249034 (2 * (n + 1)) - 2

end

end A233388.P6664028170602829128

namespace A233388

/-- `A249034(2*(n+1))-2` -/
def P6664028170602829128.Spec : Prop :=
  ∀ n, P6664028170602829128.a n = A233388 (n + 1)

end A233388

/-! ## A233388.P1756257146146199296

`2*A079523(2*(n+1))+1`
-/

namespace A233388.P1756257146146199296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079523 (2 * (n + 1)) + 1

end

end A233388.P1756257146146199296

namespace A233388

/-- `2*A079523(2*(n+1))+1` -/
def P1756257146146199296.Spec : Prop :=
  ∀ n, P1756257146146199296.a n = A233388 (n + 1)

end A233388

/-! ## A233388.P3788093678595757978

`2*A036554(2*(n+1))-1`
-/

namespace A233388.P3788093678595757978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036554 (2 * (n + 1)) - 1

end

end A233388.P3788093678595757978

namespace A233388

/-- `2*A036554(2*(n+1))-1` -/
def P3788093678595757978.Spec : Prop :=
  ∀ n, P3788093678595757978.a n = A233388 (n + 1)

end A233388

/-! ## A233388.P3004349011747352759

`(A225822(2*(n+1))-1)/2`
-/

namespace A233388.P3004349011747352759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225822 (2 * (n + 1)) - 1 : ℚ) / 2

end

end A233388.P3004349011747352759

namespace A233388

/-- `(A225822(2*(n+1))-1)/2` -/
def P3004349011747352759.Spec : Prop :=
  ∀ n, P3004349011747352759.a n = (A233388 (n + 1) : ℚ)

end A233388

/-! ## A233388.P3163161353517612725

`A234648(2*(n+1))/2-1`
-/

namespace A233388.P3163161353517612725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234648 (2 * (n + 1)) : ℚ) / 2 - 1

end

end A233388.P3163161353517612725

namespace A233388

/-- `A234648(2*(n+1))/2-1` -/
def P3163161353517612725.Spec : Prop :=
  ∀ n, P3163161353517612725.a n = (A233388 (n + 1) : ℚ)

end A233388

/-! ## A233388.P214238405762896569

`2*2*A003159(2*(n+1))-1`
-/

namespace A233388.P214238405762896569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A003159 (2 * (n + 1))) - 1

end

end A233388.P214238405762896569

namespace A233388

/-- `2*2*A003159(2*(n+1))-1` -/
def P214238405762896569.Spec : Prop :=
  ∀ n, P214238405762896569.a n = A233388 (n + 1)

end A233388

/-! ## A233388.P13381379936106043146

`filter[A131323(n+1), A228495(#)]`
-/

namespace A233388.P13381379936106043146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A233388.P13381379936106043146

namespace A233388

/-- `filter[A131323(n+1), A228495(#)]` -/
def P13381379936106043146.Spec : Prop :=
  ∀ n, P13381379936106043146.a n = A233388 (n + 1)

end A233388

/-! ## A233388.P15199440590110313161

`filter[A131323(n+1), A295297(#)]`
-/

namespace A233388.P15199440590110313161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295297 (f1 j).toNat = 1) n)

end

end A233388.P15199440590110313161

namespace A233388

/-- `filter[A131323(n+1), A295297(#)]` -/
def P15199440590110313161.Spec : Prop :=
  ∀ n, P15199440590110313161.a n = A233388 (n + 1)

end A233388

/-! ## A233388.P14966877206832464131

`A003158(2*(n+1))+A003156(2*(n+1))`
-/

namespace A233388.P14966877206832464131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003158 (2 * (n + 1)) + A003156 (2 * (n + 1))

end

end A233388.P14966877206832464131

namespace A233388

/-- `A003158(2*(n+1))+A003156(2*(n+1))` -/
def P14966877206832464131.Spec : Prop :=
  ∀ n, P14966877206832464131.a n = A233388 (n + 1)

end A233388

/-! ## A233388.P16615872527523066558

`A003156(2*(n+1))+A003157(2*(n+1))-1`
-/

namespace A233388.P16615872527523066558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (2 * (n + 1)) + (A003157 (2 * (n + 1)) - 1)

end

end A233388.P16615872527523066558

namespace A233388

/-- `A003156(2*(n+1))+A003157(2*(n+1))-1` -/
def P16615872527523066558.Spec : Prop :=
  ∀ n, P16615872527523066558.a n = A233388 (n + 1)

end A233388

/-! ## A233388.P8184158204395473119

`4*lt[2, A007413(n+1)]+3`
-/

namespace A233388.P8184158204395473119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007413 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3

end

end A233388.P8184158204395473119

namespace A233388

/-- `4*lt[2, A007413(n+1)]+3` -/
def P8184158204395473119.Spec : Prop :=
  ∀ n, (P8184158204395473119.a n : ℤ) = A233388 (n + 1)

end A233388

/-! ## A233388.P8540076993383577151

`A092246(A091785(n+1))`
-/

namespace A233388.P8540076993383577151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092246 (A091785 (n + 1)).toNat

end

end A233388.P8540076993383577151

namespace A233388

/-- `A092246(A091785(n+1))` -/
def P8540076993383577151.Spec : Prop :=
  ∀ n, P8540076993383577151.a n = A233388 (n + 1)

end A233388

/-!
# A233389: Naturally embedded ternary trees having no internal node of label greater than 1.

The programs for A233389, there is no canonical definition to state claims against.
-/

/-! ## A233389.P9894217957912323806

`A001281(A054872(n)+A006319(n))`
-/

namespace A233389.P9894217957912323806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A054872 n + A006319 n).toNat

end

end A233389.P9894217957912323806

/-! ## A233389.P16104949071415500980

`A004526(A054872(n)+A006319(n))`
-/

namespace A233389.P16104949071415500980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A054872 n + A006319 n).toNat

end

end A233389.P16104949071415500980

/-! ## A233389.P8848729211152374467

`A342676(A001006(n))+A287891(n)`
-/

namespace A233389.P8848729211152374467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342676 (A001006 n).toNat + A287891 n

end

end A233389.P8848729211152374467

/-!
# A233390: a(n) = |{0 < k < n: 2^k - 1 + q(n-k) is prime}|, where q(.) is the strict partition function (A000009).

The programs for A233390, there is no canonical definition to state claims against.
-/

/-! ## A233390.P223034072729121643

`A001221(xor(A219904(n), A243975(n+1)))`
-/

namespace A233390.P223034072729121643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A219904 n) (A243975 (n + 1))).toNat

end

end A233390.P223034072729121643

/-!
# A233393: Primes of the form 2^k - 1 + q(m) with k > 0 and m > 0, where q(.) is the strict partition function (A000009).

The programs for A233393, there is no canonical definition to state claims against.
-/

/-! ## A233393.P13502596688283704599

`A000040(lt[A376682(3*n+2), n+1])`
-/

namespace A233393.P13502596688283704599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376682 (3 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A233393.P13502596688283704599

/-! ## A233393.P16136119500497125128

`A000040(lt[A077168(n+3), A268658(n+1)])`
-/

namespace A233393.P16136119500497125128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A233393.P16136119500497125128

/-! ## A233393.P7084729804569535441

`A000040(lt[A173210(n+4), A330360(n+1)])`
-/

namespace A233393.P7084729804569535441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173210 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A233393.P7084729804569535441

/-! ## A233393.P11939630504368383665

`A000040(∑[(A156096(n)%A316074(n+1))!])`
-/

namespace A233393.P11939630504368383665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A156096 n) (A316074 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233393.P11939630504368383665

/-! ## A233393.P4873402742502123938

`A000040(lt[A029950(n+1), A113578(2*n+1)])`
-/

namespace A233393.P4873402742502123938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113578 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A233393.P4873402742502123938

/-!
# A233395: E.g.f.: Sum_{n>=0} ( Sum_{k=1..n} x^k/k )^n / n!.

The programs for A233395, there is no canonical definition to state claims against.
-/

/-! ## A233395.P7705490349020241891

`A034973(3*A060223(n))`
-/

namespace A233395.P7705490349020241891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (3 * A060223 n).toNat

end

end A233395.P7705490349020241891

/-! ## A233395.P5261278356374632160

`A215244(n)+A105519(A274373(n))`
-/

namespace A233395.P5261278356374632160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215244 n + A105519 (A274373 n).toNat

end

end A233395.P5261278356374632160

/-! ## A233395.P14252862100140351008

`A352513(A331124(n))+A331156(n)`
-/

namespace A233395.P14252862100140351008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (A331124 n).toNat + A331156 n

end

end A233395.P14252862100140351008

/-!
# A233396: Number of affirmative formulas with two connectives (-> and *) and no variables.

The programs for A233396, there is no canonical definition to state claims against.
-/

/-! ## A233396.P11921251531012235183

`A151374(n)-A233130(n)`
-/

namespace A233396.P11921251531012235183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151374 n - A233130 n

end

end A233396.P11921251531012235183

/-! ## A233396.P8916286319183337033

`A052701(n+1)-A233130(n)`
-/

namespace A233396.P8916286319183337033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052701 (n + 1) - A233130 n

end

end A233396.P8916286319183337033

/-! ## A233396.P712965375591014304

`2^n*A000108(n)-A233130(n)`
-/

namespace A233396.P712965375591014304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000108 n - A233130 n

end

end A233396.P712965375591014304

/-! ## A233396.P15844001123764487616

`A000108(n)*A000079(n)-A233130(n)`
-/

namespace A233396.P15844001123764487616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000079 n - A233130 n

end

end A233396.P15844001123764487616

/-! ## A233396.P14927186505523002535

`gcd(A156128(n), A156270(n))-A233130(n)`
-/

namespace A233396.P14927186505523002535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A156128 n) (A156270 n) : ℤ) - A233130 n

end

end A233396.P14927186505523002535

/-!
# A233397: a(n) = floor(n^n / 3^n).

The programs for A233397, the canonical program `A233397.P13021840268593607949` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233397 has offset 0).

The definition of A233397 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^n/3^n)` (program `A233397.P13021840268593607949`, by `A233397.P13021840268593607949.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233397.P13021840268593607949

`floor(n^n/3^n)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A233397

/-- `floor(n^n/3^n)` -/
def P13021840268593607949.Spec : Prop :=
  ∀ n, P13021840268593607949.a n = A233397 n

theorem P13021840268593607949.correct : P13021840268593607949.Spec := by
  intro n
  simp only [A233397]

end A233397

/-! ## A233397.P12113066946116709345

`ceil(A014566(n)/3^n)-1`
-/

namespace A233397.P12113066946116709345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A014566 n : ℚ) / (3 ^ n : ℚ)⌉ - 1

end

end A233397.P12113066946116709345

namespace A233397

/-- `ceil(A014566(n)/3^n)-1` -/
def P12113066946116709345.Spec : Prop :=
  ∀ n, P12113066946116709345.a n = A233397 n

end A233397

/-! ## A233397.P7408772739955982423

`(A000312(n)-A233398(n))/3^n`
-/

namespace A233397.P7408772739955982423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000312 n - A233398 n : ℚ) / (3 ^ n : ℚ)

end

end A233397.P7408772739955982423

namespace A233397

/-- `(A000312(n)-A233398(n))/3^n` -/
def P7408772739955982423.Spec : Prop :=
  ∀ n, P7408772739955982423.a n = (A233397 n : ℚ)

end A233397

/-! ## A233397.P2319777654668880680

`floor(A000312(n)/A000244(n))*A131713(3*n²)`
-/

namespace A233397.P2319777654668880680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000312 n : ℚ) / (A000244 n : ℚ)⌋ * A131713 (3 * n ^ 2)

end

end A233397.P2319777654668880680

namespace A233397

/-- `floor(A000312(n)/A000244(n))*A131713(3*n²)` -/
def P2319777654668880680.Spec : Prop :=
  ∀ n, P2319777654668880680.a n = A233397 n

end A233397

/-!
# A233398: n^n mod 3^n.

The programs for A233398, there is no canonical definition to state claims against.
-/

/-! ## A233398.P12116209546889621966

`(n^n)%(3^n)`
-/

namespace A233398.P12116209546889621966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n % 3 ^ n

end

end A233398.P12116209546889621966

/-! ## A233398.P7009562036945227583

`abs(-A000312(n)%A000244(n))`
-/

namespace A233398.P7009562036945227583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (-A000312 n) (A000244 n)|

end

end A233398.P7009562036945227583

/-! ## A233398.P15654729701637825748

`abs(A000312(n)%Δ[A003462(n)])`
-/

namespace A233398.P15654729701637825748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000312 n) (f1 (n + 1) - f1 n)|

end

end A233398.P15654729701637825748

/-! ## A233398.P15791948801882862291

`-(-A000312(round(sqrt(n²+1)))%A000244(n))`
-/

namespace A233398.P15791948801882862291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A000312 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A000244 n)

end

end A233398.P15791948801882862291

/-! ## A233398.P14654413523564237539

`A000312(n)-A000244(n)*A233397(n)`
-/

namespace A233398.P14654413523564237539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n - A000244 n * A233397 n

end

end A233398.P14654413523564237539

